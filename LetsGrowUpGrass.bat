@echo off

set readPushLog=

:LetsGrowUpGrass
git add .
git commit -m "Planted grass"
git push -u origin +master > pushlog.txt
set /p readPushLog=<pushlog.txt
GOTO CheckGithubUpload

:CheckGithubUpload
echo %readPushLog%
pause

GOTO LetGrowUpgrass