.PHONY: setup report clean

setup: report
	@python3 scripts/integrity.py
	@echo "Setup complete."

report:
	@mkdir -p build
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

clean:
	@rm -rf build
