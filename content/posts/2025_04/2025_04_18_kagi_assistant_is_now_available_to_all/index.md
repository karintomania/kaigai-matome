+++
date = '2025-04-18T00:00:00'
months = '2025/04'
draft = false
title = 'Kagiアシスタントがついに全ユーザーに開放！これはマジですごいぞ！'
tags = ["Kagi", "AIアシスタント", "検索エンジン", "サブスクリプション", "プライバシー"]
featureimage = 'thumbnails/color1.jpg'
+++

> Kagiアシスタントがついに全ユーザーに開放！これはマジですごいぞ！

引用元：[https://news.ycombinator.com/item?id=43724941](https://news.ycombinator.com/item?id=43724941)

{{<matomeQuote body="＞うちのフェアユースポリシーについてだけど<br>＞基本的にはプランの価値に応じてAIモデルを使えるってこと。<br>Assistantは多分使わないけど、Kagiが好きな理由はこういうとこなんだよね。顧客としての関係がマジで透明って感じ。他のSaaSで「これどうやって儲けてんの？」って疑問に答えてくれるとこ、思いつかないもん。<br>(Discordとかね。最高だけど、ずっと赤字じゃん？いつ潰れるか、何が起こるか心配になる)" userName="colonial" createdAt="2025-04-18T06:21:56" color="#ff5733">}}

{{<matomeQuote body="まだ引っかかるのは、SaaSサービス間で「自分のモデル接続を持ち込む」ってのがないこと。<br>Gemini AdvancedとかOpenAI/ChatGPT Proにお金払ってるのに、Pro 2.5(とか4.1/4o)を提供してるサービスごとにまた払うの？Gemini AdvancedのアクセスをFlashに接続してアップグレードできるようにしてほしい。サービスに色々登録してると、二重、三重に払ってる気分になる。メディアコンテンツが３つのサービスでクロスライセンスされてて、複数契約してるのに割引がないのと同じくらいイラつく。" userName="basch" createdAt="2025-04-18T14:07:54" color="">}}

{{<matomeQuote body="ソフトウェアモデルは近いうちに崩壊し始めると思うんだよね。多くの人は、縦割りのソフトウェアじゃなくて、単一の「水平」エージェント(Gemini Advanced, Claudeとか)にお金を払って、他のサービスに接続したいと思うようになる。<br>MCP(個人的には微妙なプロトコルだと思うけど、多分勝つ)が、OAUTH認証するサービスの接着剤になる。OpenAIの「GPT App Store」のアイデアは、惜しいって感じ。AIプラットフォームの中にApp Storeがあって、そこから他のサービスを契約/接続するようになるんじゃないかな。" userName="eightysixfour" createdAt="2025-04-18T15:05:33" color="#ff5733">}}

{{<matomeQuote body="一番上にアイデンティティレイヤーが欲しいな。アカウント管理、APIアクセス、パスワードリセットができるアイデンティティポータルが欲しい。アイデンティティマネージャーにログインしてたら2FAを回避させてほしい。サービスが自分のアイデンティティにアクセスできるか、アイデンティティ内のサービスが何にアクセスできるかを双方向で制御できるようにする。LLMとかクラウドストレージとかはサービスから隠蔽して、ストレージプロバイダーを区別できないようにする。サービス間のアクセスは全部アイデンティティポータルから制御されるべき。" userName="basch" createdAt="2025-04-18T15:33:41" color="#785bff">}}

{{<matomeQuote body="誰がアイデンティティを製品としてお金払うの？他の製品の無料機能として期待するんじゃない？" userName="orand" createdAt="2025-04-18T17:04:22" color="">}}

{{<matomeQuote body="両方やれば良くない？AppleとかMicrosoftとかサードパーティのIDプロバイダーを使えば。" userName="basch" createdAt="2025-04-18T20:20:06" color="">}}

{{<matomeQuote body="それってLLMプロバイダーが提供するOauthみたいなもんじゃない？プロバイダーが機能を作ればいいだけ。" userName="jcgl" createdAt="2025-04-19T10:12:57" color="">}}

{{<matomeQuote body="OpenAIのGPT marketplace/storeはマジで失敗だった。今となっては意味不明。なんでOpenAIはプラグを抜いて失敗を認めないんだろう。" userName="siva7" createdAt="2025-04-18T18:06:53" color="">}}

{{<matomeQuote body="縦から横への統合への直感、マジでその通り！<br>Sam AltmanがStratecheryのインタビューで、OpenAIの将来戦略の一部を詳しく語ってて、それが君の予測と一致するんだ。持続的でパーソナライズされたAI。<br>Altmanは「APIを統合したい人はOpenAIアカウントでサインインして、クレジットとかカスタマイズモデルとかをどこにでも持っていけるようにする」って言ってる。<br>これはポータブルなAI体験を作って、垂直ソフトウェアのビジネスモデルを覆すことを狙ってる。OpenAIのSSOログインがトロイの木馬になるかもね。" userName="heywoods" createdAt="2025-04-18T15:56:58" color="#ff5733">}}

{{<matomeQuote body="一部の人がそれを望むのはわかるけど、他の人はどうなの？色んなコンテキストで作業するから、あるコンテキストではあるモデル、別のコンテキストでは別のモデルを使いたい。AIはそれぞれの使い方に合わせて欲しい。「パーソナライズ」はいらない。プロジェクト内での記憶は嬉しいけど、関係ないプロジェクト間で記憶を引き継がないでほしい。" userName="freehorse" createdAt="2025-04-18T19:29:51" color="">}}

{{<matomeQuote body="業界の解決策としては、AIメモリのオープンスタンダードを作るのがいいんじゃないかな。" userName="esafak" createdAt="2025-04-18T16:02:17" color="">}}

{{<matomeQuote body="それって、あの料金プランの利用モデルには合わないと思うんだよね。料金設定は、使いにくくてあまり使われないことを前提にしてるみたいだし。それに、Kagiは赤字だって話も聞くし、トリプルとかクアドラプルで課金されても、モデルを動かすコストより全然安いんじゃない？" userName="everforward" createdAt="2025-04-18T14:41:02" color="">}}

{{<matomeQuote body="もし俺が自分のAPIキーを持ち込んで、全てのコストを自分のGoogleとかChatGPTのアカウントにオフロードしたら、Kagiに何のコストがかかるの？月10ドルのUnlimited Proに加入して、（コストを補助してるモデルにだけ）アクセスするんだよ。むしろ、俺の使用量を自分アカウントにオフロードすれば、KagiのFlash tier quotaを消費するより節約になるんじゃない？LLMへのアクセスをポータブルにすることで、ハイエンドモデルを提供してエンドユーザーが直接利用料金を支払えるようにするのが理想的だよね。いろんなサービスで高いAIボーナス料金を払うより、AIライセンスを1つ買って、各サービスに少額の手数料を払う方がずっといい。" userName="basch" createdAt="2025-04-18T14:47:21" color="#ff5c5c">}}

{{<matomeQuote body="だったらGoogleは、サードパーティのサービスに接続できるAdvanced Portableを30ドルで提供するべきだよ。サービス全体のバックエンドとして（全ユーザー向けに）使われるのを防ぐための監視も必要だけどね。" userName="basch" createdAt="2025-04-18T15:28:37" color="">}}

{{<matomeQuote body="サードパーティの利用状況はバラバラだから、単一の定額料金は意味がないんじゃないかな。PerplexityはおそらくKagiより桁違いに多くのトークンを使ってるよ（Perplexityは検索ごとにトークンを使うけど、Kagiはアシスタントを手動で起動したときだけ）。それに、各ユーザーが使うサードパーティサービスの数も違うし。1つしか使わない人もいれば、50個使う人もいる。Googleは統合ごとに課金できるけど、それって現状維持だよね。" userName="everforward" createdAt="2025-04-18T16:08:10" color="#38d3d3">}}

{{<matomeQuote body="なんで統合の数が価格設定のポイントになるの？トークンティアじゃないの？アカウントを100個のサービスに接続して試してみるかもしれないけど、数回使っただけで忘れちゃうかもしれないじゃん。" userName="basch" createdAt="2025-04-18T20:19:08" color="">}}

{{<matomeQuote body="それも納得できるけど、サードパーティへの加入を検討してる人は不安になるよね。Kagi Assistantがいいのは、支払いが上限付きだから。従量課金のAPIキーをランダムなソフトウェアに接続するのは、20ドルも払わないようなことに1000ドルの請求が来るリスクがあるから怖いんだよね。それに、規模の経済でKagiが大量のトークンを買う方が安くなるし、Googleとかは顧客側の管理（どのサービスがどれだけのトークンを使ったか？）をしたくないし、サービスプロバイダーは君に自分たちの“魔法”をコンソールで見られたくないんだよ。システムの指示側にはすごい力があるみたいだし、Perplexityはおそらくプロンプトを見られたくないんだろうね。" userName="everforward" createdAt="2025-04-18T22:35:43" color="#38d3d3">}}

{{<matomeQuote body="じゃあロックダウンさせてくれよ。キーを追加するときに、このサービスには自分のキャパシティの3％までしか許可しないってプロバイダーに伝えられるようにしてくれ。" userName="basch" createdAt="2025-04-19T04:15:38" color="#ff5c5c">}}

{{<matomeQuote body="売上≠利益ってこと。Discordは、2010年代のSaaSスタートアップによくあるように、Nitroとかで売上はあるけど、経費をカバーするには全然足りてないんだよね。" userName="colonial" createdAt="2025-04-18T07:21:40" color="#38d3d3">}}

{{<matomeQuote body="＞Revenue != profit<br>10年以上もほとんどの会社が売上高の話しかしないのはマジでイライラする。スタートアップとか人気のテック企業って、投資家からの無限の資金注入で生き残ってるだけじゃん。" userName="troupo" createdAt="2025-04-18T07:39:46" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="過去に売上があっても赤字で何年も運営してたスタートアップで4社働いてたけど、今は全部利益が出てるし買収されてるよ。今のスタートアップも赤字だけど、大型契約を結んでるし、1～2年後には成長を続けて10億ドル以上の評価額になるといいな。利益を出すのは拡大をやめるだけなんだけど、投資家もそれを望んでないんだよね。ここはycombinatorのニュースアグリゲーターだから、リスクを取らずにモノを作るみたいな雰囲気はないと思うよ。" userName="inglor" createdAt="2025-04-18T07:46:37" color="#785bff">}}

{{<matomeQuote body="＞all are profitable today and all were acquired.<br>利益が出てるか、買収されてるかのどっちかだよね(笑)<br>＞Becoming profitable, even at this point is just a matter of deciding to stop expanding<br>成長至上主義ってやつだね。<br>＞it's a startup accelerator after al<br>Y Combinatorのスタートアップのビジネスモデルは、無限の投資家の資金で永遠に運営するか、曖昧な市場評価で最高値で売却されるかのどっちか。利益を出すことは考えられてないよね(笑)" userName="troupo" createdAt="2025-04-18T08:26:03" color="#45d325">}}

{{<matomeQuote body="＞They are either profitable or acquired :)<br>なんで？会社が買収されたら、自動的に収益性がなくなるの？株式売却で買収された場合は、独立した事業体としてP&Lが残るよね。資産売却で買収・合併された場合でも、新しい部門が収益を上げているかどうか評価できるはず。Googleみたいに独占禁止法に抵触するのを避けるために、一部の部門を項目分けしないってケースは稀だけど。<br>＞Becoming profitable never enters the picture :)<br>YCのポートフォリオを見ると、利益が出てるスタートアップもたくさんあるみたいだけど。" userName="sebastiennight" createdAt="2025-04-18T10:26:05" color="">}}

{{<matomeQuote body="＞Once a company has been acquired, does it automatically fall out of profitability?<br>買収した会社の一部になるんじゃないの？<br>＞Seems very wrong based on looking at YC's portfolio, which apparently includes a bunch of profitable startups<br>利益が出てるスタートアップはごくわずかだよ。例外的な存在。" userName="troupo" createdAt="2025-04-18T10:54:57" color="">}}

{{<matomeQuote body="＞It becomes a part of the company that bought it?<br>必ずしもそうとは限らないよ。さっきも説明したように、買収が成功するケースの多くは株式売却で、買収企業がスタートアップの株式を保有する形になる。この時点では、スタートアップはまだ独立した事業体だよ。Googleは買収したスタートアップを製品ラインに統合したり(または潰したり)することで知られているけど、全ての買収が合併になるわけじゃない。例えば、AFAIK LivestreamはVimeoの子会社のまま（完全所有だけど別会社）だよ。<br>https://en.wikipedia.org/wiki/Vimeo_Livestream<br>だから、Livestreamが収益を上げているかどうかは、買収企業とは別に判断できる。" userName="sebastiennight" createdAt="2025-04-18T13:03:18" color="">}}

{{<matomeQuote body="＞most startups and tech darlings survive only by continuous infusion of unlimited investor money.<br>投資家が長期的な賭けをするのは良いことだと思うな。" userName="lukas099" createdAt="2025-04-18T12:51:59" color="">}}

{{<matomeQuote body="賭けの対象は常に、最高値での売却、過剰に膨らんだIPO、投機的な”市場資本”だよ。ごくまれに、「競争相手が全滅するまで価格を下げて、事実上の独占状態になったらお金を回収する」みたいなケースもある。" userName="troupo" createdAt="2025-04-18T13:00:43" color="#45d325">}}

{{<matomeQuote body="Kagiは儲かってるらしいよ。<br>それに、マネタイズの方法は明らかで、謎に包まれてるわけじゃないってのが俺の言いたいこと。" userName="weird-eye-issue" createdAt="2025-04-18T08:19:47" color="">}}

{{<matomeQuote body="＞Kagiは儲かってるって？<br>ソースは？　こういう会社とビジネスモデルで利益が出てるなんて珍しいから、証明責任はそう言ってる側にあると思うよ。" userName="RadiozRadioz" createdAt="2025-04-18T09:01:53" color="">}}

{{<matomeQuote body="どうやらまだ儲かってないみたいだよ。<br>＞Discordは約10億ドル調達してて、7億ドルの現金があるけど、今年は利益を出すのが目標らしい。<br>https://www.theverge.com/2024/1/11/24034705/discord-layoffs-…" userName="raphman" createdAt="2025-04-18T10:04:09" color="#ff5c5c">}}

{{<matomeQuote body="経費を賄えないって？　15年も赤字経営してるってことだよ？　会社は利益を出さないと潰れるんだよ。明らかに利益が出てるから存在してるんじゃないの？" userName="7bit" createdAt="2025-04-18T07:40:38" color="">}}

{{<matomeQuote body="増資したり借金したりして、バーンレートを下げようとしてるけど、元コメントは2010年代の「利益より成長」って考え方について話してたんだよ。もっとユーザーや収益を増やして、もっとマネタイズできる大手に買収されたいって。<br>Discordが儲かってないのは周知の事実だよ。<br>あと、赤字経営が必ずしも悪いわけじゃないんだよね。例えば、事業拡大とか研究開発費を増やせば利益は減るし。Amazonみたいに、研究開発費にお金をかけて利益を出さない会社もある。" userName="inglor" createdAt="2025-04-18T07:44:01" color="#ff5733">}}

{{<matomeQuote body="ビジネスマンじゃないから、話半分に聞いてほしいんだけど、中小のスタートアップやテック企業ではよくあることだと思うよ。<br>収益以外から資金調達できれば、直接製品を売らなくても経営を続けられるんだよね。投資とかローンとか。<br>だから、経費（借金の返済とかも含む）が収益より高くても、投資家を説得できれば経営を続けられる。<br>Discordがそうなのかは知らないけど、特に市場で唯一のプレイヤーになることが成功の鍵となる企業ではよくある戦略だと思う。" userName="MrJohz" createdAt="2025-04-18T07:54:56" color="#785bff">}}

{{<matomeQuote body="Uberが初めて利益を出すまでに15年かかったんだって。<br>https://www.theverge.com/2024/2/8/24065999/uber-earnings-pro..." userName="Zetaphor" createdAt="2025-04-18T18:41:58" color="">}}

{{<matomeQuote body="これは皮肉なコメントだね。だってここは、まだ利益が出てない会社、何年も利益が出てない会社に投資してる会社が運営してるフォーラムなんだから。" userName="weird-eye-issue" createdAt="2025-04-18T15:18:51" color="">}}

{{<matomeQuote body="＞会社は利益を出さないと潰れる。<br>マジかよ。そうあるべきだけど、全然そうじゃないんだよ。" userName="kerkeslager" createdAt="2025-04-18T09:23:50" color="">}}

{{<matomeQuote body="もしスタッフが見てたらお願い🙏 zoom禁止するのやめてほしいな。アクセシビリティ的に良くないし、みんなにとっても不便だよー。機能を紹介してるスクショがあるけど、スマホだと小さすぎて読めないし、zoomもできないんだもん。" userName="viraptor" createdAt="2025-04-18T04:33:26" color="#45d325">}}

{{<matomeQuote body="Android版Firefoxには「すべてのWebサイトでズーム」っていうアクセシビリティ設定があるから、それで回避できるよ。Firefoxのリーダーモードも役立つかも。でも、こういう対策が必要なのは残念だよね。最初から全てのサイトがアクセスしやすいのが理想なのに…" userName="Hasnep" createdAt="2025-04-18T05:59:45" color="">}}

{{<matomeQuote body="困ったことに、サイトごとの設定変更はできないんだよね。だから、zoomしたくないサイト（ゲームとかでzoomのジェスチャーがゲーム内の操作になっちゃうような場合）だと、このグローバル設定が邪魔で操作できなくなっちゃうんだ。" userName="kevincox" createdAt="2025-04-18T16:37:08" color="">}}

{{<matomeQuote body="昔のAndroid標準ブラウザはもっと良かったよ。ちょうどいいサイズになるまでzoomできて、ダブルタップでリフローして表示してくれたんだ。" userName="cma" createdAt="2025-04-18T06:57:34" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="新しいブラウザにはzoom時にテキストをリフローしてくれる拡張機能があるよ。<br>https://github.com/emvaized/text-reflow-on-zoom-mobile<br>結構便利。" userName="onli" createdAt="2025-04-18T07:13:58" color="#38d3d3">}}

{{<matomeQuote body="いいね。ピンチ後の自動リフローは要らないけど、これは良さそう。改造もできるかも。ピンチzoomして、そのまま指を少しの時間動かさずにキープしたらリフローするとか。" userName="cma" createdAt="2025-04-18T07:47:07" color="">}}

{{<matomeQuote body="そうだね。画像をもっと良く見たいだけなのにテキストがリフローするのはちょっと邪魔な時もある。でも、大抵は問題ないよ。ちょっと位置調整すればいいだけだし。とりあえず試してみて!" userName="onli" createdAt="2025-04-18T08:14:50" color="">}}

{{<matomeQuote body="マジか！もうAndroidでFF使ってるのに知らなかった。教えてくれてありがとう！これでmediumとかsubstackの小さい画像も見えるようになる！" userName="viraptor" createdAt="2025-04-18T07:06:29" color="#38d3d3">}}

{{<matomeQuote body="やったー！エンジニアが修正してくれたよ。もう一度試してみて！" userName="seth_at_kagi" createdAt="2025-04-18T15:30:38" color="#ff5733">}}

{{<matomeQuote body="ちょっと調べてみるよ。どういうことか詳しく教えてくれる？こっちだと普通に拡大できるけどなー（Orion browser/iOS）。" userName="freediver" createdAt="2025-04-18T12:07:05" color="">}}

{{<matomeQuote body="もしかして、OPはピンチで拡大がロックされてて、スクショを拡大できないってことかな？<br>編集：こっちのブラウザ（iPhoneのSafari）だと完璧に拡大できるよ。" userName="ilt" createdAt="2025-04-18T12:51:34" color="#ff33a1">}}

{{<matomeQuote body="Kagiの人かわからないけど、Androidアプリ開くとき、スプラッシュページが1秒くらいロードに時間かかって、検索バーが開くのが遅いんだよね。大したことないように聞こえるかもだけど、Kagiをデフォルトの検索エンジンとして使うのが億劫になっちゃうんだよね。<br>Kagiのウィジェットなら一応解決できるけど、新しいlauncher入れないと、標準のGoogle検索バーとKagiの検索バーを置き換えられないし。" userName="setsewerd" createdAt="2025-04-18T13:36:08" color="#ff5733">}}

{{<matomeQuote body="Android版のFirefoxだとブロックされてるらしいよ。別のコメントで無効にするmetaタグが引用されてた。" userName="viraptor" createdAt="2025-04-18T12:59:52" color="#785bff">}}

{{<matomeQuote body="了解。なぜかBear Blogがデフォルトでこの設定になってるみたい。ダッシュボードから簡単に変更できないみたいだし。" userName="freediver" createdAt="2025-04-18T13:35:38" color="">}}

{{<matomeQuote body="おー、調べてくれてありがとう！" userName="viraptor" createdAt="2025-04-18T14:16:05" color="#785bff">}}

{{<matomeQuote body="どのブラウザでブロックされるんだろ？試した限りだと、どのブラウザ（モバイル版も）でも普通に動いたけど？拡張機能も入れてないし。" userName="jeffhuys" createdAt="2025-04-18T07:56:48" color="">}}

{{<matomeQuote body="Safariはmaximum-scaleプロパティを完全に無視すると思う。" userName="jddj" createdAt="2025-04-18T09:10:39" color="#ff33a1">}}

{{<matomeQuote body="拡大できるよ。<br>Android 14<br>Firefox 136.0.1 (Build #2016078447), hg-e7956a4db6c5+<br>GV: 136.0.1-20250310180126<br>AS: 136.0<br>ublock origin<br>enable zoom in all websites<br>編集：聞きたいことと違うかもしれないけど、画像を新しいタブで開いてみて。そっちでは拡大できる？<br>https://kagifeedback.org/assets/files/2025-04-17/1744906741-…" userName="catlikesshrimp" createdAt="2025-04-18T05:52:10" color="#785bff">}}

{{<matomeQuote body="うん、回避策は知ってるよ。これはどっちかっていうと「文句を言って、このケースを修正してもらうのと、次に何か作る人への啓発のため」かな。" userName="viraptor" createdAt="2025-04-18T07:12:46" color="">}}

{{<matomeQuote body="これ、マジで俺も困ってたんだよね" userName="dean2432" createdAt="2025-04-18T05:56:03" color="#785bff">}}

{{<matomeQuote body="新しいタブで開いて、そこで拡大すれば良いんじゃない？" userName="GrayShade" createdAt="2025-04-18T06:08:41" color="">}}

{{<matomeQuote body="モバイルのSafariだと普通に拡大できるけど" userName="scary-size" createdAt="2025-04-18T05:50:45" color="">}}

{{<matomeQuote body="水平スクロールバーとかの問題を防ぐために、ずいぶん前にこの流れに乗ったんだけど、拡大を許可しつつレスポンシブにするためのアップデートされたアドバイスってある？" userName="aitchnyu" createdAt="2025-04-18T09:11:10" color="">}}

{{<matomeQuote body="“拡大を許可する”ことと“レスポンシブである”ことは、互いに矛盾する状態じゃないよ。<br>拡大を禁止するのは深刻なアクセシビリティの問題だし、すべてのユーザーにとってコンテンツを悪化させる。適切なレスポンシブな幅、十分な基本フォントサイズ、十分な入力テキストサイズを設定して、border-boxを使えば、絶対位置指定とかワードラップしないように指示してviewportよりも広くなる場合を除いて、うまくいくはず。" userName="ericrallen" createdAt="2025-04-18T12:26:46" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="飛び乗るような流行じゃないよ。ほとんどのサイトは拡大を防いでないし。やってるサイトは最初から設定ミスってるだけで、一部のモバイルブラウザが`maximum-scale=1.0`を無視するから問題が特定されないだけ。Quick tip：inputのフォントサイズを16px以上にすると、ほとんどのモバイルブラウザがinputにフォーカスしたときに“自動的に”ズームインしなくなるよ😉" userName="lobsterthief" createdAt="2025-04-18T12:44:27" color="#785bff">}}

{{<matomeQuote body="Kagiの社員です。サイトが拡大をブロックするの、マジで嫌い。うちのブログがそうしてたなんて知らなかった:S<br>サイトは修正済みで、PRも出したよ。" userName="jacobwinters" createdAt="2025-04-18T15:33:54" color="#785bff">}}

{{<matomeQuote body="Kagiはマジでお気に入りの会社の一つ。Tシャツ買うのに電話番号教えなきゃいけないような世界（“注文について連絡する必要がある場合に備えて”って、マジかよ）で、Kagiが支払い方法以外ほとんど何も要求しないのがマジでrefreshing。" userName="i_love_retros" createdAt="2025-04-18T11:22:44" color="#ff5733">}}

{{<matomeQuote body="少なくともあなたはシャツを手に入れたんだ。俺は何ヶ月も待って、いつも在庫切れじゃないかチェックしてたのに、メールをチェックしなかった短い期間にリリースされて、シャツを手に入れることができなかった。" userName="justinrubek" createdAt="2025-04-18T12:13:14" color="">}}

{{<matomeQuote body="無料のTシャツのために住所送る羽目になったわ笑" userName="dewey" createdAt="2025-04-18T11:44:54" color="">}}

{{<matomeQuote body="ちなみにTシャツのクオリティ最高" userName="dgellow" createdAt="2025-04-18T11:52:33" color="">}}

{{<matomeQuote body="必要なら使うよ。昔、AliExpressが住所をUTF８で要求してきて嫌だった。郵便局から電話もかかってきたし、荷物は空港の近くに配達されたことある。曖昧さがなければ大丈夫だけどね" userName="numpad0" createdAt="2025-04-18T12:53:05" color="">}}

{{<matomeQuote body="UPSが家の近くの坂が滑りやすくてトラックが上がれない時に電話してきたことあるよ。経験は人それぞれ" userName="yencabulator" createdAt="2025-04-22T21:49:16" color="">}}

{{<matomeQuote body="Kagi検索は最高だけど、月5ドル以上は払いたくないし、300回検索じゃ足りない。Kagi AIにも興味ない。検索回数増やしてくれたらまた契約するかも。回数制限じゃなくてレート制限にしてくれたら検索不安もなくなるのに" userName="34679" createdAt="2025-04-18T14:16:54" color="#ff5733">}}

{{<matomeQuote body="Kagiの価格設定は、広告収入やデータ収集に頼らない場合の実際のコストに近いんじゃないかな。無料検索はそういう条件じゃないと維持できないし。広告ブロックしてるヘビーユーザーは他のユーザーに補助してもらってる状態" userName="lurk2" createdAt="2025-04-18T14:33:00" color="#785bff">}}

{{<matomeQuote body="それを言うなら、VCマネーとか企業の欲とか個人データの搾取がそうさせたんだよ。無料でサービスを期待する人たちのせいじゃない" userName="atmosx" createdAt="2025-04-18T15:46:01" color="#ff5c5c">}}

{{<matomeQuote body="みんな無料が好きで‚「欲張りな企業」はみんなが欲しいものを与える方法を見つけたんだよね。Google検索は今やゴミだけど(完全にGoogleのせいじゃない理由で)‚最初の10年間はウェブ上の関連データを一発で見つけるのが魔法みたいだった。" userName="akhosravian" createdAt="2025-04-18T16:03:26" color="">}}

{{<matomeQuote body="＞みんな無料が好きで‚「欲張りな企業」はみんなが欲しいものを与える方法を見つけたんだよね。”って‚それって「みんなフェンタニルが好きだから‚麻薬の売人はみんなが欲しいものを与えるだけ」って言ってるのと同じじゃん。<br>ソーシャルメディアは中毒と鬱を引き起こすし。<br>GmailとかFacebookとか類似のアカウントなしで‚JavaScriptを有効にせずに‚または非標準のブラウザだけを使って数ヶ月間ウェブを閲覧したことある？マジでひどい体験だよ。" userName="atmosx" createdAt="2025-04-19T19:23:34" color="">}}

{{<matomeQuote body="Kagiは大手のVCから資金提供を受けてないんだって。ここ読んでみて：https://blog.kagi.com/safe-round" userName="nerdyadventurer" createdAt="2025-04-19T02:48:31" color="#785bff">}}

{{<matomeQuote body="もし彼らが300回の検索を5ドル以下でスケールできないなら‚何か根本的に間違ってる。1Mトークンの推論がもっと安く手に入ることを考えたらね。" userName="34679" createdAt="2025-04-18T14:55:46" color="">}}

{{<matomeQuote body="1Mトークンの推論が手に入るのは‚VCマネーで補助されてるからだよ。親コメントのポイントは‚それがサービスを提供する実際のコストに近いってこと。" userName="dymk" createdAt="2025-04-18T15:15:02" color="#38d3d3">}}

{{<matomeQuote body="その5ドルは組織のコストをカバーする必要があるんだよ‚コンピューティングだけじゃなくて。従業員が40人以上いるから‚4.5万人のメンバー全員が月5ドルのプランだったとしても‚給料だけで収入の大部分を持っていかれる。" userName="AlotOfReading" createdAt="2025-04-18T21:00:12" color="#ff33a1">}}

{{<matomeQuote body="その5ドルはディーラーが提供する安いドラッグみたいなもんさ。彼らはあなたが10ドルの「良いもの」を始めることを期待してるんだ。それは僕がランチ1回に払うよりも安いことが多いし‚僕は常にKagiを使ってるよ。" userName="EasyMark" createdAt="2025-04-19T02:15:07" color="">}}

{{<matomeQuote body="私も月5ドルのプランを使ってるんだけど‚300回の検索制限を超えた時は‚Kagiが私の月額プランを早めに更新してくれたよ。<br>私にとっては月の終わりに数回起きただけで‚彼らの対応には満足してる。" userName="ndaiger" createdAt="2025-04-18T14:21:25" color="#ff5c5c">}}

{{<matomeQuote body="それってマジでいいモデルだよね。実質的に300回の検索が5ドルで1ヶ月間有効ってことじゃん。もし5ドルを超えたらすぐに更新されるし。<br>Kagiは未使用の検索を1ヶ月間繰り越すことも検討してもいいかもね。だから‚もし200回しか検索しなかったら‚残りの100回は翌月に繰り越されて400回検索できるようになるとか。" userName="ksec" createdAt="2025-04-18T14:34:36" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
