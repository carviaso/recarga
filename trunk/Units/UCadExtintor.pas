unit UCadExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadGeral, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  TFCadExtintor = class(TFCadGeral)
    dsClientesComExtintores: TDataSource;
    dsCliente: TDataSource;
    dsTipo: TDataSource;
    dsFabricante: TDataSource;
    dsPressao: TDataSource;
    dsMotivo: TDataSource;
    dsPesquisa: TDataSource;
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dblTipo: TDBLookupComboBox;
    dblFabricante: TDBLookupComboBox;
    edAnoFabricacao: TDBEdit;
    edCapacidade: TDBEdit;
    edultimaVisita: TDBEdit;
    edNserie: TDBEdit;
    edNManutencao: TDBEdit;
    edPintura: TDBComboBox;
    edSelo: TDBEdit;
    edBatelada: TDBEdit;
    rtObs: TDBRichEdit;
    ednProjeto: TDBEdit;
    ednLacre: TDBEdit;
    edPressaoTeste: TDBEdit;
    dblPressao: TDBLookupComboBox;
    gbCO2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    eddbPesoVazioCo2: TDBEdit;
    eddbNormaCo2: TDBEdit;
    edLitros: TDBEdit;
    eddbPesoCheioCo2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edPv: TDBEdit;
    GroupBox4: TGroupBox;
    edPc: TDBEdit;
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
    edEt: TDBEdit;
    GroupBox10: TGroupBox;
    edEp: TDBEdit;
    GroupBox14: TGroupBox;
    GroupBox17: TGroupBox;
    lbPercaMassa: TLabel;
    GroupBox15: TGroupBox;
    DBText2: TDBText;
    GroupBox18: TGroupBox;
    edTara: TDBEdit;
    GroupBox13: TGroupBox;
    Label24: TLabel;
    btnDuplicar: TBitBtn;
    qaux: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure edAnoFabricacaoExit(Sender: TObject);
    procedure edNManutencaoExit(Sender: TObject);
    procedure dsTipoDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dsPressaoDataChange(Sender: TObject; Field: TField);
    procedure dblFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCapacidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edPinturaKeyPress(Sender: TObject; var Key: Char);
    procedure edEpExit(Sender: TObject);
    procedure edTaraExit(Sender: TObject);
    procedure edPvExit(Sender: TObject);
    procedure edPcExit(Sender: TObject);
    procedure ednLacreExit(Sender: TObject);
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
    procedure conecta(cliente : String);
  end;

var
  FCadExtintor: TFCadExtintor;
  codCliente  : Integer;

implementation
uses UdmGeral, UdmPesquisa, UFsuper, UCadCliente, UCadTipo, UCadMotivo,
  UCadFabricante, UpesquisaClientes, UCadExtintorChamada;

{$R *.dfm}

procedure TFCadExtintor.conecta(cliente: String);
const
  ctPesquisaExtintor =
    'select * from ESTINTOR WHERE CLIENTE = %s';

begin

  QCadastro.Close;
  QCadastro.SQL.Clear;
  QCadastro.SQL.Add(Format(ctPesquisaExtintor, [cliente]));
  QCadastro.Open;

  codCliente := strToInt(cliente);

end;

procedure TFCadExtintor.FormCreate(Sender: TObject);
begin
  //inherited;
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

end;

procedure TFCadExtintor.btnDuplicarClick(Sender: TObject);
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

  //cliente       := dblCliente.KeyValue;
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

  dsCadastro.DataSet.FieldByName('CLIENTE').AsVariant          := cliente;
  dsCadastro.DataSet.FieldByName('TIPO').AsVariant             := tipo;
  dsCadastro.DataSet.FieldByName('FABRICANTE').AsVariant       := fabricante;
  dsCadastro.DataSet.FieldByName('CAPACIDADE').AsVariant       := capacidade;
  dsCadastro.DataSet.FieldByName('ANO_FABRICACAO').AsVariant   := anofabricacao;
  dsCadastro.DataSet.FieldByName('ULTIMA_VISITA').AsVariant    := ultima;
  dsCadastro.DataSet.FieldByName('SELO').AsVariant             := numeroselo;
  dsCadastro.DataSet.FieldByName('PRESSAO_TRABALHO').AsVariant := pressaoTrab;
  dsCadastro.DataSet.FieldByName('PRESSAO_TESTE').AsVariant    := pressaoTeste;
  dsCadastro.DataSet.FieldByName('OBS').AsVariant              := obs;
end;

procedure TFCadExtintor.edAnoFabricacaoExit(Sender: TObject);
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

