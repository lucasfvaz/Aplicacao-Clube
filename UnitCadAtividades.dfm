object frmCadAtividades: TfrmCadAtividades
  Left = 359
  Top = 186
  Width = 653
  Height = 410
  Align = alCustom
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Atividades'
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
    Left = 40
    Top = 112
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
    Left = 40
    Top = 152
    Width = 67
    Height = 13
    Caption = 'ATIVIDADE'
    FocusControl = edtAtividade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 192
    Width = 42
    Height = 13
    Caption = 'VALOR'
    FocusControl = edtValor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 315
    Top = 104
    Width = 72
    Height = 13
    Caption = 'PESQUISAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 211
    Top = 8
    Width = 203
    Height = 25
    Caption = 'Cadastro de Atividades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtId: TDBEdit
    Left = 40
    Top = 128
    Width = 41
    Height = 21
    DataField = 'ID'
    DataSource = DataModuleClube.DsAtividade
    TabOrder = 0
  end
  object edtAtividade: TDBEdit
    Left = 40
    Top = 168
    Width = 233
    Height = 21
    DataField = 'DSATIVIDADE'
    DataSource = DataModuleClube.DsAtividade
    TabOrder = 1
  end
  object edtValor: TDBEdit
    Left = 40
    Top = 208
    Width = 233
    Height = 21
    DataField = 'VLATIVIDADE'
    DataSource = DataModuleClube.DsAtividade
    TabOrder = 2
  end
  object grdAtividades: TDBGrid
    Left = 312
    Top = 152
    Width = 320
    Height = 217
    Cursor = crHandPoint
    DataSource = DataModuleClube.DsAtividade
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DSATIVIDADE'
        Title.Caption = 'ATIVIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 199
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 312
    Top = 124
    Width = 321
    Height = 21
    TabOrder = 4
    OnChange = txtBuscaChange
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 56
    Width = 250
    Height = 41
    Cursor = crHandPoint
    DataSource = DataModuleClube.DsAtividade
    TabOrder = 5
  end
end
