# op-ai-monorepo

## 準備

- PlantUML
  - クラス図の作成にPlantUMLを使用するため、VScodeの拡張機能のPlantUMLをインストールしてください。[PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
  - もし使用しない場合はdocker-compose.ymlのplantuml-serverをコメントアウトしてください。
  - またdockerを起動後、PlantUMLを使用するには*.puファイルにでALT + Dのキーを同時に押すと使用出来ます。

## 始めるには

- GPUなしの環境で使用する場合: GPUを搭載していないマシンを使用する場合、docker-compose.yml内のjupyterをコメントアウトしてください。
- .envファイルの作成: .env.exampleをコピーして.envファイルを作成してください。.envファイルは必要に応じて変更できます。
- .envファイルは適度変更してください。
- Dockerコンテナの起動: コマンド docker-compose up -d --build を実行してください。
- 正常に動作すれば完了: セットアップが成功すると、作業完了です。

## 環境

必要要件

- GPU搭載機器　(AIの開発のため)

チケット管理

- チケット管理にはClickUpを使用。
- [ClickUpのURL](https://app.clickup.com/9003254465/v/f/90031831893/90030629633)

ファイル構成

- ai-lab: Aiについて開発,勉強をする場所
  - Jupyter lab
- client: Frontend
  - Next.js
- docker: Dockerファイルを保存する場所
  - Next.js
  - jupyterLab
  - PostgreSQL
  - Adminer
  - PlantUML
- server: Backend
その他詳しい情報やファイル構成は各フォルダ内のREADME.mdを参照してください。
