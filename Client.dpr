program Client;

uses
  Vcl.Forms,
  UClient in 'UClient.pas' {FrmClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmClient, FrmClient);
  Application.Run;
end.
