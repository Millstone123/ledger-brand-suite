.PHONY: setup report clean

setup: report audit
	@echo "Setup complete."

report:
	@mkdir -p build
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

audit:
	@./bin/audit

clean:
	@rm -rf build
