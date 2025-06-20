+++
date = '2025-06-13T00:00:00'
months = '2025/06'
draft = false
title = 'ゼロから自作！BitTorrentクライアントを書いてみた結果'
tags = ["プログラミング", "BitTorrent", "自作", "開発", "ネットワーク"]
featureimage = 'thumbnails/green4.jpg'
+++

> ゼロから自作！BitTorrentクライアントを書いてみた結果

引用元：[https://news.ycombinator.com/item?id=44265851](https://news.ycombinator.com/item?id=44265851)




{{<matomeQuote body="2023年後半からプログラミング始めたんだけど、挑戦したくてBitTorrentクライアント作ることにしたんだ。楽しかったよ。" userName="piyushgupta53" createdAt="2025/06/13 05:08:05" color="">}}




{{<matomeQuote body="すごいじゃん！でも、bencodeデコーダでメモリ確保のサイズ制限しといた方がいいよ。入力が信用できないから、悪意のある入力でDoS攻撃される可能性があるんだ。残りの入力サイズを上限にするのが手軽かもね。" userName="jorkingit" createdAt="2025/06/13 06:26:29" color="#ff5733">}}




{{<matomeQuote body="bencodeデコーダ、もし読むだけならKaitai Struct [0]を使ってみるといいかも。よくある失敗を避けられるよ。[0]: kaitai.io" userName="indrora" createdAt="2025/06/13 22:54:48" color="">}}




{{<matomeQuote body="すごく綺麗でシンプルだね！READMEに簡単な使い方を一行追加してみてはどうかな？例えば `./go-torrent My-Linux-Distro-Wink-ISO.torrent` みたいに。<br><br>あと、URLからTorrentファイルを解析できる機能を追加したらボーナスポイント！<br><br>これはみんな、自分の精神的な成長のためにやるべきことだと思うよ。" userName="vkaku" createdAt="2025/06/13 05:49:58" color="#45d325">}}




{{<matomeQuote body="いいじゃん！codecraftersに、BitTorrentクライアント開発をガイドしてくれるチャレンジがあるよ。テストとかもあって、無料期間に試したけど楽しかったな。これだよ: https://app.codecrafters.io/courses/bittorrent/overview" userName="__jonas" createdAt="2025/06/13 09:42:19" color="">}}




{{<matomeQuote body="これ、超クールじゃん！俺もこんなの考えてたんだよ。どれくらい大変だった？あと、どれくらい完成してる感じ？DHTとかMagnetとかNAT越えとか、ややこしいのも対応してるの？<br><br>たぶん一番のハードルは、一般的なTorrentでちゃんと動くクライアントに必要な機能が全部把握できないことだと思うんだよね。Torrent関連のプロトコルってめちゃくちゃいっぱいあって、リストすら分からないし、それぞれ何をするのかも全く知らないわ。" userName="throwaway894345" createdAt="2025/06/13 05:20:59" color="">}}




{{<matomeQuote body="確かに大変だったよ。プロトコルとかbencodingがどう動くか理解して、頭の中で整理してからコード書き始めるまで、一ヶ月近くかかったかな。MagnetとかDHTはまだ追加してないんだ。" userName="piyushgupta53" createdAt="2025/06/13 05:22:53" color="#ff5733">}}




{{<matomeQuote body="俺の経験だと、Magnetは結構シンプルだったな。DHTはマジで沼で、対応してるクライアントを探すのも大変かもしれないね（全部のクライアントが対応してるわけじゃないから）。" userName="Charon77" createdAt="2025/06/13 10:19:07" color="#38d3d3">}}




{{<matomeQuote body="開発の難しさは経験や言語、実験精神で変わるよ。俺はGoの経験もネットワーク知識も豊富だから、1週間で記事の8割くらいできたぜ。BEP_0003の仕様は1時間もあれば読めるくらい小さい。Linux配布版みたいに正規プロトコルでいいなら簡単だけど、普通のコンテンツだと磁気リンクやDHT、UPnPもいるね。でも、それも一つずつ追加できるよ。<br>https://www.bittorrent.org/beps/bep_0003.html" userName="CactusRocket" createdAt="2025/06/14 08:27:24" color="#785bff">}}




{{<matomeQuote body="開発プロセスに関するドキュメントとか出す予定ある？コードより、どういう風に実装したかのプロセスの方に興味あるんだよね。" userName="muyuu" createdAt="2025/06/18 16:28:55" color="">}}




{{<matomeQuote body="Go開発者じゃないんだけど、なんで古いGo 1.21を使ってるの？古いままにしてる理由でもあるの？追記：10ヶ月前に非推奨になってるみたいだね。" userName="ashirviskas" createdAt="2025/06/13 08:12:33" color="">}}




{{<matomeQuote body="古いGoバージョンを使ってるのはWindows 7をサポートしたいからだよ。Go 1.21.4より前なら全てのWindowsと2009年以降のPCで動くけど、1.21.5以降はWin10/11とか新しいPCだけになるんだ。<br>https://github.com/golang/go/issues/64622" userName="pidgeon_lover" createdAt="2025/06/13 12:55:02" color="#785bff">}}




{{<matomeQuote body="Windows 7を普段使うべきじゃないって意見には同意。でも、手間がかからずサポートできるなら、それは良いことだと思うよ。古いAmigaじゃなくて古いWindowsだとしても、対応できるプラットフォームが多いのはいいことだろ？" userName="wongarsu" createdAt="2025/06/13 14:40:28" color="">}}




{{<matomeQuote body="「犠牲なく」ってことはないだろ？常にトレードオフはあるよ。Goチームはふざけて新バージョン出してるわけじゃないし、1.21以降にも改善はある。特に1.22のforループ変数の修正はバグを防ぐのに役立つ。古いプラットフォームのユーザーが多くいると予想できるならサポートもわかるけど、そうじゃないなら言語とかツールの改善を使わない理由はない。何かしら代償は払ってるんだよ。" userName="CactusRocket" createdAt="2025/06/14 08:05:40" color="#ff5733">}}




{{<matomeQuote body="このプロジェクトには、その「改善」は必要ないんだよ。" userName="dd_xplore" createdAt="2025/06/14 08:10:28" color="">}}




{{<matomeQuote body="READMEはAI生成っぽいね。実際のgo.modファイルにはGo 1.23.1って書いてあるし、Go 1.23.1以上が必要ってことじゃない？<br>https://github.com/piyushgupta53/go-torrent-client/blob/6130...<br>https://go.dev/doc/modules/gomod-ref#go-notes" userName="koito17" createdAt="2025/06/14 02:15:03" color="#785bff">}}




{{<matomeQuote body="Go 1.21には内部で自動でGoバージョンを上げてくれる機能があるから、go.modのバージョンを見て後のGoバージョンでもコンパイルできるんだよ。だからREADMEは間違ってない。" userName="dlock17" createdAt="2025/06/14 21:34:01" color="">}}




{{<matomeQuote body="自動ツールチェイン切り替えは、後のバージョンをコンパイルするんじゃなくて、取ってきて使うだけだよ。Windows 7みたいにGo 1.21はOKだけど1.23.1がダメなシステムだとビルドできない。自動切り替えを無効にしててもダメ。だから、最低必要なGoバージョンはgo.modに書いてあるバージョンだって言えると思うよ。<br>https://go.dev/doc/toolchain#select" userName="koito17" createdAt="2025/06/14 23:14:24" color="#785bff">}}




{{<matomeQuote body="お〜、いいね！これ大学時代を思い出すよ。Georgia Tech のネットワーキングの授業で最終プロジェクトでやったんだ。コードはとうの昔に失くしちゃったけど、学んだことは今も生きてる :) こういうプロジェクトは新しい言語を学ぶのにも最高だね！" userName="agiron123" createdAt="2025/06/13 06:49:36" color="">}}




{{<matomeQuote body="挑戦するのにすごく良いプロジェクトだね！似たようなことをやったけど、他の人の bencode エンコーダー/デコーダーを見ると謙虚になったよ。言語の機能を試すのにも良い方法だね！もちろん大きなライブラリの全機能に合わせようとするのは大変だし、クライアント間の互換性も既に不足してると思うけど…" userName="mikeponders" createdAt="2025/06/15 22:21:56" color="">}}




{{<matomeQuote body="magnet links に対応してる？<br>追記: ああ、計画中の機能か。" userName="NooneAtAll3" createdAt="2025/06/13 05:25:43" color="">}}




{{<matomeQuote body="まだだよ。すぐ追加するつもり。" userName="piyushgupta53" createdAt="2025/06/13 05:26:07" color="">}}




{{<matomeQuote body="これにGUIを追加するのはどれくらい大変かな？GoでGUI実装をあんまり見たことないんだけど。" userName="TheEdonian" createdAt="2025/06/13 07:36:00" color="">}}




{{<matomeQuote body="たくさんあるよ。<br>https://github.com/go-graphics/go-gui-projects<br>個人的なお気に入りは ImGui のラッパー https://github.com/AllenDang/giu だね。<br>一番機能が豊富なのは多分 unison だけど、自分のプロジェクト以外で使われてるかは不明 https://github.com/richardwilkes/unison<br>Gio はGUIの考え方が違う https://gioui.org<br>ウェブ開発に慣れてるなら Wails が良い https://wails.io<br>GTK4 バインディングも良さそう https://github.com/diamondburned/gotk4<br>Cogent Core も neat だけど試せなかった https://www.cogentcore.org/core<br>Fyne は問題ばかりだったけど、多分一番人気 https://fyne.io" userName="thegeekpirate" createdAt="2025/06/13 21:41:21" color="#ff5733">}}




{{<matomeQuote body="Fyne のパフォーマンス（や他の問題）には全く同感だよ。試すたびに、なんでこんなに人気なのか正直驚くね。<br>先週、この Qt bindings https://github.com/mappu/miqt を見つけたんだ。個人的にはまだ経験はないけど、試すのが楽しみだよ。" userName="CactusRocket" createdAt="2025/06/14 08:18:52" color="">}}




{{<matomeQuote body="これを作るのに何を参考にしたの？プロトコル仕様書を読んだのか、他の実装を辿ったのか？ゼロからこういうのを作るのがどうやってるのかいつも気になるんだ。" userName="vivzkestrel" createdAt="2025/06/14 04:37:51" color="">}}




{{<matomeQuote body="面白いことに（そうでもないかもだけど）、僕も先週 BitTorrent クライアントを書き始めたんだ、同じく Go でね。AI/LLM でコーディングするのはあまり好きじゃなくて、本当にそこから学びたいんだ。AIが書いたコードを納品するだけじゃなくてね…<br>だから最初のステップは、プロトコルの実際の仕様があるか確認すること。まあ、BitTorrent の場合仕様はあるんだけど…簡潔すぎるんだ。基本的に仕様はこれ: https://www.bittorrent.org/beps/bep_0003.html<br>追加の拡張はこちら: https://www.bittorrent.org/beps/bep_0000.html<br>作業をごく小さいステップに分解して、それぞれで何らかの結果を出すことがすごく大事。例えば、僕は .torrent ファイルのパースから始めたんだけど、そのためには bencoding を実装する必要があるんだ。<br>それが面白かったのは、Arch Linux の .torrent をダウンロードしたら、基本的に間違ってることに気づいたこと。url-list キーが入ってたんだけど、仕様には書かれてないんだ。そしたら、それについて何なのか調べるラビットホールに入ることになる（https://www.bittorrent.org/beps/bep_0019.html だったと判明）。最終的に、Debian Linux の .torrent ファイルは無事パースできたよ。<br>次に Tracker Announce HTTP リクエストとピアプロトコルの実装に進んだ。ピアプロトコルは難しくて、実験するマインドセットが役に立つ。Debian torrent から announce URL を取り除いて KTorrent に読み込ませたんだけど、そうするとピアが見つからなかったんだ。「Add peer」オプションを使って自分のクライアントを追加して、KTorrent が送ってくるメッセージを見られるようにした。同時に、KTorrent にメッセージを送る実装もやった。試行錯誤とデバッグの連続だよ。<br>正直に言うと、時々 ChatGPT に小さなプロトコルの詳細を聞かなきゃいけないこともあった。仕様には載ってないからね。それと、クライアントが長い時間をかけて実装してきたけど、あまりよくドキュメント化されてない詳細もたくさんあるんだ。主に、どのピースをダウンロードするか、どのピアを選ぶか、choke/unchoke をどうするか、などのアルゴリズムはあまり明確に定義されてない。でもウェブ検索がすごく役に立つよ。<br>あと、https://wiki.theory.org/Main_Page も参考になったことを特筆しておくね。<br>今、僕のクライアントでローカルの KTorrent と torrent の完全なダウンロードとアップロードができるようになった段階だよ。だから次のステップは、実際に tracker からピアを取得して、ピースをダウンロードしてファイルに保存するためのアルゴリズムだ。<br>これで何か insight が得られれば良いな。プロセスについて具体的な質問があれば教えてね。" userName="CactusRocket" createdAt="2025/06/14 08:17:13" color="#45d325">}}




{{<matomeQuote body="俺は投稿者じゃないけど、今はライブラリとしては使えなさそうだよ。ほとんどのコードが”internal”っていうディレクトリにあって、他のプロジェクトで依存関係として使おうとしてもアクセスできないからね。" userName="CactusRocket" createdAt="2025/06/14 08:29:09" color="#785bff">}}




{{<matomeQuote body="コメントがさあ・・・うーん、機械生成っぽいぞ。https://github.com/piyushgupta53/go-torrent-client/blob/main・・・あと、こんなに新しいアカウントがひとつの投稿にコメントしてるの、今まで見たことないよ。みんな、これ仕組まれてるぞ・・・" userName="blibble" createdAt="2025/06/13 07:01:28" color="">}}




{{<matomeQuote body="うん、すごく変だね。AIを使って最初のアプリを作って、生成されたコメントをコードに残すのは全然問題ないと思うんだ。でも、このスレッドで”This is so cool”で始まるコメントの数が多すぎるのはすごく怪しいよ。" userName="spuz" createdAt="2025/06/13 07:32:24" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ShowHNの投稿に”This is cool”って書くのがおかしいとは思わないな。俺も[ここ](https://news.ycombinator.com/item?id=44265915)でやったし、俺がAIじゃない限りはね。AIコメントを見分ける方法についてもっと情報いる？（冗談）" userName="throwaway894345" createdAt="2025/06/13 14:28:29" color="">}}




{{<matomeQuote body="他のリポジトリをざっと見てみたけど、この人、プログラミングは数年やってるみたいだね。最近のリポジトリいくつかで‘.cursor/rules’っていうディレクトリがあるんだ。だから「ゼロから自作！BitTorrentクライアントを書いてみた結果」は「CursorからBitTorrentクライアントを生成してみた結果」なのかもって仮説は合理的だと思うよ。" userName="OtherShrezzing" createdAt="2025/06/13 07:32:17" color="#45d325">}}




{{<matomeQuote body="「convert length string into an integer」って機械生成コメント？俺15年以上コード書いてるけど、これ見てマジで爆笑したよ。コメントは素晴らしい、俺は読まないけど特にオープンソースコードでは他の人のために書くんだ。Atoiが君や俺や大勢が知ってても、知らない人には良いコメントだよ。落ち着きなって！ :)" userName="diagraphic" createdAt="2025/06/13 07:48:30" color="#ff5c5c">}}




{{<matomeQuote body="そのコメントはAI生成だったって強い兆候だよ。LLMはコードが自明でも余計なコメントを残す傾向があるんだ。この場合、strconvはよく知られたstdlibパッケージだし、IDEで読めばドキュメントが見れるはず。<br>実際、この関数やほとんどのファイルのコメントは冗長で、コードレビューなら俺は指摘するね。でもこれはvibe codedだから、人間がレビューした可能性は低いよ。" userName="imiric" createdAt="2025/06/13 08:54:41" color="#785bff">}}




{{<matomeQuote body="テストを見るともっと分かりやすいね。例えば、このGitHubのコミットで見れるよ：<br>https://github.com/piyushgupta53/go-torrent-client/commit/61...<br> crawled resourcesからの文字列（lengthi12345e4みたいだけど少し違うトークン）もあるね。Gemini Pro 2.5はプロンプトまで教えてくれたんだ。「GoでBencodeデコーダー関数Decodeのユニットテストを生成してって頼んだら、あなたのコードにそっくりなのが出てくると思うよ。それはGoのよく書かれたテストの良い例で、私が認識して再現することを学んだパターンだ」ってね。<br>新しい会話で聞くと実際たくさん一致するんだ。だからCursor + Gemini 2.5 Proを使った可能性が高いね。でも責められないな。俺は100パーセントClaudeを使ってるし、コードには自分で責任を持ってるよ。" userName="rvnx" createdAt="2025/06/13 07:58:10" color="#ff5733">}}




{{<matomeQuote body="”TODO: 各コンポーネントを開発しながら、実際の機能を開発する”だって、ワラワラ。<br>正直言うと判断するのは難しいね。誰かがAIを使ったって言わない限り、どんなプロジェクトもAI製だとは言えないよ。俺もコードにたくさんコメントを書くから、人が使ったと言わないと何もAIとは呼べないんだ。<br>Claudeは確かにまともだけど、AIを使うときはいつも、計算機に飛びつく前に数学を学べって言ってるよ。" userName="alexpadula" createdAt="2025/06/13 08:07:58" color="">}}




{{<matomeQuote body="シーディングなし、DHTなし、マグネットリンクなし、uTPなし、拡張機能なし。この段階じゃBitTorrentダウンローダーであって、クライアントじゃないね。ダウンロード専用モードでP2Pネットワークを使う、いわゆるリーディングやフリーライディングは推奨されないよ。" userName="ivanjermakov" createdAt="2025/06/13 07:54:39" color="#ff5733">}}




{{<matomeQuote body="このプロジェクトを称賛してる新規アカウントが多いのはどうしたんだ？" userName="Moosdijk" createdAt="2025/06/13 07:51:46" color="">}}




{{<matomeQuote body="誰か（投稿者本人かそうでないか）が、無料で広告するためにHNをどれだけうまく使えるかテストしてるみたいだね。" userName="ivanjermakov" createdAt="2025/06/13 08:00:34" color="">}}




{{<matomeQuote body="緑色のユーザー名が二人しか見えないけど。他の人たちはもう削除されたのかな？" userName="throwaway894345" createdAt="2025/06/13 14:24:40" color="">}}




{{<matomeQuote body="どうやってみんなこんなことを許されてるんだろうっていつも思ってたんだ。HNのモデレーターがこういうプロジェクトをトップにするのを許したり、本物のボットの「いいね」やコメントを許したりしてるなんて。おかしいよ。価値のあるプロジェクトや投稿が全部一番下になっちゃうじゃないか。" userName="alexpadula" createdAt="2025/06/13 08:04:09" color="">}}




{{<matomeQuote body="みんながそうじゃないけど、生存バイアスってのがあるかもね。もしヤバいと思ったら、hn@ycombinator.comのモデレーターにメールしてみな。結構すぐ対応してくれるよ。" userName="fragmede" createdAt="2025/06/13 08:06:30" color="">}}




{{<matomeQuote body="低評価されたのは、多分ここのガイドライン（https://news.ycombinator.com/newsguidelines.html）にある、自演とかボットとかの非難に対する慣習に反してるからじゃないかな。もし投稿がおかしいと思ったら、hn@ycombinator.comのモデレーターにメールしてみてよ。" userName="pvg" createdAt="2025/06/13 08:55:24" color="#45d325">}}




{{<matomeQuote body="で、AIが作った返信って結局何がしたいの？しかもあからさまなユーザー名でさ。" userName="thekevan" createdAt="2025/06/13 07:12:15" color="">}}




{{<matomeQuote body="しかもアカウントがさ、今見たら1時間しか経ってないんだぜ。" userName="Moosdijk" createdAt="2025/06/13 07:49:47" color="">}}




{{<matomeQuote body="なかなか良い試みだけど、クラッシュリカバリ、暗号化ピアハンドシェイク、基本的なuTPサポートの話がないね。NATでどうなるかも不明だし。パースする時のメモリ安全策もないから、実際のswarmだとリスキーな気がする。これらが無いとproductionでは安全じゃないね。CLIだけじゃなくlibとしても使えるようにモジュール化されてると良いな。roadmapも追えると助かる。" userName="b0a04gl" createdAt="2025/06/13 07:29:47" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
