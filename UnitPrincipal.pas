unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DmClube, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls,
  Buttons;

type
  TfrmPrincipal = class(TForm)
    mnPrincipal: TMainMenu;
    mnSistema: TMenuItem;
    mnSair: TMenuItem;
    mnCadastro: TMenuItem;
    mnInfomacoes: TMenuItem;
    mnSocio: TMenuItem;
    mnAtividade: TMenuItem;
    mnMatricula: TMenuItem;
    pnlTelaPrincipal: TPanel;
    btnSocio: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    imgJunsoft: TImage;
    procedure mnSocioClick(Sender: TObject);
    procedure mnAtividadeClick(Sender: TObject);
    procedure mnMatriculaClick(Sender: TObject);
    procedure mnSairClick(Sender: TObject);
    procedure btnSocioClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnInfomacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UnitCadSocios, UnitCadAtividades, UnitCadMatriculas, UnitInformacoes;

{$R *.dfm}

procedure TfrmPrincipal.mnSocioClick(Sender: TObject);
begin
  frmCadSocios.Show;
end;

procedure TfrmPrincipal.mnAtividadeClick(Sender: TObject);
begin
  frmCadAtividades.Show;
end;

procedure TfrmPrincipal.mnMatriculaClick(Sender: TObject);
begin
  frmMatricula.Show;
end;

procedure TfrmPrincipal.mnSairClick(Sender: TObject);
begin
  frmPrincipal.Close;
end;

procedure TfrmPrincipal.btnSocioClick(Sender: TObject);
begin
  frmCadSocios.Show;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  frmCadAtividades.Show;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
  frmMatricula.Show;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MessageDlg('Deseja realmente fechar o sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    CanClose := False;
end;

procedure TfrmPrincipal.mnInfomacoesClick(Sender: TObject);
begin
  frmInformacoes.ShowModal;
end;

end.
