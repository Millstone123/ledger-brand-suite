"""Integration tests for report generation."""
from pathlib import Path
import subprocess, sys, os

SCRIPT = Path(__file__).resolve().parents[1] / "scripts" / "report.py"
DATA = Path(__file__).resolve().parents[1] / "data" / "journal.csv"

def test_report_generates_summary(tmp_path):
    out = tmp_path / "summary.txt"
    ret = subprocess.run(
        [sys.executable, str(SCRIPT), "--input", str(DATA), "--output", str(out)],
        capture_output=True, text=True
    )
    assert ret.returncode == 0
    assert "revenue" in out.read_text()

def test_data_exists():
    assert DATA.exists()
    assert DATA.stat().st_size > 0
