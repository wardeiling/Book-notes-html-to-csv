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
- **Title**: The name of the book (extracted from HTML header)
- **Author**: The author of the book (extracted from HTML header)
- **URL**: (empty for books, used for articles)
- **Note**: Your personal notes attached to the highlight
- **Location**: Sequential number indicating highlight order
- **Date**: When the highlight was made (YYYY-MM-DD HH:MM:SS format)

### 📝 About Book Titles & Authors

The tool automatically extracts book titles and authors from the HTML file's header (the `<h2>` tag), which typically follows the format: **"Book Title - Author Name"**.

**If the book title or author appears incorrect in your CSV:**
1. Open the generated CSV file in Excel, Google Sheets, or any text editor
2. Manually edit the **Title** and **Author** columns as needed
3. Save the file and proceed with Readwise import

*Common reasons for incorrect extraction: unusual formatting in the original Meebook export, titles with dashes, or missing author information.*

## 📚 Complete Workflow Example

Here's exactly what happens when you use this tool:

### Step 1: Your Meebook HTML files (in `html-files/`)
```
html-files/
├── Why We Sleep_ Unlocking the Power of Sleep and Dreams - Matthew Walker_20251026_083943.html
└── To Kill a Mockingbird - Harper Lee_20251026_083931.html
```

### Step 2: Run the Converter
**Double-click** `batch_convert.bat` (Windows) or run `python html_to_csv_converter.py --batch`

**Console Output:**
```
Found 2 HTML files to process:
  - Why We Sleep_ Unlocking the Power of Sleep and Dreams - Matthew Walker_20251026_083943.html
  - To Kill a Mockingbird - Harper Lee_20251026_083931.html

Processing: Why We Sleep_ Unlocking the Power of Sleep and Dreams - Matthew Walker_20251026_083943.html
  ✓ Created: output\Why We Sleep_ Unlocking the Power of Sleep and Dreams - Matthew Walker.csv
  ✓ Found 36 highlights

Processing: To Kill a Mockingbird - Harper Lee_20251026_083931.html
  ✓ Created: output\To Kill a Mockingbird - Harper Lee.csv
  ✓ Found 7 highlights

============================================================
BATCH PROCESSING COMPLETE!
============================================================
Combined CSV file: output\all_books_combined.csv
Total highlights across all books: 43
```

### Step 3: Generated Files (in `output/`)
```
output/
├── Why We Sleep_ Unlocking the Power of Sleep and Dreams - Matthew Walker.csv  (36 highlights)
├── To Kill a Mockingbird - Harper Lee.csv  (7 highlights)
└── all_books_combined.csv  (43 total highlights)
```

### Step 4: Fix Book Titles (Optional but Recommended)
1. **Open** `all_books_combined.csv` in Excel or Google Sheets
2. **Edit the Title column** to clean up book titles:
   - Change `"Why We Sleep_ Unlocking the Power of Sleep and Dreams"` → `"Why We Sleep"`
   - Keep `"To Kill a Mockingbird"` as is
3. **Save** the file

### Step 5: Import to Readwise
1. Go to [readwise.io/import_bulk](https://readwise.io/import_bulk)
2. **Upload** your edited `all_books_combined.csv`
3. **✅ Success!** All 43 highlights are now in Readwise with clean titles, proper dates, and personal notes

**Result in Readwise:**
- 📖 "Why We Sleep" by Matthew Walker (36 highlights)
- 📖 "To Kill a Mockingbird" by Harper Lee (7 highlights)

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
