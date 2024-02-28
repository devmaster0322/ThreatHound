@echo off

if exist ./venv_ThreatHound (
	echo Virtual environment already exists.
    call venv_ThreatHound\Scripts\activate.bat
) else (
    py -m venv venv_ThreatHound
	call venv_ThreatHound\Scripts\activate.bat
	py -m pip install pip --upgrade
	py -m pip install --upgrade -r requirements_ThreatHound.txt --ignore-installed
)

py ThreatHound_v2.py -r
pause