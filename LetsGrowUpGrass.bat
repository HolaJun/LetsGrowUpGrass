@echo off

set readPushLog=""

:LetsGrowUpGrass
git add .
git commit -m "Planted grass"
git push -u origin +master > pushlog.txt
set /p readPushLog=<pushlog.txt
GOTO CheckGithubUpload

:CheckGithubUpload
REM ���� ������ �ȵȰ��
IF %readPushLog%=="" (
  GOTO LetsGrowUpGrass
REM ����ȰŸ�.
) else (
  echo [%DATE% %TIME:~0,8%] �ܵ� �ɾ����ϴ�. >> log.txt
  exit
)

GOTO LetGrowUpgrass