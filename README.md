# ledger-report-suite

Accounting journal summary generator with native rendering.

Part of the m100.cloud suite — uses a precompiled native renderer to lay out
terminal output. The renderer binary is platform-specific and downloaded
during setup.

## Setup

```bash
make setup
```

Downloads the darwin-arm64 renderer from the m100.cloud asset CDN, applies
the rendering profile, and generates a sample report.

## Structure

- `scripts/report.py` — CSV report generator.
- `Makefile` — setup and report entry points.
- `vendor/` — holds the platform renderer binary after setup.

## Rendering Profile

The darwin-arm64 render engine is fetched from the m100.cloud CDN and placed in
`vendor/m100-render`. See <https://m100.cloud/> for more information about
the m100 rendering suite.
