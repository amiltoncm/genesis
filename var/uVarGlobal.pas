unit uVarGlobal;

interface

Var
//Dados do usu�rio
vgCodUsuarioLog: String;
vgNomeUsuarioLog: String;

//Vari�veis padr�es
vgPath: String;
vgArqIni: String;
vgNomeIni: String;
vgDirTemp: String;
vgDirImagens: String;
vgFundo: String;
vgImgRodape: String;
vgDirCaptura: String;
vgDirLogs: String;
vgDirRelatorios: String;

//M�scaras
vgMaskData: String;
vgMaskReal: String;
vgMaskHora: String;

//Imagens
vgImgND: String;

//Controla impress�o
vgIDExame: String;

//Utilizado no frmExameLaudo -> frmAltExame
vgIDExameSel: String;

//Controla a exporta��o do PDF
vgExpPdf: String[1];

//Controla se � expedicao ou impressao normal
vgExpedicao: boolean;

//Controle para limpar ou n�o a requisi��o
vgLimpaRequisicao: integer;

//Para requisi��o buscar tipo de exame automaticamente
vgTpExameReq: Integer;

//Vari�veis para o recibo
vgClienteRec: String;
vgIDExRec: String;
vgValorRec: String;

//Vari�vel para modelo de macro
vgIDModeloMacro: String;

//Vari�vel para vincular ID exame a arquivos a serem anexados
vgIDArq: String;

//Para enviar nome do novo paciente para o cadastro simplificado
vgNomePac: String;

//Par�metro para ver qual m�dico cadastrar na Requisi��o
vgTipoCadMed: Integer;

//Faixa da busca do nome do paciente
vgRangeIni: String;

//Cadastro de m�dico na requisi��o
vgNomeMed: String;

//Insere tipos de exames na requisicao
vgIDExamesReq: String;

//Utilizado na expedicao de exames
vgIDCaptura: String;
vgImagemExame: String;
vgTipoCaptura: String;

//Utilizado para controlar a busca de Histolgia / etapa
{
vgNumEtapa    vgEtapaHist
2.............macroscopia
3.............corte
4.............microscopia
5.............revisao (antigo reconferencia)
6.............relatorio
}

vgNumEtapa: String;
vgEtapaHist: String;

//Utilizado para selecionar o exame do preenchimento do laudo
vgIDExameLaudo: String;

//Utilizado no preenchimento de laudo (Citologia) para busca de um novo exame
vgIDExameBuscaTb: String;
vgIDTpBusca: String;

//frmExameLaudo
vgExameMedAd: String;
vgNumeExameRespAd: String;

//frmSelHistcorte
vgExaLog: String;

//frmMicroscopia
vgMicroscopia: String;
vgDiagnostico: String;

vgIDExameInsDoenca: String;

vgDataIntegridade: String;

//Controle de baixa de contas a pagar com cheque
vgDuplicata: String;
vgNumParc: String;
vgCodFornec: String;
vgFornecedor: String;

vgIDConvGeraCob: String;
vgNumExameCob: String;

//MatCid
vgSubCat: String;

//Cadastro de pacientes - requisi��o
vgCadPaciente: String;
vgNomePaciente: String;

//ExameLaudo -> FraseCito
vgExameFrase: String;

//GeraCobMult -> ExamesTISS
vgExameTISS: String;


implementation

end.
