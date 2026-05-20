SHELL := /bin/bash

.PHONY: testcommand
testcommand:
	@echo "THIS IS A TEST COMMAND"

.PHONY: frontend-build
frontend-build:
	cd frontend && npm install && npm run 

.PHONY: backend-dev
backend-dev:
	@echo "Starting backend development server..."
	cd backend && source .venv/bin/activate && uvicorn app.main:app --reload


## frontend-dev:
.PHONY: frontend-dev
frontend-dev:
	@echo "Starting frontend development server..."
	cd fronend && npm install && npm run dev

.PHONY: build-prod
build-prod:
	docker compose -f docker-compose.build-prod.yml build