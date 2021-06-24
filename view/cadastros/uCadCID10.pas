unit uCadCID10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ActnList, Vcl.ImgList, Data.DB, wwdblook, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls, Wwdbigrd, Vcl.Grids,
  Wwdbgrid, ShellApi;

type
  TfrmCadCID10 = class(TfrmTmpFormNormal)
    pgCID: TPageControl;
    tsCapitulos: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbGridCap: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    dbCap: TDBEdit;
    dbCatInic: TDBEdit;
    dbCatFinal: TDBEdit;
    dbAbreviado: TDBEdit;
    dbDescricao: TDBEdit;
    ToolBar3: TToolBar;
    tbPrimeiroCAP: TToolButton;
    tbVoltaCAP: TToolButton;
    tbAnteriorCAP: TToolButton;
    tbProximoCAP: TToolButton;
    tbAvancaCAP: TToolButton;
    tbUltimoCAP: TToolButton;
    ToolButton30: TToolButton;
    tbInsereCAP: TToolButton;
    tbDeletaCAP: TToolButton;
    tbEditaCAP: TToolButton;
    tbGravaCAP: TToolButton;
    tbCancelaCAP: TToolButton;
    ToolButton36: TToolButton;
    tbAtualizaCAP: TToolButton;
    ToolButton38: TToolButton;
    tbProcuraCAP: TToolButton;
    tbAjudaCAP: TToolButton;
    ToolButton41: TToolButton;
    tbAntCap: TToolButton;
    tbProxCap: TToolButton;
    ToolButton3: TToolButton;
    tbFechaCAP: TToolButton;
    pnProcCap: TPanel;
    Label25: TLabel;
    cbProcCap: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    tsGrupos: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ToolBar2: TToolBar;
    tbPrimeiroGrp: TToolButton;
    tbVoltaGRP: TToolButton;
    tbAnteriorGRP: TToolButton;
    tbProximoGRP: TToolButton;
    tbAvancaGRP: TToolButton;
    tbUltimoGRP: TToolButton;
    ToolButton7: TToolButton;
    tbInsereGRP: TToolButton;
    tbDeletaGRP: TToolButton;
    tbEditaGRP: TToolButton;
    tbGravaGRP: TToolButton;
    tbCancelaGRP: TToolButton;
    ToolButton16: TToolButton;
    tbAtualizaGRP: TToolButton;
    ToolButton19: TToolButton;
    tbProcuraGRP: TToolButton;
    tbAjudaGRP: TToolButton;
    ToolButton22: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton6: TToolButton;
    tbFechaGRP: TToolButton;
    dbGridGru: TwwDBGrid;
    wwIButton1: TwwIButton;
    dbID: TDBEdit;
    dbCatInicial: TDBEdit;
    dbCatfim: TDBEdit;
    dbDescAbrevg: TDBEdit;
    dbDescg: TDBEdit;
    pnProcGru: TPanel;
    Label26: TLabel;
    cbProcGru: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    tsCategorias: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ToolBar1: TToolBar;
    tbPrimeiroCat: TToolButton;
    tbVoltaCat: TToolButton;
    tbAnteriorCat: TToolButton;
    tbProximoCat: TToolButton;
    tbAvancaCat: TToolButton;
    tbUltimoCat: TToolButton;
    ToolButton45: TToolButton;
    tbInsereCat: TToolButton;
    tbDeletaCat: TToolButton;
    tbEditaCat: TToolButton;
    tbGravaCat: TToolButton;
    tbCancelaCat: TToolButton;
    ToolButton51: TToolButton;
    tbAtualizaCat: TToolButton;
    ToolButton53: TToolButton;
    tbProcuraCat: TToolButton;
    ToolButton55: TToolButton;
    ToolButton56: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton57: TToolButton;
    dbGridCat: TwwDBGrid;
    wwIButton2: TwwIButton;
    dbIDCat: TDBEdit;
    dbClassif: TDBEdit;
    dbExcluidos: TDBEdit;
    dbReferencia: TDBEdit;
    dbDescAbrev: TDBEdit;
    dbDescricaoCAT: TDBEdit;
    pnProcCat: TPanel;
    Label27: TLabel;
    cbProcCat: TwwDBLookupCombo;
    BitBtn3: TBitBtn;
    tsSubcategorias: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    wwDBGrid4: TwwDBGrid;
    wwIButton3: TwwIButton;
    dbSubCat: TDBEdit;
    dbSctDescricao: TDBEdit;
    dbSctClassif: TDBEdit;
    dbRestSexo: TDBEdit;
    dbCausaObito: TDBEdit;
    dbRefer: TDBEdit;
    dbExclude: TDBEdit;
    dbDescAbrevSC: TDBEdit;
    ToolBar4: TToolBar;
    tbPrimeiroSub: TToolButton;
    tbVoltaSub: TToolButton;
    tbAnteriorSub: TToolButton;
    tbProximoSub: TToolButton;
    tbAvancaSub: TToolButton;
    tbUltimoSub: TToolButton;
    ToolButton64: TToolButton;
    tbInsereSub: TToolButton;
    tbDeletaSub: TToolButton;
    tbEditaSub: TToolButton;
    tbGravaSub: TToolButton;
    tbCancelaSub: TToolButton;
    ToolButton70: TToolButton;
    tbAtualizaSub: TToolButton;
    ToolButton72: TToolButton;
    tbProcuraSub: TToolButton;
    ToolButton74: TToolButton;
    ToolButton75: TToolButton;
    ToolButton12: TToolButton;
    ToolButton11: TToolButton;
    ToolButton18: TToolButton;
    ToolButton76: TToolButton;
    pnProcSub: TPanel;
    Label28: TLabel;
    cbProcSub: TwwDBLookupCombo;
    BitBtn4: TBitBtn;
    dsCapitulos: TDataSource;
    imagens: TImageList;
    alCapitulos: TActionList;
    actPrimeiro: TAction;
    actPagAnt: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actPagPost: TAction;
    actUltimo: TAction;
    actInserir: TAction;
    actDeletar: TAction;
    actEditar: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actAtualizar: TAction;
    actProcCapitulos: TAction;
    actHelp: TAction;
    actFechar: TAction;
    dsGrupos: TDataSource;
    alGrupos: TActionList;
    actPrimeiroG: TAction;
    actVoltaG: TAction;
    actAnteriorG: TAction;
    actProximoG: TAction;
    actAvancaG: TAction;
    actUltimoG: TAction;
    actInsereG: TAction;
    actDeletaG: TAction;
    actEditaG: TAction;
    actGravaG: TAction;
    actCancelaG: TAction;
    actatualizaG: TAction;
    actProcuraG: TAction;
    actAjudaG: TAction;
    actFecharG: TAction;
    dsCategorias: TDataSource;
    dsSubCategorias: TDataSource;
    actCategorias: TActionList;
    actPrimeiroCt: TAction;
    actVoltaCt: TAction;
    actAnteriorCt: TAction;
    actProximoCt: TAction;
    actAvancaCt: TAction;
    actUltimoCt: TAction;
    actInsereCt: TAction;
    actDeletaCt: TAction;
    actEditaCt: TAction;
    actGravaCt: TAction;
    actCancelaCt: TAction;
    actAtualizaCt: TAction;
    actSubCategorias: TActionList;
    actPrimeiroSub: TAction;
    actVoltaSub: TAction;
    actAnteriorSub: TAction;
    actProximoSub: TAction;
    actAvancaSub: TAction;
    actUltimoSub: TAction;
    actInsereSub: TAction;
    actDeletaSub: TAction;
    actEditaSub: TAction;
    actGravaSub: TAction;
    actCancelaSub: TAction;
    actAtualizarSub: TAction;
    actProcCat: TAction;
    actProcSub: TAction;
    Label29: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actPagAntExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure dsCapitulosDataChange(Sender: TObject; Field: TField);
    procedure actPagPostExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actProcCapitulosExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actPrimeiroGExecute(Sender: TObject);
    procedure actVoltaGExecute(Sender: TObject);
    procedure actAnteriorGExecute(Sender: TObject);
    procedure actProximoGExecute(Sender: TObject);
    procedure actAvancaGExecute(Sender: TObject);
    procedure actUltimoGExecute(Sender: TObject);
    procedure actInsereGExecute(Sender: TObject);
    procedure actDeletaGExecute(Sender: TObject);
    procedure actEditaGExecute(Sender: TObject);
    procedure actGravaGExecute(Sender: TObject);
    procedure actCancelaGExecute(Sender: TObject);
    procedure actatualizaGExecute(Sender: TObject);
    procedure dsGruposDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actProcuraGExecute(Sender: TObject);
    procedure actAjudaGExecute(Sender: TObject);
    procedure actFecharGExecute(Sender: TObject);
    procedure actPrimeiroCtExecute(Sender: TObject);
    procedure actVoltaCtExecute(Sender: TObject);
    procedure actAnteriorCtExecute(Sender: TObject);
    procedure actProximoCtExecute(Sender: TObject);
    procedure actAvancaCtExecute(Sender: TObject);
    procedure actUltimoCtExecute(Sender: TObject);
    procedure actInsereCtExecute(Sender: TObject);
    procedure actDeletaCtExecute(Sender: TObject);
    procedure actEditaCtExecute(Sender: TObject);
    procedure actGravaCtExecute(Sender: TObject);
    procedure actCancelaCtExecute(Sender: TObject);
    procedure actAtualizaCtExecute(Sender: TObject);
    procedure actPrimeiroSubExecute(Sender: TObject);
    procedure actVoltaSubExecute(Sender: TObject);
    procedure actAnteriorSubExecute(Sender: TObject);
    procedure actProximoSubExecute(Sender: TObject);
    procedure actAvancaSubExecute(Sender: TObject);
    procedure actUltimoSubExecute(Sender: TObject);
    procedure actInsereSubExecute(Sender: TObject);
    procedure actDeletaSubExecute(Sender: TObject);
    procedure actEditaSubExecute(Sender: TObject);
    procedure actGravaSubExecute(Sender: TObject);
    procedure actCancelaSubExecute(Sender: TObject);
    procedure actAtualizarSubExecute(Sender: TObject);
    procedure dsSubCategoriasDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGridCapCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridGruCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dsCategoriasDataChange(Sender: TObject; Field: TField);
    procedure cbProcCapKeyPress(Sender: TObject; var Key: Char);
    procedure cbProcGruKeyPress(Sender: TObject; var Key: Char);
    procedure cbProcCatKeyPress(Sender: TObject; var Key: Char);
    procedure cbProcSubKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure actProcCatExecute(Sender: TObject);
    procedure actProcSubExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCID10: TfrmCadCID10;

