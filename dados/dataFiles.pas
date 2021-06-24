unit dataFiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dataTmpConexaoZeos, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlUpdate;

type
  TdmFiles = class(TdmTmpConexaoZeos)
    qyExamesImuno: TZQuery;
    qyExamesImunoeim_id: TIntegerField;
    qyExamesImunoexa_id: TWideStringField;
    qyExamesImunoeim_exame: TBlobField;
    qyImagens: TZQuery;
    qyImagensimg_id: TIntegerField;
    qyImagensimg_exame: TWideStringField;
    qyImagensimg_imagem: TBlobField;
    QTemp: TZQuery;
    updExamesImuno: TZUpdateSQL;
    updImagens: TZUpdateSQL;
    procedure qyExamesImunoAfterDelete(DataSet: TDataSet);
    procedure qyExamesImunoAfterPost(DataSet: TDataSet);
    procedure qyExamesImunoBeforeDelete(DataSet: TDataSet);
    procedure qyExamesImunoBeforePost(DataSet: TDataSet);
    procedure qyExamesImunoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyImagensAfterDelete(DataSet: TDataSet);
    procedure qyImagensAfterPost(DataSet: TDataSet);
    procedure qyImagensBeforeDelete(DataSet: TDataSet);
    procedure qyImagensBeforePost(DataSet: TDataSet);
    procedure qyImagensPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesImunoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyImagensEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFiles: TdmFiles;

implementation

{$R *.dfm}

{--- qyExamesImuno ------------------------------------------------------------}

procedure TdmFiles.qyExamesImunoAfterDelete(DataSet: TDataSet);
begin
  qyExamesImuno.ApplyUpdates;
  database.Commit;
  qyExamesImuno.CommitUpdates;
end;

procedure TdmFiles.qyExamesImunoAfterPost(DataSet: TDataSet);
begin
  qyExamesImuno.ApplyUpdates;
  database.Commit;
  qyExamesImuno.CommitUpdates;
end;

procedure TdmFiles.qyExamesImunoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFiles.qyExamesImunoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFiles.qyExamesImunoEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFiles.qyExamesImunoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

{--- qyImagens ----------------------------------------------------------------}

procedure TdmFiles.qyImagensAfterDelete(DataSet: TDataSet);
begin
  qyImagens.ApplyUpdates;
  database.Commit;
  qyImagens.CommitUpdates;
end;

procedure TdmFiles.qyImagensAfterPost(DataSet: TDataSet);
begin
  qyImagens.ApplyUpdates;
  database.Commit;
  qyImagens.CommitUpdates;
end;

procedure TdmFiles.qyImagensBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFiles.qyImagensBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmFiles.qyImagensEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmFiles.qyImagensPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

end.
