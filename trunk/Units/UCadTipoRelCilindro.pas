unit UCadTipoRelCilindro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFCadTipoRelCilindro = class(TFCadastro)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroLIMITE_ROSCA: TIBStringField;
    cdsCadastroCORROSAO: TIBStringField;
    cdsCadastroROSCA: TIBStringField;
    cdsCadastroOBS1: TIBStringField;
    cdsCadastroOBS2: TBlobField;
    Label1: TLabel;
    DBText1: TDBText;
    edDescricao: TDBEdit;
    Label3: TLabel;
    cbAtivo: TDBCheckBox;
    cdsCadastroDESCRICAO: TIBStringField;
    cdsCadastroATIVO: TIBStringField;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    edObs1: TDBEdit;
    Label7: TLabel;
    cbLimiteRosca: TDBCheckBox;
    cbCorrocao: TDBCheckBox;
    cbRosca: TDBCheckBox;
    rtObs2: TDBRichEdit;
    cbReprovado: TDBCheckBox;
    edMotivoReprovacao: TDBEdit;
    Label2: TLabel;
    cdsCadastroREPROVADO: TIBStringField;
    cdsCadastroMOTIVO_REPROVACAO: TIBStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCadastroBeforePost(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTipoRelCilindro: TFCadTipoRelCilindro;

implementation

uses UdmGeral, UdmPesquisa, UFsuper;

{$R *.dfm}

procedure TFCadTipoRelCilindro.btnNovoClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 1;
  edDescricao.SetFocus;
  cbAtivo.Field.AsString := 'N';
  cbLimiteRosca.Field.AsString := 'N';
  cbCorrocao.Field.AsString := 'N';
  cbRosca.Field.AsString := 'N';

end;

procedure TFCadTipoRelCilindro.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 1;
end;

procedure TFCadTipoRelCilindro.FormShow(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 1;

end;

procedure TFCadTipoRelCilindro.cdsCadastroBeforePost(DataSet: TDataSet);
begin

  if DataSet.State = dsinsert then
    DataSet.FieldByName('CODIGO').AsInteger := pegaGenerator('TIPO_REL_CILINDRO_CODIGO_GEN');

  inherited;

end;

procedure TFCadTipoRelCilindro.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;
end;

procedure TFCadTipoRelCilindro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DMPesquisa.QTipoRelCilindro.Close;
  DMPesquisa.QTipoRelCilindro.Open;
end;

end.
