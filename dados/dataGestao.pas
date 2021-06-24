unit dataGestao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataTmpConexao, DB, SDEngine;

type
  TdmGestao = class(TdmTmpConexao)
    SessaoGestao: TSDSession;
    qyExamesFiles: TSDQuery;
    qyExamesFilesefi_codigo: TIntegerField;
    qyExamesFilesexa_id: TStringField;
    qyExamesFilesefi_sequencia: TIntegerField;
    qyExamesFilesefi_arquivo: TBlobField;
    qyExamesFilesefi_descricao: TStringField;
    qyExamesFilesefi_extensao: TStringField;
    updExamesFiles: TSDUpdateSQL;
    qyEmail: TSDQuery;
    qyEmailema_endereco: TStringField;
    qyEmailema_id: TIntegerField;
    updEmail: TSDUpdateSQL;
    qyRespAss: TSDQuery;
    qyRespAssres_codigo: TIntegerField;
    qyRespAssres_ass: TBlobField;
    qyRespAssres_passw: TStringField;
    updRespAss: TSDUpdateSQL;
    lkMail: TSDQuery;
    lkMailema_endereco: TStringField;
    lkMailema_id: TIntegerField;
    qyAgendaDia: TSDQuery;
    updAgendaDia: TSDUpdateSQL;
    qyAgendaDiaagd_data: TDateField;
    qyAgendaDiaagd_hora: TTimeField;
    qyAgendaDiausu_codigo: TIntegerField;
    qyAgendaDiaagd_descricao: TStringField;
    qyAgendaDiaagd_obs: TStringField;
    qyAgendaDiaagd_confirma: TStringField;
    qyAgendaDiaagd_alerta: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qyExamesFilesAfterDelete(DataSet: TDataSet);
    procedure qyExamesFilesAfterPost(DataSet: TDataSet);
    procedure qyExamesFilesBeforeDelete(DataSet: TDataSet);
    procedure qyExamesFilesBeforePost(DataSet: TDataSet);
    procedure qyExamesFilesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesFilesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesFilesAfterInsert(DataSet: TDataSet);
    procedure qyEmailAfterDelete(DataSet: TDataSet);
    procedure qyEmailAfterPost(DataSet: TDataSet);
    procedure qyEmailBeforeDelete(DataSet: TDataSet);
    procedure qyEmailBeforePost(DataSet: TDataSet);
    procedure qyEmailPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyEmailUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyEmailAfterInsert(DataSet: TDataSet);
    procedure qyRespAssAfterDelete(DataSet: TDataSet);
    procedure qyRespAssAfterPost(DataSet: TDataSet);
    procedure qyRespAssBeforeDelete(DataSet: TDataSet);
    procedure qyRespAssBeforePost(DataSet: TDataSet);
    procedure qyRespAssPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyRespAssUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyRespAssAfterInsert(DataSet: TDataSet);
    procedure qyAgendaDiaAfterDelete(DataSet: TDataSet);
    procedure qyAgendaDiaAfterPost(DataSet: TDataSet);
    procedure qyAgendaDiaBeforeDelete(DataSet: TDataSet);
    procedure qyAgendaDiaBeforePost(DataSet: TDataSet);
    procedure qyAgendaDiaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyAgendaDiaUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyAgendaDiaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGestao: TdmGestao;

implementation

{$R *.dfm}

uses uDaoExamesFiles, uDaoRespAss, uDaoEmail;

procedure TdmGestao.DataModuleCreate(Sender: TObject);
begin
  inherited;
  //Lookups
  lkMail.Active := True;
end;

{--- qyAgendaDia --------------------------------------------------------------}

procedure TdmGestao.qyAgendaDiaAfterDelete(DataSet: TDataSet);
begin
  qyAgendaDia.ApplyUpdates;
  database.Commit;
  qyAgendaDia.CommitUpdates;
end;

procedure TdmGestao.qyAgendaDiaAfterPost(DataSet: TDataSet);
begin
  qyAgendaDia.ApplyUpdates;
  database.Commit;
  qyAgendaDia.CommitUpdates;
end;

procedure TdmGestao.qyAgendaDiaBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyAgendaDiaBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyAgendaDiaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmGestao.qyAgendaDiaUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyAgendaDia.RollbackUpdates;
end;

procedure TdmGestao.qyAgendaDiaAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyEmail ------------------------------------------------------------------}

procedure TdmGestao.qyEmailAfterDelete(DataSet: TDataSet);
begin
  qyEmail.ApplyUpdates;
  database.Commit;
  qyEmail.CommitUpdates;
end;

procedure TdmGestao.qyEmailAfterPost(DataSet: TDataSet);
begin
  qyEmail.ApplyUpdates;
  database.Commit;
  qyEmail.CommitUpdates;
end;

procedure TdmGestao.qyEmailBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyEmailBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyEmailPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmGestao.qyEmailUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyEmail.RollbackUpdates;
end;

procedure TdmGestao.qyEmailAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesFiles ------------------------------------------------------------}

procedure TdmGestao.qyExamesFilesAfterDelete(DataSet: TDataSet);
begin
  qyExamesFiles.ApplyUpdates;
  database.Commit;
  qyExamesFiles.CommitUpdates;
end;

procedure TdmGestao.qyExamesFilesAfterPost(DataSet: TDataSet);
begin
  qyExamesFiles.ApplyUpdates;
  database.Commit;
  qyExamesFiles.CommitUpdates;
end;

procedure TdmGestao.qyExamesFilesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyExamesFilesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyExamesFilesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmGestao.qyExamesFilesUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesFiles.RollbackUpdates;
end;

procedure TdmGestao.qyExamesFilesAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyRespAss ----------------------------------------------------------------}

procedure TdmGestao.qyRespAssAfterDelete(DataSet: TDataSet);
begin
  qyRespAss.ApplyUpdates;
  database.Commit;
  qyRespAss.CommitUpdates;
end;

procedure TdmGestao.qyRespAssAfterPost(DataSet: TDataSet);
begin
  qyRespAss.ApplyUpdates;
  database.Commit;
  qyRespAss.CommitUpdates;
end;

procedure TdmGestao.qyRespAssBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyRespAssBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmGestao.qyRespAssPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmGestao.qyRespAssUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyRespAss.RollbackUpdates;
end;

procedure TdmGestao.qyRespAssAfterInsert(DataSet: TDataSet);
begin
  //
end;

end.
