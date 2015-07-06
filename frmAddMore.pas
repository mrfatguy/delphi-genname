unit frmAddMore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TAddMore = class(TForm)
    Label1: TLabel;
    memo: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure memoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddMore: TAddMore;

implementation

{$R *.DFM}

procedure TAddMore.FormShow(Sender: TObject);
begin
memo.Lines.Clear;
BitBtn1.Caption:='Add 0 items';
memo.SetFocus;
end;

procedure TAddMore.memoChange(Sender: TObject);
begin
BitBtn1.Caption:='Add '+IntToStr(memo.lines.count)+' item(s)';
end;

end.