implementation

{$R *.dfm}

uses dataCid10, uDaoCid10capitulos, uDaoCid10categorias, uDaoCid10grupos,
  uDaoCid10subcategorias, uFuncoesSistema;

procedure TfrmCadCID10.actAjudaGExecute(Sender: TObject);
Var
vPath, vHelp: String;
begin
  vPath := DiretorioSemBarra(ExtractFileDir(Application.ExeName));
  vHelp := vPath + '\cid10.hlp';
  ShellExecute(Handle, 'OPEN', PChar(vHelp), nil, nil, sw_showmaximized);
end;

procedure TfrmCadCID10.actAnteriorCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.Prior;
end;

procedure TfrmCadCID10.actAnteriorExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.Prior;
end;

procedure TfrmCadCID10.actAnteriorGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.Prior;
end;

procedure TfrmCadCID10.actAnteriorSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.Prior;
end;

procedure TfrmCadCID10.actAtualizaCtExecute(Sender: TObject);
begin
  ListarCid10categorias('cat_descricao', '0');
  dmCid10.qyCategorias.Refresh;
end;

procedure TfrmCadCID10.actatualizaGExecute(Sender: TObject);
begin
  ListarCid10grupos('cgr_descricao', '0');
  dsGrupos.DataSet.Refresh;
