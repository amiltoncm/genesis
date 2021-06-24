unit uFuncRelExameLaudo;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, JPeg, Registry, dataExames;

procedure FiltraTabelasCito(vfExame: String);

implementation

uses uDaoExames, uDaoExamesRespAd, uDaoExamesCitoMacro, uDaoExamesCitoNotas,
  uDaoImagens, uDaoExamesCito, uDaoExamesLaudo, uDaoExamesProced,
  uDaoExamesDoencas, uDaoExamesFrases;

procedure FiltraTabelasCito(vfExame: String);
begin
  //Filtra tabela exames
  FiltrarExames('e.exa_id', '=', vfExame, '0', '1');
  //Filtra médico adicional
  FiltrarExamesRespAd('e.exa_id', '=', vfExame, '0', '1');
  //Filtra tabela de ExamesCitoMacro
  FiltrarExamesCitoMacro('exa_id', '=', vfExame, '0', '1');
  //Filtra tabela de notas complementares
  FiltrarExamesCitoNotas('exa_id', '=', vfExame, '0', '1');
  //Filtra tabela de imagens
  FiltrarImagens('img_exame', '=', vfExame, '0', '1');
  //Filtra tabela ExamesCito
  FiltrarExamesCito('exa_id', '=', vfExame, '0', '0');
  //Filtra tabela exameslaudo
  FiltrarExamesLaudo('exa_id', '=', vfExame, '0', '1');
  //Filtra tabela de exames solicitados
  FiltrarExamesCito('exa_id', '=', vfExame, '0', '0');
  //Filtra exames procedimentos
  FiltrarExamesProced('exa_id', '=', vfExame, '0', '0');
  //Filtra tabela de imagens
  FiltrarImagens('img_exame', '=', vfExame, '0', '1');
  //Filtra tabela ExamesDoencas
  FiltrarExamesDoencas('exa_id', '=', vfExame, '0', '0');
  //Filtra tabela de frases
  FiltrarExamesFrases('exa_id', '=', vfExame, '0');
end;

end.
