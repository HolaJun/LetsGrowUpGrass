@echo off

:LetsGrowUpGrass
git add .
git commit -m "Planted grass"
git push -u origin +master > pushlog.txt
set /p writePushLog=<pushlog.txt
GOTO CheckGithubUpload

:CheckGithubUpload
set /p readPushLog=<pushlog.txt
echo %readPushLog%
pause

GOTO LetGrowUpgrass