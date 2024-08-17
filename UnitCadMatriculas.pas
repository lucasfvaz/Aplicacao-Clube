unit UnitCadMatriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrmMatricula = class(TForm)
    Label1: TLabel;
    edtIdSocio: TDBEdit;
    Label2: TLabel;
    edtIdAtividade: TDBEdit;
    Label3: TLabel;
    edtData: TDBEdit;
    cbAluno: TDBLookupComboBox;
    Label4: TLabel;
    cbAtividades: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    edtValor: TDBEdit;
    DBNavigator1: TDBNavigator;
    grdMatriculas: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatricula: TfrmMatricula;

implementation

uses DmClube;

{$R *.dfm}

procedure TfrmMatricula.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MessageDlg('Deseja realmente fechar o formulário?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    CanClose := False;
end;

end.
