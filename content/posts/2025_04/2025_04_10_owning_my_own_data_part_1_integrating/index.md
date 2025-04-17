+++
date = '2025-04-10T00:00:00'
months = '2025/04'
draft = false
title = '【朗報】個人データ管理革命！自作カレンダーでGoogle先生から完全独立してみた（第一弾）'
tags = ["セルフホスト", "カレンダー", "CalDAV", "データ管理", "OSS"]
featureimage = 'thumbnails/purple5.jpg'
+++

> 【朗報】個人データ管理革命！自作カレンダーでGoogle先生から完全独立してみた（第一弾）

引用元：[https://news.ycombinator.com/item?id=43643343](https://news.ycombinator.com/item?id=43643343)

{{<matomeQuote body="CalDAVマジでクソだと思うんだよねー。みんな良いって言うけど、もっと自ホストのソリューションがあっても良くない？Radicaleもイマイチだったし。自分でCalDAVサーバー立てようとしたけど、マジ無理ゲーだったわ。iCalファイルをS3に置いて、ICSx5で同期するのがまだマシ。でもAndroidのFOSSカレンダーもイケてないから、Proton Calendar使ってる。iCalendarのサポートもバラバラだし、もうdescriptionフィールドに全部ぶち込むことにしたわ。EventbriteとかMeetupからイベント引っ張ってきて、自分のカレンダーにまとめてる。" userName="ravenstine" createdAt="2025-04-10T14:53:41" color="">}}

{{<matomeQuote body="Apple製品のCalDAVクライアント作ったんだけど、マジでプロトコルがクソ。ExchangeとかGoogleのCalDAVサーバーも規格に準拠してなくて、ユーザーからは俺らが責められるし。Googleに来て分かったけど、gCalアプリは全然違うプロトコル使ってるんだね。" userName="kridsdale1" createdAt="2025-04-10T15:18:09" color="#785bff">}}

{{<matomeQuote body="Googleの資金力と経験を活かして、もっと良いオープンソースのプロトコル作ってよ！ZX2C4がOpenVPNにキレてWireguard作ったみたいに、あんたの出番だよ。ソフトウェアの品質は、やる気のある個人によってしか押し上げられないと思うんだ。" userName="bflesch" createdAt="2025-04-10T15:43:11" color="#ff5733">}}

{{<matomeQuote body="JMAP for Calendars RFCがもうすぐIETFから公開されるよ。RFC 8984の共同執筆者です。詳しい情報は[1]と[2]を見てね。<br>[1] https://www.ietf.org/archive/id/draft-ietf-jmap-calendars-22...<br>[2] https://www.rfc-editor.org/rfc/rfc8984.html" userName="rsto" createdAt="2025-04-10T17:19:18" color="#38d3d3">}}

{{<matomeQuote body="JMAPをCalDAVにプロキシできるくらい互換性あるのかな？" userName="conradev" createdAt="2025-04-10T22:05:52" color="">}}

{{<matomeQuote body="JMAPリクエストをCalDAVサーバーに転送するプロキシは知らないけど、カレンダーサーバーがJMAPとCalDAV両方に対応するのは可能だよ。Cyrusサーバーでやってる。iCalendarとJMAPのデータ構造の変換も必要だけど、IETF RFCで作業中だよ。興味ある人は連絡して！" userName="rsto" createdAt="2025-04-11T05:47:15" color="">}}

{{<matomeQuote body="14年前のことだから、もう忘れちゃったよ。もし今やるなら、プロトコルのRFCに対してテスト書いて、それに対してクライアント作るかな。低レベルのクライアント作って、いろんな言語で高レベルのインターフェースを作る。" userName="kridsdale1" createdAt="2025-04-10T15:59:53" color="">}}

{{<matomeQuote body="bfleschは、あんた（か誰かヒーロー的な人）が新しいカレンダーコラボレーションの仕様を書くことを提案してるんじゃない？jmap.ioがメールでやってるみたいに。カレンダーと日付管理はマジでクソだよね。CalDAVのクソさ加減に嫌気がさして、代替を作ろうとした人が何人も諦めてると思うわ。" userName="philsnow" createdAt="2025-04-10T17:20:01" color="">}}

{{<matomeQuote body="マジでそう。俺が今までやった一番ヤバいバグ修正は、iOS 7の発表会を台無しにするところだったタイムゾーンのバグ。顧客ビルドと顧客のハードウェアでしか再現しなくてデバッグもrootも取れなかった。1987年から変更されてないCファイルのレアケースだった。ハードウェアレベルの事もやらなきゃいけなかった。" userName="kridsdale3" createdAt="2025-04-10T18:01:28" color="#ff5c5c">}}

{{<matomeQuote body="datetimeの解決策は、TAI使ってUIで表示するときに変換するライブラリ使うのがほぼ常套手段だと思ってた。（もしくはUTCを使って、うるう秒でバグるのを受け入れるか。）" userName="fc417fc802" createdAt="2025-04-10T18:07:55" color="#ff33a1">}}

{{<matomeQuote body="カレンダーアプリって日付とか時間の扱いがマジ鬼門だよね。TAIはイベント動かさないならいいけどさ。例えば3月28日13時に会議セットして、1週間ずらしたらDSTまたぐじゃん？TAIに604800秒足すと14時になっちゃってびっくし。<br>アメリカで会議設定してドイツ行ってる時にリスケしたら、アメリカ帰ったら1時間早く始まるし。DSTルールってマジでクソ。<br>毎週正午の定例とか、TAIあってもDSTまたぐと、人によって時間ずれちゃうし。<br>あとTAIだとうるう秒でバグる。来年の正午に会議したいのに、うるう秒入ったらズレるとかありえない。<br>マジでカレンダー案件に関わることになったら、履歴書更新した方がいいって。" userName="thequux" createdAt="2025-04-10T19:24:02" color="">}}

{{<matomeQuote body="まず、ローカライズされたdatetimeはマジで複雑だってことは理解してる。だからこそ、外部ライブラリにほぼ丸投げするのが正解。<br>カレンダーソフトって色々複雑なんだろうけどさ。でも、例に出てるのはプログラマーの考え方のエラーじゃね？Storage、display、schedulingとか、違うロジックドメインの関係の理解が甘いんだよ。<br>TAI(Storageフォーマット)でイベント動かすとかありえない。SQLiteのDBのbitを手動でいじるようなもん。<br>ユーザーが考えてるのはローカライズされた時間だから、そっちで作業する。datetimeライブラリを使い倒せ。<br>＞US vs Germany、DSTルールが違う<br>スマホとかない時代に逆戻りだよ。ドイツ出張中に秘書に電話して会議リスケする時、ドイツ時間じゃなくてUS時間使うでしょ。<br>イベントには場所があって、timezoneがある。Schedulingはそのtimezoneでやる。デバイスのtimezoneを盲目的に使うのは間違い。<br>＞半分が違う時間に来る<br>イベントにはTAI時間がある。datetimeライブラリにバグがなければ、全員同じ時間に見えるはず。<br>＞TAIはうるう秒でバグる<br>Storageフォーマットを手動でいじろうとするからだよ。TAIを使うのは、うるう秒の処理をdatetimeライブラリに任せるため。" userName="fc417fc802" createdAt="2025-04-10T20:07:17" color="#785bff">}}

{{<matomeQuote body="＞You never move events around in TAI (the unambiguous storage format) just as you don't go manually flipping bits in an SQLite database.<br>全＞それは違うな。将来のイベントから見ると、timezone付きの13時のイベントは、そこのcrazyな人たちがDSTを宣言しても、まだ”timezone付きの13時”なんだよ。未来の”timestamps”は全部DSTのせいで動く可能性がある。だからtimezone DBを最新に保って、ユーザーのイベントがズレないようにしないと。<br>rfc9557とか使わないと、後でcalendar/schedulerで痛い目見るかもよ。" userName="ElectricalUnion" createdAt="2025-04-11T02:35:53" color="">}}

{{<matomeQuote body="なるほどねー。<br>あのRFCチラ見したけど、UTC offsetって何のため？datetimeライブラリがtimezone情報古いのをチェックするため？そうじゃないなら、ライブラリが全部持ってるはずだから要らない気がする。" userName="fc417fc802" createdAt="2025-04-11T06:18:46" color="">}}

{{<matomeQuote body="問題は、TAIは現実のソースじゃないってこと。Arizonaが法律変えたら、イベントのTAIが変わっちゃう。だからStorageフォーマットはdatetime with time zoneじゃないとダメ。" userName="et1337" createdAt="2025-04-11T00:56:34" color="#ff5c5c">}}

{{<matomeQuote body="なるほどね。timezoneは法律で変わるってこと考えてなかったわ。<br>TAIでStorageって言ったのが間違いだった。過去のイベントだけね。<br>イベントのtimezoneをStorageに使って、うるう秒は無視して、datetimeライブラリに任せるのが正解。<br>何か見落としてる？timezoneの複雑さを全部datetimeライブラリに押し付ければ、難しい部分は解決済みじゃない？" userName="fc417fc802" createdAt="2025-04-11T06:11:46" color="">}}

{{<matomeQuote body="datetimeライブラリ使ってtimezone考慮した日付計算を正しくやるだけでも大変だよ。" userName="funcDropShadow" createdAt="2025-04-11T11:31:28" color="">}}

{{<matomeQuote body="Schedulingで1分以下の精度でイベント設定する人ってほとんどいないと思うんだよね。TAIはUTCより良いけど、UTCの方がサポートされてるし、うるう秒なくなるかもだし、無視するのが良いかも。<br>timezoneはマジで複雑。ルール変わる時とか特にね。<br>イベント設定後にルール変わったら、UTCが変わる。ユーザーに確認した方がいいかも。<br>クライアントとサーバーのtimezone定義が違うと悲惨。iCalendarはtimezone定義を含めることになってるけど、定義がないことが多いし、無視される。timezone名をちゃんと指定しないとダメ。<br>DST期間に設定されたイベントは、時間がなくなるか曖昧になる。iCalendarにルールあるけど、ユーザーのニーズに合わないかも。" userName="toast0" createdAt="2025-04-11T04:22:28" color="">}}

{{<matomeQuote body="＞the clients and the server don't all agree on timezone definitions<br>それってどうしようもないんじゃね？デバイスが間違った時間を表示してるってことでしょ？<br>例えば、ESTが-4だと思ってるlibraryと、-6だと思ってるOSと、-5だと思ってる人がいるとする。どうすればいいの？<br>ありえない前提で考えた方がいいと思う。9 am ESTに設定されたイベントを、古いクライアントソフトがPSTに間違って変換したら、どうしようもない。<br>＞... DST window, the time may no longer exist, or may be ambiguous.<br>datetimeライブラリが処理してくれるはず。ただし、イベントがtimezoneの変更を何度も経験してる場合は、曖昧になる可能性がある。最後に処理されたtimestampを記録しておけば解決できるかも。" userName="fc417fc802" createdAt="2025-04-11T06:30:07" color="">}}

{{<matomeQuote body="“Googleの仕事で稼いだお金でオープンソースのprotocol作ってよ”<br>みんなタダで配るもの作れたらいいけど、そうもいかないじゃん。事情があるんだから、謝る必要ないよ。" userName="_hyn3" createdAt="2025-04-11T14:58:09" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="CalDAV（とWebDAV）の根本的な問題は、W3Cの標準によくあることだけど、機能が多すぎて複雑すぎることだと思うんだよね。結果、いろんなアイデアが混ざった状態になって、多くのサービスが全部の仕様を満たそうとしなくなるんだよ。W3Cのデータ形式でそうなってないのを見たことないかも。" userName="noirscape" createdAt="2025-04-10T15:05:56" color="">}}

{{<matomeQuote body="WebDAVは、既存のHTTPサービスにconflict-freeに追加できるように設計されたんだよ。XMLの使い方は過剰かもしれないけど、当時はそれが普通だったんだ。WebDAVはIETF RFCで、W3Cの仕様じゃないよ。" userName="tannhaeuser" createdAt="2025-04-10T18:19:39" color="#ff33a1">}}

{{<matomeQuote body="WebDAVは結構シンプルだよ。HTTPの上に構築されてるから、トランスポート層をちゃんと考える必要があるんだよね。XMLが嫌いな人もいるけど。CalDAVは複雑だけど、マルチユーザーのカレンダーは元々複雑なんだ。他のシステムも同じくらい複雑だけど、ベンダー固有なことが多いよね。" userName="mercutio2" createdAt="2025-04-10T20:40:26" color="#ff33a1">}}

{{<matomeQuote body="「Dreaming in Code」って本に、CalDAV（とWebDAV）がどうやってできたかが詳しく書かれてるよ。Chandlerってカレンダープログラムを作ろうとした人たちの話なんだけどね。委員会でどうやって仕様が決まっていくかって話も出てくる。なんでCalDAVがイケてないのか知りたかったら、読んでみるといいかも。<br>＞http://www．dreamingincode．com/<br>＞https://en．m．wikipedia．org/wiki/Dreaming_in_Code" userName="mbreese" createdAt="2025-04-10T22:58:03" color="#ff33a1">}}

{{<matomeQuote body="すごくいい本だよね。昔読んだよ。" userName="aklemm" createdAt="2025-04-11T18:05:23" color="">}}

{{<matomeQuote body="NextcloudのCalDAVとCardDAVをDAVx5で使ってるけど、ほぼ完璧に動くよ。" userName="yonatan8070" createdAt="2025-04-10T16:23:56" color="#ff33a1">}}

{{<matomeQuote body="俺もNextcloudをbackendに使ってて、iOS Calendar appをmobileのfrontend、Gnome CalendarをPCのfrontendにしてるよ。ほとんど問題ないけど、NextcloudにimportしたOffice365のcalendarだと、timezoneが違うinviteeがいると時間がずれちゃうことがあるんだよね。" userName="Jnr" createdAt="2025-04-10T17:07:26" color="#ff5733">}}

{{<matomeQuote body="Nextcloudを5年くらい使ってて、androidのEtarを使ってるよ。最高だよ。" userName="jp191919" createdAt="2025-04-10T17:15:18" color="#ff5733">}}

{{<matomeQuote body="Nextcloudのcalendarは、メールのリマインダーが遅れてくるのがちょっとイライラするんだよね。10分以上遅れることもあるし。cron processに依存してるからかな。" userName="EbNar" createdAt="2025-04-10T17:51:51" color="">}}

{{<matomeQuote body="俺のCalDAVプロバイダーはZOHOなんだよねー。Androidと同期するためにDAVX5使ってて、バックグラウンドで動く同期サービス（オープンソースでroot化不要）があって便利。でも、設定で結構ハマったんだよね。CalDAVの実装が違うせいかも。DAVX5からZOHOカレンダーへの同期がめっちゃ時間かかるし。UbuntuのEvolutionはCalDAVのサポート結構いいんだけど、メールビューとカレンダービューを切り替えるたびにカレンダー全体をリフレッシュするから、ZOHOカレンダーのリフレッシュに時間かかって、ZOHOのレート制限に引っかかってソフトBANされちゃうんだよねー。Thunderbirdの最新版はCaldDAVに非互換性があって、HTTPの成功コードが違うみたい。ZOHOは200を返すんだけど、Thunderbirdは別のものを期待してるんだって。（PS ThunderbirdのCalDAVコードはJSで書かれてる）。PS これ、2つ目のカレンダーでだけ起こるんだよね。2つ目追加すると、うまくいかなくなる。だから、ZOHOだと結構めんどくさいんだよね。" userName="edg5000" createdAt="2025-04-11T05:50:54" color="">}}

{{<matomeQuote body="うちも家族でZOHO（メール、カレンダー、連絡先）使ってるよー。DavX5で最初に設定した時は、確かに変な感じだったなー。ZOHOのせいか、DavX5との相性の問題か、最初はよくわかんなかったけど。今はDavx5とZOHOのカレンダーと連絡先は問題なく同期できてるよー。少なくともAndroidスマホではね。Evolutionはもう何年も使ってないから、ZOHOとの連携は試してないけど、パートナーが近いうちにWindows 10からGnomeベースのLinuxディストロに移行する予定だから、Evolutionを勧めてみようかなー。Thunderbirdはメールとカレンダーに関しては、ZOHOとの相性がいいみたいで、今のところ問題ないんだよねー。でも、連絡先の同期は全然うまくいかないんだよねー。ZOHOからThunderbirdにエクスポートしてインポートすることはできるんだけど、同期がうまくいかない。Davx5経由だとAndroidスマホでは問題ないんだけどねー。ZOHOは完璧じゃないけど、値段が安いから文句言えないかなー。" userName="mxuribe" createdAt="2025-04-11T11:53:47" color="">}}

{{<matomeQuote body="＞最初は、S3バケットに動的に更新されるiCalファイルをホストして、AndroidでICSx5を使用して同期する方法を選択しました。CalDAVは必要ありません-HTTPSだけです。<br>それだと、ほとんどのカレンダーに統合できないよね。iCalファイルって何？ここ何十年も「iCal」なんて聞いたことないんだけど。<br>＞CalDAVは最悪だって反論されると思うけど。<br>他の選択肢はもっとひどい。" userName="NoTeslaThrow" createdAt="2025-04-10T16:46:52" color="">}}

{{<matomeQuote body="iCalendarの略だよー。（.icsファイル）<br>https://en.wikipedia.org/wiki/ICalendar" userName="ravenstine" createdAt="2025-04-10T16:55:39" color="">}}

{{<matomeQuote body="おすすめのCalDavサーバーはRadicaleかなー。<br>pythonで書かれてて、モジュール構造になってるから、認証とか認可のプラグインが使えるよ。データはプレーンテキストファイルに保存されるから、gitで管理・バックアップしてる。<br>いろいろ改造してて、認証はホストシステムのpamでやってて、カレンダーの共有を有効にするために、定期的なスクリプトでカレンダーを認証されたすべてのユーザーにシンボリックリンクしてる。アクセス制御リストのサポートを追加するために、カスタムCalDav属性を持つ権利プラグインと変更されたWebプラグインを使用してる。パブリックカレンダーを有効にするには、ACLを使用して`public`ユーザーに読み取り権限を与えて、nginxハックで誰でもアクセスできるようにしてる。<br>このセットアップについてブログ記事を書くべきかも。" userName="eulenteufel" createdAt="2025-04-10T14:45:11" color="#ff33a1">}}

{{<matomeQuote body="それいいね。俺もRadicale x monica crmみたいな自作ソフトが半分壊れてるから、もっと良いものに置き換えたいんだよねー。" userName="frainfreeze" createdAt="2025-04-10T23:16:52" color="">}}

{{<matomeQuote body="これだね。Radicaleを長年使ってるよ。BusyCalでたまに問題が起きるけど、基本的にはスムーズ。" userName="jesterson" createdAt="2025-04-14T01:23:00" color="">}}

{{<matomeQuote body="まさに俺が求めてた投稿だ。<br>カレンダーが2つあって、1つはMailcow（SoGO）で動いてる個人サーバー、もう1つはFastmailの仕事用カレンダー。連携がうまくいかないんだよねー。Mailcowのカレンダーを他のツールとうまく連携させる方法が見つからなくて、手動で同期してる。カレンダーを分離したいんだけど、Nextcloudしか知らなくて、ちょっと重いかなと思ってた。Baïkalは良さそうだから試してみたい。Mailcowを別のセルフホストメールサービスに変えることも検討できるし。" userName="emacsen" createdAt="2025-04-10T13:58:53" color="#ff33a1">}}

{{<matomeQuote body="俺も最近、脱クラウド化を積極的に進めてるんだー。ムスクのやつらが全部乗っ取ってから、信用できなくなったからね。数100GBのデータがあるけど、2週間くらいで移行できたし、期待以上にうまくいってる。唯一アウトソースしてるのはメールで、MXレコードとかIMAP/SMTPを扱うのが嫌だから。それ以外は、Asus PN40にデュアルコアのCeleron CPUを積んだのが役に立った。M.2 NVMEとSATAドライブのスロットがあるから、安全なバックアップを1か所に置けるのが強み。CalDAVはちょっと怪しいと思ってるけど、Nextcloudでほとんどのニーズに対応できてる（Redisでバックアップしても遅いこともあるけど）。カレンダー、dropbox/google drive、ドキュメント、写真、バックアップ、自動同期など、すべてうまくカバーしてる。他のいくつかのオープンソースソリューションと組み合わせれば、すべてのニーズに対応できる。このミニPCは非力だけど、回線が安定してるから、問題なく動いてる。" userName="axegon_" createdAt="2025-04-10T17:25:37" color="#785bff">}}

{{<matomeQuote body="一番の強みは、アクセスしやすいし、M.2 NVMEとSATAドライブ用のスロットがあるから、安全なバックアップを1か所に置けるってことだね。データの回復力を上げたいなら、3-2-1バックアップ戦略（とRAIDもかな）を調べてみるといいよ。" userName="Tijdreiziger" createdAt="2025-04-11T01:18:07" color="#ff5c5c">}}

{{<matomeQuote body="次はそれをやる予定だけど、まずはホームラボを片付けなきゃ。ちょっと散らかっちゃってるんだ。" userName="axegon_" createdAt="2025-04-11T06:58:26" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="昔のものがまた新しくなるんだね。2000年代初頭には、Mozilla Sunbirdを使って、自分のWin2kサーバーでIISのWebDAVモジュール経由でカレンダーをホストしてたんだ…CardDAVはまだなかったと思うけど、勘違いかもしれないな。最終的にそのデータを全部Google Calendarにインポートしたんだけど、昔の大学の宿題とかが残ってて面白いよ。" userName="donatj" createdAt="2025-04-10T17:33:32" color="">}}

{{<matomeQuote body="Sunbirdは2004年頃に自分が求めてたものに近かったんだけど、不安定だったんだよね。サーバーにアップロードされなかった予定がいくつかあって。DAViCalサーバーを使ってCalDAVをSunbirdで使ってたよ。Sunbirdはもう開発止まっちゃったんだよね。最近Windowsで動く良い代替品がないか探してないけど。" userName="EvanAnderson" createdAt="2025-04-10T17:45:28" color="">}}

{{<matomeQuote body="Baikalは面白そうだね。昔、DAViCal[0]を使って、Apple iOSデバイス間でカレンダーを共有してたんだ。動くときは良かったんだけど、iOSのバージョンが変わるにつれて不安定になって、結局諦めたんだ。またいつかこれを再検討するときは、DAViCalとRadicale[1]、そしてBaikalを見てみようと思ってる。<br>[0] https://www.davical.org/<br>[1] https://radicale.org/v3.html" userName="EvanAnderson" createdAt="2025-04-10T13:58:17" color="#785bff">}}

{{<matomeQuote body="Radicaleを長い間使ってるよ。ちゃんと動くよ。最近next cloudに移行したんだけど、それは共有ホストがデプロイメントをやってくれて、統合されたweb UIが付属してるから、セットアップが楽なんだ。" userName="charles_f" createdAt="2025-04-10T14:17:33" color="#45d325">}}

{{<matomeQuote body="Nextcloudは素晴らしいよね。でも、少なくとも自分の場合は、十分なハードウェアと推奨されるチューニングがあっても、セルフホスト版はかなり遅いんだ。" userName="k8wk1" createdAt="2025-04-10T14:27:31" color="">}}

{{<matomeQuote body="うん、nextcloudとdavx5 for androidだね。" userName="ei23" createdAt="2025-04-10T16:04:35" color="">}}

{{<matomeQuote body="Baikalを数年使ってるけど、すごく安定してるよ。ただ、自分専用だし、OPの要件を全部満たしてるわけじゃないけどね。デスクトップではThunderbirdの内蔵カレンダーで接続して、スマホではDAVx5とF-DroidのFossify Calendarを使ってる。Simple Mobile Toolsのカレンダーアプリからフォークされたものだけど、名前とは違って、今まで見た中で一番機能が充実したカレンダーアプリなんだ。" userName="ranger207" createdAt="2025-04-10T19:39:07" color="#ff5733">}}

{{<matomeQuote body="Outlook（職場）とGoogle Calendar（自宅）を持ってて、HTTP経由で同期してるんだけど、全然信頼できないんだよね。いつもタイムゾーンがおかしくなるみたいで、UTCで公開したり、しなかったり。その結果、会議がいつも違う時間になっちゃうんだ。この2つの主要プロバイダーが、こんな基本的な機能を直せないのが本当に理解できない。自分のシステムを使えば解決できるならすぐにでもやるけど、Outlookで作成された会議が2時間ずれてインポートされるのと同じことになるんじゃないかと心配してるんだ。" userName="dariosalvi78" createdAt="2025-04-10T14:30:50" color="">}}

{{<matomeQuote body="Googleのプロダクトって、タイムゾーンの対応がマジでずっとダメダメなんだよねー。AIの開発者さんたちが今すぐ何とかしてくれるといいんだけどなー。" userName="jofla_net" createdAt="2025-04-10T14:58:20" color="">}}

{{<matomeQuote body="だって、解決するインセンティブがないんだもん。囲い込みに繋がるし。それに、データ漏洩の問題があるから、会社によっては仕事用と個人のデータを同期するのを禁止してるところもあるみたい。" userName="stackskipton" createdAt="2025-04-10T15:26:05" color="">}}

{{<matomeQuote body="いいね！俺も写真で同じようなことしたいんだよね。DropboxとかGoogleからそろそろ卒業したいし。やりたいことは、<br>１．思い出機能を作って、スマホに送りたい。記念日とか、似たようなアクティビティとか、「俺と配偶者、家族、友達」みたいなグループ分けとか、昔からの変化（〇〇の進化）とかで。<br>２．スマホで撮った写真を自分のサーバーに保存できるようにしたい。<br>True-NASのマシンを３台用意して、少しずつ構築していくつもり。" userName="itissid" createdAt="2025-04-10T14:54:13" color="#ff5733">}}

{{<matomeQuote body="俺はImmichでやったよ。2TBの写真を入れてて、スマホのバックアップも自動でやってくれる。Cloudflare Tunnelsを使ってリモートアクセスしてる。" userName="e-clinton" createdAt="2025-04-10T15:02:19" color="#45d325">}}

{{<matomeQuote body="マジそれ。<br>photos.〇〇.comで写真が見れるの超便利。<br>ImmichのAndroidアプリも最高。<br>Cloudflare Tunnelsはマジで革命。無料でいいのかよって感じ。" userName="johntitorjr" createdAt="2025-04-10T21:52:18" color="#785bff">}}

{{<matomeQuote body="＞マジそれ。photos.〇〇.comで写真が見れるの超便利。ImmichのAndroidアプリも最高。<br>＞<br>＞Cloudflare Tunnelsはマジで革命。無料でいいのかよって感じ。<br><br>Cloudflare Tunnelsのセキュリティってどうなの？ファイアウォールに穴を開けなくていいし、攻撃されやすい自宅の回線を使わなくて済むのはわかるんだけど、トンネルのエンドポイントが攻撃されたら、結局公開されてるのと同じで危なくない？" userName="FloatArtifact" createdAt="2025-04-11T01:11:49" color="">}}

{{<matomeQuote body="セキュリティって、どういう意味？ポートをインターネットに公開してるんだから、トンネルがあってもセキュリティは変わらないよ。サービスを信用できないなら、公開しない方がいい。" userName="stavros" createdAt="2025-04-11T01:41:48" color="">}}

{{<matomeQuote body="Pangolinをチェックしてみて。Cloudflare Tunnelsの良さを全部持ってて、しかもトラフィックをデータ収集業者に売られる心配もないよ。Jims gargeってYouTubeチャンネルで紹介されてた。" userName="snapplebobapple" createdAt="2025-04-11T01:25:46" color="#ff33a1">}}

{{<matomeQuote body="SynologyのNAS使ってるなら、Diskstation ManagerってOSで、Photos[1]とMoments[2]ってアプリで同じことができるよ。<br>[1] https://www.synology.com/en-global/dsm/feature/photos<br>[2] https://www.synology.com/en-global/dsm/feature/moments" userName="murki" createdAt="2025-04-10T19:22:50" color="#ff5c5c">}}

{{<matomeQuote body="俺も数か月前に同じことやったよ。PhotoPrismを使った。<br>https://github.com/photoprism/photoprism" userName="fourseventy" createdAt="2025-04-10T17:00:48" color="#ff5c5c">}}

{{<matomeQuote body="Photoprismを1年以上使って、サーバーライセンスも払ってたけど、今はImmichを使ってるよ。Immichの方がずっとパワフルで洗練されてるし、新機能の追加も早い（早すぎるくらい）。コミュニティの牽引力も強いんだ。" userName="darkwater" createdAt="2025-04-10T19:05:03" color="#ff5c5c">}}

{{<matomeQuote body="あと、モバイルアプリのことも言っとかないと！乗り換えた時の違いはマジで段違いだった。Photoprismには公式モバイルアプリがなかったんだよね。SyncThingとかでバックグラウンドで写真を同期して、スマホのギャラリーアプリを使う感じ。Photoprismのアプリもあったけど。<br>Immichはモバイルアプリみたいなバックエンドサービスで、唯一の欠点は、起動時にサーバーに接続できないと使えないこと。" userName="darkwater" createdAt="2025-04-11T06:35:30" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Nextcloudを使ってるならNextcloud memories、そうでなければimmichがいいって言ってる人が多いね。" userName="no-reply" createdAt="2025-04-11T02:55:33" color="">}}

{{<matomeQuote body="おれも同じ。この辺のプロジェクトについて昔コメントしたのがこれ→https://news.ycombinator.com/item?id=39155977" userName="qntmfred" createdAt="2025-04-10T15:06:19" color="">}}

{{<matomeQuote body="もう一つのルートは、サーバーレスにしてDecSyncを使うこと。Thunderbird（またはEvolution）がAndroidアプリ（F-Droidで入手可能）と同期して、カレンダー、カード、タスク、さらにはRSSも他のピアに複製されるよ。<br>https://github.com/39aldo39/DecSync" userName="easyKL" createdAt="2025-04-10T15:48:51" color="#38d3d3">}}

{{<matomeQuote body="へー、面白そう。iOSのサポートがないみたいだし、残念ながらメンテナンスされてないみたいだね。" userName="FloatArtifact" createdAt="2025-04-11T01:15:03" color="">}}

{{<matomeQuote body="＞”俺のカレンダーはマジで悪夢だ”<br>チェック。<br>＞”カレンダーシステムはクソ。全部”<br>ダブルチェック。<br>＞”Big Techからできるだけ抜け出したい”<br>もっとチェックしたい…<br>俺もカレンダーとカレンダーアプリのひどい状況に同じようなニーズ／願望／不満を持ってるんだ。<br>自分の悩みを解決して、それを共有してくれてありがとう。<br>「[CalDAV]は破壊を求めている分野だ」って言うけど、何が欲しいのか教えてくれない？<br>（苦痛な点についての長文でもOK）。" userName="barryhennessy" createdAt="2025-04-11T14:17:12" color="#ff33a1">}}

{{<matomeQuote body="こういうこと、たまに考えるんだけど、GCalからスマホのEtarに、あるいはその逆、そして壁のホワイトボードカレンダーに、毎週10分かけて手動で仕事の予定をコピーするよりも、時間もエネルギーもお金もかかりすぎるって気づくんだよね。<br>定期的なイベントは全部カレンダーにブロックされてるし（仕事カレンダーの個人的なイベントは「非公開」）、更新はマジで早い。" userName="smeej" createdAt="2025-04-10T14:43:15" color="">}}

{{<matomeQuote body="最近はWritePadsとPilot G2を使って管理してるよ。" userName="bob1029" createdAt="2025-04-10T14:52:03" color="">}}

{{<matomeQuote body="Nextcloudと、その前のOwnCloudに10年以上満足してるよ。アプリのCaldavサポートは、Zoomとか、カレンダーに接続しようとして、Office365、Apple、Googleのどれかを持ってる前提なのが課題。<br>でもFreeBusy.ioみたいな解決策は接続を提供してて、日程調整の投票とかでうまくいくよ。<br>Google、Apple、Microsoftのカレンダー／グループウェアソリューションに閉じ込められた世界でスケジュールを組むのは面倒かもね。でも、AIが自分のCaldavをロールする必要があるなら、多分やらないだろうから、作者とその努力に敬意を表するよ。" userName="mergy" createdAt="2025-04-13T15:24:09" color="#45d325">}}

{{<matomeQuote body="カレンダーに関して､俺よりずっと高度なニーズがあるんだな｡でも､自ホストのソリューションは前から考えてたんだよね｡きっかけは､Gmailとかで予定のメールが来ると､カレンダーに追加する通知が付いてくることに気づいたから｡スマホの標準カレンダーに追加されるんだろうけど､UI/UXが好きじゃないんだよね｡<br>週に数回しか予定を手動で追加しないから､カレンダーのグリッド表示すら必要ないことに気づいた｡好きなプログラミング言語で日付とか時間を扱ってるから､標準クラスでシンプルなものを作れる自信もあるし｡サードパーティのアプリにカレンダーみたいな重要なものを任せるのが､最近すごく変に感じるんだよね｡" userName="rambambram" createdAt="2025-04-10T15:26:53" color="#ff5733">}}

{{<matomeQuote body="これって自分のデータを所有したり､取り戻したりするのにどう役立つの？エンドデバイス（スマホ）にインストールされた統合機能が､バックエンドサーバーに関係なく､すべてのプライベートデータをクラウドプラットフォームに同期しちゃうじゃん｡状態が共有されちゃうし｡Google Information ServicesとAppleのバックエンドも同じようにデータを処理して保存する｡スマホの機種とかオプションに関係なくね｡毎晩ギガバイト単位のデータがクラウドに送られてる理由だよ｡暗号化されてるけど｡<br>スマホのインプラントを取り除かない限り､データを取り戻すメリットはないよ｡それにはjailbreakするか､Grapheneみたいな新しいOSをインストールする必要がある｡機種固有の問題もあるけどね｡" userName="trod1234" createdAt="2025-04-10T18:13:25" color="">}}

{{<matomeQuote body="すごく興味深いけど､かなり大変だよね｡俺はもう5年くらいGoogleとか使ってないけど､自分に合ったセットアップを見つけるのがマジで大変｡<br>まだ解決策がないのが､招待の送信方法｡今はNextcloudにデータがあるから､そこから招待状を作れば送信できる｡でも､スマホのクライアントからだとできないんだよね｡一番マシなのは､手動でicsファイルをエクスポートしてメールで送る方法だけど､イケてない｡誰か解決策知ってる？" userName="charles_f" createdAt="2025-04-10T14:22:09" color="">}}

{{<matomeQuote body="Baïkalは､icsファイルを送信することでそれを解決しようとしてるみたい｡いろんなフォーマットの返信も受け付けるよ（カレンダーイベントへの招待って､標準化されてないみたいだし）｡<br>前に試したときは､ある程度はうまくいったよ｡BaïkalをCalDAVサーバーとして使う必要があるけどね｡" userName="delusional" createdAt="2025-04-10T14:30:18" color="#ff5c5c">}}

{{<matomeQuote body="NextCloud､Thunderbird（デスクトップ）､Davx5-app（Android）もあるよ｡" userName="TheChaplain" createdAt="2025-04-10T14:55:48" color="">}}

{{<matomeQuote body="俺もこの構成で､めっちゃうまく動いてる｡" userName="waynesonfire" createdAt="2025-04-10T16:58:25" color="#38d3d3">}}

{{<matomeQuote body="うん､同じ｡めっちゃうまく動く｡10年以上使ってる｡" userName="ei23" createdAt="2025-04-10T16:05:41" color="#45d325">}}

{{<matomeQuote body="細かいことだけど､（一番下の）docker volumeの２つはコンテナで使われてなくて､読者を混乱させるだけだよ｡<br>services:<br>  baikal:<br>    image: ckulka/baikal:0.9.5<br>    restart: always<br>    ports:<br>      - ”XXXX:80”<br>    volumes:<br>      - /mnt/baikal/data:/var/www/baikal/config<br>      - /mnt/baikal/data:/var/www/baikal/Specific<br><br>volumes:<br>  config:<br>  data:" userName="Timber-6539" createdAt="2025-04-10T16:04:18" color="#45d325">}}

{{<matomeQuote body="もしホームサーバーにNixOSを使ってるなら､俺のプロジェクトを見てみて｡ほとんどの作業を自動化してくれるよ｡ルーター､DDNS､ファイアウォール､VPN､広告ブロック､すべてのアプリを統合されたサービスにまとめてくれる（マシンに2つのイーサネットポートがある場合）｡直接使わなくても､サービスはモジュールに分割されてるから､自分のセットアップの参考になると思うよ｡https://homefree.host" userName="colordrops" createdAt="2025-04-10T17:37:32" color="">}}

{{<matomeQuote body="＞ほとんどの作業をやってくれる<br>公平に言うと､作者の主な作業はカレンダーのインポート/エクスポートスクリプトの調整だったと思うよ｡:)<br>あなたのセットアップについては､カレンダーと連絡先のホスティングは何を使ってるの？あなたのウェブサイトには詳細が見つからなかった｡" userName="codethief" createdAt="2025-04-10T20:53:19" color="">}}

{{<matomeQuote body="まだ開発中だけど、今はBaikal、Radicale、Nextcloudをサービスとして公開してるよ。Calendar、Contacts、Docsを統合するフロントエンドを追加したいな。ユーザーが“caldav”を知らなくても使えるようにね。どのサービスが統合済みかは、ソースリポジトリの“services”フォルダを見てみて。" userName="colordrops" createdAt="2025-04-11T02:11:43" color="#ff5c5c">}}

{{<matomeQuote body="マジで変なCalendar問題があってさ。誰かがFastmailアカウントに招待を送ると、Gmailに吸い込まれちゃうんだよね。Fastmailには表示されないし、Calendarの招待状を見ると、Gmailアドレスに送信されたように見えるんだ。Fastmailに問い合わせても原因不明だった。" userName="dceddia" createdAt="2025-04-10T18:32:17" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