procedure TFCadExtintor.edNManutencaoExit(Sender: TObject);
begin
  inherited;
  if (edNManutencao.Field.AsInteger = 3) and (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
    dsCadastro.DataSet.FieldByName('PINTURA').AsString := 'S';

end;

procedure TFCadExtintor.dsTipoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  gbCO2.Visible := dsTipo.DataSet.FieldByName('CO2').AsString = 'S';

end;

procedure TFCadExtintor.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM ESTINTOR';

begin

  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;
  inherited;

  dblTipo.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO' ).AsInteger := qaux.Fields[0].asInteger + 1;
  dsCadastro.DataSet.FieldByName('CLIENTE').AsInteger := FUCadExtintorChamada.dblCliente.KeyValue;
  qaux.Close;

end;

procedure TFCadExtintor.btnAlterarClick(Sender: TObject);
begin
  inherited;
  dblTipo.SetFocus;
end;

procedure TFCadExtintor.btnGravarClick(Sender: TObject);
begin
  // Validações da aba Cadastro
  if dblTipo.KeyValue = null then
  begin
    alert('O tipo deve ser informado!');
    //PageControl.ActivePageIndex := 1;
    dblTipo.SetFocus;
    exit;
  end;

  if dblFabricante.KeyValue = null then
  begin
    alert('O fabricante deve ser informado!');
    //PageControl.ActivePageIndex := 1;
    dblFabricante.SetFocus;
    exit;
  end;

  if edCapacidade.Text = '' then
  begin
    alert('A capacidade deve ser informada!');
    //PageControl.ActivePageIndex := 1;
    edCapacidade.SetFocus;
    exit;
  end;

  if edAnoFabricacao.Text = '' then
  begin
    alert('O Ano de Fabricação deve ser informado!');
    //PageControl.ActivePageIndex := 1;
    edAnoFabricacao.SetFocus;
    exit;
  end;

  if edultimaVisita.Text = '' then
  begin
    alert('A Ultima Visita deve ser informada!');
    //PageControl.ActivePageIndex := 1;
    edultimaVisita.SetFocus;
    exit;
  end;

  if edNserie.Text = '' then
  begin
    alert('O Número de série deve ser informado!');
    //PageControl.ActivePageIndex := 1;
    edNserie.SetFocus;
    exit;
  end;
  {
  if dblCliente.KeyValue = null then
  begin
    alert('O cliente deve ser informado!');
    //PageControl.ActivePageIndex := 1;
    dblCliente.SetFocus;
    exit;
  end;
  }
  if edAnoFabricacao.Text = '' then
  begin
    alert('O Ano de Fabricação deve ser informado!');
    //PageControl.ActivePageIndex := 1;
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
    //PageControl.ActivePageIndex := 1;
    dblPressao.SetFocus;
    exit;
  end;
  inherited;

  if btnNovo.CanFocus then
    btnNovo.SetFocus;

end;

procedure TFCadExtintor.btnExcluirClick(Sender: TObject);
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

procedure TFCadExtintor.dsPressaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (dblPressao.KeyValue <> null) and
     (dsCadastro.DataSet.State in [dsEdit, dsInsert]) then
     dsCadastro.DataSet.FieldByName('PRESSAO_TESTE').AsFloat := dblPressao.ListSource.DataSet.FieldByName('PE').AsFloat;
end;

procedure TFCadExtintor.dblFabricanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  fun_dblookup(Key, Shift, Tdblookupcombobox(Sender));
end;

procedure TFCadExtintor.dblTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  fun_dblookup(Key, Shift, Tdblookupcombobox(Sender));
end;

function TFCadExtintor.altaPress(ep, et: real; L: Tlabel): Boolean;
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

function TFCadExtintor.cubagem(pc, pv, cp: real; L: Tlabel;
  constate: Real): Boolean;
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

function TFCadExtintor.percaMassa(pv, tara: real; L: Tlabel): Boolean;
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

procedure TFCadExtintor.rodaFuncoes;
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

procedure TFCadExtintor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsTipo.DataSet.Open;
  dsFabricante.DataSet.Open;

end;

procedure TFCadExtintor.edCapacidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in['0'..'9',#8,','])then
    key := #0;

end;

procedure TFCadExtintor.edPinturaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in['1'..'3',#8])then
    key := #0;

end;

procedure TFCadExtintor.edEpExit(Sender: TObject);
begin
  inherited;
  rodaFuncoes;

end;

procedure TFCadExtintor.edTaraExit(Sender: TObject);
begin
  inherited;
  rodaFuncoes;

end;

procedure TFCadExtintor.edPvExit(Sender: TObject);
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

procedure TFCadExtintor.edPcExit(Sender: TObject);
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

procedure TFCadExtintor.ednLacreExit(Sender: TObject);
begin
  inherited;
  if btnGravar.CanFocus then
    btnGravar.SetFocus;
end;

end.
