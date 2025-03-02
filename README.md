```bash
devcontainer up --workspace-folder=.
devcontainer exec --workspace-folder=. bash -c 'nohup ./start.sh 2>&1 /dev/null' &
devcontainer exec --workspace-folder=. ./deploy_problems.sh
open http://localhost:5173
```
