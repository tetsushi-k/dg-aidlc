#!/usr/bin/env bash
set -euo pipefail
cd "$(wslpath -a 'C:\Users\tekku\Documents\workspace\portfolio\dg-aidlc')"
git init -b main
git add -A
git status
git commit -m "chore: DG-AIDLC 汎用キットの初回構成を追加" -m "AI-DLC ワークフローに Domain/TDD ガードを上乗せした再利用用リポジトリ。"
