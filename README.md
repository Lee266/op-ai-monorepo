# op-ai-monorepo

## 概要

* このプロジェクトはAI labの親レポジトリです。何か都合がある場合を除きこのプロジェクトから始めてください。
* 各レポジトリはWindowsを対象に書かれているので、他のOSを使用する場合は各自修正してください。

## 必須環境

* GPU搭載機器　(AIの開発のため)
* Node.js

### 各レポジトリのリンク

* [op-ai-monorepoのレポジトリ](https://github.com/Lee266/op-ai-monorepo)
* [op-ai-web-clientのレポジトリ](https://github.com/Lee266/op-ai-web-client)
* [op-ai-serverのリポジトリ](https://github.com/Lee266/op-ai-server)
* [op-ai-labのレポジトリ](https://github.com/Lee266/op-ai-lab)

## 準備

* PlantUML
  * クラス図の作成にPlantUMLを使用するため、VScodeの拡張機能のPlantUMLをインストールしてください。  
    [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
  * もし使用しない場合はdocker-compose.ymlのplantuml-serverをコメントアウトしてください。
  * またdockerを起動後、PlantUMLを使用するには*.puファイルにでALT + Dのキーを同時に押すと使用出来ます。

* JupyterLab
  * GPUなしの環境で使用する場合: GPUを搭載していないマシンを使用する場合、docker-compose.yml内のjupyterをコメントアウトしてください。

## 始めるには

### Clone

下記のコマンドを実行してdockerを起動してください。

```sh
git clone --recursive https://github.com/Lee266/op-ai-monorepo.git
```

submoduleを自分で指定したい場合は下記のコマンドを実行し,各フォルダ内に入ってそれぞれcloneしてください。

```sh
git clone https://github.com/Lee266/op-ai-monorepo.git
```

### .envファイルの作成

各フォルダで env ファイルを作成してください。また .env ファイル内の {} は自分の環境に合わせないといけないので修正してください。

```sh
bash ./setup_env.sh
```

上記が実行できない場合は下記を実行してください。

```sh
cp .env.example .env
```

```sh
cd client
cp .env.example .env.local
```

```sh
cd server
cp .env.example .env
```

```sh
cd ai-lab
cp .env.example .env
```

### Build

下記のコマンドを使用して, dockerを起動してください。

```sh
docker compose up -d --build
```

正常に動作すれば完了です。

## 環境

### チケット管理

* チケット管理にはClickUpを使用。
* [ClickUpのURL](https://app.clickup.com/9003254465/v/f/90031831893/90030629633)

### ファイル構成

* ai-lab: Aiについて開発,勉強をする場所
  * Jupyter lab
* client: Frontend
  * Next.js
* docker: Dockerファイルを保存する場所
  * Next.js
  * jupyterLab
  * PostgreSQL
  * Adminer
  * PlantUML
* server: Backend

その他詳しい情報やファイル構成は各フォルダ内のREADME.mdを参照してください。
