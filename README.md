# DG-AIDLC

**Domain-Guarded AI-DLC** — AI-DLC を土台に、DDD（業務境界）と TDD（品質ガード）で AI の実装を枠に閉じ込める開発型のキットです。

目指す実装形は、よくあるレイヤード／ヘキサゴナル（Domain / Application / Infrastructure）です。新規性はレイヤの発明ではなく、**AI 駆動でもその型と仕様契約を崩しにくくする約束**にあります。

## 含まれるもの

| パス | 内容 |
|------|------|
| `cursor/rules/ai-dlc-workflow.mdc` | 上流の AI-DLC ワークフロー |
| `cursor/rules/dg-aidlc.mdc` | Domain / TDD ガードの上乗せ規約（汎用） |
| `aidlc-rule-details/` | AI-DLC の工程詳細ルール（日本語ドキュメント指針含む） |
| `templates/aidlc-docs/` | Intent・用語・集約・受入・判断ログの空テンプレ |
| `adapters/` | スタック別の置き方メモ（任意） |

## 作品リポへの入れ方

1. このキットから次をコピーする（または submodule / subtree）。
   - `cursor/rules/*.mdc` → 作品リポの `.cursor/rules/`
   - `aidlc-rule-details/` → 作品リポの `.aidlc-rule-details/`
   - `templates/aidlc-docs/` → 作品リポの `aidlc-docs/`（初期ドキュメント）
2. 使う言語・FW に応じて `adapters/` を参照し、境界検証ツールとディレクトリ名を作品 README に1節書く。
3. `aidlc-docs/` の Step 1–3 用 `*-questions.md` で核心判断を答え、明示承認してから Red に入る（チャットだけでは確定しない）。

`ai-dlc-workflow.mdc` は `.aidlc-rule-details/`（またはドキュメント記載の代替パス）を読みにいく前提です。コピー先のパスを揃えてください。

## 核となる約束（要約）

1. ドメインの核心判断は人間が確定する（AI は草案まで）
2. 受入例示とテストを 1 対 1 対応させる
3. 不確実な自動確定はしない（安全側の方針を Intent で明示）
4. 照会（副作用なし）とコマンド（副作用あり）を分離する
5. 境界違反はツールで証明する
6. Step 1–3 の選択肢の正本はフェーズごとの `*-questions.md`（`decision-log` は要約）
7. 現場役が答える問は業務のことばで書く（素の AI-DLC には無い DG 上乗せ）

詳細は `cursor/rules/dg-aidlc.mdc` を正とする。

## 7 ステップ

1. Intent & 境界宣言（`intent-approval-questions.md` 承認後に確定）
2. ドメインモデリング（`domain-modeling-questions.md` 承認後に確定）
3. 受入例示（`acceptance-criteria-questions.md` 承認後に確定）
4. Red（失敗するテスト）— Step 1–3 承認完了が前提
5. Green（最小実装）
6. Refactor & 境界検証
7. ナラティブ化（decision-log / README）

## ライセンス

ルール詳細（`aidlc-rule-details/` および `ai-dlc-workflow.mdc`）の由来・ライセンスは各ファイルおよび上流 AI-DLC の扱いに従う。  
DG-AIDLC 上乗せ（`dg-aidlc.mdc`・本 README・`templates/`・`adapters/`）は、作品への再利用を前提とする。