end;

procedure TfrmCadCID10.actAtualizarExecute(Sender: TObject);
begin
  ListarCid10capitulos('cap_descricao', '0');
  dsCapitulos.DataSet.Refresh;
end;

procedure TfrmCadCID10.actAtualizarSubExecute(Sender: TObject);
begin
  ListarCid10subcategorias('sct_descricao', '0');
  dmCid10.qySubCategorias.Refresh;
end;

procedure TfrmCadCID10.actAvancaCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.MoveBy(10);
end;

procedure TfrmCadCID10.actAvancaGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.MoveBy(10);
end;

procedure TfrmCadCID10.actAvancaSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.MoveBy(10);
end;

procedure TfrmCadCID10.actCancelaCtExecute(Sender: TObject);
begin
  dsCategorias.DataSet.Cancel;
end;

procedure TfrmCadCID10.actCancelaGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.Cancel;
end;

procedure TfrmCadCID10.actCancelarExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.Cancel;
end;

procedure TfrmCadCID10.actCancelaSubExecute(Sender: TObject);
begin
  dsSubCategorias.DataSet.Cancel;
end;

procedure TfrmCadCID10.actDeletaCtExecute(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      dmCid10.qyCategorias.delete;
    except
      begin
        MessageDlg('Não foi possível apagar o registro!', mtInformation, [mbok], 0);
        dsCategorias.DataSet.Refresh;
      end;
    end;
  end;
end;

procedure TfrmCadCID10.actDeletaGExecute(Sender: TObject);
begin
  if messagedlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    messagedlg('Função não disponível para esta tabela!', mtWarning, [mbok],0);
end;

procedure TfrmCadCID10.actDeletarExecute(Sender: TObject);
begin
  if messagedlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    messagedlg('Função não disponível para esta tabela!', mtWarning, [mbok],0);
end;

procedure TfrmCadCID10.actDeletaSubExecute(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      dmCid10.qySubCategorias.delete;
    except
      begin
        MessageDlg('Não foi possível apagar o registro!', mtInformation, [mbok], 0);
        dsSubCategorias.DataSet.Refresh;
      end;
    end;
  end;
end;

procedure TfrmCadCID10.actEditaCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.Edit;
  dbIDCat.SetFocus;
end;

procedure TfrmCadCID10.actEditaGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.Edit;
end;

procedure TfrmCadCID10.actEditarExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.Edit;
  dbCap.SetFocus;
end;

procedure TfrmCadCID10.actEditaSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.Edit;
  dbSubCat.SetFocus;
end;

procedure TfrmCadCID10.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCID10.actFecharGExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCID10.actGravaCtExecute(Sender: TObject);
begin
  Try
    dsCategorias.DataSet.Post;
  Except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dsCategorias.DataSet.Refresh;
    end;
  end;
end;

procedure TfrmCadCID10.actGravaGExecute(Sender: TObject);
begin
  try
    dsGrupos.DataSet.Post;
  Except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dsGrupos.DataSet.Refresh;
    end;
  end;
end;

procedure TfrmCadCID10.actGravarExecute(Sender: TObject);
begin
  try
    dsCapitulos.DataSet.Post;
  Except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dsCapitulos.DataSet.Refresh;
    end;
  end;
end;

procedure TfrmCadCID10.actGravaSubExecute(Sender: TObject);
begin
  Try
    dsSubCategorias.DataSet.Post;
  Except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dsSubCategorias.DataSet.Refresh;
    end;
  end;
end;

procedure TfrmCadCID10.actHelpExecute(Sender: TObject);
Var
vPath, vHelp: String;
begin
  vPath := DiretorioSemBarra(ExtractFileDir(Application.ExeName));
  vHelp := vPath + '\cid10.hlp';
  ShellExecute(Handle, 'OPEN', PChar(vHelp), nil, nil, sw_showmaximized);
end;

procedure TfrmCadCID10.actInsereCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.Insert;
  dbIDCat.SetFocus;
end;

procedure TfrmCadCID10.actInsereGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.Insert;
end;

procedure TfrmCadCID10.actInsereSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.Insert;
  dbSubCat.SetFocus;
end;

procedure TfrmCadCID10.actInserirExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.Insert;
  dbCap.SetFocus;
end;

procedure TfrmCadCID10.actPagAntExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.MoveBy(-10);
end;

procedure TfrmCadCID10.actPagPostExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.MoveBy(10);
end;

procedure TfrmCadCID10.actPrimeiroCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.First;
end;

procedure TfrmCadCID10.actPrimeiroExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.First;
end;

procedure TfrmCadCID10.actPrimeiroGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.First;
end;

procedure TfrmCadCID10.actPrimeiroSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.First;
end;

procedure TfrmCadCID10.actProcCapitulosExecute(Sender: TObject);
begin
  pnProcCap.Visible := true;
  cbProcCap.SetFocus;
end;

procedure TfrmCadCID10.actProcCatExecute(Sender: TObject);
begin
  pnProcCat.Visible := true;
  cbProcCat.SetFocus;
end;

procedure TfrmCadCID10.actProcSubExecute(Sender: TObject);
begin
  pnProcSub.Visible := true;
  cbProcSub.SetFocus;
end;

procedure TfrmCadCID10.actProcuraGExecute(Sender: TObject);
begin
  pnProcGru.Visible := true;
  cbProcGru.SetFocus;
end;

procedure TfrmCadCID10.actProximoCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.Next;
end;

procedure TfrmCadCID10.actProximoExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.Next;
end;

procedure TfrmCadCID10.actProximoGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.Next;
end;

procedure TfrmCadCID10.actProximoSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.Next;
end;

procedure TfrmCadCID10.actUltimoCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.Last;
end;

procedure TfrmCadCID10.actUltimoExecute(Sender: TObject);
begin
  dsCapitulos.DataSet.Last;
end;

procedure TfrmCadCID10.actUltimoGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.Last;
end;

procedure TfrmCadCID10.actUltimoSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.Last;
end;

procedure TfrmCadCID10.actVoltaCtExecute(Sender: TObject);
begin
  dmCid10.qyCategorias.MoveBy(-10);
end;

procedure TfrmCadCID10.actVoltaGExecute(Sender: TObject);
begin
  dsGrupos.DataSet.MoveBy(-10);
end;

procedure TfrmCadCID10.actVoltaSubExecute(Sender: TObject);
begin
  dmCid10.qySubCategorias.MoveBy(-10);
end;

procedure TfrmCadCID10.BitBtn1Click(Sender: TObject);
begin
  pnProcCap.Visible := False;
end;

procedure TfrmCadCID10.BitBtn2Click(Sender: TObject);
begin
  pnProcGru.Visible := false;
end;

procedure TfrmCadCID10.BitBtn3Click(Sender: TObject);
begin
  pnProcCat.Visible := false;
end;

procedure TfrmCadCID10.BitBtn4Click(Sender: TObject);
begin
  pnProcSub.Visible := false;
end;

procedure TfrmCadCID10.cbProcCapKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    pnProcCap.Visible := false;
end;

procedure TfrmCadCID10.cbProcCatKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    pnProcCat.Visible := false;
end;

procedure TfrmCadCID10.cbProcGruKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    pnProcGru.Visible := false;
end;

procedure TfrmCadCID10.cbProcSubKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    pnProcSub.Visible := false;
end;

procedure TfrmCadCID10.dbGridCapCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dmCid10.qyCapituloscap_numcap.Value mod 2 = 0) then
    dbGridCap.Canvas.Brush.Color := clLtGray
  else
    dbGridCap.Canvas.Brush.Color := clDkGray;
end;

procedure TfrmCadCID10.dbGridGruCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dmCid10.qyGruposcgr_id.Value mod 2 = 0) then
    dbGridGru.Canvas.Brush.Color := clLtGray
  else
    dbGridGru.Canvas.Brush.Color := clDkGray;
