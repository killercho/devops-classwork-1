#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag="local" || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo="" || DockerRepo="ghcr.io/${docker_username}/"
docker build -t "${DockerRepo}flask-app:latest" -t "${DockerRepo}flask-app:1.0-$Tag" app/

