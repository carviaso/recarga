unit USql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFSQL = class(TForm)
    RichEdit1: TRichEdit;
    procedure RichEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSQL: TFSQL;

implementation

uses UFsuper;

{$R *.dfm}

procedure TFSQL.RichEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    execDml(RichEdit1.Text);
  end else if key = vk_delete then
    Close;
end;

end.
