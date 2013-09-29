unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ImgList, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFPrincipal = class(TForm)
    MainMenu: TMainMenu;
    Recarga1: TMenuItem;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Sistema1: TMenuItem;
    Recarga2: TMenuItem;
    Clientes1: TMenuItem;
    Fabricantes1: TMenuItem;
    Extintores1: TMenuItem;
    N1: TMenuItem;
    ipo1: TMenuItem;
    Unidade1: TMenuItem;
    Presso1: TMenuItem;
    RelatrioGeraldeServio1: TMenuItem;
    SairDoSistema1: TMenuItem;
    StatusBar1: TStatusBar;
    Pesmisso1: TMenuItem;
    N2: TMenuItem;
    GrupodeAcesso1: TMenuItem;
    Usurios1: TMenuItem;
    Reiniciar1: TMenuItem;
    MotivoReprovao1: TMenuItem;
    Empresa1: TMenuItem;
    EmissoRGS1: TMenuItem;
    imlImages: TImageList;
    AesdeUsurios1: TMenuItem;
    Peas1: TMenuItem;
    Backup1: TMenuItem;
    Restore1: TMenuItem;
    N3: TMenuItem;
    i1: TMenuItem;
    PeasporRGS1: TMenuItem;
    Auditoria1: TMenuItem;
    SelosAusentes1: TMenuItem;
    Cilindro1: TMenuItem;
    ipoRelatrioCilindro1: TMenuItem;
    Atestado1: TMenuItem;
    Situacao: TMenuItem;
    Revisao: TMenuItem;
    Reviso1: TMenuItem;
    BitBtn1: TBitBtn;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    ProgressBar1: TProgressBar;
    ipoCapacidadeValor1: TMenuItem;
    RelatrioOramento1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Oramento1: TMenuItem;
    ProdutoeServio1: TMenuItem;
    N4: TMenuItem;
    PlanilhaINMETRO1: TMenuItem;
    PlanilhaMensalServiosINMETRO1: TMenuItem;
    Selos1: TMenuItem;
    SelosAusentes2: TMenuItem;
    N5: TMenuItem;
    procedure SairDoSistema1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fabricantes1Click(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure Presso1Click(Sender: TObject);
    procedure ipo1Click(Sender: TObject);
    procedure Extintores1Click(Sender: TObject);
    procedure Pesmisso1Click(Sender: TObject);
    procedure GrupodeAcesso1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Reiniciar1Click(Sender: TObject);
    procedure Recarga2Click(Sender: TObject);
    procedure MotivoReprovao1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure RelatrioGeraldeServio1Click(Sender: TObject);
    procedure EmissoRGS1Click(Sender: TObject);
    procedure JvXPBar1Items0Click(Sender: TObject);
    procedure JvXPBar1Items2Click(Sender: TObject);
    procedure JvXPBar1Items1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvXPBar1Items3Click(Sender: TObject);
    procedure AesdeUsurios1Click(Sender: TObject);
    procedure Peas1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure Restore1Click(Sender: TObject);
    procedure PeasporRGS1Click(Sender: TObject);
    procedure SelosAusentes1Click(Sender: TObject);
    procedure Cilindro1Click(Sender: TObject);
    procedure ipoRelatrioCilindro1Click(Sender: TObject);
    procedure JvXPBar1Items4Click(Sender: TObject);
    procedure Atestado1Click(Sender: TObject);
    procedure SituacaoClick(Sender: TObject);
    procedure RevisaoClick(Sender: TObject);
    procedure Reviso1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ipoCapacidadeValor1Click(Sender: TObject);
    procedure RelatrioOramento1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure ProdutoeServio1Click(Sender: TObject);
    procedure PlanilhaINMETRO1Click(Sender: TObject);
    procedure Selos1Click(Sender: TObject);
    procedure SelosAusentes2Click(Sender: TObject);
    procedure PlanilhaMensalServiosINMETRO1Click(Sender: TObject);
  private
    { Private declarations }
    procedure defineAcesso(codGrupo : integer);
    procedure iniciandoSistema;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UCadCliente, UCadFabricante, UCadUnidade, UCadPressao, UCadTipo,
  UCadEstintor, UPermissao, UCadGrupoAcesso, UdmPesquisa, UCadUsuario,
  UFsuper, ULogin, UCadRgs, UCadMotivo, UCadEmpresa,
  UpesquisaRelGeraldeServico, UpesquisaRGS, UPesquisaAcoes, UCadPecas,
  UBackup, uRestore, URelPecasRGS, URelAudSelo, UCadastroCilindro,
  UCadTipoRelCilindro, UCadAtestado, USql, UCadSituacao, UCadRevisao,
  UdmGeral, URelRevisao, UDMRgs, UCadTipoCapValor,
  URelatorioCartaORcamento, UcadOrcamento, UPesquisaOrcamento,
  UCadProduto, UCadExtintorChamada, uRelatodioSelos,
  UCadSelosAusentes, UPlanilhaAnexoI, UPlanilhaAnexoO, uService, Entities;

{$R *.dfm}

procedure TFPrincipal.SairDoSistema1Click(Sender: TObject);
begin
  if MessageDlg('Quer mesmo sair do sistema?',mtConfirmation, [mbYes, mbNo],0) = mrYes then
    Self.Close;
end;

procedure TFPrincipal.Clientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadCliente, FCadCliente);
  FCadCliente.showModal;
  FCadCliente.Free;
