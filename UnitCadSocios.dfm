object frmCadSocios: TfrmCadSocios
  Left = 164
  Top = 115
  Width = 1135
  Height = 547
  Align = alCustom
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de S'#243'cios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 119
    Width = 14
    Height = 13
    Caption = 'ID'
    FocusControl = edtId
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 119
    Width = 37
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 648
    Top = 48
    Width = 139
    Height = 13
    Caption = 'PESQUISA PELO NOME'
    FocusControl = edtSobrenome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 175
    Width = 24
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 272
    Top = 175
    Width = 69
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = edtEndereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 231
    Width = 95
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = edtComplemento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 216
    Top = 231
    Width = 48
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = edtBairro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 392
    Top = 231
    Width = 47
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 40
    Top = 287
    Width = 51
    Height = 13
    Caption = 'ESTADO'
    FocusControl = edtestado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 216
    Top = 287
    Width = 25
    Height = 13
    Caption = 'CEP'
    FocusControl = edtCep
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 392
    Top = 287
    Width = 65
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = edtTelefone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 752
    Top = 9
    Width = 197
    Height = 29
    Caption = 'BUSCAR S'#211'CIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 394
    Top = 118
    Width = 79
    Height = 13
    Caption = 'SOBRENOME'
    FocusControl = edtSobrenome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 152
    Top = 8
    Width = 270
    Height = 29
    Caption = 'CADASTRO DE S'#211'CIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtId: TDBEdit
    Left = 40
    Top = 135
    Width = 65
    Height = 21
    DataField = 'ID'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 0
  end
  object edtNome: TDBEdit
    Left = 136
    Top = 135
    Width = 233
    Height = 21
    DataField = 'DSNOME'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 1
  end
  object edtSobrenome: TDBEdit
    Left = 392
    Top = 135
    Width = 233
    Height = 21
    DataField = 'DSSOBRENOME'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 40
    Top = 191
    Width = 217
    Height = 21
    DataField = 'NRCPF'
    DataSource = DataModuleClube.DsSocios
    MaxLength = 14
    TabOrder = 3
  end
  object edtEndereco: TDBEdit
    Left = 272
    Top = 191
    Width = 353
    Height = 21
    DataField = 'DSENDERECO'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 4
  end
  object edtComplemento: TDBEdit
    Left = 40
    Top = 247
    Width = 161
    Height = 21
    DataField = 'DSCOMPLEMENTO'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 5
  end
  object edtBairro: TDBEdit
    Left = 216
    Top = 247
    Width = 161
    Height = 21
    DataField = 'DSBAIRRO'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 392
    Top = 247
    Width = 233
    Height = 21
    DataField = 'NMCIDADE'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 7
  end
  object edtestado: TDBEdit
    Left = 40
    Top = 303
    Width = 161
    Height = 21
    DataField = 'SGESTADO'
    DataSource = DataModuleClube.DsSocios
    TabOrder = 8
  end
  object edtCep: TDBEdit
    Left = 216
    Top = 303
    Width = 161
    Height = 21
    DataField = 'NRCEP'
    DataSource = DataModuleClube.DsSocios
    MaxLength = 10
    TabOrder = 9
  end
  object edtTelefone: TDBEdit
    Left = 392
    Top = 303
    Width = 233
    Height = 21
    DataField = 'NRFONE'
    DataSource = DataModuleClube.DsSocios
    MaxLength = 17
    TabOrder = 10
  end
  object navSocios: TDBNavigator
    Left = 120
    Top = 53
    Width = 320
    Height = 41
    Cursor = crHandPoint
    DataSource = DataModuleClube.DsSocios
    TabOrder = 11
  end
  object grdSocios: TDBGrid
    Left = 648
    Top = 97
    Width = 433
    Height = 368
    Cursor = crHandPoint
    DataSource = DataModuleClube.DsSocios
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DSNOME'
        Title.Caption = 'NOME'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DSSOBRENOME'
        Title.Caption = 'SOBRENOME'
        Width = 277
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 648
    Top = 68
    Width = 433
    Height = 21
    TabOrder = 13
    OnChange = txtBuscaChange
  end
end
