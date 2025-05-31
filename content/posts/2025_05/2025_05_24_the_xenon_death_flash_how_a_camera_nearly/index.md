+++
date = '2025-05-24T00:00:00'
months = '2025/05'
draft = false
title = 'ラズパイ2を襲ったキセノンフラッシュ！ カメラの光でまさかの危機'
tags = ["Raspberry Pi", "ハードウェア", "カメラ", "半導体", "光感度"]
featureimage = 'thumbnails/orange4.jpg'
+++

> ラズパイ2を襲ったキセノンフラッシュ！ カメラの光でまさかの危機

引用元：[https://news.ycombinator.com/item?id=44080533](https://news.ycombinator.com/item?id=44080533)




{{<matomeQuote body="WLCSP部品の感光性って、コミュニティが”発見”したわけじゃないよ。データシートに載ってるし、エンジニアなら設計で考慮すべき基本中の基本。シリコンチップは光に弱いのは昔から知られてるし、WLCSPはむき出しのチップみたいなもんだからね。全然”発見”じゃない。データシート読まずに使うとか、エンジニアの責任放棄だよ。記事は面白いけど、LLMが書いたか影響受けてそう。説教くさくて、要約ばっかだし。" userName="K0balt" createdAt="2025/05/24 13:52:54" color="#ff5733">}}




{{<matomeQuote body="前のコメントに反論。記事はWLCSPの感光性自体が新発見とは言ってないし（前例のリンクもある）、発見はRaspberry Pi 2が感光性を持つってことだよ。ほとんどのPCBは一般向けにむき出しで出回らないから、エンドユーザーにはめったに起きない問題なんだ。<br>＞ハックかNOOB〜<br>言い過ぎ！キセノンフラッシュみたいな特殊な光とむき出しPCBの、かなり珍しいエッジケースだよ。エンジニアを”ハック”とか”NOOB”呼ばわりしたい気持ちは分かるけど、これは稀なケース。データシートに感光性のこと載ってなかったかも。" userName="Aurornis" createdAt="2025/05/24 14:01:59" color="#38d3d3">}}




{{<matomeQuote body="いや、稀なエッジケースじゃないね。結構なWLCSP部品は、直射日光でも許容範囲超えるよ。キセノンフラッシュがヤバいのは、強さと速さのコンボ。この脆弱性、警報とかアクセス制御みたいに悪用されうる機器ではよくある話で、光保護カバーも普通の対策なんだ。<br>Raspberry Piがホビー向けってのは言い訳になるけど、重要なとこにWLCSP使ってるなら、ミッションクリティカルで使う時はケースに入れろって注意書きは入れるべきだったと思うな。使う人ってボードの経験少ないだろうし。<br>前のハック/ノーブ発言はRPI設計者向けじゃなかったんだ。ごめんごめん。" userName="K0balt" createdAt="2025/05/24 14:29:34" color="#ff5c5c">}}




{{<matomeQuote body="キセノンフラッシュって、結構広帯域でUVも出すんだよね。ガラスとかコーティングでほとんど吸収されるはずだけど、もしかしたらちょうどいいエネルギーレベルのが出て、たくさんのトランジスタをひっくり返すのかも。LEDはそれに比べて可視光領域でめっちゃ狭帯域だけど。" userName="hnuser123456" createdAt="2025/05/24 17:38:30" color="">}}




{{<matomeQuote body="EPROMの歴史って知ってる？1967年に floating gate MOSFET がROMに使えるって提案されて、1971年にIntelのFrohmanがEPROMを発明したんだよ。最初のEPROMはIntel 1702。<br>データ消去は電気じゃなくてUV光を使うんだ。UV光で酸化膜がイオン化して、floating gateの電荷が逃げる仕組み。チップ全体に当てるから全部消える。UVランプで数分、日光で数週間、蛍光灯だと数年。普通は機器から外して消去してたんだよ。<br>https://en.wikipedia.org/wiki/EPROM" userName="timschmidt" createdAt="2025/05/24 15:27:07" color="#785bff">}}




{{<matomeQuote body="へへ.. 最適な波長は255nmあたりだった記憶（Wikipediaによると253.7nmだって。まあ近い）。<br>＞日光で数週間<br>やったことあるよ。急いでない時は、EPROMをスポンジに挿して窓の下に置いてた。だいたい3週間かからなかったかな。真冬はやっても意味ないけどね。何ヶ月もかかるかも。<br>あの窓付きセラミックパッケージ、好きだったなあ。特に87C52とか。拡大鏡で見ると素敵な模様が見えるんだ。" userName="RetroTechie" createdAt="2025/05/25 12:57:51" color="">}}




{{<matomeQuote body="子供の頃、窓付きICの表面をフィールド顕微鏡で何時間も探検してたなあ。マイクロチップのアーキテクチャと、スターウォーズの”デススター”の表面描写になんか変な関連付けがあるんだ。チップの表面を飛んでるって想像してたんだと思う笑。時間が経つにつれて、もっと小さいノードサイズの電子顕微鏡写真を見るのはちょっと悲しかった。特徴がglobbyになってもっと美しくなくなったから。" userName="K0balt" createdAt="2025/05/29 11:08:28" color="">}}




{{<matomeQuote body="EPROMの窓にステッカー貼って日光から守ってたの思い出したよ。<br>すごく古い記憶だなあ…" userName="lttlrck" createdAt="2025/05/25 03:55:48" color="">}}




{{<matomeQuote body="＞ほとんどのPCBは一般向けにむき出しで出回らないから〜<br>ホビー/メーカー向けエレクトロニクス、組み込みシステムとか（Raspberry Piがこれに該当するね）、そうだね、絶対そうだよ。Arduinoのエコシステムとか全部これ。" userName="clysm" createdAt="2025/05/24 14:53:15" color="#45d325">}}




{{<matomeQuote body="Raspberry Piには、Arduinoみたいなユーザーもいるけど、単に画面/マウス/キーボードに繋ぐ安価なPCとして使うユーザーもたくさんいるんだ。後者の方がユーザー数は多いかもだけど、Piの販売数の多数派ではないかも。前者グループには、自分で使うために何台か買ったり、製品に組み込むために大量に買う人もいるからね。<br>だから、君が言った（PCBむき出しで使われるのが少ないって話）は一部のユーザーには当てはまるけど、全員ではないよ。" userName="swores" createdAt="2025/05/24 15:10:32" color="">}}




{{<matomeQuote body="パンデミック中はPiが品薄だったね。ホビーistのコメントによると、既存の在庫はPiをベースにした製品作ってる中小メーカーがかっさらって、一般ユーザーには回ってこなかったらしいよ。" userName="AStonesThrow" createdAt="2025/05/24 15:43:17" color="#ff5c5c">}}




{{<matomeQuote body="Raspberry Pi自身も当時、個人より企業を優先してたって言ってたよ。企業は売るものがないと成り立たないからね。" userName="KerrAvon" createdAt="2025/05/24 18:20:36" color="#785bff">}}




{{<matomeQuote body="それは分かるけど、Raspberry Piって元々は教育用で、初心者向け、分かりやすくて子供たちがLinuxとかPythonとか電子工作を学ぶのに理想的って立ち位置だったじゃん。Piを組み込んでる商業製品のリストでも作って、解放して再利用しようってキャンペーンやったらどうかな。Win-winじゃない？" userName="AStonesThrow" createdAt="2025/05/26 01:49:37" color="#ff5c5c">}}




{{<matomeQuote body="”キャンペーン”笑。俺も若い頃に役立つテクノロジーを”解放”しようとしたキャンペーン思い出したわ…。まあ、おすすめはしないね。" userName="K0balt" createdAt="2025/05/26 10:49:52" color="">}}




{{<matomeQuote body="記事の2段落目に”…彼は前例のないものにつまずいた。”って書いてなかったっけ？" userName="solidsnack9000" createdAt="2025/05/25 03:27:34" color="">}}




{{<matomeQuote body="Piのハードウェア設計に対する強烈な批判だね。エンジニアは”hacks”で”NOOBS”だって。なんでWLCSP部品をPiみたいな不安定な使い方されがちな基板に乗せるんだ？QualcommのクソSoC買ってる他社と違って製品がダメだと売れないはずなのに、毎世代欠陥ある。QAもひどい。RP2040でもやらかしたし、改訂版でも別のとこでやらかす。どうやったらあんなミスするんだ？エンジニアリングのトップはクビにするべきだね。" userName="KennyBlanken" createdAt="2025/05/24 20:05:32" color="#785bff">}}




{{<matomeQuote body="エンジニアリングの責任を理解してる人は少ないね。何百万、何億もの人が触れるものを作るなら、それが最低でも完全に無害であることを保証する責任があるんだ。ソフトもハードも同じ。少しでも不幸を撒き散らすのは、世界を悪くするクソ野郎。まるでC130輸送機から街にガムの包み紙をばら撒くようなもんだよ。" userName="K0balt" createdAt="2025/05/29 11:17:51" color="#785bff">}}




{{<matomeQuote body="じゃあ、RPi Zero 2 Wの代わりに、もっと速くて安くて良いものって何買えばいいの？" userName="BenjiWiebe" createdAt="2025/05/26 03:10:10" color="">}}




{{<matomeQuote body="長年のPiファンだけど、盛り上がるスレッドには必ずPi批判の長文が出るんだよね。オープンソースじゃないとか、特定の用途で動かないとか、小さな欠陥で設計者をバカにするパターン。けど、8000万台も売れてるんだから、何か正しいことやってるはずだよ。ちなみにRPI.L株持ってる。LSEでは珍しくIPO以来ちゃんとやってる株だよ。" userName="jdbs_alter_ego" createdAt="2025/05/26 19:17:30" color="#45d325">}}




{{<matomeQuote body="何千万台も大量生産されるものを作るエンジニアは、人が経験するネガティブな影響を最小限にする義務がある。”本物”のエンジニアはそれを分かってる。”ハック”とか”ヌーブ”は、意図せず人々を少しずつ不幸にしてるだけ。全体の人口で見るとその影響は大きくなる。だから、責任感のある人たちはハックやヌーブを見て心配したり敵対心を持ったりするんだ。" userName="K0balt" createdAt="2025/05/29 11:27:16" color="#ff5733">}}




{{<matomeQuote body="ラズパイのデータシートには光への懸念は現実的じゃないって書いてあったんだって。10年前から言われてたみたいだよ。データシートのリンクこれね https://web.archive.org/web/20150210111428/https://www.fairc..." userName="Maxious" createdAt="2025/05/24 14:01:23" color="#ff5733">}}




{{<matomeQuote body="データシートに書いてあったなら、エンジニアのせいにはできないね。楽しいホビーの謎解きだったし、誰も怪我しなかった。最高だね。" userName="K0balt" createdAt="2025/05/24 14:32:55" color="">}}




{{<matomeQuote body="＞ ”裸のチップをボードに載せるなんて素人かハッカーだろ”って話だけど、昔はプラスチックパッケージが光を通す問題もあったんだって。数十年前の話だけどね。[1] https://electronics.stackexchange.com/questions/217423/ics-c..." userName="Animats" createdAt="2025/05/24 18:10:01" color="">}}




{{<matomeQuote body="＞ WLCSP全部が光に弱いわけじゃないよ。ほとんどは裏にコーティングがあるし、設計でなんとかなる。デジタルとかプロセッサは大丈夫だけど、バンドギャップとかオシレータが影響受けやすい。チップのレイアウト変えれば直せるよ。" userName="Kirby64" createdAt="2025/05/24 22:16:40" color="#38d3d3">}}




{{<matomeQuote body="＞ デジタルロジックやプロセッサも絶対大丈夫とは限らないよ。外部に繋がってない入力ピンとか、弱いプルアップとかあると影響受けるかも。予期せぬリセットとかビット反転とかね。ADC入力もやばい。ICの内部信号でも影響ありえるよ。" userName="RetroTechie" createdAt="2025/05/25 13:16:03" color="#ff33a1">}}




{{<matomeQuote body="たまたまかもしれないけど、WLCSP使うと結構この問題にぶち当たるんだよね。でも普通はケースに入れるから大したことない。もしもの時は、ちょっと柔らかい接着剤（ポッティング）でなんとかなるよ。" userName="K0balt" createdAt="2025/05/25 03:23:01" color="">}}




{{<matomeQuote body="今日初めて知った！ BGAとごっちゃにしてたよ。データシートって長いから全部読むの大変なんだよね。重要なとこだけ拾い読みしちゃうから見落としがち。でもラズパイみたいに大量に作るやつなら、ちゃんと読むべきだったかもね。" userName="the__alchemist" createdAt="2025/05/24 14:37:43" color="#ff33a1">}}




{{<matomeQuote body="趣味で少量作るならデータシート全部読まなくてもいいかもね。でも何百万台も作る会社のエンジニアなら、データシートの重要なとこをしっかり読むのは最低限の仕事だよ。製品の信頼性はめちゃくちゃ大事だからね。" userName="K0balt" createdAt="2025/05/24 19:12:29" color="#ff5c5c">}}




{{<matomeQuote body="”Maker”って現象全体が、こういう”わかってて無視”みたいなケースだらけだよな。データシート非公開の有名な会社の部品使うとか、そもそも論外だろ。" userName="userbinator" createdAt="2025/05/24 21:23:01" color="">}}




{{<matomeQuote body="onsemiのオープンさは知らないけど、問題の電源IC (NCP6343)のデータシートはすぐ見つかったよ[1]。記事にもあるように、原因はBroadcom SoCじゃないし、”makers”を一緒にするのは違うと思うな。”makers”は専門家じゃない人もいるし。ラズパイみたいに会社が作るなら、もっとしっかりすべきだよ。[1] https://www.onsemi.com/download/data-sheet/pdf/ncp6343-d.pdf" userName="Liftyee" createdAt="2025/05/25 02:31:46" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Offtopicだけど、「pedantic cadence」って言葉初めて聞いたけど、超気に入ったよ、ありがとう．これで「なんかこれLLMの出力っぽいし，イラっとするんだけど，なんでかうまく説明できない」って気持ちを表現する言葉がついに見つかった．「pedantic cadence」だね．" userName="skrebbel" createdAt="2025/05/24 17:27:08" color="#ff33a1">}}




{{<matomeQuote body="どういたしまして！ キーボードからこの言葉が出てきた時、自分でもびっくりしたよ．説明するのが難しいんだけど， somehow 「pedantic cadence」に見事に集約されてるよね．それと，Pedantic Cadence（登録商標），皮肉たっぷりのEDAソフトウェアで，AIが最高の設計結果のために君のデザイン決定全部を批判するんだ！ 月たったの199ドル追加だよ！" userName="K0balt" createdAt="2025/05/24 20:07:23" color="">}}




{{<matomeQuote body="作者がHN読んでたらと思って書くけど、文体にかなりイライラしたよ．関係ない変な情報（例: アインシュタインの話）や、大げさな表現（例: Blu-Tack、信頼の話）が多くてね．aboutページでLLMアシストしてるって読んだんだけど、それに頼るのを減らすか、出力をもっと批判的に見たほうがいいと思うな．記事を読んでる間、興味とイライラを行ったり来たりで、これほどフラストレーションを感じたブログは初めてだよ．" userName="skrebbel" createdAt="2025/05/24 17:18:44" color="#ff33a1">}}




{{<matomeQuote body="対照的に言うと、アインシュタインのあの話は役に立ったね．物理の授業で勉強した時のことをすぐ思い出せたから．レポートとしてより、物語としてこの投稿を楽しんだよ．" userName="yuliyp" createdAt="2025/05/24 23:08:13" color="#ff5733">}}




{{<matomeQuote body="人々が「とりあえずLLMに最後通しで投げ込む」ってやることで、個々の声が失われつつあるのが、俺が楽しみにできないことの一つだな．全部同じように聞こえ始めて，単調になってきてる．" userName="Xelynega" createdAt="2025/05/25 06:36:08" color="#38d3d3">}}




{{<matomeQuote body="同意だね．「This highlights」とか「This contrasts with」って読むたびに吐きそうになるよ．最初の部分は良かったんだけど，結論になったら信じられないくらい単調だったね．" userName="bonzini" createdAt="2025/05/25 07:06:08" color="#ff5c5c">}}




{{<matomeQuote body="「assisted writing」がすぐ飽きられるっての同意だよ．でも君のコメントで，LLMとチャットする代わりに，AIが検索結果を好きなフォーマット（気楽な文章，tiktok，youtube，ポッドキャスト，事実だけとか）で表示するのに使えるってアイデアを思いついたよ．好みは人それぞれだもんね．機械かUIだって明確なら，LLM出力もそんなに気にならないかな．" userName="gedy" createdAt="2025/05/24 17:27:16" color="#785bff">}}




{{<matomeQuote body="LLMの出力が読みたいなら，LLMに自分で入力するよ．ちょっとだけ加工された質の悪いLLMのクソ記事にリンクされるためにHNに来てるんじゃない．" userName="KennyBlanken" createdAt="2025/05/24 20:13:29" color="#45d325">}}




{{<matomeQuote body="全然同意しないね．一言一句楽しく読んだよ．" userName="nssnsjsjsjs" createdAt="2025/05/25 05:53:44" color="">}}




{{<matomeQuote body="また別の定番ハードウェア不具合ね：iPhoneはHeliumアレルギーなんだってさ [1]<br>[1] https://www.ifixit.com/News/11986/iphones-are-allergic-to-he..." userName="Sharlin" createdAt="2025/05/24 13:42:26" color="">}}




{{<matomeQuote body="これは結構クールだったね、環境ガスの影響が当時あまり文書化されてなかったから。多くのエンジニアが気付きにくかった点も面白かった。ただ、製造元にとっては驚きじゃなかっただろうけどね、調整ガスは標準的なステップだし。" userName="K0balt" createdAt="2025/05/24 14:12:11" color="">}}




{{<matomeQuote body="Appleのユーザーガイドに書いてあったんだよ。" userName="stinkbeetle" createdAt="2025/05/24 22:26:22" color="">}}




{{<matomeQuote body="マジ？もし公になる前にそれが起きてたなら、すごい注意深さの例だね。" userName="K0balt" createdAt="2025/05/26 10:48:12" color="">}}




{{<matomeQuote body="あと、Helium感度についての良いフォローアップ動画もあるよ：https://www.youtube.com/watch?v=vvzWaVvB908" userName="ACCount36" createdAt="2025/05/24 15:47:35" color="">}}




{{<matomeQuote body="Piの偶数モデルには、ハードウェア変更で”直す”必要のある面白いクセがなんかあったよね。Pi 2はカメラフラッシュ再起動問題、Pi 4はUSB-C充電回路がダメでPDアダプターが使えないとか。[1]<br>両方ともまだ使ってるけど、特定の状況でしか問題ないからね。Pi 5は変な5V/5A要求があるけど、他にはPi 2/4みたいな規模のハードウェア問題はないかな。だから問題はPi 6がどうなるかだね？[1] https://hackaday.com/2019/07/16/exploring-the-raspberry-pi-4..." userName="geerlingguy" createdAt="2025/05/24 15:51:10" color="#38d3d3">}}




{{<matomeQuote body="Pi 3は電源電圧の問題があったね、結局5.1Vアダプターで解決したけど。全モデルがmicroSDの寿命問題抱えてるし、PoE HATsも問題あった。Piの全モデルに共通してるのは、オンボードの電源回路が超シンプルか、そもそも無いことだね。EU/UK規制がベアボードを消費者製品として売るのを禁じてて、それと関係あるかもって読んだか聞いたことあるけど、誰か似た話聞いたことある？" userName="numpad0" createdAt="2025/05/24 23:12:26" color="#45d325">}}




{{<matomeQuote body="初代PiがEthernet magneticsの問題で遅延したの誰か覚えてる？統合型magnetics付きのジャックが必要だったのに、間違った部品載せちゃったんだっけ。それからよくぞここまで来たもんだ！" userName="pdmccormick" createdAt="2025/05/25 15:22:41" color="">}}




{{<matomeQuote body="Pi 1もハードウェア問題あったよ、LAN9512の1.8Vレギュレーター問題とか、USBポートの電圧降下とか覚えてるな。" userName="duskwuff" createdAt="2025/05/25 04:56:18" color="">}}




{{<matomeQuote body="CM2なんて出てないけど、メインのmodel Bが出た後にCMシリーズは出るから、CMが出るまでにはいくつかのちょっとしたハードウェアの問題を修正する時間があるんだよ．" userName="geerlingguy" createdAt="2025/05/24 19:30:20" color="">}}




{{<matomeQuote body="ちょっと待ってよ： ”every”なんて完全にclickbaitで意味ないじゃん．君へのすごい尊敬がちょっと揺らいだよ．" userName="DamonHD" createdAt="2025/05/24 17:15:53" color="">}}




{{<matomeQuote body="HNのコメントがどうやったらclickbaitになるわけ？ただの楽しいオタクの冗談じゃん．明らかに”both”の方が言葉としては良いけど、そしたらGPはナンバー6のジョーク言えなくなっちゃうだろ？" userName="skrebbel" createdAt="2025/05/24 17:21:26" color="">}}




{{<matomeQuote body="それは多分、お金のために記事を書くときに慣らされる大げさなスタイルだよ．僕は意識的に避けるようにしてるんだけど、大抵サブの編集者が全ての見出しを書き直すんだ．Jeffはここではやるべきじゃないね：責任転嫁できる編集者もいないし、俺たちは頭の悪い読者じゃないんだから…" userName="DamonHD" createdAt="2025/05/24 17:26:28" color="">}}




{{<matomeQuote body="前にも言ったけど、”every”がなきゃそのジョークはそんなに面白くならないんだよ．これってすごいよくあるジョークのスタイルなんだ．前はさ、働く会社はどこも潰れるんだって人に言ってたんだ（当時3社で働いてて、全部潰れたんだ）、だから明らかに俺は破産させるMidas touchを持ってて、俺を雇うべきじゃないってね．同じジョークだよ．別に特別オリジナルじゃないけど、”an overhyped style”でもない．ただのジョークなんだ．" userName="skrebbel" createdAt="2025/05/24 17:40:05" color="">}}




{{<matomeQuote body="多分僕は「”Just 3 special weird tricks to …”」みたいなゴミに過敏になってるだけかもね．僕にとっては、最初の一言が怪しくて、他に「ジョークですよ」みたいなヒントも前触れもないと、もうゾッとしちゃうんだ．Jeff：君の意図を読み違えたかもしれないけど、そのスタイルはBritish technical pendantsには通用しないかもしれないってことは知っておいてね、彼らは明らかに君の読者層として貴重な存在だから… %-P 償いとして提供します：相関関係と因果関係を混同する人は全員死ぬ…" userName="DamonHD" createdAt="2025/05/24 17:53:22" color="">}}




{{<matomeQuote body="断言するような言い方や絶対的な表現を使うのは、エンジニアが対等な環境で質問したり話題を出したりする伝統的な方法なんだよ．" userName="gopher_space" createdAt="2025/05/24 18:01:13" color="">}}




{{<matomeQuote body="面白い豆知識だよ。半導体の効果って逆もできることが多いんだ。LEDが効率悪い太陽電池になるみたいにね。これって記事のラズパイの話と関係あるんだ。強い光でチップを刺激できるなら、逆にチップが動くときに光を出すこともあるんだよ。特定のカメラなら、チップの中の接合部が動く様子を理論上は動画に撮れるかも。でも、実際は効率が悪くて難しいんだ。実用的な信号を得るには、チップに無理させたりしないといけないだろうから、どれだけ「機能的な」テストになるかは分からないね。これをやってた会社、名前忘れたなぁ…" userName="itishappy" createdAt="2025/05/24 16:36:25" color="#ff5733">}}




{{<matomeQuote body="＞面白い豆知識：半導体効果は可逆的なことが多い！ LEDは効率の悪い太陽電池だし、その逆も然り<br>もう一つ面白い例：DCモーターを手で回すと電流が生まれるんだ！ 最初から発電機として考えれば納得いくかもだけど、先にDCモーターを「逆の方向」で使った人間としては、ちょっと直感に反してたね。" userName="diggan" createdAt="2025/05/24 16:39:35" color="">}}




{{<matomeQuote body="スピーカーは効率の悪いマイクだし、その逆も然りだね。" userName="ryoshu" createdAt="2025/05/24 16:52:24" color="">}}




{{<matomeQuote body="一度、間違えてマイクをオーディオ出力に繋いだことがあるよ。マイクから音楽が流れ出した時は、どれだけ混乱したか想像つくでしょ。" userName="oskarkk" createdAt="2025/05/26 00:24:26" color="">}}




{{<matomeQuote body="ぱっと思いつく可逆性の例はこんな感じ：<br>＊ 電磁気（モーター／発電機）<br>＊ 光電（LEDs／PVs）<br>＊ 熱電（TEGs／Peltierクーラー）<br>＊ 圧電（クリスタル発振子）<br>他に誰かある？" userName="itishappy" createdAt="2025/05/24 17:10:39" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="圧電効果についてだけど、セラミックコンデンサも電圧かけるとちょっと歪んだりするんだ。マイクロフォニックスっていうんだけどね。現実の問題になるかは微妙かな。<br>そういやコイル鳴きも逆ができるかも。振動させたら電流ノイズ出たりして。<br>あ、あと回ってるHDDには大声で叫ばないでね。" userName="RetroTechie" createdAt="2025/05/25 13:39:07" color="#785bff">}}




{{<matomeQuote body="SPARC CPUのキャッシュが、チップパッケージ内の不純物の放射性崩壊で壊れた話と少し似てるね。あれには最初の仕事で何時間も費やしたよ。" userName="nickdothutton" createdAt="2025/05/24 13:37:10" color="">}}




{{<matomeQuote body="IBMメモリチップ − いい話があるんだけど、このコメントにコピーしたよ： https://news.ycombinator.com/item?id=25279964" userName="robocat" createdAt="2025/05/24 20:19:19" color="">}}




{{<matomeQuote body="補聴器のカッコいい半透明カバーでも同じ問題あったよ．太陽光の角度とかフラッシュでノイズが出たんだ．誰も信じてくれなかったけどね．" userName="rini17" createdAt="2025/05/24 13:30:53" color="">}}




{{<matomeQuote body="”tiger cruise”でDV Cam使ってたら変な問題起きたの思い出したよ．空母乗ってHonoluluからSan Diegoに向かう途中．<br>デッキにいたら，映像が3秒おきに乱れるんだ．変だったなー！ すぐにradar arrayの回転と合うって気づいて納得した．<br>なんか放射線っぽいのにやられてるって分かって，電話のバッテリー（重金属いっぱい）をradar arrayと磁気ヘッドの間に来るように角度つけたら，映像の乱れが止まったんだ．バッチリうまくいったよ．" userName="RajT88" createdAt="2025/05/24 20:00:49" color="#45d325">}}




{{<matomeQuote body="当時のHN threadはここだよ https://news.ycombinator.com/item?id=9015663" userName="pvg" createdAt="2025/05/24 12:10:44" color="">}}




{{<matomeQuote body="光の”intensity”が重要で，Xenonフラッシュとかレーザーは強くてダメだったんだね．”silicon”の”bandgap energy”的に赤外線とか可視光でも超強ければ問題起きるらしいよ．<br>記事は”intensity”と”wavelength”を混同してると思うな．超強いレーザーじゃないと起きない”multiphoton absorption”の話みたいだよ．" userName="xeonmc" createdAt="2025/05/24 13:21:39" color="#785bff">}}




{{<matomeQuote body="そうかな？ 高い”intensity”の光でも，赤外線や可視光の波長じゃないとチップに影響ないって言ってるみたいだよ．つまり，それ以外の波長は”intensity”が高くてもダメってことじゃないの？" userName="goda90" createdAt="2025/05/24 13:26:12" color="">}}




{{<matomeQuote body="フリップチップ部品の”post-silicon debug”は，レーザーをチップの特定箇所に当てて，跳ね返りを見てトランジスタのオンオフ判定することがあるんだ．レーザーの出力を上げると，特定のトランジスタを開いたり閉じたりできるんだよ．半導体は全体的に光にけっこう敏感だから，普通は動作中は暗くなるようにパッケージされてるんだ．" userName="pclmulqdq" createdAt="2025/05/25 00:46:04" color="#ff5733">}}




{{<matomeQuote body="これも僕にもあったよ．たしか1980年代後半かな．<br>”quartz-windowed ceramic package”に入ったUV消去可能なマイクロコントローラーをプログラミングしてたんだ．マルチプロセッサの分散システムが全部動いてから，フィルムのスポーツカメラでフラッシュ焚いて写真撮ったんだ．<br>そしたら全部クラッシュ！ これ絶対フラッシュのせいだって確信するまで，何回か同じこと再現させなきゃいけなかったよ．" userName="johnea" createdAt="2025/05/25 02:15:07" color="#ff33a1">}}




{{<matomeQuote body="リンクはもう見つからないけど，AT&T（たしか）が新しいデジタル交換技術を導入したって自慢してて，そこにフラッシュ焚いたらシステムがクラッシュしたっていう話聞いたことあるな．システムに使ってたEEPROMが消去されちゃうくらいフラッシュが強かったらしいよ．" userName="tallanvor" createdAt="2025/05/24 14:10:08" color="">}}




{{<matomeQuote body="その話，作り話だろうね．UVでEEPROMは消去できないから．EEPROMは電気的に消去するんだよ．<br>もしEPROMのことなら，その話はほぼ作り話だろうね．EPROM売った会社が，窓に貼るためのシールも売ってるはずだから．" userName="sidewndr46" createdAt="2025/05/24 16:03:09" color="#45d325">}}




{{<matomeQuote body="EPROMを消去するのに、通常20分くらいのかなり強いUVが必要だから、そのままではそう簡単には無理そうだよ" userName="DamonHD" createdAt="2025/05/24 15:21:05" color="">}}




{{<matomeQuote body="確実に全部消去するのに必要な露光量と、たった1ビットを反転させるのに必要な量はたぶん違うね．間違ったビットを反転させたら簡単にクラッシュするかも．全てのビットを確実にクリアするには20分かかるだろうけど、1ビットか数ビットならもっと簡単に反転する可能性もあると思うな" userName="lambda" createdAt="2025/05/24 15:31:08" color="">}}




{{<matomeQuote body="ここで2つの違う効果がごっちゃになってるね．EPROMにはチップ全体が見える透明な窓があったんだ．明るい光のフラッシュは、メモリを永続的に変更せずに、普通の読み込みを妨害することができたんだよ．窓を覆ってるシール（だいたいファームウェアの説明とかバージョンが書いてある）は色んな目的があったんだ" userName="anonymousiam" createdAt="2025/05/24 15:35:41" color="#ff5733">}}




{{<matomeQuote body="一時的に普通の読み込みが妨害されるってのはありえそうだね．人間を傷つけないくらいの（可視光でもUVでも）光のフラッシュで消去されるってのは、あんまり考えられないな！" userName="DamonHD" createdAt="2025/05/24 15:51:53" color="#ff33a1">}}




{{<matomeQuote body="昔、データストリームのレイテンシを調整するためにキセノンフラッシュを使ったことあるよ．いくつかのSDRデバイスを民生用ハードウェアに繋いで、キセノンフラッシュを制御できる高解像度・高精度（50ns）のタイムデバイスを持ってたんだ．キセノンフラッシュをトリガーして、基本的にデータをフラッシュで注入してた感じかな" userName="prpl" createdAt="2025/05/25 01:06:47" color="">}}




{{<matomeQuote body="うわ、この記事AIが適当に作った感じするね．まず、”jdb”ってフォーラムユーザー（Raspberry Piのエンジニアってタグ付いてるから、つまり従業員）は、Samsungのカメラで基板をテストしたなんて一度も主張してないんだ．実際にSamsungに言及してる投稿はここ→ https://forums.raspberrypi.com/viewtopic.php?f=28&t=99042#p6...<br>で、これは壊れた引用がいくつか混じってる．そして、その次の投稿でまさにjdbがCanonのコンパクトカメラで再現してるんだよ" userName="jdbs_alter_ego" createdAt="2025/05/24 19:20:14" color="#ff33a1">}}




{{<matomeQuote body="このサイトの他の記事も、著者はLLMっぽい書き方してるみたいだね（太字のリスト見出しが個人的には一番分かりやすいサインかな）：https://magnus919.com/2025/05/what-i-learned-about-agi-at-a-..." userName="mmastrac" createdAt="2025/05/24 20:58:08" color="#785bff">}}




{{<matomeQuote body="結論がなんか無理やりっぽいね．なんか、トレンドが続けば10年後には1024人の赤ちゃんが生まれるぞ、みたいな" userName="tedunangst" createdAt="2025/05/24 17:40:02" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
