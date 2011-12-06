REM Skip Python install if we're running under the emulator
if "%EMULATED%"=="true" exit /b 0

REM Strip the trailing backslash (if present)
if %PYTHON_PATH:~-1%==\ SET PYTHON_PATH=%PYTHON_PATH:~0,-1%

cd /d "%~dp0"

REM Download directly from python.org
powershell -c "(new-object System.Net.WebClient).DownloadFile('http://python.org/ftp/python/2.7.2/python-2.7.2.msi', 'python.msi')"

start /w msiexec /i python.msi /qn TARGETDIR="%PYTHON_PATH%"

REM Ensure permissive ACLs so other users (like the one that's about to run Python) can use everything.
icacls "%PYTHON_PATH%" /grant everyone:f
icacls . /grant everyone:f

REM Make sure Python was installed properly (will produce a non-zero exit code if not)
"%PYTHON_PATH%\python" --version