```bash
devcontainer up --workspace-folder=.
devcontainer exec --workspace-folder=. bash -c 'nohup ./start.sh 2>&1 /dev/null' &
devcontainer exec --workspace-folder=. ./deploy_problems.sh
open http://localhost:5173

# generate system test case
devcontainer exec --workspace-folder=. python library-checker-problems/generate.py -p range_affine_range_sum
```
