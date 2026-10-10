"""Reassemble TITAN_PRO_V75_WIN_R2.py from gzipped base64 parts (if present)."""
from pathlib import Path
import base64
import gzip

root = Path(__file__).resolve().parent
parts_dir = root / "source_parts"
parts = sorted(parts_dir.glob("gz_part_*.txt"))
out = root / "TITAN_PRO_V75_WIN_R2.py"
if parts:
    b64 = "".join(p.read_text(encoding="ascii") for p in parts)
    data = gzip.decompress(base64.b64decode(b64))
    out.write_bytes(data)
    print(f"Wrote {out} ({len(data)} bytes) from {len(parts)} parts")
elif out.is_file() and out.stat().st_size > 100_000:
    print(f"Source already present: {out} ({out.stat().st_size} bytes)")
else:
    raise SystemExit(
        "Full engine source not found.\n"
        "Copy TITAN_PRO_V75_WIN_R2.py into this folder (same place as build_windows.bat),\n"
        "or provide source_parts/gz_part_*.txt and re-run this script."
    )
