# advalay/.github

advalay org 全リポ共通の既定ファイル。

- `ISSUE_TEMPLATE/qa_request.yml` — 検証依頼（QA）。`/qa-request` スキルがPR差分から下書きする
- `ISSUE_TEMPLATE/qa_bug.yml` — バグ報告（QA）。動作確認担当者が1件1Issueで起票
- `labels.json` + `scripts/sync-labels.sh` — QA用ラベルを対象リポへ同期
- `docs/tester-guide.md` — 動作確認担当者向け手順書（正本は advalay-company `org/qa-outsourcing/`）

注意: 独自の `.github/ISSUE_TEMPLATE/` を持つリポ（例 video-nfc-system）にはorg既定が適用されない。qaテンプレ2本をそのリポへコピーする。
