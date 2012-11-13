unit UCadRevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls,
  RXDBCtrl, CheckLst;

type
  TFCadRevisao = class(TFCadastro)
    dsCliente: TDataSource;
    cdsCadastroREV_CODIGO: TIntegerField;
    cdsCadastroREV_REVISOR: TIBStringField;
    cdsCadastroREV_DATA: TDateTimeField;
    cdsCadastroCLI_CODIGO: TIntegerField;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    btnItensNovo: TBitBtn;
    btnItensAlterar: TBitBtn;
    btnItensGravar: TBitBtn;
    btnItensCancelar: TBitBtn;
    btnItensExcluir: TBitBtn;
    dbnItens: TDBNavigator;
    tbItensRevisao: TIBTable;
    dsItensRevisao: TDataSource;
    edLocalExtintor: TDBEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    clbSituacoes: TCheckListBox;
    Label14: TLabel;
    dblPesquisaCliente: TDBLookupComboBox;
    Label8: TLabel;
    edPesquisaCodigo: TEdit;
    Label9: TLabel;
    edPesquisaRevisor: TEdit;
    edPesquisaData: TDateEdit;
    Label10: TLabel;
    btnPesquisa: TBitBtn;
    qPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    qExtintorCliente: TIBQuery;
    dsExtintorCliente: TDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    dblCliente: TDBLookupComboBox;
    edData: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    dsItens: TDataSource;
    qItens: TIBQuery;
    edNOrdem: TDBEdit;
    Label5: TLabel;
    Label11: TLabel;
    edCarregado: TDBDateEdit;
    Label12: TLabel;
    edCodExtintor: TDBEdit;
    BitBtn1: TBitBtn;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnItensNovoClick(Sender: TObject);
    procedure btnItensAlterarClick(Sender: TObject);
    procedure btnItensGravarClick(Sender: TObject);
    procedure btnItensCancelarClick(Sender: TObject);
    procedure btnItensExcluirClick(Sender: TObject);
    procedure dsItensRevisaoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsItensRevisaoDataChange(Sender: TObject; Field: TField);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure clbSituacoesClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbgCadastroDblClick(Sender: TObject);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edDataExit(Sender: TObject);
  private
    { Private declarations }
    function pegaExtintor(codExtintor : string):Variant;

    // Funções e procedimentos da situação.
    procedure listaSituacoes;
    procedure gravaSituacoes(rev_codigo, ext_codigo, sit_codigo : integer; marcado : boolean);
    procedure carregaSituacoes(rev_codigo, ext_codigo : integer);
    procedure lista_itens(cod_cliente, cod_revisao : integer);

  public
    { Public declarations }
  end;

var
  FCadRevisao: TFCadRevisao;

implementation

uses UdmGeral, UdmPesquisa, UFsuper, UpesquisaClientes,
  UPesquisaExtintorRevisao;

{$R *.dfm}

procedure TFCadRevisao.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(REV_CODIGO) FROM REVISAO';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  dblCliente.SetFocus;
  dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadRevisao.btnAlterarClick(Sender: TObject);
begin
  inherited;
  dblCliente.SetFocus;
end;

procedure TFCadRevisao.btnItensNovoClick(Sender: TObject);
begin
  inherited;

  dsItensRevisao.DataSet.Insert;
  dsItensRevisao.DataSet.FieldByName('REV_CODIGO').AsInteger := dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger;
  edCodExtintor.SetFocus;
  
end;

procedure TFCadRevisao.btnItensAlterarClick(Sender: TObject);
begin
  inherited;
  dsItensRevisao.DataSet.Edit;
end;

procedure TFCadRevisao.btnItensGravarClick(Sender: TObject);
const
  ctUpdateExtintor =
    'UPDATE ESTINTOR'#10+
    '  SET LOCAL_EXTINTOR = %s,'#10+
    '      CARREGADO = %s,'#10+
    '      ORDEM = %s'#10+
    '  WHERE'#10+
    '    CODIGO = %s';

var
  cliente, revisao : integer;

