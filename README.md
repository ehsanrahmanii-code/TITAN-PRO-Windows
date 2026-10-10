# TITAN PRO V75 — Windows Desktop

**Analysis-only** multi-timeframe crypto intelligence dashboard (Flask + Binance public data).  
No order execution. Data is hard-locked under `C:\\Users\\ARSAM\\Desktop\\TITI`.

## Important (build EXE on Windows only)

This environment cannot produce a native Windows `.exe` from Linux.  
You build the EXE **on your Windows PC** with PyInstaller (one double-click).

## Setup steps

1. Install [Python 3.11 or 3.12](https://www.python.org/downloads/) and check **Add Python to PATH**.
2. Download / clone this repository:
   ```
   git clone https://github.com/ehsanrahmanii-code/TITAN-PRO-Windows.git
   cd TITAN-PRO-Windows
   ```
3. **Put the full engine file** `TITAN_PRO_V75_WIN_R2.py` in this same folder  
   (the large Python file you already have — copy it next to `build_windows.bat`).
4. Double-click **`build_windows.bat`**.
5. When finished, run **`dist\\TITAN_PRO.exe`**.
6. Dashboard opens at **http://127.0.0.1:8765**.

### Optional installer (Setup.exe)

1. Install [Inno Setup 6](https://jrsoftware.org/isinfo.php).
2. Build the EXE first (step 4 above).
3. Open `installer.iss` in Inno Setup → **Compile**.
4. Result: `installer_output\\TITAN_PRO_V75_Setup.exe` (installable package with Start Menu + desktop icon).

## Run without packaging

```bat
pip install -r requirements.txt
python TITAN_PRO_V75_WIN_R2.py
```

## Data folder (locked in source)

```
C:\\Users\\ARSAM\\Desktop\\TITI\\
  data\\      database, logs, settings
  cache\\     market / AI cache
  memory\\    learning memory
  secrets\\   optional API key .txt files
```

If your Windows username is not `ARSAM`, edit in the Python source before building:

```python
TITAN_WIN_HOME = Path(r"C:\\Users\\YOURNAME\\Desktop\\TITI")
```

## Optional API keys

In `TITI\\secrets\\` place text files, e.g. `gemini_api_key.txt`, `openai_api_key.txt`, `coinglass_api_key.txt`.

## What is included in this repo

| File | Purpose |
|------|--------|
| `build_windows.bat` | One-click build to `dist\\TITAN_PRO.exe` |
| `TITAN_PRO.spec` | PyInstaller one-file config |
| `installer.iss` | Inno Setup → Setup.exe |
| `requirements.txt` | Python deps |
| `assemble_source.py` | Optional reassembly helper |
| `RUN_README_FA.txt` | Persian guide |

## Disclaimer

Analysis only. Not financial advice. No order execution.
