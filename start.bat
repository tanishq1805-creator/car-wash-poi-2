@echo off
echo ========================================
echo Car Wash POS Server Startup
echo ========================================
echo.
cd /d "%~dp0"
echo Current directory: %CD%
echo.

echo [1/4] Activating virtual environment...
call venv\Scripts\activate.bat
if errorlevel 1 (
    echo ERROR: Could not activate virtual environment!
    echo Make sure venv folder exists.
    pause
    exit /b 1
)
echo Virtual environment activated.
echo.

echo [2/4] Checking Python and Flask...
python -c "import flask; print('Flask version:', flask.__version__)" 2>nul
if errorlevel 1 (
    echo ERROR: Flask not found! Installing dependencies...
    pip install -r requirements.txt
    if errorlevel 1 (
        echo ERROR: Failed to install dependencies!
        pause
        exit /b 1
    )
) else (
    echo Dependencies OK.
)
echo.

echo [3/4] Testing app import...
python -c "import app; print('App imported successfully!')" 2>&1
if errorlevel 1 (
    echo ERROR: App failed to import! Check the error above.
    pause
    exit /b 1
)
echo.

echo [4/4] Starting Flask server...
echo.
echo ========================================
echo Server starting...
echo ========================================
echo.
echo Server will be available at:
echo   - http://localhost:5000
echo   - http://127.0.0.1:5000
echo.
echo Press Ctrl+C to stop the server
echo ========================================
echo.

python app.py

echo.
echo Server stopped.
pause

