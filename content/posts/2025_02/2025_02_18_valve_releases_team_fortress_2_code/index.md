+++
date = '2025-02-18T00:00:00'
months = '2025/02'
draft = false
title = 'ValveがTeam Fortress 2のコードを公開！開発者たちに新たなチャンスが到来？'
tags = ["Valve", "Team Fortress 2", "ゲーム開発", "オープンソース", "プログラミング"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> ValveがTeam Fortress 2のコードを公開！開発者たちに新たなチャンスが到来？

引用元：[https://news.ycombinator.com/item?id=43094260](https://news.ycombinator.com/item?id=43094260)

{{<matomeQuote body="これはモッディングにはいいけど、誤解しないでね。これはまだクローズドソースのSourceエンジンの上にあるTF2特有のコードだから、新しいプラットフォームに移植するのは無理よ。Sourceを再実装するか、リークしたSourceコードと結びつける必要があるし、法的な問題もあるからね。" userName="jsheard" createdAt="2025-02-18T20:00:56" color="#785bff">}}

{{<matomeQuote body="Sourceをクローズにする理由が理解できないな。エンジンとしては面白くないし、今はO3DEやGodot、Wickedみたいな強力で扱いやすいオープンソースの代替が3つ以上ある。Sourceの開発に関わってきた人以外は興味ないだろう。GPLで公開すれば、インディーズからクリエイティブなプロジェクトが増えるはずなのに。" userName="klaussilveira" createdAt="2025-02-18T20:10:28" color="#785bff">}}

{{<matomeQuote body="最近のゲームエンジンは多くのサードパーティコードを使っているから、オープンソースにするのは手間だよ。特にSourceエンジンのバージョンはHavok物理を使ってるし。IdTechがオープンソースになったのはCarmackのおかげだろうけど、その時のコードは全部自社開発でPC専用だったからね。" userName="jsheard" createdAt="2025-02-18T20:17:42" color="">}}

{{<matomeQuote body="Idは、Doomのためにサードパーティのサウンドライブラリを使っていて、オープンソース版はLinuxポートを元にしてる。DOS用に戻すのは大変だった。DoomのWindowsポートはMicrosoftがやっていて、著作権の関係でリリースできなかった。Quakeの時はIdが自分たちでWindowsポートを作ったから、winquakeのソースコードを出せた。" userName="phire" createdAt="2025-02-18T20:40:29" color="">}}

{{<matomeQuote body="おもしろい話：Gabe Newellが元々のWinDoomポートを作ったんだよ。その後、Doom95を作ったチームも率いてた。" userName="tadfisher" createdAt="2025-02-18T21:02:13" color="">}}

{{<matomeQuote body="＞Microsoftがやったから著作権が移るのか？普通はお金を払った会社が権利を持つんじゃないの？" userName="stevage" createdAt="2025-02-18T20:44:06" color="">}}

{{<matomeQuote body="MicrosoftはIdに頼まれてDoomをポートしたんじゃなくて、Windows 95をDirectXで魅力的なゲームプラットフォームとして見せるために、自分たちのためにポートした。Doomエンジンをライセンスして、自分たちの変更を加えてDoom 95を発売したんだよ。おもしろいことに、DoomのWindowsポートはGabe Newellがやり始めたんだ。" userName="bitwize" createdAt="2025-02-18T20:59:59" color="#ff5733">}}

{{<matomeQuote body="それはMicrosoftとIdの契約内容によるかもね。" userName="nocman" createdAt="2025-02-18T20:52:03" color="">}}

{{<matomeQuote body="もしIdがMicrosoftにポートを依頼してたら、著作権はIdに属してたはず。でも、MicrosoftがDoomのソースコードをライセンスして自分たちでポートしたから、彼らの変更に関する著作権はMicrosoftに帰属するね。契約の詳細がどうなってたかはわからないけど。" userName="phire" createdAt="2025-02-18T22:18:22" color="#ff33a1">}}

{{<matomeQuote body="Ton RoosendaalがBlenderの起源について言ってたことを思い出した。彼は当時の雇用主にオープンソースにするよう説得するのがすごく大変だったけど、第三者のコードが邪魔にならなかったから助かったって。" userName="vanderZwan" createdAt="2025-02-19T09:19:49" color="">}}

{{<matomeQuote body="非公開のコードが混じってるのは理解できるけど、じゃあそのライセンスなしの部分をオープンソースにするのは何が問題なんだろうね。OSコミュニティが穴を埋めてくれるだろうしさ。" userName="ryandrake" createdAt="2025-02-19T05:09:12" color="">}}

{{<matomeQuote body="コードの構造によるかも。ライセンスされた部分が関数に散ってるかもしれないし、特定のNDA技術を隠すために整理が必要かも。もしそれが役立たないコードになるなら、管理層がリソース割くのは難しいよね。" userName="trinix912" createdAt="2025-02-19T12:17:39" color="">}}

{{<matomeQuote body="NDAの話は面白いね、それが理由かもしれない。" userName="lawlessone" createdAt="2025-02-18T23:02:50" color="">}}

{{<matomeQuote body="Sourceを閉じたままにする理由が分からないなぁ。面白いエンジンではないし、Havokとかライセンスされたミドルウェア使ってるしね。その辺を公開するのは法的に大変なのは理解できるけどさ。Source 2がもっと社内製の代替品で構成されれば、今後オープンソースになる可能性もあるかもね。" userName="kllrnohj" createdAt="2025-02-18T20:32:58" color="#ff33a1">}}

{{<matomeQuote body="Source 2の社内開発についてのリンクある？音響システムはオープンソースだし、物理エンジンはどうなってるのか気になるよね。オープンソースにした方がいいと思うけど、内部ワークフローを壊してまでやる理由がないのもわかる。" userName="fngjdflmdflg" createdAt="2025-02-18T21:44:39" color="">}}

{{<matomeQuote body="閉じてるメリットは確かにあるけど、外部ユーザーとの調整とか批判を気にしなくていいってのもあるよね。社内エンジンのワークフローって内部ネットワーク依存が強いから、全部公開するのは難しいと思う。" userName="MindSpunk" createdAt="2025-02-19T00:53:13" color="">}}

{{<matomeQuote body="Unrealは超大規模なエコシステムを持ってるから、Valveが競争するのはかなりハードル高いかも。技術力はあっても、そこに参入するのは全く別の市場かもしれない。" userName="TransAtlToonz" createdAt="2025-02-18T22:31:15" color="">}}

{{<matomeQuote body="Havokは特に置き換えるのが難しいよね。物理エンジンはケースごとに特別な取り扱いがあったりするから、置き換えたらゲームに致命的な問題が起きることもあるし。" userName="magicalhippo" createdAt="2025-02-18T21:34:02" color="#ff5733">}}

{{<matomeQuote body="ValveはFacepunchにSource 2のライセンスを与えてS&Boxを作らせてるみたいだね。ゲームエンジンとして公開するのはそこまでだな。" userName="Nition" createdAt="2025-02-18T21:48:40" color="">}}

{{<matomeQuote body="Source 2をいくつかのところに提供したって話は聞いたことあるよ。" userName="djmips" createdAt="2025-02-18T23:06:13" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="オープンソースにするとチートが増えるって返答が来るだろうけど、Sourceエンジンのソースコードは何度もリークされてるし、5分も探せば見つかるぞ。" userName="SXX" createdAt="2025-02-18T20:14:21" color="">}}

{{<matomeQuote body="あの人が言ってるのは、Godotが数億ドルの開発費がかかったゲームエンジンと比べられるってこと。あんまり他の人の意見を気にしない方がいいよ。" userName="doctorpangloss" createdAt="2025-02-18T20:16:52" color="">}}

{{<matomeQuote body="Source、古いしTF2向けの更新も2013年以降はないし、エンジンの完成度は比較するのにかなり低いよ。" userName="6SixTy" createdAt="2025-02-18T20:35:01" color="">}}

{{<matomeQuote body="お金をかけた開発とクオリティ、パフォーマンス、機能、互換性を同一視するのは無理がある。SourceがUnityやUnrealにどうやって比べられるんだ？メタバースに使えるもんでもない。" userName="KennyBlanken" createdAt="2025-02-18T21:25:56" color="#785bff">}}

{{<matomeQuote body="今、少なくともパワフルで使いやすいオープンソースの代替が3つ以上あるらしい（O3DE、Godot、Wicked）。Godotが2Dには向いてるけど3Dはどう？" userName="thaumasiotes" createdAt="2025-02-18T21:08:09" color="">}}

{{<matomeQuote body="Wickedは知らないけど、Godotでなら非写実的なスタイルを使った3Dゲームは十分作れるぞ。このショーリールを見てみ？" userName="SXX" createdAt="2025-02-18T21:21:51" color="">}}

{{<matomeQuote body="リークのことや、Source 1以来10年以上経ってること、Source2のレンダリングコードの大半は新しく書き直されてるから、もはやクローズドソースにする理由があるのか疑問だ。" userName="progbits" createdAt="2025-02-18T20:18:59" color="#38d3d3">}}

{{<matomeQuote body="もちろん「秘密のソース」はいつもある。CryTekが実装についての論文を出してた時期もあったけど、今はそうじゃない。" userName="bayindirh" createdAt="2025-02-18T20:39:54" color="">}}

{{<matomeQuote body="ライセンスを取得しないとソースは手に入らないんだよね。ライセンス料を払うことで、そのソースを共有しないことにも同意することになる。IDのエンジンはいつも”世界で最も高価なXcopy”と呼ばれる。ソースを得ても、共有できないんだ。関連ページを見てみて：<br>https://dev.epicgames.com/documentation/en-us/unreal-engine/...<br>このページは、Unreal Engineのソースコードをダウンロードする手順を詳細に説明しているんだ。" userName="bayindirh" createdAt="2025-02-18T21:45:58" color="">}}

{{<matomeQuote body="UE4/UE5のソースコードはライセンスのもとでしか手に入らないけど、そのライセンス取得のハードルはめちゃくちゃ低い。GitHubアカウントをつなげてEULAをクリックするだけで、大半のソースコードが無料で手に入るんだ。NDAで隠されているコンソール部分もあるけど、PCのコードはほぼ丸見えだよ。" userName="jsheard" createdAt="2025-02-18T21:53:23" color="#785bff">}}

{{<matomeQuote body="でも、それはソースが利用できるだけで、フリーソフトではないよね？ただの飲み物代のように無料ってことだよ。“EULAをクリック”が大きな問題だね。" userName="bayindirh" createdAt="2025-02-18T21:57:42" color="">}}

{{<matomeQuote body="いるよ。ただ“LAN”って言葉はあんまり当てはまらなくなったね。最近のゲームは実際のLANプレイオプションが少ないから。モダンタイトルだと、同じ部屋にいるPCやコンソールが全てリモートサーバーに接続してるし。少なくとも、インターネット接続は昔より良くなったけど。" userName="jsheard" createdAt="2025-02-18T21:21:15" color="">}}

{{<matomeQuote body="ValveがSourceからSource 2に移行して十年以上経ったのに、なんでソースがクローズソースのままなのかいまいち分からない。基本的なオーバーラップがあるからかな。それともゲームのソースをリリースすることには安心感があるのかな？" userName="johnnyanmac" createdAt="2025-02-18T20:15:35" color="">}}

{{<matomeQuote body="ValveがSource 2に移って十年以上経ったってのは関係ないと思う。だってSource 2を開放する理由も同じだもん。ゲームコードを非公開にしておく価値ってあるの？考えられるのはa)アンチチート、b)NDAに縛られた3rdパーティコード、c)会社独自の重要な秘密ソースの保護だね。a)とb)はコードのその部分をリリースしないだけで解決できるし、c)はどうでもいい話。競合はバイナリを逆コンパイルしてプロプライエタリアルゴリズムを再現できるからね。" userName="EMIRELADERO" createdAt="2025-02-18T20:24:26" color="#38d3d3">}}

{{<matomeQuote body="b)については、3rdパーティが著作権をどれだけ厳格に守りたいか次第で難しくなるかも。Google vs Oracleの件は、変形的だったから解決されたし、クラスや関数の宣言が著作権的に微小すぎるってわけではなかったから。だから、もし3rdパーティのヘッダーも残せないなら、たくさんの関数呼び出しを意味をつなげるしかないね。" userName="LegionMammal978" createdAt="2025-02-18T20:31:01" color="">}}

{{<matomeQuote body="Sourceエンジンはもう時代遅れだし、ValveはCSGOの利益を使ってGoDotやBevyといったオープンソースエンジンの再構築に投資すべきだね。Sourceエンジンの漏洩版をダウンロードしたことがあるけど、本当にひどすぎて笑ってしまった。確か6か月ぐらいの遅れがあったと思うけど、それでもGabe Newell自身による何年にもわたるコミュニティへのティーザーがあったのにHLの続編がまるでヴェイパーウェアになっちゃうのも納得だよ。" userName="xyst" createdAt="2025-02-18T21:27:17" color="#785bff">}}

{{<matomeQuote body="サーバー側でTF2を改造してたからめっちゃ嬉しい！IDAでバイナリを分析するのに無限に時間使ったけど、これからはGithub開くだけで済むってことだね。新機能やバグ修正が進むのは間違いない。TF2のソースコードが二回も漏れたのに、やっとこの時が来たって感じ。コミュニティの支援はすごいし、ゲームのクローンも作られたことがあるし、期待できるよ！" userName="sevenf0ur" createdAt="2025-02-18T21:45:01" color="#785bff">}}

{{<matomeQuote body="TF2 Classicにとって良いニュースであることを願ってる。<br>編集：TF2CのDiscordからのお知らせ：<br>”今後の情報は追って知らせるけど、Team Fortress 2のコードが公開されたことで、TF2 Classicをすぐに起動できなくなるかも。今は法的にその開発を進める準備中だけど、プレイするにはSource SDK Base 2013 Multiplayerの“previous2021”βブランチに切り替えてね。”" userName="Lammy" createdAt="2025-02-18T20:26:36" color="#45d325">}}

{{<matomeQuote body="オリジナルゲームの派生作品がOKとされて、Steamで新作としてリリースできる道が開けたのは、TF2 Classicの未来に明るい希望を持たせるね。" userName="__turbobrew__" createdAt="2025-02-18T20:36:22" color="#45d325">}}

{{<matomeQuote body="公式ページはここだよ：<br>https://tf2classic.com/<br>それと、Wikipediaも：<br>https://en.wikipedia.org/wiki/Team_Fortress_2" userName="rrr_oh_man" createdAt="2025-02-19T14:20:34" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="おお！昔のTF2のアップデートみたいなランディングページを作ってショート動画も作ってるってさ。すごい情熱だね！チームの規模も驚き！" userName="lelandfe" createdAt="2025-02-19T15:23:06" color="#ff5c5c">}}

{{<matomeQuote body="良いね！昔360でのTF2プレイが多かったから、TF2 Classicはアップデートがあったらこんな感じかって思えるよ（笑）。<br>特にJump Pad PDAが気に入ってて、エンジニアの新しい選択肢として使えるのが楽しい。詳細はここで確認できるよ：<br>https://wiki.tf2classic.com/wiki/Jump_Pads<br>テレポーターが無駄な時に役立つから、Spyに悩まされてる時にも良い！" userName="Lammy" createdAt="2025-02-19T17:00:10" color="#45d325">}}

{{<matomeQuote body="ゲーム名が「Frog Fortress 2」に変更されたみたい。" userName="pie_flavor" createdAt="2025-02-18T20:50:48" color="">}}

{{<matomeQuote body="公式TF2と区別するために、名前を変えたのかな？" userName="jsheard" createdAt="2025-02-18T21:17:56" color="">}}

{{<matomeQuote body="これは内部ネタっぽいね。コミッターを見ればわかるよ（笑）。俺たちの仲間は蛙とグラフィックプログラミングが相性抜群だ！" userName="Pannoniae" createdAt="2025-02-18T23:45:54" color="">}}

{{<matomeQuote body="公式のブログポストはここだよ: https://www.teamfortress.com/post.php?id=238809<br>他のSourceエンジンの最近のアップデートのリンクもあるよ" userName="pityJuke" createdAt="2025-02-18T20:21:02" color="">}}

{{<matomeQuote body="え、こんなのHacker Newsに出るとは思わなかった！ずっと待ってたし、Valveならもっと早くこういうことしてたはず。このゲームを“最後”のセレブレーションアップデートとしてリリースすればいいのに、Vulkanに移植して、コードベースをオープンソースにしちゃうとか。これがTF2の終わりの始まりか、始まりの終わりかは分からんけど、以前のリークとは違ってこれは大ニュースだね。" userName="beeflet" createdAt="2025-02-18T20:27:49" color="#785bff">}}

{{<matomeQuote body="終わりの始まりなんて言ってるけど、もう何年も前から終わってるよ。コミュニティに引き継ぐべきだし、それが正解！TF2のチームは今はほんとに少人数だろうし、18年も経ってるんだから、開発を外注するのが正しいよ。" userName="HaZeust" createdAt="2025-02-18T21:31:19" color="">}}

{{<matomeQuote body="チームが少ないって、ほんとに楽観的すぎるよ。実際は2人くらいじゃないかな。" userName="Starlevel004" createdAt="2025-02-18T21:47:58" color="">}}

{{<matomeQuote body="実際、バイナリでの二桁だもんね。" userName="ssalazar" createdAt="2025-02-19T01:22:26" color="">}}

{{<matomeQuote body="キーボードの前にいる人を数えたら、二桁以上だよ！" userName="beeflet" createdAt="2025-02-18T22:10:53" color="">}}

{{<matomeQuote body="TF2のチームは、長い間一人だったって有名だからね。" userName="skupig" createdAt="2025-02-18T21:51:23" color="">}}

{{<matomeQuote body="その人はできる限りのことを頑張ったけど、一人には無理だったよ。" userName="sophacles" createdAt="2025-02-18T22:19:58" color="">}}

{{<matomeQuote body="90年代にはiDがDoomを作って、それで数年お金を稼いでからソースコードを公開したんだよね。クエイクでも同じことをやって、だからValveみたいな会社が今もある。彼らの初期のゲームではDoomやQuakeの改造したエンジンを使ってたし、Valveはその25年以上続く伝統を引き継いでる。今でも新しいDoomマップを作って遊んでる人がいるし、2050年代以降も何らかの形でTF2を遊んでるかもしれないね。" userName="subjectsigma" createdAt="2025-02-19T12:35:30" color="#ff5733">}}

{{<matomeQuote body="iDがQuakeのコードを公開するのに3年しかかからなかったのが気になるね。" userName="hx8" createdAt="2025-02-19T14:30:13" color="">}}

{{<matomeQuote body="Portalのセリフだよ。最終戦でGLaDOSが解体される時にパニックになって出てくるんだ。" userName="Rooster61" createdAt="2025-02-19T14:59:39" color="#ff33a1">}}

{{<matomeQuote body="たぶん、Scoutとかへの言及だと思うよ。" userName="reportgunner" createdAt="2025-02-19T09:12:05" color="">}}

{{<matomeQuote body="これがHNに載るのは予想通りだよね。" userName="guy234" createdAt="2025-02-20T05:44:25" color="">}}

{{<matomeQuote body="64ビットMac用に再コンパイルする前にソースコードを公開したってことは、ValveはAppleとビジネスをやるのが優しくないと思ってるってことだよ。それもAppleがゲーム開発者をApp Storeに縛りつけようとしてるから仕方ない。" userName="foxandmouse" createdAt="2025-02-18T20:14:44" color="">}}

{{<matomeQuote body="Mac向けにゲームを書くのは大変だろうね。標準じゃないCPUアーキテクチャや独自のグラフィックスAPI、多くは高解像度の埋め込みスクリーンを持っていて、GPUも”良い”レベルだし。Appleが中くらいのTomb Raider 2グラフィックスを発表した時、ゲーム開発者にとってあまり期待できない内容だったよ。ユーザーがMacを持てるなら、コンソールも買えたんじゃないかな。ゲーム会社はMacよりもSnapdragon向けにリコンパイルすると思うよ。" userName="jeroenhd" createdAt="2025-02-19T08:59:01" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞Linuxには似たような問題があって、それが理由でLinuxでゲームをプレイする方法はエミュレートされたWindows環境でプレイすること。これについても見てみてね。Win32はLinuxでは唯一の安定したABIだよ。" userName="andai" createdAt="2025-02-19T16:16:45" color="">}}

{{<matomeQuote body="Steam Linux Runtimeで安定させてほしいな。これはFlatpakのラッパーみたいなもんだから。" userName="Vilian" createdAt="2025-02-25T12:43:06" color="">}}

{{<matomeQuote body="ゲーム業界のインタビューで聞いたけど、Appleは昔はゲーム会社に対して敵対的だったみたい。でも、iPhoneのApp Storeで少しは和らいだ感じ。Microsoftはデベロッパーに多額の投資をして、結果的にPCゲームの独占を手にしたんだ。" userName="ender341341" createdAt="2025-02-18T20:35:17" color="#ff33a1">}}

{{<matomeQuote body="Microsoftがデベロッパーに“接待”しただけだとは思わないな。ゲーム用のツールやAPIに多額の投資をして、最終的には自社のゲーム機に繋がったんだ。90年代半ばから他にこの分野に注力していた会社はなくて、自然に独占したってことだ。Steamも同じ理由で成功したんだよ。" userName="imiric" createdAt="2025-02-18T21:36:00" color="#38d3d3">}}

{{<matomeQuote body="Microsoftにこれといった評価は与えたくないな。歴史的に見ても、管理側がWindowsをゲームプラットフォームとして見捨ててたし、最初のDirectXプロジェクトも支援されてなかった。DirectXの初期のエンジニアたちの情熱がなかったら、今のゲームランドスケープは大きく変わっていたはずだ。" userName="madrox" createdAt="2025-02-18T22:38:26" color="">}}

{{<matomeQuote body="そのレポートは読みたいな、もし共有できるなら。とはいえ、Microsoftの30年以上のサポートがたった3人の社員のおかげだとは思えないよ。彼らが達成したことと今の地位は、会社の長期的な戦略の結果だと思う。" userName="imiric" createdAt="2025-02-18T23:56:29" color="#ff33a1">}}

{{<matomeQuote body="30年間、競争相手をつぶそうとしてきたことも忘れちゃいけないね。" userName="Vilian" createdAt="2025-02-19T06:32:11" color="">}}

{{<matomeQuote body="DirectXのWikipediaページにその情報載ってるよ。実際、DirectXが受け入れられたことで、Microsoftも姿勢を変えたんだ。ただ、初期の3人のエンジニアが頑張ったのが大きいんだよ。" userName="madrox" createdAt="2025-02-19T18:51:30" color="#ff33a1">}}

{{<matomeQuote body="少なくともMicrosoftはこれらの開発者を解雇しなかったし、DirectXの開発をやめるよう強制はしなかった。だから誰かにはクレジットが与えられるべきだよ、たとえ上層部じゃなくてもね。" userName="softawre" createdAt="2025-02-19T16:40:09" color="">}}

{{<matomeQuote body="そうだよ。DirectXってもう25年から30年くらい前の話だよね？" userName="thefz" createdAt="2025-02-18T22:30:13" color="">}}

{{<matomeQuote body="今じゃないみたいだよ。Game Porting Toolkit 2が出て、Macでのゲームが増えそうだね。開発者がどれだけ頑張るか次第だけど、Appleのハードウェアがいいし、ゲームのポートも簡単だから、Macゲームが増えると思う。" userName="foxandmouse" createdAt="2025-02-18T20:42:41" color="">}}

{{<matomeQuote body="Game Porting Toolkitって、開発者はDirectX翻訳レイヤーを評価目的でしか使えないって変なライセンスがあるよね。エンドユーザーはWindowsゲームを動かせるけど、開発者は自分たちのポートを作っちゃダメで、やっぱりMetalにちゃんと移植しないといけないって感じ。" userName="jsheard" createdAt="2025-02-18T20:51:51" color="">}}

{{<matomeQuote body="Apple Arcadeの開発者の経験を考えると期待はできないね。Appleはゲームにあまり関心がないか、ゲーム開発者を惹きつける環境を作れない。ゲームポーティングツールキットがあっても無駄。iPhoneはモバイルゲームがたくさん出るけど、Macにはその余裕がないんだよね。" userName="AlexandrB" createdAt="2025-02-18T20:59:15" color="#ff5733">}}

{{<matomeQuote body="記事によれば、公式TF2サイトでの発表には、<br>＞”私たちは、64ビットバイナリサポート、スケーラブルHUD/UI、予測修正、他の多くの改善を加えた大規模な更新を行います！”ということが書かれている。それなりに進展があるみたい。" userName="dundarious" createdAt="2025-02-19T03:24:48" color="#ff5733">}}

{{<matomeQuote body="Rosettaが他の互換レイヤーと同じように潰されるまでは安心できないよね。" userName="Vilian" createdAt="2025-02-19T06:33:22" color="">}}

{{<matomeQuote body="Macユーザーは1.4%で、Linuxより25%少ないんだ。それでも意外に多いとは思う。でも互換性のあるゲームがなければSteamをインストールする理由はほとんどない。Appleは最近ゲームに優しくなったばかりだから、20年前のゲームを移植しようとするのはまあ理解できる。" userName="bearjaws" createdAt="2025-02-18T20:49:46" color="">}}

{{<matomeQuote body="当たり前のことだけど、これはSteamのユーザーの中での割合ね。Macは1.4%、Linuxは2.06%だよ。" userName="isametry" createdAt="2025-02-18T21:14:31" color="">}}

{{<matomeQuote body="＞互換性のあるゲームがないと<br>Steamで持ってるゲームの約30%はMacで動くよ。開発が難しいプラットフォームなのに、意外に多いと思う。とはいえ、CoDとかLoLみたいなメインストリームゲームは少ないけどね。" userName="Kovah" createdAt="2025-02-18T21:00:55" color="">}}

{{<matomeQuote body="ハードウェア能力に基づいて推測してるのかな。そうだとしても、開発者がゲームをMacに移植しても、だんだん互換性がなくなるよ。更新が止まるゲームも多いし、みんなが新しいmacOSに合わせて維持する努力をするのを期待してはいけない。32ビットx86用に作られたゲームがMacでプレイできなくなってるのが多いから、将来的にはRosettaが無くなってさらにゲームへのアクセスが失われるよ。" userName="Rohansi" createdAt="2025-02-19T01:47:40" color="">}}

{{<matomeQuote body="steamdeckはlinuxで動いてるから、そのうちLinux用のゲームが互換性を持つようになる。もしかしたらPCゲーマーもWindowsなしで済む時代が来るかも。でも鶏と卵の問題かもしれない。" userName="weaksauce" createdAt="2025-02-19T01:51:06" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
