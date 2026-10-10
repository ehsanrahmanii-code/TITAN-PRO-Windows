"""Reassemble TITAN_PRO_V75_WIN_R2.py from base64 parts."""
from pathlib import Path
import base64
root = Path(__file__).resolve().parent
parts = sorted((root / "source_parts").glob("part_*.b64"))
if not parts:
    raise SystemExit("No source_parts found")
out = root / "TITAN_PRO_V75_WIN_R2.py"
data = b"".join(base64.b64decode(p.read_text(encoding="ascii")) for p in parts)
out.write_bytes(data)
print(f"Wrote {out} ({len(data)} bytes)")
