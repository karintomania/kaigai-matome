+++
date = '2025-04-29T00:00:00'
months = '2025/04'
draft = false
title = 'しつこい相手からサーバーを守るためzip bombを使ったらこうなった'
tags = ["サーバー", "セキュリティ", "プログラミング", "ネットワーク", "DoS"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> しつこい相手からサーバーを守るためzip bombを使ったらこうなった

引用元：[https://news.ycombinator.com/item?id=43826798](https://news.ycombinator.com/item?id=43826798)




{{<matomeQuote body="2001年ごろの話だけど、家にstatic lineがあって、Linux boxで色々ホストしてたんだ．Windows NTのアップデートで、多くのNT boxがoptimistic encryptionとかいうのを有効にしちゃって、特定のポートでs/wanを交渉しようとしてTCP trafficを送ってくるようになったんだよね．firewallでそういうトラフィックをよく見てたから、別に大したことなかったんだけど．<br>でも、特に一つ、めちゃくちゃしつこいマシンがいたんだ．数秒おきに接続しようとしてきて、全然やめないんだよ．そいつのadminに連絡取ろうとしたんだけど（当時はみんなそうしてたんだよ）、全然ダメだった．<br>最終的に「あのさ、君のマシンがポート＜whatever it is＞に数秒おきに接続しようとしてるみたいなんだけど．ちょうどそのポートで新しいサービスを始めるから、君に問題起こさないか念のため知らせとくね．」ってメッセージを送ったんだ．<br>もちろん返事はなかったね．<br>で、そのポートにサーバーを立てたんだ．基本的に/dev/urandomから読んで、TCP_NODELAYとか他のフラグを設定して、ランダムなゴミデータをできるだけ速く送り出すようにしたんだ．クライアントはこのランダムな文字列がnull終端されてない方がいいかもしれないと思って、親切にも本来なら自然に発生するnullは全部取り除いたんだ．<br>その設定ミスったNT boxは接続して、5秒間ぐらいランダムデータを飲んで、それから消えたんだ．それから5分後、また現れて、接続して、そのbuffer overflow medicineを受け取って、また消えた．<br>このパターンが数週間続いて、最終的にそいつはインターネットから完全に消えたんだ．<br>きっと向こうのadminは、なんでNT boxが再起動しまくるんだ？って頭かきむしってたんだろうなって想像すると面白いね．" userName="seanhunter" createdAt="2025/04/30 04:10:19" color="#ff33a1">}}




{{<matomeQuote body="これを読んでるプログラマーのみんなへの教訓だけど、他人から受け取るデータの量には必ず上限を設定すべきってこと．全部のリクエストで、timeoutと消費するデータ量の制限を設けるべきだよ．" userName="kqr" createdAt="2025/04/30 05:06:14" color="#ff5733">}}




{{<matomeQuote body="それは必ずしもリクエスト自体に入れる必要はないと思うな．<br>リクエストが一部になっているもっと広いプロセスとかシステム全体で制限することもできるでしょ．" userName="eru" createdAt="2025/04/30 05:45:32" color="">}}




{{<matomeQuote body="これ読んで面白かったよ、シェアしてくれてありがとう．adminに連絡しようとしたって言ってたけど、当時ってどうやって適当なクライアントのadminの連絡先を見つけてたの？" userName="mkwarman" createdAt="2025/04/30 04:26:23" color="">}}




{{<matomeQuote body="それはそうだけど、やっぱりリクエスト単位で制限することをおすすめするよ．その方がプログラマーはリクエストが失敗する可能性があるってことをはっきり意識するようになるし、失敗をどうにか処理する必要があるってわかるからね．たとえそれがプロセスを強制終了して再起動するってことだとしても．" userName="kqr" createdAt="2025/04/30 06:37:53" color="">}}




{{<matomeQuote body="これに賛成．文脈によっては、長すぎるレスポンスを処理プロセスをクラッシュさせるより、もっと優雅に処理する方法があるかもしれないしね．" userName="GTP" createdAt="2025/04/30 09:32:23" color="">}}




{{<matomeQuote body="ただ、「バイト数が多すぎる」制限の問題は、時間が経つと共通のサイズだったものが今度は「小さすぎる」サイズになって、後から障害の原因になりがちだってことかな．画像とかを扱ってる場合とかね．<br>時間の制限の方が、bandwidthが多少制限されてれば、結果的にサイズも制限する傾向があるよ．" userName="lazide" createdAt="2025/04/30 10:45:36" color="">}}




{{<matomeQuote body="テクノロジーが進化したからって一つのユーザーフローで意図的にサービス拒否する方が、システムの一部が誤動作して全員に誤ってサービス拒否しちゃうよりはるかにマシだよ．<br>timeoutとかサイズ制限は、正当なニーズが見つかれば簡単にアップデートできるもんね．" userName="kqr" createdAt="2025/04/30 13:44:39" color="#ff5c5c">}}




{{<matomeQuote body="当時はpostmaster@theirdomainとかwebmaster@theirdomainみたいなのは、実際に人が読んでたんだよ．あとwhoisコマンドもよく使えたね．" userName="cobbaut" createdAt="2025/04/30 06:50:58" color="#45d325">}}




{{<matomeQuote body="やあ、君にいくつかの障害発生後の報告書を見せてあげたいな．実際問題として、どこかに適当なサイズ制限を置くのは、クリティカルなシステムに「また更新が必要なssl-cert」を置くみたいなもんだよ．いずれ予期せぬ障害を引き起こすだろうね．<br>もちろん、誰か非難できる人はいるだろうけど、現実には、誰かが忘れてそれに突っ込むのは避けられなかったってことだね．<br>timeoutは色々な理由で、こういう問題が起きにくい傾向があるよ．" userName="lazide" createdAt="2025/04/30 14:25:58" color="">}}




{{<matomeQuote body="そしたらさ、正当なユーザーにも使われてるサービスも一緒にぶっ壊しちゃうかもよ。" userName="guappa" createdAt="2025/04/30 09:22:58" color="">}}




{{<matomeQuote body="スイスの大手ISPで働いてんだけどさ、今でもこういうメールボックスって実際に人が読んでるんだ（俺も含めてね）。だから今でも時にはやる価値あるんだぜ。" userName="dspearson" createdAt="2025/04/30 07:43:30" color="">}}




{{<matomeQuote body="全然関係ない話だけどさ、家のRPiサーバーでダウン検知のめんどくさい修正したことあるんだ。自分のドメインにping打って、それがダメならネットワークに繋がってないか再起動したと見なしてたの。そしたらそのドメイン更新し忘れてさ、RPiが5分おきにダウンしまくり…電力障害かと思ったら、CRONジョブのこと思い出したわ。" userName="ge96" createdAt="2025/04/30 14:48:37" color="">}}




{{<matomeQuote body="驚くかもしれないけど、あの時代のNTのインストールでサービスを提供してる大半のケースでは、何が起きてるかに気づくような管理者はほとんどいなかったんだ。こんな風にNTでサービス動かすのは、‘管理者を置かなくて済むように’って目的で、数えきれないくらい何千件もそうだった。これは過小評価できないよ。免責事項として言うけど、俺は90年代から2000年代初頭にかけてたくさんのサーバーをネットに置いたんだ。‘管理者がいらないからNTを使え’って、業界標準のやり方だったんだよ。" userName="MomsAVoxell" createdAt="2025/05/02 15:16:17" color="#ff5733">}}




{{<matomeQuote body="それはどう設定するかによるね。例えば、リクエストごとにforkするなら、そのプロセスはそのユーザーだけに対応するし。もしくは十分早く再起動できるかとか。これは主にErlangに触発されてるんだ。" userName="eru" createdAt="2025/04/30 18:07:18" color="#785bff">}}




{{<matomeQuote body="でも、制限を設けないと、バッファオーバーフローっていう別の種類のアウトの原因を作ることになる。これって攻撃者に悪用される可能性のあるセキュリティリスクにもなりうるんだ。<br>たぶんこの問題はプロトコルレベルで解決した方がいいだろうけど、それまでの間はサイズ制限が現実的だね。" userName="GTP" createdAt="2025/04/30 14:45:57" color="#ff5c5c">}}




{{<matomeQuote body="ちょうど同じ頃か、もっと前かな。どっかの会社が毎週金曜日に迷惑FAX送ってきてたんだ。オフィス番号に何度も丁寧に留守電入れたけど無視されてさ。だから、100ページのPDFで、各ページが大きな黒い四角形になってるのを作って、当時流行りのメールtoFAXゲートウェイを使ってそいつらに送ったんだ。そしたら1時間も経たないうちに怒りの電話がかかってきたよ。迷惑FAXは止まったね。" userName="mjmsmith" createdAt="2025/04/30 16:24:36" color="#38d3d3">}}




{{<matomeQuote body="1997年頃かな、同僚がメールリストに登録しちゃって、解除しようとしてもできなかった（確か手動だった）。そいつに提案したんだ、毎時間動くcronjobを設定して、解除リクエストのメールを送るようにって。解除リクエストの入ったテキストファイルを元にするんだけど、繰り返すごとにそのテキストを複製していく、実質的に等比数列的に増えていくようにね。そしたらリストオーナーが1週間かそこらで返信してきて、かなり緊急で同僚に止めるように要求してきたよ、リストから削除するって言って。どうやらリストオーナーはずっと休暇で留守にしてたらしい。" userName="quaddo" createdAt="2025/04/30 20:08:18" color="#ff5733">}}




{{<matomeQuote body="リクエストごとにforkするのは、速いサーバーにはならないだろうね。" userName="guappa" createdAt="2025/05/02 07:15:37" color="">}}




{{<matomeQuote body="これ、俺のテスト戦略の一つにつながる話だよ。ランダムにタイムアウトを短くしたり、バッファサイズを小さくしたりするのは簡単なんだ。それを使ってエラーを起こさせて、システムがどうなるか見るんだよ。一時停止して続けるか、それとも完全にクラッシュするか？" userName="Gibbon1" createdAt="2025/04/30 18:25:56" color="">}}




{{<matomeQuote body="Stalwartで新しいメールサーバーを立てたんだけど、postmaster宛てに自動メールが届くようになったんだ（主にセキュリティ関連の結果だけど）。なかなかいい感じだよ。" userName="NetOpWibby" createdAt="2025/04/30 07:48:24" color="">}}




{{<matomeQuote body="Hetznerとかにポートスキャンされてるって問い合わせてみたけど、誰も気にしてくれないんだよね。Plexの開けてるポートへのスキャンでファイアウォール警告が出まくった時はさすがに問題にしたよ。そこからめちゃくちゃ調べていったら、ストリートアドレスのランダムな部分みたいなドメインがいっぱい見つかったんだ。明らかに自動生成で、関連ドメインを追跡しにくくするためにわざとやってるみたい。" userName="wil421" createdAt="2025/05/01 15:16:13" color="#45d325">}}




{{<matomeQuote body="責任あるドメインオーナーなら、そういうメールはちゃんと読むもんだよ。俺のpostmasterは、全部のドメインのキャッチオールにしてるんだ。ユーザー名のタイプミスも拾えるからね。家族用のドメインで、慌ててる医療スタッフが親のアカウント設定を間違えた時とかに、めっちゃ助かってるんだ。" userName="rekabis" createdAt="2025/05/03 15:20:00" color="">}}




{{<matomeQuote body="IPアドレスのまとまりの所有者も調べられるんだ。昔は、特定のIPアドレスの責任者が誰かっていうのを、さらに特定するのをよく助けてくれたりもしたんだよ。" userName="kqr" createdAt="2025/04/30 05:08:20" color="">}}




{{<matomeQuote body="RP DNSレコード（https://www.rfc-editor.org/rfc/rfc1183）がずっと好きだったんだけど、もう誰も知らないみたいだし使ってないよね。俺のサーバーに今ついてない唯一の理由は、route53がサポートしてないからだよ。" userName="__david__" createdAt="2025/05/01 00:56:35" color="">}}




{{<matomeQuote body="tech-cとかabuse addressesは、whoisでよく見れたんだよね。" userName="DocTomoe" createdAt="2025/04/30 04:49:14" color="">}}




{{<matomeQuote body="＞また更新しなきゃいけないssl-certを、なんかクリティカルなシステムに入れるなんてさ<br>これに対する解決策を数年前に見つけたんだ。`openssl req -x509 -days 36500`だよ。" userName="RulerOf" createdAt="2025/04/30 17:39:45" color="">}}




{{<matomeQuote body="いや、単なるOOMだよ。うん、どこかで制限は必要だけどね。それは勝手な制限じゃなくて、なんか処理の限界に基づいてるべきだよ。理想的には、例えばメモリ使用量が増えるにつれて適応するべきだね。" userName="lazide" createdAt="2025/04/30 14:56:21" color="#45d325">}}




{{<matomeQuote body="バカな子供だった頃の話なんだけどさ＜、＞ホームページで`ln -s /dev/zero index.html`をジョークでやったんだ＜。＞＜br＞当時のブラウザはあれダメで＜、＞フリーズしたり＜、＞クライアントシステムごと落ちたりしたんだよ＜。＞＜br＞後からブラウザはコンテンツチェックするようになって＜、＞そういうのは止まるようになったと思うな＜。＞" userName="layer8" createdAt="2025/04/29 20:36:06" color="">}}




{{<matomeQuote body="昔＜、＞エンコーダーに同じマクロブロックの行をずーっと食わせて＜、＞64kx64kのJPEG作ったことあるんだよね＜。＞＜br＞何年か経って＜、＞やっと開けるようになったよ＜。＞" userName="bobmcnamara" createdAt="2025/04/29 23:59:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この前さ＜、＞10MBくらいのデカいpng開けるのにめっちゃ苦労したんだ＜。＞ゲームのマップ画像繋げたやつ＜。＞＜br＞一部ソフトは開けないか固まるかぼやけるかでダメ＜。＞スマホのFossify Galleryは遅いけど見れた＜。＞＜br＞結局GIMPで開けたけど＜、＞RAM 8GB食った＜。＞GIMPのビューワー機能だけ欲しいわ＜。＞＜br＞ファイルはここ＜：＞https://0x0.st/82Ap.png＜br＞ブラウザじゃなくてcurl/wgetで落とすのがいいよ＜。＞" userName="opan" createdAt="2025/04/30 00:09:47" color="#ff5c5c">}}




{{<matomeQuote body="squashfs使ってさ＜、＞無限の＜div＞＜div＞＜div＞＜。＞＜。＞＜。＞って閉じタグない500TBのhtmlファイル＜、＞適切なヘッダー付きで作れないかな＜、＞あとサーバーにダウンロード前にファイルサイズ教えないように指示できるかなって思ってるんだけど＜。＞＜br＞なんかアイデアある＜？＞" userName="M95D" createdAt="2025/04/30 07:37:22" color="">}}




{{<matomeQuote body="うん＜、＞サーバーはチャンクエンコーディング使えばサイズ教えないで返事できるよ＜。＞残りはさ＜、＞「＜div＞」ってループで返すカスタムウェブサーバー作ればできるね＜。＞ブラウザがそういうのに弱いかは分かんないけど＜。＞" userName="CobrastanJorji" createdAt="2025/04/30 07:44:50" color="#785bff">}}




{{<matomeQuote body="iPhone 12のsafariで5秒くらいで開いたよ＜。＞＜br＞パンとかズームもスムーズだよ＜。＞" userName="Moosdijk" createdAt="2025/04/30 03:21:43" color="">}}




{{<matomeQuote body="サーバーサイドインクルード使ってhtml爆弾作れないかなって＜？＞＜br＞普通の静的htmlページ書いて＜、＞＜p＞タグの中に＜!--＜！＞--＜！＞#include file=”/dev/random”--＜！＞＞で無限のランダムデータ入れるとかさ＜。＞＜br＞それってサーバー落ちちゃうかな＜？＞" userName="M95D" createdAt="2025/04/30 08:25:20" color="">}}




{{<matomeQuote body="squashfsじゃなくて＜、＞OPと同じく圧縮版を配信してさ＜、＞クライアントに解凍とDOMの深さの両方でダメージ与えればいいじゃん＜？＞＜br＞yes ”＜div＞”|dd bs=1M count=10240 iflag=fullblock|gzip | pv ＞ zipdiv.gz＜br＞ファイルは15mibくらいなのに＜、＞解凍したら閉じタグないdivが17億個以上入ったヤバい奴になるよ＜。＞" userName="Ugohcet" createdAt="2025/04/30 09:38:00" color="#ff5c5c">}}




{{<matomeQuote body="メインページから見えないリンクにしちゃえばいいんじゃない＜？＞（ロゴの後ろとかに隠してさ）＜。＞ユーザーはクリックしないけど＜、＞ボットは食いつくから＜。＞" userName="M95D" createdAt="2025/04/30 08:05:56" color="">}}




{{<matomeQuote body="もしかしたら、/dev/zipbombみたいなデバイスがあってもいい頃かもね。" userName="amelius" createdAt="2025/04/30 08:35:11" color="">}}




{{<matomeQuote body="え、symlinkを設定したの？どうやってそれが動いたのかよく分からないな。もし実際の/devツリーがwebサーバーのchroot環境に公開されてなかったら、”ファイルが見つかりません”って表示されるだけで特別なことは何も起きなかったはずだよ。webサーバーのchrootの目的って、そういう特別なファイルにクライアントがアクセスするのを防ぐことだったじゃん！" userName="AStonesThrow" createdAt="2025/04/30 08:08:52" color="#ff5733">}}




{{<matomeQuote body="たぶんサーバーの実装によるんだろうけどさ。でも、どうせhtml bombをいつ返すか判断するロジックが必要なんだから、なんでこの解決策が良いのか分からないな。ボットを検知してるスクリプトを使ってbombを返せば良いだけじゃない。" userName="GTP" createdAt="2025/04/30 10:50:00" color="">}}




{{<matomeQuote body="IrfanViewでRyzen 7 5800xだと、8秒くらいで2.8GBのRAMを使って読み込めたよ。でもズームとかパンはかなり遅かったな（1アクションあたり500msくらい）。" userName="bugfix" createdAt="2025/04/30 00:54:09" color="#ff5c5c">}}




{{<matomeQuote body="KiB単位で帯域幅にお金払ってなかったら良いけどね。" userName="koolba" createdAt="2025/04/29 21:21:08" color="">}}




{{<matomeQuote body="ゼロ除算って誰にでも起きるもんだよね。USS Yorktownが訓練中に3時間近く止まったのも、データベースアプリのゼロ除算エラーが制御システムに広まったかららしいよ。技術者が燃料バルブを調整するのに0を入力したのが原因みたい。" userName="sandworm101" createdAt="2025/04/29 21:45:38" color="#ff5733">}}




{{<matomeQuote body="不思議だなあ、Safariを入れたiPhone 12 Pro Maxだと読み込みに30秒かかったけど、その後はパンやズームがスムーズだったよ。ChromeとEdgeがすぐに諦めて”壊れたサムネイル”アイコンになった16コア64GB RAMのWindowsマシンよりずっと良い感じだった。" userName="close04" createdAt="2025/04/30 08:24:12" color="#ff5733">}}




{{<matomeQuote body="かなり古いスマホのAndroidでFirefoxだと、ぼやけたプレビューが10秒くらいで表示されて、完全に表示されるまで20秒ちょいだったかな。その間ずっとパンもズームもスムーズだったよ。" userName="lgeek" createdAt="2025/04/30 02:39:02" color="#45d325">}}




{{<matomeQuote body="君自身がどうやって動いたのか説明してるじゃん。たくさんのwebサーバーがchrootされてない、あるいはされてなかったんだよ。" userName="vidarh" createdAt="2025/04/30 09:08:48" color="">}}




{{<matomeQuote body="これの問題は、tarpitの場合、ボットにとって高価にするだけじゃなくて、自分にとっても安価にしたいってことなんだよ。これは君にとって安くない。zip bombは安価だ。" userName="stefs" createdAt="2025/04/30 09:05:36" color="#38d3d3">}}




{{<matomeQuote body="他のスクリプトはナシね。人間がクリックできないように、爆弾へのリンクを画像の後ろに隠すんだ。" userName="M95D" createdAt="2025/04/30 12:02:42" color="">}}




{{<matomeQuote body="ln -s /dev/urandom /dev/zipbomb && echo ’Boom！’<br>まあ、これは本物のzip bombじゃないけどね。本物にはkernel moduleが必要になるかな。" userName="GTP" createdAt="2025/04/30 10:52:13" color="">}}




{{<matomeQuote body="これがscreen readerとか他のaccessibility deviceとどう連携するかってのが、まず最初に思ったことだね？" userName="scoodah" createdAt="2025/05/01 06:22:29" color="">}}




{{<matomeQuote body="いやー、あの頃はbandwidthってkb単位で金払ってたからさ。" userName="santoshalper" createdAt="2025/04/29 22:48:08" color="">}}




{{<matomeQuote body="多分、同じengineがベースになってるからじゃない？" userName="GTP" createdAt="2025/04/30 10:44:00" color="">}}




{{<matomeQuote body="browserをcrashさせるfavicon.icoみたいだね。<br>これだと思うよ：https://freedomhacker.net/annoying-favicon-crash-bug-firefox..." userName="m463" createdAt="2025/04/29 22:58:01" color="#ff5733">}}




{{<matomeQuote body="そうそう、だから見えないlink + zipbombってのが「da bomb」なんだよ。" userName="ku1ik" createdAt="2025/05/01 08:29:40" color="">}}




{{<matomeQuote body="vectorベースのlayerが入ってるPDFファイル、e.g. 広いエリアのplanとかmapとかも、renderしたり開いたりするの結構大変なんだよね。" userName="sixtyj" createdAt="2025/04/30 05:54:40" color="#ff33a1">}}




{{<matomeQuote body="同じ経験だよ。Safariでズームして高解像度renderさせたらタブがcrashした。<br>部分ズームは平気だったけど、最大ズームで落ちたんだ。<br>Safariの賢いprogressive renderingでも、全解像度だとOOMとかでダメみたいだね。" userName="avianlyric" createdAt="2025/04/30 10:43:08" color="#ff33a1">}}




{{<matomeQuote body="Samsung S23 UltraのFirefoxだと数秒速かったけど、それ以外は同じ体験だったよ。" userName="connicpu" createdAt="2025/04/30 05:57:02" color="#ff5c5c">}}




{{<matomeQuote body="Pythonの小さいスクリプトでテストしてみたんだ。900MB/sくらいのレートでdiv送りまくったら、firefoxは1〜2GB受け取ったとこで「メモリ不足」エラー出してすぐ落ちちゃった。chromeの方は1MB/sくらいしか受け取らないくせにCPUを1コア100パーセント使って、メモリも無限に増え続ける感じ。3分で6GBくらい（起動時より追加で）消費したとこで強制終了したよ。" userName="konata390" createdAt="2025/04/30 08:25:48" color="#ff33a1">}}




{{<matomeQuote body="最近のブラウザはほとんどzstdとかbrotliに対応してるから、今の時代だとzip bombはもっと効果的かもね！[これ](https://news.ycombinator.com/item?id=23496794)は昔のコメントだけど、1.2M:1っていうすごい圧縮率だったみたいだし、[zstdはさらにすごい](https://github.com/netty/netty/issues/14004)みたいだね。まあ、botは最新の圧縮規格に対応してないかもしれないけど。逆に言えば、それってbotをブロックするのに良い方法かも。最新のブラウザはみんなzstd対応してるから、ホワイトリストに載ってないブラウザエージェントにはzstdを強制すれば、スクレーパーとかを自動的に混乱させられるよ。" userName="jeroenhd" createdAt="2025/04/29 22:16:43" color="#785bff">}}




{{<matomeQuote body="実は俺、これ（圧縮を使ってbotを除外すること）を、俺の100万個のチェックボックスのDatastarデモ[1]で実際にやってるんだ。これって、ユーザーのビュー全体をインタラクションのたびにストリーミングするのにすごく依存してるんだよね。brotli over SSEを使えば、簡単に200:1の圧縮率を達成できるよ[2]。問題なのは、悪意のあるアクターが非圧縮でストリームを要求してくる可能性があること。brotliは98パーセントのブラウザにサポートされてるから、brotli圧縮をサポートしてないクライアントにはデータをプッシュしないようにしてるんだ。それと、たくさんのスクレーパーやbotがこれに対応してないってことも分かったから、結構うまく機能してるよ。<br>[1] チェックボックス デモ https://checkboxes.andersmurphy.com<br>[2] brotli SSEに関する記事 https://andersmurphy.com/2025/04/15/why-you-should-use-brotl..." userName="andersmurphy" createdAt="2025/04/30 09:00:24" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="gzipの中にさらにgzipを入れ子にすると、最初のgzipで作られた圧縮された ’0’ のブロック自体が低エントロピーだから、さらに小さくなるんだ。ネストしたzstdだと、10GBのファイルが99バイトになるらしいよ。" userName="kevin_thibedeau" createdAt="2025/04/29 23:16:43" color="#ff5c5c">}}




{{<matomeQuote body="再帰的なファイル構造を自分で編集して作って、無限にできるのかな？昔、dosのdebugでFATを編集して、ものすごく巨大に見えるフロッピーディスクを作ってたのを思い出すよ。" userName="galangalalgol" createdAt="2025/04/30 03:24:04" color="">}}




{{<matomeQuote body="https://research.swtch.com/zipit は基本的にクワインだよ。" userName="hidroto" createdAt="2025/04/30 06:39:03" color="#785bff">}}




{{<matomeQuote body="でもbotはおそらく外側のレイヤーしか自動では解凍しないだろうから、ネストしてもbot対策としてはあまり役に立たないと思うよ。" userName="Thorrez" createdAt="2025/04/30 11:31:51" color="#38d3d3">}}




{{<matomeQuote body="それだと攻撃を無効化しちゃうんじゃないの？だって大きなコンテンツをサーバーが提供してないってことになるでしょ。" userName="Cloudef" createdAt="2025/04/30 03:35:02" color="">}}




{{<matomeQuote body="ボットがリンク経由でファイルにアクセスして解凍・内容チェックする必要あるね。圧縮ファイルを圧縮レスポンスで送れば二重構造でトラフィック減らせる。passwd.zstとかsecrets.docxは魅力的なファイルだろ？robots.txtにリストしたハニーポットディレクトリに餌仕掛けて、誰が釣れるか見てみようぜ。" userName="kevin_thibedeau" createdAt="2025/04/30 03:41:49" color="#785bff">}}




{{<matomeQuote body="前調べた時、タブが読み込み続けて固まり、RAM食いすぎるとタブのプロセス落ちたよ。「タブがブラウザ遅くしてる」とか出るくらいで、壊滅的な被害はないみたい。<br>タブプロセスが落ちるマズさはブラウザによるかな。サイト分離してるならそのサイトだけ落ちる。共有してるなら状態失うかも。Chromeは大丈夫、Firefoxは設定・タブ数で変わる、Safariは設定次第。Safariはzstd非対応だからbrotli爆弾が一番効くよ。" userName="jeroenhd" createdAt="2025/04/30 08:29:54" color="#ff5733">}}




{{<matomeQuote body="gzipはどこにでもあるから、どんなクローラーにも効くだろ。" userName="anthk" createdAt="2025/04/30 11:15:28" color="">}}




{{<matomeQuote body="＞ 前の会社で、ボットがwordpressの脆弱性を見つけて、サーバにヤバいスクリプト仕込まれたってさ<br>ちょっと話題ズレるけど、Wordpressを1時間セットアップしただけでPHPシェルが魔法みたいにサーバにデプロイされるって知って、面白くて（訂正: 安心した）よかったわ。" userName="bilekas" createdAt="2025/04/29 20:45:57" color="">}}




{{<matomeQuote body="そうそう、正気でいたいならWordpressを自分でホストするのは絶対やめた方がいいよ。最初の一時間じゃなくても、パッチ忘れればいつかやられるだろうね。" userName="ianlevesque" createdAt="2025/04/29 21:05:52" color="">}}




{{<matomeQuote body="13年もWordpress自分でホストしてるけど、全然問題ないよ :) 標準的なセキュリティ対策ちゃんとやって、プラグイン大量に入れなきゃ大丈夫。" userName="sunaookami" createdAt="2025/04/29 21:09:32" color="">}}




{{<matomeQuote body="Wordpressって、色々基本的な機能が足りなくてプラグイン入れなきゃいけない場面が多いんだよ。何やりたいかにもよるけどね。でも、とにかく最悪なプラットフォームだから、正直Wordpressを何かで使う理由なんてないと思う。どんな使い方でも、Wordpressより良い別の選択肢があるはずだよ。" userName="carlosjobim" createdAt="2025/04/29 21:18:15" color="">}}




{{<matomeQuote body="非技術系の団体で、ページ編集したり資料アップしたりする人がいて、使いやすい画面が必要な場合、特に予算なくてボランティアで手伝ってる時、おすすめの代替策ある？Wordpress立てるのがすごく楽なんだけど、俺もあんまり好きじゃないんだよね。前、こういう時Drupal試したけど、彼らには難しすぎた。昔の話だから、今もっと良くなってるかもだけど。" userName="aaronbaugher" createdAt="2025/04/29 21:37:01" color="">}}




{{<matomeQuote body="Jekyllを使った静的サイトなんてどうかな？" userName="willyt" createdAt="2025/04/29 21:44:42" color="">}}




{{<matomeQuote body="JekyllとかのStaticサイトジェネレーターとWordpressは全然違うよ。WordpressはUIで複数人編集、画像追加、スマホ対応も楽。Staticサイトだとgit必須、手動ビルド、WYSIWYGなし、スマホ非対応で投稿が超めんどくさい。ブログをWordpressからStaticサイトに変えたら投稿の手間が増えて投稿頻度下がっちゃったんだ。" userName="socalgal2" createdAt="2025/04/29 22:12:19" color="#785bff">}}




{{<matomeQuote body="俺、カスタムWeb開発ばっかやってるから、ウェブサイトホスティングとか全然詳しくないんだけどさ。ちょっとだけ技術わかる人がウェブサイト立ち上げるのを軽く手伝うとしたら、今いいフレームワークとかある？ReactのSPAとかAPI付きのガッツリしたのじゃなくて。" userName="wincy" createdAt="2025/04/29 21:38:48" color="">}}




{{<matomeQuote body="非技術者の組織で、定期的にページ編集やドキュメントアップロードできる人がいて、そのために可能な限りユーザーフレンドリーなインターフェースが必要な場合の代替案を勧められますか？<br>25年前のMicrosoft Frontpageはファイル共有経由でワープロみたいに編集できてシンプルだった。あのシンプルさから後退して、Wordpressの場当たり的な方法が取って代わった気がするんだ。誰か俺が間違ってるって証明してくれ。" userName="donnachangstein" createdAt="2025/04/29 21:44:26" color="">}}




{{<matomeQuote body="君の質問の感じだと、中小企業向けのウェブサイトを作りたい感じかな？それならjQueryくらいしか必要な”フレームワーク”はないと思うよ。何か売るならサードパーティサービスをiframeで埋め込む感じ。超大企業向けとか、それくらい大規模なウェブショップ全体を作るなら、俺じゃなくて他の人に聞いて。" userName="carlosjobim" createdAt="2025/04/29 22:10:20" color="">}}




{{<matomeQuote body="みんなのお気に入りのStaticサイトジェネレーターは何？Googleで調べたらCloudflareの記事でJekyll, Gatsby, Hugo, Next.js, Eleventyが出てきたんだけど。それぞれの長所短所を調べるのはできれば避けたいんだけどさ。" userName="pettycashstash2" createdAt="2025/04/29 23:13:21" color="">}}




{{<matomeQuote body="Statamicこれ→https://statamic.com/" userName="djxfade" createdAt="2025/04/29 23:12:05" color="">}}




{{<matomeQuote body="Wordpressはホストしたことないけど、インターネットにHTTPサーバー公開したらすぐに/wp-loginとかへのリクエストが来るようになるよね。あれ、ボット見つけるのにも結構使えるんだわ。人気のCMS関連のリクエストしてくるIP見たら、即iptablesの穴にぶち込んでる。" userName="maeln" createdAt="2025/04/30 07:45:16" color="">}}




{{<matomeQuote body="その理由の一つはFrontpageがWindowsサーバーを必要としたこと、それに付随する全て。<br>もう一つは、Frontpageで危険なCVEが連続して発生して、クライアントがパニックになったこと。<br>そして最後に、Frontpageの一部が人気出るたびに、MSがそのAPIを非推奨にして新しいものに置き換えたこと。<br>Wordpressは適切な場所、適切なタイミングで登場したんだ。" userName="shakna" createdAt="2025/04/30 07:41:15" color="#ff5c5c">}}




{{<matomeQuote body="うちにはさ、（内部からしかアクセスできない）Wordpressがあって、そこでプラグイン使ってコンテンツをZIPファイルにエクスポートして、ちょっとしたスクリプトやAnsibleでNGINXサーバーにデプロイしてるんだ。<br>もっと自動化できるはずだけど、まあ両方のいいとこ取りって感じかな。" userName="blipvert" createdAt="2025/04/30 06:22:54" color="#45d325">}}




{{<matomeQuote body="jQueryはもう何年も必要ないんだよ。jQueryコードのVanilla JS版は十分にサポートされてる。<br>https://youmightnotneedjquery.com/" userName="nophunphil" createdAt="2025/04/30 01:39:48" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
