object DataModuleClube: TDataModuleClube
  OldCreateOrder = False
  Left = 416
  Top = 224
  Height = 413
  Width = 899
  object DataBaseClube: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:C:\Sistema Clube\CLUBE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object Transacoes: TIBTransaction
    Active = True
    DefaultDatabase = DataBaseClube
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 136
    Top = 24
  end
  object TbAtividades: TIBTable
    Database = DataBaseClube
    Transaction = Transacoes
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSATIVIDADE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VLATIVIDADE'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 18
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'PK_ATIVIDADE'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ATIVIDADE'
    Left = 136
    Top = 88
    object TbAtividadesID: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID'
      Required = True
    end
    object TbAtividadesDSATIVIDADE: TIBStringField
      DisplayWidth = 20
      FieldName = 'DSATIVIDADE'
      Required = True
      Size = 60
    end
    object TbAtividadesVLATIVIDADE: TIBBCDField
      DisplayWidth = 14
      FieldName = 'VLATIVIDADE'
      Required = True
      Precision = 18
      Size = 4
    end
  end
  object DsAtividade: TDataSource
    DataSet = TbAtividades
    Left = 136
    Top = 144
  end
  object TbSocios: TIBTable
    Database = DataBaseClube
    Transaction = Transacoes
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSNOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DSSOBRENOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NRCPF'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DSENDERECO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DSCOMPLEMENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DSBAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NMCIDADE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'SGESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NRCEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'NRFONE'
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'PK_SOCIO'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'SOCIO'
    Left = 48
    Top = 88
    object TbSociosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TbSociosDSNOME: TIBStringField
      FieldName = 'DSNOME'
      Required = True
      Size = 60
    end
    object TbSociosDSSOBRENOME: TIBStringField
      FieldName = 'DSSOBRENOME'
      Required = True
      Size = 60
    end
    object TbSociosNRCPF: TIBStringField
      FieldName = 'NRCPF'
      Required = True
      EditMask = '###.###.###-##;1;_'
    end
    object TbSociosDSENDERECO: TIBStringField
      FieldName = 'DSENDERECO'
      Size = 60
    end
    object TbSociosDSCOMPLEMENTO: TIBStringField
      FieldName = 'DSCOMPLEMENTO'
      Size = 40
    end
    object TbSociosDSBAIRRO: TIBStringField
      FieldName = 'DSBAIRRO'
      Size = 40
    end
    object TbSociosNMCIDADE: TIBStringField
      FieldName = 'NMCIDADE'
      Size = 60
    end
    object TbSociosSGESTADO: TIBStringField
      FieldName = 'SGESTADO'
      Size = 2
    end
    object TbSociosNRCEP: TIBStringField
      FieldName = 'NRCEP'
      Size = 9
    end
    object TbSociosNRFONE: TIBStringField
      FieldName = 'NRFONE'
      Size = 12
    end
  end
  object DsSocios: TDataSource
    DataSet = TbSocios
    Left = 48
    Top = 144
  end
  object TbMatricula: TIBTable
    Database = DataBaseClube
    Transaction = Transacoes
    AfterInsert = TbMatriculaAfterInsert
    Active = True
    FieldDefs = <
      item
        Name = 'IDSOCIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDATIVIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DTMATRICULA'
        Attributes = [faRequired]
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'PK_MATRICULA'
        Fields = 'IDSOCIO;IDATIVIDADE'
        Options = [ixUnique]
      end
      item
        Name = 'FK_MATRICULA_ATIVIDADE'
        Fields = 'IDATIVIDADE'
      end
      item
        Name = 'FK_MATRICULA_SOCIO'
        Fields = 'IDSOCIO'
      end>
    StoreDefs = True
    TableName = 'MATRICULA'
    Left = 216
    Top = 88
    object TbMatriculaIDSOCIO: TIntegerField
      FieldName = 'IDSOCIO'
      Required = True
    end
    object TbMatriculaIDATIVIDADE: TIntegerField
      FieldName = 'IDATIVIDADE'
      Required = True
    end
    object TbMatriculaDTMATRICULA: TDateField
      FieldName = 'DTMATRICULA'
      Required = True
    end
  end
  object DsMatricula: TDataSource
    DataSet = TbMatricula
    Left = 216
    Top = 144
  end
end
