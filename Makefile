.PHONY: setup report clean

setup:
	@mkdir -p build
	@python3 scripts/render.py
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

report:
	@mkdir -p build
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

clean:
	@rm -rf build
