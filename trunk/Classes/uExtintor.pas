unit uExtintor;

interface

uses
  uTipoExtintor, SysUtils, uTipos;

type
  TExtintor = Class
  private
    Id : integer;
    Tipo : TTipoExtintor;
    Capacidade : integer;
    AnoFabricacao : integer;
    Fabricante : TFabricante;
    NumeroSerie : string;
    Tara : double;
    NumeroProjeto : string;
    ET : double;
    EP : double;

    ultimaVisita : TDateTime;
    selo : string;
    nivelManutencao : TNivelManutencao;
    pintura : boolean;
    pesoCheio : double;
    pesoVazio : double;

  public
    property pId : integer read Id write Id;
    property pTipo : TTipoExtintor read Tipo write Tipo;
    property pCapacidade : integer read Capacidade write Capacidade;
    property pAnoFabricacao : integer read AnoFabricacao write AnoFabricacao;
    property pFabricante : TFabricante read Fabricante write Fabricante;
    property pNumeroSerie : string read NumeroSerie write NumeroSerie;
    property pTara : double read Tara write Tara;
    property pNumeroProjeto : string read NumeroProjeto write NumeroProjeto;
    property pET : double read pET write pET;
    property pEP : double read pEP write pEP;
  end;
implementation

end.
