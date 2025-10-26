# Meebook to Readwise Converter

Convert your Meebook ereader highlights and notes  (from the Haoqing reading app) to CSV format for seamless import into [Readwise](https://readwise.io).

## 📖 What This Does

This tool bridges the gap between your **Meebook ereader** and **Readwise** by converting exported HTML book notes into CSV format that's fully compatible with [Readwise's bulk import feature](https://readwise.io/import_bulk).

### Why Use This?
- **Preserve Your Reading Journey**: Don't lose all those valuable highlights and notes from your Meebook
- **Centralize Your Knowledge**: Get all your highlights into Readwise alongside notes from other sources
- **Automated Processing**: Handles multiple books at once with proper metadata extraction
- **Readwise Ready**: Generates CSV files in the exact format Readwise expects

## 📁 Project Structure

```
Book-notes-html-to-csv/
├── html-files/              # 📁 Place your HTML files here
├── output/                  # 📁 Generated CSV files will appear here
├── html_to_csv_converter.py # 🐍 Main conversion script
├── batch_convert.bat        # 🚀 Easy-to-use batch script for Windows
├── requirements.txt         # 📋 Python dependencies
└── README.md               # 📖 This file
```

## ✨ Features

- **Meebook Compatible**: Specifically designed for HTML exports from Meebook ereaders
- **Complete Data Extraction**: Captures highlights, personal notes, timestamps, book titles, and authors
- **Batch Processing**: Handle multiple books simultaneously
- **Dual Output**: Creates both individual CSV files per book AND a master combined file
- **Readwise Ready**: Output format matches [Readwise's CSV import requirements](https://readwise.io/import_bulk) exactly
- **Metadata Preservation**: Maintains reading dates and location information
- **Multi-language Support**: Handles books in any language with proper UTF-8 encoding

## 🚀 How to Use This Tool

### Step 1: Export from Your Meebook
1. On your Meebook ereader, go to your highlights/notes for each book
2. Export or share your notes in **HTML format**
3. Transfer these HTML files to your computer (via USB, email, cloud storage, etc.)

### Step 2: Easy Conversion (Recommended Method)

**For Windows Users:**
1. **Download or clone** this repository to your computer
2. **Place your Meebook HTML files** in the `html-files/` folder
3. **Double-click** `batch_convert.bat` 
4. **Done!** Check the `output/` folder for your CSV files

**For Mac/Linux Users:**
1. **Install Python** (3.7 or newer) if you don't have it
2. **Install dependencies**: `pip install beautifulsoup4`
3. **Place your HTML files** in the `html-files/` folder
4. **Run**: `python html_to_csv_converter.py --batch`
5. **Check results** in the `output/` folder

### Step 3: Import to Readwise
1. Go to [readwise.io/import_bulk](https://readwise.io/import_bulk)
2. Upload your generated CSV file(s)
3. Readwise will automatically process all your highlights with proper book information

## 🛠️ Installation & Setup

### Windows (Easiest)
1. **Download** this repository (click "Code" → "Download ZIP" on GitHub)
2. **Extract** the ZIP file to a folder on your computer
3. **That's it!** The batch file will handle Python setup automatically

### Mac/Linux
1. **Ensure Python 3.7+** is installed: `python3 --version`
2. **Download** this repository
3. **Install dependencies**: `pip install beautifulsoup4`

### Manual Command Line Usage (Advanced)
```bash
# Convert a single HTML file
python html_to_csv_converter.py "html-files/book.html" -o "output/book.csv"

# Process all files with batch mode (recommended)
python html_to_csv_converter.py --batch

# Get help
python html_to_csv_converter.py --help
```

## CSV Output Format

The generated CSV files contain the following columns (compatible with Readwise):

- **Highlight**: The actual text of the highlight (mandatory)
- **Title**: The name of the book
- **Author**: The author of the book
- **URL**: (empty for books, used for articles)
- **Note**: Your personal notes attached to the highlight
- **Location**: Sequential number indicating highlight order
- **Date**: When the highlight was made (YYYY-MM-DD HH:MM:SS format)

## 🤝 Contributing & Support

### Found a Bug?
- Open an issue on GitHub with your HTML file structure (remove personal content)
- Include error messages and your operating system

### Want to Improve This?
- Pull requests welcome!
- Test with different Meebook models/firmware versions
- Add support for other ereader HTML formats

### Technical Details
- **Language**: Python 3.7+
- **Dependencies**: BeautifulSoup4 for HTML parsing
- **Encoding**: Full UTF-8 support for international characters
- **Date Handling**: Converts Meebook timestamps to Readwise-compatible format
- **File Safety**: Handles special characters in book titles/filenames automatically

---

**Made with ❤️ for the reading community**

*If this tool helped you preserve your reading notes, consider starring the repository or sharing it with other Meebook users!*