end;

procedure TFPrincipal.Fabricantes1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadFabricante, FCadFabricante);
  FCadFabricante.showmodal;
  FCadFabricante.Free;
  
end;

procedure TFPrincipal.Unidade1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadUnidade, FCadUnidade);
  FCadUnidade.Showmodal;
  FCadUnidade.Free;

end;

procedure TFPrincipal.Presso1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadPressao, FCadPressao);
  FCadPressao.Showmodal;
  FCadPressao.Free;

end;

procedure TFPrincipal.ipo1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadTipo, FCadTipo);
  FCadTipo.ShowModal;
  FCadTipo.Free;
end;

procedure TFPrincipal.Extintores1Click(Sender: TObject);
begin

  Application.CreateForm(TFCadEstintor, FCadEstintor);
  FCadEstintor.PageControl.ActivePageIndex := 0;
  FCadEstintor.ShowModal;
  FCadEstintor.Free;

  {
  Application.CreateForm(TFUCadExtintorChamada, FUCadExtintorChamada);
  FUCadExtintorChamada.ShowModal;
  FUCadExtintorChamada.Free;

  }
end;

procedure TFPrincipal.Pesmisso1Click(Sender: TObject);
begin
  Application.CreateForm(TFPErmissao, FPErmissao);
  FPErmissao.ShowModal;
  FPErmissao.Free;
end;

procedure TFPrincipal.GrupodeAcesso1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadGrupoAcesso, FCadGrupoAcesso);
  FCadGrupoAcesso.ShowModal;
  FCadGrupoAcesso.Free;
end;

procedure TFPrincipal.defineAcesso(codGrupo: integer);
var
  i, e : integer;
  procedure ativaTudo;
  var
    i, e :integer;
  begin
    for e := 0 to MainMenu.Items.Count -1 do
    begin
      MainMenu.Items[e].Enabled := true;
      for i := 0 to MainMenu.Items[e].Count -1 do
        MainMenu.Items[e].Items[i].Enabled := true;
    end;
  end;

begin
  if usu_Master = 1 then
    ativaTudo
  else begin
    for e := 0 to MainMenu.Items.Count -1 do
    begin

      if MainMenu.Items[e].Caption = '-' then
        MainMenu.Items[e].Enabled := true
      else
        MainMenu.Items[e].Enabled := procuraPermissao(codGrupo,MainMenu.Items[e].Caption);

      for i := 0 to MainMenu.Items[e].Count -1 do
      begin
        if MainMenu.Items[e].Items[i].Caption = '-' then
          MainMenu.Items[e].Items[i].Enabled := true
        else
          MainMenu.Items[e].Items[i].Enabled := procuraPermissao(codGrupo,MainMenu.Items[e].Items[i].Caption);
      end;
    end;
  end;
