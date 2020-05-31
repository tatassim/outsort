program Project1;

uses
  Forms,
  OutSort in 'OutSort.pas' {Form1},
  USequence in 'USequence.pas',
  UFile in 'UFile.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
