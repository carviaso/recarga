unit UPesquisaAcoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, Buttons, Mask, ToolEdit, DBCtrls, DB,
  IBCustomDataSet, IBQuery, Grids, DBGrids, RXDBCtrl,
  RLReport, RLFilters, RLPDFFilter;

type
  TFPesquisaAcoes = class(TFPai)
    dbgPesquisa: TRxDBGrid;
    QPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    QTelas: TIBQuery;
    dsTelas: TDataSource;
    dblTelas: TDBLookupComboBox;
    QUsuarios: TIBQuery;
    dsUsuario: TDataSource;
    dblUsuario: TDBLookupComboBox;
    Telas: TLabel;
    Label1: TLabel;
    edDataIni: TDateEdit;
    edDataFim: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnpesquisa: TBitBtn;
    SaveDialog: TSaveDialog;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlEmpresa: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    BitBtn1: TBitBtn;
    RLPDFFilter1: TRLPDFFilter;
    RLSystemInfo1: TRLSystemInfo;
    procedure btnpesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblTelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaAcoes: TFPesquisaAcoes;

implementation

uses UdmGeral, Math, UFsuper, UdmPesquisa;

{$R *.dfm}

procedure TFPesquisaAcoes.btnpesquisaClick(Sender: TObject);
const
  ctPesquisa = 'SELECT * FROM ACOES WHERE %s';
var
  Filtro : string;
begin
  if edDataIni.Date <> 0 then
    Filtro := Filtro + '(DATA_HORA >= '''+ FormatDateTime('mm/dd/yyyy 00:00:00',edDataIni.Date) +''')';

  if edDataFim.Date <> 0 then
    Filtro := Filtro + 'AND(DATA_HORA <= '''+ FormatDateTime('mm/dd/yyyy 23:59:59',edDataFim.Date) +''')';

  if dblTelas.KeyValue <> null then
    Filtro := Filtro + 'AND(TELA = '''+ VarToStr(dblTelas.KeyValue) +''')';

  if dblUsuario.KeyValue <> null then
    Filtro := Filtro + 'AND(USUARIO = '''+ VarToStr(dblUsuario.KeyValue) +''')';


  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(Format(ctPesquisa,[Filtro]));
  QPesquisa.Open;
  inherited;

end;

procedure TFPesquisaAcoes.FormCreate(Sender: TObject);
begin
  inherited;
  dsTelas.DataSet.Open;
  dsUsuario.DataSet.Open;
  edDataIni.Date := now;
  edDataFim.Date := now;
  btnpesquisa.Click;
end;

procedure TFPesquisaAcoes.dblTelasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then begin
    TDBLookupComboBox(sender).ListSource.DataSet.Close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
  end;
end;

procedure TFPesquisaAcoes.dbgPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgPesquisa.DataSource.DataSet.RecNo mod 2 = 0 then
    dbgPesquisa.Canvas.Brush.Color := clMoneyGreen
  else
    dbgPesquisa.Canvas.Brush.Color := clWhite;

  dbgPesquisa.Canvas.Font.Color := clBlack;
  dbgPesquisa.DefaultDrawDataCell( Rect, Column.Field, State);

end;

procedure TFPesquisaAcoes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  rlEmpresa.Caption := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
  RLReport1.Preview;
end;

end.
