# op-ai-monorepo

## 概要

このリポジトリはAI labのmonorepoであり、以下のサブプロジェクトを含んでいます。  
[op-ai-web-client](https://github.com/Lee266/op-ai-web-client) : フロントエンド  
[op-ai-server](https://github.com/Lee266/op-ai-server) : バックエンド  
[op-ai-lab](https://github.com/Lee266/op-ai-lab) : AI開発＋API  

## 要件

- GPU搭載機器　(AIの開発のため)
- Node.js

## 準備

- PlantUML
  - クラス図の作成などにPlantUMLを使用するため、VScodeの拡張機能のPlantUMLをインストールしてください。[PlantUML Install](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
  - もし使用しない場合はdocker-compose.ymlのplantuml-serverをコメントアウトまたはcompose時にplantuml-server=0を追加してください。
  - Dockerを起動後、PlantUMLを使用するには*.puファイルにでALT + Dのキーを同時に押すと使用出来ます。

## 始めるには

### Git Clone

このレポジトリをクローンしてください。

```sh
git clone https://github.com/Lee266/op-ai-monorepo.git
```

### .envファイルの作成

各ファイルのenvファイルを作成してください。

``` sh(/, /ai-lab, /client, /server)
cp .env.example .env
```

### Dockerの起動

GPUがある場合

``` sh
docker compose up -d --build
```

GPUがない場合

``` sh
docker compose up -d --build --scale jupyter=0
```

正常に動作すれば完了です。

## 環境

### チケット管理

- チケット管理にはClickUpを使用。
- Guestアカウント
  - login url: <https://app.clickup.com/9003254465/v/f/90031831893/90030629633>
  - email: <s2045109@g.tohoku-gakuin.ac.jp>
  - password: Optimguest1

### ファイル構成

- ai-lab: Aiについて開発,勉強をする場所
- client: Frontend
- docker: Dockerファイルを保存する場所
- server: Backend
- docs: ドキュメントを管理する場所

その他詳しい情報やファイル構成は各フォルダ内のREADME.mdを参照してください。

## その他

### 開発のヒント

開発のルール: [RULE.md](./docs/RULE.md)
