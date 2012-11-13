unit UdmPesquisa;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr,
  IBCustomDataSet, IBTable, IBQuery;

type
  TDMPesquisa = class(TDataModule)
    cdsUsuario: TIBTable;
    cdsAcesso: TIBTable;
    cdsGrupo: TIBTable;
    cdsCliente: TIBTable;
    cdsPressao: TIBTable;
    cdsUnidade: TIBTable;
    cdsEstintor: TIBTable;
    cdsRecarga: TIBTable;
    cdsTipo: TIBTable;
    cdsFabricante: TIBTable;
    cdsMotivo: TIBTable;
    cdsEmpresa: TIBTable;
    cdsPecas: TIBTable;
    QClientesComExtintor: TIBQuery;
    QCliente: TIBQuery;
    QTipoRelCilindro: TIBQuery;
    QClienteGNV: TIBQuery;
    QServico: TIBTable;
    QMercadoria: TIBTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPesquisa: TDMPesquisa;

implementation

uses UdmGeral;

{$R *.dfm}

procedure TDMPesquisa.DataModuleCreate(Sender: TObject);
begin

  cdsUsuario.Open;
  cdsUsuario.Last;
  cdsUsuario.First;

  cdsAcesso.Open;
  cdsAcesso.Last;
  cdsAcesso.First;

  cdsGrupo.Open;
  cdsGrupo.Last;
  cdsGrupo.First;

  cdsCliente.Open;
  cdsCliente.Last;
  cdsCliente.First;

  QCliente.Open;
  QCliente.Last;
  QCliente.First;

  cdsPressao.Open;
  cdsPressao.Last;
  cdsPressao.First;

  cdsUnidade.Open;
  cdsUnidade.Last;
  cdsUnidade.First;
{
  cdsEstintor.Open;
  cdsEstintor.Last;
  cdsEstintor.First;
}
  cdsRecarga.Open;
  cdsRecarga.Last;
  cdsRecarga.First;

  cdsTipo.Open;
  cdsTipo.Last;
  cdsTipo.First;

  cdsFabricante.Open;
  cdsFabricante.Last;
  cdsFabricante.First;

  cdsMotivo.Open;
  cdsMotivo.Last;
  cdsMotivo.First;

  cdsEmpresa.Open;
  cdsEmpresa.Last;
  cdsEmpresa.First;

  cdsPecas.Open;
  cdsPecas.Last;
  cdsPecas.First;

  QMercadoria.Open;
  QMercadoria.Last;
  QMercadoria.First;

  QServico.Open;
  QServico.Last;
  QServico.First;

  QClientesComExtintor.Open;
  QClientesComExtintor.Last;
  QClientesComExtintor.First;

  QTipoRelCilindro.Open;
  QTipoRelCilindro.Last;
  QTipoRelCilindro.First;

  QClienteGNV.Open;
  QClienteGNV.Last;
  QClienteGNV.First;

end;

end.
