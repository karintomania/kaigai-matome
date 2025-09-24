+++
date = '2025-09-17T00:00:00'
months = '2025/09'
draft = false
title = 'ASUSゲーミングノートPCに4年間放置された深刻なACPIファームウェアバグ！'
tags = ["ASUS", "ゲーミングPC", "ファームウェア", "バグ", "ACPI"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> ASUSゲーミングノートPCに4年間放置された深刻なACPIファームウェアバグ！

引用元：[https://news.ycombinator.com/item?id=45271484](https://news.ycombinator.com/item?id=45271484)




{{<matomeQuote body="この発見、記事、そして修正提案は本当に素晴らしいね。現代のPCがどう動くか、そして隠されているとされるものにどこまで深く入り込めるかを学ぶのにすごく参考になったよ。<br>長年ファームウェアを書いてきた者としては、一般ユーザーがここまでバグを見つけられるなんて夢のようだね。ASUSがすぐにメールを送って、短期契約でファームウェア担当者と話させたり、高額な報酬を払ったり、最新のBIOSが動くノートPCを渡したりするような世界に住みたいよ。<br>このバグが4年間も未修正ってことは、残念ながらそんな世界じゃないってことだね。" userName="unwind" createdAt="2025/09/17 07:05:11" color="#45d325">}}




{{<matomeQuote body="技術的なRCAは面白いけど、ビジネスプロセスのRCAにも興味があるね。どこにでもある再現可能な問題なのに、なんでサポートやRMAチャネルにフィードバックされなかったんだろう？証拠が少なかったのか、ASUSが間違った結論を出したのか、それとも多くの証拠があったのに怠慢だったのか？<br>使ってて明らかな問題なのに、QAプロセスはどうなってるの？これは見逃すべきじゃなかったよね。今、ASUSはどうするんだろう？こんな問題はブランドを台無しにする可能性があるから、もうROGは買わないかな。ファームウェアのバグ自体もかなり問題だし、割り込みをスリープさせるとか、どうやってレビュー通ったんだ？" userName="kryogen1c" createdAt="2025/09/17 11:28:09" color="#ff33a1">}}




{{<matomeQuote body="コンシューマー向けやゲーマー向けノートPCがクソなのは別に構わないさ。競合もみんなそうだからね。コンシューマー向けハードウェアは量産ビジネスで、実際のユーザー体験なんて、有名人による宣伝やマーケティング戦略に比べたらほとんど重要じゃないんだよ。<br>問題のあるASUSノートPCも、たぶんいつもの連中からは5点満点の高評価を受けてるんだろうし、消費者がまともな取引を期待するのは難しいんだよね。" userName="nikanj" createdAt="2025/09/17 13:17:11" color="#785bff">}}




{{<matomeQuote body="まさにその通りだね。俺もASUSやASRock製品で使い物にならないのをいくつも経験したよ。どれもレビューでは5つ星なのに、テックフォーラムじゃネットワークポートが壊れたり、CPUがIOPS過多でボードを壊したり、馬鹿げた問題ばかりでみんな不満たらたらだった。<br>今はMSIのマザーボードを使ってるけど、ASUSのボードよりずっと安かったし、スペックは劣るけどちゃんと動くんだ。ASUSやASRockにはもう戻らないね。2 FPS落ちても、ちゃんと機能するデバイスの方がいい。<br>Windows Helloの実装もひどい例だよ。プロトコルはいいのに、多くのデバイスで実装が間違っててバイパスできちゃう。最近のコンシューマーハードウェア、特にゲーミング製品はまるで宝くじだね。" userName="sim7c00" createdAt="2025/09/18 12:04:43" color="#38d3d3">}}




{{<matomeQuote body="ブランドを擁護するネット民に煽られてる部分もあるね。彼らは“ゲーマー”ライフスタイルを送ってるんだろう。<br>俺もASUSのモニターで痛い目に遭ったことがあるよ。起動が遅いし、Macデバイスの認識問題でモニターを再起動しないといけないし、薄いスタンドのせいで最終的に壊れたり、内蔵スピーカーもひどい。まさに“まあまあ”な製品だったね。<br>でも、俺は少数派みたいで、この話をすると大抵『ASUS製品でそんな問題は一度もなかったよ』って言われるんだ ¯\_(ツ)_/¯<br>最終的にはこの問題は自然と解決するんじゃないかな。ASUSもいずれ顧客を失いすぎて、特定の市場から撤退せざるを得なくなると思うよ。" userName="nebula8804" createdAt="2025/09/18 07:48:10" color="#ff5c5c">}}




{{<matomeQuote body="M1搭載のMacBookが、一部のモニターで変なちらつき問題を抱えてて、終わりが見えないのは、これと同じ理由なのかな？" userName="392" createdAt="2025/09/18 11:58:19" color="">}}




{{<matomeQuote body="『私のノートPCが遅い』っていう意見のシグナル対ノイズ比はかなり悪いだろうね。これまでたくさんのPCに詳しくない人たちのコンピューターを手伝ってきたけど、マルウェア、大量のインストール済みプログラム、99%のディスク容量不足とか、いろいろな問題を見てきたからね。" userName="zipy124" createdAt="2025/09/22 12:11:43" color="#ff5c5c">}}




{{<matomeQuote body="『QAプロセスはどうなってるの？これは見逃すべきじゃなかった？』だって？<br>ここ数十年のコンシューマー製品（あるいはほとんど何でも）を使ったことある？大体みんな気にしてないんだよ。このタイムラインを見てもわかる通り、誰も気にしてないのが明らかだね。" userName="formerly_proven" createdAt="2025/09/17 12:48:18" color="#ff5733">}}




{{<matomeQuote body="QAプロセスってのはね、顧客にゴミを送りつけて、故障したガラクタで稼いだ札束に顔を突っ込むことだよ。" userName="sim7c00" createdAt="2025/09/18 12:05:17" color="#38d3d3">}}




{{<matomeQuote body="ACPIのAMLバイトコードは、バグ解析や修正に使える反面、ひどいプログラミング環境でカーネルの最高特権レベルで動くんだ。システムインテグレーターはこれを適当に使うから、Linuxドライバを書くときはACPIのコードは捨てがちだね。" userName="ajross" createdAt="2025/09/17 13:16:54" color="#ff33a1">}}




{{<matomeQuote body="ACPI AMLスタックはIntel製（Linuxが使ってるやつ）、Microsoft製、それとOpenBSDのハッカーたちが作ったやつの3種類があるって知ってるよ。" userName="somat" createdAt="2025/09/17 15:13:08" color="">}}




{{<matomeQuote body="WindowsのACPIコードもIntel製からきてるらしいね。acpicaのソースコードが2.5MBもあるなんて、信じられない。6502並みの仮想マシンのためだけに、こんなにデカいコードが必要なんて驚きだわ。" userName="ajross" createdAt="2025/09/17 16:14:22" color="#38d3d3">}}




{{<matomeQuote body="ACPIみたいな安っぽいごまかしじゃなくて、ベンダーがネイティブコードを書いてマシンと連携してほしいね。WindowsノートPCは全部ゴミみたいなもので、買った瞬間から使い物にならないよ。" userName="rangestransform" createdAt="2025/09/18 15:43:20" color="">}}




{{<matomeQuote body="たとえAMLの逆アセンブルでひどいコードが見つかっても、動くし中身を調べられるからね。ごみみたいなACPI統合のおかげで、たくさんの堅牢なLinuxドライバが生まれたんだ。諸刃の剣だけど、悪いことばかりじゃないよ。" userName="ajross" createdAt="2025/09/18 17:17:50" color="#38d3d3">}}




{{<matomeQuote body="こんなに詳しい人がいるなんて尊敬するわ。自分のノートPCの機能解析中にACPIでつまずいちゃってね。テーブルをダンプしてコードを逆コンパイルしたけど、スタブコードしかなくて無理だった。自分でLinuxドライバを書きたかったけど、できなかったよ。できる人はすごいね。" userName="matheusmoreira" createdAt="2025/09/17 11:16:11" color="">}}




{{<matomeQuote body="LinuxプリインストールでサポートされてるPCを買うのが一番なんだけど、このWindowsの件みたいに、システム統合やファームウェアのチームがしっかり仕事してくれないと結局ダメなんだよね。" userName="trelane" createdAt="2025/09/17 12:28:04" color="">}}




{{<matomeQuote body="ごめん、どの修正のこと？リンク先のGitHubページは「ASUSさん、これ直してください」って感じで終わってるじゃない？" userName="_zoltan_" createdAt="2025/09/17 07:48:52" color="">}}




{{<matomeQuote body="彼が自分のシステムを直したってさ。でもこれって普遍的な解決策じゃないんだ。モデルやファームウェアバージョンごとにカスタムパッチが必要なんだって。" userName="f311a" createdAt="2025/09/17 09:01:36" color="">}}




{{<matomeQuote body="ごめん、ちょっとわかりにくかったよね。記事で問題の解決策（割り込みサービスルーチンでsleep()しちゃダメ、とか）がかなり明確に提案されてたって言いたかっただけなんだ。" userName="unwind" createdAt="2025/09/17 08:03:39" color="">}}




{{<matomeQuote body="マジで素晴らしい分析だわ。ASUSがこんなゴミの品質チェックに努力するなんて最高だね…って皮肉だけどね。" userName="meandmycode" createdAt="2025/09/17 14:05:03" color="">}}




{{<matomeQuote body="ゲーミングノートPCで4年も致命的なカクつきを出し続けたのは驚きだよな。Redditからの引用だけど、保証で送り返しても「完璧」って言われて、結局慣れちゃったって話がある。返品が殺到しないのは、ASUSの策略なのかな。" userName="fulafel" createdAt="2025/09/17 05:53:39" color="">}}




{{<matomeQuote body="俺も今まで2台ゲーミングノートPC持ってたけど、どっちも似たような未解決の問題があったんだ。Alienware M17はstutteringや音ノイズ。ROG ASUSはLatencyMonがいろんなDLLにレイテンシースパイクを割り当ててた。Wi-Fiカード替えたりdGPU無効にしたりして何とかしたけど、ゲーム中は意外と大丈夫だったな。もうゲーミングノートは買わない。何も変わってないんだね。" userName="nodja" createdAt="2025/09/17 07:34:31" color="#ff33a1">}}




{{<matomeQuote body="ノートPCは例外なくひどいクソデバイスだよ。PCの複雑さを本のサイズに押し込んで、ハッピーセットのおもちゃみたいな品質なんだから。" userName="ACCount37" createdAt="2025/09/17 08:53:05" color="">}}




{{<matomeQuote body="MacBookはディスク容量、拡張オプション、メモリが全然足りなくて非力だよな。それに、ロックされたOSじゃないのを起動するのも結構大変だし。" userName="AstralStorm" createdAt="2025/09/17 11:14:24" color="">}}




{{<matomeQuote body="WindowsノートPCユーザーは、ちゃんと動かないって事実に慣らされて、問題をただ受け入れてるだけだよ。" userName="SchemaLoad" createdAt="2025/09/17 06:04:56" color="">}}




{{<matomeQuote body="俺はゲーミングノートPCを2台持ってたけど、こんな問題はなかったよ。ClevoのGTX 970m搭載機は4年間世界中で活躍して、今も現役。今のMSI GE66 RTX 3070m搭載機もうるさいけど他は問題なし。どっちも開けやすくて自分で修理できそうだったよ。MSIのファンノイズと電源アダプターがデカいのが唯一の難点かな。" userName="esperent" createdAt="2025/09/17 09:31:19" color="">}}




{{<matomeQuote body="このバグはUltimateモードでディスクリートGPUに切り替えた時だけ起こるんだって。Optimusモードなら普通に動くし、ほとんどのユーザーはこっちを使ってるはずだよ。ASUSが追加機能をちゃんとテストしてないのが問題だね。" userName="CrossVR" createdAt="2025/09/17 06:52:23" color="#ff5c5c">}}




{{<matomeQuote body="こんな問題がないノートPCもあるのは良いね。でも、個人的にはSteam DeckとビジネスノートPCの組み合わせが、ゲーミングノートPCより最強だと思うよ。家にゲーミングPCがあるならの話だけどね。" userName="nodja" createdAt="2025/09/17 09:49:10" color="">}}




{{<matomeQuote body="これって結局、業界が長年「パソコンは壊れても仕方ない」ってユーザーを洗脳してきた結果だよね。他の製品なら即返品レベルだよ。昔、先生が「パソコンは靴が勝手に爆発するようなもんだ」って言ってたのを思い出したよ。消費者法が強くなって良かったね。" userName="pjmlp" createdAt="2025/09/17 05:59:23" color="">}}




{{<matomeQuote body="「非力でディスク容量やメモリが少ない」って文句は聞いたことないな。俺のニーズにはMac miniで十分すぎるほどあるよ。<br>「ロックダウンされたOS以外のものを起動しにくい」ってのは分かる。Mac miniでLinuxがもっと簡単に動けば良いのにって思うよ。OSが制限的すぎるんだ。" userName="lostlogin" createdAt="2025/09/17 12:25:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺の2013年MacbookもディスプレイmuxでGPU切り替えがあったんだけど、たまに失敗して画面が真っ暗になることがあったんだ。俺だけじゃなかったみたい。<br>Appleもハードウェア問題のあるノートPCを出してるし、回避策でなんとかするしかなかったよ。ASUSと違って、Macbookのmuxはデフォルトでオンだったんだ。" userName="CrossVR" createdAt="2025/09/17 07:00:15" color="#ff33a1">}}




{{<matomeQuote body="2017年頃から、ゲーミングノートPCを人におすすめするのをやめたんだ。自分も嫌な経験ばっかりだったし、勧めたやつもすぐ壊れたり欠陥があったりしたからね。どのメーカーも同じだよ。ビジネス向けのGPU弱いやつか、ノートPCでのゲーム自体を諦めろって言ってる。価格対性能は悪いけど、ちゃんと動く可能性はあるからね。品質が地雷原なのに「良い価格」って何だよ？" userName="chao-" createdAt="2025/09/17 09:13:55" color="#45d325">}}




{{<matomeQuote body="俺が7000ポンドも出したDellのワークステーションノートPC、i9、3080Ti、128GB RAMとかすごいスペックだったけど、ゲームすると30秒で熱暴走して使い物にならなかったんだ。Razer Blade 15も結局スロットリングしたし、冷却が足りないんだと思う。<br>でも、今の安めのMSIゲーミングノートPC（i7、3070Ti）は全然スロットリングしないんだ。冷却システムがマジでオーバースペックで最高だよ。" userName="gambiting" createdAt="2025/09/17 07:54:55" color="#ff33a1">}}




{{<matomeQuote body="Intel MacBooksは、値段が高くて性能が低く、すぐ熱くなるゴミだったよ。発売日に古すぎるCPU積んでたし、最高の画面とトラックパッドってだけで高値だった。<br>Apple Silicon Macは全然違うね。速くて効率的だけど、OSはどんどんロックされて、アップグレードもできないし、やっぱり高い。Intel Macが良くなかったってのは同意するよ。" userName="MindSpunk" createdAt="2025/09/17 18:01:31" color="">}}




{{<matomeQuote body="Steam Deckがあるなら、ゲーミングノートPCってそこまで要らなくない？数少ない遊べないゲームのために必要って感じ。最近のノートPCの内蔵GPUでも、ゲームは十分遊べるよ（大抵は低～中設定、1080pだけどね）。" userName="robotnikman" createdAt="2025/09/17 19:01:40" color="">}}




{{<matomeQuote body="俺のMSIゲーミングノートPCはもっと安かったのに…全くスロットリングしないし、ゲームも快適に動くぜ。冷却システムが明らかに過剰なくらいだよ。MSIも学んだのかもな。昔のMSIゲーミングノートPCはマジでひどかった。すぐ熱暴走して性能半分しか出なかったし、ファンもうるさくてヘッドホンしても聞こえるくらいだった。" userName="alias_neo" createdAt="2025/09/17 08:43:31" color="#ff33a1">}}




{{<matomeQuote body="俺がASUSの製品、Zephyrus G14を買っちまった経緯を話すよ。当時ASUSはAMD Ryzen 4xxxHSラインを独占契約してたんだ。最初は良かったけど、2年後には熱暴走で性能ガタ落ち。原因はまだ分からないけど、iGPUが常に全開だったんだよ。dGPUを優先デバイスに設定したらバッテリー持ちは多少改善したな。機械的な故障が始まったからFramework Laptop 16に乗り換えたんだ。もう二度とASUSなんか買わないね。" userName="Tade0" createdAt="2025/09/17 10:10:31" color="#785bff">}}




{{<matomeQuote body="Windowsユーザーへの皮肉は記事の論点とはズレてるよ。<br>＞Linuxをインストールしても問題は残る。<br>＞問題はもっと深く、マシンのファームウェア、BIOSに埋め込まれてる。<br>それに、LinuxノートPCのユーザー体験も別に良くないしね。" userName="shmeeed" createdAt="2025/09/17 09:01:06" color="">}}




{{<matomeQuote body="ASUSは基本的な機能すらテストしないんだよ、ましてや追加機能なんて。俺は2017年のZephyrus GX501を持ってるんだけど、NVIDIA GeForce GTX 1080がHDMI 2.0サポートを導入したモデルだった。ASUSはHDMI 2.0対応って宣伝してたけど、実際はHDMI 1.4の帯域幅に制限されてたんだ。ASUSはリコールも修正もしなかったし、返答もなし。マーケティングページにもまだ4K TVを60Hzで繋げるとか書いてある。<br>あと、ノートPCレビュアーの無能さも露呈したよね。みんなASUSの宣伝文句を鵜呑みにしてて、誰もテストしてなかったんだ。<br>[1] https://rog-forum.asus.com/t5/rog-zephyrus-series/gx501-zeph...<br>[2] https://rog.asus.com/laptops/rog-zephyrus/rog-zephyrus-gx501..." userName="Strom" createdAt="2025/09/17 07:45:04" color="#ff5733">}}




{{<matomeQuote body="複雑さやエンジニアリング品質について不満を言いつつ、全部カスタマイズ可能にするべきだって言うのは、ちょっと矛盾してるよな。結局、何を求めるか選ばなきゃダメなんだ。McDonald’sの例えで言うなら、たくさんのカロリーは取れても、栄養は必ずしもたくさん取れないってことだ。<br>編集：GPコメントはあんたのじゃないけど、俺の言いたいことは変わらない。" userName="butlike" createdAt="2025/09/18 15:42:40" color="">}}




{{<matomeQuote body="これって、ディスクリートGPUのみのモードに設定した時だけ起こる問題なんじゃないかな？ほとんどの人はそうしないし。でも、ASUSのBIOSには他にも問題があるんだ。娘のノートPCだと、SSDを追加するとランダムにロックアップするんだよ。SSDのファームウェアのせいかと思ったけど、一番ロックアップが多かったSSDは、他のデスクトップ2台では問題なく使えてるやつだったしな…。" userName="nottorp" createdAt="2025/09/17 08:11:10" color="#45d325">}}




{{<matomeQuote body="Appleだって問題だらけだったじゃん。あのキーボードとかSnow LeopardとかTahoeとかさ、他にも例はたくさんあるし、LinuxのノートPCだって同じだよ。<br>みんな似たような問題抱えてるんだって。" userName="pjmlp" createdAt="2025/09/17 07:07:39" color="">}}




{{<matomeQuote body="20年前、dGPU搭載のミドルレンジノートPC持ってたけど、ゲームはそこそこでも、PCとしての体験はイマイチだったな。10年前にもまたdGPU付きノートPC買っちゃったんだけど、NVidiaがLinuxと相性悪かったせいで、GPUを1時間以上使った覚えがないよ。もう二度と買わない。dGPU付きノートPCは、ノートPC本来の用途と合ってないんだよ。<br>ゲームはデスクトップでやるのが一番だって俺の経験則。数ヶ月前からE-wasteリサイクル会社で働き始めて、中古のMicrosoft Surfaceタブレットがまさに求めてたものだと気づいたんだ。仕事用の「ノートPC」はDebianを載せたSurface Pro 5 (仕事のデスクトップはOptiplex micro)。今これを打ってるのは、自分用に買ったBlissOS入りのSurface Goだよ。どちらもカメラは動かないし、仕事用のSurfaceはバッテリー残量が表示されないけど、気にしないね。(バーコードスキャナーと一緒に使っても丸一日持つから、それで十分だよ)。" userName="theandrewbailey" createdAt="2025/09/17 10:53:41" color="#ff5733">}}




{{<matomeQuote body="俺が働いてた職場には、dGPU mux搭載の2013年製MBPが何十台もあったんだけど、俺もM1 MacBookが出るまで使ってたよ。ノートPCでできることなら大体全部に使ってたけど、FWIW!こんな問題は一度も経験しなかったし、見たこともないな！" userName="alexdbird" createdAt="2025/09/17 10:52:47" color="">}}




{{<matomeQuote body="トラックパッドはApple製品のすごい売りだよな。他のメーカーより断然良いんだから。" userName="butlike" createdAt="2025/09/18 15:44:15" color="">}}




{{<matomeQuote body="なんで有名な欠陥が、rtingsとかnotebookchecksみたいに、消費者寄りで尊敬されてるレビューサイトでも全然触れられないのか、いつも不思議に思うんだ。高評価レビューを信じて買ったら問題に遭遇して、「え、みんな知ってたの？」みたいなRedditスレッドを見つける、ってパターン。<br>「なんで驚いてるんだ？」って言われても、そりゃレビューに書いてないからだろ、って感じだよな。" userName="nopurpose" createdAt="2025/09/17 12:10:45" color="#ff5c5c">}}




{{<matomeQuote body="問題を見つけるのは簡単じゃないんだよ。dGPUオンリーモードにして、LatencyMonを120秒以上走らせないとダメ。(iGPUパススルーモードだと遅延するのかは知らない)。<br>notebookcheckもLatencyMonの数値は載せてるし、リアルタイムオーディオにはオススメできない、ってコメントもしてるけど、こんな極端な値は報告してないね。<br>https://www.notebookcheck.net/The-RTX-5090-Laptop-and-mini-L..." userName="ysleepy" createdAt="2025/09/17 16:17:23" color="#38d3d3">}}




{{<matomeQuote body="「なんでレビューで欠陥が触れられないんだ？」って疑問にぶち当たったら、まずレビューサイトのスポンサーを調べることから始めるだろうね。" userName="enricotr" createdAt="2025/09/17 12:13:15" color="">}}




{{<matomeQuote body="普通、レビューサイトの収益はアフィリエイトリンクとかYouTubeの広告とかグッズ販売から来てるんだ。もちろんサクラもいるけど、中には正確なレビューをしようと頑張って、メーカーのミスも叩く人もいるよ。<br>それなのに、熱心なファンには知られてるのに、OPみたいなスタッター問題は全然触れられないんだよな。LinusTechTipsだってASUSのお金に頼ってないけど、Zephyrus G16のレビューでスタッターには言及しなかったし。LTTはエンターテイナーだけど、正確さにはこだわってるはずなんだけどな。" userName="nopurpose" createdAt="2025/09/17 12:28:20" color="#785bff">}}




{{<matomeQuote body="割り込みコードにsleep書いた「プログラマー」（緩い意味でね）は、自分でテストしたのか？<br>それとも、責任が希薄な他の部署の人間が「自動テストはパスするから」って気にしてなかったのか？<br>Microsoftがやってたようなドッグフーディングがあれば、開発者自身が自分のマシンで経験して、きっと誰かが直したはずだよ。" userName="userbinator" createdAt="2025/09/17 06:36:02" color="#ff5733">}}




{{<matomeQuote body="昔、ある大手ハードウェアメーカーでファームウェアの契約をしてたんだけどさ、バグを報告すると、割り当てられたタスク以外のことをしたって怒られたんだ。<br>ハードウェアチームはファームウェアやドライバー開発者を格下だと思ってて、フィードバックも全く聞く耳持たずだったしね。だからこの記事の話は全然驚かないよ。" userName="MountainTheme12" createdAt="2025/09/17 07:54:58" color="#ff33a1">}}




{{<matomeQuote body="ハードウェア業界って、ソフトウェアがマジで大事だってことを全然理解してないよね。俺が働いてきた所はどこも、俺たちソフトウェア部門は二流扱いさ。新入社員も予算もいつも最後だし、それでソフトウェアがイマイチだと俺たちのせいにされるんだから、やってられないよ。<br>彼らは自分たちのレベルに降りてくることが汚れることだと思ってそうだね。" userName="reyqn" createdAt="2025/09/17 08:40:36" color="">}}




{{<matomeQuote body="ハードウェア業界がソフトウェアを重要視してるのは、結局儲けるためだけなんだよな。こんなゴミみたいな製品でも喜んで買う人たちがいるのはがっかりするけど、マーケットってそういうもんだよ。" userName="webdevver" createdAt="2025/09/17 21:44:09" color="">}}




{{<matomeQuote body="心配いらないって。ソフトウェアの重要性を理解してる会社もいくつかあるし、いずれ他の会社も追いついてくるはずだよ。" userName="nebula8804" createdAt="2025/09/18 07:56:48" color="">}}




{{<matomeQuote body="中国企業が結構そうだよ。あと Tesla、SpaceX、それから FAANG とかかな。" userName="nebula8804" createdAt="2025/09/18 21:22:08" color="">}}




{{<matomeQuote body="2024年の Zephyrus G14 を使ってるんだけど、USB-C充電だとスタッターがひどいんだ。70WのUSB電源だとマウスカーソルが数秒おきにしか動かないくらい。純正ACアダプターなら問題ないんだけどね。USB電源を抜くと一時的に直るんだ。<br>あと、蓋を閉めてもファンが回りっぱなしで、バッグに入れると熱暴走してバッテリーが減っちゃう。<br>結局、電源ボタンを「休止状態」に設定して、毎回手動で休止させてるよ。不便だけど、これ以外はOLEDも綺麗だし、ビルドクオリティも良くて気に入ってるんだ。まじで惜しい。" userName="taneq" createdAt="2025/09/17 05:48:56" color="#ff5733">}}




{{<matomeQuote body="その話、昔の Intel MacBook Pro の問題にちょっと似てるな。左側の USB-C ポートで充電しながら外部ディスプレイを使うと、とんでもない熱暴走が起きてたんだ。<br>GPU が左側にあったから、充電チップと GPU の熱で CPU がスロットリングしてファンが回りまくったんだろうな。右側で充電すると直ったんだよ。詳しくはここを見て。https://eshop.macsales.com/blog/61253-power-your-macbook-pro..." userName="fwip" createdAt="2025/09/17 15:59:10" color="#ff33a1">}}




{{<matomeQuote body="古い ASUS ROG ノートPCにも似た問題があったよ。2017年の17インチモデルなんだけど、CPU と GPU がヒートパイプ共有で、CPU が100%だと GPU がスロットリングしてゲームが遅くなったんだ。CPU の最大値を90%くらいに落とすのが解決策だったな。CPU の性能ロスはほとんど感じなかったけど、GPU はフルスピードで動いたんだ。<br>なんでまた ASUS を買ったかって？だって、スロットリング問題が解決したら、その17インチは本当に頑丈だったんだ。鉱山現場にも耐えたし、キーボードに工具を落としても壊れなかった！今も子供がゲーミングPCとして使ってるよ。あとパートナーの Zephyrus が良かったからね。" userName="taneq" createdAt="2025/09/18 02:11:13" color="#785bff">}}




{{<matomeQuote body="2024年の G14 は知らないけど、2023年の G14 は、USB-C PD が100Wしか対応してないのにシステムは200W以上使うから、USB-C 電源だとフルパワーで動かないって公式に書いてあるよ。だから i9 の MacBook みたいにスロットリングするんだ。（あれは VRM のオーバーヒートが原因だったけどね。）" userName="p_l" createdAt="2025/09/17 11:11:14" color="#785bff">}}




{{<matomeQuote body="USB-C で最高のゲーム性能は期待してないけど、せめてバッテリーだけで動くくらいの性能はほしいよ。マウスカーソルを動かしたり MP3 を再生したりくらいは普通にできるべきだろ。<br>これはただのスロットリングじゃなくて、使い物にならないレベルなんだ。それに、USB-C 電源を抜き差しすると、ゲーム中でもしばらく問題が解消するってのが不思議なんだよね。" userName="taneq" createdAt="2025/09/17 14:09:27" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="2023年のG14モデルはLinuxだとそこそこ動くけど、ACPIの問題はまだ直したいとこかな。" userName="p_l" createdAt="2025/09/17 16:02:45" color="">}}




{{<matomeQuote body="ASUSのゲーミングノートPCは、このバグが完全に直るまで買うべきじゃないね。もし保証期間中なら、保証請求して、場合によっては少額訴訟も覚悟しといた方がいいよ。" userName="Animats" createdAt="2025/09/17 05:51:21" color="#785bff">}}




{{<matomeQuote body="他のほとんどのノートPCには、ASUSでバグが出るMUXのdGPU-onlyモードなんてないんだよね。dGPU-onlyモードは電力食いすぎで、メリットもほとんどないと思うよ。" userName="izacus" createdAt="2025/09/17 07:32:36" color="">}}




{{<matomeQuote body="「電力食いすぎでメリット少ない」って言うけど、G-SYNC対応の外部ディスプレイに低遅延出力したいなら、メリットあるだろ。ASUSのマザーボードのBIOS/UEFIも最悪だし、Ryzen AGESAもひどかったよ。" userName="alias_neo" createdAt="2025/09/17 08:52:38" color="#ff5c5c">}}




{{<matomeQuote body="私のG14は、nVidia接続のUSB-CポートでOptimusモードのG-Syncが問題なく動いてたし、GPU切り替えに再起動もいらなかったから、MUXモードって必要なかったな。他のゲーミングノートPCがこのハードウェアに金かけないのも納得だわ。" userName="izacus" createdAt="2025/09/17 12:23:55" color="">}}




{{<matomeQuote body="このスイッチ（MUX）は、根本的なトレードオフを解決してるんだ。外部ポートって物理的に一つのGPUにしか繋がれないからね。dGPUならG-SYNCとか使えるけど、電力消費は高い。iGPUだと、dGPUのフレームバッファがiGPU経由になって、iGPUに制限されちゃうんだよ。" userName="anonymars" createdAt="2025/09/17 13:01:27" color="#ff5733">}}




{{<matomeQuote body="iGPUオンリーモードなんて、性能低すぎてメリットないから使ったことないよ。" userName="LeifCarrotson" createdAt="2025/09/17 13:37:07" color="">}}




{{<matomeQuote body="冗談かどうかわかんないけど、僕もそう言えるよ。MacBook Proを普段使いしてた時も、RazerのノートPCをデスクトップ代わりに使ってた時もね（Razerはバッテリーが膨らんじゃって、結局取り外してリサイクルしたけど、おっと）。でも、一般ユーザーにとっては自動切り替えの便利さはわかるから、その存在自体には文句は言わないよ：）" userName="ChickeNES" createdAt="2025/09/17 19:14:15" color="">}}




{{<matomeQuote body="僕はわざとiGPUオンリーのモデルを選んだよ。マルチGPUの面倒に巻き込まれたくなかったからね。AMDのiGPUは軽いゲームなら十分速いし、最近のiGPUデザインを選べばいいんだよ。" userName="account42" createdAt="2025/09/18 12:00:50" color="#45d325">}}




{{<matomeQuote body="どうやら複数のバグがあるみたいだね。MUXモード特有のやつもあるけど、割り込み中にスリープしたり、強制的に再起動させたりするのは、どっちにしろ問題ありだろ。" userName="nfriedly" createdAt="2025/09/17 14:14:14" color="#ff5733">}}




{{<matomeQuote body="2015年頃から切り替え式GPU搭載ノートPCは買わないって決めてて、今のところ正解だったよ。<br>プレミアムブランドがマーケティングに大金かけるのに、ファームウェア開発にはわずかなお金しか使わないのを見るのは呆れるね。" userName="puzzlingcaptcha" createdAt="2025/09/17 07:53:11" color="#ff5733">}}




{{<matomeQuote body="わかる！2013年にOptimus搭載ノートPC買って、二度と買わないって誓ったもん。<br>たまにデスクトップ使ったりサーバー借りたりするけど、iGPUオンリーにして後悔したことは一度もないよ。" userName="daemonologist" createdAt="2025/09/17 21:16:13" color="">}}




{{<matomeQuote body="みんな同じ目に遭ってるってことか！<br>賢いハードウェアはニッチな顧客層だとエッジケースが多い。<br>俺はLenovoビジネスノートPCかMacにするわ。販売台数が多い方が、「ただ動く」可能性が高いってことだね。<br>P.S. LenovoのTBドックも不安定なんだよね。独自のドックの方が良かったかも。" userName="webdevver" createdAt="2025/09/17 21:47:35" color="#ff5c5c">}}




{{<matomeQuote body="2019年のMSIゲーミングノートPC（GS65 Stealth）でも同じ現象が起きてるよ。<br>Latencymonで10ms以上のスタッターを確認済み。ACPIデバイスを全部無効にすると直るけど、dGPUも無効になるんだ。<br>これはdGPU搭載ゲーミングノートPCの多くに影響してるかも。<br>MSIフォーラムのリンクもあるよ: https://forum-en.msi.com/index.php?threads/constant-micro-st...<br>「nvidia gaming laptop stutter latencymon acpi」でググってみて。" userName="hnuser123456" createdAt="2025/09/17 13:59:59" color="#38d3d3">}}




{{<matomeQuote body="そりゃMacが人気になるわけだね。<br>こんなひどいバグが4年間も放置されてたなんて信じられないよ。少なくとも、何を買っちゃいけないかは分かったわ…" userName="Panzer04" createdAt="2025/09/17 04:53:53" color="">}}




{{<matomeQuote body="Appleもこういう問題はあったよ。<br>例えば、最初は問題を否定してたこの件とかね: https://9to5mac.com/2019/10/24/efi-firmware/" userName="jsiepkes" createdAt="2025/09/17 05:30:59" color="">}}




{{<matomeQuote body="公平に見て、あれはごく少数の5年前のMacの話だよ。<br>ASUSのマシンだったら、このMacよりずっと前に廃棄されてたレベルだね。" userName="nebula8804" createdAt="2025/09/18 08:02:03" color="">}}




{{<matomeQuote body="歪んだ情報に流されない俺たちから見れば、AppleにもAppleなりの問題があるってことだね。" userName="pjmlp" createdAt="2025/09/17 06:00:20" color="">}}




{{<matomeQuote body="Appleはソフト、ハード、統合全部自分たちでやってるから、他社に責任を押し付けられないし、直すインセンティブがある。<br>過去10年で俺がMacで遭遇した問題は、すぐに直されたよ。<br>PCのハードバグの多くは誰も気にしないから直らないんだ。<br>この記事の筆者は、不満ユーザーじゃなくてASUSの社員であるべきだったね…" userName="bzzzt" createdAt="2025/09/17 07:30:56" color="#ff5c5c">}}




{{<matomeQuote body="キーボード交換や有名なアンテナ問題に何年かかったっけ？<br>Apple Radarのバックログを掘ったらキリがないよ、Apple関連のポッドキャストではいつもネタになってるけどね。" userName="pjmlp" createdAt="2025/09/17 08:12:56" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
