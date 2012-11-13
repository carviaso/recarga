unit UDMRgs;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery;

type
  TDMRgs = class(TDataModule)
    SQLItensRecarga: TIBQuery;
    IBDataSet1: TIBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRgs: TDMRgs;

implementation

uses UdmGeral;

{$R *.dfm}

end.
