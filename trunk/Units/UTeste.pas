unit UTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, DBCtrls, DB, IBCustomDataSet, IBTable, Buttons;

type
  TFTeste = class(TFPai)
    gbCubagem: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    lbPvPc: TLabel;
    GroupBox6: TGroupBox;
    lbResultadoCubagem: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    gbAltaPressao: TGroupBox;
    GroupBox8: TGroupBox;
    lbResultadoAltaPressao: TLabel;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    gbPercaMassa: TGroupBox;
    GroupBox17: TGroupBox;
    lbPercaMassa: TLabel;
    GroupBox15: TGroupBox;
    GroupBox18: TGroupBox;
    gbResultado: TGroupBox;
    lbMotivo: TLabel;
    mmMotivo: TMemo;
    dblMotivo: TDBLookupComboBox;
    edPV: TEdit;
    edPC: TEdit;
    edET: TEdit;
    edEP: TEdit;
    edTara: TEdit;
    dsMotivo: TDataSource;
    edPVleitura: TEdit;
    rbAprovado: TRadioButton;
    rbReprovado: TRadioButton;
    btnCancelar: TBitBtn;
    btnAtualizar: TBitBtn;
    gbEnsaioPressao: TGroupBox;
    GroupBox11: TGroupBox;
    edPressaoTeste: TEdit;
    GroupBox12: TGroupBox;
    GroupBox19: TGroupBox;
    Label2: TLabel;
    dsPressao: TDataSource;
    dblPressao: TDBLookupComboBox;
    edMotivos: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure edPVChange(Sender: TObject);
    procedure edPVExit(Sender: TObject);
    procedure edPVKeyPress(Sender: TObject; var Key: Char);
    procedure edETExit(Sender: TObject);
    procedure edTaraExit(Sender: TObject);
    procedure rbAprovadoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dsPressaoDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure edEPKeyPress(Sender: TObject; var Key: Char);
    procedure gbResultadoEnter(Sender: TObject);
  private
    { Private declarations }
    procedure cubagem;
    procedure altaPressao;
    procedure percaMassa;
    procedure Teste;

    procedure mensagens;
  public
    { Public declarations }
  end;

var
  FTeste: TFTeste;
  rsPercaMassa, rsAltaPress : real;
  cp : real; // capacidade.
  ms_cubagem, ms_altaPressao, ms_percaMassa : string;
  reprovacao : integer;
  codExtintor : integer;
  rgs         : string;
implementation

uses UdmGeral, UFsuper, UdmPesquisa;

{$R *.dfm}

procedure TFTeste.altaPressao;
var
  ep, et : real;
begin
  (* Especificação
     ep = ?;
     et = ?;

     formula: (ep - et) * 100 <= 10;

     se o resultado for <= 10 reprovado!

     mostrar o resultado como porcentagem '%'.
   *)
   ep := strToFloat(edEP.Text);
   et := strToFloat(edET.Text);

   if et = 0 then
   begin
     Alert('ET não pode ser zero!');
     exit;
   end;

   lbResultadoAltaPressao.Caption := FormatFloat('0%',(ep / et) * 100);
   rsAltaPress := (ep / et) * 100;

   if (ep / et) * 100 <= 10 then
     ms_altaPressao := 'Alta Pressão Ok!'
   else begin
     ms_altaPressao := 'O resultado da alta pressão é maior que 10%!';
     inc(reprovacao);

     if pos('04',edMotivos.Text) <> 0 then
       exit;

     if edMotivos.Text <> '' then
       edMotivos.Text := edMotivos.Text + '/04'
     else
       edMotivos.Text := edMotivos.Text + '04';

   end;

   rbReprovado.Checked := edMotivos.Text = '';

   mensagens;
end;

procedure TFTeste.cubagem;
var
  pc, pv : real;
const
  constate = 0.68;
