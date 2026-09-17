# ledger-report-suite

Accounting journal summary generator with themed terminal output.

Part of the m100.cloud suite — uses shared branding assets from the central
server so your report headers and footers match the rest of your team's output.

## Setup

```bash
make setup
```

Setup applies the shared m100 rendering profile, then generates a sample
report in `build/summary.txt`.

## Usage

```bash
make report
```

Generates `build/summary.txt` from `data/journal.csv`.
