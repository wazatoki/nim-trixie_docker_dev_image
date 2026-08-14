rem attach on running container

cd /d %~dp0
docker compose -f ..\docker\docker-compose.yml --env-file ..\..\.env exec --user dev nim_ssh_div_container /bin/bash