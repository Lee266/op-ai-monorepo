# 開発のルール

## Commit ルール

Conventional Commitsを参考にしています。

- 書き方
  - type[scope　*optional]: description
  - docs[readme]: README.meファイルの追加
- type
  - feat: 新しく追加した機能関連
  - fix: バグの修正関連
  - docs: ドキュメント関連
  - style: フォーマットの修正など(コードの動作に影響しないスペース、フォーマット、セミコロンなど)
  - refactor: バッグではないコード改善関連
  - perf: パフォーマンス改善関連
  - test: テスト関連
  - chore: 補助ツール、ライブラリ関連
  - build: ビルド関連
  - ci: CI用の設定やスクリプトに関する変更
  - revert: 以前のコミットに復帰した場合
- scope
  - コミットの範囲を指定し、どこの実装・修正を行ったかが分かるようにする
  - 名詞
- description
  - コードの短い要約
  - なぜ変更をしたかも簡単に説明する
  - 日本語

### コミットの対象ファイル例

- docs
  - readme
- test
  - jest
- chore
  - gitignore
  - docker
  - ESlint
  - githooks
  - makefile
- ci
  - github action
- build
  - npm

## Branch ルール

- 永続ブランチ
  - main: 本番環境
  - develop: 開発環境 (default)
- 命名規則
  - ブランチ名はケバブケースを使用する。
    - ex: feature-name, bugfix-3254-bug
  - must
    - カテゴリー名(prefix)で名前を始める
    - 長いブランチ名は避ける
    - 数字のみは避ける
    - 複数な命名規則を避ける
      - 目的は開発の効率化である。
      - 一貫性と正確性を保つ
  - need
    - 追跡IDを含める
      - bugfixは必須
- プレフィックス
  - mainにマージされるブランチ
    - hotfix/: リリース後の緊急対応用ブランチ
    - release/: プロジェクトリリース用ブランチ
  - developにマージされるブランチ
    - bugfix/: バグの修正用ブランチ
    - feature/: 機能追加用ブランチ