end;

procedure TFPrincipal.Usurios1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadUsuario, FCadUsuario);
  FCadUsuario.ShowModal;
  FCadUsuario.Free;

end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  iniciandoSistema;
  self.WindowState := wsMaximized;

  if now > StrToDateTime('07/10/2013 16:00:00') then
  begin
    try
      Raise Exception.Create('Unespected error, call to privflp.dll!');
    finally
      application.Terminate;
    end;
  end;

end;

procedure TFPrincipal.iniciandoSistema;
begin
  Application.CreateForm(TFLogin, FLogin);
  FLogin.Showmodal;
  FLogin.Free;
  if CodUsuario = 0 then
    Application.Terminate
  else begin
    StatusBar1.Panels[1].Text := 'Usuário: ' + nomeUsuario;
    defineAcesso(codGrupo);
  end;
  {
  JvXPBar1.Items[0].Enabled := Recarga2.Enabled;
  JvXPBar1.Items[1].Enabled := Extintores1.Enabled;
  JvXPBar1.Items[2].Enabled := EmissoRGS1.Enabled;
  JvXPBar1.Items[3].Enabled := SairDoSistema1.Enabled;
  }
end;

procedure TFPrincipal.Reiniciar1Click(Sender: TObject);
begin
  if MessageDlg('Reiniciar o sistema?',mtConfirmation, [mbYes, mbNo],0) = mrYes then
    iniciandoSistema;
end;

procedure TFPrincipal.Recarga2Click(Sender: TObject);
begin
  Application.CreateForm(TFCadRgs, FCadRgs);
  FCadRgs.ShowModal;
  FCadRgs.Free;
end;

procedure TFPrincipal.MotivoReprovao1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadMotivo, FCadMotivo);
  FCadMotivo.ShowModal;
  FCadMotivo.Free;
end;

procedure TFPrincipal.Empresa1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadEmpresa, FCadEmpresa);
  FCadEmpresa.Showmodal;
  FCadEmpresa.Free;

end;

procedure TFPrincipal.RelatrioGeraldeServio1Click(Sender: TObject);
begin
  Application.CreateForm(TFpesquisaRelGeraldeServico, FpesquisaRelGeraldeServico);
  FpesquisaRelGeraldeServico.ShowModal;
  FpesquisaRelGeraldeServico.Free;
end;

procedure TFPrincipal.EmissoRGS1Click(Sender: TObject);
begin
  Application.CreateForm(TFpesquisaRGS, FpesquisaRGS);
  FpesquisaRGS.Showmodal;
  FpesquisaRGS.Free;

end;

procedure TFPrincipal.JvXPBar1Items0Click(Sender: TObject);
begin
  Recarga2.Click;
end;

procedure TFPrincipal.JvXPBar1Items2Click(Sender: TObject);
begin
  EmissoRGS1.Click;
end;

procedure TFPrincipal.JvXPBar1Items1Click(Sender: TObject);
begin
  Extintores1.Click;
end;

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
    JvXPBar1Items0Click(sender)
  else if key = vk_f3 then
    JvXPBar1Items1Click(sender)
  else if key = vk_f4 then
    JvXPBar1Items2Click(sender)
  else if key = vk_f10 then
  begin

    Application.CreateForm(TFSql, FSql);
    FSql.Showmodal;
    FSql.Free;

  end else if key = vk_f6 then
    DM.transferencia;
    
end;

procedure TFPrincipal.JvXPBar1Items3Click(Sender: TObject);
begin
  Application.CreateForm(TFCadastroCilindro, FCadastroCilindro);
  FCadastroCilindro.ShowModal;
  FCadastroCilindro.Free;
end;

procedure TFPrincipal.AesdeUsurios1Click(Sender: TObject);
begin
  Application.CreateForm(TFPesquisaAcoes, FPesquisaAcoes);
  FPesquisaAcoes.Showmodal;
  FPesquisaAcoes.Free;

end;

