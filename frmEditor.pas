unit frmEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Menus, INIFiles;

type
  TEdytor = class(TForm)
    Timer1: TTimer;
    Panel2: TPanel;
    Label1: TLabel;
    popEdit: TPopupMenu;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N3: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N1: TMenuItem;
    test1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    pnlTop: TPanel;
    Panel1: TPanel;
    pnlBottom: TPanel;
    sts1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    pnlMain: TPanel;
    pnlA: TPanel;
    cap1: TLabel;
    cnt1: TLabel;
    List1: TListBox;
    Edit1: TEdit;
    pnlB: TPanel;
    cap2: TLabel;
    cnt2: TLabel;
    List2: TListBox;
    Edit2: TEdit;
    pnlC: TPanel;
    cap4: TLabel;
    cnt4: TLabel;
    List4: TListBox;
    Edit4: TEdit;
    pnlD: TPanel;
    cap3: TLabel;
    cnt3: TLabel;
    List3: TListBox;
    Edit3: TEdit;
    popList: TPopupMenu;
    mnuDelete: TMenuItem;
    mnuModify: TMenuItem;
    MenuItem1: TMenuItem;
    mnuAddMore: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure List1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure List2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure List3ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure List4ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure mnuDeleteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mnuAddMoreClick(Sender: TObject);
    procedure mnuModifyClick(Sender: TObject);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CenterControl(Control: TControl);
    procedure Edit1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure Edit2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure Edit3ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure Edit4ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure menuclick(Sender: TObject);
  private
    Modifited: Boolean;
    tmlList: TListBox;
    cont: TEdit;
  public
    { Public declarations }
  end;

var
  Edytor: TEdytor;

implementation

{$R *.DFM}

uses frmMain, frmDetails, frmAddMore;

procedure TEdytor.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TEdytor.FormShow(Sender: TObject);
var
        mode,b: Integer;
        tmpStrings: TStringList;
begin
Modifited:=False;
mode:=StrToInt(Panel2.Caption);
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
tmpStrings:=TStringList.Create;
tmpStrings.LoadFromFile(Panel1.Caption);
List1.Items.Clear;
List2.Items.Clear;
List3.Items.Clear;
List4.Items.Clear;

case mode of
        1:
        begin
                pnlA.Show;
                pnlB.Show;
                pnlC.Show;
                pnlD.Show;
                pnlA.Width := 195;
                pnlB.Width := 195;
                pnlC.Width := 195;
                pnlD.Width := 195;
                cap1.Caption:='Male names:';
                cap2.Caption:='Female names:';
                cap3.Caption:='Surnames:';
                cap4.Caption := 'Titles and prefixes:';
                for b:=tmpStrings.IndexOf('[MaleNames]')+1 to tmpStrings.IndexOf('[FemaleNames]')-2 do List1.Items.Add(tmpStrings.Strings[b]);
                for b:=tmpStrings.IndexOf('[FemaleNames]')+1 to tmpStrings.IndexOf('[SurNames]')-2 do List2.Items.Add(tmpStrings.Strings[b]);
                for b:=tmpStrings.IndexOf('[SurNames]')+1 to tmpStrings.IndexOf('[TitleNames]')-2 do List3.Items.Add(tmpStrings.Strings[b]);
                for b:=tmpStrings.IndexOf('[TitleNames]')+1 to tmpStrings.Count-1 do List4.Items.Add(tmpStrings.Strings[b]);
                tmpStrings.Free;
        end;
        2:
        begin
                pnlB.Hide;
                pnlC.Hide;
                pnlA.Show;
                pnlD.Show;
                pnlA.Width := 390;
                pnlD.Width := 390;
                cap1.Caption:='Names:';
                cap3.Caption:='Surnames:';
                for b:=tmpStrings.IndexOf('[Names]')+1 to tmpStrings.IndexOf('[SurNames]')-2 do List1.Items.Add(tmpStrings.Strings[b]);
                for b:=tmpStrings.IndexOf('[SurNames]')+1 to tmpStrings.Count-1 do List3.Items.Add(tmpStrings.Strings[b]);
                tmpStrings.Free;
        end;
        3:
        begin
                pnlC.Hide;
                pnlA.Show;
                pnlB.Show;
                pnlD.Show;
                pnlA.Width := 260;
                pnlB.Width := 260;
                pnlD.Width := 260;
                cap1.Caption:='Initial part (i.e. name):';
                cap2.Caption:='Connector (i.e. family title):';
                cap3.Caption:='Final part (i.e. surname):';
                for b:=tmpStrings.IndexOf('[Begin]')+1 to tmpStrings.IndexOf('[Middle]')-2 do List1.Items.Add(tmpStrings.Strings[b]);
                for b:=tmpStrings.IndexOf('[Middle]')+1 to tmpStrings.IndexOf('[End]')-2 do List2.Items.Add(tmpStrings.Strings[b]);
                for b:=tmpStrings.IndexOf('[End]')+1 to tmpStrings.Count-1 do List3.Items.Add(tmpStrings.Strings[b]);
                tmpStrings.Free;
        end;
