# やることノート

優先度・期限・タグでタスクを整理するシンプルなタスク管理Webアプリです。
ビルド不要の `index.html` 1枚で動きます。

## 機能
- タスクの追加（優先度 P1〜P3、期限、`#タグ`）
- 完了／未完了の切り替え、ダブルクリックで編集、削除
- 「未完了／今日まで／期限切れ／完了／すべて」の絞り込みと検索
- 期限の残り日数・超過日数の表示

## データの保存
タスクはブラウザの localStorage に保存されます（端末・ブラウザごとに別々）。

## 公開方法（GitHub Pages）
1. リポジトリの **Settings → Pages** を開く
2. **Source** を「Deploy from a branch」、ブランチを `main`、フォルダを `/ (root)` にして保存
3. 数分後に `https://<ユーザー名>.github.io/task/` で開けます

## Docker で動かす
nginx でアプリを配信するイメージを作れます。

```bash
docker compose up -d --build
```

ブラウザで http://localhost:8080/ を開きます。止めるときは `docker compose down` です。

Compose を使わない場合：

```bash
docker build -t yarukoto-note .
docker run -d --name yarukoto -p 8080:80 yarukoto-note
```