begin
  inherited;

  cliente := dsCadastro.DataSet.FieldByName('CLI_CODIGO').AsInteger;
  revisao := dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger;


  if edCodExtintor.Text = '' then
  begin

    showMessage('O Extintor deve ser informado!');
    edCodExtintor.SetFocus;
    exit;

  end;

  execDml(Format(ctUpdateExtintor, [QuotedStr(edLocalExtintor.Field.AsString),
                                    QuotedStr(FormatDateTime('mm/dd/yyyy',edCarregado.Field.AsDateTime)),
                                    QuotedStr(edNOrdem.Field.AsString),
                                    edCodExtintor.Field.AsString]));

  dsItensRevisao.DataSet.Post;
  lista_itens(cliente, revisao);

end;

procedure TFCadRevisao.btnItensCancelarClick(Sender: TObject);
begin
  inherited;
  dsItensRevisao.DataSet.Cancel;
end;

procedure TFCadRevisao.btnItensExcluirClick(Sender: TObject);
var
  cliente, revisao : integer;

begin
  inherited;

  cliente := dsCadastro.DataSet.FieldByName('CLI_CODIGO').AsInteger;
  revisao := dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger;

  dsItensRevisao.DataSet.Delete;
  lista_itens(cliente, revisao);
end;

procedure TFCadRevisao.dsItensRevisaoStateChange(Sender: TObject);
begin
  inherited;

  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin

    btnItensNovo.Enabled     :=  not(dsItensRevisao.DataSet.State in [dsEdit, dsInsert]);
    btnItensAlterar.Enabled  :=  not(dsItensRevisao.DataSet.State in [dsEdit, dsInsert]);
    btnItensGravar.Enabled   :=  dsItensRevisao.DataSet.State in [dsEdit, dsInsert];
    btnItensCancelar.Enabled :=  dsItensRevisao.DataSet.State in [dsEdit, dsInsert];
    btnItensExcluir.Enabled  :=  not(dsItensRevisao.DataSet.State in [dsEdit, dsInsert]);
    dbnItens.Enabled         :=  not(dsItensRevisao.DataSet.State in [dsEdit, dsInsert]);
    clbSituacoes.Enabled     :=  not(dsItensRevisao.DataSet.State in [dsEdit, dsInsert]);

  end else begin

    btnItensNovo.Enabled     :=  False;
    btnItensAlterar.Enabled  :=  False;
    btnItensGravar.Enabled   :=  False;
    btnItensCancelar.Enabled :=  False;
    btnItensExcluir.Enabled  :=  False;
    dbnItens.Enabled         :=  False;
    clbSituacoes.Enabled     :=  False;

  end;

end;

procedure TFCadRevisao.FormCreate(Sender: TObject);
begin
  inherited;
  dsItensRevisao.DataSet.open;
end;

function TFCadRevisao.pegaExtintor(codExtintor: string): Variant;
const
  ctPesquisa =
    'SELECT'#10+
    '  ''Cod: ''      || ESTINTOR.CODIGO  || ''    '' ||'#10+
    '  ''Nº Série: '' || NUMERO_SERIE     || ''    '' ||'#10+
    '  ''Tipo: ''     || TIPO.TIPO        || ''    '' ||'#10+
    '  ''Cap: ''      || CAPACIDADE'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    '  INNER JOIN TIPO ON (TIPO.CODIGO = ESTINTOR.TIPO)'#10+
    'WHERE'#10+
    '  (ESTINTOR.CODIGO = %s)';

begin

  inherited;
  Result := select_1(Format(ctPesquisa, [codExtintor]));
end;

procedure TFCadRevisao.dsItensRevisaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dsItensRevisao.DataSet.State = dsBrowse then
    if dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsString <> '' then
      Panel2.Caption := pegaExtintor(dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsString);

  if dsItensRevisao.DataSet.State <> dsInsert then
  begin

    if (dsCadastro.DataSet.FieldByName('REV_CODIGO').AsVariant <> null) and
       (dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsVariant <> null) then
    begin
      carregaSituacoes(dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger,
                       dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsInteger);
    end;

  end else
    listaSituacoes;

