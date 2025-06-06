+++
date = '2025-05-30T00:00:00'
months = '2025/05'
draft = false
title = 'Amazon Web Services システム正確性 実践の中身'
tags = ["AWS", "ソフトウェアテスト", "分散システム", "信頼性", "検証"]
featureimage = 'thumbnails/blue2.jpg'
+++

> Amazon Web Services システム正確性 実践の中身

引用元：[https://news.ycombinator.com/item?id=44135638](https://news.ycombinator.com/item?id=44135638)




{{<matomeQuote body="＞ Deterministic simulationってやつ、AWSで結構使われてる軽量な方法なんだね。スレッドの動きとかタイミングとか、ランダムな部分を全部制御してシミュレーターで動かすんだって。特定の失敗パターンとか成功パターンをテストできるらしいよ。言語に関係なく使える良いオープンソースのライブラリとかないのかな？ Antithesisってのがだいたいこれやってるみたいだけど、まだオープンソースじゃないんだってね。I/Oをスタブ化すればできるけど、それって面倒だし、みんながちゃんとやるとは限らないしね。それよりアプリケーションより上のレイヤーで決定的になる方が良い気がするなー。ちょっと余談だけど、AIってテストの分野ではかなり期待できると思うんだよね。formal verificationとか、もっとやりやすくなるといいな。" userName="amazingamazing" createdAt="2025/05/30 14:24:42" color="#38d3d3">}}




{{<matomeQuote body="DSTには歴史的に２つのデカい壁があったんだ。１つは、システム全体を特定のシミュレーションフレームワークに合わせて作る必要があったこと（しかも他のライブラリとか使えなくなる）。もう１つは、しょぼい探索とか入力生成で自分をごまかしやすいこと。簡単なテストしかしてないのに全部クリアに見えちゃうんだよね。Antithesisはこれらの問題を解決しようとしてるけど、マジで難しいよ。どんなソフトウェアにも後から決定性を導入できる信頼できる方法を知らないな。Facebook’s Hermit projectがLinuxユーザーランドを決定的にしようとしたけど、もうやめちゃったみたい。（俺たちもハイパーバイザー作る前に同じこと試したけど、うまくいかなかったんだ）決定的なコンピューターってのは、テスト以外にも汎用的に役立つ技術だと思うんだ。いつか誰かが作るか、俺たちがオープンソース化すると思うよ。" userName="wwilson" createdAt="2025/05/30 17:02:34" color="#38d3d3">}}




{{<matomeQuote body="これ見てみて<br>https://apple.github.io/foundationdb/testing.html<br>https://www.youtube.com/watch?v=4fFDFbi3toc" userName="bit_razor" createdAt="2025/05/30 17:45:13" color="#ff5733">}}




{{<matomeQuote body="FDB大好きだけど、あれはちょっと違うんだよね。FDBチームは確か、これをやるために独自のプログラミング言語を書かなきゃいけなかったはずだよ。アプリケーションの上の層にある言語非依存のレイヤーって感じじゃないんだ。ツールが密結合してると、誰も使わないんだよ。だからAntithesisが凄いんだ。彼らが目標達成できたら、まさにそれが実現されることになるんだから。" userName="amazingamazing" createdAt="2025/05/30 17:46:54" color="#ff5c5c">}}




{{<matomeQuote body="あー、”そのツールに密結合したソフトウェアの開発者だけが使う”って言いたかったんだね、きっと。FDBとかAmazonだけがこういうの使ってるわけじゃないし、分散システムのデバッグにはめちゃくちゃ強力なツールなんだよ、これ。" userName="Lwerewolf" createdAt="2025/05/30 20:07:36" color="">}}




{{<matomeQuote body="QEMUを100％エミュレーションモードでシングルスレッドで動かせば、完全に決定的なマシンは比較的簡単に手に入れられると思うんだ。でも、みんなが求めてるのは”制御された”決定的な実行なんだよね。それって比べ物にならないくらい難しい。複数のプロセスに、特定の条件を引き起こすような特別な動きをさせるのは、CPUとかOSスケジューラの低いレベルから見ると、すごく複雑になるはずだよ。だから言語非依存の仕組みは実現が難しいし、特に意図通りに動かすのが大変なんだ。関係ない細部に溺れちゃうかもしれない。昔、これよりずっとシンプルなものを作ったことがあるんだ。複数のJVMスレッドを特定の同期パターンで動かせるようにしたんだ。I/O操作とかシステム時間の進行をスタブ化して制御することでね。それで、いくつか非同期につながったコンポーネントを、スレッドの起動順だけじゃなく、I/Oエラーとかリトライも含めて特定の相互作用パターンで実行できたんだ。これは管理しやすかったし、本番で動く前にいくつか厄介なバグを見つけるのに役立ったよ。でも、それは大幅な簡略化をしたから可能だったんだ。システム全体じゃなくて、特定の同期ポイントだけを制御したんだよ。明示的な同期を単に忘れちゃったような一般的なデータ競合は検出できないんだ。" userName="nine_k" createdAt="2025/05/31 00:08:55" color="#ff5c5c">}}




{{<matomeQuote body="これに似たようなやつ、JVM向けに昔（たしか15年くらい前）あったって聞いた気がするな。詳しいことは覚えてないから、全く同じじゃないかもしれないけど、同僚が言ってたのは、ヤバいスケジューリング順序を自動で選んで並行処理をテストする技術だったんだよ。" userName="ajb" createdAt="2025/05/31 05:56:18" color="">}}




{{<matomeQuote body="gdbでデバッグできる言語ならこれが使えるよ<br>https://rr-project.org/" userName="crvdgc" createdAt="2025/05/30 18:05:30" color="#ff5c5c">}}




{{<matomeQuote body="rrにプラス1．ボーナス機能としてタイムトラベルデバッグもできるんだ！これに慣れちゃったらもう他のデバッグには戻れないね…" userName="smj-edison" createdAt="2025/05/31 07:01:24" color="#38d3d3">}}




{{<matomeQuote body="Joe Armstrong が Dropbox のテストに property testing を使ったっていう話があったよ．" userName="john2x" createdAt="2025/05/30 19:46:40" color="">}}




{{<matomeQuote body="S3 は俺が見た中で最も素晴らしいソフトウェアの一つだよ．数年前にシステム全体に強いread-after-write整合性を追加した件？ 信じられないソフトウェアエンジニアリングだね． https://aws.amazon.com/blogs/aws/amazon-s3-update-strong-rea..." userName="simonw" createdAt="2025/05/30 16:02:23" color="#ff5c5c">}}




{{<matomeQuote body="S3 （Lifecycle）で，まさにそのread-after-writeを可能にしたインデックスチームの再設計時期に働くっていう，特別な喜びがあったんだ．<br>外部から見た S3 が印象的なのはもちろんだけど，実装と組織構造の両面で，内部は少なくともそれくらい印象的だって自信を持って言えるよ．" userName="riknos314" createdAt="2025/05/30 23:32:11" color="#38d3d3">}}




{{<matomeQuote body="Google Cloud Storage は S3 よりずーっと前からそれ（read-after-write）持ってたよ．GCS の方がずっとよく考えられて作られた製品に見えるね．" userName="positisop" createdAt="2025/05/30 17:25:10" color="">}}




{{<matomeQuote body="S3 はおそらく世界最大のオブジェクトストアだろうね．そんなシステムをアップグレードして，read-after-writeみたいに複雑な機能を追加するのに，ダウンタイムなしで，しかも200+ exabytesものデータ規模でやっちゃうなんて，マジで感心するよ．" userName="simonw" createdAt="2025/05/30 18:44:08" color="#45d325">}}




{{<matomeQuote body="エンジニアリングの努力には本当に敬意を表するよ．でもオブジェクトストアはembarrassingly parallel だから，もしそんな移行がダウンタイムなしで可能な場所があるとしたら，それは間違いなくオブジェクトストアだね．" userName="tossandthrow" createdAt="2025/05/30 19:07:46" color="">}}




{{<matomeQuote body="オブジェクトストアの並列性を利用するカットオフはどこで作るんだろうね？<br>つまり，ライブサービス上で，スタックのどのレイヤーで新しい強い整合性システムに移行し始めるんだ？<br>既存のバケットには古いシステムにデータがあるから，バケット単位では無理だよね．<br>同じ理由でキープレフィックスレベルでも無理．<br>両方のシステムを並行稼働させて，新しい方を試してキーがなければ古い方にフォールバックするのも無理だ，だって追加しようとしてる整合性ルールが破られちゃうから．<br>思ってるよりずっとややこしそうだね．" userName="gamegoblin" createdAt="2025/05/30 20:31:28" color="#ff5c5c">}}




{{<matomeQuote body="明らかに，どうやってread-after-writeを実現したかによるだろうね．<br>おそらくオブジェクトのデータを物理的に移動する必要はなくて，書き込みと読み込みをするレイヤーが，何らかのバージョン管理保証（例えばデータベースの世界だとMVCCが有名なパラダイムだね）に基づいて調整してるんだろう．オブジェクトの最新バージョンがどれで，どこから読むべきかを全てのリーダーに伝える，分散トランザクショナルkvストアが必要になるだろうね．<br>オブジェクトへの書き込みは，データが書き込まれてkvストアが新しいバージョンで更新された場合だけ完了を承認するんだ．<br>バケットは互いに隔離されてるから，バケット単位で並行してこれができるかもしれないね．" userName="nojvek" createdAt="2025/05/31 00:48:20" color="#ff5733">}}




{{<matomeQuote body="そうだね，でも GCS が使ってるのは誰の互換 API だっけ？ あと S3 が20年近く経ってることも頭に入れといてね，だからあんな風に変更をバックポートするのは信じられないくらいすごいことなんだ．" userName="SteveNuts" createdAt="2025/05/30 17:53:38" color="">}}




{{<matomeQuote body="20年だけじゃなくてさ、大規模なのにほぼ完璧な20年間だよ。" userName="benoau" createdAt="2025/05/30 17:55:27" color="#38d3d3">}}




{{<matomeQuote body="Its funny that things that are pinnacles of human engineering exist like this where the general public has no idea it even exists, though they （most likely） use it every single day．" userName="SteveNuts" createdAt="2025/05/30 18:16:44" color="#ff5c5c">}}




{{<matomeQuote body="俺は Red Dead Redemption 2 の方がすごいと思うんだよね．なんでかはわかんない．バカげてるかもだけど， S3 って表面上の API が超シンプルだから，ああいうのと比べると全然すごく見えないんだ．実際どっちの方がすごいのか，ちょっと気になるわ．" userName="ninetyninenine" createdAt="2025/05/30 18:59:05" color="">}}




{{<matomeQuote body="外部インターフェースからは使いやすいのは確かだけど，バックエンドはめちゃくちゃすごいんだよ．以前の議論はこちら<br>https://news.ycombinator.com/item?id=36900147" userName="SteveNuts" createdAt="2025/05/30 20:25:55" color="#45d325">}}




{{<matomeQuote body="＞ S3 って表面上の API が超シンプルだから，全然すごく見えないんだ ［...］<br>ちょっと前にあった，このコメント思い出したわ．<br>https://news.ycombinator.com/item?id=43363055" userName="koito17" createdAt="2025/05/31 01:28:06" color="#38d3d3">}}




{{<matomeQuote body="Thats the strangest comparison I have seen． What axis are you really comparing here？ Better graphics？ Sound？" userName="sriram_malhar" createdAt="2025/05/31 06:32:47" color="">}}




{{<matomeQuote body="どっちを作るにも必要な，複雑さと純粋な知能，それに能力．" userName="ninetyninenine" createdAt="2025/05/31 07:34:18" color="">}}




{{<matomeQuote body="で，その主張の根拠は？ AWSs complexity and intelligence and capability to build and manage 1‐2 zettabytes of storage near flawlessly？" userName="sriram_malhar" createdAt="2025/05/31 09:51:13" color="#45d325">}}




{{<matomeQuote body="Im more impressed by Red Dead Redemption 2 or Baldurs Gate 3．There is no “basis” other my gut feeling． Unless you can get quantified metrics to compare thats all we got． For example if you had lines of code for both， or average IQ． Both would lead towards the “basis” which neither you or I have．" userName="ninetyninenine" createdAt="2025/05/31 13:48:21" color="">}}




{{<matomeQuote body="AWS はさ，一番でかい S3 バケットは100万台以上の HDD に分散されてるって言ってるよ．それ，かなりすごいことだよね．" userName="UltraSane" createdAt="2025/05/31 02:07:27" color="#ff33a1">}}




{{<matomeQuote body="たぶん誤解してるよ。彼らはS3が100万台のハードドライブを使ってるんじゃなくて、すごく大きな単一のバケット／顧客のためだけに100万台のハードドライブを使ってるって言ってるんだよ！" userName="simonw" createdAt="2025/05/31 13:23:57" color="">}}




{{<matomeQuote body="実際には、その100万台のドライブには複数の顧客のデータが保存されるだろうね。でも、1つの顧客のデータが、spinning hard drivesから必要なIOPsを得るために、100万台のドライブに分散されるんだ。" userName="UltraSane" createdAt="2025/06/02 17:49:56" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="GCSのmetadata layerは元々Megastore（Spannerの前身）で実装されてたんだ。それはSpannerのスケーリング能力が向上するにつれて、だいたい小さいregionから大きいregionの順でSpannerにシームレスに移行されたんだよ。GCSはSpannerのいくつかのscaling plateausを見つけて、解消するのを手伝ったんだ。" userName="rossjudson" createdAt="2025/05/31 02:45:03" color="#785bff">}}




{{<matomeQuote body="＞GCSはすごくよく考えられて作られた製品に見える<br>AWSとGCSでしばらく働いたけど、僕には逆の意見だね。GCSっていうのは、エンジニアが顧客にどう作業するかを押し付けて、ひどいinterfaces、poor documentation、価値以上にcomplexityを与えた結果だよ。”I engineered the ultimate engineery thing”っていうのと、”I made something people actually like using”っていうのは違うんだ。" userName="0xbadcafebee" createdAt="2025/06/02 15:07:55" color="#38d3d3">}}




{{<matomeQuote body="まあ、そうかもね。でも、Googleにはinfrastructureとして選ぶのがriskyなendeavorだっていうreputationがあるんだよ。" userName="theflyinghorse" createdAt="2025/05/30 19:56:25" color="">}}




{{<matomeQuote body="僕のPOVからすると、Amazonはservicesを”trust nothing, prepare for the worst case”っていうperspectiveから設計してるんだ。Eventual consistencyも含まれてるよ。それがusefulな時もあるけど、most of the timeはPITAなんだ。" userName="throitallaway" createdAt="2025/05/30 17:38:04" color="#38d3d3">}}




{{<matomeQuote body="S3はper seソフトウェアっていうんじゃなくて、serviceだよ。それと、S3はgcsやazure blobよりbetterってことはないね。" userName="up2isomorphism" createdAt="2025/05/31 06:05:11" color="">}}




{{<matomeQuote body="Servicesはsoftwareの上にbuiltされてるんだよ。S3はlikely an order of magnitude larger than those others - it’s had a lot longer to grow。" userName="simonw" createdAt="2025/05/31 13:22:31" color="">}}




{{<matomeQuote body="うわぁ。Leslie Lamportさんとは昔、何年もやり取りしてたんだよ（彼のBuridan’s Principleの論文とかについてね）。今日彼のウェブサイトを見たら、TLA+やPlusCalについて色々な発見があったんだ。今でも彼は管理してるみたい。<br>正直言ってさ…プログラミングに数学を持ち込んで、並行システムのOGだった彼みたいな人が、AWSとか人が使う必要のある産業界で使われるシステム設計言語を作るっていうのは、めっちゃ理にかなってると思うんだよね。<br>分散システムを構築する人がもっと彼の作ったものを使ってくれたらいいのに。大規模システムでは正確さの証明ってマジで重要だからさ。" userName="EGreg" createdAt="2025/05/30 13:18:05" color="#45d325">}}




{{<matomeQuote body="あと興味あるかもしれない人にちょっとしたヒント：Claude Opus with Extended Thinkingが、既存のコードをTLA+仕様に変換するのがすごく得意みたいだよ。<br>個人的なRustプロジェクトでこれでいくつもバグ見つけちゃったんだ（Snakeゲームで蛇が180度ターンできちゃうバグとかね）。あと仕事で使ってる小さめのコアC++コンポーネント（ロックとかライブネスに特定の特性があるキュー）もこれで検証したよ。<br>他のモデルも試したけど、Opus以外だと構文とか仕様ロジックで問題が出まくったんだ。" userName="lopatin" createdAt="2025/05/30 13:24:58" color="#ff5c5c">}}




{{<matomeQuote body="tlaとか他の形式手法って、ずっと分散システム特有のものだと思ってて、理解する必要ないと思ってたんだ。Snakeゲームでどうやって使うの？<br>あと、コードからTLA+仕様ってどうやって決めるの？既存のシステムの状態だから、間違ったバグも正しい振る舞いとして暗黙的にモデル化されちゃわない？<br>あと、最初からTLA+を使う場合、実装にも適用できるの？それとも設計段階でバグをキャッチするだけ？だから実装は設計と完全に一致しないと、結局微妙なバグが出るってこと？質問攻めごめん、形式手法をちゃんと学んだことはないんだけど、ずっと興味はあったんだ。" userName="dosnem" createdAt="2025/05/30 13:43:33" color="">}}




{{<matomeQuote body="僕のSnakeのバグがどうやって見つかったか教えるね：僕の蛇の表現は、要点のベクトルなんだ（頭、カーブ地点、尻尾）。まっすぐな線で長さ3の蛇が右向きの場合、こんな感じ：[(0,0), (2,0)]。蛇が移動する時（”step_forward”っていう関数1つで）、僕のコードで蛇の表現が圧縮されるんだ：最後の2つの点が同じだったら、最後の点を削除する。だから、この蛇が方向を”左”に変えたら、新しい蛇の表現は[(1, 1), (1, 1)]になって、step_forwardから出る前に[(1, 1)]に圧縮されちゃうんだ。<br>バグがどうやって見つかったかというと：蛇の表現は2点未満になるべきじゃないんだ。だからOpusに僕の蛇の振る舞いをモデル化させて、TLA+の不変条件として蛇の長さが絶対に2未満にならないように書いてもらったんだ。そうするとTLA+は基本的にそれをシミュレーションして、その不変条件が成り立たなくなる正確な一連のステップ（”ターン”）を見つけ出すんだ。この場合はすごく単純だった。蛇が90度以外のターンをするのを防ぐのを考えたことがなかったんだ。" userName="lopatin" createdAt="2025/05/30 13:54:37" color="#38d3d3">}}




{{<matomeQuote body="TLA+は分散システムが対象だけど、どんなシステムでも時間の経過をモデル化するのに使えるんだ。僕は分散システムにも使ったけど、なんか peculiar なハードウェア（そう見えて、実際にそうだったんだけど）が誤動作してる組み込みシステムにも使ったよ。そのハードウェアとその仕様をTLA+でモデル化して、振る舞いの記述を変更して、期待される不変条件が破れるか見てみたんだ（破れたよ、まさに実際のハードウェアで見た通りにね）。TLA+モデルは、以前やってたよりもそのハードウェアの再現可能なテストケースを開発するのにも役立ったんだ。" userName="Jtsummers" createdAt="2025/05/30 15:08:32" color="#785bff">}}




{{<matomeQuote body="専門家じゃないけど、僕の今の理解では、コード実行は常に次の状態への状態遷移なんだ。だから、やることは各状態とそれらの間の関係を完全に仕様化すること。遷移が実際にどう起こるかっていうのは君のコードで、それはそんなに重要じゃない。重要なのは、関係同士が矛盾しないこと。これは超強化された型システムみたいなもんだね。<br>＞ コードからTLA+仕様ってどうやって決めるの？<br>初期状態から始めるんだ。これは常に既知（または固定）だよ。それから各行の不変条件をモデル化するんだ。<br>＞ 既存のバグも正しい振る舞いとして暗黙的にモデル化されちゃう？<br>この場合、不変条件同士が衝突するはずだよ。<br>＞ 最初からTLA+を使う場合、実装にも適用できる？<br>そうだよ、仕様に完全に沿って、実際に起こりうる不正な状態を実務でハンドリングすることでね。TLA+仕様で初期状態が1から5の自然数だけを含むって言ってるなら、君の実装ではその制約をチェックするアサーション（または例外をスロー）を追加するんだ。多くの型システムではその制約を完全に保証しないからね。動的言語を使うならもっと大変だ。" userName="skydhash" createdAt="2025/05/30 16:32:18" color="#ff33a1">}}




{{<matomeQuote body="新しいDeepSeekはOpus 4と似たようなレベルの性能を発揮してるみたいだよ。少なくともAiderの予備的なベンチマークによるとね。" userName="k__" createdAt="2025/05/30 18:26:55" color="">}}




{{<matomeQuote body="＞ 正確さの証明は大規模システムで重要です。<br>それはSSHとか端末みたいな小さくてもクリティカルで広く使われてるユーティリティでもいいかもね。" userName="skydhash" createdAt="2025/05/30 13:27:36" color="">}}




{{<matomeQuote body="うん、基本的にはlsとかcdとかcpみたいなcoreutilsの全部に加えて、rsyncとかsshみたいな一般的な追加機能も含めて、こういうの使えるだろうね。" userName="oblio" createdAt="2025/05/30 13:54:25" color="">}}




{{<matomeQuote body="lsとかcdとかcpみたいなcoreutilsは、Lean 4とCursorを使えば数日以内に書き直せるのはfeasibleだろうね。rsyncとsshはもっと複雑だけど。" userName="rthnbgrredf" createdAt="2025/05/30 19:10:56" color="">}}




{{<matomeQuote body="お前の最初の主張、AIのすごく良いテストになると思うわ。AIがマジで言われてるほどスゴイなら、AIを使ったOSSプロジェクトとか貢献がもっと増えるはずだし。てか，貢献が超簡単になるから，OSSは爆発的に加速するんじゃね？" userName="oblio" createdAt="2025/05/31 08:14:16" color="">}}




{{<matomeQuote body="＞＞大規模システムで正確さを証明するのは超重要だ。そんなん無理だよ... モデルチェッカーが言うのは，お前が探った有限の状態空間の中で，仕様が書いたプロパティを満たしてるってだけだからね..." userName="belter" createdAt="2025/05/30 13:44:24" color="#ff33a1">}}




{{<matomeQuote body="TLA＋とか他のいろんな形式手法でも証明は書けるんだぜ。モデルチェッカーなんて絶対使う必要ないし。証明は無限に長い実行に対しても通用するんだから。有限の振る舞いに縛られるなんて全然ないよ。" userName="amw-zero" createdAt="2025/05/31 00:53:36" color="#ff33a1">}}




{{<matomeQuote body="めっちゃいい記事！インフラのコントロールプレーン作るなら，状態機械はマジで必須だわ。でもPも絶対必要だったのかな？俺はそうは思わないけどね。俺たちはもう13年以上インフラのコントロールプレーン作ってるけど，Rubyで全然うまくいってるぜ https://www.ubicloud.com/blog/building-infrastructure-contro..." userName="furkansahin" createdAt="2025/05/30 14:46:53" color="">}}




{{<matomeQuote body="92％って統計，マジ興味深いね！クラスターぶっ壊すのって派手なクラッシュじゃなくて，”無害な”リトライが状態を垂れ流して，金曜の午前2時に全部ダメになるって話なんだな。これは明らかに，ヤバい大災害より，地味で静かな失敗にこそエンジニアリング時間をもっと割くべきってことだわ。そこに本体が隠れてるんだよ。" userName="severusdd" createdAt="2025/05/30 15:04:07" color="#38d3d3">}}




{{<matomeQuote body="それか生存者バイアスかもね：大きな問題は，対応されたからもう問題起こさない。対応されてない小さな問題が，たまたま大きな問題を引き起こすんだ。" userName="smallnix" createdAt="2025/05/30 17:16:55" color="#ff5c5c">}}




{{<matomeQuote body="P言語について一つ気になったんだけど：初期の頃，MicrosoftでWindows USB stackのランタイムで実際に動くCコードを生成するのに使われてたみたいじゃん？でも今はもうプロダクションコード作るのには使ってない感じ？前にもここで同じ質問したんだよね（https://news.ycombinator.com/item?id=34284557）。生成されたコードがカーネルでも使えるなら，もっとリソースが豊富なクラウドでもイケるはずなのにさ。" userName="chubot" createdAt="2025/05/30 14:40:46" color="#45d325">}}




{{<matomeQuote body="Azureで使われてるCoyote［0］って，P#の進化系で，さらにP［0］の進化系だったみたいだね。このリンク見てみてよ。https://www.microsoft.com/en-us/research/wp-content/uploads/..." userName="algorithmsRcool" createdAt="2025/05/30 16:04:00" color="">}}




{{<matomeQuote body="マジそれな。俺たちCoyote/P#を，抽象的な設計のモデルチェックだけじゃなくて（それも超役立つけどね），Microsoftで動いてるプロダクションサービスのマジな実装テストにも使ったことあるんだぜ。" userName="inaseer" createdAt="2025/05/30 17:37:12" color="#45d325">}}




{{<matomeQuote body="CoyoteとPって，どう違うの？" userName="k__" createdAt="2025/05/30 18:25:05" color="">}}




{{<matomeQuote body="これ面白そうだけど、AWSで働いたことないし、TLA+やPも知らない者としては、超簡単な「ハローワールド」的な例でも見たかったな。それがないと、良い設計とテストプロセスで十分捕まえられることに対して、なんかすごい余計な苦労みたいに聞こえるんだよね。記事自体に基本的な例があれば、これらが実際何をするのかもっとよく分かっただろうに。" userName="ctkhn" createdAt="2025/05/30 13:56:31" color="">}}




{{<matomeQuote body="俺が良いと思うTLA+の短いデモだよ： https://gist.github.com/hwayne/39782de71f14dc9addb75f3bec515...<br>これは、N個のスレッドが共有カウンターを非アトミックにインクリメントするのをモデル化してて、「カウンターは最終的にモデル内のスレッド数と等しくなる」っていう特性を持たせてるんだ。TLA+でチェックしたら、1つのスレッドが別のスレッドの値を上書きしちゃう競合状態を見つけた。このバグのある設計を実装してみたけど、俺のPCだと0.1％未満でしか競合しないから、直接テストするのはすごく難しいだろうね。ほとんどのTLA+の仕様はもっと複雑だけど、これはエラーが比較的シンプルだから良いデモなんだ。" userName="hwayne" createdAt="2025/05/30 18:20:54" color="#ff5733">}}




{{<matomeQuote body="TLA Plus Examples repositoryはすごく良いよ： https://github.com/tlaplus/Examples 。DieHard問題みたいな簡単なものから始めるのがおすすめ。" userName="teeray" createdAt="2025/05/30 14:31:55" color="">}}




{{<matomeQuote body="形式手法を使うことの最大の意味は、テストじゃ決して、決して全てを捕まえられないってことだよ。" userName="dmd" createdAt="2025/05/30 14:04:48" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="一方、形式検証は、君が正しく指定した特性を、君が正しく指定したプログラムの一部でしか捕らえられない。多くの場合、これらと現実のコードの正しさの間にはギャップがあるんだ。一部のプロジェクトはそのギャップを埋めたけど、ほとんどは無理だろうね。" userName="nickpsecurity" createdAt="2025/05/30 17:18:37" color="#ff33a1">}}




{{<matomeQuote body="形式モデルを使って、実際のコードがモデル通りに振る舞うか検証するための単体テストをたくさん書いたり生成したりできないの？" userName="UltraSane" createdAt="2025/05/31 02:11:12" color="">}}




{{<matomeQuote body="ほとんどの分野では常にギャップの可能性はあるだろうね。でも重要なのは、検証済みの形式モデルとバグのある実装がある場合、問題はそのモデル＜-＞実装レベルにあるって分かること。実装が間違ってるか、”バグ”がモデルによればバグじゃないか。でもモデルは”間違ってない”。モデルが言う通りに起こるべきだ！<br>モデルを使えば、設計パターンをあれこれ考え直すのを避け、この移行レイヤーに集中できる。誰かが「電卓で1÷0が0になる」と言っても、「モデルが間違ってるかも」とは思わない。電卓の何かが間違ってると思う。モデルの世界が違っても、そのモデルは君のモデルと違う可能性が高い。これで疑いの余地がまるごと排除できる。" userName="rtpg" createdAt="2025/05/31 03:42:06" color="#ff5c5c">}}




{{<matomeQuote body="ここには2つの「違う」ギャップがあるんだ。1つは君が話してるモデルと実際のコードの乖離。でももう1つ、もっと微妙なギャップがある：特性をどれだけうまく考えられるか、だよ？検証は君が考え出した特性の良さでしかなく、普通のプログラマーは特性を考え出すのが得意じゃない。（攻撃される前に言っとくけど、俺は形式手法で30年働いてるんだ）" userName="skrishnamurthi" createdAt="2025/05/31 11:09:37" color="#ff5733">}}




{{<matomeQuote body="それは仕様ベーステスト生成、モデルベーステスト生成、あるいはプロパティベーステスト生成って呼ばれてるよ。これらの言葉でググってみて。古いセキュリティや検証の論文を探すなら、常に”citeseerx”と”pdf”を検索に加えて研究論文を見つけるのがおすすめさ。論文にはそれらのツールの長所と短所が書かれてるはずだよ。" userName="nickpsecurity" createdAt="2025/05/31 15:08:19" color="">}}




{{<matomeQuote body="形式検証の仕様の形式検証とか必要じゃね？ってことはカメの上に立ってる感じだね。" userName="hamburglar" createdAt="2025/05/30 18:05:39" color="">}}




{{<matomeQuote body="基盤となる証明付きコードを探してるみたいだね。検証済みのロジックはすぐには見つからないけど。例はこちら：<br>https://www.cs.princeton.edu/~appel/papers/fpcc.pdf<br>https://hol-light.github.io/<br>mutation testingも仕様エラー見つけてるらしいよ：<br>https://github.com/EngineeringSoftware/mcoq" userName="nickpsecurity" createdAt="2025/05/30 22:04:14" color="#ff5733">}}




{{<matomeQuote body="それって”validation”って呼ばれてるの聞いたことあるな。つまり、解決策が仕様を満たすかはverifyするけど、仕様自体が本当に必要なものかはvalidateするってことだね。" userName="Twisol" createdAt="2025/05/30 20:39:32" color="#45d325">}}




{{<matomeQuote body="テストは問題の一部のケースで実装が正しいって証明するけど、形式検証は全部のケースを証明するんだよ。アナグラム返す関数みたいに、テストはいくつかの単語ペアでOKって証明するけど、全部の単語で証明するには形式検証がいるんだ。それで未定義な挙動とかライブラリのバグとか、意味論を証明できないせいで見つけにくいエラーを見つけられるんだよね。" userName="skydhash" createdAt="2025/05/30 14:34:34" color="#ff5733">}}




{{<matomeQuote body="＞＞ a good design<br>「良い設計」って言葉がすごい色々な意味を含んじゃってるよね。TLA+/Pluscalの要点は、設計の健全性を証明することなんだよ。" userName="yathaid" createdAt="2025/05/30 14:35:16" color="#45d325">}}




{{<matomeQuote body="TLA試したんだけど、グラフィカルなツールボックスが動かないしチュートリアルとも合わなくてさ。残念だったな。TLA使いたかったし、Lamportの仕事は他にはすごくファンなんだ。便利なLatexから、時間とか分散システムに関する論文まで素晴らしいと思うんだよね。" userName="egl2020" createdAt="2025/05/30 23:26:10" color="">}}




{{<matomeQuote body="https://github.com/p-org/P" userName="sriram_malhar" createdAt="2025/05/31 11:08:20" color="">}}




{{<matomeQuote body="業界がなんでTDDみたいなのにたどり着いたか面白いよね。2つの数足すみたいな簡単な関数にも使えないのにさ。一部の例外を除けば全く無用ではないけど、形式的な基盤が全くないってのは気づくべきだったんだ。Uncle Bobの時代には、ひどい／よく考えられてないアイデアがたくさんあったんだよ。他の何よりも宗教に近い感じ（プロセスの”儀式”まであるんだから）。" userName="osigurdson" createdAt="2025/05/31 14:08:11" color="">}}




{{<matomeQuote body="＞ to more lightweight semi-formal approaches (such as property-based testing, fuzzing, and runtime monitoring)<br>プロパティベースドテストとかファジングが形式手法と関係あるのはまあ分かるんだけど、ランタイムモニタリングを”半形式手法”って呼ぶのはさすがに無理がある気がするな。" userName="abeppu" createdAt="2025/05/30 17:31:52" color="#ff33a1">}}




{{<matomeQuote body="PObserveみたいなものを使ったランタイムモニタリングなら、半形式手法って言えるよ。単なる普通の警告とかメトリクスじゃないんだ。" userName="mjb" createdAt="2025/05/30 17:33:09" color="">}}




{{<matomeQuote body="PromelaとかSPINって、記事で説明されてるよりハイレベルって言って合ってるかな？" userName="Marazan" createdAt="2025/05/30 15:51:55" color="">}}




{{<matomeQuote body="筆者の一人だけど、10年くらい前にPromelaで分散システムのことやったことあるんだよね。でも、この分野にはあんまり合ってる感じはしなかったかな。クールなアイデアはあるし、いつかまた見直してみる価値はあるかもね。" userName="mjb" createdAt="2025/05/30 16:02:28" color="">}}




{{<matomeQuote body="ちょっと聞きたいんだけど、FISを自分の分散サービスで使ったことある人いる？使うの考えてるんだけど、ああいう実験を実際にやった経験がないんだよね。" userName="ahalbert4" createdAt="2025/05/30 14:54:02" color="">}}




{{<matomeQuote body="これすごく面白いね（拍手）。主な目標の一つがTLA+と比べてもっとアプローチしやすくすることみたいだけど、それをC#で書くってのが、自分としては信じられないくらいアプローチしにくいコミュニティと言語だと思うんだよな。Microsoftファンボーイの怒りを買おうとしてるわけじゃないし、賢い人たちが取り組んでるのは確かだけど、ほとんどの人には無理だろうね。これがgolangとか、もしかしたらjavaだったら、もっとたくさんの人が掘り下げてただろうな！とはいえ、これが正確性や検証をもっと主流にする助けになることを願ってるよ。しばらくこのプロジェクトを casually フォローしてるんだ。自分の長期的な目標は、モデル検証を https://github.com/purpleidea/mgmt/ に統合することなんだ。もしこの分野に興味があるなら、教えてね！" userName="purpleidea" createdAt="2025/05/31 03:05:56" color="#ff5733">}}




{{<matomeQuote body="決定的なシミュレーションについて、AWSで広く使われている軽量な手法で、シングルスレッドのシミュレーターでランダム性を全部制御して実行するんだって。特定の障害とか成功シナリオのテストを書いて、システムの非決定性はテストフレームワークで制御できるらしい。マジですごいね！" userName="sebstefan" createdAt="2025/05/30 13:40:37" color="#45d325">}}




{{<matomeQuote body="Loom for Rustがこれをやってくれるよ。一部のC++でもうまく適用できて（テストやレビューをすり抜けた実際のバグを見つけた）、良い成果があったんだ。TLA+とかよりは低レイヤーで、証明にはならないけど、実際の実装をチェックできるからすごく便利だよ。https://github.com/tokio-rs/loom" userName="jeffreygoesto" createdAt="2025/05/30 13:51:03" color="#38d3d3">}}




{{<matomeQuote body="DSTは10年ちょい前にFoundationDBで広まって、関連情報はFDB論文（セクション4と6.2）にあるよ。2015年にStrange Loopでも話したんだ（ちなみに筆者だよ）。DSTを試したいなら、既存プロジェクトでも組み込みやすくするAntithesisって新しい会社があるから見てみて。質問あればどうぞ！" userName="wwilson" createdAt="2025/05/30 16:10:38" color="#38d3d3">}}




{{<matomeQuote body="Willさん、仕事とFoundationDBのファンです！でもDSTはFoundationDBだけで発明されたわけじゃないと思うな。例えばAWSのAlfサービスで2009年頃にテストに使われてたし、Al Vermeulenが導入に影響力あったよ。でもAnithesisはめっちゃクールで、システムの正確性に関する議論を変えてるの尊敬する！これはちょっとした補足ね。" userName="mjb" createdAt="2025/05/30 17:57:44" color="#ff33a1">}}




{{<matomeQuote body="Antithesisは推せるんだけど、DSTとか決定性技術には同時期（2009年頃）にMODISTとかUW発のCorensicみたいな前例があったんだ。CorensicはOSを決定的にするハイパーバイザー作ってたけど、商業的には厳しかったみたいでF5に買収されたって。でも新しいアイデアに拘りすぎず、こうやって昔のアイデアが再発見・進化するのは良いことだと思うよ。複雑なシステム扱ってると、結局モデル検査とか決定性みたいな似た考えに行き着くんだろうね。歴史たどるの楽しい！" userName="we6251" createdAt="2025/05/30 20:30:00" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
