unit UClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls;

type
  TFrmClient = class(TForm)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    EdtParametro: TEdit;
    Label1: TLabel;
    BtnBuscar: TButton;
    Memo: TMemo;
    procedure BtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClient: TFrmClient;

implementation

{$R *.dfm}

procedure TFrmClient.BtnBuscarClick(Sender: TObject);
begin

  Memo.Clear;
//  RESTClient.BaseURL := 'https://www.receitaws.com.br/v1/cnpj/'+EdtParametro.Text;
  RESTClient.BaseURL := 'http://localhost:8080/datasnap/rest/TServerMethods/GetPessoa/'+EdtParametro.Text;
  RESTRequest.Execute;
  Memo.Lines.Add(RESTRequest.Response.JSONText);
end;

end.
