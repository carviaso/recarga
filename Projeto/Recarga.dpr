program Recarga;

uses
  TLHelp32,
  ShellApi,
  SYSUtils,
  Forms,
  Dialogs,
  controls,
  windows,
  UPrincipal in '..\units\UPrincipal.pas' {FPrincipal},
  UPai in '..\units\UPai.pas' {FPai},
  UCadastro in '..\units\UCadastro.pas' {FCadastro},
  UFsuper in '..\units\UFsuper.pas',
  UdmGeral in '..\units\UdmGeral.pas' {DM: TDataModule},
  UCadCliente in '..\units\UCadCliente.pas' {FCadCliente},
  UCadFabricante in '..\units\UCadFabricante.pas' {FCadFabricante},
  UCadUnidade in '..\units\UCadUnidade.pas' {FCadUnidade},
  UCadPressao in '..\units\UCadPressao.pas' {FCadPressao},
  UCadEstintor in '..\units\UCadEstintor.pas' {FCadEstintor},
  UdmPesquisa in '..\units\UdmPesquisa.pas' {DMPesquisa: TDataModule},
  UCadTipo in '..\units\UCadTipo.pas' {FCadTipo},
  UPermissao in '..\units\UPermissao.pas' {FPErmissao},
  UCadGrupoAcesso in '..\units\UCadGrupoAcesso.pas' {FCadGrupoAcesso},
  UCadUsuario in '..\units\UCadUsuario.pas' {FCadUsuario},
  ULogin in '..\units\ULogin.pas' {FLogin},
  UCadRgs in '..\units\UCadRgs.pas' {FCadRgs},
  UPesquisaExtintor in '..\units\UPesquisaExtintor.pas' {FPesquisaExtintor},
  UCadMotivo in '..\units\UCadMotivo.pas' {FCadMotivo},
  UCadEmpresa in '..\units\UCadEmpresa.pas' {FCadEmpresa},
  URGeralServico in '..\units\URGeralServico.pas' {FRGeralServico},
  URelatorioEtiquetaResumida in '..\units\URelatorioEtiquetaResumida.pas' {FRelatorioEtiquetaResumida},
  UpesquisaRelGeraldeServico in '..\units\UpesquisaRelGeraldeServico.pas' {FpesquisaRelGeraldeServico},
  URelatorioGeralServico in '..\units\URelatorioGeralServico.pas' {FRelatorioGeralServico},
  UpesquisaRGS in '..\units\UpesquisaRGS.pas' {FpesquisaRGS},
  UTesteBaixaPress in '..\units\UTesteBaixaPress.pas' {FTesteBaixaPress},
  UPesquisaAcoes in '..\units\UPesquisaAcoes.pas' {FPesquisaAcoes},
  UpesquisaClientes in '..\units\UpesquisaClientes.pas' {FpesquisaClientes},
  UCadPecas in '..\units\UCadPecas.pas' {FCadPecas},
  URGSExtintorPecas in '..\units\URGSExtintorPecas.pas' {FRGSExtintorPecas},
  URRGSPecas in '..\units\URRGSPecas.pas' {FRRGSPecas},
  URelListaRgs in '..\units\URelListaRgs.pas' {FRelListaRgs},
  UBackup in '..\units\UBackup.pas' {FBackup},
  uRestore in '..\units\uRestore.pas' {FRestore},
  URelPecasRGS in '..\units\URelPecasRGS.pas' {FRelPecasRGS},
  URelAudSelo in '..\units\URelAudSelo.pas' {FRelAudSelo},
  UCadastroCilindro in '..\units\UCadastroCilindro.pas' {FCadastroCilindro},
  UTeste in '..\units\UTeste.pas' {FTeste},
  UCadTipoRelCilindro in '..\units\UCadTipoRelCilindro.pas' {FCadTipoRelCilindro},
  UCadAtestado in '..\units\UCadAtestado.pas' {FCadAtestado},
  UImprimeImagem in '..\units\UImprimeImagem.pas' {FImprimeImagem},
  URelatorioAtestado in '..\units\URelatorioAtestado.pas' {FRelatorioAtestado},
  USql in '..\units\USql.pas' {FSQL},
  UCadSituacao in '..\units\UCadSituacao.pas' {FCadSituacao},
  UCadRevisao in '..\units\UCadRevisao.pas' {FCadRevisao},
  UDMRgs in '..\units\UDMRgs.pas' {DMRgs: TDataModule},
  URelatorioEtiqueta in '..\units\URelatorioEtiqueta.pas' {FRelatorioEtiqueta},
  URelatorio in '..\units\URelatorio.pas' {FRelatorio},
  URelRevisao in '..\units\URelRevisao.pas' {FRelRevisao},
  UrelatorioRevisao in '..\units\UrelatorioRevisao.pas' {FUrelatorioRevisao},
  UPrompt in '..\units\UPrompt.pas' {FPrompt},
  UPesquisaExtintorRevisao in '..\units\UPesquisaExtintorRevisao.pas' {FPesquisaExtintorRevisao},
  UCadTipoCapValor in '..\units\UCadTipoCapValor.pas' {FCadTipoCapValor},
  URelatorioCartaORcamento in '..\units\URelatorioCartaORcamento.pas' {FRelatorioCartaORcamento},
  URelatorioCartaORcamentoRel in '..\units\URelatorioCartaORcamentoRel.pas' {FRelatorioCartaORcamentoRel},
  URelatorioOrcamento in '..\units\URelatorioOrcamento.pas' {FRelatorioOrcamento},
  URelatorioEtiquetaCBarras in '..\units\URelatorioEtiquetaCBarras.pas' {FRelatorioEtiquetaCBarras},
  UCadGeral in '..\units\UCadGeral.pas' {FCadGeral},
  UcadOrcamento in '..\units\UcadOrcamento.pas' {FCadOrcamento},
  UPesquisaOrcamento in '..\units\UPesquisaOrcamento.pas' {FPesquisaOrcamento},
  UCadProduto in '..\units\UCadProduto.pas' {FCadProduto},
  URelatorioEtiquetaTermica in '..\units\URelatorioEtiquetaTermica.pas' {FRelatorioEtiquetaTermica},
  UCadExtintor in '..\units\UCadExtintor.pas' {FCadExtintor},
  UCadExtintorChamada in '..\units\UCadExtintorChamada.pas' {FUCadExtintorChamada},
  UPlanilhaAnexoO in '..\Units\UPlanilhaAnexoO.pas' {FPlanilhaAnexoO},
  UPlanilhaAnexoI in '..\Units\UPlanilhaAnexoI.pas' {FPlanilhaAnexoI},
  UAnexoINMETROInfo in '..\Units\UAnexoINMETROInfo.pas',
  uRelatodioSelos in '..\units\uRelatodioSelos.pas' {FRelatodioSelos},
  uRelatodioSelosReport in '..\units\uRelatodioSelosReport.pas' {FRelatodioSelosReport},
  UCadSelosAusentes in '..\Units\UCadSelosAusentes.pas' {FCadSelosAusentes},
  UAnexoI in '..\Units\UAnexoI.pas',
  UAnexoIItens in '..\Units\UAnexoIItens.pas',
  uService in '..\Units\uService.pas',
  Entities in '..\Units\Entities.pas';

{$R *.res}

var
  SnapShot : THandle;
  pe       : TProcessEntry32;
  id, nome : String;
  Proc     : String;
  NomeExe  : String;
  n_proc   : integer;
begin

  NomeExe := 'Recarga.exe';
  n_proc  := 0;

  // lista os processos no grid
  SnapShot  := CreateToolhelp32Snapshot((TH32CS_SNAPPROCESS or TH32CS_SNAPTHREAD),0);
  pe.dwSize := sizeof(TProcessEntry32);
  Process32First(SnapShot,pe);

  repeat

    id   := format('%x',[pe.th32ProcessID]);
    proc := inttostr(pe.cntThreads);
    nome := String(pe.szExeFile);

    if NomeExe = nome then
    begin
      inc(n_proc);
    end;

  until Process32Next(SnapShot,pe) = false;

  if n_proc <= 1 then
  begin

  Application.Initialize;
  Application.Title := 'Sistema para Controle de Extintores e Cilindros GNV';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMPesquisa, DMPesquisa);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDMRgs, DMRgs);
  //  Application.CreateForm(TFPlanilhaAnexoI, FPlanilhaAnexoI);
  Application.Run;

  end;

end.
