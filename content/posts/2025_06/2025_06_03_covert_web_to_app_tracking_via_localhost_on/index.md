+++
date = '2025-06-03T00:00:00'
months = '2025/06'
draft = false
title = 'Androidヤバすぎ Webからアプリへ秘密の追跡 localhost経由で'
tags = ["Android", "Web", "アプリ", "セキュリティ", "プライバシー"]
featureimage = 'thumbnails/purple6.jpg'
+++

> Androidヤバすぎ Webからアプリへ秘密の追跡 localhost経由で

引用元：[https://news.ycombinator.com/item?id=44169314](https://news.ycombinator.com/item?id=44169314)




{{<matomeQuote body="他のスレッドにも書いたんだけどさ、WebアプリがLANにアクセスするの、ブラウザが放置してる攻撃ルートだよ。<br>uBlock Originには専用フィルターがあるけどデフォルトはオフ。Discordとか正当な例もあるけど、Ebayみたいに悪質なフィンガープリントに使われることも。<br>俺はFirefoxのPort Authorityって拡張機能に貢献したんだけど、これも同じ目的。ただ、これら拡張機能はWebExtensions API使うから、記事のwebRTCトリックで回避される可能性もあるね。<br>[0]: https://news.ycombinator.com/item?id=44170126 [1]: https://github.com/uBlockOrigin/uAssets/blob/master/filters/... [2]: https://nullsweep.com/why-is-this-website-port-scanning-me/ [3]: https://addons.mozilla.org/firefox/addon/port-authority [4]: https://github.com/ACK-J/Port_Authority [5]: https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/Web...<br>" userName="matthberg" createdAt="2025/06/03 13:46:36" color="#ff5c5c">}}




{{<matomeQuote body="普通のアプリが着信接続をリッスンする理由って何かあるの？スマホをWebサーバーとして使うとかじゃなくてさ。<br>俺から見ると、開発者向けオプションみたいに見えにくい設定の裏にブロックされるべきで、アプリが簡単にできることじゃないと思うんだけどな。<br>" userName="johannes1234321" createdAt="2025/06/03 21:55:16" color="">}}




{{<matomeQuote body="これをブロックするための仕様があるんだぜ：https://wicg.github.io/private-network-access/<br>WebKitとかMozillaも賛成してたんだけど、Blinkで試した結果、互換性の問題で今は保留中なんだってさ。https://developer.chrome.com/blog/pna-on-hold<br>" userName="JimDabell" createdAt="2025/06/03 14:11:06" color="#45d325">}}



[記事一覧へ]({{% ref "/posts/" %}})