end;

procedure TFCadRevisao.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  dsItensRevisaoStateChange(Sender);

end;

procedure TFCadRevisao.carregaSituacoes(rev_codigo, ext_codigo : integer);
const
  ctSelectSituacao =
    'SELECT'#10+
    '  SIT_DESCRICAO'#10+
    'FROM'#10+
    '  SITUACAO_EXTINTOR'#10+
    '  INNER JOIN SITUACAO ON (SITUACAO.SIT_CODIGO = SITUACAO_EXTINTOR.SIT_CODIGO)'#10+
    'WHERE'#10+
    '  (EXT_CODIGO = %s) AND'#10+
    '  (REV_CODIGO = %s)';

var
  id : Integer;
begin

  listaSituacoes;

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctSelectSituacao,[IntToStr(ext_codigo),
                                        IntToStr(rev_codigo)]));
  qaux.Open;

  while not(qaux.Eof) do
  begin

    id := clbSituacoes.Items.IndexOf(qaux.Fields[0].AsString);
    clbSituacoes.Checked[id] := True;
    qaux.Next;

  end;

end;

procedure TFCadRevisao.gravaSituacoes(rev_codigo, ext_codigo, sit_codigo : integer; marcado : boolean);
const
  ctDeleteSituacao =
    'DELETE FROM SITUACAO_EXTINTOR'#10+
    'WHERE'#10+
    '  (SIT_CODIGO = %s) AND'#10+
    '  (EXT_CODIGO = %s) AND'#10+
    '  (REV_CODIGO = %s)';

  ctInsertSituacao =
    'INSERT INTO SITUACAO_EXTINTOR'#10+
    '  (SIT_CODIGO,'#10+
    '   EXT_CODIGO,'#10+
    '   REV_CODIGO)'#10+
    'VALUES(%s, %s, %s)';

  ctSelectSituacao =
    'SELECT'#10+
    '  COUNT(*)'#10+
    'FROM'#10+
    '  SITUACAO_EXTINTOR'#10+
    'WHERE'#10+
    '  (SIT_CODIGO = %s) AND'#10+
    '  (EXT_CODIGO = %s) AND'#10+
    '  (REV_CODIGO = %s)';

begin

  if marcado then
  begin
    if select_1(Format(ctSelectSituacao, [IntToStr(sit_codigo),
                                          IntToStr(ext_codigo),
                                          IntToStr(rev_codigo)])) = 0 then
      execDml(Format(ctInsertSituacao,[IntToStr(sit_codigo),
                                       IntToStr(ext_codigo),
                                       IntToStr(rev_codigo)]))
  end else if select_1(Format(ctSelectSituacao, [IntToStr(sit_codigo),
                                                 IntToStr(ext_codigo),
                                                 IntToStr(rev_codigo)])) > 0 then
    execDml(Format(ctDeleteSituacao,[IntToStr(sit_codigo),
                                     IntToStr(ext_codigo),
                                     IntToStr(rev_codigo)]));

end;

procedure TFCadRevisao.listaSituacoes;
const
  ctConsSituacao =
    'SELECT SIT_DESCRICAO FROM SITUACAO ORDER BY SIT_DESCRICAO';

begin

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(ctConsSituacao);
  qaux.Open;

  clbSituacoes.Items.Clear;

  while not(qaux.Eof)do
  begin

    clbSituacoes.Items.Add(qaux.Fields[0].AsString);
    qaux.Next;

  end;

end;

procedure TFCadRevisao.clbSituacoesClick(Sender: TObject);
Var
  i : integer;
  sit_codigo : integer;
const
  ctSelectSituacao =
    'SELECT SIT_CODIGO FROM SITUACAO WHERE SIT_DESCRICAO = ''%s''';

