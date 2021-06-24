unit dataFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dataTmpConexao, Data.DB, SDEngine;

type
  TdmFinanceiro = class(TdmTmpConexao)
    SessaoFinanceiro: TSDSession;
    qyExamesCob: TSDQuery;
    qyExamesCobeco_id: TIntegerField;
    qyExamesCobexa_id: TStringField;
    qyExamesCobeco_status: TBooleanField;
    qyExamesCobeco_valor: TFloatField;
    qyExamesCobhis_id: TIntegerField;
    qyExamesCobeco_gerarcob: TBooleanField;
    qyExamesCobeco_vlrpago: TFloatField;
    updExamesCob: TSDUpdateSQL;
    qyTissPend: TSDQuery;
    qyTissPendtpd_id: TIntegerField;
    qyTissPendexa_id: TStringField;
    qyTissPendtpd_descricao: TStringField;
    updTissPend: TSDUpdateSQL;
    scLimparPendAnt: TSDScript;
    qyConvProc: TSDQuery;
    qyConvProccov_id: TIntegerField;
    qyConvProcprc_tuss: TIntegerField;
    qyConvProcprc_descricao: TStringField;
    qyConvProccpr_vlrhora: TFloatField;
    qyConvProccpr_vlroper: TFloatField;
    qyConvProccpr_vlrfilme: TFloatField;
    qyConvProccpr_vlrtotal: TFloatField;
    updConvProc: TSDUpdateSQL;
    scDeleteConvProc: TSDScript;
    qyCaixa: TSDQuery;
    updCaixa: TSDUpdateSQL;
    qyCaixacai_codigo: TIntegerField;
    qyCaixacai_data: TDateField;
    qyCaixacai_descricao: TStringField;
    qyCaixacai_valor: TFloatField;
    qyCaixamov_codigo: TIntegerField;
    qyCaixamov_descricao: TStringField;
    qyCaixamov_tipo: TStringField;
    qyCaixacon_codigo: TIntegerField;
    qyCaixacon_descricao: TStringField;
    qyCaixacai_referencia: TStringField;
    qyPagar: TSDQuery;
    qyPagarpag_vencimento: TDateField;
    qyPagarfor_codigo: TIntegerField;
    qyPagarfor_razao: TStringField;
    qyPagarfor_fone: TStringField;
    qyPagarpag_nf: TIntegerField;
    qyPagarpag_parcela: TIntegerField;
    qyPagarpag_emissao: TDateField;
    qyPagarpag_valor: TFloatField;
    qyPagarpag_acrescimo: TFloatField;
    qyPagarpag_desconto: TFloatField;
    qyPagarpag_pago: TFloatField;
    qyPagarpag_saldo: TFloatField;
    qyPagarpag_status: TStringField;
    updPagar: TSDUpdateSQL;
    qyReceber: TSDQuery;
    qyReceberrec_codigo: TIntegerField;
    qyReceberrec_emissao: TDateField;
    qyReceberrec_vencimento: TDateField;
    qyRecebercov_codigo: TIntegerField;
    qyRecebercov_descricao: TStringField;
    qyReceberrec_codcliente: TIntegerField;
    qyReceberrec_nome: TStringField;
    qyReceberrec_valor: TFloatField;
    qyReceberrec_acrescimo: TFloatField;
    qyReceberrec_desconto: TFloatField;
    qyReceberrec_pago: TFloatField;
    qyReceberrec_saldo: TFloatField;
    qyReceberrec_status: TStringField;
    qyReceberhis_id: TIntegerField;
    qyRecebercob_codigo: TIntegerField;
    updReceber: TSDUpdateSQL;
    qyCheques: TSDQuery;
    updCheques: TSDUpdateSQL;
    qyChequeschq_lancamento: TIntegerField;
    qyChequesban_codigo: TIntegerField;
    qyChequesban_descricao: TStringField;
    qyChequeschq_conta: TStringField;
    qyChequeschq_numcheque: TStringField;
    qyChequeschq_emissao: TDateField;
    qyChequeschq_vencimento: TDateField;
    qyChequeschq_titular: TStringField;
    qyChequeschq_endosso: TStringField;
    qyChequeschq_valor: TFloatField;
    qyChequeschq_referente: TStringField;
    qyChequeschq_telefone: TStringField;
    qyChequeschq_doc: TStringField;
    qyChequeschq_repasse: TStringField;
    qyChequeschq_estado: TStringField;
    SQL_Upd_his_status: TSDScript;
    qyHistRec: TSDQuery;
    updHistRec: TSDUpdateSQL;
    qyHistRechis_id: TIntegerField;
    qyHistRechis_item: TIntegerField;
    qyHistRechis_data: TDateField;
    qyHistRecexa_id: TStringField;
    qyHistReccov_codigo: TIntegerField;
    qyHistReccov_descricao: TStringField;
    qyHistRecpac_codigo: TIntegerField;
    qyHistRecpac_nome: TStringField;
    qyHistRechis_valor: TFloatField;
    qyHistRechis_gercob: TStringField;
    qyHistRecmed_codigo: TIntegerField;
    qyHistRecmed_nome: TStringField;
    qyHistRechis_status: TStringField;
    qyHistRechis_baixar: TStringField;
    qyRecTiss: TSDQuery;
    qyRecTissrti_id: TIntegerField;
    qyRecTissrec_codigo: TIntegerField;
    qyRecTissrti_gerado: TBooleanField;
    qyRecTissrti_lote: TIntegerField;
    updRecTiss: TSDUpdateSQL;
    qyRecObs: TSDQuery;
    qyRecObsrob_id: TIntegerField;
    qyRecObsrob_data: TDateField;
    qyRecObsrec_codigo: TIntegerField;
    qyRecObsrob_obs: TStringField;
    updRecObs: TSDUpdateSQL;
    qyRecTissrti_nguias: TIntegerField;
    ScriptCob: TSDScript;
    procedure qyExamesCobAfterDelete(DataSet: TDataSet);
    procedure qyExamesCobAfterPost(DataSet: TDataSet);
    procedure qyExamesCobBeforeDelete(DataSet: TDataSet);
    procedure qyExamesCobBeforePost(DataSet: TDataSet);
    procedure qyExamesCobPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesCobUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyTissPendAfterDelete(DataSet: TDataSet);
    procedure qyTissPendAfterPost(DataSet: TDataSet);
    procedure qyTissPendBeforeDelete(DataSet: TDataSet);
    procedure qyTissPendBeforePost(DataSet: TDataSet);
    procedure qyTissPendPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyTissPendUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyTissPendAfterInsert(DataSet: TDataSet);
    procedure qyExamesCobAfterInsert(DataSet: TDataSet);
    procedure qyConvProcAfterDelete(DataSet: TDataSet);
    procedure qyConvProcAfterPost(DataSet: TDataSet);
    procedure qyConvProcBeforeDelete(DataSet: TDataSet);
    procedure qyConvProcBeforePost(DataSet: TDataSet);
    procedure qyConvProcPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyConvProcUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyConvProcAfterInsert(DataSet: TDataSet);
    procedure qyCaixaAfterDelete(DataSet: TDataSet);
    procedure qyCaixaAfterPost(DataSet: TDataSet);
    procedure qyCaixaBeforeDelete(DataSet: TDataSet);
    procedure qyCaixaBeforePost(DataSet: TDataSet);
    procedure qyCaixaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyCaixaUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyCaixaAfterInsert(DataSet: TDataSet);
    procedure qyPagarAfterDelete(DataSet: TDataSet);
    procedure qyPagarAfterPost(DataSet: TDataSet);
    procedure qyPagarBeforeDelete(DataSet: TDataSet);
    procedure qyPagarBeforePost(DataSet: TDataSet);
    procedure qyPagarPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyPagarUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyPagarAfterInsert(DataSet: TDataSet);
    procedure qyReceberAfterDelete(DataSet: TDataSet);
    procedure qyReceberAfterPost(DataSet: TDataSet);
    procedure qyReceberBeforeDelete(DataSet: TDataSet);
    procedure qyReceberBeforePost(DataSet: TDataSet);
    procedure qyReceberPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyReceberUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyReceberAfterInsert(DataSet: TDataSet);
    procedure qyChequesAfterDelete(DataSet: TDataSet);
    procedure qyChequesAfterPost(DataSet: TDataSet);
    procedure qyChequesBeforeDelete(DataSet: TDataSet);
    procedure qyChequesBeforePost(DataSet: TDataSet);
    procedure qyChequesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyChequesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyChequesAfterInsert(DataSet: TDataSet);
    procedure qyHistRecAfterDelete(DataSet: TDataSet);
    procedure qyHistRecAfterPost(DataSet: TDataSet);
    procedure qyHistRecBeforeDelete(DataSet: TDataSet);
    procedure qyHistRecBeforePost(DataSet: TDataSet);
    procedure qyHistRecPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyHistRecUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyHistRecAfterInsert(DataSet: TDataSet);
    procedure qyRecTissAfterDelete(DataSet: TDataSet);
    procedure qyRecTissAfterPost(DataSet: TDataSet);
    procedure qyRecTissBeforeDelete(DataSet: TDataSet);
    procedure qyRecTissBeforePost(DataSet: TDataSet);
    procedure qyRecTissPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyRecTissUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyRecTissAfterInsert(DataSet: TDataSet);
    procedure qyRecObsAfterDelete(DataSet: TDataSet);
    procedure qyRecObsAfterPost(DataSet: TDataSet);
    procedure qyRecObsBeforeDelete(DataSet: TDataSet);
    procedure qyRecObsBeforePost(DataSet: TDataSet);
    procedure qyRecObsPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyRecObsUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyRecObsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFinanceiro: TdmFinanceiro;

