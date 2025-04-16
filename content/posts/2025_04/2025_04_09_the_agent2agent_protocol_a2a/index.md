+++
date = '2025-04-09T00:00:00'
months = '2025/04'
draft = false
title = '【速報】Agent2Agentプロトコル(A2A)爆誕！LLM連携の新たな標準となるか？WSDLの再来との声も'
tags = ["LLM", "プロトコル", "API", "Google", "エージェント"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> 【速報】Agent2Agentプロトコル(A2A)爆誕！LLM連携の新たな標準となるか？WSDLの再来との声も

引用元：[https://news.ycombinator.com/item?id=43631381](https://news.ycombinator.com/item?id=43631381)

{{<matomeQuote body="A2AとかMCPのプロトコルが実際どんなんなのかマジで見えなくてイライラするわー。LLMが出力した内容でどうやって呼び出すかとか、どんなJSONがやり取りされるかの簡単な例が欲しいだけなのに…。自分でチートシート作るしかないかー。<br>あと、最後の推薦文でなんか余計に不安になったんだけど。" userName="zellyn" createdAt="2025-04-09T13:19:32" color="">}}

{{<matomeQuote body="マジそれな。JSONがどうやってやり取りされてるか知りたくてめっちゃ苦労した。<br>結局Charles使ってネットワークリクエスト全部キャプチャしたんだよね。まだブログ記事書き終わってないけど、もしJSON見たかったらここにあるよ。<br>https://www.catiemcp.com/blog/mcp-transport-layer/" userName="mlenhard" createdAt="2025-04-09T15:22:47" color="#ff33a1">}}

{{<matomeQuote body="ブログ記事のJSON、もうちょい見やすくしてくれたら嬉しいな。<br>fwiw、docs見ればメッセージ構造は結構わかりやすいと思ったけど。<br>https://modelcontextprotocol.io/docs/concepts/architecture#m..." userName="swyx" createdAt="2025-04-09T18:41:15" color="">}}

{{<matomeQuote body="ああ、フォーマットは改善するつもりだし、もうちょい例も足すつもりだよ。タイプミスもあったし。正直、まだ公開するつもりなかったんだけど、OPの役に立つかなと思って早めに共有したんだ。<br>docsは結構良いと思う。でも、実際のネットワークリクエストを見るとなんか色々はっきりするんだよね。" userName="mlenhard" createdAt="2025-04-10T11:59:06" color="">}}

{{<matomeQuote body="具体的な例から学んで、そこから一般化する方が得意な人も多いんじゃない？" userName="nl" createdAt="2025-04-10T05:15:26" color="">}}

{{<matomeQuote body="それだけじゃなくて、仕様の理解があってるかとか、プロダクトがちゃんと仕様に従ってるかを確認するためにも例があると便利だよね。" userName="TeMPOraL" createdAt="2025-04-10T05:22:58" color="#45d325">}}

{{<matomeQuote body="マジ助かる。LLMからのレスポンスもキャプチャした？ツール呼び出しを開始するために、プロンプトにTOOL_CALL＜mcp＝github、command＝list＞みたいな特殊な構文が入ってる感じ？" userName="zellyn" createdAt="2025-04-09T17:05:19" color="#785bff">}}

{{<matomeQuote body="Charlesって初めて聞いた…（https://www.charlesproxy.com/）20年前に似たようなの自分で書いたんだよね（https://github.com/kristopolous/proxy）。当時はこれ無かったから…。もう古いツールは捨てないと。" userName="kristopolous" createdAt="2025-04-09T16:11:39" color="">}}

{{<matomeQuote body="Charlesがリリースされたのほぼ20年前だから、それたぶんもう存在してたと思うよ。" userName="stavros" createdAt="2025-04-09T22:59:14" color="">}}

{{<matomeQuote body="俺は自分が欲しいものが見つからないから作るんだよね。何かを作るってことは、それが存在しないって主張みたいなもん。例えば、ターミナル用のストリーミング・フォワード・オンリーなMarkdownレンダラーが見つからなかったから、自分でパーサーとレンダラーを作って、テストしまくってる。" userName="kristopolous" createdAt="2025-04-10T04:31:23" color="#ff33a1">}}

{{<matomeQuote body="その質問への答えはめっちゃ色々あって、目的とか無駄の定義によるよね。学ぶことを価値があると思ってる人なら、時間の無駄なんてほとんどないんじゃない？でも、市場とか状況次第で、役に立つかどうかは変わってくるよね。言語学とか科学が好きな人でも、何か学ぶときに機会費用を考えるはず。俺は時間の無駄だなって思うことはあんまりないけど、もっと別のことできたかもっていつも思ってる。ただの不安症かもだけど…。" userName="mptest" createdAt="2025-04-10T03:27:28" color="">}}

{{<matomeQuote body="charlesがやってるTLSトラフィックの傍受方法ってちょっと古いよね(プロキシとか、偽のルート証明書とか)。イケてるやつらはeBPF使ってるよ。<br>https://mitmproxy.org/posts/local-capture/linux/" userName="Maxious" createdAt="2025-04-09T19:58:35" color="">}}

{{<matomeQuote body="プロキシが要らないのはわかるけど、eBPF使っても偽のルート証明書なしでTLSをバイパスできるとは思えないな。" userName="stavros" createdAt="2025-04-09T23:00:44" color="">}}

{{<matomeQuote body="これ見て。<br>https://github.com/gojue/ecapture<br>要するに、OpenSSLみたいなSSLライブラリ内の呼び出しをフックできるんだよ。" userName="beaugunderson" createdAt="2025-04-10T06:13:32" color="#ff5c5c">}}

{{<matomeQuote body="それってアプリケーションによるんじゃない？静的にSSLライブラリがリンクされてたらどうするの？" userName="stavros" createdAt="2025-04-10T07:39:14" color="">}}

{{<matomeQuote body="下のリンクに書いてあるよ。なんか、裏側は結構適当で脆いのに、50個もロゴ並べて大々的に発表してるのがすごいよね。ちょっとした言い回しとか句読点に影響されそう。bot同士が”please”とか”thank you”言い合ったら、結果が良くなるとかありそう。<br>https://google.github.io/A2A/#/documentation?id=multi-turn-c..." userName="jacobs123" createdAt="2025-04-09T15:54:45" color="">}}

{{<matomeQuote body="企業が「プロトコル」とか「標準」を導入したがるのは、それが広まればビジネスの「堀」になるからだと思うんだよね。もしA2Aがエージェント通信の事実上の標準になったら、Googleが作ったやつだから、LLMの世界全体がGoogleのサービスに開かれることになる(だからLLMが最終目標じゃない)。Microsoftとかは、自分たちの「標準」を作るか、Googleのに従うしかない。" userName="behnamoh" createdAt="2025-04-09T14:29:05" color="#ff5733">}}

{{<matomeQuote body="決定的なシステムと目標を、非決定的な計算で確実につなげるのってマジ難しいよね。結局、僕らが本当に欲しいものにはならないかも。" userName="mycall" createdAt="2025-04-09T15:28:57" color="">}}

{{<matomeQuote body="非決定的な人間に既存のコンピューターシステムの変更を手伝ってもらうみたいなもんじゃん？人間のチーム管理の問題が、そのままテクノロジーシステムにも当てはまるってことだね。" userName="throwaway-blaze" createdAt="2025-04-09T15:43:34" color="">}}

{{<matomeQuote body="当てはまるだけじゃなくて、悪化するよね。非決定的な人間が、非決定的なコンピューターシステムを変更して、それが既存のコンピューターシステムを変更するんだから。" userName="Xelynega" createdAt="2025-04-09T17:39:56" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="それって、人を雇って管理するってことと一緒じゃん。" userName="TeMPOraL" createdAt="2025-04-10T05:41:33" color="">}}

{{<matomeQuote body="だよねー。結局のところ、RPCの話でしょ。名前付きのメソッドと、既知の引数で、ネットワーク越しにやり取りする。簡単なHTTPリクエストが思い浮かぶけど、それじゃ簡単すぎるってこと？いや、結局全部そうじゃん。マジで終わってる。<br><br>`from fastmcp import FastMCP<br><br>mcp = FastMCP(”Demo ”)<br><br>@mcp.tool()<br>def add(a: int, b: int) -> int:<br>    ”””Add two numbers”””<br>    return a + b`<br><br>これってfastmcpの例だけど何か気づく？2、3行コードを書き換えるだけでFlaskかFastAPIのアプリケーションになるじゃん。なんでREST/HATEOASを全面採用しないんだろ？たぶん、こういう“最先端”ソリューションを設計・提唱してる人たちは、システムの通信方法とか、既存のメソッドを知らないだけか、新しい名前で既存の概念を言い換えて、ハイプに乗っかって利用したいだけなんじゃないかな。" userName="whalesalad" createdAt="2025-04-09T14:40:11" color="#785bff">}}

{{<matomeQuote body="皮肉なことに、公式の“github-mcp”を使ってみたんだけど、ちゃんと設定したトークンがあっても、うちの会社のレポで動かなかったんだよね。しかも、Dockerコンテナの中でフル blownのサーバーが動いてるし。<br>結局、LLMエージェントに`gh` cliを使わせることにした。<br>新しいプロトコルって、企業が安全対策なしに価値を搾取できるような、無料プログラムのエコシステムを作るために、車輪の再発明をしてるだけなんじゃないかな。" userName="pjerem" createdAt="2025-04-09T15:18:57" color="#38d3d3">}}

{{<matomeQuote body="OpenAIの新しいresponses APIについても同じように感じる。DXの裏で、彼らは新しいデフォルトを売ってるんだよね。つまり、こっちのstateを保持して、それを売り返すっていう。" userName="config_yml" createdAt="2025-04-09T15:59:38" color="#ff5733">}}

{{<matomeQuote body="OpenAIはマジでめんどくさい。chat apiとchat completions apiが全然違うAPIだって気づくまでに丸一日かかった。しかもresponses apiっていう三番目のやつも出てくるし。<br>皮肉なことに、gpt4はどれが正しいアプローチか分かってないんだよね。同じプロンプトを3回与えると、関数呼び出しとか、システムプロンプトとか、スキーマとか、全部違うやり方で解決策が出てくる。" userName="whalesalad" createdAt="2025-04-09T17:08:56" color="#ff5733">}}

{{<matomeQuote body="RESTを使わない理由がマジでわからん。認証とかもう解決済みだし。LLMはAPIの呼び出し方も知ってるし！" userName="peab" createdAt="2025-04-09T15:17:15" color="">}}

{{<matomeQuote body="よくわかんない。このプロトコルはHTTPを使ってて、JSONスキーマもある。でも、それ以外にもっと仕様があるんでしょ？それを新しいプロトコルなしでどうやって指定するの？それとも、そもそも指定する必要がないってこと？" userName="nonethewiser" createdAt="2025-04-09T15:51:08" color="">}}

{{<matomeQuote body="RESTってHTTPとJSONスキーマ使うプロトコルじゃん？どこが違うのか分かんないなー。どっちも「これがリモートで呼べる手続きで、必要なパラメータはこれだよ」って言ってるだけじゃん？" userName="Xelynega" createdAt="2025-04-09T17:41:47" color="">}}

{{<matomeQuote body="HTTPとか考えなくて済むように、もう一段階抽象化してるだけじゃない？HTTPとか余計なもん持ち込みたくないし。" userName="skeledrew" createdAt="2025-04-09T15:37:28" color="">}}

{{<matomeQuote body="HTTPはTCPの上に、もうちょっと使いやすい層（POSTとかGETとか）を加えてるって言えるかもね。サーバーもめっちゃシンプルにできるし、全部が全部いらないってわけじゃないと思うよ。ブラウザで直接デバッグできるエンドポイント作れるし、ローカルのexeとstdioじゃなくて、hostsとportsでネットワークできるし。" userName="qwertox" createdAt="2025-04-09T15:53:49" color="#38d3d3">}}

{{<matomeQuote body="それだけじゃないよ。MCPはstdio、SSE（これがHTTPだね）、websocketsの3つのトランスポート方法に対応してるんだよ。クライアントとサーバーのライブラリがちゃんと実装されてれば、どれを使うか考えなくて済むのがメリット。サーバーとかツールとかリソースとか、アクセスするプロンプトを宣言するだけでいいんだ。デバッグモードもあるらしいし。" userName="skeledrew" createdAt="2025-04-09T16:35:57" color="#ff5733">}}

{{<matomeQuote body="結局は最初の5/6で言ってる通りなんだよね。そんなこと知らなくてもいいんだって（その抽象化レベルでは）。Pythonみたいな高レベル言語使ってるなら、アセンブリとかCみたいにレジスタがどうとか、メモリをどうとか、segfaultをどうとか考えなくていいのと同じ。" userName="skeledrew" createdAt="2025-04-09T18:03:58" color="">}}

{{<matomeQuote body="でもMCPってそうじゃないっぽいよね。MCPサーバーを実装するとき、3つのトランスポート方法で違うコードが必要になるんでしょ？それって、他のプロトコルみたいに、お互いの仕組みを知らなくても上に重ねられるってわけじゃないじゃん。" userName="Xelynega" createdAt="2025-04-10T19:19:53" color="">}}

{{<matomeQuote body="へー、いいね。LLMがどうやってこのAPIコールをトリガーするのか、どんなプロンプトを送って指示してるのかも知りたいな。Gooseのコード読めば分かるかな…" userName="zellyn" createdAt="2025-04-09T17:02:17" color="">}}

{{<matomeQuote body="これって、SOAとかWSDLの再発見ってこと？今度はwebサービスの代わりにLLMの相互運用のためってこと？間違ってるかもだけど、ソフトウェアエンジニアリングの学位に、アーキテクチャとか方法論とかパターンの盛衰の歴史みたいな科目を加えるべきか考え始めたわ。" userName="hliyan" createdAt="2025-04-09T14:50:32" color="">}}

{{<matomeQuote body="WSDLの時代にはいなかったから間違ってたらごめん🙏。WSDLの主な弱点は、アプリケーションが動的なサービスやメソッドの発見を利用できなかったことじゃない？サービスがWSDLをbroadcastできても、それを利用するものが無いと意味ないし。アプリを書くなら、未知のAPIじゃなくて、既知のAPIに対して書いた方がマシじゃん？LLMは、実行時に新しく発見されたメソッドとかAPIを利用できる、構造化されてないglueになるってことかな。" userName="maxwellg" createdAt="2025-04-09T16:45:33" color="#ff5c5c">}}

{{<matomeQuote body="SOAPとWSDLに関わって不幸だったわ😭。当時、WSDLに基づいてサービスを自動構成するっていう夢があったけど、実現しなかった。でも、API boilerplateの迅速な実装にはめっちゃ役立ったんだよね（今でも匹敵するものはないと思ってる）。サービスをWSDL endpointに向けると、どんな言語でもAPI clientをscaffoldできたんだ。JSON Schemaみたいだけど、もっと良い感じ。サービスがパラメータとかデータオブジェクトを変更したり、関数をdeprecatedしたり追加したりした場合、client実装がサービスinterfaceとどう違うかを簡単に確認できたし。簡単なversioning機能もあった気がする。runtimeの説明は、WSDLの失敗の言い訳にはならないと思う。発見っていうのは、プログラマがURLにアクセスすれば、どんなサービスがどんな関数、パラメータ、データオブジェクトを持ってるかを正確に知ることができるって意味合いが強かったからね。「runtime clientがWSDLを使って完全に未知のサービスへのサービスコールを自動構成できる」みたいな意味合いではなかった。後者はいつか実現するかもしれないけど、実際にはほとんど使われなかったんだ。" userName="zoogeny" createdAt="2025-04-09T17:48:54" color="#ff33a1">}}

{{<matomeQuote body="＞take advantage of dynamic service and method discovery<br>今でもそんな風にシステム構築してる人いるの？動的なサービスとメソッドの発見は机上では良く聞こえるけど、実際に見たことないな。" userName="nsonha" createdAt="2025-04-10T05:20:55" color="">}}

{{<matomeQuote body="XML RPCの手法で新しい製品を開発してる人もいるんだぜ😎。WSDLとかXSDがちゃんとできていれば、API specを誰かに伝えるにはマジ最高。自分は.NET使ってて、xsd.exeを呼び出して数秒でファイルからクラスを生成できるし。両側がすべてのルールに従えば、ちゃんと動くんだ。「これらのツールがなかったら、自分が扱ってるAPIは漫画みたいになっちゃうよ。生成されるソースは10MBもあるんだ。これらのtypesを生成して、intellisenseでプロパティをtunnelする方が、ベンダーのdocumentationを読むよりも100倍速いんだから。" userName="bob1029" createdAt="2025-04-09T21:18:04" color="#ff5c5c">}}

{{<matomeQuote body="＞WSDLs and XSDs done right are a godsend for transmitting your API spec to someone. I use .NET and can call xsd.exe to generate classes from the files in a few seconds.<br>それってprotobufとgRPCに似てる？近いアナロジーかな？" userName="echelon" createdAt="2025-04-10T04:20:02" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="それらに似てるけど、protobufとかgRPCがこんなに大規模なAPIに使われてるのを見たことないな。Visual Studioみたいなのを使ってるなら、これらのpath周りのtoolingも物足りない感じ。XML namespaceとかHTTP/1.1 transportと戦う方が、最近の”best practices”がもたらした惨状（特に大規模なレガシー企業における無人の複雑さ）を整理するよりマシ。オハイオの小さな銀行に、新しいprotocolに対応するためにfirewallを全部調整する必要があるって説明するのは、自分のbusinessじゃありえない。" userName="bob1029" createdAt="2025-04-10T09:39:34" color="#ff5c5c">}}

{{<matomeQuote body="後者（protobufとgRPC）はsubscriptionとstreaming、より効率的なtransportを追加するかもね。でも基本的には同じ考え方だよ。RPCの概念がXMLと同一視され、XMLが（XMLベースの）toolの実装と同一視され、XML vs JSONの議論で気が散ってたのがマジ嫌だった。yaml vs 〇〇みたいなのは今でもあるけど。" userName="nsonha" createdAt="2025-04-10T05:17:38" color="">}}

{{<matomeQuote body="こういう再発見は何世代か経験済みだし、graphql typeのimportとか、protobuf stubの生成とかが同じように機能する場所で働いたこともあるよ。今日もHNの別のpostで、logicを_databaseに_入れるのがどれだけ素晴らしいかについて書かれてたけど、document DBの時代もrelational DBの時代も、少なくとも2世代は経験してるわ。developer全般について言えることが一つあるとすれば、学ぶよりも構築する方が好きなんだよね。" userName="partdavid" createdAt="2025-04-09T23:57:11" color="#45d325">}}

{{<matomeQuote body="ソフトウェアエンジニアリングって、結局いつも同じことの繰り返しだよね。" userName="fedeb95" createdAt="2025-04-09T15:42:44" color="">}}

{{<matomeQuote body="CORBAとかOSGiも忘れちゃだめだよ。" userName="Maxious" createdAt="2025-04-09T16:03:32" color="">}}

{{<matomeQuote body="あはは、マジそれな！" userName="zubairq" createdAt="2025-04-09T14:51:25" color="#38d3d3">}}

{{<matomeQuote body="MCPとA2Aの大きな違いは、実際にMCPを使ってからA2Aの資料を読むとよくわかる。MCPは今日の具体的な問題を解決しようとしてる。LLMが学習してないデータにアクセスする必要があるけど、RAGの方法が多すぎるから超難しい。だからMCPはLLMがAPIを呼び出す標準を定義してる（他にも色々）。A2AはGoogleが技術パートナーと追いかけてるマーケティングの問題を解決しようとしてる。半年後にどっちが残ってるか、言わなくてもわかるよね？ contributorsが全部同じ会社のやつじゃない方だよ。" userName="phillipcarter" createdAt="2025-04-09T21:17:51" color="#ff5c5c">}}

{{<matomeQuote body="こんにちは（a2aの者です）。A2AはMCPとは違うレベルで動いてるんだ。特定の顧客の課題についてパートナーと協力してる。顧客は別々のフレームワークで個別のエージェントを構築したり、複数のベンダーからエージェントを購入したりしてる。これらのエージェントは孤立してて、ツールやメモリ、コンテキストを共有してないんだ。<br>例えば、ほとんどの企業は社内ディレクトリと社内プライベートAPIやツールを持ってる。社内タスクをこなすエージェントを構築できる。でも、”HR Agent”とか”Travel Assistant Agent”とか”Tax Preparation Agent”とか”Facilities Control Agent”を購入することもある。これらのエージェントはプライベートAPIやデータを共有しないんだ。それに、これらのエージェントを構造化されたツールとしてモデル化するのも難しい。”Tax Preparation Agent”は多くの異なるオプションを評価して、個々のユーザーのニーズに基づいて特定のドキュメントや情報を要求する必要があるかもしれない。これを100個のツールとしてモデル化するのは現実的じゃない。だからA2Aが役立つ。エージェントとしてエージェントと話すんだ。こうすることで、ユーザーは自分の会社のAgentにだけ話しかけて、そのAgentがHR AgentやTravel Booking Agentと連携して複雑なタスクを完了させることができる。" userName="TS_Posts" createdAt="2025-04-12T00:37:45" color="#45d325">}}

{{<matomeQuote body="理論的にはこれらの問題とA2Aがそれを解決できる理由は理解できるけど、残念ながら実際に構築・展開されてるエージェントについて疑念を抱かざるを得ない。" userName="phillipcarter" createdAt="2025-04-14T09:58:30" color="">}}

{{<matomeQuote body="＞半年後にどっちが残ってるか、言わなくてもわかるよね<br>LangChainはまだあるけど、だからって大した意味はない。MCPもそんなに良くないけど。" userName="owebmaster" createdAt="2025-04-09T21:56:51" color="">}}

{{<matomeQuote body="俺は今でもplain fetch requestsでLLMs APIsにアクセスしてるけど、めっちゃ上手くいく。10/10おすすめ。" userName="XCSme" createdAt="2025-04-14T12:51:44" color="#ff33a1">}}

{{<matomeQuote body="Langchainは、LLMの呼び出しをまとめて一貫したworkflowにする問題を（上手くやってるかどうかは意見が分かれるけど）ずっと前に解決してる。しかも、first mover advantageもあった。MCPはデータとAPIの統合問題を解決してる。どちらも今日人々がする必要のある具体的なことだ。AIエージェント同士が会話することは、AIを統合する機能を構築している組織が今日抱えている具体的な問題ではない。" userName="phillipcarter" createdAt="2025-04-09T22:14:30" color="#38d3d3">}}

{{<matomeQuote body="Langchainは今まで見た中で一番笑えるライブラリの一つだ。多くのabstractionはclean codeを文字通りに受け取った大学生が書いたみたいに見える。多くのメソッドはすごくtrivialでshallowだから、真面目な場面で使われてるのが信じられない。" userName="__loam" createdAt="2025-04-09T22:44:22" color="">}}

{{<matomeQuote body="マジそれな。PagagraphLineReaderFactoryとかいうの開いたとき、パラグラフの区切りとか賢く処理してくれるのかと思ったら、しょーもない一行の正規表現がOOPのボイラープレートに包まれててマジびっくりしたわ。" userName="tomaskafka" createdAt="2025-04-10T11:17:15" color="">}}

{{<matomeQuote body="＞LLMの呼び出しをまとめてワークフローにする必要ってあるよね。<br>＞Langchainを使う必要性を感じないんだよね。LLMの呼び出しをチェーンさせるのって、数行のコードで済むじゃん（Langchain使うより少ないくらいだと思うし）。" userName="XCSme" createdAt="2025-04-14T12:52:50" color="">}}

{{<matomeQuote body="ざっくり考えたんだけど、このjsonの仕様ってmcpと似てるところがあるよね。<br>https://google.github.io/A2A/#/documentation?id=agent-card<br>全角- ウェブサイトがホストするエージェントの機能を記述するagent cardがここにある。<br>https://DOMAIN/.well-known/agent.json<br>全角- クローラーがエージェントを発見するためにスクレイピングできるらしい。<br>https://google.github.io/A2A/#/topics/agent_discovery<br>jsonrpcの呼び出しはmcpのツール呼び出しと似てるけど、入出力はLLMの入出力に近い感じ（メッセージとかアーティファクトとか）。<br>JSサーバーの例も面白い。<br>https://github.com/google/A2A/tree/main/samples/js/src/serve...<br>全角- generatorを使ってSSEイベントを呼び出し元に送ってる。expressでSSE接続を設定した後でres.send/flushを複数回実行する方が普通だと思うんだけど、APIとして公開するのはちょっと変。" userName="Flux159" createdAt="2025-04-09T15:59:32" color="#38d3d3">}}

{{<matomeQuote body="MCPのセキュリティとプロンプトインジェクションについて書いたよ。MCP自体にはセキュリティ上の欠陥はないけど、（信頼できないソースからのテキストにさらされる可能性のある）ユーザーに代わって行動できるツールへのアクセスをLLMに提供するパターンは、プロンプトインジェクション攻撃に対して脆弱だよね：<br>https://simonwillison.net/2025/Apr/9/mcp-prompt-injection/" userName="simonw" createdAt="2025-04-09T13:52:09" color="#ff5c5c">}}

{{<matomeQuote body="10年くらい経つと、インバンドシグナリングがダメだってことを忘れちゃって、同じ過ちを繰り返すよね。1960年代の電話会社は、既存のシングルチャネル回線に制御システムを後付けしなきゃいけなかったし、ポケット電卓くらいの処理能力で全部動かしてたから言い訳できたけど、今の俺たちには言い訳できないじゃん？" userName="jsheard" createdAt="2025-04-09T14:23:05" color="">}}

{{<matomeQuote body="＞何が言い訳になるんだ？<br>＞自然界にアウトオブバンドシグナリングなんて存在しないんだよ。予測可能性と制御のために一般性を犠牲にして、ある部分が他の部分の動作を制限するようにシステム設計に導入したものなんだ。この分離は心によって作られたものであって、宇宙の特徴ではない。<br>＞したがって、人間もアウトオブバンドシグナリングをサポートしていない。現実の知覚、五感、内部プロセスはすべて同じバンド上にある。私たちと同じ環境で機能し、理想的には私たちのように考えることができる汎用AIシステムを構築する場合、制御とデータのようなものとの間にハードな分離を導入すると、十分な汎用性が得られない。<br>＞私が「または何でも」と言ったのは、それが曖昧な考えだからだ。LLMの入力カテゴリ間の分離で、私たちが処理できるようにしたいタスクやシナリオのクラス全体を明らかに排除しないようなものを誰かが考え出すことを私は挑戦する。<br>＞（また、上記のこととは全く関係なく、近い将来について考えると、人間に適用した場合、容易に永遠の奴隷、殺人、またはそれよりも悪いものに堕落しないような入力カテゴリ間の分離を誰かが考え出すことを私は挑戦する。）" userName="TeMPOraL" createdAt="2025-04-09T17:42:13" color="">}}

{{<matomeQuote body="そこじゃないんだよ。重要なのは、LLMが完全に一般的なシステムとして意図的に設計されているってこと。モデルの感覚様式と行動空間の範囲内で人間のように反応できるんだ。人間（または自然界の他のもの）と同じように、LLMには別々の制御チャネルや人工的なコード対データの区別はないし、一般性を失わずにそれらを追加することはできないんだ。" userName="TeMPOraL" createdAt="2025-04-09T21:01:41" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="エンタープライズデータベースは、特別な意味を持たせるために、フィールドに文字を付けたり付け加えたりするユーザーでいっぱいだよね。ファイル名でさえ、ディレクトリツリーの制限のせいでこの問題があるし。インバンドシグナルは絶対になくならないよ。" userName="mycall" createdAt="2025-04-09T15:26:42" color="">}}

{{<matomeQuote body="あるレベルでは、すべてが単一のバンドに入る必要があるよね。家に別々のネットワーク接続はないし、バンドごとに別々のTCP SYNパケットを送ったりしない。ハードドライブ上のファイルごとに別々のストレージデバイスもない。どこかで多重化してるんだ。重要なのは、多重化装置がコンポーネントでなければならず、アドホックな正規表現の分散セットであってはならないってこと。" userName="delusional" createdAt="2025-04-09T15:57:41" color="">}}

{{<matomeQuote body="ある程度はそうだけど、今はもうコメントに+++ATH0とか入れられないから、接続が切れる心配はないよね。だから対策する価値はあると思うよ。" userName="fragmede" createdAt="2025-04-09T19:26:13" color="">}}

{{<matomeQuote body="厳密に言うと、それが有効なのは3番目の+の後に3秒の遅延がある場合だけだよ（そこで”OK”を受け取って、データモードからコマンドモードに戻る）。そしてATコマンドがコマンドとして解釈されるんだ。Hayesの仕様から外れてる。" userName="sneak" createdAt="2025-04-09T20:52:42" color="#45d325">}}

{{<matomeQuote body="また始まったよ、アーキテクチャ宇宙飛行士たち。解決策を議論する代わりに、AI業界全体が新しいアーキテクチャの話ばかりしてる。あーあ。<br><br>https://www.lycee.ai/blog/why-mcp-is-mostly-bullshit" userName="fsndz" createdAt="2025-04-09T18:08:43" color="">}}

{{<matomeQuote body="理由は簡単だよ。今のAI（本物のAI）は、もうコンピューターサイエンスの問題じゃなくて、エンジニアリングの問題なんだ。" userName="ramesh31" createdAt="2025-04-09T18:14:18" color="">}}

{{<matomeQuote body="結局、企業向けのバラバラな”標準”にしかならないと思うな。<br>神経科学的、アルゴリズム的、コンピューターサイエンス的、エンジニアリング的な観点から見ても、（本物のAI）が解決に近いという証拠はないよ。行き詰まる可能性の方が高い。<br>AI投資がダメになったら、MLみたいにリブランドされるのを待ってるよ。" userName="weego" createdAt="2025-04-09T19:45:03" color="">}}

{{<matomeQuote body="じゃあ、hallucination（モデルレイヤーで起こるもの）はエンジニアリングの問題だって言うの？　正しいアーキテクチャを構築すれば、hallucinationはなくなるって？　それは疑問だな。" userName="fsndz" createdAt="2025-04-09T19:28:31" color="">}}

{{<matomeQuote body="＞あなたhallucinationがエンジニアリングの問題だって言ってるの？<br>そうだよ。<br>hallucinationはシングルショットプロンプトで大きな問題だった。でも、もう誰もそんなこと真面目にやってない。エージェントが改善して評価者がチェックするプロセスがあって、初期出力を品質チェックして、合否を返す。ツールを使ってリアルタイムデータを注入するから、LLMの上に信頼できるシステムが構築できるようになる。" userName="ramesh31" createdAt="2025-04-09T21:51:03" color="#38d3d3">}}

{{<matomeQuote body="LLMは評価なんてできないよ。影響を受けやすすぎるし、どんなにレイヤーを重ねても、適切なプロンプトを使えば必ず破綻する。" userName="yunwal" createdAt="2025-04-09T22:47:29" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、hallucinationしないLLMベースのシステムのリンクを教えてよ。" userName="fsndz" createdAt="2025-04-09T23:58:27" color="">}}

{{<matomeQuote body="Specからの引用だよ～<br>https://modelcontextprotocol.io/specification/2025-03-26/ser...<br>「trust & safetyとsecurityのために、ツールの実行を拒否できる人が常にいるべき」だって。<br>アプリは、AIモデルにどのツールが公開されてるかを示すUIを提供したり、ツールが実行されたときにわかりやすい表示を入れたり、操作の確認プロンプトをユーザーに出して、人がちゃんと確認できるようにするべきらしいよ" userName="zambachi" createdAt="2025-04-09T20:00:48" color="#ff5733">}}

{{<matomeQuote body="最近は”vibe coding”ってのがあって、これは人がずっと確認しなくてもいいようにするのが目標なんだよね" userName="lennoff" createdAt="2025-04-09T20:08:08" color="">}}

{{<matomeQuote body="同じドキュメントの中で、ここではSHOULDを使ってるのがポイントだね。他のところではMUSTを使ってるのに。参考になったよ。記事で引用させてもらうね" userName="simonw" createdAt="2025-04-09T20:55:49" color="">}}

{{<matomeQuote body="Securityってprotocolの一部に入れるべきじゃない？hostとclientがお互いにデータをsanitizeするようにしないと。そうしないと、モデルが”安全”なデータをclientに渡したり、hostが”安全”なデータをLLMに渡したりするのをどうやって信用するの？" userName="qwertox" createdAt="2025-04-09T15:46:10" color="#ff5c5c">}}

{{<matomeQuote body="一般的なシステムにおいて”安全”なデータなんて存在しないんだよね。安全の度合いの問題で、システムを安全にするためにどれだけのeffort、money、犠牲を払うかって話になる。攻撃者がどれだけcompromiseにeffortをかけるかってこととの兼ね合いだね。LLMみたいなシステムは人間だと思って考えるのが良いよ。見知らぬ外国人みたいな感じで。prompt injectionはsocial engineeringと同じで、常に問題になるよ。mitigationとしては、LLMにabuseできる権限を与えないとか、exploitしようとする人をsocialやlegalなpunitive measureで防ぐとかかな。LLMを含むsecure systemの設計は、人間を含むsystemのsecurityと同じように考えるべきだね" userName="TeMPOraL" createdAt="2025-04-09T18:26:24" color="#38d3d3">}}

{{<matomeQuote body="まさか！ verboseになることはあるし、researchにLLMを使うけど、自分の考えをLLMにformulateさせるほどdesperateじゃないよ。HNにcommentを書くことで、自分のopinionやbeliefをよく考えることになるからね。めっちゃvaluableだよ。途中で自分が間違ってるって気づいて、submitせずにwindowをcloseすることもあるし" userName="TeMPOraL" createdAt="2025-04-09T22:23:59" color="#38d3d3">}}

{{<matomeQuote body="noteを共有してくれてありがとう！Awesome MCP Securityに追加するね！<br>https://github.com/Puliczek/awesome-mcp-security" userName="puliczek" createdAt="2025-04-10T06:22:12" color="#785bff">}}

{{<matomeQuote body="＞the patterns it encourage<br>まずはexampleをfixしないと…<br>https://github.com/modelcontextprotocol/servers/issues/866" userName="latchkey" createdAt="2025-04-09T14:42:28" color="">}}

{{<matomeQuote body="RLHFのおかげでモデルがmaliciousなrequestをrejectするのが上手くなったから、industry全体がprompt injection attackのことを忘れちゃったみたいだね。でも、prompt attackのdocumentedなcaseって何かあるのかな？" userName="behnamoh" createdAt="2025-04-09T14:26:45" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
