unit dataCid10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dataTmpConexao, SDEngine, Db;

type
  TdmCid10 = class(TdmTmpConexao)
    qyCapitulos: TSDQuery;
    qyCapituloscap_numcap: TIntegerField;
    qyCapituloscap_catinic: TStringField;
    qyCapituloscap_catfim: TStringField;
    qyCapituloscap_descricao: TStringField;
    qyCapituloscap_descabrev: TStringField;
    updCapitulos: TSDUpdateSQL;
    qyGrupos: TSDQuery;
    qyGruposcgr_id: TIntegerField;
    qyGruposcgr_catinic: TStringField;
    qyGruposcgr_catfim: TStringField;
    qyGruposcgr_descricao: TStringField;
    qyGruposcgr_descabrev: TStringField;
    updGrupos: TSDUpdateSQL;
    qyCategorias: TSDQuery;
    updCategorias: TSDUpdateSQL;
    qyCategoriascat_id: TStringField;
    qyCategoriascat_classif: TStringField;
    qyCategoriascat_descricao: TStringField;
    qyCategoriascat_descabrev: TStringField;
    qyCategoriascat_refer: TStringField;
    qyCategoriascat_excluidos: TStringField;
    qySubCategorias: TSDQuery;
    updSubCategorias: TSDUpdateSQL;
    qySubCategoriassct_subcat: TStringField;
    qySubCategoriassct_classif: TStringField;
    qySubCategoriassct_restrsexo: TStringField;
    qySubCategoriassct_causaobito: TStringField;
    qySubCategoriassct_descricao: TStringField;
    qySubCategoriassct_descabrev: TStringField;
    qySubCategoriassct_refer: TStringField;
    qySubCategoriassct_excluidos: TStringField;
    SessaoCID10: TSDSession;
    qyRelExamesDoencas: TSDQuery;
    qyRelExamesDoencasexa_id: TStringField;
    qyRelExamesDoencasexa_data: TDateField;
    qyRelExamesDoencasmed_nome: TStringField;
    qyRelExamesDoencasetp_tipo: TStringField;
    qyRelExamesDoencassct_subcat: TStringField;
    qyRelExamesDoencassct_descricao: TStringField;
    procedure qyCapitulosAfterDelete(DataSet: TDataSet);
    procedure qyCapitulosAfterPost(DataSet: TDataSet);
    procedure qyCapitulosBeforeDelete(DataSet: TDataSet);
    procedure qyCapitulosBeforePost(DataSet: TDataSet);
    procedure qyCapitulosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyCapitulosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyGruposAfterDelete(DataSet: TDataSet);
    procedure qyGruposAfterPost(DataSet: TDataSet);
    procedure qyCategoriasAfterDelete(DataSet: TDataSet);
    procedure qyCategoriasAfterPost(DataSet: TDataSet);
    procedure qySubCategoriasAfterDelete(DataSet: TDataSet);
    procedure qySubCategoriasAfterPost(DataSet: TDataSet);
    procedure qyGruposBeforeDelete(DataSet: TDataSet);
    procedure qyGruposBeforePost(DataSet: TDataSet);
    procedure qyCategoriasBeforeDelete(DataSet: TDataSet);
    procedure qyCategoriasBeforePost(DataSet: TDataSet);
    procedure qySubCategoriasBeforeDelete(DataSet: TDataSet);
    procedure qySubCategoriasBeforePost(DataSet: TDataSet);
    procedure qyGruposUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyCategoriasUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qySubCategoriasUpdateError(DataSet: TDataSet;
      E: EDatabaseError; UpdateKind: TUpdateKind;
      var UpdateAction: TUpdateAction);
    procedure qyGruposPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyCategoriasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qySubCategoriasPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCid10: TdmCid10;

implementation

{$R *.DFM}

procedure TdmCid10.qyCapitulosAfterDelete(DataSet: TDataSet);
begin
  qyCapitulos.ApplyUpdates;
  database.Commit;
  qyCapitulos.CommitUpdates;
end;

procedure TdmCid10.qyCapitulosAfterPost(DataSet: TDataSet);
begin
  qyCapitulos.ApplyUpdates;
  database.Commit;
  qyCapitulos.CommitUpdates;
end;

procedure TdmCid10.qyCapitulosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qyCapitulosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qyCapitulosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCid10.qyCapitulosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyCapitulos.RollbackUpdates;
end;

procedure TdmCid10.qyGruposAfterDelete(DataSet: TDataSet);
begin
  qyGrupos.ApplyUpdates;
  database.Commit;
  qyGrupos.CommitUpdates;
end;

procedure TdmCid10.qyGruposAfterPost(DataSet: TDataSet);
begin
  qyGrupos.ApplyUpdates;
  database.Commit;
  qyGrupos.CommitUpdates;
end;

procedure TdmCid10.qyCategoriasAfterDelete(DataSet: TDataSet);
begin
  qyCategorias.ApplyUpdates;
  database.Commit;
  qyCategorias.CommitUpdates;
end;

procedure TdmCid10.qyCategoriasAfterPost(DataSet: TDataSet);
begin
  qyCategorias.ApplyUpdates;
  database.Commit;
  qyCategorias.CommitUpdates;
end;

procedure TdmCid10.qySubCategoriasAfterDelete(DataSet: TDataSet);
begin
  qySubCategorias.ApplyUpdates;
  database.Commit;
  qySubCategorias.CommitUpdates;
end;

procedure TdmCid10.qySubCategoriasAfterPost(DataSet: TDataSet);
begin
  qySubCategorias.ApplyUpdates;
  database.Commit;
  qySubCategorias.CommitUpdates;
end;

procedure TdmCid10.qyGruposBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qyGruposBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qyCategoriasBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qyCategoriasBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qySubCategoriasBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qySubCategoriasBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCid10.qyGruposUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyGrupos.RollbackUpdates;
end;

procedure TdmCid10.qyCategoriasUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyCategorias.RollbackUpdates;
end;

procedure TdmCid10.qySubCategoriasUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qySubCategorias.RollbackUpdates;
end;

procedure TdmCid10.qyGruposPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCid10.qyCategoriasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCid10.qySubCategoriasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

end.
