unit UnitCadAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DmClube, DBCtrls, StdCtrls, Grids, DBGrids, Mask, DB;

type
  TfrmCadAtividades = class(TForm)
    Label1: TLabel;
    edtId: TDBEdit;
    Label2: TLabel;
    edtAtividade: TDBEdit;
    Label3: TLabel;
    edtValor: TDBEdit;
    grdAtividades: TDBGrid;
    Label4: TLabel;
    txtBusca: TEdit;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    procedure txtBuscaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAtividades: TfrmCadAtividades;

implementation

{$R *.dfm}

procedure TfrmCadAtividades.txtBuscaChange(Sender: TObject);
begin
  Dmclube.DataModuleClube.TbAtividades.Locate('dsatividade', txtBusca.Text, [loPartialKey]);
end;

procedure TfrmCadAtividades.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MessageDlg('Deseja realmente fechar o formulário?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    CanClose := False; // Impedir o fechamento do formulário se o usuário escolher "No"
end;

end.
