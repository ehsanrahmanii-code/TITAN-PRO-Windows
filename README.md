# TITAN PRO V75 — Windows Desktop

**Analysis-only** multi-timeframe crypto intelligence dashboard (Flask + Binance public data).  
No order execution. All persistent data is hard-locked under `C:\Users\ARSAM\Desktop\TITI`.

## Quick start (Windows)

1. Install [Python 3.11+](https://www.python.org/downloads/) (check **Add to PATH**).
2. Clone this repo.
3. Double-click **`build_windows.bat`**.
4. Run **`dist\TITAN_PRO.exe`** → dashboard at `http://127.0.0.1:8765`.

Optional installer: install [Inno Setup 6](https://jrsoftware.org/isinfo.php), open `installer.iss`, Compile → `installer_output\TITAN_PRO_V75_Setup.exe`.

## Run without packaging

```bat
pip install -r requirements.txt
python TITAN_PRO_V75_WIN_R2.py
```

## Data folder

```
C:\Users\ARSAM\Desktop\TITI\
  data\      database, logs, settings
  cache\     market / AI cache
  memory\    learning memory
  secrets\   optional API key .txt files
```

If your Windows username is not `ARSAM`, edit `TITAN_WIN_HOME` in the Python source before building.

## Optional API keys

Place plain-text files in `TITI\secrets\`, e.g. `gemini_api_key.txt`, `openai_api_key.txt`, `coinglass_api_key.txt`.

## Notes

- Building a native Windows `.exe` must be done **on Windows** (PyInstaller).
- Default port: **8765** (override with env `TITAN_PORT`).
- Console window stays open so you can see status and the local URL.

## License / disclaimer

For personal analysis only. Not financial advice. No trading execution.
