unit dataConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataTmpConexao, DB, SDEngine;

type
  TdmConfig = class(TdmTmpConexao)
    qyEmpresa: TSDQuery;
    updEmpresa: TSDUpdateSQL;
    qyConfig: TSDQuery;
    updConfig: TSDUpdateSQL;
    SessaoConfig: TSDSession;
    qyEmpresaemp_id: TIntegerField;
    qyEmpresaemp_razao: TStringField;
    qyEmpresaemp_cnpj: TStringField;
    qyEmpresaemp_ie: TStringField;
    qyEmpresaemp_inscmun: TStringField;
    qyEmpresaemp_logradouro: TStringField;
    qyEmpresaemp_bairro: TStringField;
    qyEmpresaemp_cidade: TStringField;
    qyEmpresaemp_uf: TStringField;
    qyEmpresaemp_cep: TStringField;
    qyEmpresaemp_telefone: TStringField;
    qyEmpresaemp_email: TStringField;
    qyEmpresaemp_homepage: TStringField;
    qyEmpresaemp_cnes: TStringField;
    qyTISS: TSDQuery;
    qyTISStiss_cfg: TIntegerField;
    qyTISStiss_sequencial: TIntegerField;
    qyTISStiss_versaopadrao: TStringField;
    qyTISStiss_lote: TIntegerField;
    qyTISStab_id: TIntegerField;
    updTISS: TSDUpdateSQL;
    qyConfigcfg_id: TIntegerField;
    qyConfigcfg_software: TStringField;
    qyConfigcfg_versao: TStringField;
    qyConfigcfg_enderecoweb: TStringField;
    qyConfigcfg_try: TStringField;
    qyTISStab_descricao: TStringField;
    qyModulos: TSDQuery;
    qyModulosmod_codigo: TIntegerField;
    qyModulosmod_executavel: TStringField;
    qyModulosmod_nome: TStringField;
    qyModulosmod_descricao: TStringField;
    qyModulosmod_versaoinst: TStringField;
    qyModulosmod_local: TStringField;
    updModulos: TSDUpdateSQL;
    qyVersao: TSDQuery;
    qyVersaover_id: TStringField;
    qyVersaover_obs: TBlobField;
    updVersao: TSDUpdateSQL;
    procedure qyEmpresaAfterDelete(DataSet: TDataSet);
    procedure qyEmpresaAfterPost(DataSet: TDataSet);
    procedure qyEmpresaBeforeDelete(DataSet: TDataSet);
    procedure qyEmpresaBeforePost(DataSet: TDataSet);
    procedure qyEmpresaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyEmpresaUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyConfigAfterDelete(DataSet: TDataSet);
    procedure qyConfigAfterPost(DataSet: TDataSet);
    procedure qyConfigBeforeDelete(DataSet: TDataSet);
    procedure qyConfigBeforePost(DataSet: TDataSet);
    procedure qyConfigPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyConfigUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyConfigAfterInsert(DataSet: TDataSet);
    procedure qyTISSAfterDelete(DataSet: TDataSet);
    procedure qyTISSAfterPost(DataSet: TDataSet);
    procedure qyTISSBeforeDelete(DataSet: TDataSet);
    procedure qyTISSBeforePost(DataSet: TDataSet);
    procedure qyTISSPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyTISSUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyTISSAfterInsert(DataSet: TDataSet);
    procedure qyModulosAfterDelete(DataSet: TDataSet);
    procedure qyModulosAfterPost(DataSet: TDataSet);
    procedure qyModulosBeforeDelete(DataSet: TDataSet);
    procedure qyModulosBeforePost(DataSet: TDataSet);
    procedure qyModulosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyModulosAfterInsert(DataSet: TDataSet);
    procedure qyModulosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyVersaoAfterDelete(DataSet: TDataSet);
    procedure qyVersaoAfterPost(DataSet: TDataSet);
    procedure qyVersaoBeforeDelete(DataSet: TDataSet);
    procedure qyVersaoBeforePost(DataSet: TDataSet);
    procedure qyVersaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyVersaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConfig: TdmConfig;

implementation

{$R *.dfm}

uses uDaoEmpresa, uDaoConfig;

{--- qyConfig -----------------------------------------------------------------}

procedure TdmConfig.qyConfigAfterDelete(DataSet: TDataSet);
begin
  qyConfig.ApplyUpdates;
  database.Commit;
  qyConfig.CommitUpdates;
end;

procedure TdmConfig.qyConfigAfterPost(DataSet: TDataSet);
begin
  qyConfig.ApplyUpdates;
  database.Commit;
  qyConfig.CommitUpdates;
end;

procedure TdmConfig.qyConfigBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyConfigBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyConfigPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmConfig.qyConfigUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyConfig.RollbackUpdates;
end;

procedure TdmConfig.qyConfigAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyEmpresa ----------------------------------------------------------------}

procedure TdmConfig.qyEmpresaAfterDelete(DataSet: TDataSet);
begin
  qyEmpresa.ApplyUpdates;
  database.Commit;
  qyEmpresa.CommitUpdates;
end;

procedure TdmConfig.qyEmpresaAfterPost(DataSet: TDataSet);
begin
  qyEmpresa.ApplyUpdates;
  database.Commit;
  qyEmpresa.CommitUpdates;
end;

procedure TdmConfig.qyEmpresaBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyEmpresaBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyEmpresaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmConfig.qyEmpresaUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyEmpresa.RollbackUpdates;
end;

{--- qyModulos ----------------------------------------------------------------}

procedure TdmConfig.qyModulosAfterDelete(DataSet: TDataSet);
begin
  qyModulos.ApplyUpdates;
  database.Commit;
  qyModulos.CommitUpdates;
end;

procedure TdmConfig.qyModulosAfterPost(DataSet: TDataSet);
begin
  qyModulos.ApplyUpdates;
  database.Commit;
  qyModulos.CommitUpdates;
end;

procedure TdmConfig.qyModulosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyModulosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyModulosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmConfig.qyModulosUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyModulos.RollbackUpdates;
end;

procedure TdmConfig.qyModulosAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyTISS -------------------------------------------------------------------}

procedure TdmConfig.qyTISSAfterDelete(DataSet: TDataSet);
begin
  qyTISS.ApplyUpdates;
  database.Commit;
  qyTISS.CommitUpdates;
end;

procedure TdmConfig.qyTISSAfterPost(DataSet: TDataSet);
begin
  qyTISS.ApplyUpdates;
  database.Commit;
  qyTISS.CommitUpdates;
end;

procedure TdmConfig.qyTISSBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyTISSBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyTISSPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmConfig.qyTISSUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyTISS.RollbackUpdates;
end;

procedure TdmConfig.qyTISSAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyVersao -----------------------------------------------------------------}

procedure TdmConfig.qyVersaoAfterDelete(DataSet: TDataSet);
begin
  qyVersao.ApplyUpdates;
  database.Commit;
  qyVersao.CommitUpdates;
end;

procedure TdmConfig.qyVersaoAfterPost(DataSet: TDataSet);
begin
  qyVersao.ApplyUpdates;
  database.Commit;
  qyVersao.CommitUpdates;
end;

procedure TdmConfig.qyVersaoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyVersaoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmConfig.qyVersaoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmConfig.qyVersaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyVersao.RollbackUpdates;
end;

end.
