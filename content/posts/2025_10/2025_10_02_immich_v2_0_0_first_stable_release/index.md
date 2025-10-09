+++
date = '2025-10-02T00:00:00'
months = '2025/10'
draft = false
title = 'Immich v2.0.0、待望の安定版が遂にリリース！'
tags = ["Immich", "ソフトウェア開発", "オープンソース", "リリース", "写真管理"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Immich v2.0.0、待望の安定版が遂にリリース！

引用元：[https://news.ycombinator.com/item?id=45446834](https://news.ycombinator.com/item?id=45446834)




{{<matomeQuote body="Immichのウェブサイトにある「Cursed Knowledge」セクション、マジ感謝！Immich作ってて知りたくなかった知識とか、めっちゃ気になるじゃんね。URL: https://immich.app/cursed-knowledge" userName="jaredlt" createdAt="2025/10/02 08:24:30" color="">}}




{{<matomeQuote body="「Cursed Knowledge」読んだら、「50個の追加パッケージが呪われてる」ってとこ見つけたんだ。<br>JavaScript界隈に、プロジェクトに「後方互換性」を加えるために50個も追加パッケージを突っ込むヤツがいるらしい。それがJordan Harbandことljharbさんね。この「Cursed Knowledge」って一体何のこと？あと、JordanがGitHubで自慢してる「後方互換性」って何なの？誰か教えて！URL: https://github.com/sponsors/ljharb" userName="darkwater" createdAt="2025/10/02 08:38:19" color="#45d325">}}




{{<matomeQuote body="ljharbの問題はね、「JavaScriptが超動的で速く成長した言語」ってのと、「開発者が正しいことするか信用できない」ってことの間にあるんだ。彼のライブラリは古いランタイム実装をベースにして、実行時に使う全機能を固定化することで、「二度目の安全」と「後方互換性」を確保してるらしいよ。でも、依存ツリーが肥大化したり、パフォーマンスに悪影響が出たりするから、開発者からは異論も出てる。ljharbは強い信念を持ってるけど、TC39のメンバーで超信頼されてる人なんだ。" userName="whilenot-dev" createdAt="2025/10/02 09:24:19" color="#785bff">}}




{{<matomeQuote body="ljharbはダウンロード数で報酬もらってるんだよね。彼のやってることは、サプライチェーン攻撃の視点で見ると、悪質って言われてもおかしくないレベルだよ。URL: https://github.com/A11yance/axobject-query/pull/354#issuecom..." userName="12345hn6789" createdAt="2025/10/02 14:45:34" color="#ff5c5c">}}




{{<matomeQuote body="確かにちょっと変で、なんか警戒しちゃう感じもあるけど、スレッド全部読んだら、結局彼は自分が大事だと思う仕事をしてる真面目な人で、それで今集中砲火浴びてるみたいに見えるな。" userName="pxc" createdAt="2025/10/02 17:53:17" color="">}}




{{<matomeQuote body="彼が変で危ない行動を自分だけでやってたら、今こんなに集中砲火浴びることもなかったはずだよね。問題は、彼が自分のやり方を他の人に押し付けてるところ。もしここで加害者を見つけるとしたら、彼だよ。プロジェクトのメンテナーたちは被害者だよ。" userName="lpln3452" createdAt="2025/10/03 02:56:19" color="">}}




{{<matomeQuote body="少なくともここにリンクされてるスレッドを見る限り、彼のプロジェクトのメンテナーとしての立場は正当みたいだね。だから、彼が誰かに自分のやり方を「押し付けてる」って言うのは間違ってるんじゃない？" userName="pxc" createdAt="2025/10/03 19:36:33" color="">}}




{{<matomeQuote body="彼の行動例は他にもたくさんあるけど、リンク先の情報だけでも、彼が他のコントリビューターの意見を完全に無視して自分のやり方を通そうとしてるのがわかるじゃん。正直、彼の行動への批判に対して、なんでそこまで擁護するような反論ができるのか、意図がわかんないな。" userName="lpln3452" createdAt="2025/10/03 21:17:42" color="">}}




{{<matomeQuote body="どっちでもいいや。俺はJS開発者じゃないし。ただ、なんか反応がめっちゃ極端で、すごい集中砲火浴びてるみたいに見えるのにびっくりしてるだけ。" userName="pxc" createdAt="2025/10/04 17:20:00" color="">}}




{{<matomeQuote body="JavaScriptの問題じゃないんだよ。あいつはみんなの意見を無視して勝手なことしたから反発されたんだ。リンク見たらJavaScript関係ないってわかるよ。変な言い訳だね。" userName="lpln3452" createdAt="2025/10/04 18:14:18" color="">}}




{{<matomeQuote body="彼の主張に同意する人、マジで見つからないんだ。あいつのやり方は無駄だし遅いし、全然擁護できないよ。" userName="Sammi" createdAt="2025/10/02 21:01:48" color="">}}




{{<matomeQuote body="それに、世界中で無駄になってるCPUサイクルのコストって、あいつが儲ける利益よりずっと高いと思うわ。純粋なリソースの無駄遣いだよ。" userName="silverwind" createdAt="2025/10/02 16:07:40" color="#45d325">}}




{{<matomeQuote body="俺からは特にないんだけど、8月にこの件でちょっとした議論があったから、興味あったら見てみてね: https://news.ycombinator.com/item?id=44831811" userName="slaterbug" createdAt="2025/10/02 08:58:16" color="#38d3d3">}}




{{<matomeQuote body="うわー！ImmichのCursedページがHacker Newsで専用記事になってたなんて知らなかったよ。オープンソースのドラマ読むの、マジ好き。特に使ってないテクノロジーだと、昼ドラ見てるみたいで楽しいんだ。" userName="darkwater" createdAt="2025/10/02 10:10:01" color="">}}




{{<matomeQuote body="このユーザーは、パッケージのダウンロード数に応じてお金を稼いでるらしいよ。https://github.com/A11yance/axobject-query/pull/354#issuecom..." userName="12345hn6789" createdAt="2025/10/02 14:43:54" color="#ff33a1">}}




{{<matomeQuote body="なんてひどい状況だね。あいつ、マジでダウンロードごとに金もらってんの？それともただスポンサーされてるだけ？どっちにしても悪意があるとは限らないけど。" userName="greggsy" createdAt="2025/10/02 16:11:33" color="">}}




{{<matomeQuote body="このスレッドが君の疑問に答えてくれると思うよ https://news.ycombinator.com/item?id=37604373" userName="pcthrowaway" createdAt="2025/10/02 08:55:17" color="#ff33a1">}}




{{<matomeQuote body="同意するよ、全てのプロジェクトがこうならいいのにね！でも、”setTimeoutは呪われている”って結論は間違ってると思うんだ。JavaScriptのsetTimeoutメソッドは、小さい値で使うと実装が指定時間を実際に待つかわからないから呪われてるって話だけど、問題はperformance.now()がミリ秒でタイムスタンプを返すから丸め誤差が出るだけだよ。だから1msの誤差は許容範囲内なんだ。<br>[0]: https://github.com/immich-app/immich/pull/20655<br>[1]: https://developer.mozilla.org/en-US/docs/Web/API/Performance..." userName="whilenot-dev" createdAt="2025/10/02 08:39:10" color="#ff5733">}}




{{<matomeQuote body="JavaScriptはリアルタイム言語じゃないんだよ。setTimeout()は、指定時間後に実行されることを保証しない。単にタイマーが経過した後の次の非同期実行ウィンドウのためにキューに入るだけ。だから無限に遅れたり、呼び出されなかったりすることもあんの。JavaScriptはシングルスレッドで（workerを使わない限り）、非同期ウィンドウはメインスレッドが”アイドル”の時にしか開かないからね。通常はsetTimeoutで設定した時間にかなり近いけど、少しずれることもよくあるんだ。" userName="ffsm8" createdAt="2025/10/02 09:27:07" color="#ff5c5c">}}




{{<matomeQuote body="JavaScriptエンジニアなら`setTimeout`が保証するのは「少なくともこの時間経過してから実行される」ってこと、それにネスト呼び出しだと4msの最小タイムアウトがあるとか、注意点も知ってるはずだよ。信頼できる時間測定って難しいよね。<br>[0]: https://developer.mozilla.org/en-US/docs/Web/API/Window/setT...<br>[1]: https://html.spec.whatwg.org/multipage/timers-and-user-promp... (first Note)" userName="whilenot-dev" createdAt="2025/10/02 10:20:56" color="#ff33a1">}}




{{<matomeQuote body="だよね〜。正直、記事が`setTimeout`について言及してたのがちょっと意外だったよ。だって、これって広く知られてる制限事項でしょ？「Xms後に正確に実行される」みたいなもんじゃなくて、あくまで「ベストエフォート」なタイマーってのはさ。" userName="tigeroil" createdAt="2025/10/02 11:04:54" color="">}}




{{<matomeQuote body="これはちょっと違うよ。`setTimeout`はネストコンテキストで呼ばれたら、次の実行ウィンドウか最初の呼び出しから最低4ms後に実行されるんだ。`setInterval`も最小間隔があって、それより速くは動かせないはずだよ。<br>参照: https://developer.mozilla.org/en-US/docs/Web/API/Window/setT..." userName="MrJohz" createdAt="2025/10/02 10:26:13" color="#ff33a1">}}




{{<matomeQuote body="「JSはリアルタイム言語じゃない」って言うけど、そもそもリアルタイム言語って存在する？WindowsとかLinux、Mac、Android、iOSだってリアルタイムじゃないし、結局はプラットフォーム次第でしょ。VM上で動くとリアルタイム性が失われるって言われても、VMの実装次第だよね。" userName="perching_aix" createdAt="2025/10/02 10:14:22" color="">}}




{{<matomeQuote body="彼らはPostgresの2^16パラメータ制限を呪ってるらしいけど、SQL Serverはパラメータ制限が約2,000だよ。その方が、問題が早期にわかるからマシってことかな。" userName="daemonologist" createdAt="2025/10/02 13:33:38" color="">}}




{{<matomeQuote body="SQL ServerのDBプロトコル（TD）には専用のBulk Insertがあって、PostgreSQLのワイヤプロトコルv3より全然マシだよ。いつかiceberg/parquetみたいなファイルをQUICプロトコルでやり取りして、Bulk InsertをもっとまともにするDBフロントエンドを作りたいな。PL/SQLも正規化してね。" userName="kardianos" createdAt="2025/10/02 15:45:50" color="#ff33a1">}}




{{<matomeQuote body="`chunked(list)`を使って`.map { query(list) }`みたいに書けるようにしたいんだよね。`.map { query(it) }`じゃなくてさ。未使用のラムダパラメータ警告があったらいいのにっていつも思うよ。" userName="thewisenerd" createdAt="2025/10/02 13:52:56" color="">}}




{{<matomeQuote body="これ、いいね！すぐ日々のメモ取り習慣に取り入れるわ。" userName="kmarc" createdAt="2025/10/02 08:39:26" color="">}}




{{<matomeQuote body="このチームの”パーソナリティ”って、本当に素晴らしいよね…" userName="senectus1" createdAt="2025/10/02 08:52:14" color="">}}




{{<matomeQuote body="皮肉を言ってるの？それとも単に省略記号（…）を使いすぎてるだけ？もし皮肉なら、何に対して？" userName="perching_aix" createdAt="2025/10/02 12:15:13" color="">}}




{{<matomeQuote body="Immichはホント最高！今ではお気に入りのセルフホストアプリだよ。Immich CLI [0]やImmich-go [1]を使って写真を取り込んだんだけど、すごく簡単だったよ。フォルダをアルバムにする設定にしたら、整理が必要なものがたくさん出てきたけど、ファイルやフォルダをいじるのはとても楽しいね！<br>ちょっとしたパワーユーザー向けのヒントだけど、変更やアップデート、大量インポートの前にはZFS（または他のスナップショット機能）を使ってスナップショットを取っておくといいよ。そうすれば、何か問題があってもやり直せるから安心だね。ImmichがCorei3サーバーを数日間ブン回してたけど、顔認識はすごくいいよ。犬とかを見つけるのは苦手みたいだけどね。セルフホストで機能に妥協しなくていいのは本当にありがたいから、「サポートパッケージ」を買うつもりだよ（今は特に機能は増えないみたいだけど、将来的にはシームレスで暗号化されたオフサイトバックアップの方法も提供されるらしい）。<br>[0] https://docs.immich.app/features/command-line-interface/<br>[1] https://github.com/simulot/immich-go" userName="teekert" createdAt="2025/10/02 09:06:55" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="外部フォルダを追加して、そこに写真を全部コピーしただけだよ。Immich自身の写真フォルダは日付で整理されてるけど、外部フォルダに関してはImmichはあまりうるさくないみたいだし、もっと重要なのは、そこから写真が消えても問題ないことだね。" userName="stavros" createdAt="2025/10/02 16:27:57" color="">}}




{{<matomeQuote body="私にとってImmichは悪くはないけど、最高じゃないな。画像の共有やファイル管理みたいに何か作業したい時は、結局Nextcloud Photosに戻っちゃうんだ。画像をファイル構造じゃなくてライブラリに全部入れちゃうのがどうしても理解できないよ。Immichは外部ライブラリを見れるけど、実際には何もできないでしょ。例えば、iPhoneの写真をインジェストして、後でカテゴリ分けして、より安全で安定した長期保存用のフォルダ構造に移動するとかできないんだよね。Immichとその取り組みは好きになりたかったけど、彼らが永遠に存在し続けるか不安で、結局また画像が散らばったデータベースになって、いずれ新しいプラットフォームが出た時に移動できなくなるのが怖いんだ。" userName="sonar_un" createdAt="2025/10/02 09:53:13" color="">}}




{{<matomeQuote body="＞画像をファイル構造じゃなくてライブラリに全部入れちゃうのがどうしても理解できないよ<br>Immichはあなたの好きなファイル構造で写真を保存できるよ。EXIFデータに基づいてディスク上のファイルを再整理することもできるしね。<br>＞iPhoneの写真をインジェストして、後でカテゴリ分けして、より安全で安定した長期保存用のフォルダ構造に移動するとかできないんだよね<br>それは絶対にできるよ。ここを見てね: https://docs.immich.app/administration/storage-template/" userName="sz4kerto" createdAt="2025/10/02 12:23:27" color="#ff5733">}}




{{<matomeQuote body="ストレージテンプレートは、アプリ内で写真を管理して、もっと具体的なフォルダに移動するのとは違うよ。アップロードディレクトリにフォルダ構造を作れるだけなんだ。もっと具体的なファイル構造を管理することはできないね。" userName="sonar_un" createdAt="2025/10/02 14:27:33" color="">}}




{{<matomeQuote body="これでImmichは実質的にPhotoviewみたいになるの？私のImmichはデフォルトで「uploads/＜UUID＞/＜ランダムな2文字フォルダの羅列＞」っていう構造で画像を保存するから、Photoviewから乗り換えてすごくがっかりしたんだよね。" userName="kevinfiol" createdAt="2025/10/02 14:08:44" color="">}}




{{<matomeQuote body="私はセットアップした時に「photos/YYYY/MM/」に画像を保存するように設定しただけだよ。それだけだった。" userName="stavros" createdAt="2025/10/02 16:28:58" color="">}}




{{<matomeQuote body="彼らは3年間存在してるけど、FOSSとしてはそんなに長くはないよね。でも、ソフトウェアは安定してるし、速いし、リリースもたくさんあるから、将来性に関しては良い兆候だと思うな。名前を忘れちゃったけど、「N年間存在したソフトウェアはあとN年間存在し続けるだろう」っていうソフトウェアの“法則”があるんだ（だから、長く存在すればするほど、さらに長く存在し続けるってことだね）。<br>貢献者は約7人いるみたい: https://github.com/immich-app/immich/graphs/contributors。彼らのほとんどはFUTOっていう組織に雇用されてるか、支援を受けてると思う: https://futo.org/about/what-is-futo/<br>FUTOの説明文を読むと、私はそれが好きだな。もっとこういうのが必要だよ:-)<br>＞FUTOは、中央集権化や業界の統合を阻止する技術を、社内エンジニアリングと投資の両方を通じて開発することに専念する組織です。<br>ただ、この部分はもう少し調査が必要だね:<br>＞設立当初から、FUTOは唯一のオーナーであるEron Wolfの投資によって完全に資金提供されてきました。<br>Eron Wolfが誰なのか全然知らないんだ…。<br>追記: もっと情報を見つけたよ。有望かもしれないね:<br>https://news.ycombinator.com/item?id=35914264<br>https://gitlab.futo.org/eron/public/-/wikis/Thoughts-on-Open...<br>ただ、FUTOの長期的な持続可能性については疑問が残るけどね。" userName="oblio" createdAt="2025/10/02 10:26:46" color="#45d325">}}




{{<matomeQuote body="それはLindy effect（リンディ効果）のことだね！私はImmichに毎月寄付してるんだ。新しいスポンサーの影響下でも、プロジェクトを継続して機能をペイウォール化しなかったことを嬉しく思うよ。" userName="alfyboy" createdAt="2025/10/02 11:20:08" color="">}}




{{<matomeQuote body="でも、構造化とかタグ付けにデータベースってなんで必要なんだろう？ファイルシステムと、画像をバッチ編集したりEXIFをいじったりするツールは山ほどあるでしょ。Immichは画像を表示するのとか、顔認識みたいなちょっとしたメタデータを集めるのにはすごくいいと思うけどね。" userName="poisonborz" createdAt="2025/10/02 11:29:30" color="">}}




{{<matomeQuote body="Nextcloudで写真をアップロードして、Immichを外部ディレクトリとして使ってるよ。Nextcloudを先に導入したからこうなったんだけど、Immichも普通のファイル構造も両方使えて便利だよ。" userName="sharperguy" createdAt="2025/10/02 10:58:54" color="">}}




{{<matomeQuote body="僕もNextcloud Memoriesが遅かったからImmichに乗り換えたよ。外部ライブラリ機能を使ってる。Nextcloud OIDCアプリでImmichに直接ログインできる変更をImmichに送ったんだ。NextcloudをOIDCプロバイダーにして、autoLaunchパラメーターでImmichがNextcloudのアプリみたいに開けるようになるよ。<br>[1] https://docs.immich.app/administration/oauth/#auto-launch" userName="hagbard_c" createdAt="2025/10/02 11:46:28" color="#ff33a1">}}




{{<matomeQuote body="NextcloudがOIDCプロバイダーになれるなんて知らなかったよ。俺はNextcloudへのログインにAutheliaを使ってるんだ。" userName="sharperguy" createdAt="2025/10/04 19:34:48" color="">}}




{{<matomeQuote body="Immichはマジで最高だよ。他のセルフホストサービスはどれもイマイチだったけど、Immichは快適だね。速くて、機能満載で、設定も楽。気に入りすぎて100ドル寄付しちゃったよ。何年も写真撮ってなかったのに、Immichのおかげでまた撮るようになったんだ。" userName="stavros" createdAt="2025/10/02 08:14:59" color="#ff5733">}}




{{<matomeQuote body="「速くて、機能も豊富、設定も簡単。大好きだ…」ってあるけど、FUTOがプロジェクトを買収してから、Alex TranがImmichをさらに良くしたんだよね。FUTOのやり方は、FLOSSプロジェクトを自立させる新しい成功例を示してると思うよ。" userName="ignoramous" createdAt="2025/10/02 09:18:51" color="">}}




{{<matomeQuote body="「何年もやめてた」って聞いて、Google Photosを使ってる自分が情けなくなったよ。Googleが息子の写真を医者に送っただけで通報してアカウントをBANしかねないから、2026年にはImmichに移行するぞ！<br>検索機能ってどう？（ラベル付けが面倒で、Googleの監視機能に頼っちゃうんだ。毎日撮るから写真がいっぱいでさ。）<br>[1] https://www.nytimes.com/2022/08/21/technology/google-surveil..." userName="Barbing" createdAt="2025/10/02 09:04:45" color="">}}




{{<matomeQuote body="今日すぐにImmichに移行しちゃえよ！俺はサードパーティの写真サービスは使わないんだ、データが多すぎるからね。<br>Immichの検索はすごいぞ、「猫」で検索したら全部の猫が出てくるんだから。" userName="stavros" createdAt="2025/10/02 09:24:17" color="">}}




{{<matomeQuote body="検索は本当にすごいよ。CLIPを使っててさ。「朝、青いカーペットにいる黒猫」って検索しても、もし写真があれば結果が出るんだから。" userName="j_bum" createdAt="2025/10/02 14:49:34" color="#ff33a1">}}




{{<matomeQuote body="マジか、お前が正しかった！<br>https://imgz.org/iiAgNmEJ.jpg<br>こんなにすごいなんて知らなかったよ！マジすごい。" userName="stavros" createdAt="2025/10/02 15:01:33" color="#785bff">}}




{{<matomeQuote body="あの事件の後、GmailとかGoogle Fiにはまたアクセスできるようになったの？記事には、その2つのケースは、無罪になったのに、まだアカウントにアクセスできないって書いてあったけど。" userName="jadbox" createdAt="2025/10/02 16:11:30" color="">}}




{{<matomeQuote body="ごめんね！「息をのんで待つ」ってのは皮肉で、もし僕が報道された通りに写真を撮ったとしたら、みんなが僕を報告したがるだろうっていう仮説の話だったんだ。<br>あの気の毒な父親には同情するよ…特にYahooを使ってるから大変だよね（その話の詳細は覚えてるし、彼がそれで批判されてたのも）。" userName="Barbing" createdAt="2025/10/03 03:14:50" color="">}}




{{<matomeQuote body="俺、YouTube使うのやめたんだ。年に2回、Google Takeoutでデータ取って（その後は全部消してる）。<br>https://takeout.google.com/" userName="washadjeffmad" createdAt="2025/10/02 13:02:06" color="">}}




{{<matomeQuote body="おっと、仮説だったのか、俺が悪かったよ！<br>（https://news.ycombinator.com/item?id=45458560）" userName="Barbing" createdAt="2025/10/03 03:16:00" color="">}}




{{<matomeQuote body="Immichで地図（地理的エリア）と時間の両方で検索・フィルターできるかな？<br>例えば、地図で四角を描いて、22:00から00:00の写真を表示するとか。<br>Immichのデモだと、地図ビューでエリアを選択して、その写真だけを探索する方法が見当たらないんだ。<br>こんな複合検索ができて、ブックマークしたり、結果をまとめて操作できたら最高なのに！" userName="addend" createdAt="2025/10/02 09:38:58" color="#45d325">}}




{{<matomeQuote body="俺もこの手の検索が全部できるようになってほしいんだよな。<br>特に検索の重ね掛けだね。<br>検索結果がそのままスマートアルバムになるとか、最高じゃない？<br>例えば「地図で囲んだ写真」の中から「2021年と2023年の写真」、さらに「Xさんの写真」、最後に「ビーチを歩く人々のクリップ」とかね。<br>「この地理的エリアの写真」だけど、「イエローラブのクリップ」は除く、みたいな除外検索もできるといいな。" userName="fivestones" createdAt="2025/10/04 19:53:27" color="#ff5c5c">}}




{{<matomeQuote body="ImmichはGoogle PhotosやLightroom Libraryの代わりには良いけど、Flickrの代わりにはならないね。<br>誰か、選んだ写真を公開できるような、素敵なセルフホスティングソリューションを知らない？<br>認証なしで、共有リンクもなし、ただフォトストリーム、アルバム、タグがあって、写真を全画面で見れるような、Flickrみたいなシンプルなやつだよ。" userName="blacklion" createdAt="2025/10/02 14:34:08" color="#38d3d3">}}




{{<matomeQuote body="Immichだけでは足りないかもしれないけど、immich-public-proxyが良いかもね。<br>https://github.com/alangrainger/immich-public-proxy<br>サンプルギャラリーも見てみて：https://immich-demo.note.sx/share/gJfs8l4LcJJrBUpjhMnDoKXFt1..." userName="Philpax" createdAt="2025/10/02 15:23:23" color="#38d3d3">}}




{{<matomeQuote body="親投稿者じゃないけど、これは本当に有望そうだね。<br>個人的なワークフローにImmichを導入したいんだ。<br>定期的にスポーツの写真を撮るから共有したいけど、個人的な写真は共有したくないんだよ。<br>今のワークフローは手動でうんざりするほど大変でさ。<br>公開機能が内部ワークフローの隣にあったら、夢みたいだね。" userName="EvanAnderson" createdAt="2025/10/02 15:35:01" color="#45d325">}}




{{<matomeQuote body="俺もだよ。Immichでこういうのが欲しかったんだ。" userName="toomim" createdAt="2025/10/02 18:34:47" color="">}}




{{<matomeQuote body="Immichのネイティブ機能とどう違うの？<br>https://immich.home.stavros.io/share/ztG3VGyrbofAw3QUXjytV2P…<br>みんなはアルバム機能が欲しいみたいだけど、これにはないみたいだね？" userName="stavros" createdAt="2025/10/02 16:32:06" color="">}}




{{<matomeQuote body="Immichを外部に公開しなくていいから、ちょっと安心できるかもね。共有機能の手前に位置するから、アルバムは個別に共有することになるよ。やっぱりそれらのディレクトリは必要だと思うけどね。" userName="Philpax" createdAt="2025/10/02 17:17:28" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="外部ディレクトリはいらないよ、それが僕の問題なんだ。全てのアップロードされた写真を最初のページに時系列順で表示して、ドロップダウンメニューでアルバムや検索機能が欲しいんだ。これは公開ギャラリーであるべきで、特定のリンクを持つ人と写真を共有するサイトじゃないんだ。" userName="blacklion" createdAt="2025/10/02 20:33:45" color="#785bff">}}




{{<matomeQuote body="検索機能はないの？" userName="jadbox" createdAt="2025/10/02 16:13:04" color="">}}




{{<matomeQuote body="僕もほとんど同じようなものを作ったよ、セルフホストではないけどね：https://mood.site<br>これはシンプルなウェブサイトで、アクセスするとアカウント不要でアルバムが自動生成されるんだ。画像をドラッグ＆ドロップでアップロードできて、配置やサイズ変更も可能だよ。<br>編集権限付きURLを共有すれば、みんなでギャラリーを共同で編集できるんだ。編集キーなしのリンクなら閲覧専用だよ。<br>僕のインスピレーションボードの例はこちら：https://mood.site/WvP4xd6x<br>要望には個別の写真の表示切り替え機能がまだないのが主な不足点だね。これをセルフホストできるようにするの、興味あるかな？" userName="kkukshtel" createdAt="2025/10/02 15:41:15" color="#38d3d3">}}




{{<matomeQuote body="数年前にイベントで撮った写真を公開するのにPhoto Organizerを検討したことがあるよ：https://po.shaftnet.org/<br>全く非現実的ではないと思ったんだけど、メンテナーのデモサイト：https://www.peachyphotos.com/po/user/slp<br>では求めているような全画面の”クロームレス”な見た目は見当たらないんだよね。Immichのpublic proxyはすごくクールだから試してみたい！" userName="EvanAnderson" createdAt="2025/10/02 15:32:10" color="">}}




{{<matomeQuote body="まさにこの目的のために作ったものがあるんだけど、面白くないと思って公開してないんだ。僕のウェブサイトの一つ、https://slapstickers.org/ は、僕がホストしているImmichインスタンスのフロントエンドなんだ。公開してみようかな？でもコードはかなり汚いから、クリーンアップが必要だね。" userName="iv11" createdAt="2025/10/04 07:19:54" color="#ff5c5c">}}




{{<matomeQuote body="CMSとしてGhostかWordPressと、写真に特化した”テーマ”を使ってみたら？" userName="Ir0nMan" createdAt="2025/10/02 17:43:21" color="">}}




{{<matomeQuote body="写真用にオブジェクトストレージを使った静的サイトを作ればいいんじゃない？<br>数千枚の写真くらいなら、ウェブサイトと一緒にバンドルしてCloudflare Pagesで無料でホストすることだってできるよ。" userName="victorbjorklund" createdAt="2025/10/02 14:54:45" color="">}}




{{<matomeQuote body="サイトデザインはできないんだよね。あと、検索機能（タグ、レンズ、説明文で）と、簡単なアップロードが欲しいな。（写真は何枚でもホストできる場所はあるんだ）" userName="blacklion" createdAt="2025/10/02 20:36:15" color="">}}




{{<matomeQuote body="io200って、写真用CMSとしてチェックしてみる価値あるかも。Kokenから派生してて、セルフホスティングの要求スペックが低いんだ。テーマも豊富で、写真管理のバックエンドも強力、テスト以上で使える無料プランもあるよ。<br>https://www.io200.com/<br>https://www.koken.me/" userName="mstngl" createdAt="2025/10/02 16:11:58" color="#ff33a1">}}




{{<matomeQuote body="ブログって選択肢、考えたことある？多分Wordpressで簡単に目的を達成できると思うよ。" userName="WD-42" createdAt="2025/10/02 14:47:37" color="">}}




{{<matomeQuote body="えーっと、Wordpress？あなたの求めるものって、普通の個人ポートフォリオサイトって感じがするけど。" userName="aDyslecticCrow" createdAt="2025/10/02 14:47:53" color="">}}




{{<matomeQuote body="みんなWordpressを勧めてるけど、友達のインストールを手伝った時、すごく大変だったんだ。あれはかなりごちゃごちゃしたソフトだよ。" userName="blacklion" createdAt="2025/10/02 20:38:23" color="">}}




{{<matomeQuote body="厳選した写真を見せるセルフホストのサイトが欲しいって？Immichのシェア機能は認証なしで使えるし、それでいいんじゃないの？ポートフォリオを見せるためのサイトを作りたいだけなら、普通にWebサイト作ればいいと思うよ。" userName="jasonfrost" createdAt="2025/10/02 14:46:14" color="">}}




{{<matomeQuote body="Immichはマジで最高！特に最近のAndroidアプリで追加されたベータ版タイムラインのおかげで、Immichは’そこそこ’からGoogle Photosの完全な代替になるくらいレベルアップしたよ。" userName="sagacity" createdAt="2025/10/02 08:08:52" color="#ff33a1">}}




{{<matomeQuote body="そうだね、新しいタイムラインでImmichの大きな問題が直ったよ。以前はサーバーに接続がないとローカルの写真も表示されなかったんだけど、今は動くんだ。他の人の写真はキャッシュされてないと見れないけど、それは普通だよね。" userName="darkwater" createdAt="2025/10/02 08:35:44" color="#ff33a1">}}




{{<matomeQuote body="同じような目的で、良いデスクトップアプリって何かないかな？高性能な写真・動画管理ソリューションが欲しいんだ。非破壊的なライブラリ管理とか、Exif GPSマップで検索できたり、AIでの自動タグ付けとか、そういうのが欲しいんだよね。" userName="haunter" createdAt="2025/10/02 09:36:40" color="">}}




{{<matomeQuote body="それならdigiKamが良さそうだよ。僕はもう10年以上digiKamを使ってて、すごく満足してるんだ。Immichと比べるとAI顔検出は改善の余地があるけど、この分野はどんどん進化してるから、きっと良くなるはずだよ。" userName="0x000042" createdAt="2025/10/02 10:56:00" color="#785bff">}}




{{<matomeQuote body="digiKam[1]が君の求めてるものに近いかもね。僕は少ししか使ってないけど、ほとんどの要件を満たしてると思うよ。個人的にはPeakto[2]を使ってて、複数のCaptureOneセッションのカタログを統合できるのが特徴だけど、君にはオーバースペックかもね。<br>https://www.digikam.org<br>https://cyme.io/en/products/peakto/" userName="phlsa" createdAt="2025/10/02 10:38:42" color="#ff33a1">}}




{{<matomeQuote body="Phil Gyfordが記事「Trying out eight macOS alternatives to Lightroom Classic to see if I could switch to one of them.」で、Lightroom Classicの代替について触れてるよ。チェックしてみては？ https://www.gyford.com/phil/writing/2025/09/27/escaping-ligh..." userName="felixthehat" createdAt="2025/10/02 10:50:35" color="">}}




{{<matomeQuote body="pigallery2をチェックしてみて！何年も使ってるけど、探してる機能が全部揃ってるはずだよ。 https://bpatrik.github.io/pigallery2/" userName="ghgr" createdAt="2025/10/02 10:37:42" color="">}}




{{<matomeQuote body="＞self-hosted directory-first photo gallery website<br>それってデスクトップアプリじゃないし、むしろImmichとほとんど同じだよ。" userName="haunter" createdAt="2025/10/02 10:50:16" color="">}}




{{<matomeQuote body="俺はノートPCでMylioを使ってるんだけど、君に合うかもね？最大の要求はファイル構造で写真を整理して、ポータビリティを最大限にすることだったんだけど、これはそれがうまくいくんだ。" userName="Chilko" createdAt="2025/10/03 02:46:16" color="">}}




{{<matomeQuote body="CaptureOneが君が欲しいものだよ。それが最高だね。" userName="kkukshtel" createdAt="2025/10/02 15:42:09" color="">}}




{{<matomeQuote body="ImmichをOracleの無料ティアで2年くらい動かしてるけど、すごくいいね。Oracleの長期保存は信用してないから、毎日Backblazeにバックアップしてるよ。唯一の不満は、新しいリリースが頻繁すぎるのに、たいした変更がないことなんだよね。" userName="darkamaul" createdAt="2025/10/02 09:18:01" color="#38d3d3">}}




{{<matomeQuote body="どこかにちゃんとした変更ログってある？以前のGitHubリリースは詳細だったのに、v2.0.0はいくつかのバグ修正しか載ってなくて、あとはGitの履歴を参照してるだけなんだよね。 https://github.com/immich-app/immich/releases/tag/v2.0.0" userName="codethief" createdAt="2025/10/02 13:21:10" color="">}}




{{<matomeQuote body="最新リリースからのGit履歴を見ると、ほとんど変更がないみたいだよ。単に「stable」って呼んでるだけみたいだね。 https://github.com/immich-app/immich/compare/v1.144.1...v2.0..." userName="Vinnl" createdAt="2025/10/02 13:27:06" color="#45d325">}}




{{<matomeQuote body="ふーん。なんでメジャーバージョンを上げたの？Immichってセマンティックバージョニングを使ってないの？" userName="codethief" createdAt="2025/10/02 14:02:27" color="">}}




{{<matomeQuote body="記事によると、これまではSemVerを使ってなかったけど、v2.0.0から使うようになるらしいよ。<br>＞ What versioning strategy will Immich use?<br>＞ Starting with v2.0.0, we will now follow semantic versioning." userName="ratrocket" createdAt="2025/10/02 14:14:53" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
