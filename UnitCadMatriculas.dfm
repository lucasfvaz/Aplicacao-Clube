object frmMatricula: TfrmMatricula
  Left = 409
  Top = 151
  Width = 522
  Height = 480
  Align = alCustom
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Matr'#237'cula'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 96
    Width = 56
    Height = 13
    Caption = 'ID SOCIO'
    FocusControl = edtIdSocio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 141
    Width = 84
    Height = 13
    Caption = 'ID ATIVIDADE'
    FocusControl = edtIdAtividade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 189
    Width = 109
    Height = 13
    Caption = 'DATA MATRICULA'
    FocusControl = edtData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 264
    Top = 96
    Width = 139
    Height = 13
    Caption = 'SELECIONE UM ALUNO'
    FocusControl = edtIdSocio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 264
    Top = 143
    Width = 171
    Height = 13
    Caption = 'SELECIONE UMA ATIVIDADE'
    FocusControl = edtIdSocio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 264
    Top = 188
    Width = 42
    Height = 13
    Caption = 'VALOR'
    FocusControl = edtData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 90
    Top = 244
    Width = 160
    Height = 13
    Caption = 'MATRICULAS EFETIVADAS'
    FocusControl = edtData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 131
    Top = 8
    Width = 201
    Height = 25
    Caption = 'Cadastro de Matr'#237'culas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtIdSocio: TDBEdit
    Left = 88
    Top = 112
    Width = 49
    Height = 21
    DataField = 'IDSOCIO'
    DataSource = DataModuleClube.DsMatricula
    Enabled = False
    TabOrder = 0
  end
  object edtIdAtividade: TDBEdit
    Left = 88
    Top = 157
    Width = 49
    Height = 21
    DataField = 'IDATIVIDADE'
    DataSource = DataModuleClube.DsMatricula
    Enabled = False
    TabOrder = 1
  end
  object edtData: TDBEdit
    Left = 88
    Top = 205
    Width = 105
    Height = 21
    DataField = 'DTMATRICULA'
    DataSource = DataModuleClube.DsMatricula
    TabOrder = 2
  end
  object cbAluno: TDBLookupComboBox
    Left = 264
    Top = 112
    Width = 169
    Height = 21
    DataField = 'IDSOCIO'
    DataSource = DataModuleClube.DsMatricula
    KeyField = 'id'
    ListField = 'DSNOME'
    ListSource = DataModuleClube.DsSocios
    TabOrder = 3
  end
  object cbAtividades: TDBLookupComboBox
    Left = 264
    Top = 158
    Width = 169
    Height = 21
    DataField = 'IDATIVIDADE'
    DataSource = DataModuleClube.DsMatricula
    KeyField = 'ID'
    ListField = 'DSATIVIDADE'
    ListSource = DataModuleClube.DsAtividade
    TabOrder = 4
  end
  object edtValor: TDBEdit
    Left = 264
    Top = 208
    Width = 169
    Height = 21
    DataField = 'VLATIVIDADE'
    DataSource = DataModuleClube.DsAtividade
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 112
    Top = 48
    Width = 240
    Height = 33
    Cursor = crHandPoint
    DataSource = DataModuleClube.DsMatricula
    TabOrder = 6
  end
  object grdMatriculas: TDBGrid
    Left = 88
    Top = 264
    Width = 345
    Height = 161
    Cursor = crHandPoint
    Align = alCustom
    DataSource = DataModuleClube.DsMatricula
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
