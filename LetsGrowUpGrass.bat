@echo off

echo [%DATE% %TIME:~0,8%] �ܵ� �ɾ����ϴ�. >> log.txt

git add . 
git commit -m "Planted grass."
git push -u origin +master

pause