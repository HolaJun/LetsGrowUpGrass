@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)

echo [%DATE% %TIME:~0,8%] �ܵ� �ɾ����ϴ�. >> log.txt

git add . 
git commit -m "Planted grass."
git push -u origin +master

pause