unit uVarGlobal;

interface

Var
//Dados do usuário
vgCodUsuarioLog: String;
vgNomeUsuarioLog: String;

//Variáveis padrões
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

//Máscaras
vgMaskData: String;
vgMaskReal: String;
vgMaskHora: String;

//Imagens
vgImgND: String;

//Controla impressão
vgIDExame: String;

//Utilizado no frmExameLaudo -> frmAltExame
vgIDExameSel: String;

//Controla a exportação do PDF
vgExpPdf: String[1];

//Controla se é expedicao ou impressao normal
vgExpedicao: boolean;

//Controle para limpar ou não a requisição
vgLimpaRequisicao: integer;

//Para requisição buscar tipo de exame automaticamente
vgTpExameReq: Integer;

//Variáveis para o recibo
vgClienteRec: String;
vgIDExRec: String;
vgValorRec: String;

//Variável para modelo de macro
vgIDModeloMacro: String;

//Variável para vincular ID exame a arquivos a serem anexados
vgIDArq: String;

//Para enviar nome do novo paciente para o cadastro simplificado
vgNomePac: String;

//Parâmetro para ver qual médico cadastrar na Requisição
vgTipoCadMed: Integer;

//Faixa da busca do nome do paciente
vgRangeIni: String;

//Cadastro de médico na requisição
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

//Cadastro de pacientes - requisição
vgCadPaciente: String;
vgNomePaciente: String;

//ExameLaudo -> FraseCito
vgExameFrase: String;

//GeraCobMult -> ExamesTISS
vgExameTISS: String;


implementation

end.