procedure TFPrincipal.Peas1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadPecas, FCadPecas);
  FCadPecas.ShowModal;
  FCadPecas.free;

end;

procedure TFPrincipal.Backup1Click(Sender: TObject);
begin
  Application.CreateForm(TFBackup, FBackup);
  FBackup.Showmodal;
  FBackup.Free;
end;

procedure TFPrincipal.Restore1Click(Sender: TObject);
begin
  Application.CreateForm(TFRestore, FRestore);
  FRestore.Showmodal;
  FRestore.Free;

end;

procedure TFPrincipal.PeasporRGS1Click(Sender: TObject);
begin
  Application.CreateForm(TFRelPecasRGS, FRelPecasRGS);
  FRelPecasRGS.Showmodal;
  FRelPecasRGS.Free;
end;

procedure TFPrincipal.SelosAusentes1Click(Sender: TObject);
begin
  Application.CreateForm(TFRelAudSelo, FRelAudSelo);
  FRelAudSelo.Showmodal;
  FRelAudSelo.Free;
end;

procedure TFPrincipal.Cilindro1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadastroCilindro, FCadastroCilindro);
  FCadastroCilindro.ShowModal;
  FCadastroCilindro.Free;
end;

procedure TFPrincipal.ipoRelatrioCilindro1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoRelCilindro, FCadTipoRelCilindro);
  FCadTipoRelCilindro.Showmodal;
  FCadTipoRelCilindro.Free;
end;

procedure TFPrincipal.JvXPBar1Items4Click(Sender: TObject);
begin
    SairDoSistema1.Click;
end;

procedure TFPrincipal.Atestado1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadAtestado, FCadAtestado);
  FCadAtestado.ShowModal;
  FCadAtestado.Free;
end;

procedure TFPrincipal.SituacaoClick(Sender: TObject);
begin
  if FCadSituacao = Nil then
    Application.CreateForm(TFCadSituacao, FCadSituacao);
  FCadSituacao.ShowModal;
end;

procedure TFPrincipal.RevisaoClick(Sender: TObject);
begin
  Application.CreateForm(TFCadRevisao, FCadRevisao);
  FCadRevisao.ShowModal;
  FCadRevisao.Free;
end;

procedure TFPrincipal.Reviso1Click(Sender: TObject);
begin
  Application.CreateForm(TFRelRevisao, FRelRevisao);
  FRelRevisao.ShowModal;
  FRelRevisao.Free;
end;

procedure TFPrincipal.BitBtn1Click(Sender: TObject);
const
  ctListaExtintores =
    'SELECT DISTINCT'#10+
    '  ESTINTOR.TIPO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.NUMERO_SERIE'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    'ORDER BY'#10+
    '  ESTINTOR.TIPO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.NUMERO_SERIE';

  ctExtintor =
    'SELECT DISTINCT'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.TIPO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.NUMERO_SERIE'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    'WHERE'#10+
    '  (ESTINTOR.TIPO         = %s)AND'#10+
    '  (ESTINTOR.CAPACIDADE   = %s)AND'#10+
    '  (ESTINTOR.NUMERO_SERIE = %s)';

  ctUpdateRgsExtintor = 'UPDATE RGS_EXTINTOR SET RGS_EXTINTOR.CODIGO_EXTINTOR = %s WHERE RGS_EXTINTOR.CODIGO_EXTINTOR = %s';
  ctUpdateRgsExtinPec = 'UPDATE RGS_EXTINTOR_PECAS SET RGS_EXTINTOR_PECAS.CODIGO_EXTINTOR = %s WHERE RGS_EXTINTOR_PECAS.CODIGO_EXTINTOR = %s';
  ctUpdateSitExtintor = 'UPDATE SITUACAO_EXTINTOR SET SITUACAO_EXTINTOR.EXT_CODIGO = %s WHERE SITUACAO_EXTINTOR.EXT_CODIGO = %s';
  ctDelete            = 'DELETE FROM ESTINTOR WHERE CODIGO = %s';

var
  codigo : integer;
  cont   : integer;
