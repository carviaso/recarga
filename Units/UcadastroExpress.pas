unit UcadastroExpress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ComCtrls, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, DBCtrls, Buttons, ExtCtrls, UPai;

type
//  TFCadExpress = class(TForm)
  TFCadExpress = class(TFPai)
    pnControle: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnFechar: TBitBtn;
    btnFirst: TBitBtn;
    btnPrior: TBitBtn;
    btnNext: TBitBtn;
    btnLast: TBitBtn;
    DBNavigator1: TDBNavigator;
    PageControl: TPageControl;
    tabPesquisa: TTabSheet;
    dbgCadastro: TDBGrid;
    GroupBox1: TGroupBox;
    tabCadastro: TTabSheet;
    BarraDeStatus: TStatusBar;
    SQLDataSet: TSQLDataSet;
    DSP: TDataSetProvider;
    CDS: TClientDataSet;
    dsCadastro: TDataSource;
    lbCamposParaPesquisa: TLabel;
    dblCamposPesquisa: TDBLookupComboBox;
    lbConteudoPesquisa: TLabel;
    edPesquisa: TEdit;
    stCampoBuscado: TStaticText;
    cdsTemp: TClientDataSet;
    dsTemp: TDataSource;
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Filtro(DataSet : TClientDataSet; valor :string);

  public
    { Public declarations }
  end;

var
  FCadExpress: TFCadExpress;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFCadExpress.dsCadastroDataChange(Sender: TObject; Field: TField);
begin

  btnNovo.Enabled     := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btnAlterar.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btnExcluir.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btnCancelar.Enabled := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  btnGravar.Enabled   := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  btnFechar.Enabled   := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);

end;

procedure TFCadExpress.btnNovoClick(Sender: TObject);
begin
  dsCadastro.DataSet.Insert;
end;

procedure TFCadExpress.btnAlterarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Edit;
end;

procedure TFCadExpress.btnGravarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Post;
  //(dsCadastro.DataSet as TClientDataSet).ApplyUpdates(-1);
end;

procedure TFCadExpress.btnCancelarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
end;

procedure TFCadExpress.btnExcluirClick(Sender: TObject);
begin
  dsCadastro.DataSet.Delete;
  (dsCadastro.DataSet as TClientDataSet).ApplyUpdates(-1);
end;

procedure TFCadExpress.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadExpress.Filtro(DataSet: TClientDataSet; valor: string);
var
  i, c, teste : integer;
  Filtro, dia, mes, ano, operador, comp_ini, comp_fim : string;

begin

  DataSet.Filtered := False;

  if Valor = '' then
  begin

    stCampoBuscado.Caption := '';
    Exit;

  end;

  if dblCamposPesquisa.KeyValue <> Null then
  begin

    cdsTemp.locate('NOME', dblCamposPesquisa.KeyValue, []);
    if cdsTemp.FieldByName('DATATYPE').AsString = 'integer' then
    begin

      if not(testaInteiro(valor)) then
        Exit;

      operador    := ' = ';
      comp_fim    := '';

    end else if cdsTemp.FieldByName('DATATYPE').AsString = 'float' then begin

      operador    := ' = ';
      comp_fim    := '';
  
    end else if cdsTemp.FieldByName('DATATYPE').AsString = 'data' then begin

      operador    := ' = ';
      comp_fim    := '';

      if length(edPesquisa.Text) <> 10 then
        exit;
  
    end else begin

      operador    := ' LIKE ';
      comp_fim    := '%';

    end;

    Filtro := '(' + dblCamposPesquisa.KeyValue + operador + QuotedStr(valor + comp_fim) + ')';
    DataSet.Filter   := Filtro;
    DataSet.Filtered := True;
    Exit;

  end;

  for i := 0 to (DataSet.Fields.Count -1) do
  begin

    operador    := ' LIKE ';
    comp_fim    := '%';

    if DataSet.Fields[i].DataType = ftString then
      valor := valor
    else if (DataSet.Fields[i].DataType in [ftInteger,ftFloat]) and (comp_ini = '') then
    begin

      if testaInteiro(valor) then
      begin
        valor       := valor;
        operador    := ' = ';
        comp_fim := '';
      end else
        continue;

    end else if DataSet.Fields[i].DataType = ftDateTime then
    begin

      if (not testaInteiro(valor)) and
         (length(valor) <> 10) then
        continue;

      dia := copy(valor, 1, 2);
      mes := copy(valor, 4, 2);
      ano := copy(valor, 6, 4);

      valor := mes + '/' + dia + '/' + ano;

    end;

    try

      Filtro := '(' + DataSet.Fields[i].FieldName + operador + QuotedStr(comp_ini + valor + comp_fim) + ')';

      DataSet.Filter   := Filtro;
      DataSet.Filtered := True;

    except;
    end;

    Filtro := '';

    if DataSet.IsEmpty then
    begin

      Continue;
      stCampoBuscado.Caption := '';

    end else begin

      if comp_ini = '' then
        stCampoBuscado.Caption := ' ' + DataSet.Fields[i].DisplayName + ': iniciado com ' + valor + ' '
      else
        stCampoBuscado.Caption := ' ' + DataSet.Fields[i].DisplayName + ': contendo com ' + valor + ' ';

      Break;

    end;

  end; // For i := 0 to (
end;

procedure TFCadExpress.edPesquisaChange(Sender: TObject);
begin
  Filtro((dsCadastro.DataSet as TClientDataSet), edPesquisa.Text);

end;

procedure TFCadExpress.FormCreate(Sender: TObject);
begin
  if SQLDataSet.CommandText <> '' then
    cds.Open;
end;

procedure TFCadExpress.CDSAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin

  for i := 0 to (dbgCadastro.DataSource.DataSet.FieldCount - 1) do
  begin

    if dbgCadastro.DataSource.DataSet.Fields[i].DataType = ftFloat then
    begin
      TCurrencyField(dbgCadastro.DataSource.DataSet.Fields[i]).DisplayFormat := '#,##0.00';
      TCurrencyField(dbgCadastro.DataSource.DataSet.Fields[i]).DisplayWidth  := 100;
    end;

    if dbgCadastro.DataSource.DataSet.Fields[i].DataType = ftdateTime then
    begin
      TCurrencyField(dbgCadastro.DataSource.DataSet.Fields[i]).DisplayFormat := 'dd/mm/yy';
      TCurrencyField(dbgCadastro.DataSource.DataSet.Fields[i]).DisplayWidth  := 50;
    end;
  end;

end;

end.
