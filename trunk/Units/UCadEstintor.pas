unit UCadEstintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, DBCtrls, StdCtrls, SqlExpr, DB, DBClient,
  Provider, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  RXDBCtrl, IBTable, IBCustomDataSet, IBQuery;

type
  TFCadEstintor = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    dsTipo: TDataSource;
    dsFabricante: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dblTipo: TDBLookupComboBox;
    dblFabricante: TDBLookupComboBox;
    Label4: TLabel;
    edAnoFabricacao: TDBEdit;
    Label5: TLabel;
    edCapacidade: TDBEdit;
    Label6: TLabel;
    edultimaVisita: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edNserie: TDBEdit;
    edNManutencao: TDBEdit;
    edPintura: TDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    edSelo: TDBEdit;
    edBatelada: TDBEdit;
    Label12: TLabel;
    rtObs: TDBRichEdit;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    lbPvPc: TLabel;
    GroupBox6: TGroupBox;
    lbResultadoCubagem: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    lbResultadoAltaPressao: TLabel;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    edPv: TDBEdit;
    edPc: TDBEdit;
    GroupBox14: TGroupBox;
    GroupBox17: TGroupBox;
    lbPercaMassa: TLabel;
    edEt: TDBEdit;
    edEp: TDBEdit;
    GroupBox15: TGroupBox;
    GroupBox18: TGroupBox;
    edTara: TDBEdit;
    DBText2: TDBText;
    GroupBox13: TGroupBox;
    Label24: TLabel;
    Label14: TLabel;
    ednProjeto: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ednLacre: TDBEdit;
    edPressaoTeste: TDBEdit;
    Label20: TLabel;
    dblCliente: TDBLookupComboBox;
    dsCliente: TDataSource;
    dsMotivo: TDataSource;
    Label21: TLabel;
    Label22: TLabel;
    dblPressao: TDBLookupComboBox;
    dsPressao: TDataSource;
    btnDuplicar: TBitBtn;
    dsClientesComExtintores: TDataSource;
    dblPesquisaCliente: TDBLookupComboBox;
    Label13: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    edPesquisaNSerie: TEdit;
    edPesquisaSelo: TEdit;
    dblPesquisaFabricante: TDBLookupComboBox;
    Label26: TLabel;
    btnPesquisa: TBitBtn;
    QPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    gbCO2: TGroupBox;
    eddbPesoVazioCo2: TDBEdit;
    eddbNormaCo2: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    edLitros: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    eddbPesoCheioCo2: TDBEdit;
    Label31: TLabel;
    DBEdit1: TDBEdit;
    Label32: TLabel;
    DBEdit2: TDBEdit;
    Label33: TLabel;
    edPesquisaCodigo: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCapacidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edNManutencaoKeyPress(Sender: TObject; var Key: Char);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPvExit(Sender: TObject);
    procedure edEpExit(Sender: TObject);
    procedure edTaraExit(Sender: TObject);
    procedure dblMotivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dsPressaoDataChange(Sender: TObject; Field: TField);
    procedure btnDuplicarClick(Sender: TObject);
    procedure edAnoFabricacaoExit(Sender: TObject);
    procedure edNManutencaoExit(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbgCadastroDblClick(Sender: TObject);
    procedure dsTipoDataChange(Sender: TObject; Field: TField);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }

    (* Funções para Teste Hidrostático *********************)
      procedure rodaFuncoes;
      function cubagem(pc, pv, cp : real; L : Tlabel; constate : Real = 0.68):Boolean;
      function altaPress(ep, et : real; L : Tlabel):Boolean;
      function percaMassa(pv, tara: real; L : Tlabel):Boolean;
    (*******************************************************)

  public
    { Public declarations }
  end;

var
  FCadEstintor: TFCadEstintor;
implementation

uses UdmGeral, UdmPesquisa, UFsuper, UCadCliente, UCadTipo, UCadMotivo,
  UCadFabricante, UpesquisaClientes;

{$R *.dfm}

procedure TFCadEstintor.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM ESTINTOR';

begin

  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;
  inherited;

  dblCliente.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;

