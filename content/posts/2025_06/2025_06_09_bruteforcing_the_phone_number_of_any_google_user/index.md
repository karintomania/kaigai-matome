+++
date = '2025-06-09T00:00:00'
months = '2025/06'
draft = false
title = 'Googleユーザーの電話番号をブルートフォース可能に！'
tags = ["セキュリティ", "プライバシー", "ブルートフォース", "Google", "サイバー攻撃"]
featureimage = 'thumbnails/green4.jpg'
+++

> Googleユーザーの電話番号をブルートフォース可能に！

引用元：[https://news.ycombinator.com/item?id=44224684](https://news.ycombinator.com/item?id=44224684)




{{<matomeQuote body="この記事を読んで面白いと思ったんだけど、Hosting ProviderとかISPから/64のIPv6ブロックを少なくとも一つもらうのって結構普通じゃん？<br>なのに、ほとんどのレート制限やIPブロックは単一IP向けなんだよね。<br>IPv6を扱うなら、/64ブロック全体をレート制限したりブロックしたりすべきみたいだね。" userName="zerof1l" createdAt="2025/06/09 16:03:58" color="#ff5733">}}




{{<matomeQuote body="IPv6はIPブロックの考え方にだいぶダメージ与えたんじゃないかと思うと、かなり驚くわ。<br> résident Userでも、DHCPv6 Prefix Delegationで自動的に/56とか/48をリクエストできるんだよ。<br>俺はComcastで/56を持ってる。これは Résident Userだけでも、最大65536個の/64ブロックになりうるんだから、IPv6でIP Filteringを試みるなら、単一IPブロックを/64ブロックに置き換えるより、ずっと賢くなくちゃダメだね。" userName="bscphil" createdAt="2025/06/09 17:53:06" color="#38d3d3">}}




{{<matomeQuote body="もしユーザーがアドレスを一つしか持ってない場合、どうやって二つを区別するんだ？<br>大きなブロックを（Providerが）ブロック単位で配るか単一アドレスで配るかに基づいて、共有する必要があるみたいだけど…。" userName="punnerud" createdAt="2025/06/09 16:13:54" color="">}}




{{<matomeQuote body="何だって？IPv6は最初の64ビットがネットワーク、最後の64ビットがHostになるように設計されたんだ。<br>/64はIPv6で最小のネットワークだから、ほとんどのProviderはIPv6 Public Addressを要求されたら/64を配る。なぜならA) ほとんどのRate Limitingが/64を使うから、そしてB) IPv6はIPが多すぎて、誰も気にしないからだ。<br>Vultrは少なくとも一つ/32を見つけたよ（2001:19F0::/32）。これを/64に分割すると、約42億の異なるネットワーク、つまり存在するIPv4 Addressと同じ数になる。<br>ARINは要求する誰にでも/48のIPv6 Subnetをくれるし、もっと大きなPrefixを取得するのも難しくないよ。" userName="stackskipton" createdAt="2025/06/09 17:31:52" color="#ff5733">}}




{{<matomeQuote body="＞ /64がIPv6の最小ネットワーク<br>/64はIPv6の最小ネットワークじゃないよ。/112とか/126とか、好きなサイズを持つことは何の問題もない。<br>ただし、SLAACが機能する唯一のネットワークサイズだから、LANサイズとしては良い選択肢だけどね。" userName="growse" createdAt="2025/06/09 18:09:31" color="">}}




{{<matomeQuote body="実用的な話をしてるんだ。もっとネットワークを減らせるって知ってるけど、壊れるものもたくさんあるんだよ。" userName="stackskipton" createdAt="2025/06/09 18:33:46" color="">}}




{{<matomeQuote body="IP Blockingから始めて、問題行動が続いたらブロックにUpgradeするのは既によくあることだよ。<br>/64をスタート地点と仮定するのは簡単な勝利だし、リピーターに対してそれをBump upするのも全体的な計画から見てかなり簡単そうに見えるね。" userName="Guvante" createdAt="2025/06/09 17:58:03" color="">}}




{{<matomeQuote body="でもCGNATって、こういう手法をObsoleteにしない？俺のweb scrapingは全部スマホ経由でProxyしてるけど、Cloudflareで保護されてるサイトでもかなりAggressiveにやってもIPブロックされることはめったにないよ。" userName="TechDebtDevin" createdAt="2025/06/09 23:16:40" color="">}}




{{<matomeQuote body="それいいね、ShadyなOperatorによく使われる人気のHost、[BuyVM](https://my.frantech.ca/cart.php?gid=37)は、一番安いプラン（月2ドル、今は7ドルだけ在庫ありだけど）でも/48をくれるんだって。" userName="markasoftware" createdAt="2025/06/09 19:53:39" color="#ff5c5c">}}




{{<matomeQuote body="インドの大きいISPで、家にも直接ルーティングできるIPv6が割り当てられてるんだって。Tailscaleで気づいたんだけど、どうやってだろう。90年代のネット荒らし時代が来た感じかな。" userName="gumbojuice" createdAt="2025/06/10 07:01:39" color="">}}




{{<matomeQuote body="BuyVMってもっと背景知ってる？ちゃんとやってる業者で、BGPとか変わった機能もあるんだ。DMCA無視って言われるけど、怪しいブレットプルーフとは違うよ。規模は全然違うけど、Cloudflareがある特定分野で使われるのに似てるかもね。" userName="madars" createdAt="2025/06/09 20:56:17" color="">}}




{{<matomeQuote body="Comcastから／56ってどうやって貰ったの？俺は／60までしか無理なんだ。それより大きいと／60になっちゃうんだけど。" userName="bigstrat2003" createdAt="2025/06/09 20:13:21" color="">}}




{{<matomeQuote body="BuyVMは”DMCA ignored”でかなり有名だよ。「dmca ignored buyvm lowendtalk」で検索するとフォーラムで海賊版サイトに良いってスレッドが見つかるはず。RIAAからも著作権法無視って言われたし https://www.musicbusinessworldwide.com/files/2025/01/USTR-20... CSAMサイトをホストしてたって話も少なくとも1つあるよ。" userName="markasoftware" createdAt="2025/06/09 22:49:17" color="#ff33a1">}}




{{<matomeQuote body="例えばGCPはVMごとに／96を配ってるから、これって理論だけじゃなく実際に使われてるんだ。" userName="johncolanduoni" createdAt="2025/06/10 08:09:32" color="">}}




{{<matomeQuote body="良い質問だね。今見たら／60しか貰ってないや。前は／56だったんだけど変わったみたい。ネットワークが少なくてnetworkdが自動で／64を割り当ててくれたから変更に気づかなかったんだ。" userName="bscphil" createdAt="2025/06/10 07:30:31" color="">}}




{{<matomeQuote body="ダメなネットワーク機器はちゃんと扱えないかもね。SLAACとか、ホストに／64を前提とするIPv6ツールやブラックリスト設定は多いはず。このRFC https://datatracker.ietf.org/doc/html/rfc7421#section-4.2 には／64じゃないとダメな事が載ってるよ。" userName="stackskipton" createdAt="2025/06/09 22:25:35" color="#ff33a1">}}




{{<matomeQuote body="IPレート制限なんて、もう15〜20年前から悪用防ぐのにマジで役に立つツールじゃないって。" userName="bsamuels" createdAt="2025/06/09 18:36:21" color="">}}




{{<matomeQuote body="”Dmca ignored”って、”shady operators”とは全然違うからね。" userName="wredcoll" createdAt="2025/06/09 23:35:09" color="">}}




{{<matomeQuote body="大手企業でさえ、こういうこと分かってるはずなのに、笑っちゃうくらい間違えてるんだよね。<br>俺の会社も有名なCDNのクライアントなんだけど、同じIPv6の/64から繋いでも『いつもと違うIPからの新しい接続だよ』って通知してくるのが普通だって思ってるみたい。" userName="vladvasiliu" createdAt="2025/06/09 18:33:52" color="">}}




{{<matomeQuote body="ここでの問題は、大学とかの大きなネットワークでも/64を何百人もの学生が同時に使うこと。<br>講義でGitHubからツールをDLしてって言ったら、最初の10人はできるけど、残りはrate limitされちゃうんだ。<br>NATでも同じ状況はあるけど、IPv6ならもっとマシになるはずなのにね。" userName="ajsnigrutin" createdAt="2025/06/10 12:08:34" color="#45d325">}}




{{<matomeQuote body="ほとんどの人が/64でブロックすると思ってたんだ。<br>でも、/64内で怪しいIPv6を数えて、閾値を超えたらブロック/スロットルするのが一番安全かもね。<br>/64内のIPv6ごとの怪しいトラフィックの割合を閾値にするのも良さそう。" userName="benlivengood" createdAt="2025/06/09 16:36:23" color="#ff5733">}}




{{<matomeQuote body="うん、それ、よくやられてることだね。" userName="AtomicByte" createdAt="2025/06/09 17:06:07" color="">}}




{{<matomeQuote body="それだけじゃ十分じゃないよ。<br>/48ブロックなんて簡単に入手できるからね。<br>ちゃんとやるには、ASNごとに分けてIPアドレスの割り当てポリシーを見て、どの粒度で対策すべきか考える必要があるんだ。" userName="johncolanduoni" createdAt="2025/06/09 23:57:12" color="#45d325">}}




{{<matomeQuote body="実質的に、/64は新しい/32みたいなもんだよ。<br>ISPは本当は/56か/48をくれるべきなんだ。" userName="chgs" createdAt="2025/06/10 07:50:04" color="">}}




{{<matomeQuote body="IPv6で/64にrate limitかけるのはよく知られてることだよ。<br>Googleも他のサービスではやってるの知ってるし。<br>これはIPv6導入したときにちゃんと更新されてなかったみたいだね。" userName="stackskipton" createdAt="2025/06/09 17:04:11" color="#ff33a1">}}




{{<matomeQuote body="connection trackingを使ったインバウンド接続のブロックは、NATとは別の話だよ。<br>NATはその性質上、デフォルトで前者（ブロッキング）を意味するだけなんだ。" userName="rlpb" createdAt="2025/06/10 21:40:18" color="">}}




{{<matomeQuote body="直接接続ってのは良いことだし、本来のインターネットのあり方なんだ。<br>NATがあるから、IPv4はこんなに長く続いた唯一の理由だよ。" userName="icedchai" createdAt="2025/06/10 13:08:15" color="">}}




{{<matomeQuote body="そうそう、IPv6でNATは一般的じゃないんだよ。それが大きな特徴の一つなんだよね。" userName="chgs" createdAt="2025/06/10 07:48:42" color="">}}




{{<matomeQuote body="古いページのメンテってマジ大変だろうね。昔からのサイトが抱える、何年も前のものの量はヤバいし、全部の組み合わせテストなんて無理だよ。<br>どれだけ古いアプリがあるか知りたいなら、Gmailの設定画面を探ってみな。2004年の頃のGmailの見た目のポップアップが出てくるから。" userName="jeffbee" createdAt="2025/06/09 14:27:40" color="#ff33a1">}}




{{<matomeQuote body="「レガシーページのメンテ大変」って？<br>2024年に3500億ドルの収益があっても、それじゃ足りないってことか…。皮肉たっぷりだね。" userName="belter" createdAt="2025/06/09 14:37:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="古いページのメンテは大変だよね。僕がいた会社では、インターンや新人に古い情報やブランドに合わないものを探させるタスクをやってたよ。これは新しい人が会社の全体像や製品の歴史を学ぶのに役立ったんだ。" userName="reaperducer" createdAt="2025/06/09 15:07:02" color="">}}




{{<matomeQuote body="だから企業は古いサービスをどんどん廃止するんだよ。「なんでそのまま置いといてくれないの？」って思うかもしれないけど、そういうのって結局セキュリティホールになるから。一番安全なコードは、コードがない状態なんだよね。" userName="paxys" createdAt="2025/06/09 14:50:51" color="#ff5733">}}




{{<matomeQuote body="これが今の”学習”のダメなとこだね。ページ読んで、本来あるべき姿と比べて、古けりゃ直して次に進む。分かってる、これって”仕事”みたいに聞こえるかもだけど、それが仕事なんだよ。君が僕が実際にやったタスクをすぐ否定するのが、皮肉言いたくなるほどイラつくね。" userName="dylan604" createdAt="2025/06/09 15:59:29" color="">}}




{{<matomeQuote body="新人ってどうやって”本来あるべき姿”を知るの？" userName="valicord" createdAt="2025/06/09 16:58:21" color="">}}




{{<matomeQuote body="君の主張は一見もっともらしいけど、深く考えると違うと思うな。Google Readerにどんなセキュリティ問題があった？<br>認証の古いAPIが危険なのは分かるけど、もしアーキテクチャのせいでクライアントが悪用されるなら、製品を残してるのが問題じゃなくて、君が元々ヤバい設計をしたのが問題だと思うよ。" userName="okanat" createdAt="2025/06/09 15:47:38" color="#38d3d3">}}




{{<matomeQuote body="In addition to having the money, Google also needs the incentive to spend that money on such projects. If the perceived return on capital is low (or negative!), the incentive is simply not there.<br>Googleはお金があっても、こういう地味なプロジェクトは儲けが少ないとやらないんだよ。投資対効果低いとやらないってことね。" userName="staticshock" createdAt="2025/06/09 14:47:22" color="">}}




{{<matomeQuote body="Something that can be hard to appreciate if you haven’t managed this sort of project is that it can be surprisingly hard to throw money at the problem.If you try to hire at your regular ”bar” for skill for boring work like this - people will often quit. This is one of the reasons many company’s integrations are lacking despite it being a strategic interest - integration work is miserable and doesn’t help your career.Hiring below the skillbar at the same pay, is dangerous and often doesn’t actually work out - if it was that easy someone more skilled probably would have fixed this a while ago.So you try to pay more for the miserable work - but hold on, now you have to pay out of band salaries, and legal tells you that opens you to massive liabilities.Ok - maybe you can just level them differently? No, HR will tell you that will mess with all your internal level processes - which are key to running the company. They’re going to add a lot of additional overhead tracking these ”fake” leveling bands and dealing with the consequences.None of this means the problem is literally unsolvable, but it now requires a huge amount of time and effort from people near the top of the company who everyone would much rather spend their time on making the company better.All of this to say - sure you could solve this problem, but it’s actually much more complex than adding some line items to a budget.Source: have watched many big companies try and fail for years to staff unsexy work like this.<br>こういう地味な修正作業に人当てるの、めちゃくちゃ難しいんだよね。優秀な人は辞めちゃうし、そうじゃない人はうまくいかない。給料上げたりレベル変えたりしようとすると、人事とか法務が面倒だし。結局、上の人が時間割かないと無理。予算増やすよりずっと複雑だよ。大企業がこういう作業で失敗するのよく見てきたからわかるわ。" userName="Magmalgebra" createdAt="2025/06/09 14:58:54" color="#38d3d3">}}




{{<matomeQuote body="Bug bounty program appears to be an efficient spend. For a few thousand dollars they mobilize unpaid people looking for extreme edge cases and then surface these issues. It would’ve cost way more to pay an employee to search for this.<br>Bug bounty programは効率的だよね。安い費用でたくさんの人がエッジケース探してくれるんだから。社員にやらせるよりずっと安上がり。" userName="xivzgrev" createdAt="2025/06/09 14:58:29" color="">}}




{{<matomeQuote body="Google’s main search page is the slowest page ＆ UI I have found on the internet today (not accounting for bandwidth limits). Even on modern devices it lags at text entry and even rearranges characters in the text box so you have to wait 10＋ seconds for it to finish loading or it will go haywire. The shopping and other pages are actually worse. So it appears you’re right, ＄350B isn’t enough money to maintain a web page in 2025.<br>Googleのメイン検索ページ、ネットで一番遅いUIかも。入力も遅れるし、文字化けすることもある。ショッピングとか他のページはもっとひどい。ホント、350Bドルあっても2025年にウェブページすら維持できないってこと？って感じ。" userName="0xbadcafebee" createdAt="2025/06/09 16:19:02" color="">}}




{{<matomeQuote body="In addition to having the money, Google also needs the incentive to spend that money on such projects. If the perceived return on capital is low (or negative!), the incentive is simply not there.Perhaps Google should Google the concepts of “customer service,” “standing behind your product,” and “brand reputation.”<br>Googleはお金があっても、こういう地味なプロジェクトは儲けが少ないとやらないんだよ。投資対効果低いとやらないってことね。Googleは「customer service」とか「brand reputation」って概念をGoogleで検索してみたら？って思うわ。" userName="reaperducer" createdAt="2025/06/09 15:12:04" color="">}}




{{<matomeQuote body="What is the point of assigning something to a new hire, if they can’t do it without another person watching the whole thing over their shoulder AND they are unlikely to benefit from this knowledge in the future (since it’s a legacy page that is supposed to be deleted)？<br>レガシーページみたいな仕事、新人にやらせる意味ある？誰かが見てないとできないし、どうせすぐ消すページなら将来の役に立たないじゃん。" userName="valicord" createdAt="2025/06/09 17:53:42" color="">}}




{{<matomeQuote body="I was recently editing the Wikipedia page for Google Bookmarks (2005-2021). I wanted to add a logo to the page, but I was having a lot of trouble finding a high-quality copy of the logo anywhere. Eventually I figured out that Google’s old URL scheme for product logos was very guessable, and they had never taken it down: https://www.google.com/intl/en-US/images/logos/bookmarks_log...<br>They’ll probably never stop serving those old URLs because who KNOWS where they might still be in use. One of surely a million examples of weird little legacy things Google is stuck with.<br>Google BookmarksのWikipediaページ編集してた時に、ロゴ探すのが大変で。結局、Googleの昔のURLスキームがまだ生きてて見つかったんだ。https://www.google.com/intl/en-US/images/logos/bookmarks_log...<br>こういう古いURL、どこで使われてるか分からないから消せないんだろうね。Googleが抱える遺産問題の一例だわ。" userName="oxguy3" createdAt="2025/06/09 17:02:43" color="#ff5733">}}




{{<matomeQuote body="Google Reader used Google accounts for authentication, so an exploit in Reader could potentially be compromising to your entire Google account. This very article gives an example of that; Looker Studio was used to reveal the name on any account, even though most accounts have likely never used Looker Studio.Google could mitigate this by not having universally shared accounts across all services, but they’re not going to do that because most users would find that inconvenient.<br>Google Readerも共通アカウントだったから、そこで脆弱性が見つかるとGoogleアカウント全体が危ないかも。この記事のLooker Studioの例みたいにね。Googleはサービスごとにアカウント分ければリスク減らせるけど、ユーザーが不便がるから絶対やらないだろうね。" userName="oxguy3" createdAt="2025/06/09 16:54:23" color="">}}




{{<matomeQuote body="何かのセキュリティ影響を簡単に答えられたら、ハックや情報漏洩なんて起きないよな。単純に分かんないんだよ。それに、調べるのには金がめちゃくちゃかかるしね。" userName="paxys" createdAt="2025/06/09 15:54:47" color="">}}




{{<matomeQuote body="”It must be a daunting chore to maintain all the legacy pages”<br>レガシーなページを全部メンテするのって、大変な作業だろうな。Facebookの”poke”機能、あれ誰がメンテしてんだろうっていつも思うんだ。" userName="fer" createdAt="2025/06/09 14:37:56" color="">}}




{{<matomeQuote body="いいじゃん！Cool URLs never die。Googleなら古いロゴの参照をコードベースでもっと効率的に検索できると思ってたけどさ。" userName="xnx" createdAt="2025/06/09 18:24:55" color="">}}




{{<matomeQuote body="なんか推測してみようと思って、moon.google.comを見てみたんだ。まだ動いてる古いGoogleのアプリ/ジョークの一つだよ。誰かがmoon.google.comをもっと新しい見た目にして、月もたくさんにしてくれたみたい。Googleは製品をすぐ捨てるって言う人もいるけどさ。" userName="jeffbee" createdAt="2025/06/09 16:41:08" color="">}}




{{<matomeQuote body="ウェブサイト作る時って、使う情報やテキストは開発者に渡されるじゃん。開発チームがちゃんとやったか確認するために、同じデータをQAチームにも渡すんだよ。どうしてこんなに鈍いんだ？わざとなのか？" userName="dylan604" createdAt="2025/06/09 18:07:06" color="">}}




{{<matomeQuote body="元記事の投稿者は、ウェブサイトの整理作業は会社とか製品、歴史を学ぶ方法になるって言ってたね。まあ、分かりやすいことならいいけど、新しいインターンがいつ質問したらいいかって、どうやって分かるんだろ？" userName="pests" createdAt="2025/06/09 18:03:22" color="">}}




{{<matomeQuote body="すごいな。ただセキュアなコードを書けばいいんだ。なんで今まで誰もそんなこと思いつかなかったんだろ？" userName="olalonde" createdAt="2025/06/09 16:32:34" color="#785bff">}}




{{<matomeQuote body="Googleに”カスタマーサービス”、”standing behind your product”、”ブランド評判”の概念を検索させろって？<br>Googleは顧客（広告主）からの評判には満足してるんだろうね。G Suiteを買う法人も顧客だけど、Googleのユーザーの大半は顧客じゃない。Googleは、俺が車のガソリンの気分を気にするのと同じくらいしか、ユーザーのこと気にしてないよ。" userName="xp84" createdAt="2025/06/09 18:01:04" color="#ff5733">}}




{{<matomeQuote body="こんな簡単なことで失敗する人が多いの、マジで驚くよ。もし従業員として、タスクに必要な情報が足りなかったら、ちゃんと声を上げなきゃ。聞かなかったからって、変なトラブルになることなんてないんだから。" userName="dylan604" createdAt="2025/06/09 17:24:44" color="">}}




{{<matomeQuote body="僕はよく新人に仕事を任せるんだ。長年チームにいると見慣れてておかしいと思わなくなったことでも、新しい視点で質問してくれるのを期待してるからね。<br>新人が間違ってたら、なんでそうなのか説明すれば彼らの学びになるし、もし新人が正しければ、今のやり方がおかしいって分かってこっちの学びになる。どっちにしても得るものがあるんだ。" userName="jeffbee" createdAt="2025/06/09 18:20:20" color="">}}




{{<matomeQuote body="ずいぶん昔、Facebookを使って誰かの電話番号を見つけようとした時に似たようなことをやったな。<br>パスワードをリカバリーする時に、Facebookが電話番号の大部分を表示してくれたから、それをvcardファイルに書き出して自分のスマホに取り込んで、写真を見て確認したんだ。驚くほど上手くいったよ。" userName="atum47" createdAt="2025/06/09 15:40:55" color="#ff33a1">}}




{{<matomeQuote body="Googleのプロフィール写真や他のGoogleアプリでも似たような穴があるんだ。<br>例えばGoogleマップで「John Smith」ってレビューを見たら、Google Hangoutsでjohnsmith@gmail.comとかsmithjohn@gmail.comとか、色々メールアドレスを推測して追加してみるんだ。<br>そうするとプロフィール写真が見れるから、比較して本人か確認できるってわけ。" userName="VladVladikoff" createdAt="2025/06/09 16:56:56" color="#ff33a1">}}




{{<matomeQuote body="だから僕は、こういうサービスには本当の電話番号を使わないことにしてるんだ。<br>サービスを使うのに僕の電話番号なんて要らないしね。" userName="dheera" createdAt="2025/06/09 17:07:22" color="">}}




{{<matomeQuote body="Googleは何年も前から有効な電話番号を求めてるよ。他のほとんどの大手プロバイダーもそうだ。<br>登録した電話番号を失くすと、アカウントから締め出される可能性もあるんだ。<br>君はどうやってるの？" userName="shwouchk" createdAt="2025/06/09 18:07:22" color="">}}




{{<matomeQuote body="僕は数年使ってたHotmailアカウントを、電話番号を失くしたせいで失ったんだ。<br>昔、上司が個人的な用途で携帯代を出してくれるって言ってくれて、それでカナダに来た最初のiPhone 3Gを手に入れたんだけど、その会社を辞めた後、アカウントに問題があった時にあの電話番号が必要になるって考えてなかったんだ。<br>結局、全ての復旧方法を試したけどダメだった。悲しいことに、そのアカウントからたまにメールが転送されてきてたんだけど（最近は来てないけど）、何年も来てたんだ。失くしたのはすごく痛い。<br>さらに最悪だったのは、昔は個人情報をオンラインで提供するのをすごく警戒してたから、名前を「John Fokendoe」とか適当な誕生日で登録してたんだ。<br>だから、入力した情報が思い出せなくて、何年分もの情報が失われた。<br>Googleアカウントは、電話を失くした場合に備えてバックアップコードをダウンロードして安全なフォルダに保存してるよ。" userName="14" createdAt="2025/06/10 03:34:36" color="">}}




{{<matomeQuote body="僕には今、3つのアクティブなGmailアカウントがあるんだけど、全部最初の「口コミ」紹介時代から使ってるんだ。<br>昔はスパムを使い捨てアカウントにマッピングするプロジェクトとかで、もっとたくさんのGmailアカウントを作ってたよ。<br>これらのアカウントには一度も電話番号を紐付けたことがないんだ。<br>今使ってるGmailアカウントも電話番号は関連付けてないし、リカバリーとかセキュリティで電話番号の紐付けを求められても断ってる。<br>電話番号でサインアップしたことがないから、失くす電話番号もないんだ。<br>セキュリティチャレンジがあっても、関連付けられたGmailアカウントで認証してる。<br>僕の出生証明書上の名前とか、電話番号とか、実際の家の住所とかはネット上にはほとんど痕跡がないんだ…そういう情報でバックトレースしようとする人は、結局親戚とか、違うけど似た名前の西オーストラリアの人に行き着くことがほとんどだね。" userName="defrost" createdAt="2025/06/10 00:46:17" color="">}}




{{<matomeQuote body="彼ら自身のポリシーによって、「必須」にできる度合いには限界があるんだ。<br>新しい（または工場出荷時状態にした）Android/ChromeOSデバイスを初期設定する時、Googleアカウントが「必須」なんだ。だからアカウントを持ってない（または持ってないと言う）場合、デバイスの初期設定プロセスで新しいGoogleアカウントを生成してくれる。<br>デバイスに電話番号やSIMカードがなくてもね。<br>僕は長年何台かAndroid/ChromeOSデバイスを使ってきたけど、どれも新しいGoogleアカウントを生成させてきたよ。<br>これらのアカウントには電話番号は関連付けられてないんだ。<br>だいたいこれらのアカウントはGoogle Playストアで無料アプリをダウンロードする以外にはあまり使わないかな…<br>もっと extensiveに使ったら、「続行するにはこのアカウントに電話番号を追加する必要があります」ってなるかも？" userName="bsammon" createdAt="2025/06/09 22:18:39" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「Android/ChromeOSの初期設定でGoogleアカウントが必須」ってのは、僕がAndroidを詳しく見たのはしばらく前だけど、そうじゃなかったのを覚えてるし、ネットでちょっと検索した感じでも今もそうみたいだよ。" userName="userbinator" createdAt="2025/06/10 01:54:55" color="">}}




{{<matomeQuote body="グーグルアカウントなしで進むってボタン押すだけでいけるの？そんなオプション毎回見逃してただけ？分かりにくい方法ならリンク貼ってよ。”ググれ”も昔みたいに簡単じゃないんだよ。" userName="bsammon" createdAt="2025/06/10 04:37:16" color="">}}




{{<matomeQuote body="シム入れたらいつでもあなたの番号取れるよ。だって彼ら、あなたのスマホをコントロールしてるんだから。" userName="megous" createdAt="2025/06/09 22:45:07" color="">}}




{{<matomeQuote body="面白いんだけど、電話番号ってシムカードに保存されてないんだ。代わりにグローバルにユニークなアイシーシーアイディー番号が入ってて、通信会社がそれをあなたの番号と紐づけてる。だから番号をシムとか会社間で移せるし、スマホ自体は自分の番号知らないままでいられるんだよ。" userName="vesinisa" createdAt="2025/06/10 06:15:42" color="#ff5c5c">}}




{{<matomeQuote body="面白いけど、それ関係ないよ。シムをスマホに入れた瞬間にグーグルはあなたの番号を手に入れられるんだ。それ、グーグルの機能でもあるしね。" userName="megous" createdAt="2025/06/10 16:38:08" color="">}}




{{<matomeQuote body="スマホが自分の番号知らないのが、うちのスマホみたいに意外と面倒なんだよね！" userName="namibj" createdAt="2025/06/10 12:17:35" color="">}}




{{<matomeQuote body="ユーエスエーではどうだか知らないけど、イーユーではこういう時のために2ドルでプリペイドシムカード買って、ほぼずっと使えるよ。あんまり使わないならあと1～2ドルチャージ要るかもだけど、そういう風に分けるにはそれくらいの値段だよ。" userName="mystifyingpoi" createdAt="2025/06/09 18:19:04" color="#ff5733">}}




{{<matomeQuote body="イーユーのどこ？アイルランドで見つけたベストなやつは、番号を維持するために半年ごとに最低5ユーロチャージ要るんだ。まだ自動化はできてないけどね。" userName="extraduder_ire" createdAt="2025/06/10 03:06:27" color="">}}




{{<matomeQuote body="確実じゃないけど、ポーランドのオレンジのプリペイドだと、チャージに関わらずアカウントを365日延長するのに7ドルくらいかかる。でも手動でアクティベートしなきゃいけないし、普通の使い方じゃないかも。" userName="mystifyingpoi" createdAt="2025/06/10 05:54:38" color="#45d325">}}




{{<matomeQuote body="最初から番号で登録してないなら、番号追加しろって言われるけど、スキップできるよ。" userName="marssaxman" createdAt="2025/06/10 01:04:47" color="">}}




{{<matomeQuote body="本物の電話番号以外に何使ってんの？必須の電話番号認証サービス、どうやってパスすんの？教えてよ。" userName="cosmojg" createdAt="2025/06/11 15:59:10" color="">}}




{{<matomeQuote body="毎秒4万件もリクエスト送って、サーバーに長時間負荷かけてるのに、アラーム鳴らさないでリソース急増させないってすごいね！感心しちゃったよ。" userName="VladVladikoff" createdAt="2025/06/09 16:41:28" color="">}}




{{<matomeQuote body="アラーム鳴ったけどすぐ収まったとか、担当者が見る前に戻ったとかかもね。<br>Google規模だと毎秒4万件なんて大したことないし、IP変えたりIPv6使えば気づかれにくいよ。<br>監視じゃなくて、JavaScript無効なフローでトークン借りてレート制限かからないのが問題なんだよ。" userName="kevindamm" createdAt="2025/06/09 16:48:19" color="#ff5733">}}




{{<matomeQuote body="参考までに、Googleって1秒間に検索クエリを16万件くらい処理してるらしいよ。" userName="userbinator" createdAt="2025/06/10 01:51:31" color="#45d325">}}




{{<matomeQuote body="もしかしたら、そのためにボットネット使ったのかもね？<br>リクエストごとに違うIPアドレスからとかさ。" userName="amelius" createdAt="2025/06/09 22:32:01" color="">}}




{{<matomeQuote body="こうやってバグバウンティ減らしちゃうと、自分たちで首絞めてるようなもんだよ。" userName="RankingMember" createdAt="2025/06/09 17:28:46" color="">}}




{{<matomeQuote body="報酬が少ないせいで、ホワイトハットが報告しなくなったらどうなるか、サービス提供側は忘れてるっぽいね。企業の欲張りはみんなにとって良くないよ。" userName="yapyap" createdAt="2025/06/10 12:29:54" color="">}}




{{<matomeQuote body="2025年、2023年、2021年の同じような話のリンクだよ。<br>https://qbix.com/blog/2025/06/06/%e2%80%9cno-way-to-prevent-...<br>https://qbix.com/blog/2023/06/12/no-way-to-prevent-this-says...<br>https://qbix.com/blog/2023/06/12/no-way-to-prevent-this-says...<br>どれが一番ウケる？" userName="EGreg" createdAt="2025/06/09 17:31:36" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
