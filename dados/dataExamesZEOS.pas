unit dataExamesZEOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dataTmpConexaoZeos, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlUpdate;

type
  TdmExamesZEOS = class(TdmTmpConexaoZeos)
    qyImagens: TZQuery;
    qyImagensimg_id: TIntegerField;
    qyImagensimg_exame: TWideStringField;
    qyImagensimg_imagem: TBlobField;
    updImagens: TZUpdateSQL;
    procedure qyImagensAfterDelete(DataSet: TDataSet);
    procedure qyImagensAfterPost(DataSet: TDataSet);
    procedure qyImagensBeforeDelete(DataSet: TDataSet);
    procedure qyImagensBeforePost(DataSet: TDataSet);
    procedure qyImagensPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyImagensEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmExamesZEOS: TdmExamesZEOS;

implementation

{$R *.dfm}

{--- qyImagens ----------------------------------------------------------------}

procedure TdmExamesZEOS.qyImagensAfterDelete(DataSet: TDataSet);
begin
  qyImagens.ApplyUpdates;
  database.Commit;
  qyImagens.CommitUpdates;
end;

procedure TdmExamesZEOS.qyImagensAfterPost(DataSet: TDataSet);
begin
  qyImagens.ApplyUpdates;
  database.Commit;
  qyImagens.CommitUpdates;
end;

procedure TdmExamesZEOS.qyImagensBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExamesZEOS.qyImagensBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExamesZEOS.qyImagensPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExamesZEOS.qyImagensEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  database.Rollback;
  qyImagens.CancelUpdates;
end;

end.