end;
cnt1.Caption:='Items count: '+IntToStr(List1.Items.Count);
cnt2.Caption:='Items count: '+IntToStr(List2.Items.Count);
cnt3.Caption:='Items count: '+IntToStr(List3.Items.Count);
cnt4.Caption:='Items count: '+IntToStr(List4.Items.Count);
end;

procedure TEdytor.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
        a,b, mode: Integer;
        i, Found : Integer;
begin
if Key=13 then
begin
        if Edit1.Text='' then exit;
        mode:=StrToInt(Panel2.Caption);

        for a:=0 to List1.Items.Count-1 do
        begin
                b := List1.Items.IndexOf(Edit1.Text);
                if b > -1 then
                begin
                        sts1.Font.Color:=clRed;
                        sts1.Font.Style:=[fsBold];
                        if mode=1 then sts1.Caption:='Entered male name already exists!';
                        if mode=2 then sts1.Caption:='Entered name already exists!';
                        if mode=3 then sts1.Caption:='Entered initial part already exists!';
                        Edit1.SelectAll;
                        Timer1.Enabled:=True;
                        exit;
                end;
        end;
        List1.Items.Add(Edit1.Text);
        cnt1.Caption:='Items count: '+IntToStr(List1.Items.Count);
        sts1.Font.Color:=clBlack;
        sts1.Font.Style:=[];
        if mode=1 then sts1.Caption:='New male name added...';
        if mode=2 then sts1.Caption:='New name added...';
        if mode=3 then sts1.Caption:='New inital part addeed...';
        Timer1.Enabled:=True;
        Modifited:=True;
        Edit1.Text:='';
end
else
begin
  for I := 0 to List1.Items.Count -1 do
  begin
    Found := Pos(Edit1.Text, List1.Items[i]);
    if (Found > 0) and (List1.Items[i][1] = Edit1.Text[1]) then
    begin
      List1.ItemIndex := i;
      Break;
    end;
  end;
end;
end;

procedure TEdytor.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
        Found, I, a,b, mode: Integer;
begin
if Key=13 then
begin
        if Edit2.Text='' then exit;
        mode:=StrToInt(Panel2.Caption);

        for a:=0 to List2.Items.Count-1 do
        begin
                b := List2.Items.IndexOf(Edit2.Text);
                if b > -1 then
                begin
                        sts1.Font.Color:=clRed;
                        sts1.Font.Style:=[fsBold];
                        if mode=1 then sts1.Caption:='Entered name already exists on list of female names!';
                        if mode=3 then sts1.Caption:='Entered connector already exists!';
                        Edit2.SelectAll;
                        Timer1.Enabled:=True;
                        exit;
                end;
        end;
        sts1.Font.Color:=clBlack;
        sts1.Font.Style:=[];
        List2.Items.Add(Edit2.Text);
        cnt2.Caption:='Items count: '+IntToStr(List2.Items.Count);
        if mode=1 then sts1.Caption:='New female name added...';
        if mode=3 then sts1.Caption:='New connector added...';
        Timer1.Enabled:=True;
        Modifited:=True;
        Edit2.Text:='';
end
else
begin
  for I := 0 to List2.Items.Count -1 do
  begin
    Found := Pos(Edit2.Text, List2.Items[i]);
    if (Found > 0) and (List2.Items[i][1] = Edit2.Text[1]) then
    begin
      List2.ItemIndex := i;
      Break;
    end;
  end;
end;
end;

