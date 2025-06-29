+++
date = '2025-06-22T00:00:00'
months = '2025/06'
draft = false
title = '人気サイトをプライバシー重視の代替フロントエンドに自動リダイレクト！LibRedirect'
tags = ["プライバシー", "ウェブ", "リダイレクト", "オープンソース", "代替サービス"]
featureimage = 'thumbnails/color2.jpg'
+++

> 人気サイトをプライバシー重視の代替フロントエンドに自動リダイレクト！LibRedirect

引用元：[https://news.ycombinator.com/item?id=44344246](https://news.ycombinator.com/item?id=44344246)




{{<matomeQuote body="LibRedirectは全体的には動くけど、代替インスタンスがすぐダメになっちゃうのが問題だね。昔は親切でリダイレクトだけ提供してるハブがあったけど、今はブロックされたりレート制限されたりで使えるのが少ないんだ。大手サイトやサービス側も対抗してるから、それは当然のことだね。<br>Privacy Redirectがおそらく最初にこのアイデアを出した拡張機能だけど、悪意のある奴らが危険なサイトにリダイレクトする悪用もあったらしいよ。" userName="pndy" createdAt="2025/06/22 09:29:59" color="#ff5c5c">}}




{{<matomeQuote body="これ関連する話だと思うからシェアするね。プライバシーに焦点を当てた代替フロントエンドの「awesome」リストを書いたんだ。しばらく更新してないけど、まだ有効だと思うよ。<br>[1]: https://sr.ht/~jamesponddotco/awesome-privacy-front-ends/" userName="jamesponddotco" createdAt="2025/06/22 14:06:42" color="#ff33a1">}}




{{<matomeQuote body="Instagramって、実際は動かないんだよね？代替フロントエンドは全部ダウンしてるみたいだし、ローカルでやってもダメみたいだけど。" userName="krick" createdAt="2025/06/22 14:58:16" color="">}}




{{<matomeQuote body="そうだね、その通りだよ。今動いてる代替フロントエンドは無いんだ。自分でホストできるオープンソースのやつはね。オープンソースじゃないなら、検索で適当に見つかるのはまだあるみたいだけど。" userName="jamesponddotco" createdAt="2025/06/22 22:47:19" color="#785bff">}}




{{<matomeQuote body="gallery-dlはまだ動くけど、Webフロントエンドは無いんだよね。" userName="pabs3" createdAt="2025/06/23 03:01:14" color="">}}




{{<matomeQuote body="一言だけね - Imginn" userName="plastic_bag" createdAt="2025/06/22 15:31:08" color="">}}




{{<matomeQuote body="imginnは今のところ動いてるよ。" userName="ruined" createdAt="2025/06/23 04:06:29" color="">}}




{{<matomeQuote body="OS全体でカスタムリダイレクトを設定できるAndroidアプリを見つけたんだよ、URLCheckってやつ。<br>https://github.com/TrianguloY/URLCheck<br>設定はちょっと手間だけど、結構楽しんでるんだ。代替フロントエンドだけじゃなくて、URLの余計な部分を消したり、危ないサイトかチェックしたり、特定のリンクをアプリで開いたりとかもできるんだよ。" userName="wonger_" createdAt="2025/06/22 14:01:23" color="#38d3d3">}}




{{<matomeQuote body="いいね！まさにこれ探してたんだ。結局見つけたのはLinkahestってAndroidアプリだけどね。<br>https://codeberg.org/hermeticvm/linkahest<br>先週から使ってるけど、シンプルで使いやすいよ。主な悩みはYTとかRedditとかXのアプリを使ってて、リンク共有した人が広告ブロッカー切ったりログインしないと見れないのが嫌だったんだよね。" userName="jasonvorhe" createdAt="2025/06/23 13:30:34" color="#38d3d3">}}




{{<matomeQuote body="このアプリを見つけたときはすごく嬉しかったよ、とっても便利なんだ。リダイレクトだけじゃなくて、リンクからトラッキング要素を消したり、短縮URLを展開したり、特定のドメインを開くときにどのアプリを使うか覚えたりとかもできるんだ。Androidの糞みたいな共有メニューのせいで、こういうアプリはAndroidにはほぼ必須だね。" userName="TheLongLife" createdAt="2025/06/22 17:59:12" color="#ff5733">}}




{{<matomeQuote body="Redirector[1]を使えば、自分でリダイレクトを設定するのが簡単だよ。俺はそっちの方が好きだな。<br>[1] https://addons.mozilla.org/en-US/firefox/addon/redirector/" userName="mikae1" createdAt="2025/06/22 14:41:38" color="#45d325">}}




{{<matomeQuote body="ウェブ拡張機能は不必要なセキュリティリスクだよ。ユーザースクリプトで十分うまくいくさ。編集：以前の俺の試みはこちら→ https://news.ycombinator.com/item?id=35229211<br>実際、ルールとドメインのソースを密結合にして拡張可能にしてたんだけど、失くしちまったんだ。Edgeが俺の全ユーザースクリプトを忘れちまったからね:(" userName="bmacho" createdAt="2025/06/22 09:08:37" color="">}}




{{<matomeQuote body="ユーザースクリプトはものすごく広い権限を持ってるんだぜ。例えば、YouTube.comにスコープされたユーザースクリプトは、Google Payに保存されてるどんなカードからでも支払いができちゃう可能性があるんだ。それに、ほとんどのユーザースクリプトは長すぎて、普通のユーザーには10k行のミニファイされたwebpackedライブラリの中に紛れ込んだ悪意のある数行なんて見分けられないよ。" userName="londons_explore" createdAt="2025/06/22 09:14:54" color="#38d3d3">}}




{{<matomeQuote body="メリットと”リスク”の比較もしなきゃね。例えば、FreeTubeにSponsorBlockを使ってプライバシー保護と広告ブロックをするとしても、結局YouTubeの視聴履歴の100%をCloudflareに、SponsorBlock（”sponsor.ajay.io”）に送ってることになる。Pipedインスタンスだとさらにひどくて、Googleの追跡を逃れても、見ず知らずの人にデータを渡してるようなものだ。もし心配なら、ゆるい法域でNordVPNとuBlock Originを入れた2番目のChromeセッションをログアウトした状態で使ってYouTubeを見ればいい。簡単だし、監査済みで法廷命令がない限りログを保存しないと合理的に確認できるプラットフォームのメリットを享受できる。見ず知らずの人よりよっぽどマシさ。" userName="rvnx" createdAt="2025/06/22 09:26:45" color="#ff5733">}}




{{<matomeQuote body="〉もし心配なら、ゆるい法域でNordVPNとuBlock Originを入れた2番目のChromeセッションをログアウトした状態で使ってYouTubeを見ればいい。<br>もし実際にこれをやったら、1週間か2週間でYouTubeがログインしないと動画を見れなくなることに気づくはずだよ。" userName="hashiyakshmi" createdAt="2025/06/22 11:57:34" color="">}}




{{<matomeQuote body="違うVPNサーバーにホッピングするのが、そのためのちょっと不便な回避策だと分かったよ。" userName="Devorlon" createdAt="2025/06/22 13:34:05" color="">}}




{{<matomeQuote body="SponsorBlockは動画IDをサーバーに送らないよ。<br>https://github.com/ajayyy/SponsorBlockServer/issues/25" userName="heavensteeth" createdAt="2025/06/22 12:06:09" color="#38d3d3">}}




{{<matomeQuote body="（*もはや、ではない。ざっと見た感じ2020年末からね。親コメントはその時点では間違ってなかったかもしれないけど、情報が古かっただけだね）" userName="lucb1e" createdAt="2025/06/22 15:07:12" color="">}}




{{<matomeQuote body="ひどいアドバイスだな。YouTubeはお前を正確にフィンガープリントするだろうし、NordVPN/tesonet/oxylabもお前に関するデータを手に入れるだろうさ。" userName="lvass" createdAt="2025/06/22 12:12:05" color="">}}




{{<matomeQuote body="推奨されてる”プライバシー”インスタンスよりずっと良いね。NordVPNはYouTubeにお前が接続したことしか見ないし、お前が見てるページや動画は見えない。YouTubeから見ても、数百万ユーザーがいる人気VPNからのリクエストにしか見えないんだ。<br>”プライバシー”インスタンスを使うと、そういう”プライバシー”サイトとCloudflareが、お前が見てる動画を正確に知ることになるぞ。" userName="rvnx" createdAt="2025/06/22 12:19:32" color="">}}




{{<matomeQuote body="誰に推奨されてるって？俺は単にお前のアドバイスが全体的にひどくて、今のフィンガープリンティングがいかに簡単で強力かを全く考慮してないって言ってるんだ。Googleから見たら、ChromeでVPN使っても、VPN使ってるって情報が増えるだけで違いはない。つまり、データポイントを一つ増やしてるだけだ。それに、一般ユーザーがお前のアドバイスに従ってNordVPNアプリをインストールする可能性も高いが、あれはセキュリティ悪夢だぞ。あの会社が住宅用プロキシを売ってるのを覚えてるか？あとIIRC、YouTubeの代替フロントエンドは他人のエンドポイントに依存しない傾向があるぞ。" userName="lvass" createdAt="2025/06/22 12:45:41" color="#38d3d3">}}




{{<matomeQuote body="＼u003e 心配なら、NordVPNでChromeセッションをもう一つ実行すれば良い<br>まるでYouTubeにいるみたいだな。<br>NordVPNだって批判されてないわけじゃないぞ。https://en.wikipedia.org/wiki/NordVPN#Criticism" userName="latexr" createdAt="2025/06/22 09:43:33" color="">}}




{{<matomeQuote body="＼u003e もっと悪い、 essentially escaping Google’s tracking just to give our data to random strangers<br>俺は中央集権的な追跡企業にデータを渡すより、単体ではほぼ無意味な情報を知らない人に渡す方がずっとマシだね。<br>結局、大量のデータを取得してクライアント側でフィルタリングする以外に、どんな情報に興味があるかを明かす方法はない。それは、これらの代替フロントエンドでも望めば可能なオプションだ。" userName="lucb1e" createdAt="2025/06/22 15:03:57" color="">}}




{{<matomeQuote body="広告を二度と見ないで済むなら、視聴履歴を誰かにやっても全然構わないね。" userName="HK-NC" createdAt="2025/06/22 10:42:46" color="">}}




{{<matomeQuote body="＼u003e And most user scripts are so long a typical user won’t be able to spot a couple of malicious lines amongst 10k lines of minified webpacked libraries.<br>その通りだ！だから代わりに3行くらいのスクリプトを使うべきだよ。そっちなら<br>- 検証可能<br>- 中国＼/ロシアに勝手に更新されない<br>- 自分で書いた<br>からな。" userName="bmacho" createdAt="2025/06/22 09:21:17" color="">}}




{{<matomeQuote body="俺が中国やロシアを挙げたのは、より大きなグループ、つまりお前らを傷つける可能性がある人たちの例としてだ。これは提喩（シネクドキー）の一種だぞ。＼n以前は、今年、ロシアや中国を”敵”の同義語として使うと排外的だと批判されるんじゃないかって考えたんだけど、今回はやめた。＼n[0] : https://en.wikipedia.org/wiki/Synecdoche#Part_referring_to_w...＼n[1] : https://en.wikipedia.org/wiki/Pars_pro_toto" userName="bmacho" createdAt="2025/06/22 13:45:52" color="">}}




{{<matomeQuote body="権威主義的な政府への批判や不信は、レイシズムじゃないんだよ。" userName="Muromec" createdAt="2025/06/22 13:33:58" color="">}}




{{<matomeQuote body="拡張機能はいっぱいサービスに対応してるのに、君のスクリプトは一つだけじゃん。<br>みんな自分でやり方調べてスクリプトで再現しろってこと？それより拡張機能のコード読んで自分のコピー使う方がマシじゃない？" userName="eviks" createdAt="2025/06/22 10:16:48" color="">}}




{{<matomeQuote body="全部対応してなくても問題ないと思うな。むしろユーザースクリプトは自分で追加できるのが利点じゃん。<br>リンクしたスクリプトは確かに一つだけだけど、いっぱいサイトとかルールに対応するのはちょっと複雑になるんだよね。先にできるって示すべきだったかな。" userName="bmacho" createdAt="2025/06/22 10:40:45" color="">}}




{{<matomeQuote body="自分で全部ルール書くメリットって何？<br>＞ちょっと複雑になる<br>って控えめすぎでしょw" userName="eviks" createdAt="2025/06/22 10:56:56" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞自分で全部ルール書くメリットって何？<br>全部書くのそんな難しくないよ。URL渡せば大体OK。<br>メリットは不要なリダイレクトがないこと。<br>変な人がインスタンス見てるだろうから自分でチェックしなくていいかもね。<br>俺は今リダイレクト0だけど、必要ならユーザースクリプト使うな。拡張機能は絶対入れない。" userName="bmacho" createdAt="2025/06/22 11:10:24" color="">}}




{{<matomeQuote body="＞ほとんどの場合sliceでいける<br>でもURL見つける必要はあるし、sliceじゃ無理な場合もあるでしょ。<br>＞今は0<br>だよね。実際の使い方無視したら全部簡単になっちゃうよ。" userName="eviks" createdAt="2025/06/22 11:19:11" color="">}}




{{<matomeQuote body="私はRedirectorを使うのが好きだな。<br>今のところ結構うまくやってくれてるよ。<br>https://einaregilsson.com/redirector/" userName="Akronymus" createdAt="2025/06/22 13:40:50" color="#38d3d3">}}




{{<matomeQuote body="全然現実的じゃないね。<br>それより拡張機能の権限ロックダウンするか、別のブラウザプロファイル使うか、もっといいのはQubesOSで使い捨てブラウザVM使うことだよ。" userName="udev4096" createdAt="2025/06/22 17:59:48" color="#ff33a1">}}




{{<matomeQuote body="ユーザースクリプトってページ読み込み前に動くの？<br>俺の知る限り無理だから、ブラウザは二回リクエスト送ることになるけど。" userName="hexagonwin" createdAt="2025/06/22 18:39:14" color="">}}




{{<matomeQuote body="自動アップデート切れば、ユーザースクリプトと同じで使い勝手悪くなるだけじゃん。" userName="1oooqooq" createdAt="2025/06/22 10:59:58" color="">}}




{{<matomeQuote body="プライバシーもいいけど（インスタンスホストの善意に頼ってるからちょっと怪しいけど）、俺にとっての最大のメリットは、しょぼいノートPCがテキスト読むだけなのに限界まで行かないことかな。<br>Redditなんてマシな方で、マジでいつから画面に文字出すのがこんなに重くなったんだ？" userName="b00ty4breakfast" createdAt="2025/06/22 16:54:55" color="#ff5c5c">}}




{{<matomeQuote body="JavaScriptを使わない、あるいは減らしてる代替フロントエンドがあるってのが面白いね。JSってプライバシー侵害とかユーザーを嫌がらせるためだけに必要だったんじゃないの？" userName="userbinator" createdAt="2025/06/22 22:25:30" color="">}}




{{<matomeQuote body="多くのメインストリームのウェブサイトで使われてるJavaScriptの大部分は、データ収集と広告のためだと思うよ。" userName="b00ty4breakfast" createdAt="2025/06/23 01:26:33" color="">}}




{{<matomeQuote body="old reddit試したことある？" userName="hexagonwin" createdAt="2025/06/22 18:37:51" color="">}}




{{<matomeQuote body="「プライバシーフレンドリー」なフロントエンドがさ、GoogleとかTwitterのログなしには得られないデータを追跡してないって誰が言えるの？俺は追跡してると思うけどね。" userName="romaaeterna" createdAt="2025/06/22 13:48:13" color="#ff5c5c">}}




{{<matomeQuote body="いや、何も。知人がプライバシー重視って言ってるサードパーティ製フロントエンド作ってて、非公開でユーザーデータ（本名とか）見てるんだよ。サービス改善だけのためだと思うし、めちゃくちゃ役立ってるけど、透明性必要だって説得できなくて。ソースコード読めば分かるらしいけどね。" userName="germanier" createdAt="2025/06/22 15:49:06" color="#45d325">}}




{{<matomeQuote body="誰も追跡してないなんてどうやって証明すんの？そうやって何だって信じられるじゃん。神がいないことも証明できないけど、プライバシー重視のフロントエンド作った身としては、誠実な意図を期待したいね。ログイン情報要求したり追跡Cookie設定したりしてるの見つけたら、そりゃ警戒すべきだよ。必要ないデータ聞いてくるサイトと同じね。例えばCookieウォール全部そう。いい意図なら他の理由でデータ使えるはずで、同意なんか聞かないはずだからさ。" userName="lucb1e" createdAt="2025/06/22 14:55:11" color="#ff5733">}}




{{<matomeQuote body="これらは実質的に全部プロキシだから、ある程度は信用しないといけないんだよね。でも、大企業が運営してるんじゃない限り、そんなに気にしないだろうし、たぶん通過するデータ全部集めて分析するリソースすら持ってないと思うよ。" userName="userbinator" createdAt="2025/06/22 22:29:34" color="">}}




{{<matomeQuote body="使いたくないなら使うなよ。気に入らないもの全部に文句言うのやめろって。それにプライバシーって白黒はっきりするものじゃないし、誰もそんなバカなこと言ってない。お前が汚い金儲けのウェブで育ったからって、みんながお前を騙そうとしてると思うなよ。マジでプライバシー大事にしてて、何も見返りなしで非中央集権的で余計なことしないウェブを応援してる人もいるんだから。それに、プライベートなフロントエンドのほとんどはマジで速いし、一瞬で開くから時間も節約できるんだぞ。" userName="udev4096" createdAt="2025/06/22 18:06:01" color="">}}




{{<matomeQuote body="そうだな、どれかがハニーポット（おとり）である可能性は十分にあると思うよ。" userName="Funes-" createdAt="2025/06/22 14:40:03" color="">}}




{{<matomeQuote body="これはただアドウェアとかフィッシングを普通のことにしてしまうだけだよ。こういうフロントエンドって広告出したり、個人情報聞いてきたりする可能性あるから。信頼できるサイトからこんな別のサイトにリダイレクトするのはすごく危険で、悪い奴らに悪用されるチャンスを与えちゃうんだ。この拡張機能自体が乗っ取られたり買われたりして、持ってるヤバい権限がお前に使われる可能性すら考えてないだろ。" userName="charcircuit" createdAt="2025/06/22 17:32:50" color="#ff5733">}}




{{<matomeQuote body="うん、でも代替フロントエンドは認証機能ないことが多いんだよね。<br>元のサイトのトラッキングってすごい量だし、自分でコントロールするインスタンスでプロキシするのが、トラッキング対策にはすごくいいと思うよ。" userName="poly2it" createdAt="2025/06/23 00:44:40" color="#ff33a1">}}




{{<matomeQuote body="<br>自分でコントロールするインスタンスって言われても、ほとんどの人はやらないでしょ。<br>どこにリダイレクトされるか保証がないサイトを使うことになるじゃん。<br>ドメインが切れたり、ハッカーがフロントエンドをフィッシングページにすり替えたりとかさ。" userName="charcircuit" createdAt="2025/06/23 01:11:44" color="#38d3d3">}}




{{<matomeQuote body="これらのフロントエンドが広告出しても、広告出す労力に見合うくらいユーザー集めるのは難しいと思うな。" userName="b00ty4breakfast" createdAt="2025/06/23 01:34:42" color="">}}




{{<matomeQuote body="YouTubeの代替拡張機能って、俺のIPと紐づかないで動画取れるの？GoogleアカウントBANされたり検索レート制限されたりするの嫌なんだよな。今は大丈夫だけど、将来そうなりそうで自宅からはツール使わないようにしてるし、vpsもYouTubeにブロックされてるっぽいんだよね。" userName="hsbauauvhabzb" createdAt="2025/06/22 10:31:33" color="#45d325">}}




{{<matomeQuote body="VPNはYouTubeにブロックされてないよ。<br>Tor BrowserでYouTube見るのもね。" userName="v5v3" createdAt="2025/06/22 11:33:04" color="">}}




{{<matomeQuote body="家で動的IPなら、homelabで動かしてTailscale経由でどこからでもアクセスしたら？YouTubeがホームユーザーのIPブロック丸ごとブロックするなんてまずないと思うよ。" userName="pimeys" createdAt="2025/06/22 10:50:25" color="#785bff">}}




{{<matomeQuote body="それは、俺のGoogle検索のトラフィックとかフィンガープリントがyt-dlpと同じところから来るって問題を解決しないんだよな。" userName="hsbauauvhabzb" createdAt="2025/06/22 11:30:01" color="#45d325">}}




{{<matomeQuote body="ざっと見た感じ、フォーク元の主要な問題、つまり自由にリダイレクト先を設定できないって点が直ってないみたいだね。俺は彼らがリダイレクトするサービスの一部で自分のインスタンス動かしてるから、そっちを指せるようにしたいんだ。" userName="snvzz" createdAt="2025/06/23 05:15:29" color="#ff33a1">}}




{{<matomeQuote body="広告嫌いとか、ツイートや短い動画見るだけなのに10MBもjs読みたくないって問題にはこれはマジで最高。pipedとかnitterにリダイレクトされるのは納得。<br>でも、もっといいのは自分でホストするか、少なくとも評判いいインスタンスをローテーションしてくれること。<br>今は目的の半分って感じかな。誰がインスタンス運営してるかなんて頻繁にチェックしないし。<br>本気で使うなら、リダイレクト先が常に動いててクリーンで速いってのが前提だけど、遅いのや突然落ちるの、ログ取ってるのもあるだろうし、リスト自体にも使えないのが多いんだよ。" userName="b0a04gl" createdAt="2025/06/22 13:38:07" color="#45d325">}}




{{<matomeQuote body="YouTubeの代替っていつも遅くてダメなんだよね。なんでだろ？一番いいのはyt-dlpでダウンロードして、後でmpvで見る方法だよ。" userName="fiatjaf" createdAt="2025/06/23 01:33:58" color="">}}




{{<matomeQuote body="俺はその逆の機能が欲しいな。変な代替フロントエンドじゃなくて、オリジナルのサイトにリダイレクトしてくれる拡張機能。オリジナルのほうが使いやすいし、ログインしてコメントもできるしね。" userName="4ad" createdAt="2025/06/22 10:54:36" color="">}}




{{<matomeQuote body="結局さ、代替フロントエンドのほとんどに、オリジナルのサイトへのリンクが表示されてるんじゃないの？" userName="fmbb" createdAt="2025/06/22 11:01:13" color="">}}




{{<matomeQuote body="つまりさ…リポジトリの’clone’ボタン押して、twitter.com -＞ nitter.netってマッピングをnitter.net -＞ twitter.comに逆にすりゃいいの？" userName="lucb1e" createdAt="2025/06/22 15:12:29" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="こういう代替サービスを全部コンテナ化してホストしとけば、必要な時に簡単に使えるね。またClaudeにお願いするタスクが増えたよ…" userName="pstuart" createdAt="2025/06/22 17:34:16" color="">}}




{{<matomeQuote body="何か良いYouTubeの代替（セルフホストも含む）知ってる？いくつか試したけど、いつもダウンしてる時間の方が長い気がするんだよね。" userName="scosman" createdAt="2025/06/22 14:27:09" color="#ff5733">}}




{{<matomeQuote body="https://grayjay.app/ ってのはどうかな？ローカルで動くアプリだよ。どれくらいプライバシーに優しいかはわかんないけど、情報収集は少ないって言ってるね。" userName="tgv" createdAt="2025/06/22 15:30:09" color="#ff33a1">}}




{{<matomeQuote body="Peertubeって見たことある？<br>https://joinpeertube.org/en_US" userName="az09mugen" createdAt="2025/06/22 14:31:27" color="#ff5c5c">}}




{{<matomeQuote body="見たよ。でも、これも動いたり動かなかったりするタイプみたいだった。この5年くらい色々試してるんだけど、残念ながらどれもイマイチなんだよね。" userName="stinos" createdAt="2025/06/22 14:36:51" color="">}}




{{<matomeQuote body="Farsideっていう拡張機能があるんだって。スターも847個だってさ：https://github.com/benbusby/farside<br>古いFarside.linkも使われてるよ：https://sr.ht/~benbusby/farside/<br>https://farside.link/<br>これ（LibRedirect）を使う理由って何なの？" userName="bdhcuidbebe" createdAt="2025/06/22 09:14:08" color="">}}




{{<matomeQuote body="このコメントはもうちょっと言い方があるだろうけど、FarsideにはLibRedirectにない大事な機能があるんだよ。それは、アクセスできるかどうかに応じてインスタンスを自動で選んでくれること。インスタンスはしょっちゅう使えなくなったり新しいのが増えたりするから、ユーザーが手動で選ばなくていいってのは強力な機能だね。とにかく、教えてくれてありがとう！" userName="imiric" createdAt="2025/06/22 10:46:09" color="#785bff">}}




{{<matomeQuote body="Farsideを使うと、最初のリダイレクトがFarsideを通るから、向こうにどんな動画見てるとか、どんなツイート見てるとか知られちゃう可能性があるんだよね。彼らが監視しないって信じなきゃいけない。クライアントサイドの拡張機能を使うなら、使ったインスタンスだけが知ってることになるよ。" userName="MallocVoidstar" createdAt="2025/06/22 10:52:17" color="#ff5c5c">}}




{{<matomeQuote body="FarsideはGoのプロジェクトだから、自分でホストするのも簡単そうだよ。君の理屈だと、代替サービスのインスタンスも誰もが監視してる可能性があるから信用できないってことになるじゃん。" userName="imiric" createdAt="2025/06/22 11:04:10" color="#ff5733">}}




{{<matomeQuote body="GitHubのスター数が4倍も多いっていう事実があるから、って理由じゃダメかな？それが気にするならね。" userName="iLoveOncall" createdAt="2025/06/22 09:42:49" color="">}}




{{<matomeQuote body="普段使うツールから追跡機能（テレメトリー）をなくすのは、少しずつ自分のコントロールを取り戻してるみたいで気持ち良いね。" userName="silentpuck" createdAt="2025/06/22 18:17:30" color="">}}




{{<matomeQuote body="X.comは、xcancelじゃなくてlightbrd.comの方がCaptchaなしでうまくいくみたいだよ。" userName="anthk" createdAt="2025/06/22 07:04:48" color="#785bff">}}




{{<matomeQuote body="xcancelでCaptchaなんて見たことないな〜。" userName="jorvi" createdAt="2025/06/22 09:22:11" color="">}}




{{<matomeQuote body="私も見てないよ。「verifying your request」っていう画面だけだね：https://i.ibb.co/MyWRVtFj/xc.jpg" userName="pndy" createdAt="2025/06/22 09:35:20" color="">}}




{{<matomeQuote body="それはPoW CAPTCHAだよ。結局CAPTCHAには違いないけどね。" userName="mslansn" createdAt="2025/06/22 09:53:52" color="">}}




{{<matomeQuote body="でもね、JavaScriptを無効にしてたり(LibreJSを使ってたり)すると、CAPTCHAにリダイレクトされちゃうんだけど、これがたまにしかちゃんと動かないんだよね。" userName="CaptainFever" createdAt="2025/06/22 11:53:15" color="">}}




{{<matomeQuote body="nitter.netだけ使う方が、どっち（多分記事で紹介されてる方法とか他の代替案）よりもいいと思うな。" userName="pabs3" createdAt="2025/06/24 05:59:06" color="">}}




{{<matomeQuote body="lightbrdもCloudflareのCAPTCHAが必要みたいだよ。" userName="HelloUsername" createdAt="2025/06/22 09:04:25" color="">}}




{{<matomeQuote body="nitter.tiekoetter.com<br>これを試してみてよ。" userName="teddyh" createdAt="2025/06/22 13:57:06" color="#ff33a1">}}




{{<matomeQuote body="それもCAPTCHAを使うんだよね。CloudflareじゃなくてAnubisだけど。結局CAPTCHA問題はあるみたい。" userName="HelloUsername" createdAt="2025/06/25 19:09:42" color="">}}




{{<matomeQuote body="ユーザーに都合のいい回避策って、ブラウザ側がいつまで許してくれるんだろうね？AppleがSafariの”Disable JavaScript”メニューオプションをDeveloper Toolsに移して、JS無効にする前にサイトにバレちゃうようになったみたいにさ＞:(<br>" userName="Razengan" createdAt="2025/06/22 10:25:49" color="#ff5733">}}




{{<matomeQuote body="本当の問題って、広告会社が作ったブラウザを使い続けるべきか？ってことだと思うんだ。答えはノー！Mozilla Firefoxを使おうよ。" userName="reddalo" createdAt="2025/06/22 10:42:10" color="">}}




{{<matomeQuote body="Mozillaは今や広告会社だよ。証拠はこれ見て！<br>https://www.mozilla.org/en-US/advertising/<br>https://blog.mozilla.org/en/mozilla/mozilla-anonym-raising-t..." userName="progval" createdAt="2025/06/22 12:07:11" color="#785bff">}}




{{<matomeQuote body="いやいや、Mozillaの広告事業は、他の巨大企業のと比べたら全然大したことないよ。一緒にしちゃダメ。" userName="fsflover" createdAt="2025/06/22 21:24:23" color="">}}




{{<matomeQuote body="みんなTor browserをFirefoxとセットで使うべきだよ。今すぐダウンロードしようぜ！<br>https://www.torproject.org/download/" userName="v5v3" createdAt="2025/06/22 11:37:30" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
