DJANGO_CNTNR=demo_django
# ======================================================================================================================
up:
	docker-compose up -d

down:
	docker-compose down -v

start:
	docker-compose start

stop:
	docker-compose stop

# Ребилд родительских образов с нуля
rebuild: down
	docker-compose build --no-cache

# Доступ к конслои django контейнера
django_console:
	docker exec -it $(DJANGO_CNTNR) /bin/bash

# Доступ к логу django контейнера
django_log:
	docker logs $(DJANGO_CNTNR)