unit uVisImagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmVisImagem = class(TfrmTmpFormNormal)
    Painel01: TPanel;
    ImgVisualiza: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisImagem: TfrmVisImagem;

implementation

{$R *.dfm}

end.
