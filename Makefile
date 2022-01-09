stop: 
	docker-compose down

up:
	docker-compose up -d

start: up
	./deploy.sh

watch-logs:
	docker-compose logs --follow aws | grep 'INFO:Lambda'