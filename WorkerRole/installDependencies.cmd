set PATH=%PATH%;%PYTHON_PATH%

REM Create a virtual environment.
python virtualenv.py --no-site-packages .

REM Use it (add it to the path).
call scripts\activate
cd app

REM Install dependencies.
pip install -r requirements.txt