implementation

{$R *.dfm}

uses uDaoExamesCob, uDaoTissPend, uDaoConvProc;

{--- qyCaixa ---------------------------------------------------------------}

procedure TdmFinanceiro.qyCaixaAfterDelete(DataSet: TDataSet);
begin
  qyCaixa.ApplyUpdates;
  database.Commit;
  qyCaixa.CommitUpdates;
end;

procedure TdmFinanceiro.qyCaixaAfterPost(DataSet: TDataSet);
begin
  qyCaixa.ApplyUpdates;
  database.Commit;
  qyCaixa.CommitUpdates;
end;

procedure TdmFinanceiro.qyCaixaBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyCaixaBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyCaixaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyCaixaUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyCaixa.RollbackUpdates;
end;

procedure TdmFinanceiro.qyCaixaAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyCheques ----------------------------------------------------------------}

procedure TdmFinanceiro.qyChequesAfterDelete(DataSet: TDataSet);
begin
  qyCheques.ApplyUpdates;
  database.Commit;
  qyCheques.CommitUpdates;
end;

procedure TdmFinanceiro.qyChequesAfterPost(DataSet: TDataSet);
begin
  qyCheques.ApplyUpdates;
  database.Commit;
  qyCheques.CommitUpdates;
end;

procedure TdmFinanceiro.qyChequesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyChequesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyChequesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyChequesUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyCheques.RollbackUpdates;
end;