begin

  inherited;

  if (dsCadastro.DataSet.FieldByName('REV_CODIGO').AsVariant <> null) and
     (dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsVariant <> null) then
  begin

    for i := 0 to clbSituacoes.Items.Count - 1 do
    begin

      //if clbSituacoes.Checked[i] then
      //begin

        sit_codigo := select_1(Format(ctSelectSituacao, [clbSituacoes.Items.Strings[i]]));

        gravaSituacoes(dsCadastro.DataSet.FieldByName('REV_CODIGO').AsVariant,
                       dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsVariant,
                       sit_codigo,
                       clbSituacoes.Checked[i]);
      //end;

    end;

    carregaSituacoes(dsCadastro.DataSet.FieldByName('REV_CODIGO').AsVariant,
                     dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsVariant);

  end;

end;

procedure TFCadRevisao.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  REVISAO.REV_CODIGO,'#10+
    '  REVISAO.REV_REVISOR,'#10+
    '  REVISAO.REV_DATA,'#10+
    '  CLIENTE.RAZAO_SOCIAL'#10+
    'FROM'#10+
    '  REVISAO'#10+
    '  INNER JOIN CLIENTE ON (REVISAO.CLI_CODIGO = CLIENTE.CODIGO)'#10+
    'WHERE'#10+
    '  (REVISAO.REV_CODIGO IS NOT NULL)%s';

var
  Filtro : String;

begin

  Filtro := '';

  if edPesquisaCodigo.Text <> '' then
    Filtro := Filtro + ' AND(REVISAO.REV_CODIGO = ' + edPesquisaCodigo.Text + ')';

  if dblPesquisaCliente.KeyValue <> null then
    Filtro := Filtro + ' AND(REVISAO.CLI_CODIGO = ' + VarToStr(dblPesquisaCliente.KeyValue) + ')';

  if edPesquisaRevisor.Text <> '' then
    Filtro := Filtro + ' AND(REVISAO.REV_REVISOR LIKE '+ QuotedStr('%'+ edPesquisaRevisor.Text +'%') +')';

  if edPesquisaData.Date <> 0 then
    Filtro := Filtro + ' AND(REVISAO.REV_DATA = '+ QuotedStr(FormatDateTime('mm/dd/yyyy', edPesquisaData.Date)) +')';

  qPesquisa.Close;
  qPesquisa.SQL.Clear;
  qPesquisa.SQL.Add(Format(ctPesquisa, [Filtro]));
  qPesquisa.Open;
  
  inherited;

end;

procedure TFCadRevisao.dbgCadastroDblClick(Sender: TObject);
begin
  inherited;

  if dsCadastro.DataSet.Locate('REV_CODIGO',dsPesquisa.DataSet.FieldByName('REV_CODIGO').AsInteger,[]) then
    btnAlterar.Click;

end;

procedure TFCadRevisao.dblPesquisaClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).listSource.dataset.close;
      TDBLookupComboBox(sender).listSource.dataset.open;
    end else
      TDBLookupComboBox(sender).listSource.dataset.Open;

  end else if key = vk_f8 then
  begin
    TDBLookupComboBox(sender).ListSource.DataSet.close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
    Application.CreateForm(TFpesquisaClientes, FpesquisaClientes);
    FpesquisaClientes.showModal;
    TDBLookupComboBox(sender).KeyValue := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;
end;

procedure TFCadRevisao.dblClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).listSource.dataset.close;
      TDBLookupComboBox(sender).listSource.dataset.open;
    end else
      TDBLookupComboBox(sender).listSource.dataset.Open;

  end else if key = vk_f8 then
  begin
    TDBLookupComboBox(sender).ListSource.DataSet.close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
    Application.CreateForm(TFpesquisaClientes, FpesquisaClientes);
    FpesquisaClientes.showModal;
    TDBLookupComboBox(sender).Field.AsVariant := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;
end;

procedure TFCadRevisao.TabSheet1Show(Sender: TObject);
begin
  inherited;
  if dsCadastro.DataSet.State = dsInsert then
  begin
    dsCadastro.DataSet.Post;
    dsCadastro.DataSet.Edit;
  end;
end;

