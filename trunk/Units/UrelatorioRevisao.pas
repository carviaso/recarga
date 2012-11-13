unit UrelatorioRevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLPDFFilter, DB, IBCustomDataSet, IBQuery;

type
  TFUrelatorioRevisao = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlComplemento: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText6: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand2: TRLBand;
    RLMemo1: TRLMemo;
    Qry: TIBQuery;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    procedure RLLabel1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText9BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText3BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUrelatorioRevisao: TFUrelatorioRevisao;

implementation

uses URelRevisao, UdmGeral, UFsuper;

{$R *.dfm}

procedure TFUrelatorioRevisao.RLLabel1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  with FRelRevisao do
  Text := pega_situacao(dsPesquisa.DataSet.FieldByName('REV_CODIGO').AsInteger,
                        dsPesquisa.DataSet.FieldByName('EXT_CODIGO').AsInteger);
end;

procedure TFUrelatorioRevisao.RLDBText9BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if FRelRevisao.rgdtExibicao.ItemIndex = 0 then
    Text := IntToStr(StrToInt(RLDBText9.DataSource.DataSet.FieldByName('ULTIMA_VISITA').AsString))
  else
    Text := IntToStr(StrToInt(RLDBText9.DataSource.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5);
end;

procedure TFUrelatorioRevisao.RLDBText3BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Text = '' then
    Text := '_____________________________________________';
end;

procedure TFUrelatorioRevisao.RLDBText10BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if FRelRevisao.rgdtExibicao.ItemIndex = 0 then
    Text := FormatDateTime('mm/yyyy', RLDBText10.Field.AsDateTime)
  else
    Text := FormatDateTime('mm/yyyy', incMonth(RLDBText10.Field.AsDateTime, 12));
end;

procedure TFUrelatorioRevisao.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
const
  ctPesquisa =
    'SELECT DISTINCT'#10+
    '  TIPO.TIPO || ''/'' || ESTINTOR.CAPACIDADE,'#10+
    '  ( SELECT'#10+
    '      COUNT(*)'#10+
    '    FROM'#10+
    '      ITENS_REVISAO ITE'#10+
    '      INNER JOIN ESTINTOR      EST ON (ITE.EXT_CODIGO = EST.CODIGO)'#10+
    '    WHERE'#10+
    '     (ITE.REV_CODIGO = REVISAO.REV_CODIGO) AND'#10+
    '     (EST.TIPO = TIPO.CODIGO) AND'#10+
    '      ((CAST(EST.ULTIMA_VISITA AS INTEGER) + 5) <= EXTRACT(YEAR FROM CURRENT_DATE))'#10+
    '  ) AS "TESTE",'#10+
    '  ( SELECT'#10+
    '      COUNT(*)'#10+
    '    FROM'#10+
    '      ITENS_REVISAO ITE'#10+
    '      INNER JOIN ESTINTOR      EST ON (ITE.EXT_CODIGO = EST.CODIGO)'#10+
    '    WHERE'#10+
    '     (ITE.REV_CODIGO = REVISAO.REV_CODIGO) AND'#10+
    '     (EST.TIPO = TIPO.CODIGO) AND'#10+
    '      ((CAST(EST.ULTIMA_VISITA AS INTEGER) + 5) > EXTRACT(YEAR FROM CURRENT_DATE))'#10+
    '  ) AS "RECARGA"'#10+
    'FROM'#10+
    '  REVISAO'#10+
    '  INNER JOIN CLIENTE ON (REVISAO.CLI_CODIGO = CLIENTE.CODIGO)'#10+
    '  INNER JOIN ITENS_REVISAO ON (ITENS_REVISAO.REV_CODIGO = REVISAO.REV_CODIGO)'#10+
    '  INNER JOIN ESTINTOR ON (ITENS_REVISAO.EXT_CODIGO = ESTINTOR.CODIGO)'#10+
    '  INNER JOIN TIPO ON (TIPO.CODIGO = ESTINTOR.TIPO)'#10+
    '  INNER JOIN FABRICANTE ON (FABRICANTE.CODIGO = ESTINTOR.FABRICANTE)'#10+
    'WHERE'#10+
    '  (REVISAO.REV_CODIGO IS NOT NULL) AND(REVISAO.CLI_CODIGO = %s)';

var
  Linha : String;
  T1, T2, T3 : integer;

begin

  T1 := 0;
  T2 := 0;
  T3 := 0;

  DM.select(Qry, Format(ctPesquisa, [VarToStr(FRelRevisao.dblPesquisaCliente.KeyValue)]));

  RLMemo1.Lines.Clear;

  linha := copy('Tipo/Capacidade                               ', 1, 20) +
           copy('Teste                                         ', 1, 20) +
           copy('Recarga                                       ', 1, 20) +
           copy('Total                                         ', 1, 20);

  RLMemo1.Lines.Add(linha);

  while not(Qry.Eof) do
  begin

    linha := copy(Qry.Fields[0].AsString + '                    ', 1, 20) +
             copy(Qry.Fields[1].AsString + '                    ', 1, 20) +
             copy(Qry.Fields[2].AsString + '                    ', 1, 20) +
             copy(IntToStr(Qry.Fields[1].AsInteger + Qry.Fields[2].AsInteger), 1, 20);

    T1 := T1 + Qry.Fields[1].AsInteger;
    T2 := T2 + Qry.Fields[2].AsInteger;
    T3 := T3 + Qry.Fields[1].AsInteger + Qry.Fields[2].AsInteger;

    RLMemo1.Lines.Add(linha);
    Qry.Next;

  end;

  RLMemo1.Lines.Add('');
  linha := copy('Total' + '                    ', 1, 20) +
           copy(IntToStr(T1) + '                    ', 1, 20) +
           copy(IntToStr(T2) + '                    ', 1, 20) +
           copy(IntToStr(T1 + T2), 1, 20);

  RLMemo1.Lines.Add(linha);

end;

procedure TFUrelatorioRevisao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if FRelRevisao.rgdtExibicao.ItemIndex = 1 then
  begin
    RLLabel8.Caption := 'Prox.';
    RLLabel9.Caption := 'Prox.';
  end else begin
    RLLabel8.Caption := 'Ult.';
    RLLabel9.Caption := 'Ult.';
  end;

end;

procedure TFUrelatorioRevisao.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Text : String;

begin

  with FRelRevisao do
  Text := pega_situacao(dsPesquisa.DataSet.FieldByName('REV_CODIGO').AsInteger,
                        dsPesquisa.DataSet.FieldByName('EXT_CODIGO').AsInteger);

  if (pos('MANUTENÇÃO', Text) <> 0) or
     (pos('MANUTENCAO', Text) <> 0) then
  begin

    RLBand3.Font.Color := clRed;
    RLBand3.Font.Style := [fsItalic];

  end else begin

    RLBand3.Font.Color := clBlack;
    RLBand3.Font.Style := [];

  end;

end;

end.