procedure TdmFinanceiro.qyChequesAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyConvProc ---------------------------------------------------------------}

procedure TdmFinanceiro.qyConvProcAfterDelete(DataSet: TDataSet);
begin
  qyConvProc.ApplyUpdates;
  database.Commit;
  qyConvProc.CommitUpdates;
end;

procedure TdmFinanceiro.qyConvProcAfterPost(DataSet: TDataSet);
begin
  qyConvProc.ApplyUpdates;
  database.Commit;
  qyConvProc.CommitUpdates;
end;

procedure TdmFinanceiro.qyConvProcBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyConvProcBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyConvProcPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyConvProcUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyConvProc.RollbackUpdates;
end;

procedure TdmFinanceiro.qyConvProcAfterInsert(DataSet: TDataSet);
begin
  //
end;

procedure TdmFinanceiro.qyExamesCobAfterDelete(DataSet: TDataSet);
begin
  qyExamesCob.ApplyUpdates;
  database.Commit;
  qyExamesCob.CommitUpdates;
end;

procedure TdmFinanceiro.qyExamesCobAfterInsert(DataSet: TDataSet);
begin
  //
end;

procedure TdmFinanceiro.qyExamesCobAfterPost(DataSet: TDataSet);
begin
  qyExamesCob.ApplyUpdates;
  database.Commit;
  qyExamesCob.CommitUpdates;
end;

procedure TdmFinanceiro.qyExamesCobBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyExamesCobBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyExamesCobPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyExamesCobUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesCob.RollbackUpdates;
end;