procedure TFCadRevisao.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_f8 then
  begin

    Application.CreateForm(TFPesquisaExtintorRevisao, FPesquisaExtintorRevisao);
    FPesquisaExtintorRevisao.Pesquisaextintor(varToStr(dblCliente.KeyValue));
    FPesquisaExtintorRevisao.ShowModal;
    FPesquisaExtintorRevisao.Free;

  end;
end;

procedure TFCadRevisao.dsCadastroDataChange(Sender: TObject;
  Field: TField);
const
  ctPesquisa =
    'SELECT'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  FABRICANTE.DESCRICAO AS FABRICANTE,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  TIPO.DESCRICAO AS TIPO,'#10+
    '  ESTINTOR.LOCAL'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    '  INNER JOIN TIPO ON (TIPO.CODIGO = ESTINTOR.TIPO)'#10+
    '  INNER JOIN FABRICANTE ON (FABRICANTE.CODIGO = ESTINTOR.FABRICANTE)'#10+
    'WHERE'#10+
    '  (ESTINTOR.CLIENTE = %s)';

var
  cliente, revisao : integer;

begin
  inherited;

  cliente := dsCadastro.DataSet.FieldByName('CLI_CODIGO').AsInteger;
  revisao := dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger;

  lista_itens(cliente, revisao);
  {
  qExtintorCliente.Close;
  qExtintorCliente.SQL.Clear;
  qExtintorCliente.SQL.Add(Format(ctPesquisa, [cliente]));
  qExtintorCliente.Open;
 }
end;

procedure TFCadRevisao.lista_itens(cod_cliente, cod_revisao: integer);
const
  ctPesquisa =
    'SELECT'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ITENS_REVISAO.ORDEM,'#10+
    '  ITENS_REVISAO.LOCAL_EXTINTOR,'#10+
    '  TIPO.TIPO  || ''-'' || ESTINTOR.CAPACIDADE AS TIPOCAP,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  FABRICANTE.DESCRICAO AS FABRICANTE,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  CAST(ESTINTOR.ULTIMA_VISITA AS INTEGER) + 5 AS PROXIMO_TESTE,'#10+
    '  ESTINTOR.CARREGADO'#10+
    'FROM'#10+
    '  ITENS_REVISAO'#10+
    '  INNER JOIN ESTINTOR   ON (ESTINTOR.CODIGO = ITENS_REVISAO.EXT_CODIGO)'#10+
    '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE = FABRICANTE.CODIGO)'#10+
    '  INNER JOIN TIPO       ON (ESTINTOR.TIPO = TIPO.CODIGO)'#10+
    'WHERE'#10+
    '  (ITENS_REVISAO.REV_CODIGO = %s) AND'#10+
    '  (ESTINTOR.CLIENTE = %s)'#10+
    'ORDER BY'#10+
    '  ITENS_REVISAO.ORDEM';

begin

  qItens.Close;
  qItens.SQL.Clear;
  qItens.SQL.Add(Format(ctPesquisa, [IntToStr(cod_revisao), IntToStr(cod_cliente)]));
  qItens.Open;

end;

procedure TFCadRevisao.DBGrid1DblClick(Sender: TObject);
begin
  inherited;

  if dsItensRevisao.DataSet.Locate('EXT_CODIGO',dsItens.DataSet.FieldByName('CODIGO').AsInteger,[]) then
  begin
    PageControl.ActivePageIndex := 2;
    btnItensAlterar.Click;
  end;

end;

procedure TFCadRevisao.BitBtn1Click(Sender: TObject);
begin
  inherited;

    dsCadastro.DataSet.post;
    dsCadastro.DataSet.Edit;
    Application.CreateForm(TFPesquisaExtintorRevisao, FPesquisaExtintorRevisao);
    FPesquisaExtintorRevisao.Pesquisaextintor(varToStr(dblCliente.KeyValue));
    FPesquisaExtintorRevisao.ShowModal;
    FPesquisaExtintorRevisao.Free;

end;

procedure TFCadRevisao.edDataExit(Sender: TObject);
begin
  inherited;
  if dscadastro.dataset.state = dsInsert then
    if eddata.Date = 0 then
      edData.Field.AsDateTime := now;
end;

end.
