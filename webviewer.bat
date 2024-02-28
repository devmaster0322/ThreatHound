@echo off

if exist ./venv_webviewer (
	echo Virtual environment already exists.
    call venv_webviewer\Scripts\activate.bat
) else (
    py -m venv venv_webviewer
	call venv_webviewer\Scripts\activate.bat
	py -m pip install pip --upgrade
	py -m pip install --upgrade flask flask-session flask-sqlalchemy flask-bcrypt --ignore-installed
)

py webviewer.py
pause