procedure TEdytor.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
        Found, I, a,b, mode: Integer;
begin
if Key=13 then
begin
        if Edit3.Text='' then exit;
        mode:=StrToInt(Panel2.Caption);
        for a:=0 to List3.Items.Count-1 do
        begin
                b := List3.Items.IndexOf(Edit3.Text);
                if b > -1 then
                begin
                        sts1.Font.Color:=clRed;
                        sts1.Font.Style:=[fsBold];
                        if (mode=1) or (mode=2) then sts1.Caption:='Entered surname already exists!';
                        if mode=3 then sts1.Caption:='Entered final part already exists!';
                        Edit3.SelectAll;
                        Timer1.Enabled:=True;
                        exit;
                end;
        end;
        List3.Items.Add(Edit3.Text);
        cnt3.Caption:='Items count: '+IntToStr(List3.Items.Count);
        sts1.Font.Color:=clBlack;
        sts1.Font.Style:=[];
        if (mode=1) or (mode=2) then sts1.Caption:='New surname added...';
        if mode=3 then sts1.Caption:='New final part added...';
        Timer1.Enabled:=True;
        Modifited:=True;
        Edit3.Text:='';
end
else
begin
  for I := 0 to List3.Items.Count -1 do
  begin
    Found := Pos(Edit3.Text, List3.Items[i]);
    if (Found > 0) and (List3.Items[i][1] = Edit3.Text[1]) then
    begin
      List3.ItemIndex := i;
      Break;
    end;
  end;
end;
end;

procedure TEdytor.BitBtn3Click(Sender: TObject);
var
        tmpLins: TStringList;
        a, mode: Integer;
        tmpl: array[0..5] of String;
begin
mode:=StrToInt(Panel2.Caption);
tmpLins:=TStringList.Create;
tmpLins.LoadFromFile(Panel1.Caption);
for a:=0 to 5 do tmpl[a]:=tmpLins.Strings[a];
tmpLins.Clear;
for a:=0 to 5 do tmpLins.Add(tmpl[a]);
case mode of
        1:
        begin
                tmpLins.Add('[MaleNames]');
                for a:=0 to List1.Items.Count-1 do tmpLins.Add(List1.Items.Strings[a]);
                tmpLins.Add('');
                tmpLins.Add('[FemaleNames]');
                for a:=0 to List2.Items.Count-1 do tmpLins.Add(List2.Items.Strings[a]);
                tmpLins.Add('');
                tmpLins.Add('[SurNames]');
                for a:=0 to List3.Items.Count-1 do tmpLins.Add(List3.Items.Strings[a]);
                tmpLins.Add('');
                tmpLins.Add('[TitleNames]');
                for a:=0 to List4.Items.Count-1 do tmpLins.Add(List4.Items.Strings[a]);
                tmpLins.SaveToFile(Panel1.Caption);
                sts1.Font.Color:=clBlack;
                sts1.Font.Style:=[];
                sts1.Caption:='File was saved...';
                Timer1.Enabled:=True;
                tmpLins.Free;
        end;
        2:
        begin
                tmpLins.Add('[Names]');
                for a:=0 to List1.Items.Count-1 do tmpLins.Add(List1.Items.Strings[a]);
                tmpLins.Add('');
                tmpLins.Add('[SurNames]');
                for a:=0 to List3.Items.Count-1 do tmpLins.Add(List3.Items.Strings[a]);
                tmpLins.SaveToFile(Panel1.Caption);
                sts1.Font.Color:=clBlack;
                sts1.Font.Style:=[];
                sts1.Caption:='File was saved...';
                Timer1.Enabled:=True;
                tmpLins.Free;
        end;
        3:
        begin
                tmpLins.Add('[Begin]');
                for a:=0 to List1.Items.Count-1 do tmpLins.Add(List1.Items.Strings[a]);
                tmpLins.Add('');
                tmpLins.Add('[Middle]');
                for a:=0 to List2.Items.Count-1 do tmpLins.Add(List2.Items.Strings[a]);
                tmpLins.Add('');
                tmpLins.Add('[End]');
                for a:=0 to List3.Items.Count-1 do tmpLins.Add(List3.Items.Strings[a]);
                tmpLins.SaveToFile(Panel1.Caption);
                sts1.Font.Color:=clBlack;
                sts1.Font.Style:=[];
                sts1.Caption:='File was saved...';
                Timer1.Enabled:=True;
                tmpLins.Free;
        end;