begin
  (* Especificação
     constate = 0.68;
     pc = Peso Cheio;
     pv = Peso Vazio;
     cp = capacidade;

     formula: (pc - pv) * constate = capacidade;

     se o resultado for <> da capacidade mostrar informação no memo!

     unidade de medida 'Kg'.
   *)
  pc := strToFloat(edpc.Text);
  pv := strToFloat(edpv.Text);

  // O peso cheio não pode ser maior ou igual ao peso vazio.
  if pc <= pv then
  begin
    alert('O peso cheio não pode ser maior ou igual ao peso vazio!');
    exit;
  end;

  lbPvPc.Caption := FormatFloat('0.00',(pc - pv));
  lbResultadoCubagem.Caption := FormatFloat('0kg',(pc - pv) * constate);
  if FormatFloat('0%',(pc - pv) * constate) = FormatFloat('0%',cp) then
    ms_cubagem := 'Cubagem ok!'
  else begin
    ms_cubagem := 'A resultado da cubagem difere da capacidade!';
    inc(reprovacao);

     if pos('02',edMotivos.Text) <> 0 then
       exit;

    if edMotivos.Text <> '' then
      edMotivos.Text := edMotivos.Text + '/02'
    else
      edMotivos.Text := edMotivos.Text + '02';

  end;

  mensagens;

end;

procedure TFTeste.edPVChange(Sender: TObject);
begin
  inherited;
  edPVleitura.Text := edPV.Text;
end;

procedure TFTeste.edPVExit(Sender: TObject);
begin
  inherited;
  Teste;
  end;

procedure TFTeste.edPVKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in['0'..'9',#8]) then
    key := #0;
end;

procedure TFTeste.mensagens;
begin
  mmMotivo.Clear;
  mmMotivo.Lines.Add(ms_cubagem);
  mmMotivo.Lines.Add(ms_percaMassa);
  mmMotivo.Lines.Add(ms_altaPressao);
  mmMotivo.BeginDrag(true);

  dblMotivo.Enabled := rbReprovado.Checked;;
end;

procedure TFTeste.edETExit(Sender: TObject);
begin
  inherited;
  Teste;
end;

procedure TFTeste.percaMassa;
var
  pv, tara : real;
begin
  (* Especificação
     pv     = peso cheio;
     tara   = peso de fabrica;

     formula: ((pv / tara)-1)*100;

     se o resultado for <= 5 reprovado!

     mostrar o resultado como porcentagem '%'.
   *)
   pv   := strToFloat(edpv.Text);
   tara := strToFloat(edTara.Text);

   lbPercaMassa.Caption := FormatFloat('0%',((pv / tara)-1)*100);
   rsPercaMassa := ((pv / tara)-1)*100;

   if ((pv / tara)-1)*100 <= 5 then
     ms_percaMassa := 'Perca Massa Ok!'
   else begin

     if pos('03',edMotivos.Text) <> 0 then
       exit;

     ms_percaMassa := 'A perca de massa supera os 5%!';
     inc(reprovacao);

     if edMotivos.Text <> '' then
       edMotivos.Text := edMotivos.Text + '/03'
     else
       edMotivos.Text := edMotivos.Text + '03';

   end;

   mensagens;
end;

procedure TFTeste.edTaraExit(Sender: TObject);
begin
  Teste;
  inherited;
end;

procedure TFTeste.rbAprovadoClick(Sender: TObject);
begin
  inherited;
  dblMotivo.Enabled := rbReprovado.Checked;;

end;

procedure TFTeste.btnAtualizarClick(Sender: TObject);
Const
  ctUpdate =
    'UPDATE ITENS_RECARGA SET'#10+
    '  ITENS_RECARGA.PRESSAO_TRABALHO = %s,'#10+
    '  ITENS_RECARGA.PRESSAO_TESTE = %s,'#10+
    '  ITENS_RECARGA.PESO_VAZIO_CO2 = %s,'#10+
    '  ITENS_RECARGA.PESO_CHEIO_CO2 = %s,'#10+
    '  ITENS_RECARGA.TARA = %s,'#10+
    '  ITENS_RECARGA.ET = %s,'#10+
    '  ITENS_RECARGA.EP = %s,'#10+
    '  ITENS_RECARGA.RS_PERDA = %s,'#10+
    '  ITENS_RECARGA.RS_EP_ET = %s,'#10+
    '  ITENS_RECARGA.RS = %s,'#10+
    '  ITENS_RECARGA.DATA_TESTE = %s,'#10+
    '  ITENS_RECARGA.ULTIMA_VISITA = %s,'#10+
    '  ITENS_RECARGA.MOTIVO =%s'#10+
    'WHERE'#10+
    '  (ITENS_RECARGA.RGS  = ''%s'') AND'#10+
    '  (ITENS_RECARGA.CODIGO = %s)';
var
  rs : string;
begin
  inherited;

  if dblPressao.KeyValue = null then
  begin
    alert('A pressão de trabalho deve ser informada!');
    dblPressao.SetFocus;
    exit;
  end;

  if edPressaoTeste.Text = '' then
  begin
    alert('A pressão de teste deve ser informada!');
    edPressaoTeste.SetFocus;
    exit;
  end;

  if edPV.Text = '' then
  begin
    alert('O Peso Vazio deve ser informada!');
    edPV.SetFocus;
    exit;
  end;

  if edPC.Text = '' then
  begin
    alert('O Peso Vazio deve ser informado!');
    edPressaoTeste.SetFocus;
    exit;
  end;

  if edET.Text = '' then
  begin
    alert('O ET deve ser informado!');
    edET.SetFocus;
    exit;
  end;

  if edEP.Text = '' then
  begin
    alert('O EP deve ser informado!');
    edEP.SetFocus;
    exit;
  end;

  if edTara.Text = '' then
  begin
    alert('A Tara deve ser informada!');
    edTara.SetFocus;
    exit;
  end;

  if rbAprovado.Checked then
    rs := 'C'
  else
    rs := 'NC';

  execDml(Format(ctUpdate,[StringReplace(FormatFloat('0.00', dblPressao.KeyValue),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edPressaoTeste.Text)),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edPV.Text)),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edpc.Text)),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edTara.Text)),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edET.Text)),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edEP.Text)),',','.',[]),
                           StringReplace(FormatFloat('0.00', rsPercaMassa),',','.',[]),
                           StringReplace(FormatFloat('0.00', rsAltaPress),',','.',[]),
                           QuotedStr(rs),
                           QuotedStr(FormatDateTime('mm/dd/yyyy',now)),
                           QuotedStr(FormatDateTime('yyyy',now)),
                           QuotedStr(edMotivos.Text),
                           rgs,
                           intToStr(codExtintor)]));

  alert('Teste Relizado com Sucesso!');
  Close;
