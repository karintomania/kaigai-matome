+++
date = '2025-06-28T00:00:00'
months = '2025/06'
draft = false
title = '意外な展開 MCPが万能プラグインシステムに'
tags = ["プラグインシステム", "相互運用性", "AI", "API", "自動化"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> 意外な展開 MCPが万能プラグインシステムに

引用元：[https://news.ycombinator.com/item?id=44404905](https://news.ycombinator.com/item?id=44404905)




{{<matomeQuote body="記事に同感だよ。著者がMCPを（誤）用してるのが面白いね。この記事で言う”事故”ってのは、新しいことじゃなくて、AI Agentブームのおかげで相互運用性が流行ってベンダーロックインがダサくなったことだと思うんだ。いつまで続くか分かんないけど、マジ感謝してるよ。" userName="phh" createdAt="2025/06/28 15:14:09" color="#45d325">}}




{{<matomeQuote body="確かにHypeだよね。でもさ、AI Agentが登場して相互運用性の必要性が高まったと思うんだ。APIがなくても安定してたデスクトップユーザーと違って、Watt時間で課金されるAIアシスタントはAPIが必要だもん。APIブームに乗ってた俺たちから見ると、世の中がやっと追いついた感じだよ。長く続けばいいけど、どうなるかなぁ。" userName="sshine" createdAt="2025/06/28 15:22:28" color="#45d325">}}




{{<matomeQuote body="Web 2.0とか、semantic webとか、folksonomyとか、mash-upとか、情報サイロの終わりとか、HTTP APIが世界を変えるとか、覚えてる？誰かいる？（笑）" userName="bitwize" createdAt="2025/06/28 15:40:24" color="">}}




{{<matomeQuote body="残念ながら、Slackのこれ -＞ [0] みたいに、また近視眼的なロックインが出てきそうで怖いね。Slackからの反論探したけど、ネットが遅くて見つかんなかった。Slack関係者いたら意見聞かせてほしいな。長いことSlack使い続けるべきってCFOを説得してきたのに、マジでやりにくくさせてるよ。<br>[0]: https://www.reuters.com/business/salesforce-blocks-ai-rivals..." userName="mh-" createdAt="2025/06/28 15:53:47" color="#45d325">}}




{{<matomeQuote body="一番のメリットは、相互運用性が流行ったとか、接続が簡単になったことじゃないと思うな。LLM自体がツールを使いこなせることだよ。バックエンドだけ作れば、フロントエンドはもうAIがやってくれる、みたいな感じ。俺が使った感じだと、ClaudeとかGeminiはツールを使えるから、こっちはゴールを伝えるだけでいいんだ。これはマジで革命的だよ。前は全部ステップを指示しなきゃいけなかったもん。動的なことに対して決まったプログラム書くのは大変だけど、LLMは柔軟に対応できるからね。" userName="visarga" createdAt="2025/06/28 16:50:26" color="#785bff">}}




{{<matomeQuote body="俺たちを困らせてたのは、フロントエンドを作るんじゃなくて、proprietaryなデータベースとかインターフェースの中に閉じ込められてたデータだったんだよ。API keyとかbot checkとかcaptchaとかscraper保護で守られてたんだ。でも今はさ、IFTTT向けのMCPインテグレーターがあれば、前に約束されてたWebが戻ってくるかもしれないね。まあ、しばらくの間だけでもさ。" userName="freeone3000" createdAt="2025/06/28 19:20:45" color="#ff5c5c">}}




{{<matomeQuote body="「スペルチェック？ MCPサーバーで。」「タスク10個終わったらコーヒー注文？ MCPサーバーで。」みたいなtrivialなことまでLLM経由でやるわけ？しかも金払って？高いオーバーヘッドとコストかけてまで？それどうなの？って思うんだけど。" userName="Animats" createdAt="2025/06/28 18:14:40" color="">}}




{{<matomeQuote body="記事が言いたいのは、LLMは必須じゃないってことだよ。MCPはあくまで、ツールを使うものがツールにアクセスするための標準的なやり方なんだ。LLMもツールを使えるけど、人間だって使えるんだから。" userName="notatoad" createdAt="2025/06/28 18:21:17" color="">}}




{{<matomeQuote body="APIがなかったアプリがMCPでAPIを作ったってのは見たことないなぁ。俺が見たMCPサーバーは、全部もうプログラムでアクセスできるものだったよ。" userName="stavros" createdAt="2025/06/28 20:16:00" color="">}}




{{<matomeQuote body="MCPでCRMの連携を抽象化すれば、後でベンダーを変えたり追加したりする時に便利かも？って考えてる。DynamicsとかSalesforceとかHubspotとか、個別にAPI書くより良いかな？" userName="bigiain" createdAt="2025/06/29 00:46:31" color="#ff5733">}}




{{<matomeQuote body="なんかZapierみたいな「もしこうならこう」って繋ぎ役プロバイダーみたいだね。" userName="lazyasciiart" createdAt="2025/06/28 20:19:07" color="">}}




{{<matomeQuote body="私か記事かのどっちかがMCPのことちゃんと分かってないかもだけど、LLMなしでどうやってMCP使うの？結構人間の言葉がベースになってるみたいだけど。" userName="stavros" createdAt="2025/06/29 00:53:54" color="#ff5733">}}




{{<matomeQuote body="細かいことだけど、ZapierはIFTTTタイプだよ。<br>IFTTTは2010年発表で2011年開始、Zapierは2011年初提案で2012年ベータ開始だよ。" userName="Mtinie" createdAt="2025/06/28 22:26:03" color="">}}




{{<matomeQuote body="あんたの言ってること分かんないな。バズワードで終わったのも、無理だったのも、Webを完全に変えたのもある。単に未来は分からないって言ってるだけ？" userName="karaterobot" createdAt="2025/06/28 15:54:29" color="">}}




{{<matomeQuote body="なんかWinsockの頃を思い出すな〜。昔Windowsのネットは全部独自だったんだけど、ベンダーが集まって共通の標準を作ったんだ。みんなにメリットがあったよ。URLはこれね→https://en.wikipedia.org/wiki/Winsock" userName="alexpotato" createdAt="2025/06/28 22:55:12" color="#ff33a1">}}




{{<matomeQuote body="てことは記事の言いたいことって、結局APIはAPIで、何でもAPI呼べるってこと？" userName="therein" createdAt="2025/06/28 18:38:31" color="">}}




{{<matomeQuote body="これ知らなかった！データへのAPIアクセス制限とか近視眼的すぎ。社員のチャットはうちの会社のデータなんだから好きに使わせろって話。それができないならSlackとは付き合いきれないね。「Microsoft Teamsにしろ！」って言われてもエンジニアのためにSlackにしてたけど、データ使えないならもう無理。損してもデータを尊重してくれる別のツールに乗り換えるわ。Slack Gridの3年契約に縛られなくてマジ良かったよ…。" userName="jetsnoc" createdAt="2025/06/29 03:35:55" color="#ff33a1">}}




{{<matomeQuote body="AI学習対策で多くのAPIがアクセス制限してたのに、これが出るとか皮肉だね！API制限自体はもっと前からだけど。俺も、この新しいオープン化の流れが hype だけで終わったら続かないんじゃないか、ってちょっと疑ってるよ。" userName="adregan" createdAt="2025/06/28 15:49:56" color="">}}




{{<matomeQuote body="いや、あれはBattlestar Galacticaのセリフがぴったりだよ。「これらすべては以前にも起こった、そしてこれらすべては再び起こるだろう」。つまり製品間の相互接続とかオープンAPIアクセスのブームとその後の破綻のこと。俺はmillenial世代で、Web 2.0のAPI爆発で希望を持ったけど、年上ならもっと前に夢破れてるかもね。もし君が若くてMCPにワクワクしてるなら、ナプキン（涙拭くため）のまとめ買い割引について連絡しておいで。" userName="klabb3" createdAt="2025/06/28 16:44:44" color="#785bff">}}




{{<matomeQuote body="Trumpet Winsockか！懐かしいね:)" userName="ggambetta" createdAt="2025/06/29 07:51:31" color="">}}




{{<matomeQuote body="どれだけ続くか分かんないけど、MCP経由でAPIにアクセスさせるサブスクをまだ誰もやってないのが不思議。有料API自体は新しいことじゃないけど、”企業向け有料MCPアクセス”はどこも狙ってるはず。そしたらオープンじゃなくなるだろうね。" userName="iLoveOncall" createdAt="2025/06/28 15:18:57" color="#45d325">}}




{{<matomeQuote body="セマンティックWebのこと、もう誰も覚えてないよね。" userName="aorloff" createdAt="2025/06/28 16:22:36" color="">}}




{{<matomeQuote body="で... MCPってどうやってプロプライエタリなDBとかインターフェースの裏にあるデータを魔法みたいにアンロックすんの？" userName="troupo" createdAt="2025/06/29 08:13:07" color="">}}




{{<matomeQuote body="全部今周りにあるものだよね。ロッキングとか相互運用性の現状は、それぞれの流行時よりずっと進んでるよ。MCPは流行、長続きしない技術。でもLLMエージェントにデータを突っ込むのは違うと思うな。企業にとってメリットが大きすぎるから、ベンダーがデータをロックするのを許さないはず。" userName="kasey_junk" createdAt="2025/06/28 16:06:33" color="#38d3d3">}}




{{<matomeQuote body="まだAPIがないアプリって山ほどあるけど、「自動化できたらな」って思うよね。前はAPI追加はニッチ機能だったけど、今はAIアシスタントにつなぎたい人が増えるから優先されるかも。初期のMCPは既存API向けだろうけどね。AppleはAppleScriptがあるのにSiriやApple Intelligenceに繋げてないみたい。" userName="tveita" createdAt="2025/06/28 20:56:23" color="#ff33a1">}}




{{<matomeQuote body="なんか革新者のジレンマに対する反応っぽいね。新しい技術が出ても、適応するより囲い込みや壁を作るっていう。" userName="SoftTalker" createdAt="2025/06/28 19:27:56" color="">}}




{{<matomeQuote body="YouTubeとかSNSでhypeマーケティングの波が来てると思う。バズワード満載の投稿で製品をプロモーションしたり、自社MCPを推したり。教育っぽく見えるけど、実質はhypeに乗ったセールスピッチって感じ。人生変わったとか言ってるPMも見たけど、なんかhype作ってサブスク売るための組織的な push っぽいね。" userName="pyman" createdAt="2025/06/29 10:06:04" color="#ff5733">}}




{{<matomeQuote body="MCP自体はLLMを使わなくてもいいんだよ。この用途ではToolがカギ。Toolは操作のこと、例えば検索とか。Filesystemの例のMCPサーバー見てみて - https://github.com/modelcontextprotocol/servers/blob/main/sr.... Toolがたくさんあるよ。LLMはMCPでToolを知って使うけど、エンジニアなら必要なTool（search_filesとか）を直接呼べばいいんだ。" userName="asteroidburger" createdAt="2025/06/29 09:35:04" color="#38d3d3">}}




{{<matomeQuote body="AIエージェントやMCPがうまくいく理由の一つは、AIが実行時にどのプラグインを使うかプログラム的に判断できるからだよね。AIなしで、どうやってホストアプリはMCPサーバーの機能を呼び出すタイミングを知るんだろう？" userName="OkGoDoIt" createdAt="2025/06/28 21:06:33" color="">}}




{{<matomeQuote body="著者のMCP万能説に水を差したくはないんだけど、これって結局API全般のアイデアと同じじゃない？MCPをRESTに置き換えても記事の内容は変わらない気がするし、OS APIやPOSIX、Unix pipesなんかとも似てる。MCPが確かにそれらよりずっとシンプルで普遍的になったとしても、新しいことをするたびに抽象化を再構築するんじゃなくて、優れた基本的な抽象化の上にシンプルなソフトウェアを構築するのが解決策なんじゃないかな。" userName="jadar" createdAt="2025/06/28 14:38:53" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="MCPはRESTとは違うよ。君の比較で言うなら、MCPは実行時にRESTエンドポイントを発見したり、ユーザーが使うべきRESTエンドポイントを設定したりするためのプロトコルに近いかな。例えば、Spotifyの曲を再生できるアプリを作ったとするじゃん。Spotify APIを叩くよね。でも、アプリ公開後にSonofmからも曲を再生できるようにしたいってなったら、コードを開いてif文を書いてSonofm APIをハードコードして、新しいバージョンをリリースして、更新通知を出さないといけない。MCPはこれを拡張可能にするためのものなんだ。ハードコーディングする代わりに、実行時に設定できるようにするんだよ。" userName="Jonovono" createdAt="2025/06/28 15:12:33" color="#38d3d3">}}




{{<matomeQuote body="MCPとRESTの主な違いは、MCPが最初から自己記述的だってこと。RESTはOpenAPIがあるけど、後付けだし、標準化されてないことが多いんだよね。MCPはまず記述するのが最初だけど、RESTはオプションで省略されがちだよ。" userName="kvdveer" createdAt="2025/06/28 14:46:09" color="#38d3d3">}}




{{<matomeQuote body="それってHATEOASが目指してたことじゃなかったっけ？<br>https://en.wikipedia.org/wiki/HATEOAS" userName="layer8" createdAt="2025/06/28 16:15:51" color="">}}




{{<matomeQuote body="え？HATEOASってそうだった？HATEOASはハイパーメディアに関することで、人間がレンダリングされたハイパーメディアを見て操作するのが前提だと思うけど。MCPはマシン同士の通信みたいだけど。" userName="mort96" createdAt="2025/06/28 17:59:40" color="">}}




{{<matomeQuote body="僕の理解では、HATEOASの発見できる部分はマシン同士のためだったはずだよ。実際、RESTのほとんどは非常に単純な状況を除いてマシン同士の通信だよね。ハイパーメディアが人間の介入を意味するっていう君の点がよく分からないな。もう少し詳しく説明してくれる？" userName="NomDePlum" createdAt="2025/06/28 18:27:01" color="">}}




{{<matomeQuote body="MCPとRESTの主な違いは`list-tools`だよ。REST APIにはそれをやる方法が5、6種類あるけど、”ドキュメントサイトから読む”、HATEOAS、APIの一部としてエンドポイントで動くOASとかね。MCPにはエンドポイントをリストする方法が1つだけなんだ。" userName="gdecaso" createdAt="2025/06/28 18:53:12" color="#ff5733">}}




{{<matomeQuote body="HATEOASのHは”hypermedia”のことだよ。ハイパーメディアはハイパーメディアコントロールを含むドキュメントの一種で、ハイパーメディアクライアントがユーザーに提示して操作させるんだ。ユーザーがどのコントロールを操作するか決めるんだよ。例えば、このコメントを書いている時、HNサーバーは君のコメント、テキストエリア、返信を投稿するボタンを含むハイパーメディアドキュメントをくれた。そして、人間の僕が入力内容を決めてボタンを押すんだ。機械は単独ではそれができない（LLMは可能性あるけどね）。だから、純粋なマシン同士の相互作用のためのJSON APIは、ハイパーメディアコントロールがないため、HATEOAS（そしてREST）とは見なせないんだよ。<br>もっと詳しく知りたいならここを読んでみて。<br>https://htmx.org/essays/how-did-rest-come-to-mean-the-opposi...<br>https://htmx.org/essays/hateoas/" userName="renerick" createdAt="2025/06/28 19:56:36" color="#45d325">}}




{{<matomeQuote body="それって僕の理解とは違うな。僕の理解では、ハイパーメディアって、レスポンスに埋め込まれたリンクのことだよ。機械プログラムがパースして使えるように構造化されてるんだ。人間の介入が必要だとは思わないな、もちろんそうすることもできるけど。" userName="NomDePlum" createdAt="2025/06/28 21:39:34" color="">}}




{{<matomeQuote body="HTMLはハイパーメディア形式で、人間が見るために主に設計されてるんだ。機械が何かを解析して使うってのは広すぎる話で、ブラウザはHTMLを解析して人間に表示するわけ。アクション（ハイパーメディアコントロール）を選ばせるためにね。あなたの理解は間違ってるよ、上のリンクが説明してくれるはず。HATEOAS（とそれを含むREST）は、使う側が判断しないと意味ないんだ（詳しくはこれを見て→ https://intercoolerjs.org/2016/05/08/hatoeas-is-for-humans.h...）。MCPにハイパーメディアコントロールを追加するのは面白いかもしれないね、エージェントみたいなMCP APIが自己組織化するかどうか見てみたいよ→ https://x.com/htmx_org/status/1938250320817361063" userName="recursivedoubts" createdAt="2025/06/29 00:42:23" color="">}}




{{<matomeQuote body="でもさ、その説明の仕方、LLM以外には全く役に立たないじゃん。もっと形式化された記述言語の方がずっと良かったのに。" userName="light_hue_1" createdAt="2025/06/28 14:47:14" color="">}}




{{<matomeQuote body="俺、機械にあのリンクを使わせるプログラム組んだことあるから、機械でも使えるって結構自信あるんだよね。HTMLのバリエーションってのは初めて聞いたけど、そのリンク見てみるよ。" userName="NomDePlum" createdAt="2025/06/29 01:08:38" color="">}}




{{<matomeQuote body="WSDLとかXML APIは1998年からあるんだぜ。OpenAPI、OData、gRPC、GraphQLとかもね。きっと他にもいくつか抜けてるだろうけど…。" userName="gavinray" createdAt="2025/06/28 19:02:23" color="">}}




{{<matomeQuote body="SOAPも自己記述型じゃなかったっけ？" userName="Szpadel" createdAt="2025/06/28 15:22:48" color="">}}




{{<matomeQuote body="個人的には、MCPで唯一新しいのは、プロトコルの一部としてスキーマを提供することが必須って点だけだと思うんだよね。リクエストとかレスポンスのラッパーの形が全部同じなのは確かに便利で、ライブラリで静的型にラップしやすくなるけど、APIではみんな既にやってたことだし、形が統一されてなかっただけだからさ。でも、プロトコルと一緒にスキーマが必要っていうのと、AIモデルが簡単に使えるっていうニンジンが十分な推進力になったんだろうね。" userName="caust1c" createdAt="2025/06/28 15:48:53" color="#45d325">}}




{{<matomeQuote body="「自己記述型」っていうのは、エンドポイントのリストとか人間（やLLM）が読める説明が手に入るとかって意味？ それとも非AIクライアントでも使える実際のスキーマを提供してるってこと？ たとえ前者だけでも、LLMにスキーマ生成させられるし、huge step forward だと思うよ。少なくとも、みんながベースプロトコルとかコマンド名、引数、結果の渡し方を標準化してるだけでも、arbitrary な Rest+JSON や HTTP API に比べたら既に huge step forward だね。" userName="xg15" createdAt="2025/06/28 15:31:52" color="#45d325">}}




{{<matomeQuote body="唯一新しい点がプロトコルの一部としてスキーマを提供しなきゃいけないって？それって OpenAPI とか gRPC、SOAP、CORBA とかもそうじゃないの？" userName="marcosdumay" createdAt="2025/06/28 16:34:04" color="">}}




{{<matomeQuote body="ってことは…これって結局 OpenAPI なの？" userName="nikolayasdf123" createdAt="2025/06/28 15:29:49" color="">}}




{{<matomeQuote body="説明には、入力と出力の JSON スキーマが含まれてるよ。" userName="0x696C6961" createdAt="2025/06/28 14:56:41" color="">}}




{{<matomeQuote body="入力だけだよ、出力はないんだよね。仕様はここ→https://modelcontextprotocol.io/specification/2025-03-26/ser..." userName="jcheng" createdAt="2025/06/28 23:08:23" color="">}}




{{<matomeQuote body="それぞれのツールには、人間が読める説明と、関数を呼ぶのに必要なパラメータのJSONスキーマがついてくるんだよ。" userName="Spivak" createdAt="2025/06/28 16:27:13" color="#785bff">}}




{{<matomeQuote body="”list-tools”なんて、そういう低レベルなプロトコルにどこにあるっていうのさ？" userName="doug_durham" createdAt="2025/06/28 20:29:00" color="">}}




{{<matomeQuote body="正直言うと、そうだね。でもMCPにはAPIの機能をリストする超シンプルな’reflection’エンドポイントがあるんだ。gRPCとかOpenAPIとかでも昔からオプションであったけど、あれはおもちゃみたいなもんだったじゃん。MCPがそれを中心にしたのが、もしかしたらすごく大きな違いになるのかもね。" userName="spenczar5" createdAt="2025/06/28 15:03:53" color="#ff33a1">}}




{{<matomeQuote body="＞ MCPとRESTの大きな違いは`list-tools`だよ。＞ REST APIにはそれをやる方法が5つか6つあるじゃん。<br>LLM向けの、AnthropicのMCPとはちょっと違う標準を、誰も今後出さないとでも思ってるわけ？" userName="OJFord" createdAt="2025/06/28 19:35:50" color="#785bff">}}




{{<matomeQuote body="そして、’reflection’付きのgRPCもそうなんじゃないの？そうだよね？" userName="souldeux" createdAt="2025/06/28 15:31:18" color="">}}




{{<matomeQuote body="君がプログラムしたマシンは、レスポンスの中にあった新しくて斬新なリンクとかアクションに、どう反応したの？" userName="recursivedoubts" createdAt="2025/06/29 01:39:02" color="#45d325">}}




{{<matomeQuote body="そして、’reflection’付きのGQLもそうなの？" userName="hansonkd" createdAt="2025/06/28 16:39:47" color="">}}




{{<matomeQuote body="最新バージョン見てないでしょ。出力スキーマも追加されたんだよ。" userName="0x696C6961" createdAt="2025/07/01 23:28:56" color="#ff5733">}}




{{<matomeQuote body="segment.comみたいな感じだけど、フロントエンドにライブラリを追加するんじゃなくて、APIを呼び出すためのやつ、って感じだね。" userName="jaredsohn" createdAt="2025/06/28 17:27:57" color="">}}




{{<matomeQuote body="昔の職場でgRPC reflectionでAPI探るのが超楽しかったんだよねー。<br>golangでgRPC触ったのも最高だったわ。" userName="spudlyo" createdAt="2025/06/28 15:16:15" color="">}}




{{<matomeQuote body="LLMにMCPの説明を解釈させないとこれ機能しないじゃん。<br>この記事のさ、LLMなしでMCP使うってアイデアはさ、要は昔ながらのAPIと一緒じゃん。" userName="Too" createdAt="2025/06/29 06:10:58" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="なんかさ、MCPすごい！って言う人は多いけど、実際クールなもの作ったって話聞かないよね。ブロックチェーン hype 思い出すわ。<br>AIがもっと賢くなったら、MCPみたいな中間層いらなくなるんじゃない？2年もすればAIがOpenAPIとかのドキュメントを直接読めるようになると思うけどなー。" userName="jampa" createdAt="2025/06/28 14:57:59" color="#ff33a1">}}




{{<matomeQuote body="それブロックチェーン hype とは全然違うって！<br>疑う前に自分でちょっと触ってみた方がいいよ。<br>今のさ、会話/音声AIとLLM、それにMCPやtools/functionsで色んなAPIやデータ繋ぐ感じ、マジで新しい時代って気がするんだ。<br>まだ完璧じゃないけど、多くの場面で十分使えるし、今後のアプリ開発を大きく変えると思うな。" userName="mtkd" createdAt="2025/06/28 16:20:06" color="#ff5733">}}




{{<matomeQuote body="AIなしのMCPはただのAPIだろ？<br>AIとAPIの間にあるMCPなんて、もうすでに無駄なレイヤーだよ。<br>GenAIすらないのにそれ使うとか、シンプルにバカげてる。<br>MCPの唯一のマシな点は、ベンダーがAPIを公開するようになったことくらいだけど、なら直接そのAPI使えばいいじゃん。" userName="iLoveOncall" createdAt="2025/06/28 15:03:16" color="#ff33a1">}}




{{<matomeQuote body="それだよ！それがめっちゃ重要なポイントなんだって！<br>今まで無かったAPIが使えるようになったんだ。<br>今はさ、アプリ開発者が個人でも使える、公開されてて使いやすい、フル機能のAPIを用意することが奨励されてるんだよ。<br>エンタープライズ契約とか、厳しい利用制限とかの壁がなくなってるってこと。" userName="ricardobeat" createdAt="2025/06/28 15:05:18" color="#ff5c5c">}}




{{<matomeQuote body="たぶんベテラン開発者たちはさ、AIの幻覚とか予測できないとことか、そういうのが心配なんだろうね。<br>前見たエンタープライズ向けエージェントのデモとか、セキュリティとかコンプライアンス的に現実離れしてたし。<br>でもMCPはそこを解決するんだよ。企業は自分の「 walled garden 」でコントロールしつつ、LLMとか音声AIのメリットを得られる。<br>legacy systems はデータや機能を提供する側になって、既存アプリをラップする形になるんだ。<br>これ、前に聞いた「データ提供者」の話とは違う気がする。" userName="mtkd" createdAt="2025/06/28 17:06:16" color="#ff33a1">}}




{{<matomeQuote body="モデルがどれだけ優秀になってもさ、確実なツールとか現実世界の情報にアクセスできないと、やれることは限られるんだよ。<br>セキュリティもマジで重要でさ、本番環境でAIに好き勝手リクエストさせるなんて、マジでヤバいって。<br>MCPの hype はひどいと思うけど、それが解決しようとしてる問題は実際にあるんだ。<br>プロバイダーが機能をAPIとして公開するきっかけになるなら、それは開発者にとってめちゃくちゃ嬉しいことだよね。" userName="qsort" createdAt="2025/06/28 15:09:35" color="#ff5c5c">}}




{{<matomeQuote body="いや、それ間違いだよ。<br>Claude CodeならMCPなしでブラウザ操作もAPI連携もできるんだ。<br>1年以内にはAgent SDKがLLM APIの標準になるはずだよ。<br>MCPは限定的な用途になるし、ネイティブエージェントより性能も劣ると思うな。" userName="ramoz" createdAt="2025/06/29 00:22:06" color="#ff33a1">}}




{{<matomeQuote body="そうそう、MCPなくてもLLMエージェントは生まれただろうし、APIアクセスは必要だったよね。<br>仕事でもMCP前にAPI連携システム作ったけど、今もAPI使ってるよ。<br>MCPに技術的な価値はなくて、あるとしてもマーケティングだけだな。" userName="iLoveOncall" createdAt="2025/06/28 15:16:46" color="">}}




{{<matomeQuote body="「OpenAPIを見せる」って話だけど、クライアントがHTTP MCP使えればもうできるよ。<br>今のモデルはOpenAPI spec渡せば、何をすればいいかちゃんと分かるんだから。" userName="dghlsakjg" createdAt="2025/06/28 15:26:51" color="">}}




{{<matomeQuote body="この記事 https://www.stainless.com/blog/mcp-is-eating-the-world--and-... のまとめみたいだけど、MCP前もツール呼び出しや曖昧な標準はあったけど流行らなかったんだよね。普通のユーザーはOpenAPI specなんてダウンロードしたくないよ。そういえばAnthropicも新しい標準作ろうとしてるね https://www.anthropic.com/engineering/desktop-extensions。" userName="Maxious" createdAt="2025/06/28 15:27:22" color="#785bff">}}




{{<matomeQuote body="ソフトウェアの用途はね、精度がいるか（1）いらないか（2）だよ。<br>使う人も人間（a）か機械（b）に分かれるんだ。<br>LLMがすごいのは精度がいらなくて人間が使う（2a）場合。<br>精度が必須な1aとか1bに使おうとすると、マジでイライラすると思うよ。" userName="bwfan123" createdAt="2025/06/28 17:18:50" color="#45d325">}}




{{<matomeQuote body="普通の人はMCPなんて知らないし、使うこともないよ。<br>ChatGPTをWebかアプリで使うだけ。<br>MCPは技術者向けだよ。<br>あと、君が送ったリンクは新しい標準の話じゃないから、ちゃんと読んでみたら？" userName="iLoveOncall" createdAt="2025/06/28 22:07:19" color="">}}




{{<matomeQuote body="MCPってどうやって、君が言ってた問題（データアクセスとか、指示とデータの区別とか、幻覚とか）を解決するの？<br>もしかして、俺が見落としてる魔法みたいな要素でもあんの？" userName="ptx" createdAt="2025/06/28 18:37:46" color="">}}




{{<matomeQuote body="それにMCPは要らないよ。<br>ホストされてるSwaggerファイルにアクセスするだけで済むんだ。" userName="nikolayasdf123" createdAt="2025/06/28 15:32:20" color="">}}




{{<matomeQuote body="前はAPIが見つけにくかった会社が、MCPを使ったサービスを始めた例とかある？" userName="candiddevmike" createdAt="2025/06/28 15:42:54" color="">}}




{{<matomeQuote body="ブラウザ開いたり、UIデバッグしたり、サイト行ったり、結局全部同じこと言ってんだろ。<br>結局、根っこには決定論的なシステムがあるだけじゃん。" userName="anon7000" createdAt="2025/06/29 02:17:04" color="">}}




{{<matomeQuote body="どんなAPIも変換できるユニバーサルな「api＼firewall」がまだないなんて信じらんねーよ。<br>暗号通貨の時代にハック対策で絶対必要だったろ。<br>今度はユニバーサルMCP -＞ APIか。<br>LLMって汎用的なAPI呼び出しも覚えられないほどバカなの？って思っちゃうわ。" userName="beefnugs" createdAt="2025/06/28 21:28:02" color="">}}




{{<matomeQuote body="AtlassianのJiraとかのMCPサーバーに、個人でもOAuthで繋げるようになったのが良い例だよ。<br>前は組織経由でAPIキーが必要だったからね。<br>MCPのおかげで、個人ユーザーがクライアントからAPI使うのが普通になってきてるってこと。" userName="ricardobeat" createdAt="2025/06/29 20:13:02" color="#45d325">}}




{{<matomeQuote body="進化が速すぎ！<br>https://elevenlabs.io/<br>https://layercode.com/ (デモは https://x.com/uselayercode )<br>Geminiアプリのライブモードとか、AI Studioのストリームって使ったことある？" userName="mtkd" createdAt="2025/06/29 14:15:11" color="">}}




{{<matomeQuote body="俺の経験則だけど、モデル作ってる会社が出す hypeはだいたい本当だよ。<br>それ以外の連中は、かなり疑ってかかった方がいい。" userName="mindwok" createdAt="2025/06/29 07:35:15" color="">}}




{{<matomeQuote body="OG devsが幻覚とか見て「完璧なシステムに合わねー」って思ってるって話、変だね。<br>俺まだ25歳で、2018年に業界入ったけどさ。<br>「Agentが企業を変える」とか、low codeの hypeとそっくりじゃん。<br>AIが企業で失敗する理由も、low codeと同じで、人がmessyだからデータもmessyってことじゃない？" userName="moooo99" createdAt="2025/06/28 18:24:59" color="#ff5733">}}




{{<matomeQuote body="一般ユーザーはMCPサーバー使ってるなんて意識しないまま使うようになるだろうね。それがアプリの一部になるんだ。<br>音楽プレイヤーとかメールとかがChatGPTアプリで操作できる、なんて技術者以外にも広がるよ。" userName="int_19h" createdAt="2025/06/30 20:48:31" color="">}}




{{<matomeQuote body="「持ってなかったAPI」って、web 2.0の時代にあった、でもすぐ閉め出されたAPIと同じじゃない？<br>この動画見てみて: https://www.youtube.com/watch?v=6gmP4nk0EOE<br>プロトコルが普遍的になったとか、AI＼LLMのおかげで今は開放的なのかも。<br>でも、もし同じ流れなら、これもすぐenshittified（クソ化）されるんじゃないか？" userName="drivers99" createdAt="2025/06/28 15:24:56" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
