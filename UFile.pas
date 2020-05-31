unit UFile;

interface

Uses USequence, SysUtils;

procedure RandomFile (FileName : string; N : integer);
procedure RandomFileDESC (FileName : string; N : integer);
function SortFile (FileName : string): integer;

implementation

var CountAccess:Integer;

procedure RandomFile (FileName : string; N : integer);
var
  f : TFile;
  el : TElem;
  i : integer;
begin
  AssignFile(f, FileName);
  rewrite(f);
  for i:=1 to N do
    begin
      el:=Random(100);
      write(f, el)
    end;
  CloseFile(f);
  CountAccess:=0;
end;

procedure RandomFileDESC (FileName : string; N : integer);
var
  f : TFile;
  el : TElem;
  i : integer;
begin
  AssignFile(f, FileName);
  rewrite(f);
  for i:=N downto 1 do
    begin
      el:=i;
      write(f, el)
    end;
  CloseFile(f);
  CountAccess:=0;
end;

// Распределение
procedure Distribute (var f, f1, f2 : TSequence; len : integer);
begin
  StartRead(f, len);
  StartWrite(f1);
  StartWrite(f2);
  while not f.eof do
    begin
      CopyRun(f, f1);
      StartRun(f, len);
      if not f.eof then
        begin
          CopyRun(f, f2);
          StartRun(f, len)
        end;
    end;
  CloseSeq(f);
  CloseSeq(f1);
  CloseSeq(f2);
end;


procedure Merge (var f1, f2, f : TSequence; len : integer);
begin
  StartRead(f1, len);
  StartRead(f2, len);
  StartWrite(f);
  while not f1.eof and not f2.eof do
    begin
      // Сливаем серии
      while not f1.eor and not f2.eor do
        if f1.el<=f2.el then
          Copy(f1, f)
        else
          Copy(f2, f);
      // дописываем хвост незакончившейся серии
      if not f1.eor then
        CopyRun(f1, f)
      else
        CopyRun(f2, f);
      // Открываем новые серии
      StartRun(f1, len);
      StartRun(f2, len);
    end;
  if not f1.eof then
    CopyRun(f1, f);
  CloseSeq(f);
  CloseSeq(f1);
  CloseSeq(f2);
end;

function SortFile (FileName : string): integer;
var
  f, f1, f2 : TSequence;
  N, Len : integer;

begin
  OpenSeq(f, FileName);
  {Запоминаем размер файла}
  reset(f.f);
  N:=FileSize(f.f);
  CloseFile(f.f);
  {если файл не пуст}
  if N>0 then
    begin
      OpenSeq(f1, 'Temp1');
      OpenSeq(f2, 'Temp2');
      len:=1;
      repeat
        inc(CountAccess);
        Distribute(f, f1, f2, len);
        CountAccess:=CountAccess+3;
        Merge (f1, f2, f, len);
        len:=len*2;
      until len>=N;
      DeleteFile('Temp1');
      DeleteFile('Temp2');
    end;
    SortFile:=CountAccess;
end;


initialization
  Randomize;
end.
 