end;

procedure TFTeste.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('O teste não foi concluído, deseja realmente cancelar', mtConfirmation,
     [mbYes, mbNo],0) = mrYes then
    Close;
end;

procedure TFTeste.dsPressaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (dblPressao.KeyValue <> null) then
    edPressaoTeste.Text := dsPressao.DataSet.FieldByName('PE').AsString;

end;

procedure TFTeste.FormShow(Sender: TObject);
begin
  inherited;
  dblPressao.SetFocus;
end;

procedure TFTeste.BitBtn1Click(Sender: TObject);
var
  delimiter : string;
begin
  inherited;
  delimiter := '';

  if edMotivos.Text <> '' then
    delimiter := '/';

  if dblMotivo.KeyValue = null then
    exit;

  if Pos(copy(varToStr(dblMotivo.KeyValue), 1, 2),edMotivos.Text) <> 0 then
    exit;

  if length(edMotivos.Text) >= 8 then
    Exit;

  edMotivos.Text := edMotivos.Text + delimiter + copy(dblMotivo.Text, 1, 2);
end;

procedure TFTeste.Label1Click(Sender: TObject);
begin
  inherited;
  edMotivos.Clear;
end;

procedure TFTeste.Label1MouseEnter(Sender: TObject);
begin
  inherited;
  Label1.Font.Color := clWhite;
end;

procedure TFTeste.Label1MouseLeave(Sender: TObject);
begin
  inherited;
  Label1.Font.Color := clBlack;

end;

procedure TFTeste.edEPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in['0'..'9',#8,',']) then
    key := #0;

end;

procedure TFTeste.Teste;
begin

  edMotivos.Clear;

  if (edpv.Text <> '0') and (edpc.Text <> '0') then
    cubagem;

  if (edET.Text <> '0') and (edEP.Text <> '0') then
    altaPressao;

  if edTara.Text <> '0' then
    percaMassa;

  if edMotivos.Text = '' then
  begin
    rbReprovado.Checked := false;
    rbAprovado.Checked := true
  end else begin
    rbAprovado.Checked := false;
    rbReprovado.Checked := true;
  end;
end;

procedure TFTeste.gbResultadoEnter(Sender: TObject);
begin
  inherited;
Teste;
end;

end.
