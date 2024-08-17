unit UnitCadSocios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DmClube, ExtCtrls, Grids, DBGrids, DB;

type
  TfrmCadSocios = class(TForm)
    Label1: TLabel;
    edtId: TDBEdit;
    Label2: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    edtSobrenome: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    edtEndereco: TDBEdit;
    Label6: TLabel;
    edtComplemento: TDBEdit;
    Label7: TLabel;
    edtBairro: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    edtestado: TDBEdit;
    Label10: TLabel;
    edtCep: TDBEdit;
    Label11: TLabel;
    edtTelefone: TDBEdit;
    navSocios: TDBNavigator;
    grdSocios: TDBGrid;
    Label12: TLabel;
    txtBusca: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    procedure txtBuscaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSocios: TfrmCadSocios;

implementation

uses UnitPrincipal;

{$R *.dfm}

procedure TfrmCadSocios.txtBuscaChange(Sender: TObject);
begin
  Dmclube.DataModuleClube.TbSocios.Locate('dsnome', txtBusca.Text, [loPartialKey]);
end;

procedure TfrmCadSocios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MessageDlg('Deseja realmente fechar o formulário?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    CanClose := False;
end;

procedure TfrmCadSocios.FormCreate(Sender: TObject);
begin
  DataModuleClube.DataBaseClube.Connected := True;
  DataModuleClube.TbAtividades.Active := True;
  DataModuleClube.TbMatricula.Active := True;
  DataModuleClube.TbSocios.Active := True;
end;

end.

