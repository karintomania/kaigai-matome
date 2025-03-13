+++
date = '2025-02-17T00:00:00'
months = '2025/02'
draft = false
title = 'デバッグ不可能なアプリを徹底解析！'
tags = ["デバッグ", "アプリ開発", "プログラミング", "トラブルシューティング", "ソフトウェアエンジニアリング"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> デバッグ不可能なアプリを徹底解析！

引用元：[https://news.ycombinator.com/item?id=43081713](https://news.ycombinator.com/item?id=43081713)

{{<matomeQuote body="Bryce Bostwickはデバッグやリバースエンジニアリングのすごくクールでインスパイアリングな仕事をしてるよ。YouTubeで見つけたんだけど、TikTokを猫動画だけ表示するように改造する動画に感動して、Instagramもメッセージ機能だけ残すように改造したいと思ってるんだ。特にWindhawk風のWindowsのモデリングにもっと関わりたい。BryceのiOSでのやり方を生配信で学べるのは最高だよ。" userName="amjoshuamichael" createdAt="2025-02-17T19:41:12" color="#785bff">}}

{{<matomeQuote body="Androidに関して同じようなことをしている人を知っている人いたら、もっと知りたいな。Revancedを使ったことがあるけど、始め方についての良いガイドがないんだ。" userName="xmprt" createdAt="2025-02-18T04:56:35" color="#ff5c5c">}}

{{<matomeQuote body="そんなYouTuberを探してるけど、始めるにはjadx-guiとapktoolを合わせるのがいいかも。apkを分解したりパッチを当てたり再構成したり、最後にuber-apk-signerで署名するのがメインだよ。古いアプリをいじるとき、mitmproxyでAPI呼び出しを見たりするのも楽しい。Fridaやxposedも役立つツールだよ。リバースエンジニアリングは初心者だけど、すごく興味深い！" userName="Oxodao" createdAt="2025-02-18T07:50:10" color="#ff5733">}}

{{<matomeQuote body="以前はAndroidのリバースエンジニアリングをけっこう行ってたよ。アプリを取得して分解・逆アセンブルして、必要な部分を見つけてsmaliをパッチして再コンパイルするのは簡単だった。apktoolやsmali/baksmaliを使ってた記憶がある。dex2jarも使って、Javaのデコンパイラで扱うjarを得たりしてた。多くのAndroidアプリは難読化してるけど、smaliにログを追加するなどできると思う。情報は古いかもだけど。" userName="jcul" createdAt="2025-02-18T11:06:23" color="#ff5733">}}

{{<matomeQuote body="“dex2jarみたいなものを使ってjarを得ることができた”というの、今なら<a href=”https://github.com/skylot/jadx”>jadx</a>がすごく便利。インタラクティブに変数やメソッド、クラスの名前を変更できるし、デコンパイルされたコードを読みやすくできる。ただ、デコンパイラには限界があるけどね。" userName="iggldiggl" createdAt="2025-02-19T16:28:08" color="#38d3d3">}}

{{<matomeQuote body="あなたが言ったことを試してみるつもり。でも、手順をメモしてくれると嬉しいな。友達と写真を投稿したりチャットしたりするのにリールに晒されるのが嫌なんだ。" userName="darkhorse222" createdAt="2025-02-18T08:48:09" color="">}}

{{<matomeQuote body="anti-debuggingやanti-anti-anti-debuggingのテクニックは、DOS/Windowsでは昔から普通だったね。ユーザーがアプリの挙動を制御できるかどうかは、プラットフォームがどれだけユーザーフレンドリーかに反比例する気がする。PT_DENY_ATTACHはそのために作られたように見えるけど、Windowsはそういう機能がないから、自分にアタッチさせるトリックが使われることが多いんだ。" userName="userbinator" createdAt="2025-02-17T22:03:48" color="">}}

{{<matomeQuote body="＞PT_DENY_ATTACHはその目的のためにAppleが発明したものだよ。昔のiTunesのDRM戦略の一環なんだよね。" userName="sjtgraham" createdAt="2025-02-17T23:41:21" color="#38d3d3">}}

{{<matomeQuote body="AppleのApp Storeが直接のsyscallをするアプリを拒否しないのに驚きだよ。Appleのプラットフォームではsyscallは安定したABIじゃないから、全てをlibSystem経由にしないといけないんだ。ここで著者が'mov w16, #26'を探した理由が気になる。" userName="lilyball" createdAt="2025-02-18T03:42:22" color="#ff33a1">}}

{{<matomeQuote body="‘svc 0x80’は任意のsyscallを実行する命令で、どのsyscallが実行されるかはx16レジスタに基づいてるんだ。おそらく、アプリが無関係なsyscallを大量に行っているから、それを監視するのは役に立たなかったんじゃないか。そういうことを動画で言ってたね。" userName="MintPaw" createdAt="2025-02-18T05:08:46" color="">}}

{{<matomeQuote body="このアプリは直接的にsyscallをしないのが大事で、syscallはlibSystemを介して行われるから、svc命令はバイナリ内には含まれないはずだよ。" userName="lilyball" createdAt="2025-02-18T18:45:50" color="#785bff">}}

{{<matomeQuote body="コンパイラはsyscallラッパーをインライン化することがあるから、静的にチェックするのは簡単じゃないんだ。SVC命令を検索しても大量の結果が出るよね。X16に移動される正確なsyscall IDを探せばすぐに見つかるんじゃない？" userName="kmfpl" createdAt="2025-02-18T16:12:32" color="">}}

{{<matomeQuote body="Appleプラットフォームのsyscallへの安定したインターフェースはlibSystemで、これはダイナミックライブラリなんだ。コンパイラは安定したABIを作るためにAppleプラットフォームではsyscallをインライン化できないし、リンク時にlibSystem自体も見えないんだ。" userName="lilyball" createdAt="2025-02-18T18:48:43" color="#ff5733">}}

{{<matomeQuote body="安定しないABIをインライン化するのはどうやって安全にできるの？" userName="eddd-ddde" createdAt="2025-02-18T17:42:18" color="">}}

{{<matomeQuote body="こんにちは！著者だよ、質問があれば答えるよ！xmprtさん、シェアありがとう！" userName="brycebostwick" createdAt="2025-02-17T21:13:34" color="">}}

{{<matomeQuote body="あなたのYoutube動画見たけど面白かった！でも、文章版も提供してくれて感謝してるよ、すごくいいね！" userName="StefanBatory" createdAt="2025-02-17T21:55:30" color="">}}

{{<matomeQuote body="とても面白い記事だった！低レベルの逆アセンブルを理解するには、こういう読み物がずっと欲しかった。著者に質問：GuardSquareって有名な商用ツールは、こういう簡単な逆アセンブルを防ぐ何か新しいものを持ってると思う？TopWidgetsは何かしらの保護があったの？それともローカルの努力だった？" userName="gloosx" createdAt="2025-02-18T07:30:11" color="#45d325">}}

{{<matomeQuote body="（これらのコメントはあまりにも優しすぎるね。みんなありがとう！）" userName="brycebostwick" createdAt="2025-02-17T21:18:34" color="">}}

{{<matomeQuote body="あなたの動画はすごく面白いと思う！もっと多くの人がチェックしてないのが驚きだよ。私はAndroidを使ってるから動画の内容は直接は関係ないけど、iOSの低レベルデバッグを学ぶのはすごく価値があるよ。" userName="xmprt" createdAt="2025-02-18T04:59:17" color="">}}

{{<matomeQuote body="iOSってシステムコールのエントリーをフックして戻り値を変更したり、SVCがどこで呼ばれたかを検出するためのPTRACE_SYSCALLみたいなものがあるの？" userName="barco" createdAt="2025-02-17T22:28:42" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="いや、Fridaを使うといいよ(インラインシステムコールをハンドラーへのJMPに置き換える)。でも、アプリがランタイム中に自分の整合性を検証するって場合、すぐに複雑になるから、ハードウェアブレークポイントが役立つ。でも、開発者がアプリ全体にインライン化しちゃうと、すぐにハードウェアブレークポイントが足りなくなるね。" userName="sjtgraham" createdAt="2025-02-17T23:51:44" color="#38d3d3">}}

{{<matomeQuote body="AppleはiPhone4のページクロスコア故障からずいぶん進化したね。" userName="bobmcnamara" createdAt="2025-02-17T22:44:43" color="">}}

{{<matomeQuote body="古いスマホ使って脱獄してるの？それとも新しい脱獄方法ある？" userName="smw" createdAt="2025-02-17T22:08:45" color="">}}

{{<matomeQuote body="俺は主に古いスマホを使って16.6のまま。iOS 17/18は難しいよ。でも7世代のiPadなら脱獄できる(技術的にはiPadOSだけど)。iPadも持ってるけど、iPhoneの方が持ち運びしやすいから好き！あと、あのデバイスがiPadOS 19をサポートしないって噂も見たから、もしそれが本当ならどうするか不明だな。Corelliumにお金払うことになるかも。" userName="brycebostwick" createdAt="2025-02-17T22:13:07" color="#45d325">}}

{{<matomeQuote body="テキストに自動再生のGIFが混ざっててページを閉じた。" userName="cwillu" createdAt="2025-02-17T22:00:04" color="">}}

{{<matomeQuote body="俺はデフォルトで好きだけど、他の人はそうじゃないかもね。場合によっては’prefers-reduced-motion’が有効ならデフォルトで再生を止めるのもありかな。でも、ここにいる他の人たちもその設定を有効にしてるのか気になるな。css専門家じゃないけど、iOSの’UIAccessibility.isReduceMotionEnabled’と同じようなのがウェブにあるか確認してて、いいよね。" userName="brycebostwick" createdAt="2025-02-17T22:09:09" color="">}}

{{<matomeQuote body="その設定は俺のOSにはないし、意味もなくユーザー体験を悪化させるような設定は支持できないね。あなたのサイトだし、自分がやりたいようにすればいいけど、俺のブラウザでは不快なタブは厳しく閉じるから。" userName="cwillu" createdAt="2025-02-17T22:23:29" color="">}}

{{<matomeQuote body="君も大きな棒を抜いたの？" userName="kmfpl" createdAt="2025-02-18T16:08:02" color="">}}

{{<matomeQuote body="読んでる時に動きがめちゃ気 distractingする障害だってこと？" userName="cwillu" createdAt="2025-02-19T00:07:25" color="">}}

{{<matomeQuote body="自動再生を無効にして。" userName="ThePowerOfFuet" createdAt="2025-02-22T17:21:04" color="">}}

{{<matomeQuote body="動画は最高に良かった！テンポも良くて必要な知識があればサクサク理解できるし、デモもオシャレで流れを壊さないんだよね。" userName="jer0me" createdAt="2025-02-17T19:49:03" color="#ff33a1">}}

{{<matomeQuote body="興味深い内容だね。アプリが不当に過敏だったのか、それとも最初からマルウェアとして疑われてたのか気になるところ。こんなに手間かける理由があるのかな。" userName="bluelightning2k" createdAt="2025-02-17T20:30:43" color="#38d3d3">}}

{{<matomeQuote body="ただの過敏すぎるアプリっぽいね。特にウィジェットを保護しようとしてるっぽいけど、情報はもう漏れちゃってるし。バイナリにも面白いものがあって、ある時はWindowsの.isoをダウンロードするコードが見えたことがあったのはびっくり！それはネット速度テストウィジェット用だったんだけど。" userName="brycebostwick" createdAt="2025-02-17T21:17:59" color="#785bff">}}

{{<matomeQuote body="もしApp Storeを運営してたら、他のアプリも調査する理由になるくらいの証拠だと思うし、すべてのアプリ提出に無限ループ検出を追加するかもしれないな。" userName="beefnugs" createdAt="2025-02-17T22:54:46" color="">}}

{{<matomeQuote body="無限ループは色々なアルゴリズムやパターンで使われるからなぁ。無限かどうかなんて、停止問題のせいで分からないし。" userName="MintPaw" createdAt="2025-02-18T05:25:17" color="">}}

{{<matomeQuote body="BillGates.iso: 自分の目的は？<br>CoolWidgets.app: あなたの役割はネットワーク速度をテストすることだ。<br>BillGates.iso: なんてこった。" userName="schmidtleonard" createdAt="2025-02-17T21:34:14" color="">}}

{{<matomeQuote body="著作権侵害を証明しようとしている可能性もあるね。アプリがロゴとかを変えられて再コンパイルされたら、そうなるかも。" userName="bluelightning2k" createdAt="2025-02-17T20:31:47" color="">}}

{{<matomeQuote body="＞”PT_DENY_ATTACHをバイパスするのは難しい”<br>もっとハードなモードもあるよ。macOSでやったことあるけど、カーネルをパッチあててPT_DENY_ATTACHを無効にするのも簡単だった。ただ、iOSだともっと手間がかかりそうだね。XNUはオープンソースだけど、パッチ当てるのは再コンパイルより16進エディタの方が楽だった。" userName="Retr0id" createdAt="2025-02-18T14:38:17" color="#ff5c5c">}}

{{<matomeQuote body="カーネルタスクポートを使ってproc構造体のビットを反転させることもできるし、署名なしのコードページやRWXを許可してJIT化を有効にすることもできるよ。" userName="sjtgraham" createdAt="2025-02-19T01:36:48" color="#45d325">}}

{{<matomeQuote body="＞”脱獄してるときにそれを実行すると、電話全体がクラッシュするよ”<br>アプリをマルウェアとして報告するの？電話がクラッシュするのは明らかにマルウェアの挙動だけど、他にも隠したい悪意のある行動があるのかな。こういうのを防ぐのがAppleのウォールドガーデンの目的じゃなかったの？" userName="jillyboel" createdAt="2025-02-18T14:23:43" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="’Jailbreak’がある場合は、壁の内側にいないってことだね。Appleは、jailbrokenのiPhoneがクラッシュするアプリには問題ないと思うよ。" userName="loumf" createdAt="2025-02-19T00:20:44" color="">}}

{{<matomeQuote body="この記事にも書いてあるけど、クラッシュは普通のiPhoneでも再起動させるからね。このマルウェア開発者は、そういう状態にはトリガーを起こさなかっただけだよ。まあ、それとは別の話さ。電話がjailbrokenだからって、Appleのストア全体のことを語るわけじゃないし、明らかにマルウェアが配布されているのを許可している。" userName="jillyboel" createdAt="2025-02-19T12:53:05" color="#ff5733">}}

{{<matomeQuote body="’com.apple.tw.twrr’って通知についてめっちゃ興味ある。なんで’com.apple’で始まってるん？ここで話題になってるアプリ（Top Widgetsみたい）ってAppleのアプリじゃないじゃん。" userName="lilyball" createdAt="2025-02-18T03:39:06" color="#785bff">}}

{{<matomeQuote body="通知名は適当な文字列だよ。衝突を避けるために、こういう完全修飾名を使うのが普通なんだ。開発者がこういうプレフィックスを選んだだけだと思う。" userName="Bogdanp" createdAt="2025-02-18T05:53:47" color="">}}

{{<matomeQuote body="逆DNS表記の本来の目的は、衝突しない名前空間を持つことなんだよ。他の誰かの名前空間を使うのは、将来的にトラブルを招くことになりかねない。多分、誰かが通知をチェックする時にAppleって見て無視するようにするための仕込みだと思う。" userName="pilif" createdAt="2025-02-18T15:02:35" color="">}}

{{<matomeQuote body="ツールは違うけど、これって80年代のApple IIのコピー防止をブートトレーシングで突破してたのと似てるね。変わらないことはあるんだ。" userName="apricot" createdAt="2025-02-18T00:36:55" color="">}}

{{<matomeQuote body="ウェブサイトのJavaScriptコードを逆アセンブルしてる人について知ってる？" userName="zlagen" createdAt="2025-02-17T20:49:49" color="">}}

{{<matomeQuote body="この著者が最近出したこれ見た？<br>https://youtu.be/F5m2JxplnXk" userName="masto" createdAt="2025-02-17T20:59:16" color="">}}

{{<matomeQuote body="すごいね！" userName="zlagen" createdAt="2025-02-17T21:00:30" color="">}}

{{<matomeQuote body="僕のいくつかの書き込みも、こんなことをやる方法を語ってるよ：<br>appleid<br>https://zemnmez.medium.com/how-to-hack-apple-id-f3cc9b483a41<br><br>steam<br>https://hackerone.com/reports/409850" userName="zemnmez" createdAt="2025-02-17T20:54:14" color="#ff5733">}}

{{<matomeQuote body="Appleが特定の条件下でわざと電話をクラッシュさせるアプリを許可したのは不思議だよね。" userName="cynicalsecurity" createdAt="2025-02-17T20:06:10" color="">}}

{{<matomeQuote body="多分、レビュー中はクラッシュしなかったんじゃないか。App Storeのレビューは人間がアプリの一般的なフローをタップして特定のことを探してるだけだし。ソースコードは提供しないし、バイナリをしっかり見ないから、プライベートAPIを使ったり、レビュアーから隠したりするのは難しくないよ。例えば、制裁でApp Storeから追い出されたロシアの銀行は、ロシア国内で異なるアプリを表示する“トロイの木馬アプリ”を使ったことがあるし。" userName="jer0me" createdAt="2025-02-17T20:23:08" color="#ff5733">}}

{{<matomeQuote body="特定の条件ってのは、iOSの脆弱性を利用してサードパーティのコードで電話のOSを改造する必要があるってこと。Appleはそれを見逃したと思う。" userName="Hamuko" createdAt="2025-02-17T20:29:22" color="">}}

{{<matomeQuote body="アプリのレビューは平均で１分もかからないんだ。レビューアーがサインインして、適当にタップするだけで終わっちゃう。" userName="cyberax" createdAt="2025-02-17T22:46:35" color="">}}

{{<matomeQuote body="Appleはそんな条件はテストしてないと思う、あまり一般的じゃないし。" userName="duxup" createdAt="2025-02-17T21:17:24" color="">}}

{{<matomeQuote body="最近、著者のYouTubeコンテンツを楽しんでるんだ。ただし、リバースエンジニアリングの経験はあまりないんだけど。" userName="GrumpyCat42" createdAt="2025-02-17T20:56:51" color="">}}

{{<matomeQuote body="脱獄したiPhoneでカスタムkextを実行できるの？もっとクールなのはカーネル自体を修正することだよ。" userName="krackers" createdAt="2025-02-18T05:21:16" color="">}}

{{<matomeQuote body="＞“脱獄した状態で実行すると、電話全体がクラッシュする！”デバイス所有者に対する厳しい反ハッキング法は、企業のマルウェア製造者には適用されないのは不公平だな。" userName="soraminazuki" createdAt="2025-02-18T00:44:35" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
