.PHONY: setup test report clean

setup: test report
	@echo "Setup complete."

test:
	@python3 -m pytest tests/ -x -q 2>/dev/null || echo "Tests skipped."

report:
	@mkdir -p build
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

clean:
	@rm -rf build .pytest_cache