end;
Modifited:=False;
end;

procedure TEdytor.Timer1Timer(Sender: TObject);
begin
sts1.Caption:='';
Timer1.Enabled:=False;
end;

procedure TEdytor.FormClose(Sender: TObject; var Action: TCloseAction);
var
        answ: Integer;
begin
        if Modifited then
        begin
                answ:=Application.MessageBox(PChar('You have an unsaved changed! If you close this window, all of them will be lost!'+chr(13)+''+chr(13)+'Save changes now?'),'Confirm...',MB_YESNOCANCEL+MB_ICONQUESTION+MB_DEFBUTTON1);
                if answ=IDNO then exit;
                if answ=IDCANCEL then Action:=caNone;
                if answ=IDYES then
                begin
                        BitBtn3Click(self);
                        if (List1.Items.Count>0) and (List2.Items.Count>0) and (List3.Items.Count>0) then
                        begin
                                Generator.OpenFile(Panel1.Caption);
                                Generator.BitBtn1Click(self);
                        end;
                exit;
                end;
        end;
        if (List1.Items.Count>0) and (List2.Items.Count>0) and (List3.Items.Count>0) then
        begin
                Generator.OpenFile(Panel1.Caption);
                Generator.BitBtn1Click(self);
        end;
end;

procedure TEdytor.List1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        tmlList := List1;
end;

procedure TEdytor.List2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        tmlList := List2;
end;

procedure TEdytor.List3ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        tmlList := List3;
end;

procedure TEdytor.List4ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        tmlList := List4;
end;

