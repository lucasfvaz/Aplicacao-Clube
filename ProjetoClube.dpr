program ProjetoClube;

uses
  Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitCadSocios in 'UnitCadSocios.pas' {frmCadSocios},
  DmClube in 'DmClube.pas' {DataModuleClube: TDataModule},
  UnitCadAtividades in 'UnitCadAtividades.pas' {frmCadAtividades},
  UnitCadMatriculas in 'UnitCadMatriculas.pas' {frmMatricula},
  UnitInformacoes in 'UnitInformacoes.pas' {frmInformacoes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModuleClube, DataModuleClube);
  Application.CreateForm(TfrmCadSocios, frmCadSocios);
  Application.CreateForm(TfrmCadAtividades, frmCadAtividades);
  Application.CreateForm(TfrmMatricula, frmMatricula);
  Application.CreateForm(TfrmInformacoes, frmInformacoes);
  Application.Run;
end.
