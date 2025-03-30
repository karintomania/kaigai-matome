+++
date = '2025-03-23T00:00:00'
months = '2025/03'
draft = false
title = 'ドラムパターン共有サイトが爆誕！あのVulfpeckも参考にした激アツツール！？'
tags = ["音楽", "ドラム", "Webサービス", "リズム", "MIDI"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> ドラムパターン共有サイトが爆誕！あのVulfpeckも参考にした激アツツール！？

引用元：[https://news.ycombinator.com/item?id=43452629](https://news.ycombinator.com/item?id=43452629)

{{<matomeQuote body="これ、Funklet[0]にちょっと似てる気がするな。Jack Stratton（Vulfpeck）とRob Stensonが昔作ったやつ。ファンク好きでMIDIドラムも好きならマジでオススメ。[0] - https://goodhertz.com/funklet/" userName="sarreph" createdAt="2025-03-23T21:09:51" color="#38d3d3">}}

{{<matomeQuote body="うわー、マジ感謝！めっちゃ貴重だね！" userName="wesz" createdAt="2025-03-23T21:21:25" color="#38d3d3">}}

{{<matomeQuote body="裏打ちをいじったり、ドラムの音を変えたり、あとリバース信号とか色々試してたら、めっちゃファンキーになったわ。" userName="metalman" createdAt="2025-03-23T21:48:31" color="">}}

{{<matomeQuote body="Glicol (https://glicol.org/)にいくつかパターンを移植してもいいかも。要望としては、httpsに対応してほしいな。" userName="chaosprint" createdAt="2025-03-23T16:58:52" color="#785bff">}}

{{<matomeQuote body="マジで沼だわ。子供寝かしつけた後の貴重な時間をめっちゃ使っちゃった。共有してくれてありがとね！！" userName="xingwu" createdAt="2025-03-27T05:12:32" color="#ff5c5c">}}

{{<matomeQuote body="素朴な疑問なんだけど。ドラムパターンを見るみたいな、セキュリティが必要ないことに、なんで今httpsがこんなに重要視されてるの？" userName="phyzix5761" createdAt="2025-03-23T18:03:37" color="">}}

{{<matomeQuote body="ISPとかの仲介業者が、暗号化されてない通信を監視・改ざんできるからだよ。例えばエジプト、シリア、トルコとかでは、ISPが暗号化されてないサイトにマルウェアを仕込んで、正規のプログラムをダウンロードしようとした人がスパイウェアをインストールさせられるっていう事例があったんだ（リンク）。他の国の機関もニュースメディアの内容を書き換えたりしてるし。HTTPSがないと、ウェブページの完全性を信用できなくなるんだよ。<br>https://www.bitdefender.com/en-us/blog/hotforsecurity/turkis…" userName="lemax" createdAt="2025-03-24T00:33:23" color="#45d325">}}

{{<matomeQuote body="SSLとデジタル署名のためのデジタル証明書を発行する機関で働いてたんだけど、暗号化だけじゃなくて信頼も重要なんだよね。トップレベルの機関がSSL証明書を発行する時って、身元確認とか色々やってるから、ウェブサイトの信頼性が増すんだ。個人情報とかがない静的なウェブサイトには関係ないように見えるかもしれないけど、ほとんどのブラウザは、暗号化された通信が使われてて、コンテンツプロバイダが基本的な身元確認をしてることを重要視してるんだよね。セキュリティに対する考え方としては矛盾点もあると思うけど、今はこれが一番使われてる方法だね。" userName="jtafurth" createdAt="2025-03-23T21:40:06" color="#45d325">}}

{{<matomeQuote body="ドラムビートを作るウェブサイトに、なんでそんなこと全部必要なの？って質問に答えてないじゃん。" userName="sergiotapia" createdAt="2025-03-23T23:44:59" color="">}}

{{<matomeQuote body="認証されてないhttpは、マルウェアに悪用される可能性があるんだよ。特定のウェブサイトを狙うんじゃなくて、evil.jsみたいなのをどこにでも注入してくるんだ。" userName="jdiez17" createdAt="2025-03-23T23:51:46" color="#785bff">}}

{{<matomeQuote body="お前のISPが通信を盗み見して、回線上でMiTM攻撃をするってのは、マルウェア感染の経路としては一番ありえねーよ。ISPは大抵マジメな会社で評判もあるし、自分の客をハックしたりしねーって。" userName="otabdeveloper4" createdAt="2025-03-24T07:28:42" color="">}}

{{<matomeQuote body="その「大抵」ってのがめちゃくちゃ重要なんだよなー。Vodafoneが何年も前にwebページにスクリプトを注入してたのを覚えてるわ。ソースを探してたら、他のヤバい話にも行き当たったし。<br>https://www.simpleanalytics.com/blog/vodafone-deutsche-telek..." userName="latexr" createdAt="2025-03-24T09:59:15" color="#ff5c5c">}}

{{<matomeQuote body="ネット上の悪党全部の中で、お前のISPは一番マシな方だって。" userName="otabdeveloper4" createdAt="2025-03-24T14:47:20" color="">}}

{{<matomeQuote body="それって有効な反論じゃなくね？論点をずらしてるし、whataboutism（相手も悪い論法）じゃん。ISPは悪いやつらであるべきじゃないし、一番ヤバいことができるんだから。" userName="latexr" createdAt="2025-03-24T23:53:47" color="">}}

{{<matomeQuote body="高所得国に住んでて、消費者の保護が手厚い国で、家のISPを使ってるならそうかもね。でもネットの多くは全然そんなんじゃないんだわ。場所によっては、http通信に対するMiTM攻撃が日常茶飯事。" userName="kube-system" createdAt="2025-03-24T16:57:53" color="#ff33a1">}}

{{<matomeQuote body="少なくともログインとか登録のデータが、中間の人に渡らないようにね。" userName="nklymok" createdAt="2025-03-24T07:11:24" color="">}}

{{<matomeQuote body="無理だよ。でもhttpsをサポートしないと、Big Coからペナルティを受けることになる。(事実上「インターネットで商売する税金」みたいなもん。ありがたいことに、今は趣味のプロジェクトにとってはそんなに高くはないけどね)" userName="otabdeveloper4" createdAt="2025-03-24T07:27:21" color="#ff5c5c">}}

{{<matomeQuote body="LetsEncryptを使えばマジで$0じゃん。" userName="nerdponx" createdAt="2025-03-24T14:33:35" color="#785bff">}}

{{<matomeQuote body="「安全にする必要があるかどうか」を個別に判断させるよりも、全員にHTTPSを使ってもらいたい。" userName="ctxc" createdAt="2025-03-23T19:37:03" color="#38d3d3">}}

{{<matomeQuote body="なんで？" userName="phyzix5761" createdAt="2025-03-24T01:43:27" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="セキュリティ対策って、設定に５分かかるだけでしょ？しかも最初だけ。でも「これってセキュリティ対策必要？」って考えるのに10分もかかるんだぜ？意味なくね？とりあえずセキュリティ対策しとけば良いじゃん。" userName="kadoban" createdAt="2025-03-24T07:13:55" color="">}}

{{<matomeQuote body="セキュリティ対策が必要ないものにまで対策するのって時間の無駄じゃん（インターネットのほとんどがそうだけど）。クレデンシャルとか機密データを扱わないなら、TLSなんていらないし、やる意味ないよ。" userName="bigstrat2003" createdAt="2025-03-24T19:38:52" color="">}}

{{<matomeQuote body="Httpsはセキュリティになんも役に立たないよ。Httpsの目的は金融取引のパケットを認証することであって、「セキュリティ」を確保することじゃないんだよね。（セキュリティが何を意味するかは知らんけど）。" userName="otabdeveloper4" createdAt="2025-03-24T07:29:34" color="">}}

{{<matomeQuote body="＞Httpsはセキュリティになんも役に立たないよ。<br>セキュリティの定義は何を使ってるの？普通じゃないよね。パスワードを平文で送るかどうかは、セキュリティ101の初日で習うことじゃん。" userName="ziddoap" createdAt="2025-03-24T15:19:46" color="#ff5733">}}

{{<matomeQuote body="セキュリティの定義って、まず脅威モデルから始まるんだよ。あんたにはそれがない。セキュリティなんてやってないくせに、バズワードばっかり。" userName="otabdeveloper4" createdAt="2025-03-25T13:51:45" color="">}}

{{<matomeQuote body="脅威モデルは超シンプルだよ。「パスワードを知られたくない」ってことじゃん。HTTPSが何をするか分かってないんじゃない？分からなくても全然良いんだけどね！でも、理解できないことを「バズワード」って言うのは違うと思うよ。そんなに間違ってるのに自信満々なのがすごい！" userName="ziddoap" createdAt="2025-03-25T14:26:50" color="#785bff">}}

{{<matomeQuote body="セキュリティは、機密性、完全性、可用性の３つ。HTTPSはそれらのうちの２つを提供してくれる。まあ、パソコンにインストールされてるCAを信頼してるなら、だけどね。" userName="globular-toast" createdAt="2025-03-24T21:17:44" color="#38d3d3">}}

{{<matomeQuote body="あと９分考えろ。" userName="g105b" createdAt="2025-03-24T12:38:10" color="">}}

{{<matomeQuote body="いや、「TCP/IPにFrobnozzを追加すればセキュリティが大幅に向上する！」みたいな空虚なバズワードを処理するのに、１秒も必要ないね。" userName="otabdeveloper4" createdAt="2025-03-24T14:46:21" color="">}}

{{<matomeQuote body="バズワードなんて一つもないよ。HTTPSをオンにするコストは無視できるほど小さいし、実際にどんな攻撃から保護されるのかを議論する方がよっぽど手間だよ。「HTTPSにするべきか？」なんて聞く価値はない。「HTTPSで十分か？」を考えるべき。まずはHTTPSから始めて、その上に構築していくべき。" userName="kadoban" createdAt="2025-03-24T15:28:00" color="#ff33a1">}}

{{<matomeQuote body="HTTPSはセキュリティにめっちゃ貢献してるよ。盗聴を防ぐし(ESNIを使えばもっと効果的)、広告やマルウェアの注入、コンテンツの改ざんも防げるし、クレデンシャルの詐取も防げる。ほとんどの攻撃者、下手すりゃ国家レベルの攻撃にも対抗できるんだぜ。しかも、設定はマジ簡単。<br>“HTTPSはクレジットカード決済だけ”とか、マジ1990年代の化石みたいな考え方。" userName="kadoban" createdAt="2025-03-24T15:21:37" color="#45d325">}}

{{<matomeQuote body="俺の場合は、Wi-Fiとかモバイルプロバイダが広告を注入してくるのがウザかった。最近は減ったけど、まだあるある。" userName="whstl" createdAt="2025-03-23T19:37:03" color="">}}

{{<matomeQuote body="Chromeが2018年からHTTPSじゃないサイトを「Not Secure」って表示するようになったから、みんなHTTPSにするようになったんだよね。サイトアドレスにそんな表示が出んの嫌じゃん？上手いやり方だよね。<br>それより何年も前から、Let’s Encryptっていう無料の認証局が出てきたし(今はもっとある)、HTTPSの設定なんてマジでちょちょいのちょい。しかも、HTTPのプロトコルによってはHTTPSしか使えないし。" userName="webprofusion" createdAt="2025-03-24T01:10:17" color="#ff5c5c">}}

{{<matomeQuote body="大金を裸で知らない人に渡して銀行に届けてもらうのと、装甲車サービスを使うの、どっちが良い？<br>HTTPSが必要なのは、今のWebブラウザが信用できないから。Webブラウザはsandboxじゃないから、安全じゃないHTTPストリームにコードを注入して、ブラウザ経由でマシンを乗っ取られちゃう可能性がある。インターネットってそういう世界なの。悪意のあるルーターとか、ネットワーク機器がゴロゴロしてる。だから、HTTPSでデータの安全を確保するしかないんだよね。<br>それを避けるには、Netsurfみたいなブラウザを使うか、Webを使わないか。" userName="MisterTea" createdAt="2025-03-24T14:10:16" color="#ff5733">}}

{{<matomeQuote body="最近のブラウザって、HTTPSじゃないコンテンツ見るとマジで発狂するよね？" userName="CPLX" createdAt="2025-03-23T18:22:21" color="">}}

{{<matomeQuote body="もう手遅れ。HTTPは引退した。" userName="pbreit" createdAt="2025-03-24T15:23:56" color="">}}

{{<matomeQuote body="HTTPは引退してないよ。HTTPSを何でもかんでも使うのは意味不明。ほとんどのサイトはHTTPSの恩恵を受けないし、HTTPSゴリ押しはマジでウザい。" userName="bigstrat2003" createdAt="2025-03-24T19:40:27" color="">}}

{{<matomeQuote body="ログイン機能がある。" userName="chaosprint" createdAt="2025-03-23T18:07:13" color="">}}

{{<matomeQuote body="ログインはめっちゃわかるけど、ほとんどのページはセキュリティいらないんじゃないかなーって思う。" userName="phyzix5761" createdAt="2025-03-24T01:44:28" color="">}}

{{<matomeQuote body="Glycolについてマジで混乱してたんだけど、デスクトップ版だと情報が多いって気づいた！AndroidのChromeだとデモの再生とGitHubリンクしかないんだよね。GitHubもglicol.orgを勧めてるし。IDEみたいな機能って追加される予定ある？Sonic-Piの機能とかVS Codeプラグインとか。<br>おもしろいプロジェクトおめでとう！" userName="dr_kiszonka" createdAt="2025-03-24T01:53:12" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="cliもあるよ。<br>https://github.com/glicol/glicol-cli" userName="chaosprint" createdAt="2025-03-24T13:36:59" color="">}}

{{<matomeQuote body="ぜひ三連符を！基本的なシャッフルがないのはもったいない！あと、順番についても賛成。シンバルが上で、スネアとタムが真ん中、ベースとかペダルが下がいいよね。例えばこんな感じ。<br>hh |x-x-x-x-x-x-x-x-|<br>S  |----o-------o---|<br>B  |o-------o-o-----|" userName="flakes" createdAt="2025-03-24T05:11:14" color="#38d3d3">}}

{{<matomeQuote body="CH、OH、CY、CB、MA、CL、HC、MC、LC、SD、BD、ACの順番で大丈夫？<br>三連符もすぐに対応するよ。" userName="wesz" createdAt="2025-03-24T13:09:26" color="">}}

{{<matomeQuote body="他にもアイデア！<br>・2小節のパターンもあると嬉しいな。8クォーターで繰り返すパターン多いし。<br>・アクセントもほしい。アクセントでパターンが生き生きするから。<br>アクセントと三連符があればPurdie shuffleもできる！" userName="flakes" createdAt="2025-03-24T15:22:17" color="#38d3d3">}}

{{<matomeQuote body="実装してほしい小節パターンについて、何かモックアップとかないかな？" userName="wesz" createdAt="2025-03-24T16:22:40" color="">}}

{{<matomeQuote body="前に送ったリンクは、俺がドラムセットで演奏してた時の標準的な記譜法の例だよ。アクセントは、丸の大きさとかで表現できると思う。<br>Purdie shuffleはこんな感じ。<br>　　　1  2  3  4 <br>hh |x-xx-xx-xx-x|<br>S  |-o--o-Oo--o-|<br>B  |o----o-----o|<br><br>ジャズシャッフルはこんな感じ。<br>　　　1  2  3  4 <br>hh |x--x-xx--x-x|<br>S  |---o-----o--|<br>B  |o--o--o--o--|" userName="flakes" createdAt="2025-03-24T17:48:49" color="#785bff">}}

{{<matomeQuote body="TR-808も三連符に対応してたみたいだよ。マニュアルの15ページを見て。<br>https://cdn.roland.com/assets/media/pdf/TR-808_OM.pdf<br>例えば、マニュアルの最後にあるサンプルパターンの13ページのSHUFFLEとBOOGIEとか。" userName="082349872349872" createdAt="2025-03-25T09:57:46" color="#ff5733">}}

{{<matomeQuote body="キックとスネアが一番上にあるドラムパターンって見たことないかも。普通は下からキック、スネア、ハイハット、タム、シンバルみたいな感じじゃない？" userName="unnamed76ri" createdAt="2025-03-24T13:52:07" color="">}}

{{<matomeQuote body="それ逆にしたった。" userName="wesz" createdAt="2025-03-24T14:11:15" color="">}}

{{<matomeQuote body="3x16のパターンを4x12として解釈することもできるんじゃない？ 各ビートが3ステップになるようにさ。" userName="nxpnsv" createdAt="2025-03-24T07:12:03" color="">}}

{{<matomeQuote body="自動で次の16にロールオーバーしないのがマジで使いにくい。" userName="badmintonbaseba" createdAt="2025-03-24T12:26:53" color="">}}

{{<matomeQuote body="ナイスワーク！iOSユーザーに、音が出ない時はサイドのトグルでサイレントモードを解除するように教えてあげるといいかも。マジで長年気づかなかったんだよねー。Web Audio APIに対応してないのかと思ってた。" userName="bqmjjx0kac" createdAt="2025-03-23T16:17:57" color="#ff5733">}}

{{<matomeQuote body="開発者なら`audio`要素でバックグラウンドで無音のオーディオを再生できるよ。<br>https://github.com/donbrae/onscreen-piano-keyboard/blob/main...<br>こうすれば、サイレントスイッチがオンでもWeb Audio APIで音が出るようになる。" userName="donbrae" createdAt="2025-03-23T16:40:01" color="#38d3d3">}}

{{<matomeQuote body="https://ambiph.one で同じ問題に当たったんだけど、似たような解決策になった（`audio`要素を使う）。でも、バックグラウンドや画面オフでも音を鳴らしたかったから、Safariを騙してライブストリームだと思わせる必要があった。Appleはライブストリームしかバックグラウンド再生を許可しないみたいだからね。<br>たまたま最近聞かれたから、最小限のデモを作ったよ: https://codepen.io/matteason/pen/VYwdzVV" userName="matteason" createdAt="2025-03-24T13:29:23" color="#785bff">}}

{{<matomeQuote body="面白いね、似たようなことしてるけど、本当に動くか確認したことなかったわ。これが僕のコード:<br>var buffer = dm.audio.createBuffer(1, 1, dm.samplerate);<br>var source = dm.audio.createBufferSource();<br>source.buffer = buffer;<br>source.connect(dm.audio.destination);<br>if (source.start)<br>{<br> source.start(0);<br>} else<br>{<br> source.noteOn(0);<br>}" userName="wesz" createdAt="2025-03-23T19:51:14" color="#38d3d3">}}

{{<matomeQuote body="オーディオ要素を使う必要があると思う。Web Audio APIはオーディオ要素とは違う制限があるんだ。Audjustでも同じアプローチを使ったよ:<br>https://www.audjust.com/blog/unmute-web-audio-on-ios/<br>（いいサイトだね！Webのオーディオ系大好き！）" userName="jaflo" createdAt="2025-03-23T21:55:27" color="#45d325">}}

{{<matomeQuote body="マジか！その解決策試してみる！" userName="wesz" createdAt="2025-03-23T22:25:42" color="">}}

{{<matomeQuote body="ハードウェアのスライドトグルのこと？iPadのiOSだけど、どうしても音が出ないんだよね。ミュートトグルがないんだ。" userName="MomsAVoxell" createdAt="2025-03-23T19:45:40" color="">}}

{{<matomeQuote body="マジそれな。iPhoneでの話ね、念のため。iPadのコントロールセンターにも同じようなソフトウェイトグルがあるかも？　役に立たなくてごめんね。" userName="bqmjjx0kac" createdAt="2025-03-23T20:23:24" color="">}}

{{<matomeQuote body="アドバイスありがとね！　ボリュームいじって諦めるところだったわ。このウェブアプリ、マジで最高じゃん！　アイデアも実行力も羨ましい！" userName="moritzwarhier" createdAt="2025-03-23T21:03:07" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="めっちゃクール！　何年か前に作ったビジュアライザーを思い出すわ。<br>https://michaelmior.github.io/rhythm-wheel/" userName="michaelmior" createdAt="2025-03-23T22:51:17" color="">}}

{{<matomeQuote body="これめっちゃ面白いね！　バグ見つけたかも。<br>https://imgur.com/BRwst17<br>この設定だと、キックが緑じゃなくて赤でトリガーされてる？　勘違いかな？" userName="wesz" createdAt="2025-03-25T21:18:10" color="#ff5733">}}

{{<matomeQuote body="こっちではそんなことないけどなー。BPM下げたら（右側の数値入力が分かりにくいけど）、まだおかしい動きする？" userName="michaelmior" createdAt="2025-03-25T22:59:10" color="">}}

{{<matomeQuote body="大丈夫だったわ！:)" userName="wesz" createdAt="2025-03-25T23:12:45" color="#ff5c5c">}}

{{<matomeQuote body="これ、マジでクールな見せ方だね。<br>最高。" userName="adentranter" createdAt="2025-03-24T08:08:14" color="#ff33a1">}}

{{<matomeQuote body="アイデアの元ネタはGodfried Toussaintだって。<br>https://www.amazon.com/Geometry-Musical-Rhythm-Makes-Second/..." userName="michaelmior" createdAt="2025-03-25T16:47:55" color="">}}

{{<matomeQuote body="これマジですごい！PWA対応してモバイルアプリとしてインストールできるようにしてほしいな。manifest.jsonファイルを追加するだけで超簡単だよ。[0]で生成できるし。<br>ドラムキット増やす予定ある？それとも、HNみたいに、ユーザーが自分でサンプルを設定できるようにする（ローカルに保存、自分用）とか？<br>0: http://pwabuilder.com/" userName="omneity" createdAt="2025-03-24T01:39:09" color="#45d325">}}

{{<matomeQuote body="PWA対応、TODOリストに追加したよ！<br>ドラムキットについては、実は最優先事項なんだ。今Yamaha RX5とOberhiem DMXに取り組んでて、1、2日で公開できるはず。何かおすすめのドラムマシンある？" userName="wesz" createdAt="2025-03-24T01:49:47" color="#785bff">}}

{{<matomeQuote body="サンクス！8-bitシンセも好きだけど、Roland TRシリーズ（707、808、909、08、09）みたいな定番も好きなんだよね。" userName="omneity" createdAt="2025-03-24T08:47:24" color="#785bff">}}

{{<matomeQuote body="https://drumpatterns.onether.com/doofusbeatz666s-yowzah-2/<br>マジ最高！" userName="spoonfeeder006" createdAt="2025-03-24T00:42:32" color="#785bff">}}

{{<matomeQuote body="それマジでイケてるね！" userName="wesz" createdAt="2025-03-24T00:51:20" color="#38d3d3">}}

{{<matomeQuote body="スタンドアロンのandroidドラムマシンがあるよ。いい音も入ってる。パターンが移植できるかはわからないけど。<br>Drum On, tiny apk.<br>https://f-droid.org/en/packages/se.tube42.drum.android/" userName="metalman" createdAt="2025-03-23T17:22:29" color="">}}

{{<matomeQuote body="シェアしてくれてありがとう！こんなのあるなんて知らなかった！<br>インターフェースはちょっとアレだけど、ちゃんと使えるよ。" userName="mamonoleechi" createdAt="2025-03-23T21:23:23" color="#38d3d3">}}

{{<matomeQuote body="ナイスなサイト！<br>言及されてないフィードバックだけど、iPhoneだと、映像がオーディオより4分の1拍早く表示される（60 BPMで約200-250ms遅れてる）。<br>大したことないけど、ちょっとズレてる感じがする。<br>これもiPhoneのSafariの仕様かもね。" userName="jader201" createdAt="2025-03-23T20:42:38" color="">}}

{{<matomeQuote body="それ、俺もわかるかも。原因になりそうなものがいくつかあるから、試してみてくれない？多分3番目のリンクが一番いいと思う。<br>http://drumpatterns.onether.com/?audio=1<br>http://drumpatterns.onether.com/?audio=2<br>http://drumpatterns.onether.com/?audio=3 ← まずはこれを試してみて" userName="wesz" createdAt="2025-03-23T22:20:44" color="#ff5c5c">}}

{{<matomeQuote body="やあ、<br>https://blog.paul.cx/post/audio-video-synchronization-with-t...<br>（筆者です）に何が起こっているか、どうすればいいかの情報があるよ。<br>Safariでは重要なAPIがまだ実装されていないから運が悪いね：<br>https://developer.mozilla.org/en-US/docs/Web/API/AudioContex...<br>（下の方を見て）。つまり、これは修正できないんだ。例えば、ワイヤレスのような高レイテンシーのオーディオ出力デバイスを使うと、常にずれが生じる。有線／内蔵スピーカーモードのハンドヘルドやMacBookはレイテンシーが優れているから、特に何もする必要はない。オーディオが映像より先に来なければ、人間には不快だ。少し遅れる方が、正確でないよりずっと自然だ。<br>リアルタイムのオーディオと映像の緊密な同期についてもっと詳しく知りたければ、padenot@mozilla.comまでメールしてね。喜んで協力するよ。そして、素敵なウェブサイトおめでとう！" userName="padenot" createdAt="2025-03-24T06:47:57" color="#ff33a1">}}

{{<matomeQuote body="ありがとう、メール送ったよ。" userName="wesz" createdAt="2025-03-24T13:19:01" color="#ff5733">}}

{{<matomeQuote body="うん、デスクトップのSafariでも同じ現象が起きてる。" userName="ozornin" createdAt="2025-03-23T21:25:07" color="">}}

{{<matomeQuote body="これ、役に立つかも？<br>http://drumpatterns.onether.com/?audio=3" userName="wesz" createdAt="2025-03-23T23:06:46" color="">}}

{{<matomeQuote body="これいいね！遊んでて楽しかったよ。これ書くのにどれくらい時間かかった？俺も似たようなプロジェクトに関わったことあるんだけど、めっちゃ時間かかってびっくりしたんだよねー。（TypeScript使ってて、Next.js上でやったんだけど）" userName="tttym" createdAt="2025-03-23T18:08:26" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
