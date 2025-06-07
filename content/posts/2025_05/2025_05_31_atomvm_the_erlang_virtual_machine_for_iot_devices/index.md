+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = 'AtomVM IoTデバイスでErlangを！注目の仮想マシンとは'
tags = ["IoT", "Erlang", "Elixir", "仮想マシン", "組み込み"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> AtomVM IoTデバイスでErlangを！注目の仮想マシンとは

引用元：[https://news.ycombinator.com/item?id=44115897](https://news.ycombinator.com/item?id=44115897)




{{<matomeQuote body="AtomVMでMCUプロトタイプ開発するの超楽しいよ！MicroPythonとかよりこっち使うことが多いな。パワフルなSoC載っけてるゴツいマシンならNervesが定番だね。最近PopcornっていうのがAtomVM使ってブラウザでBEAM VMコード動かしてるらしい！ElixirとErlangが色んな場所でデプロイできるの見ると最高だね :)" userName="doawoo" createdAt="2025/05/31 17:57:49" color="#785bff">}}




{{<matomeQuote body="最近マイクロVMツールがいっぱい出てきてすごいね！昨日もこれが出てたよ: https://news.ycombinator.com/item?id=44135977" userName="mrbluecoat" createdAt="2025/05/31 13:54:49" color="">}}




{{<matomeQuote body="これ結構前からあるやつだよ。最近はElixirコミュニティがWASMターゲットとしてもっと色々試してるからまた注目されてるんだね。" userName="lawik" createdAt="2025/05/31 14:55:16" color="#ff33a1">}}




{{<matomeQuote body="これってNervesより小さいデバイス向けなの？それとも単なる別の選択肢？" userName="cyberpunk" createdAt="2025/05/31 14:29:21" color="">}}




{{<matomeQuote body="小さいデバイス向けだよ。" userName="nesarkvechnep" createdAt="2025/05/31 14:37:21" color="">}}




{{<matomeQuote body="あとhttps://www.grisp.orgもあるよ。これも似てるけど、こっちの方がもうちょっと成熟してるみたい。" userName="cyberpunk" createdAt="2025/05/31 14:40:52" color="">}}




{{<matomeQuote body="GRiSPはNervesとAtomVMの中間くらいかな。AtomVMはBEAMよりずっと軽いVMで、もっと低層向けだよ。まだあまり証明されてないけどね。Nerves、GRiSP、AtomVM、そしてKry10も、似た目標でErlang／Elixirを組み込み向けに動かしてるツールはいっぱいあるんだ。それぞれトレードオフが違う。僕はNervesチームだけど、どれも素晴らしいし、みんなで情報交換してるよ。AtomVMはNervesとターゲットが違うから、一番いい補完関係だね。" userName="lawik" createdAt="2025/05/31 15:01:29" color="#ff5c5c">}}




{{<matomeQuote body="これPopcornの背後にあるVMだよ https://github.com/software-mansion/popcorn。PopcornはOTPとElixirをWASMで動かすのが目標なんだ。ElixirConfの最新キーノートで紹介されてたよ: https://youtu.be/ep--rQO1FRI" userName="thruflo" createdAt="2025/05/31 21:43:36" color="#45d325">}}




{{<matomeQuote body="Erlangってテレコム出身なのに、モバイル開発の選択肢が少ないのはちょっと意外だね。今後何か出てくるのかな？" userName="amelius" createdAt="2025/05/31 13:48:06" color="">}}




{{<matomeQuote body="Erlangがテレコムで使われたのは主にバックエンドの交換やルーティングだよ。多くのインターネットスイッチもErlangで書かれてるんだ。Erlangがフロントエンド向けに使われるようになったのは最近のこと（Elixirの影響も大きい）。Erlangをモバイルで動かす一番の壁はBEAM VMの移植性の低さだったんだ。だからこのプロジェクト（AtomVM）は超面白いんだよ！" userName="AlphaWeaver" createdAt="2025/05/31 14:12:05" color="#38d3d3">}}




{{<matomeQuote body="Erlangの凄い並行処理とか耐障害性は、電話交換機とかWebサーバーにはすごく良い感じだけど、スマホアプリにはそこまで関係ないことが多いよね。" userName="ramchip" createdAt="2025/05/31 14:06:33" color="">}}




{{<matomeQuote body="バズ・アルドリンは、もしマーガレット・ハミルトンがもっと下手な開発者だったら、アポロ11の乗組員を殺しかねなかったよ。着陸中にオプションの表示を出して、バグでコンピューターに負荷をかけすぎたんだけど、スケジューラーがオプションのタスクを止め続けて、制御システムを動かし続けたんだ。BEAMにも同じようなリアルタイムシステムがあるんだよ。別に重要じゃないソフトと絶対必要なソフトを一緒に動かす時に、こういうのを扱えるものがあるとすごく楽になるんだ。" userName="hinkley" createdAt="2025/05/31 20:08:14" color="#ff5c5c">}}




{{<matomeQuote body="だって、回線がバックホーで切断されるみたいな「変なこと」にも頑丈に対応できるように、汎用プログラミング言語として設計されたんだから。幸いなことに、モバイル端末は回線が切断されるみたいな問題には決して遭遇しないよね？" userName="throwawaymaths" createdAt="2025/05/31 15:38:39" color="">}}




{{<matomeQuote body="プロセス間でメッセージをやり取りするプログラミングモデルは、何百万もの接続が必要なくても、特定の種類のアプリには向いてるんだ。例えば、Elixir＼Erlangは今、特定のIoTアプリで使われてるよ。" userName="vendiddy" createdAt="2025/05/31 15:48:52" color="#38d3d3">}}




{{<matomeQuote body="結局のところ、たくさんのIoTデバイスって、ただメッセージを送ったり受けたりしてるだけじゃない？<br>照明とか、冷蔵庫とか、洗濯機とかね。" userName="hinkley" createdAt="2025/05/31 21:07:48" color="">}}




{{<matomeQuote body="バックエンドとフロントエンド、それと通信の層で言語を統一できたら？" userName="amelius" createdAt="2025/05/31 15:37:18" color="">}}




{{<matomeQuote body="自分のスマホアプリを、キャリアが使ってるネットワーク機器と同じ言語で書かなきゃいけないってこと？ 何言ってんの？" userName="bastawhiz" createdAt="2025/05/31 15:41:15" color="">}}




{{<matomeQuote body="それは極端な例だけど（キャリアは別会社だからね）、TelegramとかWhatsAppみたいなアプリを作るのを考えてみてよ。そしたらフロントエンドからバックエンド、分散コンピューティングまで全部一つの言語でできたらすごく便利だよね。" userName="amelius" createdAt="2025/05/31 15:45:43" color="">}}




{{<matomeQuote body="＞全部一つの言語でできたらすごく便利だよね<br>みんなそう言うけど、個人的にはそんなに役立つと思わないな。フロントエンドとバックエンドは考えることが違うし、大体チームも違うでしょ。クライアントが得意な言語以外を使うと、使い心地が悪くなる傾向があるしね。共通のネットワーキングライブラリを作るのはアリかもしれないけど、他の言語で処理する方が断然楽だと思う。クライアント側の同時処理なんて、サーバー側より全然少ないから大丈夫だよ。" userName="toast0" createdAt="2025/05/31 17:38:41" color="#38d3d3">}}




{{<matomeQuote body="＞ usually different teams<br>「チームが違うと使う言語も違う」ってよく言うけど、それって別の言語を使う理由なの？それとも、そうした結果、チームが分かれるの？" userName="normie3000" createdAt="2025/05/31 19:15:05" color="">}}




{{<matomeQuote body="別の言語を使うことが理由じゃなくて、もし各チームがそれぞれの仕事に効果的な言語を選んでいいなら、自然と違う言語を選ぶ可能性は十分あるね。" userName="toast0" createdAt="2025/06/01 00:15:26" color="">}}




{{<matomeQuote body="それは全然違うって。フロントエンドに最適な言語はプラットフォームが決めるんだ。FirefoxはかつてUIをJavaで書き直したけど、それはXUL版がひどかったから。iOSアプリはJavaで作らないし、AndroidアプリもGoで作らないでしょ？<br>モバイルアプリを全部JavaScriptで作るなんて無理だし、たとえReact Nativeを使っても、クライアントとサーバーの連携部分はJavaScriptじゃない。共有できるのはせいぜいTypeScriptの定義くらい。サーバーのJavaとクライアントのJavaは全然違うし、Swiftも同じ。共有できるのはメッセージのシリアライズ/デシリアライズコードくらい？それも言語じゃなくてライブラリのおかげ。<br>PyodideとかPyScriptもあるけど、誰もそれでフルスタックWebアプリ作らないのは、それで何かすごい問題が解決したり、すごく良くなったりしないからだよ。" userName="bastawhiz" createdAt="2025/06/01 01:14:05" color="#ff5c5c">}}




{{<matomeQuote body="なんで？一人みたいな小さいチームなら、全部一つの言語、一つのリポジトリでやるのはいいかもしれないね。でも、開発者がいっぱいいる大企業なら、あんまり理にかなってない。タスクに一番良いツールを使う方が賢いよ。" userName="victorbjorklund" createdAt="2025/05/31 17:29:13" color="">}}




{{<matomeQuote body="でも、どうして？例えばUIコードをPythonで書きたいってどうして？Pythonの標準ライブラリにはウェブサイト作るのを助けるものなんて何もないよ。PyScriptみたいなツールでDOMは使えるかもしれないけど、そうするとresize handlersとかfetch()とかIntl.NumberFormatとか、必要な他のもののためにいきなりshimsを使うことになる。<br>WebアプリはJavaScript、AndroidアプリはJVMで動く、iOSアプリはAppleのAPIを使えるネイティブコードにコンパイルできるもの。プラットフォームが想定してる言語のランタイムを避けると、そのランタイムから必要な機能を得るためだけに時間のほとんどを費やすことになるのは避けられないよ。" userName="bastawhiz" createdAt="2025/06/01 01:21:50" color="#45d325">}}




{{<matomeQuote body="そのコンパイラとそれが生成するバイナリは、AndroidやLinuxのスマホで問題なく動くよ。" userName="johnnyjeans" createdAt="2025/05/31 17:05:04" color="">}}




{{<matomeQuote body="＞…モバイル開発の選択肢が少ないのはちょっと変だよ<br>ってどういう意味？詳しく説明してくれるかな？ありがとう！" userName="signa11" createdAt="2025/05/31 14:02:10" color="">}}




{{<matomeQuote body="例えば、iOSやAndroidでErlangアプリを動かすためのツールってことだよ。" userName="amelius" createdAt="2025/05/31 14:05:07" color="">}}




{{<matomeQuote body="もう実現されてるよ。<br>https://github.com/elixir-desktop/desktop<br>それに、サーバー主導のちょっと違うやり方もあるんだ。<br>https://github.com/liveview-native/live_view_native<br>特に理想的ってわけじゃないけど、ちゃんと存在するんだよ。" userName="lawik" createdAt="2025/05/31 15:06:21" color="#38d3d3">}}




{{<matomeQuote body="なるほど、わかったよ。Erlangは3G/4Gネットワークのコアにあるゲートウェイノードのプログラミングにもっと向いてるんだね。こういうノードは、携帯が移動する時のモビリティ管理（ハンドオーバーとか）、IPアドレス提供みたいなデータ転送とかを扱うんだ。想像つくと思うけど、こういう機器はサービスプロバイダのネットワークの奥深くに置いてあって、それぞれが何十万ものセッションを処理するんだよ。そして、これらのノードはサービスやセッションごとダウンしちゃダメなんだ。" userName="signa11" createdAt="2025/05/31 14:22:54" color="#ff33a1">}}




{{<matomeQuote body="ErlangとかElixirってTermuxとかAppleの環境でも普通に動くんだぜ。<br>Phoenixとか使えばスマホのブラウザでGUIもイケるらしいよ。結構便利かもね。" userName="cess11" createdAt="2025/05/31 16:58:14" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="GUIって、スレッドモデルがErlangやGoとは違うから、Actorとかグリーンスレッドはいらないんだよ。<br>JSやC#と違って、GUI向けじゃない言語は簡単なパターンでも面倒なコードがいっぱい必要になるんだよね。" userName="dlahoda" createdAt="2025/05/31 14:12:36" color="">}}




{{<matomeQuote body="いやいや、逆にGUIってイベント駆動システムだから、並行性があるとすっごく便利なんだってば！<br>Erlangの得意分野じゃない？" userName="haskman" createdAt="2025/05/31 15:38:03" color="">}}




{{<matomeQuote body="X11ってさぁ、ぶっちゃけ分散システムプロトコルじゃん？<br>GUIなんて、おまけみたいなもんだしw<br>（ちょっとユーモアのあるコメント）" userName="toast0" createdAt="2025/05/31 17:43:27" color="">}}




{{<matomeQuote body="ErlangをIoTデバイスで使う意味って何？<br>どんなユースケースがあるの？<br>俺が知ってるErlangって、もっとデカいマシンで使うイメージなんだけど。<br>（元Erlangエンジニアの意見）" userName="svapnil" createdAt="2025/05/31 19:14:52" color="#ff5733">}}




{{<matomeQuote body="昔のAXD301とかVAXでもErlangは動いてたんだよ。<br>VAXなんて3MHzくらいだったし。<br>ESP32の240MHzとそんなに変わんないでしょ？<br>BEAM VMも何十年も最適化されてきてるからね。" userName="cess11" createdAt="2025/05/31 20:31:59" color="#785bff">}}




{{<matomeQuote body="BEAM VMは確かに最適化されてるけど、SMP対応とかでめっちゃ複雑になってるのも事実。<br>200MHzのマシンでどう動くかは正直わかんないけど、シンプルじゃなくなったのは間違いないね。" userName="simoncion" createdAt="2025/06/01 03:02:00" color="">}}




{{<matomeQuote body="マルチコアサポートとかクラスタリングって、Erlangの初期からの要件だったじゃん？<br>具体的に何が複雑になったと思ってるの？<br>もっと詳しく教えてよ。" userName="cess11" createdAt="2025/06/01 11:47:01" color="">}}




{{<matomeQuote body="マルチコアサポートが「初期要件」ってのは違うと思うな。<br>実験的サポートは2006年（OTP R11B）からだし、最初のリリース（1986年）から20年も経ってるよ。<br>SMPとクラスタリングは別物だし。<br>複雑になったのは、SMP、HiPE、BeamAsm、dirty schedulers、multi time warp、Unicode supportとか色々あるよ。<br>詳しい資料はこちら:<br>https://erlang.org/euc/08/euc_smp.pdf<br>https://user.it.uu.se/~kostis/Papers/erlang03.pdf" userName="simoncion" createdAt="2025/06/01 23:55:21" color="#785bff">}}




{{<matomeQuote body="あー、ごめん、言葉足らずだったかも。<br>2006年ってマルチコアCPUが世に出回った年だから、そのタイミングでサポート出したのは、かかる労力を考えると早かった方なのかなって。<br>OCamlとかと比べても面白いかもね。<br>そういえば、Björn Gustafssonが最近最適化の話してたらしいから、それも面白い情報かも。<br>録画されてるといいな。" userName="cess11" createdAt="2025/06/03 06:32:28" color="#38d3d3">}}




{{<matomeQuote body="ErlangのSMP対応の労力について？<br>ErlangのSMP開発の歴史は前のコメントのPDFに書いてあるよ。<br>これ見てみてね！<br>https://erlang.org/euc/08/euc_smp.pdf" userName="simoncion" createdAt="2025/06/03 07:07:23" color="">}}




{{<matomeQuote body="前のコメントのPDFによるとね、ErlangのSMP開発は1997-1998年に始まって、2005年に再開、安定版が出たのは2006年5月なんだって。<br>Core DuoとかPentium D、Athlon 64 X2みたいなCPUが出たのが2005年とか2006年だから、結構近い時期だね。" userName="cess11" createdAt="2025/06/03 09:17:10" color="">}}




{{<matomeQuote body="これらのCPUが出る10年以上前からマルチソケットのマシンはあったんだよ。<br>Windows NT 4.0やLinux 2.0も1996年にはマルチプロセッサ対応してたし。<br>1997年にErlangのSMP開発が始まったってことは、その頃にはもうSMPのメリットを活かせるコンピューターがあったってことじゃない？" userName="simoncion" createdAt="2025/06/07 01:22:49" color="#ff5c5c">}}




{{<matomeQuote body="なぜErlangが良いかって？<br>Smalltalkみたいに、柔軟なActorモデルベースのアーキテクチャを後押しするんだよね。<br>このプログラミングパラダイムは思ってるより汎用的だし、ホーン句の構文がマジで使いやすいよ。<br>プログラミングがめちゃ楽しくなる感じ！" userName="johnnyjeans" createdAt="2025/05/31 19:20:49" color="#ff33a1">}}




{{<matomeQuote body="SmalltalkはActorモデルとは関係なかったよ。<br>それに、ほとんどシングルコアのシステムだったしね。" userName="sph" createdAt="2025/05/31 21:18:41" color="">}}




{{<matomeQuote body="システムのコア数は関係ないってば。<br>どっちの言語もコード書けば、Actorモデルみたいな自然なアーキテクチャになるんだよ。<br>Erlangだって厳密には違うかもだけど、このメッセージ中心のアーキテクチャを指す言葉としてはデファクトスタンダードでしょ。<br>ActorモデルにSimulaとSmalltalkが影響を与えたのは間違いないんだから、関係ないなんてあり得ない！" userName="johnnyjeans" createdAt="2025/06/04 23:05:12" color="#ff33a1">}}




{{<matomeQuote body="Smalltalkのことはよく知らないんだけどさ、シングルコアのシステムだってことと、Actorモデルみたいな高並行なシステムであることって、全く別の話じゃない？" userName="ninetyninenine" createdAt="2025/06/01 01:56:05" color="">}}




{{<matomeQuote body="それって、SmalltalkがActorベースでも高並行でもなかったっていう事実を変えるわけじゃないでしょ。<br>これ見てみたら？<br>https://news.ycombinator.com/item?id=18333234" userName="sph" createdAt="2025/06/01 05:28:46" color="">}}




{{<matomeQuote body="AtomVMとかErlangが良いのは、マルチタスクOSより安くて、軽量スレッドとメッセージパッシングがウリだからだよ。<br>昔のArduinoみたいなマイクロコントローラーのフレームワークって、イベントとかメッセージベースのプログラミングがやりにくくて、ポーリングばっかりだったんだよね。<br>割り込みとかイベントハンドラで起動して寝る、みたいな古典的なアーキテクチャがあまりなかったんだ。" userName="kwillets" createdAt="2025/06/01 21:35:22" color="#ff5733">}}




{{<matomeQuote body="そういえば、倒産する前だけどBowery Farmsが垂直農場のロボットにBEAMを使ってたらしいよ。<br>多分、ネットワーキングとかクラスタリングが便利だったんじゃないかな。<br>家を自動化するとしてさ、どのデバイスに繋いでも開発アクセスできるってめちゃ良くない？<br>RpiとかGPUノードとかさ。" userName="throwawaymaths" createdAt="2025/05/31 22:31:40" color="#785bff">}}




{{<matomeQuote body="actorとかsupervisorってシステム、信頼性出すのにマジ良いんだよね（あくまで理論だけど）。AtomVMも良いけど、製品として出すならもっと実績あるVMの方が安心できるかもね。" userName="solid_fuel" createdAt="2025/06/02 04:18:58" color="#45d325">}}




{{<matomeQuote body="これ、もともと電話の交換機ハードウェアのために作られたんだぜ。" userName="hinkley" createdAt="2025/05/31 20:02:08" color="">}}




{{<matomeQuote body="いやこれマジでヤバい！esp32のサンプルとか、C言語版と比べ物にならないくらい分かりやすいじゃん。Erlangのactorモデルのおかげでめっちゃ楽！あとはOTAアップデートとホットローディングさえできれば完璧だね！" userName="lsllc" createdAt="2025/05/31 15:10:17" color="#ff33a1">}}




{{<matomeQuote body="OTAアップデートの土台はほぼ固まってるよ。近いうちにAPIを出せるはず。ホットローディングはもうちょい時間かかるけど、OTAができたら可能になると思う。" userName="winford" createdAt="2025/05/31 17:58:49" color="#ff5733">}}




{{<matomeQuote body="Raspberry Pi Pico 2に移植される可能性ってある？Pico 2はRAMが520Kあったと思うんだ。初代Picoは半分だったからさ。" userName="throwaway81523" createdAt="2025/06/01 08:28:15" color="">}}




{{<matomeQuote body="性能が理由の一つだろうね。BEAMのパフォーマンスはせいぜい中の下くらい。それにBEAMのデータモデルに深くコミットする必要があるんだけど、それは今でも大変なのに20年前なら尚更。あと、そもそもJVMとBEAMはほぼ同時期に出てるんだよ。「なんでLispじゃダメだったの？」なら時間的に分かるけど、「なんでBEAMじゃダメだったの？」ってのは筋違いかな。" userName="jerf" createdAt="2025/05/31 16:07:22" color="#ff33a1">}}




{{<matomeQuote body="Erlangは大好きなんだけど、最近BEAMの性能がちょっとボトルネックになってきた。音声の再エンコードみたいな結構ヘビーな処理をピュアErlangでやろうとしたら、自分で適当に書いたコードでもC言語版の50～100倍遅かったんだ。最適化すればもっと速くなるだろうけど、それならRustで書いてNIFかポートで呼び出した方が、適当に書いても十分速いだろうなって。そのうちGMPとかDCTのライブラリをNIF化して皆が使えるようにしたいけど、今はちょっと無理。JavaとかClojureなら、C言語版の2～5倍くらいの遅さで済んで、僕的には十分だったと思うんだ。" userName="tombert" createdAt="2025/06/01 00:00:40" color="#45d325">}}




{{<matomeQuote body="全部まとめてコンパイルして、ガンガンインライン化してみたらどうかな。何をしてるかによるけど、運が良ければかなりスピードアップする可能性はあるよ。処理の流れ全部が1個の関数にインライン化されれば、無駄な計算とか型チェックとか消せるかもしれないし？まあ、それでもNIFの方が結局良いと思うけどね。" userName="toast0" createdAt="2025/06/01 01:02:46" color="#785bff">}}




{{<matomeQuote body="そういう最適化とかも結構考えたし、完全に諦めたわけじゃないんだ。でも自分で締め切り作ってるからさ。時間をかければもっと速くなって、十分使えるレベルになる可能性はある。でもRustなら、適当に書いても多分十分速いんだよね。別にErlangをディスるつもりは全然ないよ。Erlangは素晴らしいし、ネットワーク処理とか、得意な分野ではすごく速いからね。苦手なことで文句言うのは筋違いだし。そういえば、GraalVMを使ってClojureからNIFを動かせないかなって今ふと思ったんだけど…。" userName="tombert" createdAt="2025/06/01 02:01:55" color="#ff5c5c">}}




{{<matomeQuote body="音声エンコードみたいなのはErlangのNIFでやるより、得意な言語で書いて外から呼んだ方がいいよ。NIFは同じプロセス内で必要な遅い処理用なんだ。”音エンコは別プロセスでいいし、NIFの制約で書くのは面倒だよ。" userName="jerf" createdAt="2025/06/01 19:53:30" color="#45d325">}}




{{<matomeQuote body="NIFは使うのに苦労したから、RustでPortsにしたんだ。オーバーヘッドはほとんどないし、別プロセスで十分って意見には賛成だよ。" userName="tombert" createdAt="2025/06/02 17:07:25" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Erlangは1998年まで知られずに独自に使われてたんだよ。Erlang VMはJVMとは目的が違うんだ。" userName="toast0" createdAt="2025/05/31 16:58:03" color="">}}




{{<matomeQuote body="JavaはErlangより10年後なんだ。Javaが流行ってた頃、ErlangはEricssonでめっちゃ使われてて、Javaにしようとしたけど、Erlang開発者たちがフリーソフトにするよう説得したら通っちゃった。それで独立してErlangの会社作った人もいるよ。EricssonがJavaは間違いだったって認めてErlangに戻るのに、2005年までかかったらしい。" userName="cess11" createdAt="2025/05/31 17:08:00" color="#ff5c5c">}}




{{<matomeQuote body="Javaに5年もかけたのに間違いだったって認めて、元のErlangに戻るなんてすごいね。Erlangとか、その考え方が長く使えるってことの証拠だね。" userName="lioeters" createdAt="2025/05/31 18:30:28" color="">}}




{{<matomeQuote body="まあ、ITバブルが弾けてSunがもうダメになりかけの頃だしね。初期の携帯で実績あるものをまた使うのは、リスク管理としては妥当だったのかも。もちろんJavaも使い続けたものもあるけど。" userName="cess11" createdAt="2025/05/31 20:16:37" color="#785bff">}}




{{<matomeQuote body="バイトコード使うやつとか、コンパイラはどっちよりも前からあるし、Erlangは1986年生まれだから、Oak（Javaのことね）より数年早いよ。" userName="pjmlp" createdAt="2025/05/31 16:33:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