end;

procedure TfrmCadCID10.dsCapitulosDataChange(Sender: TObject; Field: TField);
begin
  if dsCapitulos.DataSet.State in [dsEdit, dsInsert] then
  Begin
    tbPrimeiroCap.Enabled := false;
    tbVoltaCap.Enabled := false;
    tbAnteriorCap.Enabled := false;
    tbProximoCap.Enabled := false;
    tbAvancaCap.Enabled := false;
    tbUltimoCap.Enabled := false;
    tbInsereCap.Enabled := false;
    tbEditaCap.Enabled := false;
    tbDeletaCap.Enabled := false;
    tbGravaCap.Enabled := true;
    tbCancelaCap.Enabled := true;
    tbAtualizaCap.Enabled := false;
    tbProcuraCap.Enabled := false;
  end
  else
  Begin
    tbPrimeiroCap.Enabled := true;
    tbVoltaCap.Enabled := true;
    tbAnteriorCap.Enabled := true;
    tbProximoCap.Enabled := true;
    tbAvancaCap.Enabled := true;
    tbUltimoCap.Enabled := true;
    tbInsereCap.Enabled := true;
    tbEditaCap.Enabled := true;
    tbDeletaCap.Enabled := true;
    tbGravaCap.Enabled := false;
    tbCancelaCap.Enabled := false;
    tbAtualizaCap.Enabled := true;
    tbProcuraCap.Enabled := true;
  end;
