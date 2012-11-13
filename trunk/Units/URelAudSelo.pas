unit URelAudSelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, DB, IBCustomDataSet, IBQuery, Buttons, ExtCtrls,
  Grids, DBGrids, Gauges, ComCtrls;

type
  TFRelAudSelo = class(TFPai)
    Label1: TLabel;
    edSeloini: TEdit;
    edSeloFim: TEdit;
    Label2: TLabel;
    QAux: TIBQuery;
    Panel1: TPanel;
    btnConsultar: TBitBtn;
    DBGrid1: TDBGrid;
    dsSelo: TDataSource;
    Gauge1: TGauge;
    PrintDialog1: TPrintDialog;
    memo1: TRichEdit;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure edSeloiniKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelAudSelo: TFRelAudSelo;
  I,cont, Inicial, final : integer;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFRelAudSelo.btnConsultarClick(Sender: TObject);
const
  ctListaSelo =
    'SELECT'#10+
    '  CAST(SELO AS INTEGER)SELO'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    'WHERE'#10+
    '  SELO BETWEEN ''%s'' AND ''%s'''#10+
    'ORDER BY'#10+
    '  SELO';
begin
  if edSeloini.Text = '' then
  begin
    alert('O intervalo inicial do selo deve ser informado!');
    edSeloini.SetFocus;
    exit;
  end;

  if edSeloFim.Text = '' then
  begin
    alert('O intervalo final do selo deve ser informado!');
    edSeloFim.SetFocus;
    exit;
  end;

  inicial := StrToInt(edSeloini.Text);
  final   := StrToInt(edSeloFim.Text);

  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add(Format(ctListaSelo,[edSeloIni.Text, edSeloFim.Text]));
  QAux.Open;
  QAux.Last;
  QAux.First;

  // iniciando informaçoes do loop
  memo1.Lines.Clear;
  cont := 0;
  gauge1.Progress := 0;
  gauge1.MaxValue := QAux.RecordCount;
  for i := inicial to final do
  begin
    if i = Qaux.FieldByName('SELO').AsInteger then
      QAux.Next
    else begin
      memo1.Lines.Add('Selo ' + IntToStr(i) + ' não encontrado');
      inc(cont);
    end;
    gauge1.Progress := gauge1.Progress + 1;
  end;

  memo1.Lines.Add('');
  memo1.Lines.Add('A quantidade de selos ausentes é ' + IntToStr(cont));

  //memo1.

  inherited;

end;

procedure TFRelAudSelo.edSeloiniKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in['0'..'9',#8])then
    Key := #0
end;

procedure TFRelAudSelo.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if PrintDialog1.Execute then
    memo1.Print(edSeloini.Text + ' a ' + edSeloFim.Text);  
  //Memo1.
end;

procedure TFRelAudSelo.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