{--- qyHistRec ----------------------------------------------------------------}

procedure TdmFinanceiro.qyHistRecAfterDelete(DataSet: TDataSet);
begin
  qyHistRec.ApplyUpdates;
  database.Commit;
  qyHistRec.CommitUpdates;
end;

procedure TdmFinanceiro.qyHistRecAfterPost(DataSet: TDataSet);
begin
  qyHistRec.ApplyUpdates;
  database.Commit;
  qyHistRec.CommitUpdates;
end;

procedure TdmFinanceiro.qyHistRecBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyHistRecBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyHistRecPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyHistRecUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyHistRec.RollbackUpdates;
end;

procedure TdmFinanceiro.qyHistRecAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyPagar ------------------------------------------------------------------}

procedure TdmFinanceiro.qyPagarAfterDelete(DataSet: TDataSet);
begin
  qyPagar.ApplyUpdates;
  database.Commit;
  qyPagar.CommitUpdates;
end;

procedure TdmFinanceiro.qyPagarAfterPost(DataSet: TDataSet);
begin
  qyPagar.ApplyUpdates;
  database.Commit;
  qyPagar.CommitUpdates;
end;

procedure TdmFinanceiro.qyPagarBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyPagarBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyPagarPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyPagarUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyPagar.RollbackUpdates;
end;

procedure TdmFinanceiro.qyPagarAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyReceber ----------------------------------------------------------------}

procedure TdmFinanceiro.qyReceberAfterDelete(DataSet: TDataSet);
begin
  qyReceber.ApplyUpdates;
  database.Commit;
  qyReceber.CommitUpdates;
end;

procedure TdmFinanceiro.qyReceberAfterPost(DataSet: TDataSet);
begin
  qyReceber.ApplyUpdates;
  database.Commit;
  qyReceber.CommitUpdates;
end;

procedure TdmFinanceiro.qyReceberBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyReceberBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyReceberPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyReceberUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyReceber.RollbackUpdates;
end;

procedure TdmFinanceiro.qyReceberAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyRecObs ---------------------------------------------------------------}

procedure TdmFinanceiro.qyRecObsAfterDelete(DataSet: TDataSet);
begin
  qyRecObs.ApplyUpdates;
  database.Commit;
  qyRecObs.CommitUpdates;
end;

procedure TdmFinanceiro.qyRecObsAfterPost(DataSet: TDataSet);
begin
  qyRecObs.ApplyUpdates;
  database.Commit;
  qyRecObs.CommitUpdates;
end;

procedure TdmFinanceiro.qyRecObsBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyRecObsBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyRecObsPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyRecObsUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyRecObs.RollbackUpdates;
end;

procedure TdmFinanceiro.qyRecObsAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyRecTISS ----------------------------------------------------------------}

procedure TdmFinanceiro.qyRecTISSAfterDelete(DataSet: TDataSet);
begin
  qyRecTISS.ApplyUpdates;
  database.Commit;
  qyRecTISS.CommitUpdates;
end;

procedure TdmFinanceiro.qyRecTISSAfterPost(DataSet: TDataSet);
begin
  qyRecTISS.ApplyUpdates;
  database.Commit;
  qyRecTISS.CommitUpdates;
end;

procedure TdmFinanceiro.qyRecTISSBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyRecTISSBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyRecTISSPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyRecTISSUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyRecTISS.RollbackUpdates;
end;

procedure TdmFinanceiro.qyRecTISSAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyTissPend ---------------------------------------------------------------}

procedure TdmFinanceiro.qyTissPendAfterDelete(DataSet: TDataSet);
begin
  qyTissPend.ApplyUpdates;
  database.Commit;
  qyTissPend.CommitUpdates;
end;

procedure TdmFinanceiro.qyTissPendAfterPost(DataSet: TDataSet);
begin
  qyTissPend.ApplyUpdates;
  database.Commit;
  qyTissPend.CommitUpdates;
end;

procedure TdmFinanceiro.qyTissPendBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyTissPendBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFinanceiro.qyTissPendPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFinanceiro.qyTissPendUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyTissPend.RollbackUpdates;
end;

procedure TdmFinanceiro.qyTissPendAfterInsert(DataSet: TDataSet);
begin
  //
end;

end.
