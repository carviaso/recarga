unit UdmPesquisapas;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDataModule2 = class(TDataModule)
    sqlPesquisa: TSQLDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