end;

procedure TFCadEstintor.btnAlterarClick(Sender: TObject);
begin

    inherited;
    dblCliente.SetFocus;
end;

procedure TFCadEstintor.btnGravarClick(Sender: TObject);
begin

  // Validações da aba Cadastro
  if dblTipo.KeyValue = null then
  begin
    alert('O tipo deve ser informado!');
    PageControl.ActivePageIndex := 1;
    dblTipo.SetFocus;
    exit;
  end;

  if dblFabricante.KeyValue = null then
  begin
    alert('O fabricante deve ser informado!');
    PageControl.ActivePageIndex := 1;
    dblFabricante.SetFocus;
    exit;
  end;

  if edCapacidade.Text = '' then
  begin
    alert('A capacidade deve ser informada!');
    PageControl.ActivePageIndex := 1;
    edCapacidade.SetFocus;
    exit;
  end;

  if edAnoFabricacao.Text = '' then
  begin
    alert('O Ano de Fabricação deve ser informado!');
    PageControl.ActivePageIndex := 1;
    edAnoFabricacao.SetFocus;
    exit;
  end;

  if edultimaVisita.Text = '' then
  begin
    alert('A Ultima Visita deve ser informada!');
    PageControl.ActivePageIndex := 1;
    edultimaVisita.SetFocus;
    exit;
  end;

  if edNserie.Text = '' then
  begin
    alert('O Número de série deve ser informado!');
    PageControl.ActivePageIndex := 1;
    edNserie.SetFocus;
    exit;
  end;

  if dblCliente.KeyValue = null then
  begin
    alert('O cliente deve ser informado!');
    PageControl.ActivePageIndex := 1;
    dblCliente.SetFocus;
    exit;
  end;

  if edAnoFabricacao.Text = '' then
  begin
    alert('O Ano de Fabricação deve ser informado!');
    PageControl.ActivePageIndex := 1;
    edAnoFabricacao.SetFocus;
    exit;
  end;

  // Tirando o zoro, pois é um campo divisor
  if (edEt.Field.AsVariant = null) or
     (edEt.Field.AsFloat   = 0) then
    edEt.Field.AsFloat := 1;


  if dblPressao.KeyValue = null then
  begin
    alert('A pressão de trabalho deve ser informada!');
    PageControl.ActivePageIndex := 1;
    dblPressao.SetFocus;
    exit;
  end;
  {
  if edSelo.Text = '' then
  begin
    alert('O selo deve ser informado!');
    PageControl.ActivePageIndex := 1;
    edSelo.SetFocus;
    exit;
  end;
  }
  {
  if edBatelada.Text = '' then
  begin
    alert('A Batelada deve ser informada!');
    PageControl.ActivePageIndex := 1;
    edBatelada.SetFocus;
    exit;
  end;

  if edPintura.ItemHeight < 0 then
  begin
    alert('A Pintura deve ser informada!');
    PageControl.ActivePageIndex := 1;
    edPintura.SetFocus;
    exit;
  end;
  }

  inherited;

end;

procedure TFCadEstintor.FormCreate(Sender: TObject);
begin

  dsClientesComExtintores.DataSet.Close;
  dsClientesComExtintores.DataSet.Open;
  dsClientesComExtintores.DataSet.Last;

  dsCliente.DataSet.Close;
  dsCliente.DataSet.Open;
  dsCliente.DataSet.Last;

  dsTipo.DataSet.Close;
  dsTipo.DataSet.Open;
  dsTipo.DataSet.Last;

  dsMotivo.DataSet.Close;
  dsMotivo.DataSet.Open;
  dsMotivo.DataSet.Last;

  dsFabricante.DataSet.Close;
  dsFabricante.DataSet.Open;
  dsFabricante.DataSet.Last;



  inherited;

end;

procedure TFCadEstintor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsTipo.DataSet.Open;
  dsFabricante.DataSet.Open;

end;

procedure TFCadEstintor.dblTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_f5 then
  begin
    TDBLookupComboBox(sender).ListSource.DataSet.close;
    TDBLookupComboBox(sender).ListSource.DataSet.open;
  end else if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null;

