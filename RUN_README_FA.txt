TITAN PRO V75 — راهنمای ساخت و اجرای برنامه ویندوز

این مخزن کد کامل داشبورد تحلیلی TITAN است (فقط تحلیل، بدون سفارش).

محدودیت مهم:
  ساخت فایل .exe واقعی فقط روی خود ویندوز با Python انجام می‌شود.

روش ۱ — ساخت EXE روی ویندوز (پیشنهادی)
1. Python 3.11 یا 3.12 را از python.org نصب کنید (تیک Add Python to PATH)
2. این پوشه را دانلود/کلون کنید
3. روی build_windows.bat دابل‌کلیک کنید
4. بعد از اتمام: فایل dist\TITAN_PRO.exe آماده است
5. دابل‌کلیک روی TITAN_PRO.exe → مرورگر داشبورد باز می‌شود

روش ۲ — اجرا بدون EXE
  pip install -r requirements.txt
  python TITAN_PRO_V75_WIN_R2.py

پوشه داده (قفل‌شده در کد):
  C:\Users\ARSAM\Desktop\TITI\
    data\ cache\ memory\ secrets\

اگر نام کاربری ویندوز شما ARSAM نیست، قبل از بیلد در سورس:
  TITAN_WIN_HOME = Path(r"C:\Users\YOURNAME\Desktop\TITI")

کلیدهای API اختیاری داخل TITI\secrets\ (مثلاً gemini_api_key.txt)

نصب‌کننده اختیاری: Inno Setup + فایل installer.iss
