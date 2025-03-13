+++
date = '2025-03-04T00:00:00'
months = '2025/03'
draft = false
title = 'fastDOOMの驚異的な速度の秘密とは？最適化技術に迫る！'
tags = ["ゲーム", "最適化", "プログラミング", "Doom", "パフォーマンス"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> fastDOOMの驚異的な速度の秘密とは？最適化技術に迫る！

引用元：[https://news.ycombinator.com/item?id=43258709](https://news.ycombinator.com/item?id=43258709)

{{<matomeQuote body="MPVパッチのv0.1は間違いなくbuild 36（e16bab8）で、”Cripy optimization”のおかげでステータスバーのパーセント描画が変更されていない場合は無処理になる。これによりスクラップバッファへの描画と画面へのブリッティングがなくなり、合計2fpsのブーストがかかる。最初は信じられなかったけど、PCDOOMv2でこのパッチを適用してみたらすごい速度向上が確認できた。ボトルネックは予想しているところにないことが多いから、プロファイルと計測が大事だね。ステータスバーのパーセント？Doomアーキテクチャに詳しい人なら目に見えてわかるところかもしれないけど、俺は事前にボトルネックだとは思わなかった。" userName="gwern" createdAt="2025-03-04T20:41:44" color="#38d3d3">}}

{{<matomeQuote body="例えば、”ウチのアプリは謎にCPUを60％、GPUを25％使ってた。原因は小さなCSSアニメーション（イコライザアイコンの）だった。”" userName="robocat" createdAt="2025-03-04T20:55:45" color="">}}

{{<matomeQuote body="Slackが複数のアニメーション付き絵文字を表示するとCPUを食うのを覚えてる。20個以上の絵文字を使うと、Intel MB Proが耐えられなかった。幸い、アニメーションを無効にするオプションがあったけど、今はそれが修正されたかどうかは知らない。20～30年前のPCが何の問題もなくできたことが、現代でどうしてこんなことが起きるのか知りたい。" userName="rplnt" createdAt="2025-03-04T23:49:24" color="#785bff">}}

{{<matomeQuote body="現代の技術で20～30年前のPCができたことができてないのはどうしてなのか、詳しく知りたい。" userName="throwup238" createdAt="2025-03-04T23:57:39" color="">}}

{{<matomeQuote body="でも、それってただのブラウザじゃん？2005年のブラウザでも何十個もGIFを表示できたと思う。開発者たちの中で何か特別な決定があった結果、複雑な方法でやるようになったんじゃないかな。各絵文字がiframeになってフルボリュームのReactアプリでアニメーションしてる可能性だってある。でも、それでも問題ないはずじゃない？" userName="rplnt" createdAt="2025-03-05T00:04:06" color="">}}

{{<matomeQuote body="そりゃただのブラウザって言うけど、LinuxカーネルやGNUを”ただのOS”って呼ぶのと同じだよ。それは人間が設計したシステムの中で最も複雑なソフトウェアかもしれないし、今は数ポリゴンやドロップシャドウを描画するために使われてる。C++のコミティーが数十年前に犯したミスがあって、今のウェブデベロッパーがCMakeやQt/QML、GTKに苦しんでるんだ。BlinkとV8の開発者たちがインターネット全体と複雑なウェブ開発を支えるためにしたトレードオフは、アニメーション描画のような単純な用途にはリソースの効率的な使用を妨げる。" userName="throwup238" createdAt="2025-03-05T00:21:41" color="#785bff">}}

{{<matomeQuote body="それもそうだけど、パフォーマンスへの注力がほとんどないのも原因だよ。開発者は自分たちの作ったシステムを信頼していて、アニメーションはパフォーマンスの問題は解決済みと思っている。" userName="Cthulhu_" createdAt="2025-03-05T08:12:27" color="">}}

{{<matomeQuote body="ティーンエイジャーの頃に自分で発見したこと：進行状況バーを毎ループで更新しないこと。" userName="guappa" createdAt="2025-03-05T08:09:51" color="">}}

{{<matomeQuote body="フロントエンド開発者（ウェブでもグラフィカルターミナルでも）がゲーム開発の世界から学べることがたくさんあると思う。Pico 8を試してみることを勧めるよ。制約があるから、普段の安易な作業ではなく、限界に挑戦することになる。LUAコーディングだから、JS開発者でも特に問題ないと思うよ（20カラムのコードエディタで作業するのが平気なら）。" userName="Cthulhu_" createdAt="2025-03-05T08:14:03" color="#ff5c5c">}}

{{<matomeQuote body="俺もこないだやったやり方だ。nを適当な値にして、iterationがnで割り切れるときに進捗状況を更新する感じだね。" userName="accrual" createdAt="2025-03-05T23:10:22" color="">}}

{{<matomeQuote body="なんでアニメーションを最適化する解決策にしたの？静的なアセットを使う方がよくね？" userName="ericmcer" createdAt="2025-03-04T22:04:48" color="">}}

{{<matomeQuote body="アプリがユーザーの声入力を受けてるって示すためじゃない？" userName="jonas21" createdAt="2025-03-04T23:27:41" color="">}}

{{<matomeQuote body="アニメーション付きのPNGやGIFを提案してるんじゃないかな。" userName="teaearlgraycold" createdAt="2025-03-04T23:32:00" color="">}}

{{<matomeQuote body="それか、アニメーション付きSVGを、サイズが分かってる<img>タグの中に入れるのが良いね。" userName="kccqzy" createdAt="2025-03-04T23:55:50" color="#38d3d3">}}

{{<matomeQuote body="SVGアニメーションもCSSアニメーションと同じ描画経路を使ってると思う。むしろ、CSSアニメーションの方が、古いSMILの要素や属性よりもブラウザ開発者から重視されてる気がする。" userName="LegionMammal978" createdAt="2025-03-05T04:01:00" color="">}}

{{<matomeQuote body="アニメーション付きのPNGやGIFはユーザーが話してる時にどう反応するんだ？" userName="jonas21" createdAt="2025-03-05T00:50:22" color="">}}

{{<matomeQuote body="声の活動に応じて異なるPNGに切り替えればいいんじゃね？" userName="teaearlgraycold" createdAt="2025-03-05T00:59:38" color="">}}

{{<matomeQuote body="たまにでもWebコンソールで「Paint Flashing」をオンにするのが良いってことで、確かにそう思う。" userName="emmanueloga_" createdAt="2025-03-05T07:54:08" color="">}}

{{<matomeQuote body="ゲーム開発者として言わせてもらうと、遅延はよくあること。特にUIの描画は透過やレイヤー重ねがあって再描画しなきゃならんから、遅くなることがある。古いものと新しいものを比べてから再描画するのは大事だよ。" userName="barbariangrunge" createdAt="2025-03-04T21:41:21" color="">}}

{{<matomeQuote body="私もMatrixクライアント（NeoChat）で似たようなケースがあった。アカウントの読み込みが遅い理由を開発仲間と考えてたんだけど、ローディングスピナーを外したら劇的に速くなった。スピナーのアニメーションにCPUを100％使っていたから。" userName="ognarb" createdAt="2025-03-04T22:26:23" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="サーバーアプリの共通の問題は、特にコンソールへのログ出力。思ったより高コストで、単一スレッドになっていることが多いから、ログがスケーラビリティのボトルネックになることも。" userName="jiggawatts" createdAt="2025-03-04T22:46:03" color="">}}

{{<matomeQuote body="『シリアル』コンソールへのログ出力が全体のカーネルを止めちゃって、レイテンシを悪化させることがある。特にVMでは、ほとんどが最低限のUARTインターフェースをエミュレートしているから、カーネルコンソールとしてそれが見えることがある。" userName="rcxdude" createdAt="2025-03-04T23:54:37" color="">}}

{{<matomeQuote body="オリジナルのDoomは、idにかなりプロファイルされてたんじゃない？もちろん見逃していることもいくつかあったけど、あの頃はゲームデベロップメントをしていてプロファイルが半分の仕事だったよ。" userName="qingcharles" createdAt="2025-03-04T22:10:22" color="#785bff">}}

{{<matomeQuote body="そうだね。パフォーマンスエンジニアリングの素晴らしい成果だよ。だけど、それ以降に別の誰かが3000回以上のマイクロ最適化を実行したんだ。" userName="pjc50" createdAt="2025-03-04T22:59:53" color="">}}

{{<matomeQuote body="本当だね。Carmackとチームは一日に使える時間が限られていたんだ。" userName="qingcharles" createdAt="2025-03-04T23:38:48" color="">}}

{{<matomeQuote body="1993年にはどんなツールがあったの？id Softwareは、ツールが仕事に応じていなかったからNeXTを使ったと聞いたよ。" userName="fabiensanglard" createdAt="2025-03-04T22:55:00" color="">}}

{{<matomeQuote body="あー、記憶を押しやってるな。Visual Studioにプロファイラーがあったし、外部のツールも使っていたと思う。シリアルケーブルでデバッグとプロファイリングするシステムがあって、EXEを隣のテストPCにダウンロードしてた。だが、idにとってはNeXTのDOSポートをプロファイルする sane な方法が無かったんだよね。" userName="qingcharles" createdAt="2025-03-04T23:41:00" color="#785bff">}}

{{<matomeQuote body="Visual Studio？最初にリリースされたVisual Studio(Boston)は1997年だよ。Doomは1993年に開発されたんだからね！" userName="fabiensanglard" createdAt="2025-03-04T23:47:46" color="">}}

{{<matomeQuote body="彼はMicrosoft Visual C++のことを考えてるのかもね。これは1993年にさかのぼって、Visual Studioに進化したんだ。プロファイラーもあったし。" userName="masfuerte" createdAt="2025-03-05T01:11:31" color="">}}

{{<matomeQuote body="これだ！ありがとう！Visual Studioだと思ってたけど、しばらく前のことだから忘れちゃってた！ゲームはC++、C、x86の混合だったんだな。" userName="qingcharles" createdAt="2025-03-05T04:20:07" color="#785bff">}}

{{<matomeQuote body="DoomはWindows上ではなく、NeXTマシンで開発されたんだよ。" userName="Narishma" createdAt="2025-03-05T02:38:52" color="">}}

{{<matomeQuote body="ソースコードでのプロファイリングの証拠はないね。1993年にはそんなことはしてなかった。できることは、全ゲームを新しい変更でコンパイルして、ベンチマークループを走らせて結果を比較するくらいだった。" userName="rasz" createdAt="2025-03-05T08:49:29" color="">}}

{{<matomeQuote body="gprofプロファイラーは1993年前からあったよ。1982年にさかのぼるんだ。1994年にゲームエンジンの開発をしたことがあって、GCCとgprofを使って関数レベルのプロファイリングをしたり、メモリ使用量を測ったりしてた。でも大抵の時間はコードを変えて再度ゲームを実行して、フレームレートや流れる感じを確認してたんだ。" userName="jlokier" createdAt="2025-03-05T12:51:18" color="#38d3d3">}}

{{<matomeQuote body="でもそれはWatcomでの話？DJGPP v1が出るまでgccはDOSにはなかったと思うし、gprofが移植されたかは覚えてない。iDは1996年のQuakeでDJGPPを使ったから、NeXTでgccを使ってたのかもね。ただそのプラットフォームでのプロファイリングは意味がなかったかも、異なるコンパイラ、異なるCPU、異なるOSだし。ゲームはTurboColorで開発されて、Motorola 68030が33MHzで動いてて、15FPSしか出なかったらしい。" userName="bluedino" createdAt="2025-03-05T14:42:22" color="#ff33a1">}}

{{<matomeQuote body="Watcomも当時プロファイラーを持ってたよ。" userName="wk_end" createdAt="2025-03-05T16:56:18" color="">}}

{{<matomeQuote body="今、人生で二つ目の仕事をしてるんだけど、プログレスバーの更新が全体のパフォーマンスに非常に大きな割合を占めてるよ。なぜなら、私たちの“エンジニア”がプロファイラーを使ったことがないからさ。大手国際テック企業でね。" userName="on_the_train" createdAt="2025-03-05T03:30:10" color="">}}

{{<matomeQuote body="分かるよ、大きな会社だと小さなことを気にしないことが多いからね。もちろん、カスタムのプログレスバーを実装したのではなく、オフ・ザ・シェルフのものを使ったと賭けることもできるけど。" userName="Cthulhu_" createdAt="2025-03-05T08:45:33" color="">}}

{{<matomeQuote body="性能の進化を把握するためにfastDOOM、PCDOOMv2、元のDOOM.EXEのリリースを52個ダウンロードし、全てに対して-timedemo demo1を実行するRUN.BATを作成したんだ。mTCPのNETDRIVEを使ってそれをマウントしたよ。あまりターゲット層ではないけど、これは面白いね。昔はこんなに良いネットワーク越しのストレージオプションがあったなんて思わなかった。<br>＞NetDriveは、他のマシンがホストするリモートディスクイメージをローカルデバイスのように扱えるDOSデバイスドライバーだよ。" userName="yjftsjthsd-h" createdAt="2025-03-04T19:47:00" color="#785bff">}}

{{<matomeQuote body="90年代初頭、学校にあったコンピュータラボでは、25台のMac PlusがAppleTalkでMac IIに接続されていて、PlusからはMac IIのファイルシステムをマウントしてた。しかし、それは非常に遅かったよ。生徒たちは授業の最初に5分から10分も待たされた。ネットワークがあればファイルをコピーしたくなるのは当然だけど、ローカルファイルシステムに見えると一番使いやすいよね。DOSは当時ネットワークに遅れをとってたから、手間がかかった。" userName="jandrese" createdAt="2025-03-04T20:01:38" color="">}}

{{<matomeQuote body="1990年代初頭には、企業や大学でこのようなシステムはすでに普及してたよ。私が通ってた学校ではAFSがあって、任意のUnixワークステーションにログインすれば、自分の環境がそのまま使えた。Windowsが入ってきたときは、なんか石器時代みたいで、SMBはクソだったな。今はデスクトップアプリが減って、クラウドベースのシステムに移行してる感じがする。正直、OneDriveよりも90年代の選択肢の方が良く感じる。" userName="ben7799" createdAt="2025-03-04T20:30:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="90年代初頭にHP Apolloシステムを使ってた時、基本的にトークンリングネットワークを通じて一つのファイルシステムを共有してた。2台以上のシステムを接続して、一つにログインすれば、他のシステムのファイルも簡単にアクセスできたんだ。共有されるものに制限はあったか覚えてないけど、みんなで共有するにはかなり便利だった。" userName="aaronbaugher" createdAt="2025-03-04T21:28:20" color="">}}

{{<matomeQuote body="あの頃が懐かしい。複数のコンピュータがあるのに、ファイルシステムを共有するのが苦労するってのが変だよね。実際、多くのアプリがその共有をサポートしてないんだよね。ウェブは良いけど、ローカルアプリの方がずっとパワフルで早い気がする。" userName="bluGill" createdAt="2025-03-04T21:44:34" color="#ff33a1">}}

{{<matomeQuote body="私の学校ではWindows NTを使っていて、どのワークステーションでも同じようにデータにアクセスできたよ。その後、Citrix設定を見たことがあって、サーバーからアプリケーションをロードする仕組みもまあまあ機能してた。99年後半にはWindowsにもかなりの選択肢があったね。" userName="aeyes" createdAt="2025-03-04T21:57:21" color="">}}

{{<matomeQuote body="Windowsにおいて、多くはAppData（Remote, Local, LocalLow）が正しく使用されてたかどうかにかかってたよ。NTでは名前が違ってたけど、コンセプトは昔からあったんだ。9xではこの分離がなかったから、それに合わせて作られたアプリが少なかったんだよね。" userName="int_19h" createdAt="2025-03-07T07:28:59" color="">}}

{{<matomeQuote body="90年代初頭には、こうしたシステムが企業や大学に深く浸透していた。Novell NetWareのことを覚えている人はいるかな？" userName="brazzy" createdAt="2025-03-05T11:23:49" color="">}}

{{<matomeQuote body="Appletalkは速度が遅い、230.4 kbit/s。時には10mbitのEthernetがあったけど、高かったからな。ワープロを各マシンにインストールして、ファイルだけネットワーク越しに保存するのが一般的なベストプラクティスだったけど、プラス機械にハードドライブを必要とするから、コストがかかったんだ。" userName="bluGill" createdAt="2025-03-04T21:40:50" color="">}}

{{<matomeQuote body="AppleTalkはLocalTalkケーブルで遅かったけど、Ethernetならその速度を出せたよね。" userName="KerrAvon" createdAt="2025-03-07T21:45:44" color="">}}

{{<matomeQuote body="＞the worLd processor<br>めっちゃ笑ったわ！ネットワーク使ってたの？すごい！こっちじゃそんなの無いからFloppy-netとかbus-304-netがあったんだよ。フロッピー書いて304バス乗って他のキャンパスへ行く感じ。" userName="svilen_dobrev" createdAt="2025-03-04T21:50:24" color="">}}

{{<matomeQuote body="iPXEを使えば、iscsiターゲットからDOSをネットブートできる方法があるんだ。ドライバーとか設定なしで、DOSがネット上のブロックデバイスへアクセスできるって不思議だよね。iPXEがBIOSをパッチしているのかな。" userName="somat" createdAt="2025-03-05T02:52:47" color="#ff5c5c">}}

{{<matomeQuote body="DOS時代にNASやWebDAVマウントはあったのかな？FTPやtelnetはあったけど、リモートマウントはどうだったんだろう？" userName="leshokunin" createdAt="2025-03-04T19:59:46" color="">}}

{{<matomeQuote body="はい、Novell Netwareがリモートドライブをマウントできたし、DOSにはファイル同時アクセスのためのAPIもあったよ。DOOMのマルチプレイヤーコードもNovell Netwareスタックの一部を使ってたんだ。主にLANで使われてたけどね。" userName="sedatk" createdAt="2025-03-04T20:02:54" color="#ff33a1">}}

{{<matomeQuote body="うん、Netwareがそれだったし、Novellはすごい大企業だったよ。SMB（samba）もDOS時代のもので、ほとんどの人はWindowsからしか知らないだろうね。DOSのシンプルなドライブインターフェースを使ったネットワークドライブの作り方はいろいろあった。Win95が出るまではネット接続が有料だったんだ。" userName="bombcar" createdAt="2025-03-04T20:04:23" color="#785bff">}}

{{<matomeQuote body="90年代に、学生会館でDOS PCを使ってGaming Networkを運営してたんだ。NovellをLinuxサーバーで動かして、インターネットもなかったけどゲームが楽しかったよ。Command & ConquerやDOOM、Quakeをみんなネットマウントからスタートしてた。懐かしいな。" userName="roywashere" createdAt="2025-03-04T20:45:55" color="#ff5733">}}

{{<matomeQuote body="ネットワークリダイレクタインターフェースは1985年のDOS 3.1で追加されたんだ。おそらく3.0の1984年より前からあったかも。<br>[1] https://www.os2museum.com/wp/redirectors-and-dos-3-0/" userName="diet_mtn_dew" createdAt="2025-03-04T20:28:59" color="">}}

{{<matomeQuote body="WebDAVは90年代後半に出てきたけど、最初はなかなか浸透しなかったよ。昔はGruntPageで直接ウェブページを作って、FPSEがインストールされたサーバーにそのまま公開してたんだ。WebDAVはそのオープンスタンダード的な反応だったんだ。" userName="bitwize" createdAt="2025-03-05T02:11:43" color="">}}

{{<matomeQuote body="WebDAV自体は1999年、Windows 95の時代に登場したんだ。Novellのシステムはそれよりずっと前からあったよ。" userName="pjc50" createdAt="2025-03-04T23:10:39" color="">}}

{{<matomeQuote body="Ken SilvermanとのGitHubスレッド、めっちゃ面白い！FastDOOMの作者とKenが486のレジスタやクロックサイクルの効率について議論してる様子が素晴らしい。Doomがパフォーマンス向上してるのは嬉しいね！" userName="ndegruchy" createdAt="2025-03-04T19:43:26" color="#ff5733">}}

{{<matomeQuote body="KenSを思い出すのは久しぶりだけど、90年代はDuke3Dのモッディングにめっちゃハマってた。スクリプトを書くのが初めての”コーディング”だったんだ。そういう意味で、KenSには感謝してるよ！" userName="kridsdale1" createdAt="2025-03-04T20:22:32" color="#38d3d3">}}

{{<matomeQuote body="Duke 3Dは初めてのメインストリームのモッディング可能なFPSだったと思う。Doomもレベルエディタはあったけど、DukeはAIをスクリプトするためのテキスト形式のCONファイルがあったし、BUILDエンジンで学んだスキルは他のゲームでも通用したよね。" userName="vunderba" createdAt="2025-03-05T01:19:55" color="#38d3d3">}}

{{<matomeQuote body="Dukeも3Dエディタのマップエディタがあって、床や天井を上げたり下げたり、テクスチャを選んだりできた。時代を先取りしてたね。ブラシベースの本格的な3Dは良いエディタを作るのを難しくしたけど。" userName="paulryanrogers" createdAt="2025-03-05T23:42:37" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Command and ConquerのRules.iniも似たような感じで、自分にとって懐かしい思い出がある。" userName="hypercube33" createdAt="2025-03-05T03:41:06" color="">}}

{{<matomeQuote body="C&C Red Alert。C&C 1はモッドしにくかったけど、Dune 2000は結構モッドしやすかった。" userName="Zardoz84" createdAt="2025-03-05T06:54:27" color="">}}

{{<matomeQuote body="彼のブログは最初に見たページだった。Duke3Dのマップエディタやボクセルを使った大きなプロジェクトについて話してたんだ。" userName="nurettin" createdAt="2025-03-04T20:37:50" color="">}}

{{<matomeQuote body="去年、似たような2.5Dレンダリングエンジンを作ってて、Build Engineのある難しい点についてKen Silvermanにメールしたら、まるで昨日やったかのように答えてくれた。" userName="ehaliewicz2" createdAt="2025-03-09T08:15:48" color="#38d3d3">}}

{{<matomeQuote body="そこには本当に素晴らしいアイデアがある。特に、メモリアクセスが遅い時のCR2とCR3をスクラッチパッドレジスタとして使うアイデアや、ESPをループカウンタとして使うトリックは天才的だと思った。" userName="phire" createdAt="2025-03-05T01:07:01" color="#ff5733">}}

{{<matomeQuote body="そうそう！低レベルプログラミングはよく知らないけど、使わないレジスタを使って速い‘メモリ’位置にするアイデアは特に賢いと思う。" userName="ndegruchy" createdAt="2025-03-05T02:37:41" color="#785bff">}}

{{<matomeQuote body="FastDOOMの特徴の一つに、変なビデオモードがたくさんあるのが面白い。例えば、IBM MDAテキストモード、EGAとPlantronics ColorPlus、クラシックな青とピンクのCGA、320x200x16の‘ANSI from Hell’ハック、Herculesとか。VGAより色の再マッピングがあるから、ほとんどのモードは動作が悪いみたい。" userName="unleaded" createdAt="2025-03-04T22:36:59" color="">}}

{{<matomeQuote body="これはすごい、ゲームのこの要素は分離すべきだってのを示してるね。現代のClean Architectureを思い出す。" userName="Cthulhu_" createdAt="2025-03-05T08:47:11" color="">}}

{{<matomeQuote body="“IBM PS/1 486-DX2 66MHz、ミニタワー2168。学生の頃にずっと欲しかったパソコンだけど、買えなかった。”<br>92年には、自作PCを4台目にしてた。マールボロMAのKCSコンピュータショーは自作好きには最高の資源だった。部品を買ってPCを作ってしばらく使い、売ってまた部品を買う…を繰り返してた。92年の終わりには、ULSI 487数学コプロセッサ付き486-DX3 100を使ってた。しばらくの間、キャンパスで最速のPCだったかも。Excelの21ページの論文用にガス/ディーゼル熱電共生プラントをシミュレーションしてたから、再計算にめっちゃ時間かかってた。学位は環境科学で、キャリアは全てコンピュータ。" userName="jakedata" createdAt="2025-03-05T00:16:19" color="#ff5c5c">}}

{{<matomeQuote body="“Wow”？92年の時に持ってたパソコンを買えなかった人を悪く言う必要あるのかな？<br>それに、‘DX3’なんて存在しないし、最初の100MHzの486（DX4）は94年3月に出たから、92年の終わりにそれを使ってたとは思えない。私の家族の初めてのPCは、92年頃に手に入れたXTを除いて、95年初めに購入した66MHz 486-DX2だった。" userName="wk_end" createdAt="2025-03-05T17:10:54" color="#785bff">}}

{{<matomeQuote body="懐かしい思い出。92年頃、貧乏学生だったから、信用金庫から約2000ドルを借りて486 DX2-50を買った。今の価値で言えば、基本的なPCに4000ドル以上だよ。DOSとLinuxをデュアルブートしてた。" userName="bpoyner" createdAt="2025-03-05T12:29:14" color="#38d3d3">}}

{{<matomeQuote body="486DXと487？487はSXチップにしか役立たないと思ってたけど…調べたら、標準の487は元の486SXを無効にして置き換えたフル486DXとのこと。他に聞いたことのない特別なコプロセッサだったの？" userName="antod" createdAt="2025-03-05T01:08:04" color="">}}

{{<matomeQuote body="特定の計算タスクでスループットが倍増したかも。マザーがサポートしてればの話だけど、Mapleみたいなソフトが活用できるかもね。" userName="486sx33" createdAt="2025-03-05T01:30:29" color="">}}

{{<matomeQuote body="486SXは16ビット外部バスで386チップセットと使えるけど、DXはフル32ビットバスでスループットが良いんだ。486にはFPUが内蔵されてないから、コプロセッサを追加しないといけなかった。" userName="jakedata" createdAt="2025-03-05T02:13:42" color="#38d3d3">}}

{{<matomeQuote body="486SLCのこと考えてるでしょ。486SXは32ビットで486DXはFPU内蔵、487は486DXで486SXを無効にするためのものだよ。" userName="bluedino" createdAt="2025-03-05T03:07:19" color="">}}

{{<matomeQuote body="386のことを考えてるんでしょ。486の話じゃないよ。386SXは16ビット外部バスで286チップセットと使えるけど、DXはフル32ビットバスでスループットが良いよ。" userName="hollandheese" createdAt="2025-03-05T04:18:08" color="">}}

{{<matomeQuote body="ちょっと考えたら、世代を一つ飛ばしてしまったことに気づいた。35年前に組んだPCの詳細は忘れがちだな。" userName="jakedata" createdAt="2025-03-05T10:43:33" color="">}}

{{<matomeQuote body="間違ってるよ。486SXもDXと同じ32ビットバスを持ってる。ただ、DXはFPU内蔵でSXはそれを無効にして487コプロセッサを追加しないといけないんだ。" userName="Narishma" createdAt="2025-03-05T03:45:54" color="">}}

{{<matomeQuote body="486DXにはFPUがある。486SXはそれが無い。486SX用のFPUアップグレードは486DXの特別版でSXを完全に無効にするものだよ。" userName="cantrecallmypwd" createdAt="2025-03-05T12:27:09" color="#785bff">}}

{{<matomeQuote body="”Pentiumのいくつかのモデルを超えて、計算ミスもなかった。”何か自慢だけど、技術的に勝ってたんだ。よくやった。" userName="ForOldHack" createdAt="2025-03-05T01:21:49" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