end;

procedure TfrmCadCID10.dsCategoriasDataChange(Sender: TObject; Field: TField);
begin
  if dsCategorias.DataSet.State in [dsEdit, dsInsert] then
  Begin
    tbPrimeiroCat.Enabled := false;
    tbVoltaCat.Enabled := false;
    tbAnteriorCat.Enabled := false;
    tbProximoCat.Enabled := false;
    tbAvancaCat.Enabled := false;
    tbUltimoCat.Enabled := false;
    tbInsereCat.Enabled := false;
    tbEditaCat.Enabled := false;
    tbDeletaCat.Enabled := false;
    tbGravaCat.Enabled := true;
    tbCancelaCat.Enabled := true;
    tbAtualizaCat.Enabled := false;
    tbProcuraCat.Enabled := false;
  end
  else
  Begin
    tbPrimeiroCat.Enabled := true;
    tbVoltaCat.Enabled := true;
    tbAnteriorCat.Enabled := true;
    tbProximoCat.Enabled := true;
    tbAvancaCat.Enabled := true;
    tbUltimoCat.Enabled := true;
    tbInsereCat.Enabled := true;
    tbEditaCat.Enabled := true;
    tbDeletaCat.Enabled := true;
    tbGravaCat.Enabled := false;
    tbCancelaCat.Enabled := false;
    tbAtualizaCat.Enabled := true;
    tbProcuraCat.Enabled := true;
  end;
