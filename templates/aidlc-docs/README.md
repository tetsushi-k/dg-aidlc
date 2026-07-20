# このディレクトリについて

作品リポへコピーしたあと、必要に応じて次を追加する。

- `aidlc-state.md` … AI-DLC の進行状態（ワークフローが参照）
- 題材固有の設計ドキュメント

初期ファイルは `templates/aidlc-docs/` をコピーして埋める。

## 承認（Step 1–3）

チャットだけで核心を確定しない。フェーズごとの questions が正本。

| Step | ファイル |
|------|----------|
| 1 | `inception/intent-approval-questions.md` |
| 2 | `domain/domain-modeling-questions.md` |
| 3 | `construction/acceptance-criteria-questions.md` |

書式は作品リポの `.aidlc-rule-details/common/question-format-guide.md` に従う。  
**現場役が答える問は業務のことばで書く**（`.cursor/rules/dg-aidlc.mdc`）。  
`decision-log.md` は要約。Red は Step 1–3 の明示承認後。
