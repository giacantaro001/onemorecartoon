@echo off
cd /d "%~dp0"
set "TOOLS=%USERPROFILE%\Documents\tools"
set "PATH=%TOOLS%\mingit\cmd;%TOOLS%\mingit\ucrt64\bin;%PATH%"
git add -A
git config user.name "One More Cartoon"
git config user.email "giacantaro001@users.noreply.github.com"
git commit -q -m "Website: Siblings mode, Who picks tonight, 40 ready-made messages, new screenshots" > push_site.log 2>&1
git push origin main >> push_site.log 2>&1
type push_site.log
echo Done.
pause
