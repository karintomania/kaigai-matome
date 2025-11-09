+++
date = '2025-11-02T00:00:00'
months = '2025/11'
draft = false
title = 'URLは究極の状態コンテナ！リフレッシュのイライラを解消するWeb開発の秘訣'
tags = ["Web開発", "フロントエンド", "状態管理", "URL", "UX"]
featureimage = 'thumbnails/purple1.jpg'
+++

> URLは究極の状態コンテナ！リフレッシュのイライラを解消するWeb開発の秘訣

引用元：[https://news.ycombinator.com/item?id=45789474](https://news.ycombinator.com/item?id=45789474)




{{<matomeQuote body="コードをレビューするときは、可能な限り多くの状態をURLに保存するようにしてるよ。リフレッシュでページが大きく変わることにみんなもっと怒るべきだよ。ユーザーとしてはマジでイライラするし、侮辱的。URLを共有しても意味がないなんてありえない。小規模チームだとUXも向上するし、開発は遅くなるけど、その価値はあると思う。URLに状態を持たせるのがリスキーって意見もあるけど、多くのケースでは問題ないし、古いURLからの移行コードを書けば解決できるよ。" userName="jorl17" createdAt="2025/11/02 13:49:29" color="#45d325">}}




{{<matomeQuote body="このアプローチは好きだけど、URLがブラウザの履歴に残るのはちょっとね。オートコンプリートで意図しない状態になっちゃうことがあるから。クエリパラメータの方がパスより良いかも。" userName="thijsvandien" createdAt="2025/11/02 14:15:24" color="">}}




{{<matomeQuote body="サーバーレンダリングのページなら、リフレッシュ時にスクロール位置が無料で保存されるんだ。JSで何でもかんでもやると、こういう地味なところが壊れがちだよね。" userName="apitman" createdAt="2025/11/02 17:33:40" color="">}}




{{<matomeQuote body="JavaScriptには履歴をいじる機能があるけど、履歴を汚しすぎず、ユーザーがちゃんと戻ったり進んだりできるようにするバランスが難しいんだよね。" userName="linked_list" createdAt="2025/11/02 14:27:39" color="">}}




{{<matomeQuote body="クライアントサイドで状態をURLに保存するのってどうやるの？<br>・状態はどう表現するの？ハッシュの後にキー=値のリスト？<br>・どうやって同期を保つの？ページロード時やURL変更時にハッシュ部分をパースして状態を復元する？<br>・進む/戻るボタンはどう管理するの？<br>・クライアントサイドで更新されるサーバーサイドの項目（例えばチェックボックス）はどう管理するの？" userName="jraph" createdAt="2025/11/02 14:05:56" color="#45d325">}}




{{<matomeQuote body="ブログで紹介されてたprismjsサイト、URLを更新するときに現在の履歴項目を置き換えてるのが良いね。" userName="orphea" createdAt="2025/11/02 14:50:32" color="">}}




{{<matomeQuote body="それって「戻る」ボタンをちゃんと処理できるの？履歴を間違って上書きするサイトやアプリって、戻るボタンを押すとサイトに入る前のページに戻っちゃうからマジでイライラするんだよね。<br>履歴に追加する（pushState）か、上書きする（replaceState）か、どっちも使い道はあるけど、適切なアクションで適切な方法を使わないと、ユーザー体験は最悪になるよ。" userName="embedding-shape" createdAt="2025/11/02 15:00:09" color="#ff33a1">}}




{{<matomeQuote body="NWS Radarサイト、https://radar.weather.gov/ が面白い例だよ。<br>マップを操作するとURLが https://radar.weather.gov/?settings=v1_eyJhZ2VuZGEiOnsiaWQiO... のように変わるんだ。<br>このBase64エンコードされた文字列をデコードすると、JSONでこんな感じの状態が保存されてるのがわかるよ:<br>```json<br>{”agenda”:{”id”:null,”center”:[-115.925,36.006],”location”:null,”zoom”:6.3533333333333335},”animating”:false,”base”:”standard”,”artcc”:false,”county”:false,”cwa”:false,”rfc”:false,”state”:false,”menu”:true,”shortFusedOnly”:false,”opacity”:{”alerts”:0.8,”local”:0.6,”localStations”:0.8,”national”:0.6}}<br>```<br>僕自身もNWSデータを使ってライブの地域天気ニュースを届ける会社 https://www.lwnn.news/ を立ち上げてるから、この辺の事情は詳しいんだ。" userName="MPSimmons" createdAt="2025/11/02 15:31:13" color="#45d325">}}




{{<matomeQuote body="URLの長さを短くするために、考えられるすべての状態をハッシュ化して、クエリ文字列の変数でそのハッシュ値を参照するのはどうかな？" userName="bgilroy26" createdAt="2025/11/02 14:19:11" color="">}}




{{<matomeQuote body="APIってかなり柔軟なのに、なんでウェブサイトはいつも台無しにするんだろうね。多分、コードが変わるときに再テストしないからじゃないかな。" userName="LegionMammal978" createdAt="2025/11/02 15:17:48" color="#785bff">}}




{{<matomeQuote body="共有できる状態（スクロール位置とか）は理解できるけど、「できるだけ」ってのはやりすぎじゃない？localStorageを使えばいいじゃん。" userName="MattDaEskimo" createdAt="2025/11/02 14:26:01" color="#ff33a1">}}




{{<matomeQuote body="ごめん、でもこのデータのエンコード方法はマジでひどいよ。0.8みたいな数字がbase64でエンコードされたASCIIの10進数になってるし。URLは共有とか途中で切れないように、短くあるべきだよね。" userName="toxik" createdAt="2025/11/02 19:27:13" color="#ff33a1">}}




{{<matomeQuote body="そうそう、「リフレッシュ」ってのは、アプリ全体を再起動（そして大抵は再ダウンロード）することなんだよ。Webの世界ではみんな「リフレッシュ」を普通の機能だと思ってるけど、それってむしろ失敗モードだよね。" userName="divan" createdAt="2025/11/02 17:36:39" color="#45d325">}}




{{<matomeQuote body="URLが途中で切れるっていうのは、もう古い考え方だよ。Webは進化したから、URIにはたくさんのデータを確実に入れられるんだ。参考になるStack Overflowのリンクもあるよ: https://stackoverflow.com/questions/417142/what-is-the-maxim..." userName="capecodes" createdAt="2025/11/02 23:10:11" color="#ff5733">}}




{{<matomeQuote body="なんでlocalStorageを使わないかって？同じサイトのウィンドウやタブを複数開いた時に、それぞれがスクロール位置を奪い合わないようにするためだよ。それに、2つ目のタブは最初のタブを複製した可能性もあるしね。" userName="layer8" createdAt="2025/11/02 15:13:48" color="#ff33a1">}}




{{<matomeQuote body="WebはAndroidに似てて、デスクトップアプリとは違うんだよね。全体を再起動しても（ほとんど）状態を失わないように作られてる。実はデスクトップアプリもこうなったら最高なのに、って思うよ。初期画面に戻る別の方法があればいいのにね。" userName="nextaccountic" createdAt="2025/11/02 21:34:03" color="#38d3d3">}}




{{<matomeQuote body="ウェブページをリフレッシュして全然違う場所に出るのは本当に嫌。URLを他の人に送ったら意味不明になるのも困る。でも、動画やページを友達に共有しようとした時に、自分の見てる正確な位置が共有されて、「これ全体じゃなくて一部だと思われちゃうかな？」って心配になるのも嫌なんだ。<br>特定の状態を再現できるURLは好きだけど、それは意図的な選択であって、間違って共有したりブックマークしたりしたくないな。" userName="latexr" createdAt="2025/11/03 11:06:32" color="#ff33a1">}}




{{<matomeQuote body="たくさんのデータが入ってるリンクって、共有するのにマジで面倒くさいんだよね。一部の状態をそこに保存する価値はわかるけど、そんなにたくさんのスペースはないと思うよ。" userName="domga" createdAt="2025/11/03 01:16:56" color="#45d325">}}




{{<matomeQuote body="現在のURLを他の人に送っても、相手が同じものを見られないっていう問題はまだ残ってるよね。アンカーを使えば解決できるけど、自動じゃないんだ。" userName="endless1234" createdAt="2025/11/02 18:17:57" color="">}}




{{<matomeQuote body="ホントにそう思うよ！URLデザインってUXデザインの一部であるべきなのに、30人以上のUXデザイナーと仕事したけど、URLについてアドバイスもらったこと一度もないんだよね。" userName="fittom" createdAt="2025/11/02 14:36:21" color="#38d3d3">}}




{{<matomeQuote body="状態を復元する機能ってさ、必要ならどんなアプリでも実装できるけど、テストやメンテみたいな手間もかかるじゃん？デスクトップアプリが壊れて再起動しなきゃダメなのは「ダメなソフトウェア」って思うのに、Webだと状態がおかしくなって「アプリを再起動」するのって日常茶飯事だよね。" userName="divan" createdAt="2025/11/02 21:43:44" color="">}}




{{<matomeQuote body="ウェブページをリフレッシュしたら全然違う場所に飛ばされるのに、みんなもっと怒らないのが理解できないんだよね、って意見に対してなんだけど、俺は逆の立場だね。サイトが不必要に細かい状態をブラウザ履歴に残すのがすっごくイライラするんだ。例えば、「戻る」ボタンを押したら前のページじゃなくてモーダルが閉じる、とかさ。" userName="DecoySalamander" createdAt="2025/11/03 09:25:25" color="#785bff">}}




{{<matomeQuote body="俺の経験だと問題は二重にあるんだ。まずプロダクトマネージャーやオーナーがURIを考慮しないから、仕様として決まらない。次に開発者もURIや履歴の扱いについて異議を唱えない。時間がないか、プロダクトにタスクを戻す権限がないか、単に気にしないか、そこまで考えてないか。結果、誰もURLに責任を持たず、UXデザインの一部とも思ってないから、全体像を考えずに各自が「これでいいだろう」って実装しちゃうんだよね。他にも問題はあるんだろうけどさ。" userName="embedding-shape" createdAt="2025/11/02 15:24:52" color="#38d3d3">}}




{{<matomeQuote body="タブごとにユニークなIDを使うことで解決できるかもしれないよ（俺も気になってたんだ）。<br>https://stackoverflow.com/questions/11896160/any-way-to-iden..." userName="mejutoco" createdAt="2025/11/02 16:31:25" color="">}}




{{<matomeQuote body="ブラウザのオートコンプリートって、どっちにしても当てにならないしイライラするから、ブックマークしたりシェアできるURLの便利さを避ける理由にはならないと思うよ。" userName="hamdingers" createdAt="2025/11/02 15:30:20" color="">}}




{{<matomeQuote body="共有するのが面倒って何が？それはリンクを共有するアプリとかウェブサイトのUXの問題じゃないかな。例えば、返信してるコメントにあるStack Overflowのリンクもそうだけど、HNはリンクの長さがある程度を超えると省略するじゃん。あれは余計な情報だからだよね。" userName="nozzlegear" createdAt="2025/11/03 03:32:02" color="">}}




{{<matomeQuote body="JSでも、昔ながらの同期JSの方が、コンテンツがまだ生成されてないのにブラウザが位置を復元しようとする最近の非同期JSのやたらなプッシュよりも全然いいよね。" userName="o11c" createdAt="2025/11/02 20:46:47" color="">}}




{{<matomeQuote body="キーボード操作から離れなきゃいけない不便さはわかるけど、「共有」ボタン→「リンクをコピー」っていうのは今やかなり一般的だから、もう問題ないんじゃないかな。FirefoxにはURLバーを右クリックすると「クリーンなリンクをコピー」っていう機能もあるしね。その機能だけの拡張機能は見つからなかったけど、作るのなんて簡単だしショートカットを割り当てればいいと思うよ。" userName="cassepipe" createdAt="2025/11/03 13:15:45" color="">}}




{{<matomeQuote body="ウェブページをリフレッシュすると全然違う場所に飛ばされたり、URLを共有しても意味不明だったりすることにもっと怒るべき、って意見だけど、この二つのユースケースってちょっと競合するんだよね。ほとんどの場合、俺がURLを共有するときって、特定のスクロール位置まで共有したいわけじゃないんだ（相手の画面サイズが違ったら意味ないだろうし）。" userName="eru" createdAt="2025/11/03 01:59:16" color="">}}




{{<matomeQuote body="フィルタを設定したときに履歴エントリを追加すべきか、URLをJavaScriptで操作するのは複雑だよね。俺もreplaceが正しいと思うけど、そうすると履歴のURLに常にフィルタが含まれちゃうね。Hacker NewsもアイテムIDはクエリパラメータを使ってるし、この区別は曖昧だよ。一番大事なのは、状態を失わずにリフレッシュやブックマークができること。SPAでこれらを実装するのはかなり複雑になるんだ。" userName="moritzwarhier" createdAt="2025/11/02 17:18:58" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="URLで状態を管理するソリューションはアリだけど、記事の通り意図や可読性が失われるね（例えば”product=laptop”じゃなくて”state=XBE4eHgU”）。それに、URLの長さで問題になることはめったにないよ。2,000～8,000文字って結構な量だからね！" userName="poncho_romero" createdAt="2025/11/02 14:25:13" color="">}}




{{<matomeQuote body="本当にURLとDNSのリテラシーがもっと高まればいいのにって思うよ。フィッシング詐欺の防止や、YouTubeの”？t=_”みたいなパラメータの意味、utm_のようなトラッキング情報の削除、HTTPSが必ずしも信頼を意味しないこととか、みんな理解できるようになるはず。今のネット世代でさえ、全然知識が足りてないんだ。" userName="padolsey" createdAt="2025/11/02 13:27:14" color="#38d3d3">}}




{{<matomeQuote body="URLリテラシーなんて負け戦だよ。WebブラウザがURLをデフォルトで隠したり（Firefox on iOSでさえそう！）、企業がQRコードや検索語だけのポスターを作ったりしてるんだから、どうしようもないって！" userName="weikju" createdAt="2025/11/02 13:40:21" color="#ff33a1">}}




{{<matomeQuote body="Outlookみたいな商用ソフトがURLの難読化やスパムフィルタでひどすぎて、うちの会社のフィッシングテストも無意味だよ。チェックリストの項目は、実際に会社がやることか、Outlookがクソだから役に立たないかのどっちか。だから俺はメールを開かずに報告しまくってて、IT部門は80％の誤報率にうんざりしてるだろうな。" userName="Lord-Jobo" createdAt="2025/11/02 14:31:25" color="#785bff">}}




{{<matomeQuote body="URLの設計が悪いのも問題だよね。左右非対称な表記が混ざってるせいで、一番大事な部分がURLの真ん中にあって、技術者じゃないと見つけにくいんだ。本当は、com.ycombinator.news/item?id=45789474みたいになればいいのにね。" userName="noctune" createdAt="2025/11/03 07:19:06" color="">}}




{{<matomeQuote body="昔のUsenet時代はそうだったよ！例えばalt.tv.simpsonsみたいにね。URLがなんで今の逆の形になったのかはよく分からないけどさ。" userName="jaza" createdAt="2025/11/03 10:29:25" color="">}}




{{<matomeQuote body="俺は反対だな。僕らは左から右に書くんだから、URLがネットワーク上の場所とサーバー上の場所の2つの部分に分かれてて、左から右に書かれる今の形は理にかなってるよ。オートコンプリートもずっと使いにくくなるだろ。「news.y」でHacker Newsが出るし、「red」でRedditが出るんだから。俺のブラウザはプロトコルを省略して表示してくれるしね。" userName="arielcostas" createdAt="2025/11/03 08:27:41" color="#45d325">}}




{{<matomeQuote body="でもドメイン名が”左から右”じゃないのが問題だよ。オートコンプリートの話だけど、それは特定の実装の挙動でしょ。もしURLが違ってたら、オートコンプリートも違う挙動になるはずだよ。あと、https://xkcd.com/1172/を思い出したよ。" userName="int_19h" createdAt="2025/11/04 12:52:20" color="">}}




{{<matomeQuote body="くそ、もう手に入らないものが欲しくなっちゃったよ。" userName="thrance" createdAt="2025/11/03 14:00:43" color="">}}




{{<matomeQuote body="URLを状態コンテナにすると、内部情報が漏洩してバージョン管理が必要になるんだ。古いブックマークが使えなくなったり、ブラウザ間で挙動が違ったり、認証フローで問題が起きる可能性もあるね。コマンドライン引数みたいにURLに情報を出すのは良いことだと思うけど、それにはコストとトレードオフがあるんだ。みんな意図的に設計判断してるってことは理解してるよ。" userName="chaboud" createdAt="2025/11/02 15:49:41" color="#38d3d3">}}




{{<matomeQuote body="おすすめだよ: https://github.com/Nanonid/rison<br>これはすごく古いけど、URLにJSON形式で状態を保存するのに超使えるライブラリだよ。普通のJSONのゴチャゴチャがないのが良いね。ElasticのKibanaで初めて見たよ。2016年頃に社内のReactダッシュボードプロジェクトで使ったんだけど、めちゃくちゃ上手くいったんだ。例を見てみて: http://example.com/service?query=q:’*’,start:10,count:10" userName="dzhar11" createdAt="2025/11/02 20:15:08" color="#785bff">}}




{{<matomeQuote body="ありがとう！！こういうのが欲しかったプロジェクトがたくさんあるんだ。これまで自分で場当たり的に作ってたけど、これはもっとちゃんと考えて作られてるみたいで、自分で作るよりは（少しだけど）標準的だね。" userName="callumgare" createdAt="2025/11/02 23:04:07" color="">}}




{{<matomeQuote body="Callum、RQL[0][1]かFIQL[2]も興味あるかもね。<br>[0]: https://github.com/persvr/rql<br>[1]: https://github.com/jirutka/rsql-parser<br>[2]: https://datatracker.ietf.org/doc/html/draft-nottingham-atomp..." userName="Natfan" createdAt="2025/11/03 00:41:37" color="#45d325">}}




{{<matomeQuote body="ブラウザやサーバーはURLの長さに実用的な制限があるんだ（通常2,000〜8,000文字）。でも実際はもっと複雑だよ。Stack Overflowの回答によれば、制限はブラウザの挙動、サーバー設定、CDN、検索エンジンの制約など、いろいろな要因から来てるんだ。もしその制限にぶつかるなら、アプローチを考え直す必要があるサインだね。じゃあ実際どうなの？リンク先のStack Overflowの回答では、2023年時点では「2000文字未満」って言ってるよ。2000文字未満で、特別な工夫なしにどれくらいの状態をURLに入れられるかな？そして、考え直したアプローチってどんな感じになるんだろう？" userName="azangru" createdAt="2025/11/02 14:03:11" color="#45d325">}}




{{<matomeQuote body="ドメイン以外だと、それぞれの文字は66種類のユニークな文字になるんだ。<br>大文字: AからZ（26文字）<br>小文字: aからz（26文字）<br>数字: 0から9（10文字）<br>特殊文字: - . _ ~（4文字）<br>だから、たくさんの情報をエンコードしたいなら、かなりお得だよ。" userName="djoldman" createdAt="2025/11/02 14:26:27" color="#ff33a1">}}




{{<matomeQuote body="異なる状態を異なる文字ブロックでエンコードするようなマッピングがない限り、可能性はかなり限られるよ。例えば、商品IDやEANコードとアイテム数を保存する場合とかね。ユーザーが爆買いしてないことを願うしかないね。" userName="croes" createdAt="2025/11/02 14:42:51" color="">}}




{{<matomeQuote body="システムが進化すれば、当然変更が必要になるよね。状態の構造も変わるし、リファクタリングや手直しもする。名前を変えたり、フィールドを移動したりするんだ。URLは永続的な文字列だと考えられてるから、壊すのは良くないことだよ。だから、URLに状態を保持すると、システムの進化を妨げることになる。それは良くないね。URLはプロトコルとして扱うのがより適切だと思うよ。いくつかの状態パラメータをエンコードして、ページロード時にURLから状態をデコードできるし、必要ならバージョン管理もできるだろうね。ごく簡単なページなら、全状態をURLに保存するのもアリかもしれないけど。" userName="vbezhenar" createdAt="2025/11/02 13:03:40" color="#ff5c5c">}}




{{<matomeQuote body="状態を保持する対象の永続性によると思うよ。例えばブログ記事なら、長い間残しておきたいよね。でも、URLなどに状態をエンコードする方法が不明瞭なこともあるんだ（つまり、ユーザーの利便性のために、フィードをリフレッシュした時に、見ていたマーカーポイントに戻したい？それとも、ユーザーはリフレッシュで最新のフィードを期待するから、最新のポイントに戻すべき？）。" userName="oceanplexian" createdAt="2025/11/02 13:42:47" color="#38d3d3">}}




{{<matomeQuote body="いつでもバージョン管理はできるよ。" userName="tomtomistaken" createdAt="2025/11/02 15:26:42" color="">}}




{{<matomeQuote body="残念ながら、多すぎるWebサイトがURLに追跡パラメーターを使ってるから、URLが長すぎると追跡だと思って、保存したり誰かに送ったりする時はいつも余計なパラメーターを全部削除しちゃうんだ。<br>まあ、パラメーターが何をしているか一目瞭然で、全部ただのプレーンテキストで、b64とかじゃないなら、こんなことしないだろうけどね。" userName="flexagoon" createdAt="2025/11/03 07:29:28" color="#38d3d3">}}




{{<matomeQuote body="HATEOASは、別の呼び方をしないと全然人気が出ないよね…<br>たぶん、史上最悪の名前の朝食シリアルみたいに聞こえるからかな。" userName="caseysoftware" createdAt="2025/11/02 13:31:50" color="">}}




{{<matomeQuote body="人間ユーザーから見れば、HATEOASは事実上Webそのものだよ。どこか一つの入り口から、リンクを辿って行きたい場所へ行き、フォームでデータを送るんだ。<br>機械クライアントから見ると話は別だけどね。JSON-LDはほぼHATEOASだし、ActivityPubではうまく機能するよ。どんなデータが欲しいか分かってるけど、正確な形やURLを知る必要がないエンドポイントと通信したいときに役立つんだ。<br>サーバーとクライアントの両方を制御している場合は、HATEOASはほとんどメリットがないのに余計な手間がかかる。特に実装がひどいとね（つまり、クライアントが結局全てのエンドポイントの正確な形を知る必要があって、HATEOASはURLを不透明にするだけ）。それに、URLを解析して一部を抽出したりクエリパラメーターを追加したりする必要がある場合とは、相性がすごく悪いよ。" userName="MyOutfitIsVague" createdAt="2025/11/02 16:03:12" color="#ff33a1">}}




{{<matomeQuote body="これはHATEOASとは何の関係もないよ。まあ、両方URLを使うって点以外はね。でもHATEOASはURLに状態を保存する話じゃないから。" userName="cluckindan" createdAt="2025/11/02 13:35:53" color="">}}




{{<matomeQuote body="「HATEOASはURLに状態を保存する話じゃない」っていうのは、正しくないと思うな。ハイパーメディアがアプリケーションの状態を動かすエンジンであるためには、アプリケーションの継続はURLとして具体化され、つまり状態を持つ必要があるんだ。この状態がサーバーサイドに保存されていようとURLに保存されていようと関係ない。URLは、それを生成して解釈するサーバーにとってだけ意味があるんだから。" userName="naasking" createdAt="2025/11/03 16:18:59" color="#38d3d3">}}




{{<matomeQuote body="冗談はさておき、HATEOASの肝は、バックエンドのレスポンスからコンテンツとリンクを表示するだけの“ダムな”フロントエンドを持つことだよ。全てのロジックはサーバーサイドにあるんだ。ブラウザベースのアプリケーションというよりは、ターミナル接続に近いね。" userName="cluckindan" createdAt="2025/11/02 13:42:50" color="#45d325">}}




{{<matomeQuote body="全然違うよ。HATEOASはクライアントとサーバーが事前に合意するデータ形式を定義することだよ。HTMLから参照されるJavaScriptを実行するブラウザがHATEOASの完璧な例だね。ブラウザとWebサーバーの作成者たちは、これらの二つのデータ形式のセマンティクスに合意したから、今や世界中のどんなブラウザもどんなWebサーバーとも通信して、ユーザーに表示されるべきものを表示できるんだ。<br>もしWebデザインがHATEOASじゃなかったら、AOLが昔やったように、ブラウザにサーバー固有のコードが必要だっただろうね。ほとんどのクライアントアプリは、クライアントとサーバーの両方が同じエンティティによって制御されているから、クライアントにURLをハードコードしても問題ないため、このように開発されているんだ。" userName="tsimionescu" createdAt="2025/11/02 15:31:01" color="#ff5c5c">}}




{{<matomeQuote body="普及を妨げる大きな障壁の一つは、長いURLが単純に醜いってことだよ。スペースなしでごちゃ混ぜにされたり、URLエンコーディングされてたり、人間が読める単語とランダムな文字が混ざってたりするんだ。見てる開発者でさえ、ちょっと不満を感じるんじゃないかな。<br>たぶん解決策としては、クエリパラメーターをユーザーフレンドリーな形で表示して、その醜さを隠すようなブラウザウィジェットがあればいいかもね。オブジェクトエクスプローラーみたいなインターフェースとかさ。" userName="jordanpg" createdAt="2025/11/02 14:28:36" color="#ff5733">}}




{{<matomeQuote body="draw.ioはURLだけで状態を永続化してるらしいね。Base64エンコードされた図のデータを含むリンクを共有するだけで、簡単に図を共有できるんだ。でも、これって記事の「状態コンテナ」の定義に当てはまるのか、ちょっと疑問に思うな。" userName="mrbonner" createdAt="2025/11/02 17:04:01" color="#ff33a1">}}




{{<matomeQuote body="最新版のMicrosoft Teamsはこれに関して最悪だね…何でも一つのURLしかなくて、特定のチームすらブックマークできないんだ。" userName="jakegmaths" createdAt="2025/11/02 14:25:25" color="">}}




{{<matomeQuote body="URLに状態を保持するのは最高だね。アプリのどこでもブックマークして、元の状態に戻れる。デバッグにも超便利で、ユーザーにURLを送ってもらえばすぐにバグを再現して直せるんだ。このおかげで、テストなしで複雑なフロントエンドを開発できたこともあるよ。開発中もリロードだけで変更をテストできるから、反復時間がすごく短縮されるんだ。Vanilla JavaScript Web ComponentsとClaude Codeを使えば、最近は本当に速くコードが書けるよ。" userName="jongjong" createdAt="2025/11/03 07:24:22" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ハイパーリンクは、アプリケーションの状態のエンジンだと言えるんじゃないかな。" userName="smadge" createdAt="2025/11/02 18:40:07" color="">}}




{{<matomeQuote body="君はまだウェブを知識向上のためのハイパーリンクされた情報集だと考えているようだけど、そうじゃなくて、AI対応製品に何かさせようと試行錯誤するSPAsの集まりだと考えるべきじゃないかな。" userName="liampulles" createdAt="2025/11/03 10:37:15" color="#ff33a1">}}




{{<matomeQuote body="君が言ったこと、どれもURLに状態を保存することとは関係ないんじゃないかな。" userName="mexicocitinluez" createdAt="2025/11/03 11:04:06" color="">}}




{{<matomeQuote body="俺の言いたかったことは、昔は他のサイトへのリンクを多く含んでいたから、URLデザインが良かったってこと。人々がURLを共有するだろうと考えれば、ちゃんとしたURLを作るのは大事だよね。残りはSPAsへの皮肉。SPAsはURLデザインが下手なことが多いと思うんだ。JSON REST APIでDOMを操作する方が、URLで状態を制御するよりも考える必要ないからね。これでわかった？" userName="liampulles" createdAt="2025/11/03 13:24:23" color="#ff33a1">}}




{{<matomeQuote body="ふむ。君は二つのことをやってるね。1) 状態を信用できない、簡単に変更できる場所に移動させてる。2) ユーザーが有効か不明、あるいは将来存在しないかもしれないページの奥深くに「ディープリンク」することを許してる。君は、このどちらもやりたくないはずだよ。" userName="noodletheworld" createdAt="2025/11/02 14:05:19" color="#45d325">}}




{{<matomeQuote body="Scott Hanselmanが「URLはUIだ」って言ったように、俺はユーザーがURLに直接コメントを書き込むシステムを作ったことがあるよ。例えば、http://exampledomain.com/somefolder/somepage.html/@say/Hey! Cool somepage. - Me ってURLを入力すると、Perlスクリプトがそれを読み取ってコメントとしてHTMLファイルに追加するんだ。" userName="superkuh" createdAt="2025/11/02 15:17:20" color="#ff5733">}}




{{<matomeQuote body="昔のビデオゲームが256バイトのRAMに保存していた状態の量は本当にすごいよね。ウェブアプリでも、創造性があれば似たようなことができるかも。でも、URLにgzip圧縮されたBase64エンコードのJSONを状態として使うのはやめておいた方がいいよ！" userName="loloquwowndueo" createdAt="2025/11/02 13:27:49" color="#ff5c5c">}}




{{<matomeQuote body="俺の8ビットIDEだとROMをlzg/b64でエンコードしたURLとして共有できるんだけど、2000文字超えるとヤバいんだよね。" userName="sehugg" createdAt="2025/11/02 14:11:40" color="">}}




{{<matomeQuote body="JSONスキーマに合わせてカスタム圧縮辞書作ったら、256バイトに驚くほどのデータを詰め込めるんじゃないかな。" userName="wild_egg" createdAt="2025/11/02 13:52:12" color="">}}




{{<matomeQuote body="俺も試したことあるんだけど、よく使われるURLで辞書を作った方がうまくいったよ。JSONスキーマのフィールド名とか、よく使う値とかね。Pako.jsを使えば簡単。ただ、新しいフィールドや値が増えると辞書を更新しなきゃいけないから、古いURLが使えなくなっちゃう。だからバージョン管理が必要だね。" userName="skrebbel" createdAt="2025/11/02 14:31:32" color="#ff5c5c">}}




{{<matomeQuote body="既存のReactライブラリって、クエリパラメータを一つ更新するだけでめっちゃ手間かかるのが嫌だったんだ。だから自分でライブラリ作っちゃった！`useQuery`を使えば`const [name, setName] = useQuery(”name”);`って感じで簡単にできるよ。CodeSandboxの例もあるから見てみてね。<br> [1] https://crossroad.page/<br> [2] https://codesandbox.io/p/sandbox/festive-murdock-1ctv6" userName="franciscop" createdAt="2025/11/03 03:31:37" color="#ff33a1">}}




{{<matomeQuote body="それ、よくある悩みだよね。`nuqs`とか`Tanstack Router`みたいなライブラリは、この問題を良くしようと考えて作られてるよ。" userName="agos" createdAt="2025/11/03 10:17:50" color="">}}




{{<matomeQuote body="記事の内容はわかるけど、テーマをURLに保存することには反対だな。サイトをブラウズ中にテーマを切り替えて、後で「戻る」ボタンを押した時、前のページじゃなくて前のテーマに戻るなんて期待しないだろ？テーマも状態の一部だけど、URLに保存しない方がいいってことなら、何をURLに保存して、何をしないかの基準って何なんだろうね？" userName="zahrevsky" createdAt="2025/11/05 00:40:23" color="#785bff">}}




{{<matomeQuote body="`pushState`みたいに履歴を汚さずにアンドゥ/リドゥができる方法があればいいのにね。URLに紐付かない「シリアライズ可能な状態」のAPIがないんだ。`LocalStorage`も使えるけど、複数のタブで異なる状態を再読み込みしても保持したいんだよね。URLに「タブID」を保存して、状態を`LocalStorage`に保存するのがいいアイデアかも。" userName="klntsky" createdAt="2025/11/03 12:02:57" color="">}}




{{<matomeQuote body="URLが冪等性とか副作用について何も保証してないから、この意見には納得できないな。確かにそういうシステムを作ることはできるけど、URL自体が保証してくれるわけじゃない。結局、セマンティクスが重要で、URL単体じゃ十分な保証がないんだよ。エレガントなURL設計には賛成だけど、それはパズルの一部にすぎない。" userName="njacobs5074" createdAt="2025/11/02 18:49:52" color="#45d325">}}




{{<matomeQuote body="いや、保証するよ。HTTP PUTは冪等だから。" userName="mattlondon" createdAt="2025/11/02 19:32:44" color="">}}




{{<matomeQuote body="URLはHTTPメソッドじゃないよ。" userName="badbotty" createdAt="2025/11/02 23:05:13" color="">}}




{{<matomeQuote body="新しいWeb標準「BRAID」がWebをもっと人間にも機械にも優しく、状態を同期させるようにしようとしてるんだって。<br>BRAIDはHTTPを状態転送プロトコルから状態同期プロトコルに拡張して、Web全体の状態を相互運用しやすくするのが目標だよ。<br>CRDTsやOperational Transformsの力をWebにもたらして、p2pや協調編集、ローカルファーストなWebアプリを可能にするってさ。<br>[1] A Synchronous Web of State:https://braid.org/meeting-107<br>[2] Braid: Synchronization for HTTP (88 comments):https://news.ycombinator.com/item?id=40480016<br>[3] Most RESTful APIs aren’t really RESTful (564 comments):https://news.ycombinator.com/item?id=44507076<br>[4] Braid HTTP:https://jzhao.xyz/thoughts/Braid-HTTP" userName="teleforce" createdAt="2025/11/03 00:53:29" color="#45d325">}}




{{<matomeQuote body="そうそう！これはURLを状態コンテナにする、あまり活用されてない考え方で、特にWASMみたいなクライアントサイド実行と相性抜群だよ！<br>数年前に、機密PDFからデータを抽出するPDFデータ抽出ユーティリティのPOCを作ったんだけど、サーバーに機密情報を送らず、URLに埋め込んだ「レシピ」でクライアントサイドでオフライン処理できるんだ。デモリンクはこれだよ。サーバーには何も送られないから安心してね。<br>https://pdfrobots.com/robot/beta/#qNkfQYfYQOTZXShZ5J0Rw5IBgB..." userName="qdotme" createdAt="2025/11/02 13:28:50" color="#45d325">}}




{{<matomeQuote body="「#/dashboard」みたいなSPAのハッシュルーティングって最近あまり使われないけど、俺はセルフホストのアプリで使ってるよ。<br>.htaccessとかのURLリライト機能がサーバーサイドで不要だからね。<br>理想的じゃないけど、デプロイ環境を完全に制御できないなら、要件を減らせるから良いんだ。" userName="XCSme" createdAt="2025/11/02 21:15:52" color="">}}




{{<matomeQuote body="URLをピクセルアートに使ってるよ！見てみて！<br>https://www.mathsuniverse.com/pixel-art?p=GgpUODLkg-N0JchwOF..." userName="jakegmaths" createdAt="2025/11/02 14:27:21" color="">}}




{{<matomeQuote body="今フレームワークを完成させてるところなんだけど、URLは状態の記述子だと俺は言いたいね。<br>すべての状態を含んでるわけじゃなく、アプリの状態を取り出すためのハッシュキーみたいなものなんだ。<br>「アプリケーションの状態のエンジンとしてのハイパーテキスト」って感じかな。" userName="aatd86" createdAt="2025/11/02 17:23:40" color="#45d325">}}




{{<matomeQuote body="俺は違う意見だけど、URLは「場所」で「状態」じゃないって思うよ。<br>URLを状態コンテナとして使うと、ユーザーの予期せぬ挙動につながるんだ。<br>まず、一般的なユーザーはURLを状態コンテナだと思ってないし、ページのリフレッシュで状態がリセットされるって期待が裏切られる。<br>次に、YouTubeのタイムスタンプみたいに、URLに状態を入れると共有の期待を裏切る。<br>もちろん、Tシャツの色やサイズみたいに、それが「場所」のプロパティならURLに入れるのはアリだね。<br>開発者はユーザーが何を期待するか、リンクがどう使われるかを考慮して判断すべきだよ。" userName="b_e_n_t_o_n" createdAt="2025/11/03 01:43:47" color="#785bff">}}




{{<matomeQuote body="この意見にめちゃくちゃ同意するよ！書くのが面倒だったけど、まさにその通りだね。俺も両方試したけど、まったく同感だ。" userName="isaachinman" createdAt="2025/11/03 01:53:44" color="">}}




{{<matomeQuote body="URLをちゃんと設計するってスキルは、今や失われたアートになりつつあるね。<br>ジュニア開発者にNext.jsアプリへの実装を教えるのは簡単だけど、プロダクトマネージャーにこれを説明するのは別問題だよ。<br>デザイナーと膨大な時間をかけて見た目を完璧にするなら、URLもちゃんと設計する時間を作るべきだ。" userName="tjpnz" createdAt="2025/11/02 14:10:10" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
