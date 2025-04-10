# yosupo_judge_local

```sh
git clone --recursive --depth 1 -b v0.2.0 https://github.com/goropikari/yosupo_judge_local.git
cd yosupo_judge_local
./start.sh

## 問題をデプロイする
docker compose exec api ./deploy_aplusb.sh
docker compose exec api ./deploy_problems.sh
```

## 言語を追加する

Dockerfile を追加、build.sh の修正、langs.toml の修正、api, judger コンテナの rebuild をする

ref: <https://github.com/goropikari/yosupo_judge_local/commit/c7596b209cf910b31410c87e8a0ab9217c0d9f7b>

```sh
make update-lang
docker compose down
docker compose up -d
```

## system test case を作成

```sh
docker compose exec api python3 /opt/library-checker-problems/generate.py -p <problem_name>
docker compose exec api python3 /opt/library-checker-problems/generate.py -p aplusb
```
