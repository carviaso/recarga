unit UTesteBaixaPress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, Buttons, DBCtrls, DB;

type
  TFTesteBaixaPress = class(TFPai)
    gbEnsaioPressao: TGroupBox;
    GroupBox11: TGroupBox;
    edPressaoTeste: TEdit;
    GroupBox12: TGroupBox;
    dblPressao: TDBLookupComboBox;
    GroupBox19: TGroupBox;
    Label2: TLabel;
    btnCancelar: TBitBtn;
    btnAtualizar: TBitBtn;
    dsPressao: TDataSource;
    lbMotivo: TLabel;
    dblMotivo: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    edMotivos: TEdit;
    Label1: TLabel;
    dsMotivo: TDataSource;
    procedure dsPressaoDataChange(Sender: TObject; Field: TField);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTesteBaixaPress: TFTesteBaixaPress;
  codExtintor : integer;
  rgs : string;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFTesteBaixaPress.dsPressaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (dblPressao.KeyValue <> null) then
    edPressaoTeste.Text := dsPressao.DataSet.FieldByName('PE').AsString;

end;

procedure TFTesteBaixaPress.btnAtualizarClick(Sender: TObject);
Const
  ctUpdate =
    'UPDATE ITENS_RECARGA SET'#10+
    '  ITENS_RECARGA.PRESSAO_TRABALHO = %s,'#10+
    '  ITENS_RECARGA.PRESSAO_TESTE = %s,'#10+
    '  ITENS_RECARGA.MOTIVO =%s,'#10+
    '  ITENS_RECARGA.DATA_TESTE =%s,'#10+
    '  ITENS_RECARGA.ULTIMA_VISITA =%s,'#10+
    '  ITENS_RECARGA.RS =%s'#10+
    'WHERE'#10+
    '  (ITENS_RECARGA.RGS = ''%s'')AND'#10+
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

  if question('Conforme?') then
    rs := 'C'
  else
    rs := 'NC';

  execDml(Format(ctUpdate,[StringReplace(FormatFloat('0.00', dblPressao.KeyValue),',','.',[]),
                           StringReplace(FormatFloat('0.00', StrToFloat(edPressaoTeste.Text)),',','.',[]),
                           QuotedStr(edMotivos.Text),
                           QuotedStr(FormatDateTime('mm/dd/yyyy',now)),
                           QuotedStr(FormatDateTime('yyyy',now)),
                           QuotedStr(rs),
                           rgs,
                           intToStr(codExtintor)]));

//  alert('Teste Relizado com Sucesso!');
  Close;

end;

procedure TFTesteBaixaPress.btnCancelarClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('O teste não foi concluído, deseja realmente cancelar', mtConfirmation,
     [mbYes, mbNo],0) = mrYes then
    Close;

end;

procedure TFTesteBaixaPress.BitBtn1Click(Sender: TObject);
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

procedure TFTesteBaixaPress.Label1Click(Sender: TObject);
begin
  inherited;
  edMotivos.Clear;

end;

procedure TFTesteBaixaPress.Label1MouseEnter(Sender: TObject);
begin
  inherited;
  Label1.Font.Color := clWhite;

end;

procedure TFTesteBaixaPress.Label1MouseLeave(Sender: TObject);
begin
  inherited;
  Label1.Font.Color := clBlack;

end;

end.
