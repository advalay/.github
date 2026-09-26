#!/usr/bin/env bash
# QA用ラベルを対象リポに作成/更新する。
# 使い方: scripts/sync-labels.sh advalay/profile-lp advalay/korelog ...
set -euo pipefail
cd "$(dirname "$0")/.."
[ $# -gt 0 ] || { echo "usage: $0 owner/repo [owner/repo ...]" >&2; exit 1; }
for repo in "$@"; do
  echo "== $repo"
  jq -c '.[]' labels.json | while read -r row; do
    name=$(jq -r .name <<<"$row"); color=$(jq -r .color <<<"$row"); desc=$(jq -r .description <<<"$row")
    gh label create "$name" -R "$repo" --color "$color" --description "$desc" --force >/dev/null
    echo "  ok $name"
  done
done
