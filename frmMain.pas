unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, INIFiles, Spin, printers;

type
  TGenerator = class(TForm)
    OpenDialog: TOpenDialog;
    List: TListBox;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label1: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel19: TPanel;
    spCount: TSpinEdit;
    Label5: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Panel15: TPanel;
    Panel16: TPanel;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    BitBtn1: TSpeedButton;
    BitBtn3: TSpeedButton;
    BitBtn2: TSpeedButton;
    BitBtn4: TSpeedButton;
    BitBtn11: TSpeedButton;
    BitBtn12: TSpeedButton;
    Panel3: TPanel;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    CheckBox6: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label2: TLabel;
    function OpenFile(FileNam: String): Boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
  private

  public
        tmpStrings: TStringList;
        tmpLines: array[1..4] of TStringList;
        cPos: array[0..1] of Integer;
  end;

var
  Generator: TGenerator;

implementation

uses frmEditor, frmInfo;

{$R *.DFM}
{$R WinXP.res}

function TGenerator.OpenFile(FileNam: String): Boolean;
var
        tmp: String;
        a,b,c: Integer;
        IsOK, CanGenerate: Boolean;
        ini: TINIFile;
label
        jmpHere;
begin
        Result:=True;
        if FileNam='' then exit;
        IsOK:=True;
        CanGenerate:=True;
        a:=0;
        c:=0;
        List.Items.Clear;
        Panel3.Caption:=FileNam;
        tmpLines[1]:=TStringList.Create;
        tmpLines[2]:=TStringList.Create;
        tmpLines[3]:=TStringList.Create;
        tmpLines[4]:=TStringList.Create;
        tmpStrings:=TStringList.Create;
        tmpStrings.LoadFromFile(Panel3.Caption);
        if tmpStrings.Count<2 then
        begin
                IsOK:=False;
                goto jmpHere;
        end;
        tmp:=tmpStrings.Strings[1];
        try
                a:=StrToInt(Copy(tmp,Pos('=',tmp)+1,1))
        except
                IsOK:=False;
        end;
        if (a<>1) and (a<>2) and (a<>3) then IsOK:=False;