end;

procedure TfrmCadCID10.dsGruposDataChange(Sender: TObject; Field: TField);
begin
  if dsGrupos.DataSet.State in [dsEdit, dsInsert] then
  Begin
    tbPrimeiroGrp.Enabled := false;
    tbVoltaGrp.Enabled := false;
    tbAnteriorGrp.Enabled := false;
    tbProximoGrp.Enabled := false;
    tbAvancaGrp.Enabled := false;
    tbUltimoGrp.Enabled := false;
    tbInsereGrp.Enabled := false;
    tbEditaGrp.Enabled := false;
    tbDeletaGrp.Enabled := false;
    tbGravaGrp.Enabled := true;
    tbCancelaGrp.Enabled := true;
    tbAtualizaGrp.Enabled := false;
    tbProcuraGrp.Enabled := false;
  end
  else
  Begin
    tbPrimeiroGrp.Enabled := true;
    tbVoltaGrp.Enabled := true;
    tbAnteriorGrp.Enabled := true;
    tbProximoGrp.Enabled := true;
    tbAvancaGrp.Enabled := true;
    tbUltimoGrp.Enabled := true;
    tbInsereGrp.Enabled := true;
    tbEditaGrp.Enabled := true;
    tbDeletaGrp.Enabled := true;
    tbGravaGrp.Enabled := false;
    tbCancelaGrp.Enabled := false;
    tbAtualizaGrp.Enabled := true;
    tbProcuraGrp.Enabled := true;
  end;
