unit DmClube;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBTable, IBDatabase;

type
  TDataModuleClube = class(TDataModule)
    DataBaseClube: TIBDatabase;
    Transacoes: TIBTransaction;
    TbAtividades: TIBTable;
    DsAtividade: TDataSource;
    TbAtividadesID: TIntegerField;
    TbAtividadesDSATIVIDADE: TIBStringField;
    TbAtividadesVLATIVIDADE: TIBBCDField;
    TbSocios: TIBTable;
    DsSocios: TDataSource;
    TbSociosID: TIntegerField;
    TbSociosDSNOME: TIBStringField;
    TbSociosDSSOBRENOME: TIBStringField;
    TbSociosNRCPF: TIBStringField;
    TbSociosDSENDERECO: TIBStringField;
    TbSociosDSCOMPLEMENTO: TIBStringField;
    TbSociosDSBAIRRO: TIBStringField;
    TbSociosNMCIDADE: TIBStringField;
    TbSociosSGESTADO: TIBStringField;
    TbSociosNRCEP: TIBStringField;
    TbSociosNRFONE: TIBStringField;
    TbMatricula: TIBTable;
    DsMatricula: TDataSource;
    TbMatriculaIDSOCIO: TIntegerField;
    TbMatriculaIDATIVIDADE: TIntegerField;
    TbMatriculaDTMATRICULA: TDateField;
    procedure TbMatriculaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleClube: TDataModuleClube;
  Soma: Integer;

implementation

uses UnitCadSocios;

{$R *.dfm}

procedure TDataModuleClube.TbMatriculaAfterInsert(DataSet: TDataSet);
begin
  TbMatriculaDTMATRICULA.Value := Date();
end;

end.
