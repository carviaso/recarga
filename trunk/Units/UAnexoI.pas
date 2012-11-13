unit UAnexoI;

interface
  Uses
    UAnexoINMETROInfo,Classes;
Type
  TAnexoI = class(TAnexoINMETROInfo)
  private

  public
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

  end;
implementation


{ TAnexoI }

constructor TAnexoI.Create;
begin
  Item := TList.Create;
  inherited Create;
end;

end.
