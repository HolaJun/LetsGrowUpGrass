@echo off

set readPushLog=""

:LetsGrowUpGrass
git add .
git commit -m "Planted grass"
git push -u origin +master > pushlog.txt
set /p readPushLog=<pushlog.txt
GOTO CheckGithubUpload

:CheckGithubUpload
REM 깃헙 실행이 안된경우
IF %readPushLog%=="" (
  GOTO LetsGrowUpGrass
REM 실행된거면.
) else (
  echo [%DATE% %TIME:~0,8%] 잔디를 심었습니다. >> log.txt
  exit
)

GOTO LetGrowUpgrass