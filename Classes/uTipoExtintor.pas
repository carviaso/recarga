unit uTipoExtintor;

interface

uses
  uTipos;

type
  TTipoExtintor = Class
  private
    id : Integer;
    descricao : String;
    TipoINMETRO : TTipoINMETRO;
  public
    property iId : integer read id write id;
    property sDescricao : String read descricao write descricao;
    property tiTipoINMETRO : TTipoINMETRO read TipoINMETRO write TipoINMETRO;
  end;
implementation

end.
