# yosupo_judge_local

```sh
git clone --recursive --depth 1 -b v0.2.0 https://github.com/goropikari/yosupo_judge_local.git
cd yosupo_judge_local
./start.sh

# 問題をデプロイする
docker compose exec api ./deploy_aplusb.sh
docker compose exec api ./deploy_problems.sh
```
