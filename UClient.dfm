object FrmClient: TFrmClient
  Left = 0
  Top = 0
  Caption = 'REST Client'
  ClientHeight = 387
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 96
    Height = 13
    Caption = 'Par'#226'metro de busca'
  end
  object EdtParametro: TEdit
    Left = 24
    Top = 35
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object BtnBuscar: TButton
    Left = 24
    Top = 62
    Width = 121
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = BtnBuscarClick
  end
  object Memo: TMemo
    Left = 240
    Top = 16
    Width = 377
    Height = 345
    Lines.Strings = (
      'Memo')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object RESTClient: TRESTClient
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj'
    Params = <>
    Left = 40
    Top = 144
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 40
    Top = 200
  end
  object RESTResponse: TRESTResponse
    Left = 40
    Top = 264
  end
end
