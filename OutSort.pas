unit OutSort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, USequence, UFile, StdCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, StdStyleActnCtrls ;

type
  TForm1 = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btn1Click(Sender: TObject);
var count:Integer;
begin
    count:=0;
    try
    count:=StrToInt(edt1.Text);
    except
      MessageDlg('¬ведено не число',mtWarning, [mbOk], 0)
    end;

  RandomFile('f1',count);
  RandomFileDESC('f2',count);

  edt3.Text:=IntToStr(SortFile('f1'));
  edt5.Text:=IntToStr(SortFile('f2'));

  //edt1.Text:='';
end;


procedure TForm1.btn2Click(Sender: TObject);
var count:Integer;
begin
count:=0;
    try
    count:=StrToInt(edt2.Text);
    except
      MessageDlg('¬ведено не число',mtWarning, [mbOk], 0)
    end;

  RandomFile('f3',count);
  RandomFileDESC('f4',count);

  edt4.Text:=IntToStr(SortFile('f3'));
  edt6.Text:=IntToStr(SortFile('f4'));

  //edt1.Text:='';
end;

end.
