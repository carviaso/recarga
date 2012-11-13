  unit UCadRgs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, SqlExpr, DB, DBClient, Provider, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls,
  RXDBCtrl, Menus, IBTable, IBCustomDataSet, IBQuery, DBXpress;

type
  TFCadRgs = class(TFCadastro)
    Label3: TLabel;
    Label1: TLabel;
    edDataEntrada: TDBDateEdit;
    Label2: TLabel;
    Label4: TLabel;
    dbgRGS: TDBGrid;
    dsExtintorRGS: TDataSource;
    Label13: TLabel;
    dsCliente: TDataSource;
    PopupMenu: TPopupMenu;
    btnAdd: TBitBtn;
    ExcluirExtintorSelecionado1: TMenuItem;
    QExtintor: TIBQuery;
    rbRgs: TRadioButton;
    dbgExtintorCliente: TDBGrid;
    qExtintorCliente: TIBQuery;
    dsExtintorCliente: TDataSource;
    DBText1: TDBText;
    edPesquisaRgs: TEdit;
    Label9: TLabel;
    edPesquisaEntradaIni: TDateEdit;
    edPesquisaEntradaFim: TDateEdit;
    edPesquisaSaidaIni: TDateEdit;
    edPesquisaSaidaFim: TDateEdit;
    dblPesquisaCliente: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btnPesquisa: TBitBtn;
    btnImpRGS: TBitBtn;
    cdsRGS1: TClientDataSet;
    dsExtintorRGS2: TDataSource;
    Label17: TLabel;
    Label18: TLabel;
    edDataSaida: TDBDateEdit;
    QPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    gbCliente: TGroupBox;
    dblCliente: TDBLookupComboBox;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label8: TLabel;
    EditarExtintor1: TMenuItem;
    estarExtintor1: TMenuItem;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    edDataPrevSaida: TDBDateEdit;
    edNcaixa: TDBEdit;
    btnBaixarRGS: TBitBtn;
    AdicionarPeas1: TMenuItem;
    Label12: TLabel;
    Label19: TLabel;
    edCodRep: TDBEdit;
    Label20: TLabel;
    edNserieExtintor: TEdit;
    Label21: TLabel;
    edseloExtintor: TEdit;
    Label22: TLabel;
    edCompetencia: TDBEdit;
    DataSetProvider1: TDataSetProvider;
    cdsItensRecarga_: TClientDataSet;
    cdsItensRecarga: TIBTable;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    procedure edRgsKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure AdicionarExtintores1Click(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btnAddClick(Sender: TObject);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExcluirExtintorSelecionado1Click(Sender: TObject);
    procedure cdsCadastroAfterOpen(DataSet: TDataSet);
    procedure cdsCadastroAfterClose(DataSet: TDataSet);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edDataEntradaExit(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure dbgExtintorClienteDblClick(Sender: TObject);
    procedure dbgRGSKeyDowvk_n(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qExtintorClienteBeforeOpen(DataSet: TDataSet);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnImpRGSClick(Sender: TObject);
    procedure dbgCadastroDblClick(Sender: TObject);
    procedure dbgExtintorClienteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgRGSDblClick(Sender: TObject);
    procedure EditarExtintor1Click(Sender: TObject);
    procedure estarExtintor1Click(Sender: TObject);
    procedure dbgRGSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edDataPrevSaidaExit(Sender: TObject);
    procedure dblClienteExit(Sender: TObject);
    procedure edNCaixaExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edDataPrevSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCadastroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure btnBaixarRGSClick(Sender: TObject);
    procedure AdicionarPeas1Click(Sender: TObject);
    procedure dsExtintorRGS2DataChange(Sender: TObject; Field: TField);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbgExtintorClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgRGSColExit(Sender: TObject);
    procedure edCompetenciaKeyPress(Sender: TObject; var Key: Char);
    procedure edCompetenciaExit(Sender: TObject);
  private
    procedure InseriExtintor(codExtintor, codRgs:integer);
    procedure RemoveExtintor(codExtintor, codRgs:integer);
    procedure ListaExtintores(codRgs:string);
    procedure montaRGS1;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadRgs: TFCadRgs;
  codRgs : String;
  novo   : Boolean = false;
  nCaixa, dataPrevSaida, dataSaida, codCliente : variant;
implementation

uses UdmGeral, UFsuper, UdmPesquisa, UPesquisaExtintor, URGeralServico,
  UCadEstintor, UTestes, UTeste, UTesteBaixaPress, UpesquisaClientes,
  URGSExtintorPecas, UpesquisaRGS, UDMRgs;

{$R *.dfm}

procedure TFCadRgs.edRgsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TFCadRgs.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM RECARGA';
  ctNRGS   = 'SELECT NRGS FROM EMPRESA';
  ctDelete = 'DELETE FROM RGS_EXTINTOR WHERE CODIGO_RGS = %s';
//var
//  n : integer;
//  id : Pointer;
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  qExtintorCliente.Close;
  inherited;

  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  codRgs := dsCadastro.DataSet.FieldByName('CODIGO').asString;

  edCompetencia.Field.AsString := FormatDateTime('mm/yyyy',Now);

  // garantindo que não ha estintores relacionados com a nova rgs
 if (dsCadastro.DataSet.State = dsInsert) and
     (dsCadastro.DataSet.FieldByName('CODIGO').AsVariant <> null) then
  begin
    execDml(Format(ctDelete,[dsCadastro.DataSet.FieldByName('CODIGO').AsString]));
  end;


  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctNRGS);
  qaux.Open;

  dsCadastro.DataSet.FieldByName('RGS').AsString := FormatDateTime('yy-',now) +
  zeroAEsquerda(4, qaux.FieldByName('NRGS').AsString);

  edDataEntrada.Field.AsDateTime := now;
  edDataEntrada.SetFocus;

  // Preservando dados de algumas variaveis.

 { id := dsCadastro.DataSet.GetBookmark;
  dsCadastro.DataSet.Post;
  dsCadastro.DataSet.GotoBookmark(id);
  dsCadastro.DataSet.Edit;
  }novo := true;

end;

procedure TFCadRgs.btnAlterarClick(Sender: TObject);
const
  msg1 = 'RGS ja foi emitida, só pode ser alterada por um administrador!';
var
  senha : string;
begin                                                     // B = RGS Baixada

  if dsCadastro.DataSet.FieldByName('SITUACAO').asString = 'B' then
  begin

    if MessageDlg(msg1,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin

      senha := prompt('Permissão para auterar RGS', 'Senha RGS', '', '*');

      if senha = '' then
      begin
        alert('Permissão negada');
        abort;
      end;

      qaux.Close;
      qaux.SQL.Clear;
      qaux.SQL.Add('select count(*) from empresa where senha_master = ' + senha);
      qaux.Open;

      if qaux.Fields[0].AsInteger <> 1 then
      begin
        alert('Permissão negada');
        abort;
      end;
    end else
      abort;                                                        // C = RGS Cancelada
  end else if dsCadastro.DataSet.FieldByName('SITUACAO').asString = 'C' then begin
    alert('RGS Cancelada');
    abort;
  end;

  inherited;

  codRgs := dsCadastro.DataSet.FieldByName('CODIGO').asString;
  novo := false;
  //dblCliente.SetFocus;

end;

procedure TFCadRgs.InseriExtintor(codExtintor, codRgs: integer);
begin
end;

procedure TFCadRgs.RemoveExtintor(codExtintor, codRgs: integer);
const
  ctInsert = 'DELETE FROM RGS_EXTINTOR WHERE(CODIGO_RGS = %s) AND(CODIGO_EXTINTOR = %s)';
begin
  execDml(Format(ctInsert,[intToStr(codRgs),intToStr(codExtintor)]));
end;

procedure TFCadRgs.ListaExtintores(codRgs:string);
const
  ctSql =
    'SELECT'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.ANO_FABRICACAO,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.NIVEL_MANUTENCAO,'#10+
    '  ESTINTOR.PINTURA,'#10+
    '  ESTINTOR.SELO,'#10+
    '  ESTINTOR.BATELADA,'#10+
    '  ESTINTOR.OBS,'#10+
    '  ESTINTOR.FECHAMENTO,'#10+
    '  FABRICANTE.DESCRICAO AS FABRICANTE,'#10+
    '  TIPO.TIPO,'#10+
    '  TIPO.NBR,'#10+
    '  TIPO.DESCRICAO AS DESC_TIPO,'#10+
    '  TIPO.CB,'#10+
    '  TIPO.AR'#10+
    'FROM'#10+
    '  RGS_EXTINTOR'#10+
    '  INNER JOIN ITENS_RECARGA ESTINTOR ON (RGS_EXTINTOR.CODIGO_EXTINTOR = ESTINTOR.CODIGO)'#10+
    '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE=FABRICANTE.CODIGO)'#10+
    '  INNER JOIN TIPO ON (ESTINTOR.TIPO=TIPO.CODIGO)'#10+
    'WHERE'#10+
    '  RGS_EXTINTOR.CODIGO_RGS = %s'#10+
    'ORDER BY'#10+
    '  ESTINTOR.CODIGO';
begin

  QExtintor.close;
  //QExtintor.Sql.Clear;
  //QExtintor.Sql.Add(Format(ctSql,[codRgs]));
  QExtintor.Open;

  Label8.Caption := 'Extintores de : ' + dsCliente.DataSet.FieldByName('RAZAO_SOCIAL').AsString;

end;

procedure TFCadRgs.AdicionarExtintores1Click(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.Post;
  (dsCadastro.DataSet as TIbTable).Transaction.CommitRetaining;
  dsCadastro.DataSet.Edit;
  Application.CreateForm(TFPesquisaExtintor, FPesquisaExtintor);
  UPesquisaExtintor.codRgs := dsCadastro.DataSet.FieldByName('CODIGO').asString;
  FPesquisaExtintor.showModal;
  FPesquisaExtintor.Free;
  ListaExtintores(dsCadastro.DataSet.FieldByName('CODIGO').asString);

end;

procedure TFCadRgs.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  // se o codigo da RGS for diferente de nulo atualizo a lista de extintores
  if dsCadastro.DataSet.FieldByName('CODIGO').AsVariant <> null then
    ListaExtintores(dsCadastro.DataSet.FieldByName('CODIGO').asString);


  // O popupMenu só será exibido em modo de inserção ou Edição
  if dsCadastro.DataSet.State in [dsEdit, dsInsert] then
    dbgRGS.PopupMenu := PopupMenu
  else
    dbgRGS.PopupMenu := nil;

    
  cdsItensRecarga.Filter   := 'RGS = ' + QuotedStr(dsCadastro.DataSet.FieldByName('RGS').AsString);
  cdsItensRecarga.Filtered := True;
  cdsItensRecarga.Active   := True;

  btnBaixarRGS.Enabled     := dsCadastro.DataSet.FieldByName('SITUACAO').AsString <> 'B';

end;

procedure TFCadRgs.btnAddClick(Sender: TObject);
begin
  inherited;
  PopupMenu.Items[0].Click;
end;

procedure TFCadRgs.dblClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).listSource.dataset.close;
      TDBLookupComboBox(sender).listSource.dataset.Open;
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

procedure TFCadRgs.ExcluirExtintorSelecionado1Click(Sender: TObject);
var
  extintor : integer;
  rgs      : string;

begin

  if dsExtintorRGS2.DataSet.IsEmpty then
    exit;

  extintor := dsExtintorRGS2.DataSet.FieldByName('CODIGO').AsInteger;
  rgs      := dsCadastro.DataSet.FieldByName('RGS').AsString;

  if cdsItensRecarga.Locate('RGS;CODIGO',varArrayOf([rgs, extintor]),[]) then
    cdsItensRecarga.Delete;

  ListaExtintores(dsCadastro.DataSet.FieldByName('CODIGO').asString);

end;

procedure TFCadRgs.cdsCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  QExtintor.Database    := DM.IBDatabase1;
  QExtintor.Transaction := DM.IBTransaction1;
  QExtintor.Open;
end;

procedure TFCadRgs.cdsCadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  QExtintor.Database    := DM.IBDatabase1;
  QExtintor.Transaction := DM.IBTransaction1;
  QExtintor.cLOSE;
end;

procedure TFCadRgs.dsCadastroStateChange(Sender: TObject);
begin
  btnAdd.Enabled := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  if not(dsCadastro.DataSet.State in [dsEdit, dsInsert]) then
    qExtintorCliente.Close;
  inherited;

end;

procedure TFCadRgs.FormCreate(Sender: TObject);
begin

  dsCliente.DataSet.Close;
  dsCliente.DataSet.Open;

  qExtintorCliente.Database    := DM.IBDatabase1;
  qExtintorCliente.Transaction := DM.IBTransaction1;
  dsExtintorCliente.DataSet.Open;
  inherited;

end;

procedure TFCadRgs.btnGravarClick(Sender: TObject);
const
  ctInc    = 'UPDATE EMPRESA SET NRGS = ''%s''';
begin
  (* Validação comentada pq segundo a funcionária Elizangela nem sempre quando se abre uma RGS se sabe
     que extintores seram adicionados
  if QExtintor.IsEmpty then
  begin
    alert('Não foram adicionados estintores para esta RGS!');
    exit;
  end;
  *)
  if edCompetencia.Text = '' then
  begin

    Alert('A competencia deve ser informada!');
    edCompetencia.SetFocus;
    Exit;

  end;

  if length(Trim(edCompetencia.Text)) <> 7 then
  begin

    Alert('O formato da competencia esta incorreto!'#10+
          'O formato correto é ex.: MM/AAAA');
    edCompetencia.SetFocus;
    Exit;

  end;

  if copy(edCompetencia.Text, 3,1) <> '/'  then
  begin

    Alert('O formato da competencia esta incorreto!'#10+
          'O formato correto é ex.: MM/AAAA');
    edCompetencia.SetFocus;
    Exit;

  end;

  if edDataEntrada.Date = 0 then
  begin
    alert('A data de entrada deve ser informada!');
    edDataEntrada.SetFocus;
    Exit;
  end;

  if novo then
  begin
    execDml(Format(ctInc,[IntToStr(qaux.FieldByName('NRGS').AsInteger + 1)]));
    qaux.Close;
  end;

  dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'N';

  inherited;
  novo := false;
end;

procedure TFCadRgs.edDataEntradaExit(Sender: TObject);
begin
  inherited;
  if edDataEntrada.Field.AsDateTime = 0 then
    edDataEntrada.Field.AsDateTime := date;
end;

procedure TFCadRgs.edPesquisaButtonClick(Sender: TObject);
begin
  if rbRgs.Checked then
    cdsCadastro.Filter := 'RGS LIKE ''%' + edPesquisa.Text + '%''';
  cdsCadastro.Filtered := true;
  inherited;

end;

procedure TFCadRgs.dsClienteDataChange(Sender: TObject; Field: TField);
const
  ctExtintorCliente =
    'SELECT'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  FABRICANTE.DESCRICAO,'#10+
    '  ESTINTOR.ANO_FABRICACAO,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.NIVEL_MANUTENCAO,'#10+
    '  ESTINTOR.PINTURA,'#10+
    '  ESTINTOR.SELO,'#10+
    '  TIPO.TIPO'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE=FABRICANTE.CODIGO)'#10+
    '  INNER JOIN TIPO ON (ESTINTOR.TIPO=TIPO.CODIGO)'#10+
    'WHERE'#10+
    '  (ESTINTOR.CLIENTE = %s)'#10+
    'ORDER BY'#10+
    '  ESTINTOR.CODIGO';

begin

  if dsCliente.DataSet.FieldByName('CODIGO').AsVariant <> null then
  begin
    qExtintorCliente.Close;
    qExtintorCliente.SQL.Clear;
    qExtintorCliente.SQL.Add(Format(ctExtintorCliente,[dsCliente.DataSet.FieldByName('CODIGO').asstring]));
    qExtintorCliente.Open;

    DBText2.DataSource := dsCliente;
    DBText3.DataSource := dsCliente;
    DBText4.DataSource := dsCliente;
  end else begin
    DBText2.DataSource := nil;
    DBText3.DataSource := nil;
    DBText4.DataSource := nil;
  end;

  inherited;

end;

procedure TFCadRgs.dbgExtintorClienteDblClick(Sender: TObject);
var
  i : integer;
  codExtintor : integer;
Const
  ctInsert =
    'INSERT INTO'#10+
    ' RGS_EXTINTOR'#10+
    '    (RGS_EXTINTOR.CODIGO_EXTINTOR,'#10+
    '     RGS_EXTINTOR.CODIGO_RGS)'#10+
    'VALUES(%s,%s)';

  ctDelete =
    'DELETE FROM RGS_EXTINTOR'#10+
    'WHERE'#10+
    '(CODIGO_EXTINTOR = %s)AND(CODIGO_RGS = %s)';

  ctSugereNilvel =
    'UPDATE ESTINTOR SET NIVEL_MANUTENCAO = %s WHERE CODIGO = %s';

  ctDataTeste =
    'UPDATE ESTINTOR SET DATA_TESTE = NULL WHERE CODIGO = %s';

begin
  inherited;

  if codRgs = '' then
    exit;

  codExtintor := dbgExtintorCliente.DataSource.DataSet.FieldByName('CODIGO').AsInteger;

  if cdsItensRecarga.Locate('CODIGO',codExtintor, []) then
    cdsItensRecarga.Delete
  else begin

    qaux.Close;
    qaux.SQL.Clear;
    qaux.SQL.add('SELECT ESTINTOR.* FROM ESTINTOR WHERE CODIGO = ' + IntToStr(codExtintor));
    qaux.Open;

    cdsItensRecarga.Insert;
    cdsItensRecarga.FieldByName('RGS').AsVariant := dsCadastro.DataSet.FieldByName('RGS').AsString;

    for i := 0 to qaux.FieldCount - 1 do
      cdsItensRecarga.FieldByName(qaux.Fields[i].FieldName).AsVariant :=
      qaux.FieldByName(qaux.Fields[i].FieldName).AsVariant;

      if (StrToInt(dbgExtintorCliente.DataSource.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5) <=
          StrToInt(FormatDateTime('yyyy',edDataEntrada.Date)) then
        cdsItensRecarga.FieldByName('NIVEL_MANUTENCAO').AsInteger := 3
      else if (dbgExtintorCliente.DataSource.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger <> 3) then
        cdsItensRecarga.FieldByName('NIVEL_MANUTENCAO').AsInteger := 2;

    cdsItensRecarga.Post;
    cdsItensRecarga.Transaction.CommitRetaining;

    qaux.Close;

  end;

  //cdsItensRecarga.ApplyUpdates(-1);
  cdsItensRecarga.Transaction.CommitRetaining;
  ListaExtintores(codRgs);
  cdsItensRecarga.Refresh;

{
  if codRgs <> '' then
  begin

    execDml(Format(ctDataTeste,[dsExtintorCliente.DataSet.FieldByName('CODIGO').AsString]));

    if dsExtintorRGS2.DataSet.Locate('CODIGO',dsExtintorCliente.DataSet.FieldByName('CODIGO').AsVariant,[]) then
    begin
      //execDml(Format(ctDelete,[dsExtintorCliente.DataSet.FieldByName('CODIGO').AsString,
      //                         codRgs]));
      dsExtintorRGS2.DataSet.Delete
    end else begin

      dsExtintorRGS2.DataSet.Insert;

      for i := 0 to dsExtintorCliente.DataSet.FieldCount - 1 do
        dsExtintorRGS2.DataSet.Fields[i].AsVariant := dsExtintorCliente.DataSet.Fields[i].AsVariant;

      if (StrToInt(dbgExtintorCliente.DataSource.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5) <=
          StrToInt(FormatDateTime('yyyy',edDataEntrada.Date)) then
        dsExtintorRGS2.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger := 3
      else if (dbgExtintorCliente.DataSource.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger <> 3) then
        dsExtintorRGS2.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger := 2;

      dsExtintorRGS2.DataSet.Post;

      //execDml(Format(ctInsert,[dsExtintorCliente.DataSet.FieldByName('CODIGO').AsString,
      //                         codRgs]));
    end;
    //ListaExtintores(codRgs);
   // ListaExtintores(cdsCadastro.fieldByName('CODIGO').AsString);
  end else
    alert('Código RGS Vazio, procure o revendedor!');
                                              }
  dbgExtintorCliente.DataSource.DataSet.Next;
  dbgExtintorCliente.DataSource.DataSet.Prior;
end;

procedure TFCadRgs.dbgRGSKeyDowvk_n(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  codigo : string;

begin
  inherited;

  if key = vk_delete then
  begin
    ExcluirExtintorSelecionado1Click(sender);
    dbgExtintorCliente.DataSource.DataSet.Next;
    dbgExtintorCliente.DataSource.DataSet.Prior;
  end else if key = vk_f7 then begin
    dbgRGS.DataSource.DataSet.Open;
  end else if key = vk_f5 then
  begin
    codigo := prompt('Localizar Extintor', 'Codigo', '', #0);

    if codigo <> '' then
      if not(TDBGrid(sender).DataSource.DataSet.Locate('CODIGO',codigo,[]))  then
        showMessage('Extintor não encontrado!');
  end;

end;

procedure TFCadRgs.qExtintorClienteBeforeOpen(DataSet: TDataSet);
begin
  qExtintorCliente.Database    := DM.IBDatabase1;
  qExtintorCliente.Transaction := DM.IBTransaction1;
  inherited;

end;

procedure TFCadRgs.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT DISTINCT'#10+
    '  RECARGA.RGS,'#10+
    '  RECARGA.ENTRADA,'#10+
    '  RECARGA.PREV_SAIDA,'#10+
    '  RECARGA.CLIENTE,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  RECARGA.SAIDA'#10+
    'FROM'#10+
    '  RECARGA'#10+
    '  LEFT JOIN ITENS_RECARGA ON (RECARGA.RGS     = ITENS_RECARGA.RGS)'#10+
    '  LEFT JOIN CLIENTE       ON (RECARGA.CLIENTE = CLIENTE.CODIGO)'#10+
    '  %s'#10+
    'ORDER BY'#10+
    '  RECARGA.RGS DESC';
var
  filtro, op :String;

begin
  filtro := '';
  op     := '';

  if edNserieExtintor.Text <> '' then
  begin
    filtro := '(ITENS_RECARGA.NUMERO_SERIE = '''+ edNserieExtintor.Text +''')';
    op := ' AND ';
  end;

  if edseloExtintor.Text <> '' then
  begin
    filtro := '(ITENS_RECARGA.SELO = '''+ edseloExtintor.Text +''')';
    op := ' AND ';
  end;

  if edPesquisaRgs.Text <> '' then
  begin
    filtro := '(RECARGA.RGS LIKE ''%'+ edPesquisaRgs.Text +'%'')';
    op := ' AND ';
  end;

  if dblPesquisaCliente.KeyValue <> null then
  begin
    filtro := filtro + op + '(RECARGA.CLIENTE = ' + VarToStr(dblPesquisaCliente.KeyValue) + ')';
    op := ' AND ';
  end;

  if edPesquisaEntradaIni.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.ENTRADA >= ''' + FormatDateTime('mm/dd/yyyy 00:00:00',edPesquisaEntradaIni.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaEntradaFim.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.ENTRADA <= ''' + FormatDateTime('mm/dd/yyyy 23:59:59',edPesquisaEntradaFim.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaSaidaIni.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.PREV_SAIDA >= ''' + FormatDateTime('mm/dd/yyyy 00:00:00',edPesquisaSaidaIni.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaSaidaFim.Date <> 0 then
    filtro := filtro + op + '(RECARGA.PREV_SAIDA <= ''' + FormatDateTime('mm/dd/yyyy 23:59:59',edPesquisaSaidaFim.Date) + ''')';

  if filtro <> '' then
    filtro := 'WHERE ' + filtro;

  try
    QPesquisa.Close;
    QPesquisa.sql.Clear;
    QPesquisa.sql.Add(Format(ctPesquisa,[filtro]));
    QPesquisa.Open
  except
    btnPesquisa.Click;
  end;
  inherited;

end;

procedure TFCadRgs.btnImpRGSClick(Sender: TObject);
begin

  if dsCadastro.DataSet.FieldByName('RGS').AsString <> '' then
  begin
    Application.CreateForm(TFpesquisaRGS, FpesquisaRGS);
    FpesquisaRGS.edPesquisaRgs.Text := dsCadastro.DataSet.FieldByName('RGS').AsString;
    FpesquisaRGS.btnPesquisa.Click;
    FpesquisaRGS.Showmodal;
    FpesquisaRGS.Free;
  end;

  inherited;

end;

procedure TFCadRgs.montaRGS1;
begin
  if cdsRGS1.Active then
  begin
    cdsRGS1.Open;
    cdsRGS1.EmptyDataSet;
    cdsRGS1.Close;
  end;

  cdsRGS1.FieldDefs.Clear;

  with cdsRGS1.FieldDefs do
  begin
    Add('CODIGO'          ,ftInteger , 0);
    Add('CAPACIDADE'      ,ftInteger , 0);
    Add('NBR'             ,ftInteger , 0);
    Add('COD_FABRICANTE'  ,ftInteger , 0);
    Add('ANO_FABRICACAO'  ,ftString  , 4);
    Add('ULTIMA_VISITA'   ,ftString  , 4);
    Add('NUMERO_SERIE'    ,ftString  ,10);
    Add('NIVEL_MANUTENCAO',ftInteger , 0);
    Add('PINTURA'         ,ftString  , 1);
    Add('SELO'            ,ftString  ,10);
    Add('BATELADA'        ,ftInteger , 0);
    Add('OBS'             ,ftString  ,20);
    Add('FECHAMENTO'      ,ftString  ,10);
    Add('TIPO'            ,ftString  , 4);
    Add('PESO_VAZIO'      ,ftFloat   , 0);
    Add('PESO_CHEIO'      ,ftFloat   , 0);
    Add('TARA'            ,ftFloat   , 0);
    Add('ET'              ,ftFloat   , 0);
    Add('EP'              ,ftFloat   , 0);
    Add('CLIENTE'         ,ftString  ,20);
    Add('NUMERO_PROJETO'  ,ftString , 20);
    Add('NUMERO_LACRE'    ,ftInteger , 0);
    Add('PRESSAO_TESTE'   ,ftFloat   , 0);
    Add('PRESSAO_TRABALHO',ftFloat   , 0);
    Add('MOTIVO'          ,ftString  ,20);
    Add('ET_DIV_EP'       ,ftFloat   , 0);
    Add('ET_SUB_EP'       ,ftFloat   , 0);
    Add('RS'              ,ftString  , 2);
    Add('RS_PERDA'        ,ftFloat   , 0);
    Add('RS_EP_ET'        ,ftFloat   , 0);
    Add('FABRICANTE'      ,ftString , 20);
    Add('TIPO_DESC'       ,ftString  , 3);
    Add('CB'              ,ftString  , 4);
    Add('AR'              ,ftString  , 4);
  end;

  cdsRGS1.CreateDataSet;
  cdsRGS1.IndexFieldNames := 'CODIGO';
  cdsRGS1.Open;

end;

procedure TFCadRgs.dbgCadastroDblClick(Sender: TObject);
begin
  //inherited;
  if dsCadastro.DataSet.Locate('RGS',QPesquisa.FieldByName('RGS').AsVariant,[])then
    btnAlterar.Click;

end;

procedure TFCadRgs.dbgExtintorClienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(dsExtintorRGS2.DataSet.IsEmpty) and not(dsExtintorCliente.DataSet.IsEmpty) then
  begin
    if dsExtintorRGS2.DataSet.Locate('CODIGO',dsExtintorCliente.DataSet.FieldByName('CODIGO').AsVariant,[]) then
      dbgExtintorCliente.Canvas.Brush.Color := clSkyBlue
    else
      dbgExtintorCliente.Canvas.Brush.Color := clWhite;

    dbgExtintorCliente.Canvas.Font.Color := clBlack;
    dbgExtintorCliente.DefaultDrawDataCell( Rect, Column.Field, State);
  end;
end;

procedure TFCadRgs.dbgRGSDblClick(Sender: TObject);
const
  updatePintura = 'UPDATE ESTINTOR SET PINTURA = ''%s'' WHERE CODIGO = %s';
  updateNivel   = 'UPDATE ESTINTOR SET NIVEL_MANUTENCAO = ''%s'' WHERE CODIGO = %s';
  upDateSelo    = 'UPDATE ESTINTOR SET SELO = ''%s'' WHERE CODIGO = %s';
var
  id : pointer;
  selo : string;
begin
  inherited;

  if dbgRGS.SelectedIndex = 7 then
  begin

    if dbgRGS.DataSource.DataSet.FieldByName('PINTURA').AsString = 'S' then
      execDml(Format(updatePintura,['N',dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsString]))
    else
      execDml(Format(updatePintura,['S',dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsString]));

  end else if dbgRGS.SelectedIndex = 6 then begin

    if dbgRGS.DataSource.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger = 2 then
      execDml(Format(updateNivel,['1',dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsString]))
    else if dbgRGS.DataSource.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger = 1 then
      execDml(Format(updateNivel,['2',dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsString]));

  end else if dbgRGS.SelectedIndex = 8 then
  begin

    selo := InputBox('nº Série Extintor: ' + dbgRGS.DataSource.DataSet.FieldByName('NUMERO_SERIE').AsString,
                     'nº Selo',
                     dbgRGS.DataSource.DataSet.FieldByName('SELO').AsString);

    if trim( selo ) = '' then
    begin
      Showmessage( 'O número do selo deve ser informado!' );
      exit;
    end;

    if not( testaInteiro( selo ) ) then
    begin
      Showmessage( 'O número do selo só pode conter números!' );
      exit;
    end;

    execDml(Format(updateSelo,[selo,dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsString]));

  end;

  id := dbgRGS.DataSource.DataSet.GetBookmark;
  dbgRGS.DataSource.DataSet.Close;
  dbgRGS.DataSource.DataSet.Open;
  dbgRGS.DataSource.DataSet.GotoBookmark(id);

  dbgExtintorCliente.DataSource.DataSet.Prior;
  dbgExtintorCliente.DataSource.DataSet.Next;

end;

procedure TFCadRgs.EditarExtintor1Click(Sender: TObject);
var
  extintor : integer;
  rgs      : string;
begin

  inherited;

  extintor := dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsInteger;
  rgs      := dsCadastro.DataSet.FieldByName('RGS').AsString;

  // Crio o formulário de Cadastro de Extintor
  Application.CreateForm(TFCadEstintor, FCadEstintor);

  // Se eu encontrar o Extintor desejado exibo a tela p/ a alteração do mesmo
  if FCadEstintor.dsCadastro.DataSet.Locate('CODIGO', extintor,[]) then
  begin

    FCadEstintor.PageControl.ActivePageIndex := 1;
    FCadEstintor.dsCadastro.DataSet.Edit;
    FCadEstintor.ShowModal;

  end else
    alert('Extintor não encontrado!');

  //Fecho o Cadastro de extintores
  FCadEstintor.Free;

  //Atualizo a lista de extintores do cliente.
  dbgExtintorCliente.DataSource.DataSet.Close;
  dbgExtintorCliente.DataSource.DataSet.Open;

  //Atualizo a lista de extintores da RGS.
  dbgRGS.DataSource.DataSet.Close;
  dbgRGS.DataSource.DataSet.Open;

  if dbgrgs.DataSource.DataSet.Locate('CODIGO',extintor,[]) then
  begin

    if cdsItensRecarga.Locate('RGS;CODIGO',varArrayOf([rgs, extintor]),[]) then
      cdsItensRecarga.Delete;

    if dbgExtintorCliente.DataSource.DataSet.Locate('CODIGO',extintor,[]) then
      dbgExtintorClienteDblClick(Sender);

    ListaExtintores(dsCadastro.DataSet.FieldByName('CODIGO').asString);

  end;

end;

procedure TFCadRgs.estarExtintor1Click(Sender: TObject);
var
  id : pointer;
begin
  inherited;

  id := dbgRGS.DataSource.DataSet.GetBookmark;

  if dbgRGS.DataSource.DataSet.FieldByName('ALTA_PRESSAO').AsInteger = 1 then
  begin
    Application.CreateForm(TFTeste, FTeste);
    FTeste.dblPressao.KeyValue := dbgRGS.DataSource.DataSet.FieldByName('PRESSAO_TRABALHO').AsVariant;
    FTeste.edPv.Text   := dbgRGS.DataSource.DataSet.FieldByName('PESO_VAZIO_CO2').AsString;
    FTeste.edPc.Text   := dbgRGS.DataSource.DataSet.FieldByName('PESO_CHEIO_CO2').AsString;

    if FTeste.edPv.Text = '' then
      FTeste.edPv.Text   := '0';

    if FTeste.edPc.Text = '' then
      FTeste.edPc.Text   := '0';

    FTeste.edEt.Text   := '0';
    FTeste.edEp.Text   := '0';
    FTeste.edTara.Text := '0';
    UTeste.cp := dbgRGS.DataSource.DataSet.FieldByName('CAPACIDADE').AsFloat;
    UTeste.codExtintor := dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsInteger;
    UTeste.rgs         := dsCadastro.DataSet.FieldByName('RGS').AsString;
    FTeste.ShowModal;
    FTeste.Free;
    dbgExtintorCliente.DataSource.DataSet.Close;
    dbgExtintorCliente.DataSource.DataSet.Open;

  end else begin
    Application.CreateForm(TFTesteBaixaPress, FTesteBaixaPress);
    UTesteBaixaPress.codExtintor := dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsInteger;
    UTesteBaixaPress.rgs         := dsCadastro.DataSet.FieldByName('RGS').AsString;
    FTesteBaixaPress.ShowModal;
    FTesteBaixaPress.Free;
    dbgExtintorCliente.DataSource.DataSet.Close;
    dbgExtintorCliente.DataSource.DataSet.Open;
  end;

  dbgRGS.SelectedIndex := 0;
  dbgRGSDblClick(sender);
  dbgRGS.DataSource.DataSet.GotoBookmark(id);

end;

procedure TFCadRgs.dbgRGSDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if dbgRGS.DataSource.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger = 3 then
    if dbgRGS.DataSource.DataSet.FieldByName('DATA_TESTE').AsVariant = null then
      dbgRGS.Canvas.Brush.Color := clMoneyGreen
    else
      dbgRGS.Canvas.Brush.Color := clSkyBlue
  else
    dbgRGS.Canvas.Brush.Color := clWhite;

{ EXEMPLO
  if opcao = 'LANC' then
    if FLancamentoCheque.cdsTemp.Locate('CODIGO',QPesquisa.FieldByName('CODIGO').AsInteger,[]) then
      DBGrid1.Canvas.Brush.Color := clSkyBlue
    else
      DBGrid1.Canvas.Brush.Color := clWhite;

}
  dbgRGS.Canvas.Font.Color := clBlack;
  dbgRGS.DefaultDrawDataCell( Rect, Column.Field, State);
end;

procedure TFCadRgs.edDataPrevSaidaExit(Sender: TObject);
begin
  inherited;
  if edDataPrevSaida.Field.AsVariant <> null then
    dataPrevSaida := cdsCadastro.FieldByName('PREV_SAIDA').AsVariant;

end;

procedure TFCadRgs.dblClienteExit(Sender: TObject);
begin
  inherited;
  if dblCliente.KeyValue <> null then
    codCliente    := cdsCadastro.FieldByName('CLIENTE').AsVariant;

  btnGravar.SetFocus;
end;

procedure TFCadRgs.edNCaixaExit(Sender: TObject);
begin
  inherited;
  if edNCaixa.Field.AsVariant <> null then
    nCaixa   := cdsCadastro.FieldByName('N_CAIXA').AsVariant;

end;

procedure TFCadRgs.btnExcluirClick(Sender: TObject);
const
  msg1 = 'RGS ja foi emitida, só pode ser excuída por um administrador!';

var
  senha : string;
begin                                                      // B = RGS Baixada
  if dsCadastro.DataSet.FieldByName('SITUACAO').asString = 'B' then
  begin
    if MessageDlg(msg1,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      senha := InputBox('Permissão para auterar RGS','Senha RGS','');

      if senha = '' then
      begin
        alert('Permissão negada');
        abort;
      end;
      qaux.Close;
      qaux.SQL.Clear;
      qaux.SQL.Add('select count(*) from empresa where senha_master = ' + senha);
      qaux.Open;

      if qaux.Fields[0].AsInteger <> 1 then
      begin
        alert('Permissão negada');
        abort;
      end;
    end else
      abort;                                                        // C = RGS Cancelada
  end else if dsCadastro.DataSet.FieldByName('SITUACAO').asString = 'C' then begin
    alert('RGS Cancelada');
    abort;
  end;
  inherited;

end;

procedure TFCadRgs.edDataPrevSaidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edDataPrevSaida.Date = 0 then
    edDataPrevSaida.Date := now;
  inherited;

end;

procedure TFCadRgs.dbgCadastroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgCadastro.DataSource.DataSet.RecNo mod 2 = 0 then
    dbgCadastro.Canvas.Brush.Color := clMoneyGreen
  else
    dbgCadastro.Canvas.Brush.Color := clWhite;

  dbgCadastro.Canvas.Font.Color := clBlack;
  dbgCadastro.DefaultDrawDataCell( Rect, Column.Field, State);

end;

procedure TFCadRgs.dsPesquisaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if QPesquisa.Active then
    dsCadastro.DataSet.Locate('RGS',QPesquisa.FieldByName('RGS').AsVariant,[])
end;

procedure TFCadRgs.btnBaixarRGSClick(Sender: TObject);
const
  ctUpdate =
    'UPDATE ESTINTOR SET CARREGADO = %s WHERE CODIGO = %s';

begin
  inherited;
  if dsCadastro.DataSet.FieldByName('CLIENTE').AsVariant = null then
  begin
    Alert('Esta RGS não possui um cliente!');
    exit;
  end;

  if dsCadastro.DataSet.FieldByName('SITUACAO').AsString = 'B' then
  begin
    Alert('RGS ja foi baixada!');
    exit;
  end;

  if question('Deseja realmente baixar esta RGS?') then
  begin

    if dsCadastro.DataSet.State = dsBrowse then
      dsCadastro.DataSet.Edit;

    dsCadastro.DataSet.FieldByName('SAIDA').AsDateTime  := now;
    dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'B';

    dsExtintorRGS2.DataSet.First;

    while not(dsExtintorRGS2.DataSet.Eof) do
    begin

      execDml(Format(ctUpdate, [QuotedStr(FormatDateTime('mm/dd/yyyy', now)),
                                dsExtintorRGS2.DataSet.FieldByName('CODIGO').AsString]));

      dsExtintorRGS2.DataSet.Next;

    end;

    dsCadastro.DataSet.Post;

  end;
end;
procedure TFCadRgs.AdicionarPeas1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRGSExtintorPecas, FRGSExtintorPecas);
  URGSExtintorPecas.codrgs      := dsCadastro.DataSet.FieldByName('CODIGO').AsInteger;
  URGSExtintorPecas.codExtintor := dbgRGS.DataSource.DataSet.FieldByName('CODIGO').AsInteger;

  FRGSExtintorPecas.atualizaListBox;
  FRGSExtintorPecas.ShowModal;
  FRGSExtintorPecas.Free;

end;

procedure TFCadRgs.dsExtintorRGS2DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dbgRGS.Columns[2].Width := 64;
end;

procedure TFCadRgs.dblPesquisaClienteKeyDown(Sender: TObject;
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

procedure TFCadRgs.FormShow(Sender: TObject);
begin
  inherited;
  edPesquisaRgs.SetFocus;
end;

procedure TFCadRgs.dbgExtintorClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  codigo : string;
begin
  inherited;

  codigo := prompt('Localizar Extintor', 'Codigo', '', #0);

  if codigo <> '' then
    if not(TDBGrid(sender).DataSource.DataSet.Locate('CODIGO',codigo,[]))  then
      showMessage('Extintor não encontrado!');

end;

procedure TFCadRgs.dbgRGSColExit(Sender: TObject);
begin
  inherited;
  if trim( dbgRGS.Columns[9].Field.AsString ) = '' then
  begin
    ShowMessage( dbgRGS.Columns[9].Field.AsString );
  end;
end;

procedure TFCadRgs.edCompetenciaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in['0'..'9', '/']) then
    Key := #0;
end;

procedure TFCadRgs.edCompetenciaExit(Sender: TObject);
begin
  inherited;
  if length( edCompetencia.Text ) <> 7 then
  begin
    ShowMessage('A competencia deve ser composta de sete dígitos: MM/AAAA!');
    edCompetencia.SetFocus;
    Exit;
  end;

  if (( copy( edCompetencia.Text, 1, 1) <> '0' ) or
      ( copy( edCompetencia.Text, 1, 1) <> '1' ) ) and
      ( copy( edCompetencia.Text, 1, 2) = '00' ) then
  begin
    ShowMessage('Mês inválido!');
    edCompetencia.SetFocus;
    Exit;
  end;

  if ( copy( edCompetencia.Text, 3, 1) <> '/' ) then
  begin
    ShowMessage('Competencia inválida!');
    edCompetencia.SetFocus;
    Exit;
  end;

end;

end.
