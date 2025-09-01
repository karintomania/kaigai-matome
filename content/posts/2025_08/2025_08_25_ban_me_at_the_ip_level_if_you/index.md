+++
date = '2025-08-25T00:00:00'
months = '2025/08'
draft = false
title = '真面目なクローラー開発者の叫び「気に入らないならIPでBANしろ！」'
tags = ["クローラー", "アンチボット", "ネットワーク", "プログラミング", "セキュリティ"]
featureimage = 'thumbnails/purple1.jpg'
+++

> 真面目なクローラー開発者の叫び「気に入らないならIPでBANしろ！」

引用元：[https://news.ycombinator.com/item?id=45010183](https://news.ycombinator.com/item?id=45010183)




{{<matomeQuote body="親切なクローラー作ってるのに、robots.txtにまでアンチボット対策されて困ってるんだ。Slow Lorisみたいにダウンロードが遅くて、最初は404と間違えてクロールしちゃったよ。今はタイムアウトしたらDisallow /として処理するようにコードを変えたけど、ルール守ろうとしてるのにアンチボットツール対策しなきゃいけないのって変だよね。" userName="8organicbits" createdAt="2025/08/25 11:39:40" color="#ff5733">}}




{{<matomeQuote body="それって、泥棒避けにドアベルを隠すみたいなもんじゃん。" userName="navane" createdAt="2025/08/25 12:36:12" color="#785bff">}}




{{<matomeQuote body="Slow Lorisみたいなケースは、サーバーアプリみたいにクライアント側でも、相手が悪質ならTCP接続を黙って切っちゃうのがいいよ。そうすれば、相手はしばらくの間、気づかずにリソースを無駄にし続けるからね。" userName="ronsor" createdAt="2025/08/25 20:27:06" color="#ff33a1">}}




{{<matomeQuote body="TCP接続を黙って切るって、どうやるの？ ソケットfd閉じるとFINパケットが送られちゃうでしょ。それに、カーネルが次にデータ送った時にRST送るから、そんなにリソースも使わないんじゃないかな？" userName="conradludgate" createdAt="2025/08/25 21:23:30" color="#ff33a1">}}




{{<matomeQuote body="TCP_REPAIRっていうのがあるよ: https://tinselcity.github.io/TCP_Repair/" userName="ronsor" createdAt="2025/08/25 21:32:40" color="#38d3d3">}}




{{<matomeQuote body="それってわざとじゃないと思うな。robots.txt守らないヤツは、そもそもダウンロードなんてしないし。無能さで片付くことを、悪意だって決めつけちゃダメだよ。" userName="brianwawok" createdAt="2025/08/25 15:15:08" color="#45d325">}}




{{<matomeQuote body="悪意あるやつらでも、クロールされたくないページを見つけるためにrobots.txtをダウンロードするかもしれないよ。" userName="aequitas" createdAt="2025/08/26 08:16:33" color="#ff33a1">}}




{{<matomeQuote body="たぶん、ボットのレート制限をしようとする、ひどいやり方なんだろうね。" userName="cyanydeez" createdAt="2025/08/26 00:19:01" color="">}}




{{<matomeQuote body="君が真剣に取り組んでることに本当に感謝するよ。皮肉じゃなくてね。君は正しいことをしてるし、それが違いを生んでるよ。robots.txtを遅延させるのは間違いかもしれないけど、より興味深いページを見つけるボットへの素早い対処法でもあるんだ。人間が見ないページだから、tarpitにすれば情報も与えず、速度も落とせるしね。君の仕事に影響するのは残念だけど、悪いボットに怒ってるウェブサイトオーナーは、そんな区別気にしないだろうし。" userName="NegativeK" createdAt="2025/08/25 15:47:31" color="#38d3d3">}}




{{<matomeQuote body="「人間は`robots.txt`なんて見ない」って言うけど、それは違うな。フォーマットを思い出すため、隠してるものがないか確認するため、サイトのディレクトリ代わりに、メインのダッシュボードがオフラインの時にサイトが機能してるかテストするため、いろんな理由で結構見てるぞ。" userName="gabeio" createdAt="2025/08/25 16:10:29" color="#ff33a1">}}




{{<matomeQuote body="お前、本当に人間か？" userName="sdenton4" createdAt="2025/08/25 16:25:03" color="">}}




{{<matomeQuote body="ああ、人間だよ。何回も「お前は人間か？」ってチェックボックスをパスしてるからな。でも正直、娘たちにもいつも同じ質問されるし、もしかしたら俺が人間じゃないって信じ込ませるための壮大な陰謀で、チェックボックスが嘘ついてる可能性も捨てきれないぜ。" userName="gspencley" createdAt="2025/08/25 20:08:11" color="">}}




{{<matomeQuote body="これ見てみろよ -＞ https://www.youtube.com/watch?v=4VrLQXR7mKU --- でも、`CAPTCHA`をパスできるってことは、むしろロボットの証拠だと思うけどな。" userName="nullc" createdAt="2025/08/25 22:12:26" color="">}}




{{<matomeQuote body="`robots.txt`は、`CORS`や`CSP`の問題なくコンソールからドメインにリクエストを送りたい時に使うんだ。静的ファイルだからクライアントサイドのコードが邪魔せず、テストにすごくいい。脆弱性を探すなら（特にクローラーの`UA`を使って）隠れたエンドポイントやフレームワーク固有のパスが漏れてないか探ってみる価値はあるぜ。" userName="ghxst" createdAt="2025/08/25 21:11:07" color="#45d325">}}




{{<matomeQuote body="`robots.txt`のダウンロードに時間がかかる「`slow loris`アプローチ」の話だけど、真面目にアクセスしようとしてる人にだけ不利になるようなペナルティは逆効果だと思うね。" userName="jandrese" createdAt="2025/08/25 23:56:11" color="#ff5733">}}




{{<matomeQuote body="いや、違うよ。`Slowloris`は`Wordle`よりずっと前からある攻撃だよ。" userName="bananananananan" createdAt="2025/08/25 21:01:39" color="">}}




{{<matomeQuote body="いや、なんでそう思うんだよ？その攻撃名は、動物の`slow loris`から何年も前に名付けられたんだ。" userName="jeltz" createdAt="2025/08/25 22:55:49" color="">}}




{{<matomeQuote body="その話、すごく面白そうだから記事を書いてみない？" userName="Snacklive" createdAt="2025/08/26 14:33:09" color="">}}




{{<matomeQuote body="頭良い人たちがWebスクレイピングに乗り気になってるけど、サイトに深刻な影響がないなら、これってただのイデオロギー的な陣取りゲームだよね。勝っても時間を無駄にするだけだよ。<br>負荷を軽減する最善策は、高速でしっかり設計されたWebプロダクトを持つこと。これは良いことだよ、だって人間の顧客も喜ぶからね。" userName="bob1029" createdAt="2025/08/25 08:35:48" color="">}}




{{<matomeQuote body="僕の友達のGiteaインスタンス、小規模なのに毎時数千件もbotからリクエストが来てるんだ。サービスには影響なくても、これは嫌がらせに感じるよ、ごめんけど。" userName="phito" createdAt="2025/08/25 08:40:29" color="">}}




{{<matomeQuote body="うん、ログを読むのが無駄に大変になるんだ。たまに変なパスワードのプローブを見つけて、Webで調べたら、新しいバックドアが発見されたとか面白い話にたどり着くこともあるよ。<br>でも、ログの洪水で、ジャーナリングサービスがログを切り捨てちゃって、何か重要なことを見逃す可能性もあるからね。" userName="dmesg" createdAt="2025/08/25 08:46:16" color="">}}




{{<matomeQuote body="世の中の全てのIPv4アドレスは、悪意のあるトラフィックを常に受けてるし、サーバーを公開したら、これって当たり前のことだよ。<br>WAFとかリバースプロキシとかで、リクエストがアプリに届く前に対応すべきだね。<br>あと、1000 req/hourなんて1秒に4回のリクエストだから、公開エンドポイントなら統計的にはゼロ rpsだよ。" userName="kiitos" createdAt="2025/08/25 15:18:15" color="">}}




{{<matomeQuote body="ログから変なパスワードを見つけるって話だけど、それって無責任すぎない？<br>ハッキングされたら、今度は君が新しい『面白い話』になるんだよ？<br>みんな、パスワードマネージャーを使って、全部ランダムなパスワードを選んで使おうね。" userName="rollcat" createdAt="2025/08/25 10:51:31" color="">}}




{{<matomeQuote body="この問題、過小評価されてる気がするんだ。<br>バックグラウンドスキャナーのノイズは普通だけど、AIスクレイピングはレベルが違う。WikipediaもLLMがスクレイピング始めてからインフラコストが急増したって言ってるし、僕の小規模Wikiでもデータ使用量が『気にならない』レベルから『サイトを維持したくない』レベルにまでなったよ。<br>ボットネットやDDOSグループは法執行機関にターゲットにされるけど、AI企業は利益のためにやってて、それを許容しろって言われてる。これは『インターネットだから仕方ない』じゃなくて、意図的な悪意ある行為だよ。" userName="NegativeK" createdAt="2025/08/25 15:41:20" color="#38d3d3">}}




{{<matomeQuote body="パスワードがログに残るって、それ、すごく間違ってるよ。" userName="JohnFen" createdAt="2025/08/25 12:26:21" color="">}}




{{<matomeQuote body="この問題の深刻さ、君は全然分かってないと思うよ。<br>昔、Webアプリのアプリケーションレベルのパフォーマンスを担当してたんだけど、リクエストの60%が既知のボットだったんだ。彼らはいつも同じページを叩いてキャッシュを占領するから、本当のユーザーはキャッシュされた応答を受け取れなかった。<br>あるボットは数分ごとに全ページをスクレイピングし直したり、バックエンドが遅くなるまでスループットを上げ続けたり、JavaScriptを動かしてフォーム送信までエミュレートしたりしてた。<br>Googleのボットは行儀が良い方だったけどね。後で分かったんだけど、これって初期段階のAI企業がデータをスクレイピングしてたんだよ。" userName="sidewndr46" createdAt="2025/08/25 16:14:13" color="#ff5c5c">}}




{{<matomeQuote body="パスワードもログってるの？" userName="wvbdmp" createdAt="2025/08/25 08:53:56" color="">}}




{{<matomeQuote body="1時間に数千リクエストって、現代のサーバーには大したことないと思うんだけど。Giteaなら1分間に数千のリクエストでも余裕でさばけるはずだから、そんなにイライラする意味がわからないよ。" userName="wraptile" createdAt="2025/08/25 09:36:08" color="#ff5c5c">}}




{{<matomeQuote body="1時間に数千リクエストって1秒に1～3件くらいだよね？もし体感のQoSに影響してるなら、Giteaにバグ報告してもいいんじゃない？明らかにパフォーマンスが低下してるよ。<br>ログを覗くのは多くの人にとって情報災害でしょ。どうしても必要じゃない限り、インターネットの浄化槽なんて見たくないもんね。" userName="bob1029" createdAt="2025/08/25 09:04:28" color="#45d325">}}




{{<matomeQuote body="Wikipediaはデータベースダンプをダウンロードできるのに、スクレイピングするなんて変なの。" userName="0x457" createdAt="2025/08/25 21:00:57" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="顧客が業者に不正リクエスト攻撃をさせてて、Splunkで正規の問題を探すときに邪魔だったよ。<br>うちが生成した悪いURLがnofollowリンクに載ってたのか、3年経ってもボットがそれを読み込もうとしてる。<br>Googleのボットに429を返すとPageRankを下げられるのは恐喝だよ。Googleがお行儀良いって意見には同意できないな。nofollowリンクの件とか、バニティURLでコンテンツ提供してる場合もひどいよ。" userName="hinkley" createdAt="2025/08/25 21:59:29" color="#ff5733">}}




{{<matomeQuote body="個人攻撃はやめてね。ちゃんとした意見は攻撃なしでも言えるはずだよ。" userName="dang" createdAt="2025/08/25 21:51:04" color="">}}




{{<matomeQuote body="攻撃してくるボットは、君のウェブサーバーがウェブインターフェースをネットに公開してる誤設定のルーターじゃないってわかると思う？俺は、人が記事を半分しか読まないで結論を出すことにいつも戸惑うよ。<br>ポート80と443でSSH 2.0のログインを試みるボットに攻撃されたこともあるんだ。コンピュータサイエンスがどれだけ苦手なスクリプトキッズがいるかを一部の人は過小評価してるね。" userName="dmesg" createdAt="2025/08/25 12:50:33" color="#ff33a1">}}




{{<matomeQuote body="誰もパスワードを意図的にログったりしないよ。でも、すごくバカなIoTデバイスはクエリ文字列とかパスの一部として認証情報を受け入れるから、それらがログに記録されるのはよくあることなんだ。<br>攻撃者は、もっとセキュリティの低いシステム向けのパスワードを送ってきてるんだよ。" userName="zeta0134" createdAt="2025/08/25 15:04:02" color="#ff5733">}}




{{<matomeQuote body="「拡散された、識別できないグレーゾーンの参加者からの負荷を軽減する最善の方法は、高速で適切に設計されたWeb製品を持つこと。」<br>みんな、どうやったら自分のサーバーがそんなトラフィックを処理できないのか不思議だよ。単純なIPベースのレート制限で十分じゃない？俺なんて月1ドルのVPSだけど、そのポンコツでさえ1秒に数千リクエストを処理できるんだぞ。" userName="threeducks" createdAt="2025/08/25 10:42:46" color="#785bff">}}




{{<matomeQuote body="giteaやforgejoからのファイルリクエストはめちゃくちゃ重いんだよ。特にLinuxのリポジトリミラーとかに遭遇すると、ボットは自分で自分を遅くしちゃう傾向があるんだよね。<br>https://social.hackerspace.pl/@q3k/114358881508370524" userName="q3k" createdAt="2025/08/25 09:50:26" color="#38d3d3">}}




{{<matomeQuote body="ユーザー名とかフォームの入力内容をログに残すのはやめたほうがいいよ。ユーザーが間違ってパスワードを入力しちゃうかもしれないからね。フォームの意味がなくなるけど、セキュリティは大事だからさ！" userName="SoftTalker" createdAt="2025/08/25 16:12:45" color="#ff5733">}}




{{<matomeQuote body="マジで最悪なのは、ボットがSMTPみたいな有名ポートにまでHTTPトラフィックをぶっ放すことだよな。メールサーバーだって、接続したらすぐに自分だと名乗るのに。ちょっと待てばHTTPじゃないってわかるはずなんだから。ログをゴミでいっぱいにする必要なんて全然ないんだよ！" userName="ralferoo" createdAt="2025/08/25 13:17:31" color="#45d325">}}




{{<matomeQuote body="3人も同じ結論になったことにビックリだよ。彼らってオープンなウェブでサーバーを動かしてないのかな？スクリプトキディは常にURLを探してるし、ログにも出てくるじゃん。もしアプリがそんな設計だったらヤバいけど、実際は違うんだ。スクリプトキディがそうだと期待してるだけ。／wp-login.phpにアクセスされたからって、俺のRailsアプリが突然WordPressになるわけじゃないしね？" userName="socksy" createdAt="2025/08/25 14:33:45" color="#ff5c5c">}}




{{<matomeQuote body="AIスクレイパーBotが迷惑トラフィックを悪化させてるのは事実だけど、公開してる以上、悪意あるトラフィックに対応するのは最終的に自分たちの責任だよな。「インターネットってそういうもんだろ」って言えるレベルを超えたら、それはもう悪意だよ。今のAIスクレイパーのトラフィックが、これからの「インターネットってそういうもんだ」になるのかもしれないね。" userName="kiitos" createdAt="2025/08/25 15:56:58" color="#45d325">}}




{{<matomeQuote body="高速なウェブサービスを作るには、データに金払うんだよ。だから、迷惑な奴らをBANしても「時間を無駄にした」なんてことない、むしろ帯域と計算費用の節約になるんだから。おまけに、本当のお客さんには迷惑がかからないしね。これのどこが俺が密かに利用されてるってことになるのか、全然わかんないわ。" userName="themafia" createdAt="2025/08/25 09:11:49" color="#ff5733">}}




{{<matomeQuote body="ここで皮肉を言ってるのがいいね。俺ホスティング会社で働いてるんだけど、クローラーで文句言う客って、ウェブページがめちゃくちゃ遅いやつらだけなんだよね。正直、同情する気にもなれないわ。" userName="dkiebd" createdAt="2025/08/25 15:46:45" color="#785bff">}}




{{<matomeQuote body="「GoogleのBotに429を返したらPageRank下がるって？クラウドサービスも売ってる会社からの恐喝じゃん。」<br>GooglebotはGCPとは違うIPアドレスを使ってるんだよ。" userName="dilyevsky" createdAt="2025/08/26 03:52:04" color="#45d325">}}




{{<matomeQuote body="これ、WordPressの既知の脆弱性を狙ったリクエストだって気づくとさらにウケるね。まさかポート22でそれ動かしてるやついる？" userName="sidewndr46" createdAt="2025/08/25 16:17:19" color="">}}




{{<matomeQuote body="ジョークのために”ロギング”のすごく変な定義使ってない？Webフォームは動くのにロギングなんて必要ないでしょ。" userName="Dylan16807" createdAt="2025/08/25 20:25:56" color="">}}




{{<matomeQuote body="ログで見たよ。自己申告ボットはまだマシだけど、ブラウザ装う大量IPボットが厄介。<br>id=URLの帯域制限やキープアライブ無効化は効果なし。<br>今はid=を含むURLは`notbot`クエリパラメータがないと403にする対策中。これで負荷は減ったけどボットはしつこい。<br>結局、サイト特有のアドホック対策か、Cloudflareみたいな専門サービスを使うしかないって結論だね。標準対策は効かないよ。" userName="boris" createdAt="2025/08/25 07:49:32" color="#ff33a1">}}




{{<matomeQuote body="MSIE 3.0とかHP-UXみたいな変なUAを選んで、事前に403でブロックしちゃえ（独自のリストを作るんだ）。数日後には、これらの403ログから問題のあるASNを絞り込んで、必要に応じてモグラ叩きみたいに対処すればいいよ。" userName="palmfacehn" createdAt="2025/08/25 08:42:49" color="#ff5c5c">}}




{{<matomeQuote body="正当なユーザーなら絶対ハマらないような無限ループに陥ってるボットを追跡したことがあるよ（結果が出るポイントをはるかに超えてリンクを循環的にたどるやつ）。確実にボットだろってやつをフィルタリングしてみたら、100万以上のユニークIPがあったんだ。" userName="asddubs" createdAt="2025/08/26 07:04:38" color="">}}




{{<matomeQuote body="僕はBernstein publicfileのdjbwares子孫を使ってるんだ。以前、静的GEMINI UCSPI-SSLツールを追加したよ。<br>GEMINI仕様からヒントを得て、BernsteinのHTTPサーバーにもリクエストURLでのフラグメントとクエリパラメータの禁止を適用したんだ。<br>https://geminiprotocol.net/docs/protocol-specification.gmi#r...<br>https://jdebp.uk/Softwares/djbwares/guide/publicfile-securit...<br>https://jdebp.uk/Softwares/djbwares/guide/commands/httpd.xml<br>https://jdebp.uk/Softwares/djbwares/guide/commands/geminid.x...<br>静的HTTPサービスではGEMINIと同じくそれらを許可しない理由があるし、Bernstein publicfileでは特別なことしないとクエリパラメータは実際機能しないんだ。<br>これを導入する前は、弱いCGIやPHPスクリプトに対する失敗するエクスプロイト試行がhttpdのファイルが見つからないエラーの大きな割合を占めてた。奴らはファイルシステムにアクセスしてnameiルックアップまでしてたんだ。<br>導入後は、リクエストURLが分解される段階でファイルシステムに触れずに早く拒否されるようになったよ。<br>静的サイトを運営してるなら、このGEMINIのアイデアをクエリパラメータにも適用するのをオススメする。もし、静的サイトツールでクエリパラメータサポートを本当にやろうとする勇気がないならね。" userName="JdeBP" createdAt="2025/08/25 09:35:18" color="#785bff">}}




{{<matomeQuote body="HNで`robots.txt`を真剣に受け止めてる人が多いことにいつもちょっと驚くよ。良い意図を持った人が多いのは良いことだけど。<br>でも、これって当然ながらちゃんとした解決策じゃないよね。人が`robots.txt`を知ってて、クローラーにチェックする複雑さを追加するかに依存してるんだから。<br>もっと真面目な解決策ってないのかな？“マイクロペイメント”とか“本物の人間の大きなMerkle Tree”みたいな解決策の話はずっと聞いてるけど、全然実現しないね。" userName="alphazard" createdAt="2025/08/25 13:06:02" color="">}}




{{<matomeQuote body="`robots.txt`を知らないボット作者がいるなんて信じられないよ。奴らは自己中心的すぎて、なんで自分たちにルールが適用されるのか理解できないんだ。自分たちのプロジェクトは特別で、迷惑なのは他のボットだと思ってるからね。" userName="ralferoo" createdAt="2025/08/25 13:11:20" color="">}}




{{<matomeQuote body="悪意のあるボットは`robots.txt`無視で速度重視。MSSがないか変なTCP SYNパケットをドロップしてポートスキャンボットの約99%をブロックしてる。<br>`-A PREROUTING -i eth0 -p tcp -m tcp -d $INTERNET_IP --syn -m tcpmss ! --mss 1280:1460 -j DROP`<br>多くのボットはポート443をスキャンするから有効だよ。DNSでワイルドカード証明書を使うのも手だね。<br>ロードバランサーやウェブサーバーにデフォルトホストを設定し、シンプルな静的ページを出してログを無効にするのも良い。HAProxyの“strict-sni”オプションも古いボット対策になるよ。" userName="Bender" createdAt="2025/08/25 13:34:39" color="#ff33a1">}}




{{<matomeQuote body="VPNや古い接続では、1280より低いMSS値が必要な場合があるって気づいてる？" userName="ikiris" createdAt="2025/08/25 22:29:22" color="#ff5733">}}




{{<matomeQuote body="VPNや古い接続には1280より小さい値が必要だって知ってる？もちろん。オープンソースの良いところは、何でも許可したり禁止したりシステムを設定できることだよね。各サーバ運営者は正規ユーザーのトラフィックを監視して、許可すべきものを見つけて、それ以外は捨てられる。<br>企業VPNは既知の値を使うけど、”無料”VPNは様々で、サポートしない選択もできるんだ。僕のシステムではMSS 1460だけを許可し、TTLが64を超えるTCP SYNパケットはブロックしてるけど、それは僕のユーザー層に合ってるからね。" userName="Bender" createdAt="2025/08/25 23:43:46" color="#ff33a1">}}




{{<matomeQuote body="クローラーはrobots.txtをちゃんと読んでるよ。だって、僕がrobots.txtでしか宣伝してない/honeytrapページにアクセスして、ずっとBANされ続けてるもん。" userName="jabroni_salad" createdAt="2025/08/25 19:34:07" color="">}}




{{<matomeQuote body="たとえ法律だったとしても、あまり役には立たないだろうね。でも、一般的に意地悪な奴でいることは犯罪じゃないんだ。" userName="recursive" createdAt="2025/08/25 15:39:56" color="">}}




{{<matomeQuote body="でもrobots.txtに従わないと、サンタさんが君の手紙を読んでくれないよ。" userName="AlienRobot" createdAt="2025/08/25 19:34:23" color="">}}




{{<matomeQuote body="ボットにひどく影響されるウェブサイトの共通点って何だろう？<br>僕は自宅で何年も.com TLDのウェブサーバを動かしてるし、関連キーワードではGoogleのサイトインデックスでそこそこ上位にいるけど、ルータにもサーバにも特別なボット対策はしてないんだ（好奇心でボットの数を数えようとはしたけどね）。<br>ポートスキャンは頻繁に来るけど、大抵はインデックスページを取るだけで、動的に読み込まれるリンクを辿ることは滅多にないよ。Apache 2でサーバを動かしてた時も、今Axumで複数のウェブサイトを動かしてる時も、ボットによる目立った影響は全然ないから、ボットのことなんてほとんど考えてないんだ。<br>ディレクトリリスティングが共通点かな？僕は馬鹿だから、何か教えてくれると嬉しいな。" userName="kldg" createdAt="2025/08/25 22:54:37" color="#45d325">}}




{{<matomeQuote body="僕の個人サイトは、ボットが何をしても好きにさせてるよ。静的サイトで12ページくらいしかないから、問題を起こすには（ギガビット）ネットワークを飽和させるくらいじゃないとね。<br>その一方で、tug.orgのSVNウェブインターフェースにはAnubisを導入せざるを得なかったんだ。SVNはGitよりずっと遅いし（ほとんどのページが5秒かかる）、サーバも基本的なキャッシュすら有効になってなかったんだけど、去年までは問題なかったんだ。<br>でも、今年の初めからボットがすべてのリビジョンをスクレイピングし始めて、リポジトリは20年以上で30万ファイルもあるから、スクレイピングするページがたくさんあったんだ。これでサーバ全体が過負荷になって、そこにホストされてた他のサービスが全部使えなくなったんだよ。キャッシュを追加したり、悪質なASNsをブロックしたりも試したけど、Anubisが（残念ながら）唯一効果があったみたいだね。<br>だから、主な共通点は、ページ数が多くて計算コストが高い、そこそこ人気のあるサイトじゃないかな。" userName="gucci-on-fleek" createdAt="2025/08/26 01:33:41" color="#45d325">}}




{{<matomeQuote body="いつになったら、IPレンジをホワイトリスト化するっていう逆のアプローチが本当に実現可能になるんだろうって考え始めるよね。アドブロッカーのリスト管理みたいに、コミュニティの取り組みとして実現するかもしれないな。" userName="Etheryte" createdAt="2025/08/25 05:39:43" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="残念だけど、行儀のいいボットは安定したIPを持つことが多いけど、悪質な奴らは喜んで住宅プロキシを使うんだ。<br>住宅プロキシのIPをBANしちゃうと、実際のユーザーに影響を与えちゃう可能性が高いし、悪質な奴らはただIPを切り替えるだけだからね。<br>個人的には、IPレベルのネットワーク情報だけじゃ、他の要因と組み合わせないと効果はないと思うな。<br>情報源は、職場で何千ものIPが関わる攻撃を止めてきた経験からだよ。" userName="bobbiechen" createdAt="2025/08/25 05:47:19" color="#785bff">}}




{{<matomeQuote body="用語を避けると、そのネガティブな意味合いが強まり、歴史も忘れがちだね。証拠はないけど、用語が使われて受け入れられれば、否定的な意味合いは薄れると思うよ。結局、戦うべきはその否定的な意味合いであって、用語そのものじゃないからね。" userName="McDyver" createdAt="2025/08/25 06:02:09" color="#ff5c5c">}}




{{<matomeQuote body="Allow/deny listの方が説明的で分かりやすいと思うんだけど、どうかな？君の意見も分かるけど、deny listって、拒否されるものが実際のリスクやコストと結びついてるから、どうしてもネガティブなものだよね。”deny”じゃなくて”black”を使っても、”black”という言葉のネガティブな意味合いが減るとは思えないな。" userName="zipliners" createdAt="2025/08/25 07:26:38" color="#38d3d3">}}




{{<matomeQuote body="住宅用Proxyをブロックするのは悪くない考えだと思うよ。俺の単純な考えだけど、もし彼らが故意にProxyを使ってるなら、”商売のコスト”は分かってるはず。もし知らずに使ってるなら、ブロックされればそれに気づいて、システムをクリーンアップする良い機会になるんじゃないかな。" userName="BLKNSLVR" createdAt="2025/08/25 07:40:36" color="#ff5c5c">}}




{{<matomeQuote body="Allow/deny list is more descriptiveって言うけど、全然そうじゃないよ。それは新しい用語で、既存の言葉と違う機能があるみたいに聞こえるだけ。スープを「食べる飲み物」って言っても、コミュニケーションが良くなるわけじゃないでしょ。もし言葉に問題があるとしたら、濃い肌の色をblackと呼ぶこと。’black’という言葉自体が悪いわけじゃないからね。" userName="JumpCrisscross" createdAt="2025/08/25 08:28:32" color="#ff5733">}}




{{<matomeQuote body="俺が住宅用Proxyを使ってると仮定してみてよ。俺の自宅IPアドレスは毎日変わるから、お前らは結局、大手ISPや都市を一つずつブロックする羽目になるよ。もし俺がCGNATの裏にいたら、ISP全体や都市全体を一度にブロックすることになって、たくさんの人から苦情が殺到するだろうね。" userName="immibis" createdAt="2025/08/25 14:12:34" color="#ff33a1">}}




{{<matomeQuote body="もし多くのサイトがこのやり方でISPや都市をブロックして、ユーザーが嫌がってISPを変えるなら、ISPはトラフィック監視を強化するはず。でも、「ユーザーがブロックされてイライラしてISPを変える」なんてことは決して起こらないだろうね。みんな主要なサイトしか使わないし、そのサイトはクローラーのトラフィックを吸収できるから、ISPブロック計画には加わらないだろうな。" userName="Arnavion" createdAt="2025/08/25 14:47:03" color="#ff5c5c">}}




{{<matomeQuote body="「ブラックリスト」の語源に人種差別的な歴史はないよ。1639年に劇作家 Philip Massingerが「The Unnatural Combat」で使ったのが最初で、Charles IIの敵のリストを指す言葉だったんだ。Charles IIの敵なの？それが問題？<br>参照元: https://en.wikipedia.org/wiki/Blacklisting#Origins_of_the_te..." userName="ThrowMeAway1618" createdAt="2025/08/25 05:56:38" color="#45d325">}}




{{<matomeQuote body="それってまるでIPレベルでの「ピアリング」契約みたいだね。これらの「悪い」ネットワーク参加者とピアリングしないISPの階級を作るのは意味があるのかな？" userName="delusional" createdAt="2025/08/25 05:50:27" color="">}}




{{<matomeQuote body="いや、そうじゃないよ。リストはアクセスを許可したり拒否したりするんでしょ？だったら「allow/deny」の方が的確な表現だよ。「white/black」は曖昧だし、余計な意味合いが含まれてる。全体的に、簡単に明確にできる変更だと思うな。" userName="zipliner" createdAt="2025/08/25 16:39:59" color="#785bff">}}




{{<matomeQuote body="「ブラックリスト」の語源は人種差別とは無関係で、Charles IIの敵のリストだったんだよ。肌の色が濃い人たちが誇りを持って自分たちを「black」と呼んだ時代もあるし、Mr. Brownがはっきり言ってるでしょ。可視光を吸収する色の用語を全て差別的だと主張するのは馬鹿げてる。黒い靴下やドレスも差別的になるの？人種差別はひどい歴史だけど、関係ない用語を細かく指摘するのは単なる見せかけに過ぎないよ。黒いもの全部に文句言うの？URLが二つあるね。<br>https://www.youtube.com/watch?v=oM1_tJ6a2Kw<br>https://www.azlyrics.com/lyrics/jamesbrown/sayitloudimblacka..." userName="ThrowMeAway1618" createdAt="2025/08/25 06:48:42" color="#ff5733">}}




{{<matomeQuote body="スープをドリンクと呼ぶのは分かりにくいけど、「allow/deny」と「white/black」を比べたら、前者がはるかに記述的だよ。allow/denyの方が分かりにくいって主張するのは、「年寄りだから変えたくない」とか「専門用語使って賢く見せたい」って理由でしょ？プログラマーが年を取ると「ブラック」を支持する傾向にあるのはわかるけど、それがバカげてるし人種差別的であることには変わりないよ。" userName="throwaway290" createdAt="2025/08/26 05:50:48" color="#ff33a1">}}




{{<matomeQuote body="住宅用プロキシIPをBANしたら、悪意のある奴はIPを切り替えるだけで、本物のユーザーに影響が出るって言うけど、本当にそうかな？正規のユーザーがプロキシと同じIPを使う可能性ってどれくらいあるの？IPは再利用されるけど、ブロック期間を6～8時間とか1～2日にすれば対処できるでしょ。" userName="throwawayffffas" createdAt="2025/08/25 07:40:00" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
