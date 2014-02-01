test: lint test-python

lint:
	@echo "Linting Python files"
	flake8 --ignore=E121,W404,F403,E501 --exclude=./env/*,.git . || exit 1
	@echo ""

test-python:
	@echo "Running Flask-Restful-TODO tests"

server:
	python app.py 
