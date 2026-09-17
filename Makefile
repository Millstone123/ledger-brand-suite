.PHONY: setup report clean

setup: report
	@echo "Setup complete. Report written to build/summary.txt"

report:
	@mkdir -p build
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

clean:
	@rm -rf build
