@Echo off
cls

del *.~*
del *.dcu
del *.ddp
rd __history /s /q

cd..
cd source
cd classes
rd __history /s /q

cd..
cd dados
rd __history /s /q

cd..
cd dao
rd __history /s /q

cd..
cd funcoes
rd __history /s /q

cd..
cd templates
rd __history /s /q

cd..
cd var
rd __history /s /q

cd..
cd view
cd cadastros
rd __history /s /q

cd..
cd consultas
rd __history /s /q

cd..
cd estrutura
rd __history /s /q

cd..
cd mensagens
rd __history /s /q

cd..
cd procuras
rd __history /s /q

cd..
cd relatorios
rd __history /s /q

cd..
cd uteis
rd __history /s /q

cd..
cd..
cd dcu
cd debug
cd x64
del *.~*
del *.dcu
del *.ddp

cd..
cd x86
del *.~*
del *.dcu
del *.ddp

cd..
cd..
cd release
cd x64
del *.~*
del *.dcu
del *.ddp

cd..
cd x86
del *.~*
del *.dcu
del *.ddp