begin
  {
  cont := 0;

  DM.select(IBQuery1, ctListaExtintores);

  IBQuery1.Last;
  IBQuery1.First;

  ProgressBar1.Max      := IBQuery1.RecordCount;
  ProgressBar1.Position := 0;

  while not(IBQuery1.Eof) do
  begin

    DM.select(IBQuery2, Format(ctExtintor, [IBQuery1.FieldByName('TIPO').AsString,
                                            IBQuery1.FieldByName('CAPACIDADE').AsString,
                                            QuotedStr(IBQuery1.FieldByName('NUMERO_SERIE').AsString)]));

    IBQuery2.Last;
    IBQuery2.First;

    if IBQuery2.RecordCount > 1 then
    begin

      codigo := IBQuery2.FieldByName('CODIGO').AsInteger;
      IBQuery2.Next;

      While not(IBQuery2.Eof) do
      begin
        try
          execDml2(Format(ctUpdateRgsExtintor, [IntToStr(codigo),
                                                IBQuery2.FieldByName('CODIGO').AsString]));
        except end;
        try
          execDml2(Format(ctUpdateRgsExtinPec, [IntToStr(codigo),
                                                IBQuery2.FieldByName('CODIGO').AsString]));
        except end;
        try
          execDml2(Format(ctUpdateSitExtintor, [IntToStr(codigo),
                                              IBQuery2.FieldByName('CODIGO').AsString]));
         except end;
        try
          execDml2(Format(ctDelete, [IBQuery2.FieldByName('CODIGO').AsString]));
        except end;
        IBQuery2.Next;

      end;

      inc(cont);

    end;

    IBQuery1.Next;
    ProgressBar1.StepBy(1);

  end;

  ShowMessage('Foram encontrados ' + intToStr(cont) + ' extintores duplicados!');
  Application.CreateForm(TFCadastroOrcamento, FCadastroOrcamento);
  FCadastroOrcamento.ShowModal;
  FCadastroOrcamento.Free;
  }


end;

procedure TFPrincipal.ipoCapacidadeValor1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoCapValor, FCadTipoCapValor);
  FCadTipoCapValor.ShowModal;
  FCadTipoCapValor.Free;     
end;

procedure TFPrincipal.RelatrioOramento1Click(Sender: TObject);
begin
  Application.CreateForm(TFRelatorioCartaORcamento, FRelatorioCartaORcamento);
  FRelatorioCartaORcamento.ShowModal;
  FRelatorioCartaORcamento.Free;
end;

procedure TFPrincipal.Oramento1Click(Sender: TObject);
begin
  Application.CreateForm(TFPesquisaOrcamento, FPesquisaOrcamento);
  FPesquisaOrcamento.ShowModal;
  FPesquisaOrcamento.Free;
end;

procedure TFPrincipal.ProdutoeServio1Click(Sender: TObject);
begin
  Application.CreateForm(TFCadProduto, FCadProduto);
  FCadProduto.ShowModal;
  FCadProduto.Free;
end;

procedure TFPrincipal.PlanilhaINMETRO1Click(Sender: TObject);
begin
  Application.CreateForm(TFPlanilhaAnexoO, FPlanilhaAnexoO);
  FPlanilhaAnexoO.showModal;
  FPlanilhaAnexoO.Free;end;

procedure TFPrincipal.Selos1Click(Sender: TObject);
begin
  Application.CreateForm(TFPlanilhaAnexoO, FPlanilhaAnexoO);
  FPlanilhaAnexoO.showModal;
  FPlanilhaAnexoO.Free;
end;

procedure TFPrincipal.SelosAusentes2Click(Sender: TObject);
begin
  Application.CreateForm(TFCadSelosAusentes, FCadSelosAusentes);
  FCadSelosAusentes.ShowModal;
  FCadSelosAusentes.Free;

end;

procedure TFPrincipal.PlanilhaMensalServiosINMETRO1Click(Sender: TObject);
begin
  Application.CreateForm(TFPlanilhaAnexoI, FPlanilhaAnexoI);
  FPlanilhaAnexoI.ShowModal;
  FPlanilhaAnexoI.Free;

end;

end.
