@echo off

:LetsGrowUpGrass
git add .
git commit -m "Planted grass"
git push -u origin +master > pushlog.txt
set /p writePushLog=<pushlog.txt
GOTO CheckGithubUpload

:CheckGithubUpload
set /p readPushLog=<pushlog.txt
REM ����� ���ε尡 �ȵǾ��� ���(���ͳ� ���� ��) ����ؼ� ���ε� ��û��.
IF "%readPushLog%"=="" (
  GOTO LetsGrowUpGrass
) else (
  echo [%DATE% %TIME:~0,8%] �ܵ� �ɾ����ϴ�. >> log.txt
)
pause

GOTO LetGrowUpgrass