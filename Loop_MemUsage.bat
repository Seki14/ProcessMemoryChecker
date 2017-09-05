
@IF "%2" == "" GOTO PARASET
@SET /A TIMERVALUE=%2
@ECHO 取得周期=%TIMERVALUE%[ms]
@ECHO "イメージ名","PID","セッション名","セッション#","メモリ使用量" >> メモリ使用量_%1.csv
@GOTO START

:PARASET
@SET /A TIMERVALUE=60000
@ECHO 取得周期=%TIMERVALUE%[ms]

:START
@CALL Sub\MemUsage.bat %1
@Sub\timer.exe %TIMERVALUE%

@GOTO START
