
@IF "%2" == "" GOTO PARASET
@SET /A TIMERVALUE=%2
@ECHO �擾����=%TIMERVALUE%[ms]
@ECHO "�C���[�W��","PID","�Z�b�V������","�Z�b�V����#","�������g�p��" >> �������g�p��_%1.csv
@GOTO START

:PARASET
@SET /A TIMERVALUE=60000
@ECHO �擾����=%TIMERVALUE%[ms]

:START
@CALL Sub\MemUsage.bat %1
@Sub\timer.exe %TIMERVALUE%

@GOTO START
