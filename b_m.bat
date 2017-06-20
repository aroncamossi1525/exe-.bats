@echo off
cls
:menu
cls
color f4

date /t

echo 		Bem Vindo %username%                   
echo ================================================= 
echo - 1. Esvaziar a Lixeira                           
echo - 2. Fazer Backup                                 
echo - 3. Escanear Disco Local ---em manutencao..      
echo - 4. Painel de Controle ---em manutencao..        
echo - 5. Listar Drivers                               
echo - 6. Configuracao do Computador --manual          
echo - 7. Sair do Programa                             
echo - 		DIA:%date:~0,2%/%date:~3,2%/%date:~6,10%
echo =================================================

set /p opcao= Escolha uma opcao:
echo ----------------------------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8

:opcao1
cls

rd /S /Q c:\$Recycle.bin
echo ==================================================
echo *		Lixeira Esvaziada                 
echo ==================================================
pause
goto menu

:opcao2
cls

echo ==================================================
echo *	Fazendo Backup do Computador:           
echo *  	%computername%                 
echo ==================================================

cd\
cd users\Arow\Documents
md backup_%date:/=-%

cd\
xcopy C:\wamp64\www\*.php C:\users\Arow\Documents\backup_%date:/=-%
 
pause
goto menu

:opcao3
cls

echo ==================================================
echo * 		Escaneamento de Disco              
echo ==================================================

pause
chkdsk c: /F

pause
goto menu

:opcao4
cls

control.exe

goto menu

:opcao5
cls

echo ==================================================
echo * 	Listando Drivers do Computador:        
echo * 	%computername%                 
echo ==================================================

pause
Driverquery

pause
goto menu

:opcao6
cls

echo ==================================================
echo * 	Configuracao do Computador:            
echo * 	%computername%			   	   
echo ==================================================

pause
msinfo32

goto menu

:opcao7
cls

echo ====================================================
echo *	Saindo do Programa...
echo ====================================================

pause
exit

:opcao8
echo ==================================================
echo * Opcao Invalida! Escolha outra opcao do menu     
echo ==================================================

pause
goto menu