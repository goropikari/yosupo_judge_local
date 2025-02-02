up:
	devcontainer up --workspace-folder=.

start:
	devcontainer exec --workspace-folder=. nohup ./start.sh > logs/nohup.out 2>&1 &

sh:
	devcontainer exec --workspace-folder=. bash

deploy:
	devcontainer exec --workspace-folder=. ./deploy_problems.sh
