@echo off
echo HTML Book Notes to CSV Converter
echo ==================================
echo.
echo This script will process all HTML files in the "html-files" folder
echo and create individual CSV files plus a combined CSV file in the "output" folder.
echo.

REM Check if html-files folder exists
if not exist "html-files" (
    echo Creating "html-files" folder...
    mkdir "html-files"
    echo.
    echo Please place your HTML book note files in the "html-files" folder and run this script again.
    echo.
    pause
    exit /b
)

REM Check if there are HTML files
dir "html-files\*.html" >nul 2>&1
if errorlevel 1 (
    echo No HTML files found in the "html-files" folder.
    echo Please place your HTML book note files in the "html-files" folder and run this script again.
    echo.
    pause
    exit /b
)

echo Starting conversion...
echo.

REM Run the Python script
".venv\Scripts\python.exe" html_to_csv_converter.py --batch

echo.
echo Press any key to exit...
pause >nul