jmpHere:
        if not IsOK then
        begin
                Application.MessageBox(PChar(FileNam+chr(13)+'This is NOT a valid GenName file!'),'Error!',MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
                Panel3.Caption:='';
                Panel9.Caption:='';
                Panel10.Caption:='';
                Panel11.Caption:='';
                Label1.Caption:='';
                BitBtn1.Enabled:=False;
                BitBtn11.Enabled:=False;
                BitBtn12.Enabled:=False;
                BitBtn2.Enabled:=False;
                spCount.Enabled:=False;
                CheckBox4.Enabled:=False;
                CheckBox5.Enabled:=False;
                Panel13.Hide;
                Panel14.Hide;
                Panel16.Show;
                tmpStrings.Free;
                Result:=False;
                exit;
        end;
        BitBtn1.Enabled:=True;
        BitBtn11.Enabled:=True;
        BitBtn12.Enabled:=True;
        spCount.Enabled:=True;
        BitBtn2.Enabled:=True;
        CheckBox4.Enabled:=True;
        CheckBox5.Enabled:=True;
        case a of
                1:
                begin
                        Panel13.Show;
                        Panel14.Hide;
                        Panel16.Hide;
                        for b:=tmpStrings.IndexOf('[MaleNames]')+1 to tmpStrings.IndexOf('[FemaleNames]')-2 do
                                tmpLines[1].Add(tmpStrings.Strings[b]);
                        if tmpLines[1].Count=0 then CanGenerate:=False;
                        for b:=tmpStrings.IndexOf('[FemaleNames]')+1 to tmpStrings.IndexOf('[SurNames]')-2 do
                                tmpLines[2].Add(tmpStrings.Strings[b]);
                        if tmpLines[2].Count=0 then CanGenerate:=False;
                        for b:=tmpStrings.IndexOf('[SurNames]')+1 to tmpStrings.IndexOf('[TitleNames]')-2 do
                                tmpLines[3].Add(tmpStrings.Strings[b]);
                        if tmpLines[3].Count=0 then CanGenerate:=False;
                        for b:=tmpStrings.IndexOf('[TitleNames]')+1 to tmpStrings.Count-1 do
                                tmpLines[4].Add(tmpStrings.Strings[b]);
                        if tmpLines[4].Count=0 then CanGenerate:=False;
                        tmpStrings.Free;
                        c:=tmpLines[1].Count*tmpLines[3].Count*tmpLines[4].Count;
                        cPos[1]:=tmpLines[2].Count*tmpLines[3].Count*tmpLines[4].Count;
                        cPos[0]:=tmpLines[1].Count*tmpLines[3].Count*tmpLines[4].Count;
                        RadioGroup1.ItemIndex:=0;
                        Edytor.cnt2.Show;
                        Edytor.cnt4.Show;
                        Edytor.cap4.Show;
                end;
                2:
                begin
                        Panel13.Hide;
                        Panel14.Hide;
                        Panel16.Hide;
                        for b:=tmpStrings.IndexOf('[Names]')+1 to tmpStrings.IndexOf('[SurNames]')-2 do
                                tmpLines[1].Add(tmpStrings.Strings[b]);
                        if tmpLines[1].Count=0 then CanGenerate:=False;
                        for b:=tmpStrings.IndexOf('[SurNames]')+1 to tmpStrings.Count-1 do
                                tmpLines[2].Add(tmpStrings.Strings[b]);
                        if tmpLines[2].Count=0 then CanGenerate:=False;
                        tmpStrings.Free;
                        c:=tmpLines[1].Count*tmpLines[2].Count;
                        Edytor.cnt2.Hide;
                        Edytor.cnt4.Hide;
                        Edytor.cap4.Hide;
                end;
                3:
                begin
                        CheckBox1.Checked:=True;
                        CheckBox2.Checked:=True;
                        CheckBox2.Checked:=True;
                        Panel13.Hide;
                        Panel14.Show;
                        Panel16.Hide;
                        for b:=tmpStrings.IndexOf('[Begin]')+1 to tmpStrings.IndexOf('[Middle]')-2 do
                                tmpLines[1].Add(tmpStrings.Strings[b]);
                        if tmpLines[1].Count=0 then CanGenerate:=False;
                        for b:=tmpStrings.IndexOf('[Middle]')+1 to tmpStrings.IndexOf('[End]')-2 do
                                tmpLines[2].Add(tmpStrings.Strings[b]);
                        if tmpLines[2].Count=0 then CanGenerate:=False;
                        for b:=tmpStrings.IndexOf('[End]')+1 to tmpStrings.Count-1 do
                                tmpLines[3].Add(tmpStrings.Strings[b]);
                        if tmpLines[3].Count=0 then CanGenerate:=False;
                        tmpStrings.Free;
                        c:=tmpLines[1].Count*tmpLines[2].Count*tmpLines[3].Count;
                        Edytor.cnt2.Show;
                        Edytor.cnt4.Hide;
                        Edytor.cap4.Hide;
                end;
        end;
        ini:=TINIFile.Create(Panel3.Caption);
        Panel9.Caption:=ini.ReadString('Setup','Author','');
        Panel10.Caption:=ini.ReadString('Setup','Mode','');
        Panel11.Caption:=ini.ReadString('Setup','CreationDate','');
        Label1.Caption:=ini.ReadString('Setup','Description','');
        ini.Free;
        Panel15.Caption:='This dictionary file allows you to generate up to '+IntToStr(c)+' combinations.';
        if CanGenerate=False then
        begin
                BitBtn1.Enabled:=False;
                BitBtn11.Enabled:=False;
                BitBtn12.Enabled:=False;
                spCount.Enabled:=False;
                CheckBox4.Enabled:=False;
                CheckBox5.Enabled:=False;
                Panel13.Hide;
                Panel14.Hide;
                Panel16.Show;
                Panel15.Caption:='No definition data -- Lists are empty';
                Application.MessageBox('This seems to be a valid GenName file, but at least one of dictionary lists is empty. You can edit this file to fill empty lists, but until there is at least one list with no items, generation will not be possible!','Warning!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
        end;
end;

procedure TGenerator.BitBtn1Click(Sender: TObject);
var
        a,b: Integer;
        tmp: String;
        bef: TStringList;
begin
bef:=TStringList.Create;
if CheckBox5.Checked then bef.Sorted:=True;
if CheckBox4.Checked then bef.Duplicates:=dupIgnore else bef.Duplicates:=dupAccept;
a:=StrToInt(Panel10.Caption);
Randomize;
case a of
        1:
        begin
                if CheckBox6.Checked=True then
                        for b:=1 to spCount.Value do bef.Add(tmpLines[RadioGroup1.ItemIndex+1].Strings[Random(tmpLines[RadioGroup1.ItemIndex+1].Count)]+tmpLines[4].Strings[Random(tmpLines[4].Count)]+tmpLines[3].Strings[Random(tmpLines[3].Count)])
                else
                        for b:=1 to spCount.Value do bef.Add(tmpLines[RadioGroup1.ItemIndex+1].Strings[Random(tmpLines[RadioGroup1.ItemIndex+1].Count)]+' '+tmpLines[3].Strings[Random(tmpLines[3].Count)]);
        end;
        2: for b:=1 to spCount.Value do bef.Add(tmpLines[1].Strings[Random(tmpLines[1].Count)]+' '+tmpLines[2].Strings[Random(tmpLines[2].Count)]);
        3: for b:=1 to spCount.Value do
        begin
                tmp:='';
                if CheckBox1.Checked=True then tmp:=tmp+tmpLines[1].Strings[Random(tmpLines[1].Count)];
                if CheckBox2.Checked=True then tmp:=tmp+tmpLines[2].Strings[Random(tmpLines[2].Count)];
                if CheckBox3.Checked=True then tmp:=tmp+tmpLines[3].Strings[Random(tmpLines[3].Count)];
                if tmp<>'' then bef.Add(tmp);
        end;
end;
List.Items.Clear;
List.Items:=bef;
bef.Free;
end;

procedure TGenerator.CheckBox5Click(Sender: TObject);
begin
if not CheckBox5.Checked then
begin
        CheckBox4.Checked:=False;
        CheckBox4.Enabled:=False;
end
else
        CheckBox4.Enabled:=True;
end;

procedure TGenerator.BitBtn2Click(Sender: TObject);
begin
        Edytor.Panel1.Caption:=Panel3.Caption;
        Edytor.Panel2.Caption:=Panel10.Caption;
        Edytor.ShowModal;
end;

procedure TGenerator.Button1Click(Sender: TObject);
begin
	OpenDialog.InitialDir:=ExtractFilePath(Application.ExeName);
        if OpenDialog.Execute then
                if OpenFile(OpenDialog.FileName)=True then BitBtn1Click(self);
end;

procedure TGenerator.RadioGroup1Click(Sender: TObject);
begin
	Panel15.Caption:='This dictionary file allows you to generate up to '+IntToStr(cPos[RadioGroup1.ItemIndex])+' combinations.';
	BitBtn1Click(self);
end;

procedure TGenerator.BitBtn4Click(Sender: TObject);
begin
        InfoForm.ShowModal;
end;

procedure TGenerator.BitBtn11Click(Sender: TObject);
var
        a,x,y,w, pag: Integer;
begin
if not PrintDialog1.Execute then Exit;
Printer.BeginDoc;
with Printer.Canvas do
begin
        Font.Size:=8;
        Pen.Color:=clBlack;
        MoveTo(0,0);
end;
Printer.Canvas.TextOut(20,20,Label1.Caption+' Dictionary file author: '+Panel9.Caption+'. Number of printed items: '+IntToStr(List.Items.Count)+'. Page: 1');
Printer.Canvas.MoveTo(20,68);
Printer.Canvas.LineTo(Printer.PageWidth-20,68);
pag:=1;
x:=20;
y:=80;
for a:=0 to List.Items.Count-1 do
begin
        w:=Printer.Canvas.TextWidth(List.Items.Strings[a]+', ');
        if x+w>Printer.PageWidth-20 then
        begin
                x:=20;
                Inc(y,40);
                if y>=Printer.PageHeight-40 then
                begin
                        Printer.NewPage;
                        Inc(pag);
                        Printer.Canvas.TextOut(20,20,Label1.Caption+' Dictionary file author: '+Panel9.Caption+'. Number of printed items: '+IntToStr(List.Items.Count)+'. Page: '+IntToStr(pag));
                        Printer.Canvas.MoveTo(20,68);
                        Printer.Canvas.LineTo(Printer.PageWidth-20,68);
                        y:=80;
                end;
        end;
        Printer.Canvas.TextOut(x,y,List.Items.Strings[a]+', ');
        Inc(x,w);
end;
Printer.Canvas.MoveTo(20,y+36);
Printer.Canvas.LineTo(Printer.PageWidth-20,y+36);
Printer.Canvas.TextOut(20,y+48,'Generated and printed using GenName 2.00. Visit: https://github.com/trejder/delphi-genname for details');
if Application.MessageBox(PChar('Number of pages to be printed: '+IntToStr(pag)+chr(13)+''+chr(13)+'Print?'),'Confirm...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=ID_NO then Printer.Abort else Printer.EndDoc;
end;

procedure TGenerator.BitBtn12Click(Sender: TObject);
begin
if SaveDialog1.Execute then List.Items.SaveToFile(SaveDialog1.FileName);
end;

procedure TGenerator.FormShow(Sender: TObject);
begin
	if FileExists(ParamStr(1)) then if OpenFile(ParamStr(1))=True then BitBtn1Click(self);
end;

procedure TGenerator.CheckBox1Click(Sender: TObject);
begin
	BitBtn1Click(self);
end;

procedure TGenerator.CheckBox2Click(Sender: TObject);
begin
	BitBtn1Click(self);
end;

procedure TGenerator.CheckBox3Click(Sender: TObject);
begin
	BitBtn1Click(self);
end;

procedure TGenerator.SpeedButton1Click(Sender: TObject);
begin
        Application.Terminate;
end;

procedure TGenerator.CheckBox6Click(Sender: TObject);
begin
        BitBtn1Click(self);
end;

end.
