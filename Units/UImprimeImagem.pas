unit UImprimeImagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFImprimeImagem = class(TForm)
    RLReport1: TRLReport;
    RLImage1: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImprimeImagem: TFImprimeImagem;

implementation

{$R *.dfm}

end.
