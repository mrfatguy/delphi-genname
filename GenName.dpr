program GenName;

uses
  Forms,
  frmMain in 'frmMain.pas' {Generator},
  frmEditor in 'frmEditor.pas' {Edytor},
  frmDetails in 'frmDetails.pas' {Details},
  frmAddMore in 'frmAddMore.pas' {AddMore},
  frmInfo in 'frmInfo.pas' {Info};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'GenName 2.00';
  Application.CreateForm(TGenerator, Generator);
  Application.CreateForm(TEdytor, Edytor);
  Application.CreateForm(TDetails, Details);
  Application.CreateForm(TAddMore, AddMore);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.Run;
end.
