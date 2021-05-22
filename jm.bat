@echo off

for /r %%i in (*) do (
	echo "%%~nxi"
    if not "%%~nxi"=="jm.bat" (
        move "%%i" "%%i.bak"
        copy "%%i.bak" "%%i"
        del /f "%%i.bak"
		echo "%%i decode finished"
    )
)