procedure TEdytor.mnuDeleteClick(Sender: TObject);
begin
if tmlList.ItemIndex=-1 then exit;
if Application.MessageBox(PChar('Item '+IntToStr(tmlList.ItemIndex+1)+': "'+tmlList.Items.Strings[tmlList.ItemIndex]+'"'+chr(13)+''+chr(13)+'Are you sure, you want to delete it?'),'Confirm...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
begin
        tmlList.Items.Delete(tmlList.ItemIndex);
        Modifited:=True;
end;
cnt1.Caption:='Items count: '+IntToStr(List1.Items.Count);
cnt2.Caption:='Items count: '+IntToStr(List2.Items.Count);
cnt3.Caption:='Items count: '+IntToStr(List3.Items.Count);
cnt4.Caption:='Items count: '+IntToStr(List4.Items.Count);
end;

procedure TEdytor.BitBtn2Click(Sender: TObject);
var
        mode: Integer;
        F: TextFile;
begin
Details.ShowModal;
if Details.ModalResult=mrCancel then exit;
AssignFile(F, Details.Panel3.Caption);
Rewrite(F);
mode:=Details.SpinEdit1.Value;
Writeln(F,'[Setup]');
Writeln(F,'Mode='+IntToStr(mode));
Writeln(F,'Author='+Details.Edit1.Text);
Writeln(F,'CreationDate='+Details.Edit2.Text);
Writeln(F,'Description='+Details.Edit3.Text);
Writeln(F,'');
CloseFile(F);
Panel2.Caption:=IntToStr(mode);
Panel1.Caption:=Details.Panel3.Caption;
List1.Items.Clear;
List2.Items.Clear;
List3.Items.Clear;
BitBtn3Click(self);
FormShow(self);
end;

procedure TEdytor.mnuAddMoreClick(Sender: TObject);
var
        a, b, c, lDod, lAll: Integer;
        tmp: String;
label
        lHere;
begin
AddMore.ShowModal;
if AddMore.ModalResult=mrCancel then exit;
lAll:=AddMore.memo.Lines.Count;
lDod:=0;
if lAll<=0 then exit;
for c:=0 to lAll do
begin
tmp:=AddMore.memo.Lines.Strings[c];
if tmp='' then goto lHere;
        for a:=0 to tmlList.Items.Count-1 do
        begin
                b:=Pos(tmp,tmlList.Items.Strings[a]);
                if b<>0 then goto lHere;
        end;
        tmlList.Items.Add(tmp);
        Inc(lDod);
lHere:
end;
if lDod=lAll then Application.MessageBox('All entered items has been added.','Summary...',MB_OK+MB_ICONQUESTION+MB_DEFBUTTON1);
if lDod=0 then
begin
        Application.MessageBox('No new items were added, because all entered items already exists on the list...','Summary...',MB_OK+MB_ICONQUESTION+MB_DEFBUTTON1);
        exit;
end;
if lDod<>lAll then Application.MessageBox(PChar('You have entered '+IntToStr(lAll)+' item(s) to be added. Out of this '+IntToStr(lDod)+' item(s) were actually added to the list. Other items were ignored, because already exists on the list...'),'Podsumowanie...',MB_OK+MB_ICONQUESTION+MB_DEFBUTTON1);
cnt1.Caption:='Items count: '+IntToStr(List1.Items.Count);
cnt2.Caption:='Items count: '+IntToStr(List2.Items.Count);
cnt3.Caption:='Items count: '+IntToStr(List3.Items.Count);
cnt4.Caption:='Items count: '+IntToStr(List4.Items.Count);
Modifited:=True;
end;

procedure TEdytor.mnuModifyClick(Sender: TObject);
var
        chan: String;
begin
if tmlList.ItemIndex=-1 then exit;
chan:=InputBox('Modify an item', 'Enter new value for item nr '+IntToStr(tmlList.ItemIndex+1)+'...',tmlList.Items.Strings[tmlList.ItemIndex]);
tmlList.Items.Strings[tmlList.ItemIndex]:=chan;
Modifited:=True;
end;

procedure TEdytor.Edit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
        Found, I, a,b, mode: Integer;
begin
if Key=13 then
begin
        if Edit4.Text='' then exit;
        mode:=StrToInt(Panel2.Caption);

        for a:=0 to List4.Items.Count-1 do
        begin
                b := List4.Items.IndexOf(Edit4.Text);
                if b > -1 then
                begin
                        sts1.Font.Color:=clRed;
                        sts1.Font.Style:=[fsBold];
                        if mode=1 then sts1.Caption:='Entered title (prefix) already exists!';
                        Edit4.SelectAll;
                        Timer1.Enabled:=True;
                        exit;
                end;
        end;
        sts1.Font.Color:=clBlack;
        sts1.Font.Style:=[];
        List4.Items.Add(Edit4.Text);
        cnt4.Caption:='Items count: '+IntToStr(List4.Items.Count);
        if mode=1 then sts1.Caption:='New title (prefix) added...';
        Timer1.Enabled:=True;
        Modifited:=True;
        Edit4.Text:='';
end
else
begin
  for I := 0 to List4.Items.Count -1 do
  begin
    Found := Pos(Edit4.Text, List4.Items[i]);
    if (Found > 0) and (List4.Items[i][1] = Edit4.Text[1]) then
    begin
      List4.ItemIndex := i;
      Break;
    end;
  end;
end;
end;

procedure TEdytor.CenterControl(Control: TControl);
var
  X, Y: Integer;
begin
  X := Control.Left;
  Y := Control.Top;
  if Control is TForm then begin
    with Control do begin
      if (TForm(Control).FormStyle = fsMDIChild) and
        (Application.MainForm <> nil) then
      begin
        X := (Application.MainForm.ClientWidth - Width) div 2;
        Y := (Application.MainForm.ClientHeight - Height) div 2;
      end
      else begin
        X := (Screen.Width - Width) div 2;
        Y := (Screen.Height - Height) div 2;
      end;
    end;
  end
  else if Control.Parent <> nil then begin
    with Control do begin
      Parent.HandleNeeded;
      X := (Parent.ClientWidth - Width) div 2;
      Y := (Parent.ClientHeight - Height) div 2;
    end;
  end;
  if X < 0 then X := 0;
  if Y < 0 then Y := 0;
  with Control do SetBounds(X, Y, Width, Height);
end;

procedure TEdytor.Edit1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        cont := Edit1;
end;

procedure TEdytor.Edit2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        cont := Edit2;
end;

procedure TEdytor.Edit3ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        cont := Edit3;
end;

procedure TEdytor.Edit4ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
        cont := Edit4;
end;

procedure TEdytor.menuclick(Sender: TObject);
begin
        cont.SelText:=(Sender as TMenuItem).Caption;
end;

end.