end;

procedure TFCadEstintor.edCapacidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in['0'..'9',#8,','])then
    key := #0;
end;

procedure TFCadEstintor.edNManutencaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in['1'..'3',#8])then
    key := #0;
end;

procedure TFCadEstintor.dblClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  inherited;

  if key = vk_f5 then
  begin

    TDBLookupComboBox(sender).ListSource.DataSet.Close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;

  end else if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f8 then
  begin

    TDBLookupComboBox(sender).ListSource.DataSet.Close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
    Application.CreateForm(TFpesquisaClientes, FpesquisaClientes);
    FpesquisaClientes.showModal;
    TDBLookupComboBox(sender).Field.AsVariant := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;

  end;

end;

function TFCadEstintor.cubagem(pc, pv, cp: real; L : Tlabel; constate: Real): Boolean;
begin
  (*
     Especificação
     constate = 0.68;
     pc = Peso Cheio;
     pv = Peso Vazio;
     cp = capacidade;

     formula: (pc - pv) * constate = capacidade;

     se o resultado for <> da capacidade mostrar informação no memo!

     unidade de medida 'Kg'.
  *)
  L.Caption := FormatFloat('0%',(pc - pv) * constate);
  result := (pc - pv) * constate = cp;

end;

function TFCadEstintor.altaPress(ep, et: real; L : Tlabel): Boolean;
begin
  (* Especificação
     ep = ?;
     et = ?;

     formula: (ep - et) * 100 <= 10;

     se o resultado for <= 10 reprovado!

     mostrar o resultado como porcentagem '%'.
   *)
   if (ep = 0) or (et = 0) then
   begin
     L.Caption := '0%';
     result := false;
   end else begin
     L.Caption := FormatFloat('0%',(ep / et) * 100);
     if dsCadastro.DataSet.State in [dsInsert, dsEdit]then
       dsCadastro.DataSet.FieldByName('RS_EP_ET').AsFloat := (ep / et) * 100;
     result := (ep / et) * 100 <= 10;
   end;
end;

function TFCadEstintor.percaMassa(pv, tara: real; L : Tlabel): Boolean;
begin
  (* Especificação
     pv     = peso cheio;
     tara   = peso de fabrica;

     formula: (1- (pv / tara))*100;

     se o resultado for <= 5 reprovado!

     mostrar o resultado como porcentagem '%'.
   *)
   if (pv = 0) or (tara = 0) then
   begin
     L.Caption := '0%';
     result := false;
   end else begin
     L.Caption := FormatFloat('0%',(1- (pv / tara))*100);

     if dsCadastro.DataSet.State in [dsInsert, dsEdit]then
       dsCadastro.DataSet.FieldByName('RS_PERDA').AsFloat := (1- (pv / tara))*100;

     result := (1- (pv / tara))*100 <= 5;
   end;
end;

procedure TFCadEstintor.edPvExit(Sender: TObject);
begin
  inherited;
    rodaFuncoes;
    if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
    begin
      // Ensaio Cubagem  ////////////////////////////////////////////
      if not(cubagem(edPv.Field.AsFloat,
                     edPc.Field.AsFloat,
                     edCapacidade.Field.AsFloat,
                     lbResultadoCubagem)) then
    end;

end;

procedure TFCadEstintor.rodaFuncoes;
begin
      // Ensaio Alta Pressão ///////////////////////////////////////
      if not(altaPress(edEp.Field.AsFloat,
                       edEt.Field.AsFloat,
                       lbResultadoAltaPressao)) then
      begin
        if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
          //dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'N';
      end else if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
        //dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'S';

      // Perca de Massa       /////////////////////////////////////
      if not(percaMassa(dsCadastro.DataSet.FieldByName('PESO_VAZIO').AsFloat,
                        dsCadastro.DataSet.FieldByName('TARA').AsFloat,
                        lbPercaMassa))then
      begin
        if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
         // dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'N';
      end else if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
        //dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'S';

end;

procedure TFCadEstintor.edEpExit(Sender: TObject);
begin
  rodaFuncoes;
  inherited;

end;

procedure TFCadEstintor.edTaraExit(Sender: TObject);
begin
  rodaFuncoes;
  inherited;

end;

procedure TFCadEstintor.dblMotivoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
    TDBLookupComboBox(sender).ListSource.DataSet.Refresh
  else if key = vk_f8 then
  begin
    Application.CreateForm(TFCadMotivo, FCadMotivo);
    FCadMotivo.ShowModal;
    FCadMotivo.Free;
    TDBLookupComboBox(sender).ListSource.DataSet.Refresh
  end;
end;

procedure TFCadEstintor.dblFabricanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then begin
    TDBLookupComboBox(sender).ListSource.DataSet.Close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
  end;
end;

procedure TFCadEstintor.FormShow(Sender: TObject);
begin
 // inherited;

end;

procedure TFCadEstintor.dsPressaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (dblPressao.KeyValue <> null) and
     (cdsCadastro.State in [dsEdit, dsInsert]) then
    cdsCadastro.FieldByName('PRESSAO_TESTE').AsFloat := dblPressao.ListSource.DataSet.FieldByName('PE').AsFloat;
end;

procedure TFCadEstintor.btnDuplicarClick(Sender: TObject);
var
  cliente, tipo, fabricante, capacidade, anofabricacao, ultima, numeroselo, pressaoTrab, pressaoTeste, obs : variant;
begin
  {

  Esse trexo de código foi comentado por reclamações dos usuários do sistema
  segundos eles quando havia mas de um usuário cadastrando extintores os dados
  duplicados era do ultimo extintor cadastrado, e não do estintor visualizado
  pelo usuário que clica no botão.

  cliente       := cdsCadastro.FieldByName('CLIENTE').AsVariant;
  tipo          := cdsCadastro.FieldByName('TIPO').AsVariant;
  fabricante    := cdsCadastro.FieldByName('FABRICANTE').AsVariant;
  capacidade    := cdsCadastro.FieldByName('CAPACIDADE').AsVariant;
  anofabricacao := cdsCadastro.FieldByName('ANO_FABRICACAO').AsVariant;
  ultima        := cdsCadastro.FieldByName('ULTIMA_VISITA').AsVariant;
  numeroselo    := cdsCadastro.FieldByName('SELO').AsVariant;
  pressaoTrab   := cdsCadastro.FieldByName('PRESSAO_TRABALHO').AsVariant;
  pressaoTeste  := cdsCadastro.FieldByName('PRESSAO_TESTE').AsVariant;
  obs           := cdsCadastro.FieldByName('OBS').AsVariant;
  }

  cliente       := dblCliente.KeyValue;
  tipo          := dblTipo.KeyValue;
  fabricante    := dblFabricante.KeyValue;
  capacidade    := edCapacidade.Text;
  anofabricacao := edAnoFabricacao.Text;
  ultima        := edultimaVisita.Text;
  numeroselo    := edSelo.Text;
  pressaoTrab   := dblPressao.Text;
  pressaoTeste  := edPressaoTeste.Text;
  obs           := rtObs.Text;

  dsCadastro.DataSet.Close;
  dsCadastro.DataSet.Open;
  btnNovo.Click;
  edNserie.SetFocus;

  cdsCadastro.FieldByName('CLIENTE').AsVariant          := cliente;
  cdsCadastro.FieldByName('TIPO').AsVariant             := tipo;
  cdsCadastro.FieldByName('FABRICANTE').AsVariant       := fabricante;
  cdsCadastro.FieldByName('CAPACIDADE').AsVariant       := capacidade;
  cdsCadastro.FieldByName('ANO_FABRICACAO').AsVariant   := anofabricacao;
  cdsCadastro.FieldByName('ULTIMA_VISITA').AsVariant    := ultima;
  cdsCadastro.FieldByName('SELO').AsVariant             := numeroselo;
  cdsCadastro.FieldByName('PRESSAO_TRABALHO').AsVariant := pressaoTrab;
  cdsCadastro.FieldByName('PRESSAO_TESTE').AsVariant    := pressaoTeste;
  cdsCadastro.FieldByName('OBS').AsVariant              := obs;

  inherited;

end;

procedure TFCadEstintor.edAnoFabricacaoExit(Sender: TObject);
begin
  inherited;

  if dsCadastro.DataSet.State in [dsEdit, dsInsert] then
  begin

    if Length(trim(TDBEdit(sender).Field.AsString)) = 2 then
    begin

      if copy(trim(TDBEdit(sender).Field.AsString),1,1) = '0' then
        TDBEdit(sender).Field.AsString := '20' + trim(TDBEdit(sender).Field.AsString)
      else if (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '6') or
              (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '7') or
              (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '8') or
              (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '9') then
        TDBEdit(sender).Field.AsString := '19' + trim(TDBEdit(sender).Field.AsString)
      else
        TDBEdit(sender).Field.AsString := '20' + trim(TDBEdit(sender).Field.AsString);

    end;

    if edultimaVisita.Text <> '' then
      if (StrToInt(FormatDateTime('yyyy',now)) - StrToInt(edultimaVisita.Text)) >= 5 then
         edNManutencao.Field.AsInteger := 3;

  end;

end;

procedure TFCadEstintor.edNManutencaoExit(Sender: TObject);
begin
  inherited;
  if (edNManutencao.Field.AsInteger = 3) and (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
    dsCadastro.DataSet.FieldByName('PINTURA').AsString := 'S';
end;

procedure TFCadEstintor.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa = 'SELECT * FROM ESTINTOR WHERE (CODIGO <> 0)%s';

var
  filtro : string;
  
begin

  if dblPesquisaCliente.KeyValue <> null then
    filtro := filtro + ' AND(CLIENTE = ' + VarToStr(dblPesquisaCliente.KeyValue) +')';

  if dblPesquisaFabricante.KeyValue <> null then
    filtro := filtro + ' AND(FABRICANTE = ' + VarToStr(dblPesquisaFabricante.KeyValue) +')';

  if edPesquisaNSerie.Text <> '' then
    filtro := filtro + ' AND(NUMERO_SERIE = '''+ edPesquisaNSerie.Text +''')';

  if edPesquisaSelo.Text <> '' then
    filtro := filtro + ' AND(SELO = '''+ edPesquisaSelo.Text +''')';

  if edPesquisaCodigo.Text <> '' then
    filtro := filtro + ' AND(CODIGO = '+ edPesquisaCodigo.Text +')';

  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(Format(ctPesquisa,[Filtro]));
  QPesquisa.Open;

end;

procedure TFCadEstintor.dbgCadastroDblClick(Sender: TObject);
begin
  inherited;
  {
  if not(QPesquisa.IsEmpty) then
  begin
    dsCadastro.DataSet.Filtered := False;
    dsCadastro.DataSet.Filter   := '(CODIGO = ' + QPesquisa.FieldByName('CODIGO').AsString + ')';
    dsCadastro.DataSet.Filtered := True;
    dsCadastro.DataSet.Open;

    if not(dsCadastro.DataSet.IsEmpty) then
      PageControl.ActivePageIndex := 1
    else
      showMessage('Nenhum extintor não encontrado para esta pesquisa!');
  end;
  }

    if cdsCadastro.Locate('CODIGO',QPesquisa.FieldByName('CODIGO').AsInteger,[]) then
      btnAlterar.Click;
  
end;

procedure TFCadEstintor.dsTipoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  gbCO2.Visible := dsTipo.DataSet.FieldByName('CO2').AsString = 'S';
end;

procedure TFCadEstintor.dblPesquisaClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).ListSource.DataSet.close;
      TDBLookupComboBox(sender).ListSource.DataSet.Open;
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

procedure TFCadEstintor.btnExcluirClick(Sender: TObject);
begin

  try
    inherited;
  except

    on e:EDatabaseError do
    begin
      if pos('FOREIGN KEY',e.message) <> 0 then
        showmessage('Este registro esta relacionado e não pode ser excluído!');
    end;

  end;

end;

end.
