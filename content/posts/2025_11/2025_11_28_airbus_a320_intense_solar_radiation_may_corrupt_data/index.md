+++
date = '2025-11-28T00:00:00'
months = '2025/11'
draft = false
title = 'エアバスA320に異常発生か？強烈な太陽放射が飛行データを破損する可能性！'
tags = ["航空機", "データ破損", "太陽放射", "フライトコンピューター", "安全性"]
featureimage = 'thumbnails/green4.jpg'
+++

> エアバスA320に異常発生か？強烈な太陽放射が飛行データを破損する可能性！

引用元：[https://news.ycombinator.com/item?id=46083004](https://news.ycombinator.com/item?id=46083004)




{{<matomeQuote body="どんなマイクロコントローラで見つかったのか、マジで知りたいね。もしこれが安全プロセッサで、ECCじゃ足りないほどのビット反転が起きてるなら、検出できないレベルでデータが壊れてるってことだよね。飛行環境は他と大きく変わらないから、他のシステムでも関わる可能性はあるし、NVMかSRAMのどっちに影響が出たのかも気になるよ。" userName="addaon" createdAt="2025/11/29 02:00:30" color="#ff5c5c">}}




{{<matomeQuote body="他のスレッドの俺のコメントも見てくれよ。これ、EDACがないんだ。俺も驚いたけど、MCUじゃなくて複数のチップで構成されてるらしい。このフライトコンピュータは90年代に設計されて、2002年にEDAC付きの新ハードウェア版に更新されたんだって。だから、ビット反転はあり得る話だね。もっと詳しいデータはこのレポートで見れるよ。https://www.atsb.gov.au/sites/default/files/media/3532398/ao..." userName="RealityVoid" createdAt="2025/11/29 06:10:57" color="#45d325">}}




{{<matomeQuote body="ハードウェアの問題に見えるのにソフトウェアで直そうとしてるのが心配だな。" userName="jayanmn" createdAt="2025/11/29 03:12:04" color="">}}




{{<matomeQuote body="リコール対象機には最新のA320neoも含まれてて、ほとんど新品だよね。なんで2002年以前のフライトコンピュータを使ってるんだろう？それに、全く違う機体A330に関する2008年の古いレポートが、今日のA320の問題とどう関係するわけ？" userName="Reason077" createdAt="2025/11/29 07:55:48" color="#38d3d3">}}




{{<matomeQuote body="ハードウェアの故障をうまく処理するのはソフトウェアの問題だよ。エールフランス447便の墜落事故は、劣悪なソフトウェアとハードウェアの両方が原因だったんだ。" userName="themerone" createdAt="2025/11/29 03:45:34" color="#ff33a1">}}




{{<matomeQuote body="＞ EDACがないって話だけど、昔は複数の独立した（しかも別のチームが設計・製造した）コンピュータを動かして、高レベルでクォーラムアルゴリズムを使ってたのが設計思想じゃなかったっけ？そのモデルだとECCは冗長と見なされてたのかな？" userName="lxgr" createdAt="2025/11/29 09:55:58" color="#ff5733">}}




{{<matomeQuote body="適切なSEU対策はECCだけじゃないよ。衛星はA320よりもっと高く飛んでるけど、Triple Modular Redundancyとか使ってるんだ。<br>https://en.wikipedia.org/wiki/Triple_modular_redundancy<br>https://en.wikipedia.org/wiki/Single-event_upset<br>有人宇宙飛行ではNASAはNを3から5に増やすんだ。他にもCPUキャッシュを全部無効にしたり、ECC RAMをバックグラウンドで常にリフレッシュしたり。デジタル回路の”latch up”を防ぐハードウェア対策もたくさんあるよ。" userName="anonymousiam" createdAt="2025/11/29 05:52:45" color="#ff5733">}}




{{<matomeQuote body="A320については知らないけど、ユーロファイターではまさにこのモデルだったよ。俺の大学の教授の一人がそのチームにいて、他のチームとは一切コミュニケーションなしでハードウェアとソフトウェアを開発してたんだ。" userName="JorgeGT" createdAt="2025/11/29 10:36:09" color="#ff5733">}}




{{<matomeQuote body="こういう冗長システムで、投票回路が単一障害点になるのをどう避けるんだろうね？例えば、各サブシステムが独自の作動装置を持ってて、3つあれば他の2つを空力的に無効にできるような設計ならわかるけど、実際はそんな仕組みじゃないと思うんだ。" userName="rkagerer" createdAt="2025/11/29 07:09:23" color="#45d325">}}




{{<matomeQuote body="他のチームと全然話せないままHWとSW開発させられたらマジで頭おかしくなるわ。セキュリティはわかるけど、これじゃ設計も安全性もダメになるんじゃね？" userName="RealityVoid" createdAt="2025/11/29 11:36:23" color="#45d325">}}




{{<matomeQuote body="EDACって何？”Error Detection and Correction”かな？ECCとの違いも知りたいんだけど。" userName="Liftyee" createdAt="2025/11/29 11:15:22" color="">}}




{{<matomeQuote body="Raspberry Pi 2の初期モデルは、カメラのキセノンフラッシュみたいな強い光を当てるとクラッシュしたんだよ。<br>https://forums.raspberrypi.com/viewtopic.php?t=99167<br>https://forums.raspberrypi.com/viewtopic.php?f=28&t=99042<br>https://www.raspberrypi.com/news/xenon-death-flash-a-free-ph...<br>https://www.youtube.com/watch?v=wyptwlzRqaI" userName="TehCorwiz" createdAt="2025/11/29 03:17:28" color="#ff5c5c">}}




{{<matomeQuote body="なんで2002年以前のフライトコンピュータ使うかって？新しいの認証するのにめちゃくちゃ金かかるからだよ。それに、パイロットは機種ごとに限定されるから、混成フリートは非効率だし、機種変更の訓練も一人あたり5〜10万ドルとすごく高いんだ。" userName="t0mas88" createdAt="2025/11/29 09:02:51" color="#ff33a1">}}




{{<matomeQuote body="3つの全く違うシステムで同じデータを作るってアイデアは、一つのシステムのエラーが他には伝わらないようにするためだよ。それぞれが独自のアプローチとリソースで問題を解決することで、脆弱性や論理エラーが広がるのを防ぐんだ。" userName="K0balt" createdAt="2025/11/29 12:10:53" color="#45d325">}}




{{<matomeQuote body="アポロ月面着陸のとき、コンピューターがしょっちゅう再起動してたけど、すぐに使える状態に戻って役に立ってたのを思い出すな。" userName="vel0city" createdAt="2025/11/29 04:07:39" color="#ff5c5c">}}




{{<matomeQuote body="それ（Raspberry Piの件）は全然関係ないし、単にラズパイの開発者の設計ミスだよ。" userName="russdill" createdAt="2025/11/29 05:46:22" color="">}}




{{<matomeQuote body="EDACはまさに君が推測した通り、”Error detection and correction”って意味だよ。EDACは回路や実装、ECCはアルゴリズムって説や、EDACが一般的な技術でECCがそのバリアントの一つって説もあるけど、ほぼ同じものだね。普段はECCって言ってるけど、レポートに合わせてEDACって使ったんだ。" userName="RealityVoid" createdAt="2025/11/29 11:27:50" color="#785bff">}}




{{<matomeQuote body="で、本当にうまくいったの？解決策が明白だと、3人のエンジニアに頼んでもみんな同じ答え出しちゃうじゃん。どうやってそのシナリオを避けたんだろう、って気になるね。" userName="Filligree" createdAt="2025/11/29 14:32:30" color="">}}




{{<matomeQuote body="あと、パイロットの訓練も悪かったって記憶してるんだけど、どうだったかな。" userName="f1shy" createdAt="2025/11/29 07:00:06" color="">}}




{{<matomeQuote body="これって、本当に全然関係ないのかな？放射線がコンピューター計算に影響するっていう似た現象が起きてるし、高高度の航空機電子機器よりも、もっと身近で分かりやすい例じゃない？別に反論してるわけじゃないけど、このケースは問題を理解するのに役立つと思うんだ。<br>もし根本的に違うケースだったら、ぜひ教えてほしいな。" userName="hughw" createdAt="2025/11/29 15:38:50" color="#38d3d3">}}




{{<matomeQuote body="君、「型式証明」（航空機の型式の耐空性を証明するもの）と「型式限定」（パイロットがその型式を操縦する資格を証明するもの）を混同してるんじゃない？<br>内部のハードウェアが大幅に変われば再認証は必要になるかもしれないけど、通常はパイロットが再資格を取ったり、新しい型式限定が必要になったりするわけじゃないよ。" userName="Reason077" createdAt="2025/11/29 09:16:24" color="#ff5c5c">}}




{{<matomeQuote body="それは再起動じゃなかったよ。<br>メモリ不足になって、優先度の低いタスクから停止し始めたんだ。<br>予期せぬ使用状況でも、プログラムが頑丈に作られてるって良い例だったね。" userName="CrossVR" createdAt="2025/11/29 06:01:24" color="#ff5c5c">}}




{{<matomeQuote body="パイロットが正しい失速回復操作をできないせいで墜落する事故って、驚くほどよくあるんだ。<br>伝統的な操縦方式の航空機でも似た事故は起きてるし、ハードウェア変更が大きく状況を変えるとは思えないな。<br>公式報告書もハードウェアやソフトウェアを重大な要因とはしてないよ。<br>事故を避ける瞬間は、ボーニンが高度35,000フィートで急上昇した最初だったろうね。<br>これはパイロットの大失敗だよ。<br>もしパイロットが操縦入力で本当に意見が食い違ったら、ハードウェアやソフトウェアができることはあまりないんだから。" userName="foldr" createdAt="2025/11/29 10:01:58" color="#ff33a1">}}




{{<matomeQuote body="思うに、彼らはソフトウェアとハードウェアの欠陥を回避するように指示されてなかったからじゃないかな。" userName="amelius" createdAt="2025/11/29 10:13:17" color="">}}




{{<matomeQuote body="いや、僕が言いたかったのは、新しい型式証明で新機種を設計するんじゃなくて、A320neo世代を同じ型式証明で開発し続けるってことだよ。<br>親コメントはAirbusが古いコンピューターを使い続ける理由を疑問に思ってたから、多くのものを同じにして、少しずつバリアントを追加する理由を説明しようとしたんだ。<br>バリアントを追加すると、同じ型式限定か、差異訓練（EASA用語だよ）だけで操縦できるから、はるかにコストが抑えられるんだよ。" userName="t0mas88" createdAt="2025/11/29 09:31:14" color="#ff5c5c">}}




{{<matomeQuote body="いや、だってそれは完全に違う種類の放射線だからね。" userName="russdill" createdAt="2025/11/29 16:45:39" color="">}}




{{<matomeQuote body="確かに。<br>でもね、旅客機のフライトデッキの『コンセプト』には、どれも危険な『癖』があると言えるよ。<br>Airbusの『デュアルインプット』もそんな癖の一つだね。<br>例えば、AFの777事故では、操縦桿の間にハードウェア連結があったのに、二人のパイロットが物理的に争った事例もあったんだから。" userName="julik" createdAt="2025/11/29 12:47:48" color="#ff33a1">}}




{{<matomeQuote body="一つ覚えておいてほしいのは、宇宙空間、特にLEOを超えて動作するデバイスを明示的に作らない限り、放射線対策でECCメモリが必要だっていう要件はなかったかもしれないってことだよ。<br>昔のECCメモリは、ハードウェアの品質が低かったり、電磁干渉や技術者のミスなんかと強く関連してたんだ。<br>航空機部品は、より徹底した自己テストや厳重な設計、高品質な部品選びなんかで、そういう問題の大部分を排除してたんだよ。<br>宇宙放射線が大きな問題を引き起こす可能性が浮上したのは、デジタル式フライバイワイヤが民間航空で普及してからで、それがEDACの後付けにつながったけど、放射線によるSEUのリスクはシステムの設計上十分に低いと見なされてたんだ。" userName="p_l" createdAt="2025/11/30 23:14:08" color="#38d3d3">}}




{{<matomeQuote body="「なんで2002年以前のフライトコンピュータを使ってるんだ？」って？いや、なんで使ってないって決めつけるの？航空機は詳しくないけど、もっと古い部品を使ってるハードウェアなんて山ほどあるよ。Microchipは8051がリリースされて45年経った今でも8051クローンを作ってるんだぜ。" userName="LiamPowell" createdAt="2025/11/29 08:25:00" color="#ff5733">}}




{{<matomeQuote body="このコメントの大半は無価値かそれ以下だね。LLMを2つ引用して、「自己責任」とか「確信はない」とか言ってるし。信頼できないデータについて、「私の専門分野」みたいな一般論で語ってるけど、あなたはJS S/Wエンジニアなの？ARMのチップ設計スペシャリスト？セキュリティ研究者？コメントの価値は最初の1文と最後の2文だけだよ。" userName="Normal_gaussian" createdAt="2025/11/29 11:57:07" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="システムの設計はエラー処理の仕方がすごく面白いね。90年代のTelcoではペアのシステムが意見が合わないとどちらか悪い方を無効にしたけど、現代のクラウドではエラーは許容される。宇宙船では3つの独立した実装が投票するらしい。飛行機はセンサーとシステムの行列で、故障が独立して無効化されるんだ。ADIRUは3つのセンサーの中央値で故障を検知するけど、1秒以上続くエラーしか検出できない。フライトコンピュータは生データを使うんだ。センサーは交換できないからね！「memorisation period」って表現より「last value retention period」とか「sensor spurious fault reading delay」が適切じゃないかな？<br>Section 2.1 A330/A340 flight control system design<br>”AOA computation logic”https://www.atsb.gov.au/sites/default/files/media/3532398/ao..." userName="jpollock" createdAt="2025/11/29 16:46:34" color="#ff5733">}}




{{<matomeQuote body="例えば、「Preliminary A330/A340 FCPC algorithm」には、「AOA 2とAOA 3が一時的に間違っていて、AOA 1が正しかった特定の状況をアルゴリズムがうまく処理できず、ADR 1が拒否された」とある。つまり、3つのセンサーのうち2つが壊れてる状況に対応しなきゃいけないってことだ。" userName="jpollock" createdAt="2025/11/29 17:12:17" color="#45d325">}}




{{<matomeQuote body="2つのセンサーが間違っていて、しかもお互いに一致するなんて、驚きを隠せないよ。" userName="Loudergood" createdAt="2025/11/29 20:07:36" color="">}}




{{<matomeQuote body="アナログの物理的なものを測定するアナログセンサーだから、完全に一致することはないんだ。だから、妥当性の許容範囲がある。故障が起きても、その範囲内にセンサーが収まっていれば有効と見なされるんだよ。" userName="Nextgrid" createdAt="2025/11/29 20:47:14" color="#ff5733">}}




{{<matomeQuote body="それって、浮動小数点数で、ある範囲の値が同じと見なされるのと似たようなもんだよ。" userName="UltraSane" createdAt="2025/11/29 21:05:29" color="">}}




{{<matomeQuote body="宇宙のコンピューターは通常3台体制で、さらにホットスペアが1台あるんだ。" userName="rubatuga" createdAt="2025/11/29 17:25:52" color="">}}




{{<matomeQuote body="スペースシャトルには5台あったよ。そのうち4台は冗長システムで動作し、5台目は重要でないタスクを実行したんだ[1]。5台目は別のプログラミング言語で別の請負業者がプログラムしたんだぜ。#1～4はIBMがHAL/SでプログラムしたPrimary Avionics Software System (PASS) を実行し、#5はRockwell Internationalの別チームがアセンブリでプログラムしたんだ[2]。<br>[1] https://people.cs.rutgers.edu/~uli/cs673/papers/RedundancyMa...<br>[2] https://ntrs.nasa.gov/api/citations/20110014946/downloads/20..." userName="sllabres" createdAt="2025/11/29 21:41:57" color="#45d325">}}




{{<matomeQuote body="The Aviation Heraldにもっと技術的な詳細があるよ: https://avherald.com/h?article=52f1ffc3&opt=0" userName="rene_d" createdAt="2025/11/29 08:26:37" color="#45d325">}}




{{<matomeQuote body="リンクありがとう。特に「この特定された脆弱性は、最悪の場合、航空機の構造能力を超える可能性のある意図しないエレベーターの動きを引き起こす可能性がある」って行が気になるね。" userName="loxodrome" createdAt="2025/11/29 09:12:21" color="#ff5c5c">}}




{{<matomeQuote body="まぁ、全体的に見れば（地上も含めて）、タイミングの悪い単純なビットフリップが引き起こす安全上の障害って、不便なものから大惨事まで様々だよね。だから、Airbusが設計を改善して、さらに頑強にする機会を見つけたことは、本当に嬉しいことだ。" userName="isodev" createdAt="2025/11/29 14:39:50" color="">}}




{{<matomeQuote body="コンピューティング業界に長くいるなら、航空宇宙産業以外でも、いろんな状況でこういう事例をいくつか目にするだろうね。ほとんどはECCみたいなものが助けてくれるし、十分な代替チェックロジックがあれば、一時的な誤った読み取りをソフトウェアが認識して無視できることもある。リアルタイムや安全性が重要なシステムなら、システム間で投票するなんてこともあり得るね。90年代には（CPUキャッシュラインの）ビットフリップで引っかかって、原因を突き止めるのに何ヶ月も苦労したよ。わかる人もいるでしょ？" userName="nickdothutton" createdAt="2025/11/29 09:31:12" color="#ff5c5c">}}




{{<matomeQuote body="うちのログでも一度これに気づいたんだ！大量のトラフィックを処理してて、その一部として実質的にenumをログしてたんだけど、一度このフィールドを集計したら、”ありえない”値がいくつかログされてることに気づいたんだよ。同僚の一人が、実際にログされた文字列が有効な文字列からちょうど1ビットずれてることに気づいて、おそらくサービスかロギングサービスで宇宙線が作用してるんだろうって結論になったね。" userName="LadyCailin" createdAt="2025/11/29 09:45:12" color="#785bff">}}




{{<matomeQuote body="俺のNASでもbtrfsのパスが1つ壊れた似たような話があるよ。btrfs IRCに飛び込んだら、開発者の一人がその不整合が正しい値から1ビットフリップしてることに気づいてくれたんだ。信じられないことに、彼らはそれを修正する正しいコマンドを教えてくれたんだ！評価すべきは、btrfsが安全な経路をとって、修正されるまで影響を受けたディレクトリを触ることを拒否したことと、これを修正するのに十分なツールを持っていたことだね。宇宙線じゃなくて、メモリの故障の可能性が高いと思う。NASは今ECCメモリを使ってるよ。" userName="tuetuopay" createdAt="2025/11/29 14:59:17" color="#ff33a1">}}




{{<matomeQuote body="俺も似たようなことを見たよ。俺も最初は単純に”宇宙線”のせいにしてたんだ。でも、誰かが実際のバグを見つけるまで、それがどれだけありえないことか気づかなかったね。実際のバグは、アプリケーションの別の場所の安全じゃないコードがメモリを破壊してたんだ。アプリケーションは正常に動いてたんだけど、ログメッセージの文字列が少し壊れてたんだ。ただランダムな文字があちこちで間違ったものになってたんだよ。本当に宇宙線の干渉なら、なぜこのサービスだけなのか、なぜアプリケーションの複数のバージョンで問題が何度も発生したのか、って疑問に思うべきだったんだ。宇宙線はまだ理解できない問題の素晴らしい言い訳だ。でも実際にはそれは極めてまれで、99%はアプリケーションコードによるメモリ破損バグだよ。" userName="Philip-J-Fry" createdAt="2025/11/29 20:16:41" color="#ff5733">}}




{{<matomeQuote body="もしかして、Julian？冗談だよ、でも、昔、完璧な開発者と一緒に働いてたんだ。俺のプロジェクトがクラッシュした時は、自分の能力不足だと思ってそこから出発するんだけど、その同僚は、再現可能なエラーでも、ビットを反転させて障害を引き起こしたのは迷走ニュートリノのせいだって思い込むんだ。彼は9300万マイル離れた場所から原因を遡って、クライアント、Linuxカーネル、デバイスドライバー、そして最終的に”3文字機関”が排除された後で、ようやくキーボードと椅子の間に問題があるかもしれないって考えるんだよ。公平に見て、彼は天才だったし、A320の状況では彼の言う通りだっただろうね！" userName="Theodores" createdAt="2025/11/29 09:55:54" color="#38d3d3">}}




{{<matomeQuote body="BoFescっぽいね<br>”金曜日だから、昼食前にもう早く仕事に来てる。電話が鳴る。クソ！言い訳シートのページをめくると、”ソーラーフレア”が目に飛び込んできた。それについて詳しく調べるか…”" userName="qaq" createdAt="2025/11/29 02:04:14" color="">}}




{{<matomeQuote body="BoFH Excuse Generatorで、”ソーラーフレア”はいつも俺のお気に入りの結果だったな。http://jefflane.org/bofh/bofh.pl" userName="suprjami" createdAt="2025/11/29 03:49:02" color="">}}




{{<matomeQuote body="ソーラーフレアが最高の言い訳だね。ただ待つしかない。" userName="ezconnect" createdAt="2025/11/29 10:59:07" color="">}}




{{<matomeQuote body="航空宇宙産業は昔からビット反転対策をしてきたぜ。Airbus/Thalesの今回の修正は、エラーチェックを強化して、不調なコンポーネントを再起動するみたいだな。<br>https://bea.aero/fileadmin/user_upload/BEA2024-0404-BEA2025-..." userName="pyb" createdAt="2025/11/29 06:16:22" color="#38d3d3">}}




{{<matomeQuote body="リンク先のドキュメントは今回の件と関係ないらしいぞ。" userName="nolist_policy" createdAt="2025/11/29 12:53:19" color="">}}




{{<matomeQuote body="どうやって事故を診断したんだろう？FDRってこういう低レベルのエラーも記録するのかな？専門家じゃないけど、主要な入力と高レベルの飛行データだけだと思ってたよ。放射線でビット反転が起きたとして、どうやってそれが原因だとわかるんだろうね？FDRが異常を記録するのかな？フライトコンピューターの投票エラーとか？知りたいな！" userName="supernova87a" createdAt="2025/11/29 10:25:04" color="">}}




{{<matomeQuote body="avheraldのコメントによると、1990年代に植込み型除細動器のCMOSメモリでも同じ問題があったらしい。ソフトウェアで検出・修正したり、新デバイスは耐放射線化が必要だったって。シドニーとブエノスアイレス間を南極経由で何度も飛行して、太陽放射が原因だと確認されたんだってさ。" userName="yread" createdAt="2025/11/29 12:57:03" color="#ff33a1">}}




{{<matomeQuote body="これは2025年10月30日のJetBlue 1230便（カンクン発ニューアーク行き）の事故に関するコメントだね。宇宙線がビット反転を起こして危険な状況になったらしい。G1の地磁気嵐で、K指数は5だった。このレベルの宇宙天気は頻繁に起こるから、信頼性としては受け入れがたいってことだな。" userName="oofbey" createdAt="2025/11/29 19:58:37" color="#785bff">}}




{{<matomeQuote body="ここに、似たようなSEU（シングルイベントアップセット、つまりビット反転）に関する素晴らしい事後検証があるぞ。<br>https://www.atsb.gov.au/sites/default/files/media/3532398/ao..." userName="65a" createdAt="2025/11/29 05:30:28" color="#ff33a1">}}




{{<matomeQuote body="どうやら修正はソフトウェアの以前のバージョンに戻すことらしいよ。<br>https://avherald.com/h?article=52f1ffc3&opt=0<br>ソフトウェアの変更が回復力にどう影響したのか気になるね。メモリ設定が間違ってたとか、冗長計算されてないコードパスがあったとかかな？" userName="raverbashing" createdAt="2025/11/29 08:19:48" color="#785bff">}}




{{<matomeQuote body="他にも議論があるぞ。<br>https://news.ycombinator.com/item?id=46082296" userName="ChrisArchitect" createdAt="2025/11/28 21:42:03" color="">}}




{{<matomeQuote body="全機体を運航停止にする必要ある？何年も飛んでる1万機の中でたった1件の事故でしょ。航空会社に2ヶ月猶予をあげて直させれば十分だと思うんだけど。" userName="joelthelion" createdAt="2025/11/29 05:16:36" color="">}}




{{<matomeQuote body="これってAirbusのマーケティングに役立ちそうじゃない？“競合は複数の死亡事故が起きてから行動するけど、うちは積極的に対策してるんだぞ！”ってね。" userName="kijin" createdAt="2025/11/29 05:50:48" color="#785bff">}}




{{<matomeQuote body="このせいで、知人が別の continent で足止めされてるんだ。正直、技術者としての理解は、国際線の再予約という”とんでもない苦労”で吹っ飛んだよ。非技術者には”ソフトウェアの更新が必要だから飛行機は飛ばない”って聞かされて、信頼感はゼロだね。俺から見れば、マーケティングには全く役立ってない。" userName="probably_wrong" createdAt="2025/11/29 12:43:00" color="#38d3d3">}}




{{<matomeQuote body="”ソフトウェア更新が必要だから飛行機は飛ばない”、これは信頼できないって？いや、経済的に考えられる人には、実はすごく信頼できることだよ。何千機もの運航停止は超高額だし（EUでは乗客は現金を、場合によってはチケット代以上ももらえる！）、だからこそ深刻な問題で、真剣に対処してるって示してるんだ。" userName="lxgr" createdAt="2025/11/30 09:20:04" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まず、“納得できないのはお前がバカだからだ”って言われてる気がするのは不当だと思う。費用がかかるからといって手抜き作業じゃないとは限らないよね。結局、“安全性重視で何百万も失う”と“プロセスが悪くて大金を失う前に何百万も失うしかない”の違いって、飛行機に対する過去の印象次第なんだ。<br>もし同じ問題がBoeingで起きてたら、多分“ECCをケチったんだ”って議論になってただろうね。誰が費用を負担するのかは知らないけど。" userName="probably_wrong" createdAt="2025/11/30 12:51:54" color="#785bff">}}




{{<matomeQuote body="もしこの2ヶ月の間に飛行機が墜落したらどうなるか想像してみてよ。きっとみんなと同じように、彼らを重大な過失で責めまくるに違いないね。" userName="brabel" createdAt="2025/11/29 08:22:43" color="#ff5733">}}




{{<matomeQuote body="”メーカーが更新を推奨したのに航空会社がギリギリまで待った”場合と、”メーカーが問題自体を認めなかった”場合とでは、世間が誰を責めるかという点で大きな違いがあるよね。" userName="kijin" createdAt="2025/11/29 11:05:31" color="#ff5c5c">}}




{{<matomeQuote body="何年も前からじゃないと思うよ。ELACの最新 firmware version だけが影響を受けてるんだ。解決策は、downgrade するか（または以前の firmware が動作する unit と hardware を交換する）ことらしいね。" userName="mrpippy" createdAt="2025/11/29 05:49:03" color="#785bff">}}




{{<matomeQuote body="この費用は誰が負担するんだろうね？多分、航空会社だろうな。だから、Airbusにとって運航停止の直接的な費用はかなり低いけど、運航停止しない場合のデメリット（事故のリスク、訴訟、評判など）はかなり大きい可能性があるってことだね。" userName="jfoster" createdAt="2025/11/29 06:23:16" color="#ff5733">}}




{{<matomeQuote body="うん、航空会社だろうね。解決策はかなり速そうだから、MAXの数ヶ月にわたる運航停止ほど高額じゃないはずだよ。訴訟沙汰になるとは思わないな。航空機を所有していれば、修理とかは日常茶飯事だからね。だから、Airbusがこれを迅速かつ円滑に進める限り、多分大丈夫だろう。" userName="Havoc" createdAt="2025/11/29 08:21:32" color="">}}




{{<matomeQuote body="これAirbusだよ、Boeingじゃないし。" userName="miyuru" createdAt="2025/11/29 08:43:52" color="">}}




{{<matomeQuote body="個人的にこの2ヶ月間はあの飛行機に乗りたくないな。" userName="f1shy" createdAt="2025/11/29 07:09:53" color="">}}




{{<matomeQuote body="製品の修正を急いで、結局元のバグよりひどい事態になったって知るほど最悪なことないよね。" userName="upcoming-sesame" createdAt="2025/11/29 12:19:54" color="">}}




{{<matomeQuote body="そうだよな、だって代替案はつまらないエンジニアリング上の既知の問題で人を殺す可能性があるって知ることだし。" userName="refulgentis" createdAt="2025/11/29 16:27:30" color="">}}




{{<matomeQuote body="なんかこれ、一部はマーケティング目的でやってる気がするんだよね。" userName="pyb" createdAt="2025/11/29 09:20:53" color="">}}




{{<matomeQuote body="彼らの視点からすると、この脆弱性を知った後に、対応が迅速かつ積極的じゃなかったせいで事故が起きたらどうなるか考えなきゃいけない。そんなことになったら会社全体が永遠に台無しになっちゃうからね。" userName="Bud" createdAt="2025/11/29 05:55:03" color="#ff33a1">}}




{{<matomeQuote body="うん、Boeingは数年経ってもまだそれと格闘してるよ。(当然だけど、俺はまだ彼らにすごく怒ってる。)" userName="Esophagus4" createdAt="2025/11/29 13:16:36" color="">}}




{{<matomeQuote body="俺の素人予想だけど、新しい制御経路が整合性引き渡しプロトコルにちゃんと参加してなくて、保護の外で何か変換しちゃったんじゃないかな。<br>以前、HWエンジニアたちがストレージデバイスのエラー率が予想より何桁も高くて発狂しそうになってたのを見たことがあるんだ。VHDLベースのFPGAの制御領域が整合性をちゃんとやってなかったのが原因だった。エラーが起きるには、信じられないほど正確なタイミングでビットを反転させなきゃいけないんだけど、それが起きてたんだよね。計算してみたら、そのFPGA制御パスの整合性エラーがまさに高いエラー率の原因だったんだ。" userName="rossjudson" createdAt="2025/11/29 20:33:00" color="#ff5c5c">}}




{{<matomeQuote body="友達がJetblueで働いてるんだけど、彼らはアップデートを急ピッチでやってるらしいよ。" userName="owenthejumper" createdAt="2025/11/29 02:36:35" color="#ff5733">}}




{{<matomeQuote body="この動画はA320のコンピューターとコンピューター冷却システムの仕組みを紹介してるよ。<br>https://www.youtube.com/watch?v=HQuc_HhW6VA" userName="skx001" createdAt="2025/11/29 19:37:50" color="#ff33a1">}}




{{<matomeQuote body="航空会社がフライトへの影響はないって言ってるけど、これって更新されるまで全機地上待機でしょ？フライトスケジュールに影響しないなんてありえないよ。" userName="jfoster" createdAt="2025/11/29 03:38:07" color="">}}




{{<matomeQuote body="地上待機はA320シリーズ11000機中6000機だって。ソフトウェアとハードウェアの構成の組み合わせが問題を引き起こしてるんだと思うよ。" userName="icegreentea2" createdAt="2025/11/29 03:52:43" color="#785bff">}}




{{<matomeQuote body="ありがとう、納得したよ。てっきり全機が対象だと思ってたんだ。" userName="jfoster" createdAt="2025/11/29 06:15:29" color="">}}




{{<matomeQuote body="ELACがLRU（Line-Replaceable Unit、空港で交換できる箱）かどうか、そしてインストール済みのユニットにソフトウェアアップデートをアップロードできるかによるね。すべての航空機が”ファームウェアアップデート via cable or floppy”に対応してるわけじゃないからさ。" userName="julik" createdAt="2025/11/29 12:53:40" color="#38d3d3">}}




{{<matomeQuote body="1つの例だけど、俺はPhoenixで一晩足止めだよ。Airbusの整備でフライトが1時間半遅れて、乗り継ぎを逃しちゃったんだ。" userName="arrel" createdAt="2025/11/29 03:40:12" color="">}}




{{<matomeQuote body="この特定の機体なら、ソフトウェアアップデートはルーティンでできるかもね。でも、航空会社によって購入する機体の構成が違うから、EmiratesやLufthansaはフル装備を買うけど、小さなAsian airlinesは限定構成（安全インジケータすら一部ない場合も）を買う可能性があるんだ。EmiratesやLufthansaなら、本拠地空港への空フライトで済むけど、小さなAsian airlinesは大きな整備拠点や工場まで飛ばして、そこで順番待ちしなきゃいけないかもね。だから、大手航空会社への影響は最小限でも、小さなAsian airlinesにとっては事態はもっと深刻になる可能性があるんだよ。" userName="simne" createdAt="2025/11/29 15:44:32" color="#785bff">}}




{{<matomeQuote body="Airbus A320の緊急耐空性措置を受けて、みんなThales製のELAC（Elevator Aileron Computer）について話すはずだよ。これは昨年10月のJetBlue 1230便でパイロットの操作なしに突然機首が下がった原因だったからね。ELACについて知るべきことは全部ここにあるよ。Airbus A320におけるELACシステム：ピッチとロール制御の頭脳。<br>https://x.com/Turbinetraveler/status/1994498724513345637" userName="kappi" createdAt="2025/11/29 04:12:31" color="#45d325">}}




{{<matomeQuote body="Toyotaの意図しない加速問題の時も同じこと言ってたけど、実際には例が見つからなかったよね。道にはAirbusより古いToyotaの方がずっと多いんだから、ここでは太陽までの距離がすべてを決めるのかな？北極付近を飛ぶときにだけ問題が出るのかな？" userName="1970-01-01" createdAt="2025/11/29 15:42:54" color="">}}




{{<matomeQuote body="もし将来の航空機がソフトウェアを”OTA”アップデートできたらどうだろう？これを避けられるダウンタイムの例としてね。車の”OTA”アップデートは、どんな新しいバグが導入されるか分からなくて不安になるけどさ。" userName="albert_e" createdAt="2025/11/29 22:50:19" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