end;

procedure TfrmCadCID10.dsSubCategoriasDataChange(Sender: TObject;
  Field: TField);
begin
  if dsSubCategorias.DataSet.State in [dsEdit, dsInsert] then
  Begin
    tbPrimeiroSub.Enabled := false;
    tbVoltaSub.Enabled := false;
    tbAnteriorSub.Enabled := false;
    tbProximoSub.Enabled := false;
    tbAvancaSub.Enabled := false;
    tbUltimoSub.Enabled := false;
    tbInsereSub.Enabled := false;
    tbEditaSub.Enabled := false;
    tbDeletaSub.Enabled := false;
    tbGravaSub.Enabled := true;
    tbCancelaSub.Enabled := true;
    tbAtualizaSub.Enabled := false;
    tbProcuraSub.Enabled := false;
  end
  else
  Begin
    tbPrimeiroSub.Enabled := true;
    tbVoltaSub.Enabled := true;
    tbAnteriorSub.Enabled := true;
    tbProximoSub.Enabled := true;
    tbAvancaSub.Enabled := true;
    tbUltimoSub.Enabled := true;
    tbInsereSub.Enabled := true;
    tbEditaSub.Enabled := true;
    tbDeletaSub.Enabled := true;
    tbGravaSub.Enabled := false;
    tbCancelaSub.Enabled := false;
    tbAtualizaSub.Enabled := true;
    tbProcuraSub.Enabled := true;
  end;
end;

procedure TfrmCadCID10.FormActivate(Sender: TObject);
begin
  inherited;
  ListarCid10capitulos('cap_descricao', '0');
  ListarCid10grupos('cgr_descricao', '0');
  ListarCid10categorias('cat_descricao', '0');
  ListarCid10subcategorias('sct_descricao', '0');
  dsCapitulos.DataSet.Active := true;
  dsGrupos.DataSet.Active := true;
  dsCategorias.DataSet.Active := true;
  dsSubCategorias.DataSet.Active := true;
  pgCID.ActivePageIndex := 0;
  tsCapitulos.Highlighted := true;
  tsGrupos.Highlighted := false;
  tsCategorias.Highlighted := false;
  tsSubcategorias.Highlighted := false;
  pnProcCap.Visible := false;
  pnProcGru.Visible := false;
  pnProcCat.Visible := false;
  pnProcSub.Visible := false;
end;

procedure TfrmCadCID10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  pnProcCap.Visible := false;
  pnProcGru.Visible := false;
  pnProcCat.Visible := false;
  pnProcSub.Visible := false;
end;

procedure TfrmCadCID10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    if pgCID.ActivePage = tsCapitulos then
    begin
      if pnProcCap.Visible = true then
        pnProcCap.Visible := false
      else
        Close;
    end;
    if pgCID.ActivePage = tsGrupos then
    begin
      if pnProcGru.Visible = true then
        pnProcGru.Visible := false
      else
        Close;
    end;
    if pgCID.ActivePage = tsCategorias then
    begin
      if pnProcCat.Visible = true then
        pnProcCat.Visible := false
      else
        Close;
    end;
    if pgCID.ActivePage = tsSubcategorias then
    begin
      if pnProcSub.Visible = true then
        pnProcSub.Visible := false
      else
        Close;
    end;
  end;
end;

procedure TfrmCadCID10.ToolButton10Click(Sender: TObject);
begin
   pgCID.ActivePage := tsCapitulos;
end;

procedure TfrmCadCID10.ToolButton12Click(Sender: TObject);
begin
   pgCID.ActivePage := tsCategorias;
end;

procedure TfrmCadCID10.ToolButton1Click(Sender: TObject);
begin
   pgCid.ActivePage := tsGrupos;
end;

procedure TfrmCadCID10.ToolButton2Click(Sender: TObject);
begin
   pgCID.ActivePage := tsCategorias;
end;

procedure TfrmCadCID10.ToolButton9Click(Sender: TObject);
begin
   pgCID.ActivePage := tsSubcategorias;
end;

end.
