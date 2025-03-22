+++
date = '2025-03-15T00:00:00'
months = '2025/03'
draft = false
title = '人気GitHub Action「tj-actions/changed-files」が乗っ取り被害！マジかよ'
tags = ["GitHub Actions", "セキュリティ", "脆弱性", "サプライチェーン攻撃", "CI/CD"]
featureimage = 'thumbnails/blue3.jpg'
+++

> 人気GitHub Action「tj-actions/changed-files」が乗っ取り被害！マジかよ

引用元：[https://news.ycombinator.com/item?id=43368870](https://news.ycombinator.com/item?id=43368870)

{{<matomeQuote body="@dang: Step Securityっていう、この欠陥を見つけた会社が出してる元のURLの方がもっと良い情報源だと思うよ。<br>https://www.stepsecurity.io/blog/harden-runner-detection-tj-…" userName="netvarun" createdAt="2025-03-15T02:18:37" color="#45d325">}}

{{<matomeQuote body="うん、もしかしたらこれと統合できるかもね。<br>https://news.ycombinator.com/item?id=43367987" userName="moyer" createdAt="2025-03-15T02:21:25" color="">}}

{{<matomeQuote body="コメントはそっちに移動したよ。ありがとね！" userName="dang" createdAt="2025-03-15T13:27:34" color="">}}

{{<matomeQuote body="最近、これを簡単に防げるオープンソースツールをリリースしたんだ。実行前とか、パイプラインに追加する前にね。<br>１．メンテナーはPReventを使って、悪意のあるコードを含むPRをすぐに警告してブロックしたり、直接プッシュの場合の検出を設定したりできたはず。<br>https://github.com/apiiro/PRevent<br>２．ユーザーは、うちの悪意のあるコード検出ルールセットを使って、関連するすべてのCI/CDステージでの更新をスキャンする際に、すぐに検出してブロックできたはず。<br>https://github.com/apiiro/malicious-code-ruleset<br>３．検出についてもっと理解を深めるために、悪意のあるコードは正確にうちの研究で示されているパターンに当てはまるんだ。<br>https://apiiro.com/blog/guard-your-codebase-practical-steps-…" userName="mgiladi" createdAt="2025-03-16T11:02:36" color="#785bff">}}



[記事一覧へ]({{% ref "/posts/" %}})
