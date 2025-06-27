+++
date = '2025-06-20T00:00:00'
months = '2025/06'
draft = false
title = 'Phoenix.new登場！ Phoenix向けリモートAIランタイムとは？'
tags = ["AI", "プログラミング", "Web開発", "開発ツール", "Phoenix"]
featureimage = 'thumbnails/red2.jpg'
+++

> Phoenix.new登場！ Phoenix向けリモートAIランタイムとは？

引用元：[https://news.ycombinator.com/item?id=44328326](https://news.ycombinator.com/item?id=44328326)




{{<matomeQuote body="いやー、俺長年php書いててさ、Elixir/Phoenixに興味あったんだけど、全然やる気出なくて。<br>この記事見たら「これでやんなきゃもうダメだ」って思ったんだよね。<br>そんでfly.io登録したら、なんと45分足らずでmulti-room tic tac toe gameをdeployedできた！<br>https://tic-tac-toe-cyber.fly.dev/<br>game作って、最初はsingle roomで試したらうまくいった。<br>次にmultiple roomsをdifferent git branchでaddしてみたら、これもgreat。<br>ElixirとかPhoenix、fly.ioへのdeployのことはvery littleしか知らないのに、もうnice looking appがdeployed and runningなんだよ。<br>I know a lot of devs will hate that this is possible, and it is up to me now to look at the steps it took to create this and really understand what is happening, which are broken down extremely simply for me…<br>I will do this because I want to learn。 I bet a lot of people won’t bother to do that。 But those people never would have had apps in the first place and now they can。 If they are creating fun experiences and not banking apps, I think that is still great。<br>you guys have been releasing amazing things for years only to be poorly replicated in other languages years later.. but you really outdid yourselves here。<br>I’m blown away。<br>edit: is there a way to see how much of my credits were used by building this？" userName="colecut" createdAt="2025/06/21 21:00:37" color="#ff33a1">}}




{{<matomeQuote body="This is amazing on multiple fronts！ I reset your usage, so the next round is on us！<br>We shipped credits the day before launch, so usage UI is still TBD, but should be out next week。<br>Thanks for the sharing your experience！" userName="chrismccord" createdAt="2025/06/22 01:17:00" color="#ff33a1">}}




{{<matomeQuote body="Hi Christ、is there any way to get more credits or BYO api key for anthoripic/openai？<br>Im trying to make Kahoot clone and already spend more that 40 in a couple hours。" userName="neoecos" createdAt="2025/06/26 05:15:32" color="#45d325">}}




{{<matomeQuote body="Was the graphic design created from prompts too？<br>It’s surprisingly nice, especially considering you spent 45 minutes on it。" userName="jonahx" createdAt="2025/06/21 21:23:13" color="#785bff">}}




{{<matomeQuote body="I told it that I wanted a two player tic tac toe game。<br>it give me a selection of ”styles” and I chose neon retro。<br>I probably could have been more creative and typed in my own suggestion。<br>Other than that, I said absolutely nothing about how I wanted the layout。<br>It came up with the idea of listing all active games on the homepage, with the number of players in each, all on its own。<br>I went from ”I want a two player tic tac toe game” to having one, and then added multiple rooms, and deployed it all in under 45 minutes, with little input other than that.." userName="colecut" createdAt="2025/06/21 21:28:08" color="#ff5733">}}




{{<matomeQuote body="Did you figure out how much credit was used？<br>I want to try this out, but $20 of credit can go quick doing agentic work。" userName="curiouser3" createdAt="2025/06/23 15:47:46" color="#ff33a1">}}




{{<matomeQuote body="I’m not sure exactly but I think I used nearly all of it。<br>I’ve seen others say they went through the full $20 within 45minutes to an hour。<br>They are supposed to be adding a way to monitor usage soon。" userName="colecut" createdAt="2025/06/23 22:28:24" color="#45d325">}}




{{<matomeQuote body="Phoenix creator here。<br>I’m happy to answer any questions about this！<br>Also worth noting that phoenix.new is a global Elixir cluster that spans the planet。<br>If you sign up in Australia, you get an IDE and agent placed in Sydney。" userName="chrismccord" createdAt="2025/06/20 15:54:24" color="#45d325">}}




{{<matomeQuote body="Amazing work。<br>Just a clarifying question since I’m confused by the branding use of ”Phoenix.new” (since I associate ”Phoenix” as a web framework for Elixir apps but this seems to be a lot more than that)。<br>”Phoenix.new”ってIDE？<br>”Phoenix.new”って...AI to help you create an app using the Phoenix web framework for Elixir？<br>”Phoenix.new”ってappをFly.ioでhosted/deployedするのrequires？<br>If that’s the case, maybe a naming like ”phoenix.flyio.new” would be better and extensible for any type of service Fly.io helps in deployment - Phoenix/Elixir being one)。<br>It is all 3 above？<br>And how does this compare to Tidewave.ai (created as presumably you know, by Elixir creator)？<br>Apologies if I’m possibility conflating topics here。" userName="tiffanyh" createdAt="2025/06/20 16:11:14" color="#ff33a1">}}




{{<matomeQuote body="Yes all 3。<br>It has been weird trying to position/brand this as we started out just going for full-stack Elixir/Phoenix and it became very clear this is already much bigger than a single stack。<br>That said, we wanted to nail a single stack super well to start and the agent is tailored for vibe’d apps atm。<br>I want to introduce a pair mode next for more leveled assistance without having to nag it。<br>You could absolutely treat phoenix.new as your full dev IDE environment, but I think about it less an IDE, and more a remote runtime where agents get work done that you pop into as needed。<br>Or another way to think about it, the agent doesn’t care or need the vscode IDE or xterm。<br>They are purely conveniences for us meaty humans。<br>For me, something like this is the future of programming。<br>Agents fiddling away and we pop in to see what’s going on or work on things they aren’t well suited for。<br>Tidewave is focused on improving your local dev experience while we sit on the infra/remote agent/codex/devin/jules side of the fence。<br>Tidewave also has a MCP server which Phoenix.new could integrate with that runs inside your app itself。" userName="chrismccord" createdAt="2025/06/20 17:04:41" color="#45d325">}}




{{<matomeQuote body="AI エージェントがプログラム書いて、俺たちは様子を見たり、苦手な部分を手伝う。これってプログラミングの未来だよね って意見があるけど正直 depressing だな。<br>「様子を見に pop in 」って、何から抜け出して？ 工場作業とかから？皮肉だね。" userName="tills13" createdAt="2025/06/21 01:26:53" color="">}}




{{<matomeQuote body="この project ってさ、普通の container で agent を動かすのと比べて、何が凄いの？利点は？" userName="beepbooptheory" createdAt="2025/06/20 20:04:21" color="">}}




{{<matomeQuote body="あーごめん、 dumb な質問で！<br>container 化の良さは知ってるけど、この project の特長を知りたかったんだ（ Elixir に合わせた prompting 以外で）。<br>でも分かったよ、説明してくれてありがとう。<br>visionary な仕事だね！俺は懐事情で使えないけど、こういう新しいものにはいつも興味津々さ！<br>重ね重ねごめんね。 release おめでとう、良い一日を！" userName="beepbooptheory" createdAt="2025/06/20 21:09:51" color="">}}




{{<matomeQuote body="まだ初期段階なのは分かってるけど、個人的な must-have wishlist はこれ！<br>・なんとか local で動かせること。自分の IDE とか tool を使いたいんだ。 browser IDE は正直苦手。<br>・全ての code を手に入れて、どこでも自分で deploy できること。<br>追記： Elixir/Phoenix 界隈の動画が、20年前の”15-minute rails blog”みたいで好きなんだ。 marketing bullshit じゃなく、実際に自分たちが作ったものを使ってるのがいいね。" userName="troupo" createdAt="2025/06/20 16:00:34" color="#785bff">}}




{{<matomeQuote body="AI に仕事を取られるのは depressing ってよりは concerning だと思うんだ。<br>多くの人がこのことを open に話さないのが心配。<br>どうやって沢山の仕事を再構築するのか、仕事が見つからない人たちの経済的な未来は？ もっと真剣に考えて、状況を受け入れるべきだ。<br>これは避けられないこと。 positive に新しい未来を探しに行こうぜ。" userName="brainless" createdAt="2025/06/21 05:00:43" color="#785bff">}}




{{<matomeQuote body="希望としてはさ、 pool サイドで margaritas 飲んでるだろうね…<br>でも、そんな自由を保てるかは怪しいな。" userName="abrookewood" createdAt="2025/06/21 02:21:10" color="">}}




{{<matomeQuote body="分かった！<br>何を見落としてるか分かるまで、読み続けるよ！<br>もう一回、 good job！" userName="beepbooptheory" createdAt="2025/06/20 21:30:14" color="">}}




{{<matomeQuote body="Jevons Paradox について調べて読んでみて。" userName="seanhandley" createdAt="2025/06/21 07:39:45" color="">}}




{{<matomeQuote body="AIとかの効率化・自動化って、結局みんなを豊かにしないよ。仕事は減るし、裕福な人だけが得するんだ。短期的に楽になるだけかもね。" userName="dkersten" createdAt="2025/06/21 07:08:10" color="">}}




{{<matomeQuote body="セキュリティとか、コードをAIの学習に使うかって話が見当たらないんだけど、ポリシーはどうなってるの？確認したいな。" userName="Snakes3727" createdAt="2025/06/20 17:50:37" color="#38d3d3">}}




{{<matomeQuote body="ローカルからのコード操作はハンバーガーメニューからgit clone＼copy git pushでできるよ。GitHub連携でPRsワークフローも可能。Phoenix.new本体のローカル実行は考えてないけど、SSHでのランタイムアクセスは優先度高いよ。ローカルvscodeとかでリモート開発できるかもね。" userName="chrismccord" createdAt="2025/06/20 16:06:27" color="#38d3d3">}}




{{<matomeQuote body="Indeed、高い給料払ってくれる雇い主なんていないでしょ？利益は創業者＼投資家と顧客に行って、SWEsみたい中間職はいらなくなるかも。新しい機会があるかもだけど、それはまだ分からないね。" userName="freedomben" createdAt="2025/06/21 10:38:45" color="">}}




{{<matomeQuote body="＞In economics、Jevons paradox（ジェボンズのパラドックス）みたいに、技術で効率化すると全体の需要が増えることがあるんだ。<br>ソフトウェア開発も、効率化でアプリ開発者が増えて全体のコード量は増えるかも。でも、CS-grad software engineerは必要なくなる可能性もあるよね。石炭採掘ロボットみたいなもんで、石炭需要は増えても炭鉱夫の仕事はなくなる、みたいな。AIはsenior engineersをすぐには代替できないって意見も、数年で変わるかもね。Jevon’s Paradoxはsoftwareには当てはまるだろうけど、SWEsには当てはまらないと思うな。https:＼＼en.wikipedia.org＼wiki＼Jevons_paradox" userName="freedomben" createdAt="2025/06/21 10:28:53" color="#38d3d3">}}




{{<matomeQuote body="AIが作ったアプリって、Fly.ioにどれくらい依存してるの？" userName="cosmic_cheese" createdAt="2025/06/20 17:41:52" color="">}}




{{<matomeQuote body="＞Running phoenix.new itself locally isn’t something we’re planning<br>ってことは、open sourceにする計画もないってこと？" userName="prophesi" createdAt="2025/06/20 16:47:54" color="">}}




{{<matomeQuote body="Everything starts as a stock phx.new app which use sqlite by default。Nothing is specific to fly。git clone urlをcopyしてpaste、cd＆＆mix deps.get＆＆mix phx.serverすればlocallyでthe app will just work。" userName="chrismccord" createdAt="2025/06/20 17:45:32" color="#ff5733">}}




{{<matomeQuote body="how are they isolating ai agent state from app-level processes without breaking BEAM’s supervision guarantees? これってどうやってるの？" userName="b0a04gl" createdAt="2025/06/20 16:59:04" color="#ff5c5c">}}




{{<matomeQuote body="Phoenixマジ最高！使うたびにどんどん好きになるよ。これの料金どうなってんの？Flyの通常インスタンス料金だけ？それともAIとか環境の追加コストもある？あと、これって複数のプロジェクトで別々のドメインで使えるの？" userName="finder83" createdAt="2025/06/20 17:07:17" color="#38d3d3">}}




{{<matomeQuote body="Phoenix.new環境にはヘッドレスChromeブラウザがあって、AIエージェントが操作できるらしいね。UIいじったり、ページ内容やJavaScriptの状態、サーバーログまで同時に見れるってすごい。このヘッドレスChromeとエージェント、Cursorみたいなの使ってローカルでも動かせないのかな？" userName="joevandyk" createdAt="2025/06/20 18:43:50" color="#785bff">}}




{{<matomeQuote body="Fly APIで独立した環境を用意するのって何かコツある？Phoenix.newみたいなのを、ローコードのサーバーレスワークフローシステムで作ってみたいんだよね。" userName="mrdoops" createdAt="2025/06/20 17:00:02" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これってFLAME使ってるってことでOK？Elixirのホストアプリを、エージェントのシェルとかランタイムからどうやって安全に守ってるの？" userName="jonator" createdAt="2025/06/20 20:19:40" color="#ff5c5c">}}




{{<matomeQuote body="これじゃあ起業家とか投資家も楽にはならないだろうね。もしプロンプトをいくつか打つだけでプロダクトが作れちゃうなら、お客さんはプロダクトを買うんじゃなくて、自分でプロンプト書いちゃうから。" userName="neuderrek" createdAt="2025/06/21 11:36:32" color="">}}




{{<matomeQuote body="今回の件ではFLAMEは使ってないよ。エージェントはアプリとかIDEとか計算リソースとは完全に別で動いてる。Phoenix Channels経由で、みんなのランタイムと通信して操作する仕組みだよ。" userName="chrismccord" createdAt="2025/06/20 20:39:13" color="#785bff">}}




{{<matomeQuote body="俺たちのソフトウェアエンジニアの仕事はどうなんの？これからはエージェントのチームを管理するってこと？" userName="scottrblock" createdAt="2025/06/21 02:54:49" color="">}}




{{<matomeQuote body="これめっちゃクールじゃん！たぶん一番革新的なのは2つだね。1つ目はリモートエージェント。コンテナ化された環境でAIが自由に動けるから、ユーザーの許可なしでも大丈夫（まあGitの履歴編集とか危険なことはできちゃうかもだけど）。これ単体でもサービスにできると思う。ローカルでもリモートでも隔離環境をサクッと立ち上げてAIを走らせたいね。並列実行も簡単にできそう。<br>2つ目はFlyとの連携の深さ。みんなAIを自分たちの製品にゴリゴリ組み込もうとしてるじゃん？ChatGPTに聞いてコピペじゃなくて、使ってる製品の中で直接、自分のデータとかツールを使って操作できるべきだよね。これはまさにWebアプリのデプロイでそれをやってるってこと。" userName="ativzzz" createdAt="2025/06/20 18:39:47" color="#ff5733">}}




{{<matomeQuote body="Kasm workspacesっての見てみたら？リモートでDockerベースのLinuxデスクトップを立ち上げるのにすごく良い感じだよ。AI開発環境としてもバッチリ。ホームディレクトリの永続化もできるし、ちょっと設定すればBrewとかのパッケージも永続化できるらしい。<br>https://hub.docker.com/r/linuxserver/kasm<br>https://www.reddit.com/r/kasmweb/comments/1l7k2o8/workaround..." userName="indigodaddy" createdAt="2025/06/20 19:21:56" color="#45d325">}}




{{<matomeQuote body="最近Google Julesを試したんだけど、似たアプローチだよ。VMを立ち上げてタスクをこなす感じ。<br>インフラは扱わないからホスティング機能はないんだ。いくつか小さいタスクを設定して、後で確認して、OKならGitHubの新しいブランチを見る、って流れ。<br>PRを出して、ローカルで必要ならチェックしてマージするんだ。" userName="brainless" createdAt="2025/06/21 05:07:49" color="#ff5733">}}




{{<matomeQuote body="多くの人はまだasync agent workflowを体験したことないし、正直大手プロバイダーもここ1～2ヶ月まで提供してなかったしね。<br>エージェントに熱狂的になるかどうかの予測要因の一つだと僕は思うんだ。<br>コンテナ化なんて大したことないと思うかもしれないけど、この分野はすごく新しくて動きが速いから、既存技術との組み合わせが人を驚かせることがあるんだよ。" userName="kasey_junk" createdAt="2025/06/20 23:36:12" color="">}}




{{<matomeQuote body="イノベーションというよりは流行りって感じかな。<br>Fly連携の多くは、claude codeにFly CLIのドキュメントを調べてもらうだけで実現できると思うんだ。" userName="throwaway314155" createdAt="2025/06/21 03:15:43" color="">}}




{{<matomeQuote body="「これが未来なのか」って葛藤してる。<br>灌漑分析のPhoenixアプリ開発に一日中取り組んでたんだ。<br>最近は、「月20ドルで何ができるか」って感じでZedとそのgenetic offeringsを試してるよ。<br>Elixirコードはほとんど書いてくれない。たまに任せるけど、結局書き直すことが多いんだ。Elixirは楽しいし、意図されたプログラミングモデルを使うのは啓発的だよ。<br>でもHEEX関連は大量に書かせるね。後で手直しはするけど。<br>CSSとHTMLのニュアンスを全部覚えたいとは思わないんだ。そして、それを書くのがプログラミング史上最悪の構文体験だと思う。<br>Agentic codingは、プログラミングがいかに悪化したかの告発だと見てるんだ。<br>価値がないとは言わないけど、魅力の大きな部分は、ウェブ技術がまるで法曹界の専門用語みたいで、ブラウザに予測不能な形で飲み込まれる隠れたバグだらけだからじゃないかな。<br>諦めて、主要ツールに確率的に正しいことをさせることにしたなんて、驚きじゃない？<br>どうせ自分たちで正確にやるよりも確率的に正しい方がマシだったりするしね。" userName="travisgriggs" createdAt="2025/06/21 02:50:09" color="#785bff">}}




{{<matomeQuote body="あっという間にクレジット使い果たしちゃった。<br>使い始めの数分は、本来あるべき姿を垣間見た気がしたけど、それ以外はUIの基本的なことすら上手くいかない時間が長くて、気づいたら終わってた。<br>20ドルで90分くらいって、自分のコンピューターで全部コントロールできるのに比べて全然価値がないよ。<br>いまだに、作成されたコードベースの最新版をローカルにクローンできないんだ。<br>それと、Flyのドキュメントがほとんどないこと、使用量メーターがないこと、有料なのに無償サポートもないこと（？）、この辺りでFlyを避けたい気持ちになった。<br>Phoenix.new以外のFlyの多くのこと、特にトンネルと開発体験は良いと思ってるから残念だよ。" userName="itsautomatisch" createdAt="2025/06/21 13:28:48" color="#45d325">}}




{{<matomeQuote body="わー、これを見られてすごく嬉しいし、試すのが楽しみだよ。<br>Elixirファンとして、LLMがPythonやJSみたいな大きな言語ほどElixirをうまく書けないから、Elixirが遅れをとるんじゃないかって心配してたんだ。<br>だから、この問題の解決に向けてこんなに積極的に取り組んでくれてるのを見て、本当に嬉しい。<br>僕たちはきっと大丈夫だ。" userName="arrowsmith" createdAt="2025/06/20 15:00:46" color="">}}




{{<matomeQuote body="さらに…遅れをとる心配？ LiveView、Phoenix、Elixir、OTPは大好きだけど、エコシステムは放棄されたパッケージの荒野だよ。<br>Phoenix.newがその問題を解決するのに役立つなら、その努力は大賛成。<br>でも、そうでなければ、Elixirのコミュニティリーダーたちの唯一の焦点は、ベースを増やすためのインセンティブとダイナミクスを作り出すことに絞るべきだね。<br>例えば、TypeScriptのMastraやPythonのPydanticAIと比べてみて。Elixirには何もない。<br>ここで批判したいわけじゃないんだ。単に残念なだけで、そうでなければこれに匹敵するものはないと思ってるから。" userName="mrcwinn" createdAt="2025/06/20 15:35:45" color="#38d3d3">}}




{{<matomeQuote body="どの言語も放棄されたパッケージの荒野だよ。つまり、何年もメンテナンスされてないものがものすごくたくさんあるってこと。それは全部マインドシェア次第だね。<br>サイズに対しては、Elixirはかなり頑張ってると思うな。" userName="uncircle" createdAt="2025/06/20 15:44:47" color="">}}




{{<matomeQuote body="ここ数週間、新しいプロトタイププロジェクトを組むためにLLMにどっぷり浸かってるんだ。<br>Zed（github copilot経由）のClaude Sonnet 3.7だけを使ってるんだけど、これが最高だよ。<br>たまにちょっと古風なことをやろうとすることもあるけど、特に大きな問題はないね。<br>LiveViewで新しい機能を丸ごと吐き出すのもすごく得意だよ。<br>全体的に見て、すごく生産的な体験だったし、少なくとも同じ規模のPythonやNextjsアプリケーションでの最近の作業と同等かそれ以上だね。<br>主に一般的でよく理解されてるパッケージを使ってるから有利だと思う。<br>あと、Phoenixプロジェクトの初期設定は自分でやったから、変な方向に脱線しようとしなかったのも良かった点かな。" userName="bluehatbrit" createdAt="2025/06/20 17:19:05" color="#ff5733">}}




{{<matomeQuote body="Theoって人が動画でNext.jsとPythonはLLMに強いって言ってたけど、モデルがちゃんと推論できんなら別にいけるんじゃね？" userName="zorrolisto" createdAt="2025/06/20 15:31:25" color="">}}




{{<matomeQuote body="Zedの20ドルプラン使ってる？ 月500プロンプトで足りる？ ZedとClaudeの20ドルプランどっちか迷ってて、Zedの方がコスパ良くね？" userName="indigodaddy" createdAt="2025/06/20 19:47:38" color="">}}




{{<matomeQuote body="Elixirってパッケージのメンテ悪すぎ。<br>すぐ開発始められるかって聞かれたら「無理」ってなること多いんだよね。公式ライブラリとか無いし。<br>Elixirは規模の割に上手くやってる、じゃなくて、規模が小さいからダメなんだよ。どうすりゃいいの？" userName="mrcwinn" createdAt="2025/06/20 17:30:00" color="#ff33a1">}}




{{<matomeQuote body="ZedのClaudeプランとClaude Code使ったけど全然違うわ。<br>Zedはポチって放置、後で見直す感じ。Claude Codeは一つずつ確認するから丁寧だけどめんどい。<br>Zedはコンテキストウィンドウ狭いのがネック、Claude Codeは5時間でリセットされる。<br>OpenAIのCodexも試してるよ。Zedが一番使いやすいけど、Burn modeは使うな、絶対だ！" userName="jostylr" createdAt="2025/06/21 13:10:04" color="#785bff">}}




{{<matomeQuote body="モデルは推論できないってんなら、LLM企業がサイト荒らしてるのにムカつくし、クロール用に偽コード流してポイズニングすれば？<br>モデルは推論できねーんだよ！<br>俺みたいにイライラしてるヤツらが、知らず知らずのうちに偽コードばらまいて、ポイズニングしてんのかもな。" userName="dingnuts" createdAt="2025/06/20 15:48:55" color="">}}




{{<matomeQuote body="Elixirのエコシステムでメンテされてないとか、足りないパッケージって具体的に何？ 教えて欲しいんだけど。" userName="prophesi" createdAt="2025/06/20 19:05:11" color="">}}




{{<matomeQuote body="ClaudeがElixir、特にLiveViewのフルスタックアプリ得意って変なネタだろ。<br>ClaudeはElixirを壊すんだよ。" userName="bad_haircut72" createdAt="2025/06/20 16:34:16" color="">}}




{{<matomeQuote body="Claude CodeってPhoenixとかLiveViewにめちゃくちゃいいよ。<br>俺が知らなかったElixirの新しいテクニックとか教えてくれるし。" userName="heeton" createdAt="2025/06/20 16:44:09" color="#38d3d3">}}




{{<matomeQuote body="YouTubeにClaude CodeとTidewave.aiのElixir/Rails用MCP使って、Cursorでコード一切書かずにLive pollingアプリ作った動画があるよ。<br>2時間で全部見れる。" userName="rramon" createdAt="2025/06/20 15:37:04" color="#ff33a1">}}




{{<matomeQuote body="LLMがうまくElixir書けないのが、今一番のElixirの売りかもね笑。" userName="acedTrex" createdAt="2025/06/20 15:51:27" color="">}}




{{<matomeQuote body="原理的にはLLMはイミュータブル言語の方が得意なはずだよ。遠い関数呼び出しで値が変わる心配がないからね。" userName="throwawaymaths" createdAt="2025/06/20 15:26:37" color="">}}




{{<matomeQuote body="経験上、Elixirもその端っこにいると思うよ。GGPが6ヶ月更新ないパッケージを”メンテされてない”とか”死んでる”って思うのは、JavaScript界隈出身だからかな？あそこは何でも…ねぇ？" userName="spiderice" createdAt="2025/06/20 16:20:10" color="">}}




{{<matomeQuote body="こういうこと言うの変だし、よく見るんだよね。ライブラリは2週間ごとに更新しないとダメって思わされてるの最悪だわ。バージョン番号上げただけで、もう完成してるライブラリより優れてると思うの？そういう風に考える人がいるなんて、マジで信じられない。" userName="mervz" createdAt="2025/06/20 21:12:04" color="">}}




{{<matomeQuote body="でもモデルはツールを実行できるから、コードを実行して、期待した出力が得られなかったら、その悪いコードを学習データから除外するんじゃないの？" userName="fragmede" createdAt="2025/06/20 15:51:49" color="">}}




{{<matomeQuote body="無料プランでGitHub Copilot経由で使ってるよ。仕事だから会社が払ってるしね。<br>その前に小さいプロジェクトやった時は、Zed経由で無料枠の50回制限に9割くらいで達したんだ。簡単なファイル共有アプリだったんだけど、まともなUIとかS3連携とか作ってくれた。少し手を入れる必要はあったけど、50回のプロンプトでどこまでできたか驚いたよ。<br>制限の計算方法よく分かんないけどね。多分実際はもっとたくさんプロンプト打ったと思う。<br>500回/月でも、LLMに全部任せようとしたら物足りないかも。でも、個人的に金を払うの検討してるLLM製品はこれが初めて。Zedとの連携が良いんだよね、Claudeより。コード変更のハイライトとかすごく良いし。<br>ちょっと長くなっちゃった、ごめんね！" userName="bluehatbrit" createdAt="2025/06/20 20:25:32" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これ？https://www.youtube.com/live/V2b6QCPgFTk" userName="rahimnathwani" createdAt="2025/06/20 17:30:27" color="">}}




{{<matomeQuote body="経験上、LLMが苦手なのはイミュータブルじゃなくて関数型の部分だよ。どんなLLMだってイミュータブルなC#は書ける、学習データが山ほどあるからね。" userName="bevr1337" createdAt="2025/06/20 15:31:46" color="">}}




{{<matomeQuote body="Elixirでも同じだよ。”メンテされてない”パッケージでも結構動くんだよね。" userName="arrowsmith" createdAt="2025/06/20 16:16:07" color="">}}




{{<matomeQuote body="全然初心者だけど興味ある人向けの、良い始め方ってある？" userName="ferfumarma" createdAt="2025/06/21 14:28:03" color="">}}




{{<matomeQuote body="Claude 3.5はElixir/Phoenixのコードをすごく上手に作るよ。3.7はあんまり試してないけど、これからもっと良くなると思うな。" userName="pawelduda" createdAt="2025/06/20 16:46:59" color="#45d325">}}




{{<matomeQuote body="Ruby開発者だったことないでしょ。”このライブラリ、8日間更新されてないけど、まだメンテされてるの？”って感じなんだよ。" userName="sodapopcan" createdAt="2025/06/21 20:31:24" color="#38d3d3">}}




{{<matomeQuote body="どうでもいいことに時間とエネルギーを浪費したから、他の人が何に集中するかはあんまり批判できないけど、コミュニティリーダーが積極的に「反労働者」的なツールを作るのは本当に嫌な気分だよ。Fly.ioが軍隊向けの兵器システムを作り始めたら、もっと葛藤するだろうね。彼らのリーダーの考え方からすると、それも驚きじゃないだろうけど。" userName="krainboltgreene" createdAt="2025/06/20 16:24:05" color="#45d325">}}




{{<matomeQuote body="Chrisか僕が「反労働者」と思ってたら、これに取り組んでないよ。彼は10年以上Phoenixで開発者の人生を良くしてきた。僕の経験は違うかも。まだ作られてないソフトは山ほどある。LLMで早く作れると、僕は有能になる。今のところ、同僚の仕事を奪ってないし、彼らも有能になった。1年前より早く良いツールを作れる。<br>自動化が人生を混乱させるのはわかる。スキルの価値を下げる面もある。でも僕の経験では、開発者向け自動化は他のスキルの価値も上げたよ。作り手のためのツールを作るのは「反労働者」じゃないと思う。" userName="mrkurt" createdAt="2025/06/20 17:20:11" color="#45d325">}}




{{<matomeQuote body="＞まだ作られていない、人々の人生をほんの少しでも良くするソフトウェアは膨大にある。存在すべきものの99.999％はまだない。<br>＞自動化が人々の人生を混乱させる。<br>君は自動化と、こういう会社が目指すものの違いを知ってるでしょ。彼らが労働者の生産性を上げる織機じゃなくて、労働者を置き換えて二度と賃金を払わなくて済むようにしたいんだって分かってるはずだよ。" userName="krainboltgreene" createdAt="2025/06/20 17:52:07" color="#45d325">}}




{{<matomeQuote body="労働者に仕事を与えて福祉を上げる代わりに、別にお金を使うってことか。誰もが薄々感じてた本音を、はっきり言っちゃってるね。" userName="tptacek" createdAt="2025/06/20 18:07:44" color="">}}




{{<matomeQuote body="まさにその通り！ ソフトがいっぱい作られるほど、ソフトへの需要や作れる種類も増えるんだよ。これはまさに、ポジティブサム（プラスの合計）で成長を考えるか、希少性や現状維持で考えるかの違いだね。" userName="jonator" createdAt="2025/06/20 17:45:34" color="">}}




{{<matomeQuote body="そうかもね。でも、お金持ちにとってはゼロサム（合計ゼロ）なんだよ。 バイデン政権の時に一番低い賃金の人の給料が上がったら、雇い主たちはもう発狂してたもんね。" userName="hooverd" createdAt="2025/06/22 05:56:34" color="">}}




{{<matomeQuote body="AIが労働者の敵だって考えるのと同じ理屈なら、ソフト全部も労働者の敵だって考えることになるはずだよね。" userName="yunwal" createdAt="2025/06/20 17:52:19" color="">}}




{{<matomeQuote body="あなたが反論してるその主張（多分コメント4のこと）は、私が今の仕事選んだのが正解だったか迷うくらい響いたんだ。だから、どこがおかしいと思うのか、詳しく説明してほしいな。それだけの価値はあるはずだよ。" userName="mwcampbell" createdAt="2025/06/20 21:52:00" color="">}}




{{<matomeQuote body="あなたに同意したい気持ちはあるんだ。社会主義者だしね。でも、この点（AIとソフト全体の話）について、誠実な反論を聞かせてほしいな。ソフトがいろんな仕事（タイピストとかハリウッドのモデルメーカーとか）を自動化してきたのは明らかだよね。今違うのは、私たちソフトを作る側の仕事が危ないってことだ。これはちょっと大げさかもだけど、ある程度は本当。自分の仕事が危なくなって初めて感じ方が違うのは分かるよ。AIには悪い面がいっぱいあるだろうけど、それがコメント4の人の指摘を否定する理由にはならないんじゃない？" userName="revenant718" createdAt="2025/06/23 17:28:55" color="#ff5733">}}




{{<matomeQuote body="いくつか言いたい。まず、タイピストや特撮モデルメーカーは今もいる。次に、プログラマーは自動化で仕事がなくなる心配はない。そして、今のAIサービスは全然続かないと思う。この記事の元の考えは、プログラマーの作業を減らして、空いた時間でもっといろんな仕事をしようってことだよね。それには同意できる！ でもさ、プログラマーをもっと増やせばいいんじゃない？ なんでしないんだ？ 私の街には1万8千人もホームレスがいるのに、一人当たりの仕事を楽にする前に、彼らにスキルを学ぶチャンスを与えるべきじゃないのか？<br>あと、生成AIは労働者を全部なくすために作られたものだ。そこに流れるお金は、労働者階級を消し去りたい億万長者たちの懐に入る。俺が職場で、同僚の仕事を助けるツールを作る時は、その人をクビにしようとは思わないけどね。" userName="krainboltgreene" createdAt="2025/06/24 05:20:10" color="#785bff">}}




{{<matomeQuote body="退屈で面倒な作業は自動化して、人間は戦略とか方向性、デザイン、GTMみたいな難しい問題に集中できるようになるって考えればいいんじゃないかな。人間が自分でコードをカタカタ打つ時代はもうすぐ終わりだよ。それは20世紀にタイプライターで仕事してた秘書たちの時代が終わったのに似てるね。" userName="jonator" createdAt="2025/06/20 17:44:25" color="">}}




{{<matomeQuote body="（コメント9への皮肉）労働者をクビにするのが目標の資本家と働く中で、業界の人が自分を納得させるためにどんな話（言い訳）をしてるか、俺は知ってるよ。「タイプライターの秘書」みたいな、ツールが進化してきた歴史に対する君の浅い理解は、将来ちょっとした慰めになるだろうね。" userName="krainboltgreene" createdAt="2025/06/20 17:55:04" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
