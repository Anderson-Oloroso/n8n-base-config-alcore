.PHONY: start stop restart logs ps env reset validate ngrok

start:
	./start.sh

stop:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

ps:
	docker compose ps

env:
	./scripts/setup-env.sh

reset:
	./scripts/reset-local.sh

validate:
	docker compose config --quiet

ngrok:
	docker compose --profile tunnel up -d
	docker compose logs -f ngrok
