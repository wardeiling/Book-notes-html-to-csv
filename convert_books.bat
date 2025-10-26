@echo off
REM HTML Book Notes to CSV Converter - Easy Batch Script
REM Place your HTML files in the same folder as this script and run it

echo ========================================
echo HTML Book Notes to CSV Converter
echo ========================================
echo.

REM Check if Python virtual environment exists
if not exist ".venv\Scripts\python.exe" (
    echo Setting up Python environment...
    python -m venv .venv
    .venv\Scripts\pip.exe install beautifulsoup4
    echo.
)

REM Run the converter in batch mode
echo Converting all HTML files to CSV...
echo.
".venv\Scripts\python.exe" html_to_csv_converter.py . --batch

echo.
echo ========================================
echo Conversion complete!
echo ========================================
echo Check the CSV files in this folder.
echo.
pause
