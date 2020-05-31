unit USequence;

interface

type

  TElem = integer;
  TFile = file of TElem;
  TSequence = record
    f : TFile;
    el : TElem;
    eof, eor : boolean; // обработан ли последний элемент файла | серии
    count : integer; // Сколько осталось обработать элементов в серии
  end;

  procedure OpenSeq (var s : TSequence; FileName : string);
  procedure StartRead (var s : TSequence; len : integer);
  procedure StartWrite (var s : TSequence);
  procedure StartRun (var s : TSequence; len : integer);
  procedure Copy (var x, y : TSequence);
  procedure CopyRun (var x, y : TSequence);
  procedure CloseSeq (var s : TSequence);

implementation


procedure OpenSeq (var s : TSequence; FileName : string);
begin
  AssignFile(s.f, FileName);
end;

// открыть файл для чтения и взять один элемент
procedure StartRead (var s : TSequence; len : integer);
begin
  with s do
    begin
      reset(f);
      eof:=system.Eof(f);
      if not eof then
        begin
          read(f, el);
          Count:=len;
        end
      else
        Count := 0;
      eor:=eof or (Count=0);
    end;
end;

// открыть для записи
procedure StartWrite (var s : TSequence);
begin
  rewrite(s.f);
end;

// Начать новую серию
procedure StartRun (var s : TSequence; len : integer);
begin
  s.count:=len;
  s.eor:=s.eof or (s.Count=0);
end;


// копирует элемент из файла x в файл y и берет из файла x следующий элемент
procedure Copy (var x, y : TSequence);
begin
  write(y.f, x.el);
  x.count:=x.count-1;
  x.eof:=system.Eof(x.f);
  if not x.eof then
     read(x.f, x.el)
  else
  x.Count := 0;
  x.eor:=x.eof or (x.Count=0);
end;

// копировать серию до конца
procedure CopyRun (var x, y : TSequence);
begin
  repeat
    Copy(x, y)
  until x.eor;
end;

// Закрыть файл
procedure CloseSeq (var s : TSequence);
begin
  CloseFile(s.f);
end;

end.
