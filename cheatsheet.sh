docker-compose up  # запускает все
docker-compose up backend  # запускает только бекенд и то что с ним связовано (бд в данном случае)

docker-compose -f docker-compose.yml up  # запустить только из конкретного докер-компоуза

docker-compose up -d  # запустит в бекграунде
docker-compose stop  # останавлтвает все

# -f == follow, отпринтит логи у будет ждать новых
docker-compose logs -f  # логи
docker-compose logs -f backend   # логи бекенда

# хелпы и все остальное:
docker-compose --help
docker-compose <command> --help
docker-compose <command> <another-command> --help
