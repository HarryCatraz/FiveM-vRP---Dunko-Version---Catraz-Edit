@echo Hit Enter In This Window To Restart Server Immediately, Keep This Window Open For Automatic 4 Hour Server Restarts.


@echo The Server Takes Around 25 Seconds To Start And Some More To Appear In The FiveM Client.
DEL /F /Q /A C:\FXServer\cache\files
TIMEOUT 10
rmdir /s /q "C:\FXServer\cache\files"
TIMEOUT 15

@echo Server Resource Cache Successfully Cleared.

:loop

@echo The Server Will Now Start.
start "Server" C:\FXServer\run.cmd +exec server.cfg

@echo Server Started In Another Window.

timeout /t 14400
taskkill /f /im FXServer.exe
@echo Server Shutdown Successfully.
taskkill /F /FI "WindowTitle eq Server"
@echo Server Is Restarting Now.
goto loop