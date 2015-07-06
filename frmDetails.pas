unit frmDetails;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Spin;

type
  TDetails = class(TForm)
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Details: TDetails;

implementation

{$R *.DFM}

procedure TDetails.Button1Click(Sender: TObject);
begin
if SaveDialog1.Execute then
begin
        Panel3.Caption:=SaveDialog1.FileName;
        Panel3.Hint:=SaveDialog1.FileName;
        Edit1.Enabled:=True;
        Edit2.Enabled:=True;
        Edit3.Enabled:=True;
        SpinEdit1.Enabled:=True;
        BitBtn1.Enabled:=True;
end;
end;

procedure TDetails.FormShow(Sender: TObject);
begin
        Panel3.Caption:='';
        Panel3.Hint:='';
        Edit1.Text:='';
        Edit2.Text:='';
        Edit3.Text:='';
        SpinEdit1.Value:=1;
        Edit1.Enabled:=False;
        Edit2.Enabled:=False;
        Edit3.Enabled:=False;
        SpinEdit1.Enabled:=False;
        BitBtn1.Enabled:=False;
end;

end.
