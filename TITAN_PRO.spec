# -*- mode: python ; coding: utf-8 -*-
# TITAN PRO V75 — Windows one-folder / one-file build
# Build on Windows:  pyinstaller --noconfirm TITAN_PRO.spec

block_cipher = None

a = Analysis(
    ['TITAN_PRO_V75_WIN_R2.py'],
    pathex=[],
    binaries=[],
    datas=[],
    hiddenimports=[
        'flask', 'jinja2', 'werkzeug', 'itsdangerous', 'click',
        'requests', 'urllib3', 'certifi', 'charset_normalizer', 'idna',
        'numpy', 'pandas', 'pandas._libs', 'pandas._libs.tslibs.base',
        'websocket', 'waitress', 'sqlite3', 'logging.handlers',
        'concurrent.futures', 'hashlib', 'json', 'statistics',
    ],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=['tkinter', 'matplotlib', 'scipy', 'PIL', 'pytest'],
    win_no_prefer_redirects=False,
    win_private_assemblies=False,
    cipher=block_cipher,
    noarchive=False,
)

pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.zipfiles,
    a.datas,
    [],
    name='TITAN_PRO',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=True,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    icon=None,
)
