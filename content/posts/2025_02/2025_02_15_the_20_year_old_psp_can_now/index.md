+++
date = '2025-02-15T00:00:00'
draft = false
title = '20年前のPSPが最新のWPA2 WiFiネットワークに接続可能に！'
tags = ["PSP", "WiFi", "ゲーム", "レトロ", "テクノロジー"]
featureimage = 'thumbnails/purple1.jpg'
+++

> 20年前のPSPが最新のWPA2 WiFiネットワークに接続可能に！

引用元：[https://news.ycombinator.com/item?id=43055671](https://news.ycombinator.com/item?id=43055671)

{{<matomeQuote body="この技術的な実現方法についての詳細な記事はどこにかあるの？プラグインが導入されたブランチのGit履歴を見てみたけどちょっと難しかった。でも、面白いコミットを見つけたよ。そのコミットは他のコード（pspnet_apctl.prxモジュールみたい）を修正しているみたいだけど、Discordでの議論がほとんどだったのか、他には書かれてないのかな。PSPのソフトウェアイメージの構造を学ぶのは難しそうだから、詳細を求めるのは無理かな。だけど、WPA1とWPA2の違いをよく知っている人には簡単かもしれない。ここで、無理に好奇心を持っている！" userName="opello" createdAt="2025-02-15T05:33:34" color="#ff5733">}}

{{<matomeQuote body="自分は専門家ではないけど、おそらく以下のような理由が考えられるかな：<br>- Sonyが提供したMarvell WiFiコントローラーのファームウェアはWPA（AES付き）をサポートしていて、WPA2（AES付き）もサポートしている可能性が高い。<br>- Sony側でユーザースペースで設定していなかったのは、安定性の理由か需要が無かったからか、無難にしていたんだろう。<br>- パッチはWPA AESをWPA2 AESに話すためのユーザースペースの部分を入れ替えた。違いは大きくなくて、主にデータを管理フレーム内で変更して、鍵交換を異なって設定するだけだよ。<br>開発者が正しい部分を適切な値で修正するのを見つけたのは本当にすごい。" userName="Ambroos" createdAt="2025-02-15T10:41:01" color="#785bff">}}

{{<matomeQuote body="20年前からそんなに近かったのに、ハッカーたちがその時にオンにしなかったのは驚きだね。インターネットは大規模な匿名グループのための協力プラットフォームになるところだった。ハッカーたちがPSPファームウェアを逆解析しながらブロックに注釈を付けるための公共のウェブサイトを立ち上げたのを覚えてる。最初のPSP開発キットがLinuxでリリースされた時に嬉しかったな。PSPのためにコードをコンパイルできた時の驚きも思い出す。" userName="chillingeffect" createdAt="2025-02-15T13:49:38" color="">}}

{{<matomeQuote body="その視点と詳細はありがとう。とても納得できる内容だね。最初のリンクも環境に関する素晴らしいコンテキストをもたらしている。開発者の技術的な旅を読みたいな、すごく印象的だから。" userName="opello" createdAt="2025-02-15T16:56:14" color="">}}

{{<matomeQuote body="要するに、Marvell Libertas 88W8380は802.11i（WPA2とも呼ばれる）をそのままサポートしているよ。PSPのカーネルのWPAモジュールをパッチして、そのチップとファームウェアのWPA2機能を使用するようにしているんだ。" userName="noname120" createdAt="2025-02-16T00:15:40" color="#38d3d3">}}

{{<matomeQuote body="PSPが大好きだった。あの時代のハードウェアとしては衝撃的だった。ポータブル機器と言えばiPodとGame Boy Advanceだったから、友達が日本から輸入したWipeoutをプレイしているのを見た時は信じられなかった。あれは未来を感じさせる唯一無二のデバイスだった。" userName="gyomu" createdAt="2025-02-15T04:13:46" color="#785bff">}}

{{<matomeQuote body="PSPは好きだったけど、そんなに衝撃的ではなかった。彼らがやったトリックが印象を薄れさせた気がする。公式のゲームよりもホームブルーの方がはるかに印象的だったと思う。" userName="monkpit" createdAt="2025-02-15T04:28:15" color="">}}

{{<matomeQuote body="それには同意できないな。God of War Chains of Olympus、Metal Gear Solid Peace Walker、Crisis Core FF7、Test Drive Unlimited、MotorStorm Arctic Edgeなど、これらのゲームがPSPで遊べるのは印象的だと思うし、ホームブルーがこれらのゲームに何を提供できるのか気になるよ。" userName="spookie" createdAt="2025-02-15T10:04:02" color="">}}

{{<matomeQuote body="ホームブルーはPSPを非常に優れたエミュレーションマシンにした。オリジナルのPlayStationをエミュレートできて、これでFF7をプレイしたのがきっかけだった。SNESもエミュレートできるし、Chrono Triggerも楽しめた。N64エミュレーターの開発についての噂もあったけど、結局は何もリリースされなかったかな。" userName="TheAceOfHearts" createdAt="2025-02-15T10:49:47" color="#45d325">}}

{{<matomeQuote body="PS1エミュレーションは実は多くがSonyのネイティブ機能だよ。Sonyは後方互換性にとても関心があり、新しいコンソールが発売されるときに多くのタイトルがない問題を解決するために始まったんだ。PSPのネイティブPS1エミュレーターは、基本的に未修正のPS1 ISOを、何らかのコンテナファイル形式で扱っているみたいだ。" userName="lxgr" createdAt="2025-02-15T15:48:59" color="">}}

{{<matomeQuote body="FF7はPSNでの公式リリースがあってPSPでプレイできた。PSPのライフサイクルの終わりにはFF1からFF9まで遊べたし、Chrono TriggerもPSNでリリースされてたよ。" userName="goosedragons" createdAt="2025-02-15T13:45:47" color="">}}

{{<matomeQuote body="スーパー・マリオ６４をDaedalusの初期版でちょっと遊んだことがあるから、噂だけじゃなかったよ。確かに、リアルタイムで約80～90％ぐらいしか動かなかったし、音声はダメダメだったけど、後のリリースで改善されたかもしれないね。" userName="tripflag" createdAt="2025-02-15T12:39:50" color="">}}

{{<matomeQuote body="数年前にPSPを改造したけど、Mario 64は音もちゃんと鳴って幅広画面でも遊べるよ。" userName="circuit10" createdAt="2025-02-15T20:00:24" color="#785bff">}}

{{<matomeQuote body="Grand Theft Auto 3（Liberty City Stories）が手元で遊べるなんて、ほんと驚きだね。" userName="psygn89" createdAt="2025-02-15T15:00:37" color="#785bff">}}

{{<matomeQuote body="大人になった今はわかるけど、子供の頃は手のひらサイズでBurnout 3が楽しめるのが衝撃だったよ。最初のジョイスティック付きハンドヘルドだったことも覚えてる。" userName="sky2224" createdAt="2025-02-15T04:48:39" color="">}}

{{<matomeQuote body="ちょっと傷ついたよ；-）自分はたくさんのPSPタイトルに関わったけど、Bloodlinesが一番好きだったんだ。楽しんでくれてる？" userName="djmips" createdAt="2025-02-15T06:45:42" color="">}}

{{<matomeQuote body="Bloodlinesに期待してたのに、AC2をプレイする手段がなかったから、開発チームがハンドヘルドで成し遂げたことは本当に素晴らしかった。もっと開発の体験について教えて！" userName="lordviet" createdAt="2025-02-15T11:48:58" color="#785bff">}}

{{<matomeQuote body="PSPも大好きだったし、あの頃のホームブリューシーンも楽しかった。PSPはマルチプレイヤーが少し足りなかったと思うな。DSのMario Kart DSが友達と遊ぶには最高の体験だった。" userName="TheAceOfHearts" createdAt="2025-02-15T10:40:35" color="#ff33a1">}}

{{<matomeQuote body="＞ I don’t think PSP games were capable of this.<br>”PSPのゲームはできたよ。Tekkenで友達と対戦できたし、でも多くのゲームがそうじゃなかったな。”" userName="chmod775" createdAt="2025-02-15T13:51:01" color="">}}

{{<matomeQuote body="ゲームシェアという機能があったよ。これで友達に小さいバージョンのゲームを送って、体験できた。Burnout Legendsでもできたし、NFSやスポーツゲームにもあったよ。" userName="thastings" createdAt="2025-02-15T12:17:56" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="自分が育った地域ではDS自体あまり流行ってなかったんだ。ダウンロードプレイがどうだったのか、10年後にわかったけど、PSPは容量が大きすぎて無理だったろうな。" userName="forgotacc240419" createdAt="2025-02-15T11:24:58" color="">}}

{{<matomeQuote body="ハイスクールだったからか、ゲーム好きだった友達はみんなDSを持ってたけど、持ち歩くって感じじゃなかったよ。部屋で見るくらいだった。" userName="Talanes" createdAt="2025-02-15T12:41:47" color="">}}

{{<matomeQuote body="Bloodlinesは悪くはなかったけど、特別良いとも思わなかった。PSPのゲームはPS2のダイエット版って感じで、PS2で遊べるならそっちでいいよね。でも、良作もあったのに！" userName="anal_reactor" createdAt="2025-02-15T07:57:46" color="">}}

{{<matomeQuote body="Bloodlinesはダイエット版じゃないよ。ゼロからゲームの完成まで9ヶ月でやり遂げたんだ。元のソースコードもなくて、全部自分たちで作った。できればもう少し時間があればよかったな。" userName="djmips" createdAt="2025-02-15T08:19:08" color="#45d325">}}

{{<matomeQuote body="ゲーム制作に関わった者として、どれだけの努力があったか分かる。自分の子供のようで、不完全でも愛してる。観客としては、別のゲームと比べるから、条件は気にしない。嫌いなジャンルで高評価をつけないこともあるし、どうにもできない。Bloodlinesのセーブデータを見たら”完了率：0”って書いてあって変だった。もしかして楽しんでたけど、セーブデータが壊れて怒ってやらなくなったのかも。記憶はあいまいだけど、楽しんでた気がする。<br>セーブファイルを見て、実際にプレイしたゲームの少なさに驚いた。たくさんのゲームがあると思ったけど、結局同じゲームばかり遊んでた。" userName="anal_reactor" createdAt="2025-02-15T10:05:38" color="">}}

{{<matomeQuote body="子供の頃は子供だったのに、いつの間にかそんなことが不思議。" userName="anal_reactor" createdAt="2025-02-15T10:29:18" color="">}}

{{<matomeQuote body="すごい！Bloodlinesは唯一完全クリアしたACで、ストーリーは変だったけど、プラットフォームにはぴったりなゲームプレイとグラフィックが印象的だった。当時の自分にとって楽しかったし、今でもかなり良い。" userName="thastings" createdAt="2025-02-15T10:57:35" color="#785bff">}}

{{<matomeQuote body="AC: Bloodlinesに関わったの？あのゲーム大好きだった！白いスター・ウォーズのPSPでダース・ベイダーのデカールを貼って遊んでた。ビーンバッグチェアに座りながら何時間も遊んだよ。子供の頃を楽しくしてくれてありがとう:)" userName="sky2224" createdAt="2025-02-15T22:11:55" color="#ff5733">}}

{{<matomeQuote body="詳しく教えて！PSPは最高のプラットフォームだと思ってる。あのゲームが60fpsで高解像度だとすごく美しい。今も遊び続けていて、スマホに移行したけどね。" userName="thastings" createdAt="2025-02-15T07:15:16" color="">}}

{{<matomeQuote body="PSPではインデックス三角形が三角形リストより遅かったのは驚いた。PSPのグラフィックハードウェアにバグがあったんじゃないかな？三角をクリッピングするのは大変で、CPUでやってた。PSPの仕事が好きで、もっとプロジェクトができたらよかったな。" userName="djmips" createdAt="2025-02-15T08:14:49" color="#ff5c5c">}}

{{<matomeQuote body="PSPが好きだったけど、そこまですごいとは思わなかったかも。PSPの発売時に東京にいたんだけど、電車で女の子がLuminesをしてるのを見て完全に感動した。昼間の用事が終わったら、すぐにヨドバシカメラに直行して購入。アメリカに帰るときも、みんなに見せると感動してた。手のひらでゲームをするという概念が変わった！" userName="reaperducer" createdAt="2025-02-15T15:27:34" color="">}}

{{<matomeQuote body="いくつかのゲームはすごく良かった。Star Wars BattlefrontやArmored Core Formula Front、Wipeoutなど長い時間遊んだ。でも確かに、街に人がいない感じがするゲームも多かったよね。そういうゲームは息抜きにならんって。" userName="Nursie" createdAt="2025-02-15T04:57:30" color="">}}

{{<matomeQuote body="Cry。Bloodlinesに関わったのが誇りで、でも誰も満足させられないんだよね。" userName="djmips" createdAt="2025-02-15T06:46:28" color="">}}

{{<matomeQuote body="ごめん！ACシリーズが大好きで、最初から遊んでる。プラットフォームの制限で群衆がいなかったのが原因だと分かってますけど、全体的には素晴らしいゲームだったと思うんです。ただ、ちょっとゴーストタウン的に感じた。<br>(*一時的に3/ブラックフラッグあたりで休んでたけど)" userName="Nursie" createdAt="2025-02-15T07:30:55" color="">}}

{{<matomeQuote body="ウェブブラウザが搭載された初めてのハンドヘルド機だった。iPod touchを持つまで数年待たされた。" userName="conradev" createdAt="2025-02-15T05:01:46" color="">}}

{{<matomeQuote body="2.0アップデートが単独で驚くべきものでした。きっとこの時が一番小さいデバイスでウェブをブラウズできた頃だと思う。PDAsの時代で、スマートフォンが出る前のことだった。<br>EDIT: そう、2005年7月、iPhoneの2年前。" userName="jolmg" createdAt="2025-02-15T05:23:26" color="#ff5c5c">}}

{{<matomeQuote body="一番小さいウェブブラウジングできるデバイスかも？Blackberryの方が小さかったし、早かったと思うけどね。たとえば2003年の7230とか。Pocket PC 2000も2005年より前にWifiとIE 3.1を搭載してたはず。" userName="zimpenfish" createdAt="2025-02-15T09:22:39" color="">}}

{{<matomeQuote body="高校生のときにAIMを使いたかったけど、PSPのブラウザではFlash非対応で使えなかった。だからPHPとMySQLでサーバー上でAIMを処理するサイト“AIMonPSP”を作った。AdSenseバナーで結構お金も稼げて、ソフトウェアデザインを学んだよ。" userName="scottbez1" createdAt="2025-02-15T07:24:59" color="#ff5733">}}

{{<matomeQuote body="どんなサーバーでホストしてたの？ローカルデスクトップ？トラフィックと帯域はどう管理してたの？" userName="ravetcofx" createdAt="2025-02-15T16:56:45" color="">}}

{{<matomeQuote body="ホームブリーニングシーンのおかげで、買ったPSPのUMDドライブが一度も動作したか分からない。PSP買ったけど、UMDゲームは一度も買ったことがない。エミュでゲームできるのが素晴らしい。" userName="ssl-3" createdAt="2025-02-15T11:24:45" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="PSPは持ってなかったけど、友達の見てたら壊れやすそうで複雑そうに見えた。任天堂のポータブルみたいに単純じゃない。フルコンソール移植用に作られてるのも問題で、ポータブルゲームには向いてないと思う。" userName="chongli" createdAt="2025-02-15T12:46:57" color="">}}

{{<matomeQuote body="フルコンソール移植はポータブルゲームには向かないと感じてた。Steam Deckを買った後も同じ思い。小さい画面でのFPSはしっくりこないけど、Haloは進行がブレイクにぴったりだった。今は簡単にプレイできるゲームをよくやってる。大きさも大事だね。" userName="jorvi" createdAt="2025-02-15T13:24:13" color="#785bff">}}

{{<matomeQuote body="2004年のWipeout Pureはほんと衝撃的だった。モバイルプラットフォームではあれに匹敵するものはなかった。まさにポータブルPlaystationだった。" userName="ekianjo" createdAt="2025-02-15T04:34:26" color="#ff5c5c">}}

{{<matomeQuote body="条件が合えば、Wipeout Pureはまあまあなウェブブラウザにもなった。" userName="cmxch" createdAt="2025-02-15T05:16:27" color="">}}

{{<matomeQuote body="費用が高すぎて耐えられなかった。PS2が同じかそれ以下の値段だったから、PSPを正当化できなかった。今はお金に余裕があるけど、あの時の『高すぎる』ってイメージが抜けない。" userName="freedomben" createdAt="2025-02-15T04:46:48" color="">}}

{{<matomeQuote body="PSPに関しては、ゲームとは全く関係ない特別な体験がある。2009年に中東に派遣されてて、電話カードで家に電話するしかなかった。でもPSPのSkypeが便利で、コストも安かった。軍基地近くのカフェでWi-Fi使って、家に電話した思い出がある。" userName="stn8188" createdAt="2025-02-15T13:23:36" color="">}}

{{<matomeQuote body="2.4GHzのみだと思うが、これはハードウェアの制限でソフトでは変更できないはず。" userName="userbinator" createdAt="2025-02-15T05:01:37" color="">}}

{{<matomeQuote body="Hamです。これはすごいですね、ありがとうございます。RPi 2040のリアルタイムコンポーネントを使って、周波数と帯域幅を変えられるバンドパス回路を追加すれば、CW（モールス信号）やFM、DMRなどのデジタルモードをソフトウェアだけで送信できると思います。FPGAは高価で専門知識が必要ですが、通常のGPIOはハードウェアの割り込みが問題ですね。受信についてはRTL-SDRが使えるでしょうか。" userName="mschuster91" createdAt="2025-02-15T16:34:49" color="#785bff">}}

{{<matomeQuote body="これは素晴らしいですね！保存しました。" userName="xg15" createdAt="2025-02-15T09:51:22" color="">}}

{{<matomeQuote body="2013/2014年の最新の初代PS4でも、2.4GHzのWiFiしかないのは驚きです。2003/2004年のPSPに802.11aの5GHzを搭載した機器はビジネス用のノートPC以外ではまず見つからないでしょう。" userName="walrus01" createdAt="2025-02-15T06:05:14" color="">}}

{{<matomeQuote body="5GHzは1999年から存在していましたよ。" userName="nicman23" createdAt="2025-02-15T08:44:37" color="">}}

{{<matomeQuote body="2000年代初頭にワードライビング用のPCMCIAカードがたくさんありましたが、802.11a対応のは一つだけでした。珍しかったので、ネットワークは異常にオープンだったようです。" userName="washadjeffmad" createdAt="2025-02-16T00:00:51" color="#45d325">}}

{{<matomeQuote body="でも、802.11nの5GHzが一般消費者に広まるまでは、普及してなかったと思います。PSPのターゲット市場は802.11bや.gの2.4GHzのルーターしか持ってなかったでしょう。" userName="walrus01" createdAt="2025-02-15T08:47:49" color="">}}

{{<matomeQuote body="はい、802.11nでも2.4GHzのみの機器が多かったですね。" userName="felixg3" createdAt="2025-02-15T09:58:31" color="">}}

{{<matomeQuote body="実際、WiFiがサポートした最初の帯域がこれでした。" userName="throwaway173738" createdAt="2025-02-15T15:56:23" color="">}}

{{<matomeQuote body="それは違います、802.11（レターなし）と802.11bは2.4GHzで、802.11a標準はその後に登場しました。" userName="walrus01" createdAt="2025-02-15T18:22:02" color="">}}

{{<matomeQuote body="Marvell Libertas 88W8010チップを、5GHzをサポートする同じファミリーのものに交換できるんじゃないかと思います。パッチは必要ですが、全書き換えまではいかないでしょう。" userName="noname120" createdAt="2025-02-16T14:06:54" color="#ff5733">}}

{{<matomeQuote body="今でもPSPのホームブリューシーンが生き続けているのは美しいことですね。PSPのホームブリューが、プログラミングやセキュリティに興味を持つきっかけになったんです。" userName="petergs" createdAt="2025-02-15T04:06:24" color="#ff5733">}}

{{<matomeQuote body="半導体は魔法のような存在で、その短い寿命は少し悲しいですね。でも、今でもこうやって有用で関連性を持たせ続けられるのは素晴らしいです。" userName="danbolt" createdAt="2025-02-15T04:45:00" color="">}}

{{<matomeQuote body="20年前のコンソールに時間を注ぎ込んで、金銭的報酬がないなんてすごい。それだけPSPは素晴らしかったんだな。WiFiネットワークのスクリーンショット見るだけで、懐かしくて涙が出るよ。" userName="palla89" createdAt="2025-02-15T13:12:05" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="俺もまだ持ってるし、PSPが接続できるようになったから、ホットスポットのセキュリティを切らなくても大丈夫だ！去年、古いバッテリーのボードにパナソニックの電池を溶接して、まともなバッテリーにしたんだ。" userName="joecool1029" createdAt="2025-02-15T05:19:23" color="">}}

{{<matomeQuote body="PSPに直接ホームブリューをダウンロードできるサービスが出てくるかもしれないね。SDカードでの移動なしにできるようになるといいな。PSPは本当に素晴らしい！" userName="hx8" createdAt="2025-02-15T05:44:30" color="#38d3d3">}}

{{<matomeQuote body="＞ https://brew.psp.place/hb/ からインストールできるチャンネルがあるよ：<br>「https://brew.psp.place/hb/HDStore.prs」" userName="noname120" createdAt="2025-02-15T23:53:57" color="">}}

{{<matomeQuote body="PSPは素晴らしいデバイスだった。今でも誰かがいじっているのが嬉しいよ。" userName="gregjw" createdAt="2025-02-15T08:29:23" color="">}}

{{<matomeQuote body="PSPが発売されてから20年か…子供の頃に夢中になったな。Monster Hunter Freedom Uniteやりまくった。久しぶりに触ったら、バッテリーが厚くなってた。古い電子機器のバッテリーをリサイクルしなくちゃな。" userName="UnlockedSecrets" createdAt="2025-02-15T05:37:57" color="#38d3d3">}}

{{<matomeQuote body="まったく同じだ。俺のも膨張してバッテリーパネルが外れそうになったことがある。交換用の安いバッテリーがあって助かった！今は全部充電してるよ。ガレージで火事にならないように。" userName="khalilravanna" createdAt="2025-02-15T06:25:24" color="">}}

{{<matomeQuote body="それは素晴らしいね。俺は最近WPA3を使い始めたけど、周りは俺だけらしい。" userName="INTPenis" createdAt="2025-02-15T09:28:17" color="">}}

{{<matomeQuote body="まさにWPA3が必要になりそうなタイミングだね。WiFi 7 MLOもWPA3を厳守しないといけない。こうやって古いデバイスに新たな命が吹き込まれるのはすごいことだ。" userName="mortos" createdAt="2025-02-16T01:35:12" color="#ff5c5c">}}

{{<matomeQuote body="こうやってコミュニティの努力で古いハードウェアが生き延びるのを見るのが好き！Sidekickにも同じことができたらいいな。メッセージ一つだけでも返信したいんだ。" userName="joshuaturner" createdAt="2025-02-15T10:59:54" color="">}}

{{<matomeQuote body="すごいね！俺はPSP 3000を持ってるけど、まだ元気だよ。ただ、オフラインで使うのが多いから、WiFi接続の必要はあまりない。でも、もし必要になったらこれを試してみたい！でも、オフラインで楽しめるのがこの手のデバイスの良さだと思ってる。" userName="agentkilo" createdAt="2025-02-15T11:49:07" color="#ff33a1">}}

{{<matomeQuote body="インストールの仕方を開発者に聞かないでほしいって。プラグインはまだ開発中らしいよ。" userName="gatane" createdAt="2025-02-16T17:10:35" color="">}}

{{<matomeQuote body="PSP 1000をまだ持ってるよ。コロナの時にIPSスクリーンMODやったら、表示が10倍良くなった。ゴーストもなくて色も鮮やか！" userName="illwrks" createdAt="2025-02-15T09:13:24" color="#ff5c5c">}}

{{<matomeQuote body="誰かNintendo DS向けにこれやったらいいのに。3DSにはWPA3も追加してほしいけど、そのWiFiモジュールのリプレイスを公にやってるの見たことないな。" userName="Avamander" createdAt="2025-02-15T09:43:27" color="">}}

{{<matomeQuote body="OSすらないから、ランチャーがゲームを動的にパッチする必要があるんだって。難しいとは思うけど、不可能ではないんじゃないかな。" userName="msk-lywenn" createdAt="2025-02-15T10:16:12" color="">}}

{{<matomeQuote body="システムファームウェアがWiFiと一体化したモジュールに埋め込まれているみたいなんだよね。WPA2を有効にするためにファームウェアをハックする可能性はあるけど、WPA3は無理そう。" userName="6SixTy" createdAt="2025-02-16T02:08:19" color="">}}

{{<matomeQuote body="DSゲームはそもそもWPAに対応してなかった。DSiエンハンスドと3DSのゲームだけがせいぜいWPA2対応。古いルーターでOpenWRT使ってWPA3をWEPブリッジにするのが一番かも。" userName="the4anoni" createdAt="2025-02-15T11:21:54" color="#45d325">}}

{{<matomeQuote body="wololoには重要な2つのことがある。１つ目はPSPのジャイルブレイクをやったこと。２つ目は、”https://github.com/WagicProject/wagic”というMagic the Gatheringの最高のオープンソース代替を作ったこと。" userName="mdtrooper" createdAt="2025-02-15T21:57:10" color="#ff5c5c">}}

{{<matomeQuote body="去年PSP買ったんだけど、今は2025年のメインゲームデバイスになってる。Sonyが何らかの形で戻してくれるといいな。" userName="hassleblad23" createdAt="2025-02-15T08:26:34" color="">}}

{{<matomeQuote body="Momentってやつが20年間解決できなかった問題を、Discordのボットの返事を見て3日で解決したのがすごい。" userName="forgotpwd16" createdAt="2025-02-15T10:21:14" color="#ff33a1">}}

{{<matomeQuote body="若い頃にDS Liteを持ってたけど、家のWi-Fiに繋げられなかったのがウザかった。たしかWEPしか無かったはず。" userName="0xTJ" createdAt="2025-02-15T13:13:31" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
