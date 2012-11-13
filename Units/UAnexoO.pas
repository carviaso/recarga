unit UAnexoO;

interface

uses UAnexoOItens, Classes, Grids, Forms, UAnexoINMETROInfo;

type
  TAnexoO = class(TAnexoINMETROInfo)
    DataIni: String;
    DataFim: String;
    RegistroDCF: String;
    SeqInicial: String;
    SeqFinal: String;
    SeqSelosEstoqIni: String;
    SeqSelosEstoqFim: String;
    QtdSelosInutilizados: String;
    Item: TList; //Array[0..200] of TRelatorioOrdemServicoItem;
    constructor Create; 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ TRelatorioOrdemServico }

constructor TAnexoO.Create;
var
  i : Integer;
begin
  Item := TList.Create;
  inherited Create;
end;

end.
