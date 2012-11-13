program Recarga;

uses
  TLHelp32,
  ShellApi,
  SYSUtils,
  Forms,
  Dialogs,
  controls,
  windows,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UPai in 'UPai.pas' {FPai},
  UCadastro in 'cadastro\UCadastro.pas' {FCadastro},
  UFsuper in 'UFsuper.pas',
  UdmGeral in 'UdmGeral.pas' {DM: TDataModule},
  UCadCliente in 'cadastro\UCadCliente.pas' {FCadaCliente},
  UCadFabricante in 'cadastro\UCadFabricante.pas' {FCadFabricante},
  UCadUnidade in 'cadastro\UCadUnidade.pas' {FCadUnidade},
  UCadPressao in 'cadastro\UCadPressao.pas' {FCadPressao},
  UCadEstintor in 'cadastro\UCadEstintor.pas' {FCadEstintor},
  UdmPesquisa in 'UdmPesquisa.pas' {DMPesquisa: TDataModule},
  UCadTipo in 'cadastro\UCadTipo.pas' {FCadTipo},
  UPermissao in 'Controle\UPermissao.pas' {FPErmissao},
  UCadGrupoAcesso in 'cadastro\UCadGrupoAcesso.pas' {FCadGrupoAcesso},
  UCadUsuario in 'cadastro\UCadUsuario.pas' {FCadUsuario},
  ULogin in 'Controle\ULogin.pas' {FLogin},
  UCadRgs in 'cadastro\UCadRgs.pas' {FCadRgs},
  UPesquisaExtintor in 'UPesquisaExtintor.pas' {FPesquisaExtintor},
  UCadMotivo in 'cadastro\UCadMotivo.pas' {FCadMotivo},
  UCadEmpresa in 'cadastro\UCadEmpresa.pas' {FCadEmpresa},
  URGeralServico in 'Relatorio\URGeralServico.pas' {FRGeralServico},
  URelatorioEtiquetaResumida in 'Relatorio\URelatorioEtiquetaResumida.pas' {FRelatorioEtiquetaResumida},
  UpesquisaRelGeraldeServico in 'Relatorio\UpesquisaRelGeraldeServico.pas' {FpesquisaRelGeraldeServico},
  URelatorioGeralServico in 'Relatorio\URelatorioGeralServico.pas' {FRelatorioGeralServico},
  UpesquisaRGS in 'UpesquisaRGS.pas' {FpesquisaRGS},
  UTesteBaixaPress in 'Teste\UTesteBaixaPress.pas' {FTesteBaixaPress},
  UPesquisaAcoes in 'UPesquisaAcoes.pas' {FPesquisaAcoes},
  UpesquisaClientes in 'Pesquisas\UpesquisaClientes.pas' {FpesquisaClientes},
  UCadPecas in 'cadastro\UCadPecas.pas' {FCadPecas},
  URGSExtintorPecas in 'URGSExtintorPecas.pas' {FRGSExtintorPecas},
  URRGSPecas in 'Relatorio\URRGSPecas.pas' {FRRGSPecas},
  URelListaRgs in 'Relatorio\URelListaRgs.pas' {FRelListaRgs},
  UBackup in 'Backup_Restore\UBackup.pas' {FBackup},
  uRestore in 'Backup_Restore\uRestore.pas' {FRestore},
  URelPecasRGS in 'Relatorio\URelPecasRGS.pas' {FRelPecasRGS},
  URelAudSelo in 'Relatorio\Auditoria\URelAudSelo.pas' {FRelAudSelo},
  UCadastroCilindro in 'cadastro\UCadastroCilindro.pas' {FCadastroCilindro},
  UTeste in 'Teste\UTeste.pas' {FTeste},
  UCadTipoRelCilindro in 'cadastro\UCadTipoRelCilindro.pas' {FCadTipoRelCilindro},
  UCadAtestado in 'cadastro\UCadAtestado.pas' {FCadAtestado},
  UImprimeImagem in 'Relatorio\UImprimeImagem.pas' {FImprimeImagem},
  URelatorioAtestado in 'Relatorio\URelatorioAtestado.pas' {FRelatorioAtestado},
  USql in 'USql.pas' {FSQL},
  UCadSituacao in 'cadastro\UCadSituacao.pas' {FCadSituacao},
  UCadRevisao in 'cadastro\UCadRevisao.pas' {FCadRevisao},
  UDMRgs in 'UDMRgs.pas' {DMRgs: TDataModule},
  URelatorioEtiqueta in 'Relatorio\URelatorioEtiqueta.pas' {FRelatorioEtiqueta},
  URelatorio in 'Relatorio\URelatorio.pas' {FRelatorio},
  URelRevisao in 'Relatorio\Revisão\URelRevisao.pas' {FRelRevisao},
  UrelatorioRevisao in 'Relatorio\Revisão\UrelatorioRevisao.pas' {FUrelatorioRevisao},
  UPrompt in 'UPrompt.pas' {FPrompt},
  UPesquisaExtintorRevisao in 'Pesquisas\UPesquisaExtintorRevisao.pas' {FPesquisaExtintorRevisao},
  UCadTipoCapValor in 'cadastro\UCadTipoCapValor.pas' {FCadTipoCapValor},
  URelatorioCartaORcamento in 'Relatorio\URelatorioCartaORcamento.pas' {FRelatorioCartaORcamento},
  URelatorioCartaORcamentoRel in 'Relatorio\URelatorioCartaORcamentoRel.pas' {FRelatorioCartaORcamentoRel},
  URelatorioOrcamento in 'Relatorio\URelatorioOrcamento.pas' {FRelatorioOrcamento},
  URelatorioEtiquetaCBarras in 'Relatorio\URelatorioEtiquetaCBarras.pas' {FRelatorioEtiquetaCBarras},
  UCadGeral in 'cadastro\Cadastro\UCadGeral.pas' {FCadGeral},
  UcadOrcamento in 'cadastro\Cadastro\UcadOrcamento.pas' {FCadOrcamento},
  UPesquisaOrcamento in 'Pesquisas\UPesquisaOrcamento.pas' {FPesquisaOrcamento},
  UCadProduto in 'cadastro\UCadProduto.pas' {FCadProduto},
  URelatorioEtiquetaTermica in 'Relatorio\URelatorioEtiquetaTermica.pas' {FRelatorioEtiquetaTermica},
  UCadExtintor in 'cadastro\Cadastro\UCadExtintor.pas' {FCadExtintor},
  UCadExtintorChamada in 'cadastro\Cadastro\UCadExtintorChamada.pas' {FUCadExtintorChamada},
  URelatorioInmetro in 'Relatorio\URelatorioInmetro.pas' {FRelatorioInmetro},
  PlanilhaMensalServicoINMETRO in 'PlanilhaMensalServicoINMETRO.pas' {FPai1},
  uRelatorioINMETROpai in 'Relatorio\uRelatorioINMETROpai.pas',
  uRelatorioMensalServico in 'Relatorio\uRelatorioMensalServico.pas',
  uRelatodioSelos in 'Relatorio\uRelatodioSelos.pas' {FRelatodioSelos},
  uRelatodioSelosReport in 'Relatorio\uRelatodioSelosReport.pas' {FRelatodioSelosReport};

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
  //Application.CreateForm(TFRelatorioInmetro, FRelatorioInmetro);
  Application.CreateForm(TFPai1, FPai1);
  //Application.CreateForm(TFRelatodioSelos, FRelatodioSelos);
  //Application.CreateForm(TFRelatodioSelosReport, FRelatodioSelosReport);
  //Application.CreateForm(TFCadExpress, FCadExpress);
  //Application.CreateForm(TFCadGeral, FCadGeral);
  //Application.CreateForm(TFCadGeral1, FCadGeral1);
  Application.Run;

  end;

end.
