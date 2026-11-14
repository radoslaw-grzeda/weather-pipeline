.PHONY: run
run:
	uv run src/weather_pipeline/main.py

.PHONY: lint
lint:
	uv run ruff check .
	uv run ruff format --check .
	uv run mypy .

.PHONY: test
test:
	uv run pytest tests/
