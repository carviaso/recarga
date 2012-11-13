unit UCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, Buttons, ComCtrls, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, Grids, DBGrids, Mask, ToolEdit, IBTable,
  IBCustomDataSet, IBQuery, DBCtrls;

type
  TFCadastro = class(TFPai)
    pnControle: TPanel;
    BarraDeStatus: TStatusBar;
    PageControl: TPageControl;
    tabPesquisa: TTabSheet;
    tabCadastro: TTabSheet;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnFechar: TBitBtn;
    dsCadastro: TDataSource;
    dbgCadastro: TDBGrid;
    GroupBox1: TGroupBox;
    edPesquisa: TComboEdit;
    btnFirst: TBitBtn;
    btnPrior: TBitBtn;
    btnNext: TBitBtn;
    btnLast: TBitBtn;
    qaux: TIBQuery;
    cdsCadastro: TIBTable;
    DBNavigator1: TDBNavigator;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgCadastroTitleClick(Column: TColumn);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCadastroDblClick(Sender: TObject);
    procedure cdsCadastroBeforePost(DataSet: TDataSet);
    procedure cdsCadastroAfterPost(DataSet: TDataSet);
    procedure qauxAfterPost(DataSet: TDataSet);
    procedure cdsCadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure edPesquisaChange(Sender: TObject);
    procedure cdsCadastroAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastro: TFCadastro;

implementation

uses UFsuper;

{$R *.dfm}

procedure TFCadastro.btnNovoClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := 1;
  dsCadastro.DataSet.Insert;
  inherited;
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''INSERIR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');
end;

procedure TFCadastro.btnAlterarClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := 1;
  dsCadastro.DataSet.Edit;
  inherited;
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''ALTERAR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');

end;

procedure TFCadastro.btnGravarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Post;
  inherited;
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''GRAVAR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');
end;

procedure TFCadastro.btnCancelarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
  inherited;
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''CANCELAR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');

end;

procedure TFCadastro.btnExcluirClick(Sender: TObject);
begin
  if dsCadastro.DataSet.IsEmpty then
  begin
    alert('Tabela Vazia!');
    exit;
  end;

  if question('Deseja excluir esse registro?') then
    dsCadastro.DataSet.Delete;

  inherited;
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''EXCLUIR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');

end;

procedure TFCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    alert('Existe uma operação ativa, a tela não pode ser fechada!');
    abort;
  end;
  inherited;

end;

procedure TFCadastro.dbgCadastroTitleClick(Column: TColumn);
begin
  inherited;
  //cdsCadastro.IndexFieldNames := Column.FieldName;

end;

procedure TFCadastro.dsCadastroStateChange(Sender: TObject);
var
  stado : string;
begin
  if dsCadastro.DataSet.State = dsInsert then
    stado := 'Inserção'
  else if dsCadastro.DataSet.State = dsEdit then
    stado := 'Edição'
  else if dsCadastro.DataSet.State = dsBrowse then
    stado := 'Navegação'
  else
    stado := 'Inativo';

  BarraDeStatus.Panels[0].Text := stado;
  inherited;

end;

procedure TFCadastro.FormCreate(Sender: TObject);
begin
  if dsCadastro.DataSet <> nil then
    dsCadastro.DataSet.Open;
  inherited;

end;

procedure TFCadastro.btnFecharClick(Sender: TObject);
begin
  self.close;
  inherited;

end;

procedure TFCadastro.btnFirstClick(Sender: TObject);
begin
  dsCadastro.DataSet.First;
  inherited;

end;

procedure TFCadastro.btnLastClick(Sender: TObject);
begin
  dsCadastro.DataSet.Last;
  inherited;

end;

procedure TFCadastro.btnPriorClick(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.Prior;

end;

procedure TFCadastro.btnNextClick(Sender: TObject);
begin
  dsCadastro.DataSet.Next;
  inherited;

end;

procedure TFCadastro.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  btnNovo.Enabled     := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);
  btnAlterar.Enabled  := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);
  btnExcluir.Enabled  := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);
  btnCancelar.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
  btnGravar.Enabled   := dsCadastro.DataSet.State in [dsInsert, dsEdit];
  btnFechar.Enabled   := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);

  btnFirst.Enabled    := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);
  btnPrior.Enabled    := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);
  btnNext.Enabled     := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);
  btnLast.Enabled     := not(dsCadastro.DataSet.State in [dsInsert, dsEdit]);

  BarraDeStatus.Panels[1].Text := 'Registros: ' + IntToStr(cdsCadastro.RecordCount) + '   ';
  inherited;

end;

procedure TFCadastro.FormShow(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  inherited;

end;

procedure TFCadastro.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
    edPesquisa.Button.Click;
end;

procedure TFCadastro.dbgCadastroDblClick(Sender: TObject);
begin
  inherited;
  btnAlterar.Click;
end;

procedure TFCadastro.cdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  (DataSet as TIBTable).Transaction.CommitRetaining;
end;

procedure TFCadastro.cdsCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  (DataSet as TIBTable).Transaction.CommitRetaining;

end;

procedure TFCadastro.qauxAfterPost(DataSet: TDataSet);
begin
  inherited;
  (DataSet as TIBQuery).Transaction.CommitRetaining;

end;

procedure TFCadastro.cdsCadastroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
Var 
ErroMens :String;
begin 
  ErroMens := E.Message;
  if ErroMens = 'Key violation.' then
  begin
    alert('Chave Primária Inválida!');
    action := daAbort;
  end;
  inherited;

end;

procedure TFCadastro.edPesquisaChange(Sender: TObject);
begin
  inherited;
  if edPesquisa.Text = '' then
    cdsCadastro.Filtered := false;

end;

procedure TFCadastro.cdsCadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  (DataSet as TIBTable).Transaction.CommitRetaining;

end;

end.
