unit UCadGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, DB, IBQuery, StdCtrls, Buttons, UPai,
  ExtCtrls;

type
  TFCadGeral = class(TFPai)
    pnControle: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnFechar: TBitBtn;
    QCadastro: TIBQuery;
    UpdateCadastro: TIBUpdateSQL;
    dsCadastro: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadGeral: TFCadGeral;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFCadGeral.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadGeral.btnNovoClick(Sender: TObject);
begin
  dsCadastro.DataSet.Insert;
end;

procedure TFCadGeral.btnAlterarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Edit;
end;

procedure TFCadGeral.btnGravarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Post;
  UpdateCadastro.DataSet.ApplyUpdates;
  (dsCadastro.DataSet as TIBQuery).Transaction.CommitRetaining;

end;

procedure TFCadGeral.btnCancelarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
end;

procedure TFCadGeral.btnExcluirClick(Sender: TObject);
const
  msg1 = 'Deseja realmente excluir esse registro?';
begin

  if MessageDlg(msg1,mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    dsCadastro.DataSet.Delete;
    (dsCadastro.DataSet as TIBQuery).Transaction.CommitRetaining;
  end;
end;

procedure TFCadGeral.FormCreate(Sender: TObject);
begin
  dsCadastro.DataSet.Open;
end;

procedure TFCadGeral.dsCadastroStateChange(Sender: TObject);
begin
  btnNovo.Enabled     := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btnAlterar.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btnExcluir.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btnCancelar.Enabled := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  btnGravar.Enabled   := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  btnFechar.Enabled   := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);

end;

end.
