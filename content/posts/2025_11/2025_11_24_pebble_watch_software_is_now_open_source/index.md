+++
date = '2025-11-24T00:00:00'
months = '2025/11'
draft = false
title = 'Pebble Watchソフト、ついにオープンソース化！'
tags = ["オープンソース", "Pebble", "スマートウォッチ", "ソフトウェア", "OS"]
featureimage = 'thumbnails/green3.jpg'
+++

> Pebble Watchソフト、ついにオープンソース化！

引用元：[https://news.ycombinator.com/item?id=46037626](https://news.ycombinator.com/item?id=46037626)




{{<matomeQuote body="分散システムでOSSコンプライアンスを扱う身としては、ここの純粋主義なコメントは本当に疲れるよ。ハードウェアは複雑だし、IPライセンスは地獄さ。たった数個のバイナリブロブで動くOSを出すのは、工学的にも法的にも大勝利なんだ。100%純粋だけど世に出ない理論上のシステムより、95%オープンで実際にハックできるシステムの方がずっといい。これを実現してくれたエリックに拍手だね。" userName="leo_e" createdAt="2025/11/25 12:56:09" color="#ff33a1">}}




{{<matomeQuote body="純粋主義なコメントをした一人として言うけどさ、実際はめちゃくちゃ簡単だよ。製品がほとんどオープンソースでも全然OK。自分でライセンスした一部のブロブを公開できないのも完全に理解できる。俺が言いたいのは、もし宣伝された機能を実際に提供するためにデバイス上のソフトウェアを100%出荷できないなら、それが100%オープンソースだって大々的に宣伝しないでほしいってことだけさ。" userName="yjftsjthsd-h" createdAt="2025/11/25 15:26:23" color="#ff5c5c">}}




{{<matomeQuote body="参考のために、リンク先の記事から関連部分を引用するよ。みんな、これでより多くの情報に基づいて判断できるはずさ。<br>PebbleOSとモバイルアプリにはバイナリブロブや非フリーなコンポーネント（PT2心拍センサー、Memfaultライブラリなど）が使われてるけど、これらは必須じゃないんだ。それらなしでもPebbleウォッチソフトウェアはコンパイル・実行できるし、コア部分は常にオープンソースだよ。" userName="drabbiticus" createdAt="2025/11/25 16:28:37" color="#38d3d3">}}




{{<matomeQuote body="もしバイナリブロブがファームウェアに組み込まれていて、出荷する必要がなかったとしたら、それでも100%オープンソースソフトウェアのデバイスだって言うかな？俺にはそんなに大きな違いがあるとは思えないんだけど。" userName="compsciphd" createdAt="2025/11/26 15:14:07" color="">}}




{{<matomeQuote body="それって別の問題じゃない？ハードウェア／ファームウェア／ソフトウェアの境界線や、どこでブロブが許容されるかについては議論してもいいけど、このケースではPebbleが出荷するソフトウェアにオープンソースじゃないものが含まれてるのに、見出しで100%オープンソースだと主張しているのは完全に間違いない事実だよね。" userName="yjftsjthsd-h" createdAt="2025/11/29 01:01:14" color="#ff33a1">}}




{{<matomeQuote body="彼らのスイートはオープンソースだけど、特定のハードウェアで動かすのに必要なものは完全にオープンソースじゃないってことだよね。例えば、ファームウェアのブロブなしで仮想Pebbleウォッチを動かすVMを作れるかな？それが彼らのソフトウェアがオープンソースじゃないって意味になるかな？俺は違うと思うよ。タイトルが言う『Pebbleウォッチソフトウェア』はオープンソースさ。" userName="compsciphd" createdAt="2025/11/29 19:27:18" color="#38d3d3">}}




{{<matomeQuote body="完全にオープンソースに近いAndroidリリースは、おそらくNexus oneの頃だったね。それでも9つくらいのプロプライエタリなブロブと、もっと悪いことにユーザースペースのサポートプログラムがあったんだ。たしかコンパスのキャリブレーションルーチンがうざかったのを覚えてる。全部、様々なチップや無線対応のためだったね。" userName="cdibona" createdAt="2025/11/25 13:59:44" color="">}}




{{<matomeQuote body="元Pebbleエンジニアとして、この投稿がようやく俺にプレオーダーさせる決め手になったよ。FOSS（Free and Open Source Software）万歳、もう俺の自由が制限されることは二度とない。喜んでお金を払うさ。" userName="lrvick" createdAt="2025/11/24 20:13:11" color="">}}




{{<matomeQuote body="マジでこれが最高の結末だね。複数のフィードをサポートするApp Storeって珍しいけど、大企業がダメになった時にすごく助かるんだよ。Rebbleのフィードも使えるし、別のものも自由に選べる。どのフィードを信じるかはエンドユーザーが決めるべきだし、それがアプリの基本設計だから、何かあっても切り替えが楽なんだ。" userName="zeta0134" createdAt="2025/11/24 19:46:48" color="#45d325">}}




{{<matomeQuote body="みんなにとって最高の結末だね！複数のリポジトリに対応してるから、F-Droid for Pebbleみたいなのができて、ソースからの自動ビルドができるといいな。Pebbleアプリはオープンソースが多いから、きっと相性も良いはず。" userName="infotainment" createdAt="2025/11/25 00:34:40" color="#38d3d3">}}




{{<matomeQuote body="アプリがKotlin Multiplatformなの全然言及されてないの、ちょっと意外だね。KotlinをiOSアプリに使ってる小規模なのは聞いたことあったけど、これほど大規模なKMPアプリは初めて見たかも。いつかPebbleアプリもKotlinで書けるようになったら最高だね。GitHubのURL: https://github.com/coredevices/mobileapp" userName="Larrikin" createdAt="2025/11/25 02:31:01" color="#38d3d3">}}




{{<matomeQuote body="Pebbleの時計はCortex-Mマイコンで動いてて、フラッシュとRAMが1MB未満なんだ。Kotlin Multiplatformは好きだけど、それらをPebbleで動かすのはまず無理だろうね。当面PebbleアプリはRustやC＼C++みたいな、MCUで伝統的に使われる言語でしか書かれないと思うよ。" userName="zorgmonkey" createdAt="2025/11/25 06:46:04" color="#785bff">}}




{{<matomeQuote body="Rustを「伝統的」って呼ぶのは、ちょっと言い過ぎだよ。確かに使われてるけど、かなり最先端の領域だからね（でも、メーカー提供のコードやライブラリを最初から使わないなら大丈夫だけど）。" userName="consp" createdAt="2025/11/25 07:19:33" color="#ff5c5c">}}




{{<matomeQuote body="こういう制約があるの、正直また見れて新鮮だな。俺のクラウドインフラの仕事（C++）だと「RAMは安い」って言って、コンテナを肥大化させちゃってたんだ。1MBに収まるように設計されたシステムを見ると、パフォーマンスエンジニアリングって昔は効率のことだったんだなって思い出すよ。単にハードウェアを増やすだけじゃなかったんだ。" userName="leo_e" createdAt="2025/11/25 13:03:07" color="#ff5c5c">}}




{{<matomeQuote body="これってちょっと笑えるね。ファームウェアエンジニアとして俺が普段やってるプロジェクトは512KBのフラッシュしかないのに、営業は常に新しい機能のリクエストをしてくるんだ。組み込みって、何ができるかと、どれだけできるかの楽しいバランスだよ、本当に。" userName="42days" createdAt="2025/11/25 20:15:20" color="#ff33a1">}}




{{<matomeQuote body="Pebbleのハードウェア視点からすると、これって意味不明だね。MS-DOS時代に640KBの制限内でC++アプリを開発できたんだから、CじゃなくてC++、Zig、Rustに移行できるようになったら最高なんだけどなぁ。" userName="pjmlp" createdAt="2025/11/25 08:38:20" color="">}}




{{<matomeQuote body="これに関する動画だよ: https://www.youtube.com/watch?v=UOQMDkCsCSw" userName="liampulles" createdAt="2025/11/25 07:53:26" color="#785bff">}}




{{<matomeQuote body="Ericのブログ記事からの情報だよ：「Kotlin Multiplatformを使って新しいクロスプラットフォームアプリをどう作ったか、もっと知りたい？DroidconでのSteveのプレゼンを見てね。」URL: https://youtu.be/UOQMDkCsCSw" userName="jhatax" createdAt="2025/11/25 17:09:28" color="#ff5c5c">}}




{{<matomeQuote body="Kotlinマルチプラットフォーム開発者として、これには感動！素晴らしいことだね。" userName="farmerbb" createdAt="2025/11/25 02:45:11" color="">}}




{{<matomeQuote body="これは貴重だよ。多くのテック企業がIBMみたいに顧客を囲い込み、競合を排除しようとする中で、Pebbleはウェアラブル市場で奮闘してる。GoogleやMicrosoft、AWS、Appleなんかが囲い込み戦略をとる中、Pebbleはユーザーの情熱でFitbitより生き生きとしてるんだ。PT2が来るのが楽しみ！これで5個目になるよ。" userName="diego_moita" createdAt="2025/11/24 19:56:19" color="#785bff">}}




{{<matomeQuote body="今まさに新しい白いPebbleを着けてるんだけど、オープンソースでの復活がすごく嬉しい！ギークでシンプルな時計が欲しいなら、これ以上ないくらいおすすめだよ。バッテリーの持ちと常時表示スクリーンだけでも、この価格なら十分すぎる。Eric、Pebbleをこんな形で復活させてくれてありがとう！" userName="amwehrli" createdAt="2025/11/24 19:37:08" color="#45d325">}}




{{<matomeQuote body="ソフトウェアの自由を愛する者としては、PebbleOSにプロプライエタリなブロブが含まれていることに注意すべきだね。これはファームウェアだけでなく、メインコアで動く.aライブラリにもあるらしい。OpenDevicesにはアクセス権がないコードみたいだけどね。詳細はこちら: https://github.com/coredevices/pebbleos-nonfree/tree/57a94e2..." userName="mid-kid" createdAt="2025/11/24 23:09:30" color="#785bff">}}




{{<matomeQuote body="完全にオープンソースってわけじゃないんだね。情報ありがとう。" userName="paxcoder" createdAt="2025/11/24 23:11:43" color="">}}




{{<matomeQuote body="ある程度の複雑さを持つハードウェアで、100％オープンソースのものなんて基本ないよ。PinephoneもLibremもFrameworkのノートPCも、完全にオープンソースってわけじゃないからね。" userName="gf000" createdAt="2025/11/25 07:37:17" color="#38d3d3">}}




{{<matomeQuote body="まあ、Pebbleの主要部分はオープンソースなんだよ。これはハードウェアメーカーがオープンソース化に乗り遅れている、残念な現状だね。" userName="ddlsmurf" createdAt="2025/11/25 06:03:18" color="">}}




{{<matomeQuote body="ちなみに、これがオープンソースハードウェアがあまり多くない理由の一つだよね。みんな、どんどん非現実的な要求をするから、部分的にでもオープンソースな解決策を受け入れないんだ。" userName="pjc50" createdAt="2025/11/25 09:40:32" color="#38d3d3">}}




{{<matomeQuote body="記事から引用するね。<br>「PebbleOSとモバイルアプリにはバイナリブロブや非フリーソフトウェアが使われてる（PT2の心拍センサーやMemfaultライブラリなど）。Wispr-flow APIのようなオプションの非フリーウェブサービスもね。これらは必須じゃなく、これらなしでPebbleソフトウェアをコンパイル・実行できる。これは常にそうなるし、コア部分は常にオープンソースだよ。」って書いてある。でも「100%」って言うなら、本当に100%であるべきだよね。" userName="paxcoder" createdAt="2025/11/25 06:17:31" color="#45d325">}}




{{<matomeQuote body="「Reflections on Trusting Trust」を読んでみて。バイナリブロブが散らばってるのが、いかに大きな問題か理解できるから。難しい問題だからって、見て見ぬふりをするわけにはいかないよね。" userName="user3939382" createdAt="2025/11/25 10:38:51" color="#45d325">}}




{{<matomeQuote body="マルウェアを仕込むのが超簡単だから、政府はメーカーにオープン化を要求すべきだよ。メーカーが仕込むスパイウェアは、他国のユーザーが検出するのってめちゃくちゃ難しいんだ。ビジネス的には無理だけど、理想はそうじゃないよな。<br>" userName="squarefoot" createdAt="2025/11/25 07:45:08" color="#45d325">}}




{{<matomeQuote body="Precursorは完全にオープンソースだよ。詳細はここを見てね: https://www.crowdsupply.com/sutajio-kosagi/precursor<br>" userName="fsflover" createdAt="2025/11/25 09:22:50" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="人間の言葉は数学みたいにはっきりしないよ。「オープンソース」がハードウェアで何を示すのかって、コンセンサスないよね？ファームウェアだけ？それともチップのフロアプラン全部？この言葉はハードウェアには合わないから、Pebble Watchの「100%オープンソース」って使い方は正しいと思うな。だって、一部の「オープンハードウェア」のマーケティングは誤解を招くもん。<br>" userName="gf000" createdAt="2025/11/25 08:19:08" color="#785bff">}}




{{<matomeQuote body="強制じゃなければ100%オープンソースって言えるでしょ。そうじゃないなら、Debianだって100%フリーソフトウェアじゃないってことになるよ。<br>" userName="darkwater" createdAt="2025/11/25 07:21:02" color="">}}




{{<matomeQuote body="Debianは100%オープンソースとは宣伝してないよ。MainとContribはDFSGガイドラインに従ってるけど、非フリーのリポジトリもあるんだ。ファームウェアはややこしい問題だよね。俺は100%フリーなファームウェアが好きだけど、企業はまだそこまでオープンにする勇気がないみたいだね。<br>" userName="bayindirh" createdAt="2025/11/25 07:41:57" color="#ff33a1">}}




{{<matomeQuote body="詳しくはこちらを見てね: https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_Ref...<br>一般的には、自分で書かなかったコードは信用できないから、書いた人を信用できる必要があるって言われてるんだ。これが今の技術状況にどう当てはまるかは、自分で考えてみてね。<br>" userName="0xEF" createdAt="2025/11/25 10:48:07" color="#ff5733">}}




{{<matomeQuote body="Intelのプロセッサには全部、クローズドソースのIMEが入ってるんだけど、あれって多分NSAのバックドアだよね。<br>" userName="RobotToaster" createdAt="2025/11/25 09:16:01" color="">}}




{{<matomeQuote body="違うよ。ほとんどのICとかコンポーネントはオープンじゃないんだ。特にXilinx XC7S50 FPGAとかね。でも、他のどの携帯電話よりもずっとオープンなのは確かだよ。<br>" userName="rowanG077" createdAt="2025/11/25 10:16:46" color="">}}




{{<matomeQuote body="ハードウェアメーカーは、IPブロックのライセンスとか、サードパーティ製ソフトウェアのせいで、まるで秘密機関みたいにエコシステムをがっちり管理してるんだ。ビジネス上の理由とか、昔からのやり方とか、計画的陳腐化で新しい製品を出すためってのは分かる。でも、周辺のソフトウェアがクローズドソースなら、たとえオプションでも「100%オープンソース」って言うのは不公平だし、倫理的じゃないよ。オープンコアって言うなら公平で納得できるけど、「100%オープンソース*」って書くのは誤解を招くよね。<br>" userName="bayindirh" createdAt="2025/11/25 07:38:54" color="#38d3d3">}}




{{<matomeQuote body="「バイナリブロブがいらない」ってのがまずスタート地点じゃない？" userName="f1refly" createdAt="2025/11/25 09:06:26" color="">}}




{{<matomeQuote body="企業はどんどん機能を閉鎖的なファームウェアに移して、ドライバーみたいな薄いラッパーだけを「オープンソース化」するんだよな。それってだいたい使い物にならないし、暗号化とか商標とか特許でがんじがらめになってるし。" userName="aallaall" createdAt="2025/11/25 11:48:39" color="#ff33a1">}}




{{<matomeQuote body="みんな怒ってるみたいだけど、個人的には「彼らが作った／管理してるものが全てオープンソース」なら十分。特に閉鎖的な部分がオプションなら、閉鎖的なものでも使える柔軟性は大事だよね。何が問題なのか不明だな。これは最高のレベルだよ。「100%」って言い方は不適切だったかもだけど、詐欺的じゃない。ハードウェア企業がIPを盗まれるのを警戒する気持ちもわかる。" userName="ddlsmurf" createdAt="2025/11/26 18:34:11" color="#785bff">}}




{{<matomeQuote body="意外だね。ハードウェア自体が彼らの主要な参入障壁になると思ってたんだけど。" userName="bloppe" createdAt="2025/11/25 07:31:14" color="">}}




{{<matomeQuote body="あの論文で指摘されてるのは、自分でコードを書いてもコンパイラすら信用できないってこと。これは強い意見だと思うよ。みんなが実行前に全ソースコードを監査するのは現実的じゃないからね。もっと現実的になろう。脅威モデルを理解して、誰を信用するか決めて、人生のもっと大事なことに進むんだ。ちなみに俺はフリーソフトウェアの推進派だよ。" userName="kchr" createdAt="2025/11/25 13:26:42" color="#ff5733">}}




{{<matomeQuote body="Minixってオープンソースじゃないっけ？" userName="aallaall" createdAt="2025/11/25 11:39:33" color="">}}




{{<matomeQuote body="みんながこの件で「細かすぎる」って言われるのは、将来的にプロプライエタリなブロブの持ち主がお金を請求したり、変なライセンスを押し付けたりして、ひどい目に遭う可能性があるからだよ。" userName="123pie123" createdAt="2025/11/25 10:13:58" color="#ff5733">}}




{{<matomeQuote body="細かいことは気にしないけど、これだけは譲れない。コードを全部読めず、自由に改変できないなら真のオープンソースじゃない。オープンソースは自分の価値観とセキュリティを合わせるためだから、閉鎖的な部分があると評価できない。他人がクローズドソース製品を使うのは気にしないし、俺も初代Pebbleユーザー。ただ、明確に定義された用語が不適切に使われるのが気に食わない。「部分的にオープンソース」って意味の言葉がそろそろ必要だと思うんだ。" userName="0xEF" createdAt="2025/11/25 10:41:02" color="#45d325">}}




{{<matomeQuote body="個人的には、iWatchやGarminよりはるかに100%に近いと思うよ。" userName="wafflemaker" createdAt="2025/11/25 08:03:04" color="">}}




{{<matomeQuote body="オープンシリコンは、ボードの修理や代替部品を使った再設計を可能にするオープンハードウェアの回路図や部品表（BOM）よりも、はるかに大きな進歩だよ。今作れる中で最もオープンなパーソナルコンピューティングデバイスはPrecursorだね。" userName="lrvick" createdAt="2025/11/25 11:03:46" color="#ff33a1">}}




{{<matomeQuote body="セキュリティ的に見ると、バイナリブロブがなくてもハードウェアバックドアは簡単に仕込めるからね。あと、もしファームウェアが書き換えられないなら、将来のメンテナンスやバグ修正ができなくなるのは困るかも。何の話かにもよるけど。もし署名検証とかあったら、iPhoneの画面みたいに、純正かどうか分かる仕組みとかだと、もっと複雑になるだろうね。" userName="gf000" createdAt="2025/11/25 09:14:55" color="#ff33a1">}}




{{<matomeQuote body="その理屈だと、Linuxカーネルだってオープンソースじゃないってことになっちゃうよ。もう少し現実的に考えようよ。" userName="bytesandbits" createdAt="2025/11/25 11:41:32" color="">}}




{{<matomeQuote body="彼らはPebble Watchのソフトウェアは100%オープンソースって言ってたんだよ。バイナリブロブは他の人たちのソフトウェアだから、Pebble Watchのソフトウェアとは別物でしょ。" userName="Wowfunhappy" createdAt="2025/11/25 11:05:36" color="">}}




{{<matomeQuote body="“完全なオープン”って話になると、オープンハードウェアを超えちゃうよね。PrecursorはオープンソースのツールをしっかりサポートするFPGAを使えば、もっと先に進めるはず。オープンなFPGAを製造するのは不可能じゃないけど、かなり大変で高価だよ。Precursorはかなり頑張ってるけど、現状で可能な限りではないね。" userName="rowanG077" createdAt="2025/11/25 11:16:27" color="#ff5c5c">}}




{{<matomeQuote body="まさかKiCadで現代のハードウェア設計を見られるなんて、初めてだよ。すごくクールだね！6層基板とか、ペースト層、接着層まで全部見れたのもすごい。昔から、どうやって作ってるんだろう、KiCadで大きなプロジェクトもできるのかなって疑問だったんだ。YouTubeにあるエミュレーターとかカスタム基板のシングルレイヤーPCBに比べたら、めちゃくちゃ大変そうに見えるね。これ見て、自分には無理だって確信したよ。" userName="mkhalil" createdAt="2025/11/24 20:44:23" color="">}}




{{<matomeQuote body="ペースト層とか接着層は、KiCadが製造出力の一部として自動で出してくれるんだよ。Altiumみたいな他のEDAパッケージとほぼ同じ仕組みだよ。自分でフットプリントを設計しない限り、これらの追加レイヤーを生成するのに余計な作業はほとんどないからね。多層PCBを作るのも、最近は驚くほど手頃になったから、時間さえかければ君にもきっとできるよ！" userName="leoedin" createdAt="2025/11/25 07:53:13" color="#ff33a1">}}




{{<matomeQuote body="Reform laptopプロジェクトは、オープンハードウェアの素晴らしい例だよ。 https://source.mnt.re/reform/reform <br>見てみるのをオススメするよ。KiCadでそのレベルの技術に到達するのは挑戦的だけど、不可能ではないと思うな。" userName="k1musab1" createdAt="2025/11/25 13:47:50" color="#45d325">}}




{{<matomeQuote body="何のプロジェクトアイデアによるけど、ハードウェア開発初心者で、俺は自分のEurorackモジュールの小さなアイデアを開発してて、flux.aiでかなりうまくいってるよ。5枚のPCBを200ドル以下でプリントできたんだ。" userName="drunkonvinyl" createdAt="2025/11/25 07:11:57" color="">}}




{{<matomeQuote body="アプリがオープンソース化されたのは素晴らしいね！いつかF-Droidで配布されるといいな！<br>アプリのリポジトリを選べるようになったのも、ものすごく良い進化だよ。Rebbleに不満は全然ないけど、選択肢が増えて、もっとオープンになるのは常に良いことだよね！" userName="Pfhortune" createdAt="2025/11/24 20:18:51" color="#ff5c5c">}}




{{<matomeQuote body="これはすごい！再出発の方法として完璧だね。2013年の最初のリリースからPebbleユーザーで、全部ダメになったときは本当に悲しかったんだ。その経験でスマートウォッチに嫌気がさして、今はCasioをつけてるよ。これでPebbleに戻れるかもだけど、通知と距離を置くことの良さが分かっちゃったから、正直魅力は下がったかな。" userName="tylervigen" createdAt="2025/11/25 00:22:57" color="">}}




{{<matomeQuote body="ほとんどのスマートウォッチは電源を切れるし、スマホもそうだね。ゲーム的な要素や通知（例えば今日は昨日より5度寒いとか）は好きだな。" userName="jwpapi" createdAt="2025/11/25 00:27:12" color="">}}




{{<matomeQuote body="Rebbleが今日出した新しい投稿がこれだよ：https://rebble.io/2025/11/24/rebble-in-your-own-world.html。App Storeの複数フィード対応には触れてないし、Ericに行動を促してるみたいだけど、これら二つの投稿がこんなに近い時期に出るのは偶然の一致とは思えないな。" userName="DrammBA" createdAt="2025/11/24 20:22:31" color="#785bff">}}




{{<matomeQuote body="これを投稿してくれてありがとう！先週の騒動がどうなったのかの答えになったよ。IMO、RebbleはEricの行動について早とちりし、騙されたと感じてたようだね。Ericがすべてをオープンソース化するために尽力しているのを見ると、彼はPebbleの最初の約束を果たそうとしているんだと感じるよ。RebbleがPebbleコミュニティを存続させたのは素晴らしいし、彼らが不満を感じるのも理解できるけど、もしエゴを排除すれば、Ericのしてることは最高の結末じゃないかな？新しいPebbleデバイスを手に入れられるんだからね。" userName="niwtsol" createdAt="2025/11/24 20:56:18" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞Ericのしていることは最高の結末<br>少し訂正させてね。Ericが投稿したWhatsAppのスクリーンショットは、相手側（たしかRebbleのメンバーだったはず）にとって問題があったみたいだよ。彼は、スクリーンショットの苦情が文脈を無視されていると付け加えたんだ。Pebble（かRebble？）のsubredditにその詳細があるから、興味があれば読んでみて。いつものことだけど、真実は中間にあるようで、悪意よりも誤解のように見えるけど、全体的に少し残念だな。" userName="user_7832" createdAt="2025/11/25 04:58:17" color="#ff5c5c">}}




{{<matomeQuote body="これは、僕らが大好きなテクノロジー開発につきもののメロドラマ的な劇場と捉えてるよ。Linuxの歴史もこうした瞬間に満ちていて、時が経つにつれて平穏な時と混沌の時があるんだ。願わくは、エンドユーザーが好きなテクノロジーやソフトウェアを楽しめる日がさらに続くことを祈るよ。これは僕たち人間の物語の一部だね。" userName="trueno" createdAt="2025/11/25 09:30:42" color="#45d325">}}




{{<matomeQuote body="うーん。IMO、公に（そして今となっては誤ってだと分かってるけど）誰かを犯罪で告発し、ブログ記事で法的措置をちらつかせるようなら、道徳的な高みを主張するのは難しいと思うよ。" userName="Valodim" createdAt="2025/11/25 07:08:15" color="">}}




{{<matomeQuote body="同意だね——もし誰かが君を嘘つき呼ばわりしたり盗んだと公然と非難するなら、その疑惑に対する証拠を投稿するのは全く合理的だと思うよ。" userName="infotainment" createdAt="2025/11/25 21:01:51" color="">}}




{{<matomeQuote body="この一連の出来事を通じて、Rebbleは自分たちが何を望んでいるのか分かっていないように感じるよ（彼ら自身もそう言ってるし）。Ericとの将来の協力も、彼らが何を望んでいるのか不明瞭に聞こえるな。彼らは何かについて第三者の仲介者を求めてる。Ericはすでにユーザーごとに支払う準備ができていたし、最初から寛大だと感じたよ。Rebble（ボードとコミュニティ）は、これ以上時間と誠実な交渉資本を無駄にしないためにも、進める前に自分たちが何を望んでいるのかを明確にするべきだと思うな。以前のユーザーごとの支払いレートに不満があるのかな？それとも何か別のこと？" userName="jpalawaga" createdAt="2025/11/24 20:59:44" color="#ff5733">}}




{{<matomeQuote body="僕には、Rebbleが実際に他の企業と長期的な取引を交渉し、それに伴うあらゆる試練を乗り越える立場にある組織ではないという事実を示しているように見えるね。それは彼らを批判しているわけでも驚くことでもないよ。これまでの彼らの責任は、オープンソースソフトウェアのコアセットを維持することだったんだから。緩く構成された統制構造は、そのタスクには完全に適切だった。しかし、会社を代表する一人の人物を交渉に連れてくる代わりに、それぞれが独自の考えや関心、コミットメントのレベルを持つ多数の人間がいて、そのプロセスに不満があれば一部の人がコミュニティ行動に訴えるような状況では、うまくいかないんだ。" userName="liampulles" createdAt="2025/11/24 21:41:51" color="#ff5c5c">}}




{{<matomeQuote body="Rebble（ボード）は本当に手を打ちすぎたようだね。彼らが投稿した内容からすると、Coreの活動にもっとコントロールを持ちたがっていて、そのための最善策がApp Storeのデータを人質に取ることだと判断したみたいだ。今やCoreアプリがオープンソース化され、複数のApp Storeリポジトリがサポートされているから、彼らが現状に満足していれば得られたはずのRebbleの立場は、大幅に低下するだろうね。でも結局のところ、結果としては皆にとっての純粋な勝利（完全にオープンソース化されたアプリ）になったから、これでうまくいくんじゃないかな。" userName="infotainment" createdAt="2025/11/25 00:40:50" color="#785bff">}}




{{<matomeQuote body="Discordで彼らと話したんだけど、PebbleOSが自分たちのためだけにリリースされたと信じ込んでて、コードを”盗まれた”と感じてるみたいだ。バカげてるけど、それが彼らの行動を説明する一番の理由だね。友達としてPebbleOSをいじる計画が、Ericが有料開発者の会社を立ち上げたことで水の泡になったから、今喪失の五段階を経験してるんだよ。みんなPebbleの復活を祝ってるのにね。" userName="jamesbelchamber" createdAt="2025/11/25 11:05:01" color="#38d3d3">}}




{{<matomeQuote body="彼らが喪失の五段階を経験してるなんてとんでもない！彼らは自分たちの誤解で他人を攻撃して、評判を台無しにしたんだよ。" userName="thoroughburro" createdAt="2025/11/25 13:04:56" color="">}}




{{<matomeQuote body="俺も彼らのDiscordを見てたけど、君の分析はまさに的を射てると思う！" userName="infotainment" createdAt="2025/11/26 23:06:32" color="">}}




{{<matomeQuote body="完全に180度変わったのが衝撃だね。”Core Devicesが盗んでるし全部ひどい、要求するぞ”って言ってたのに、”実は最初から全部大丈夫だったよ、誤解してごめん”ってさ…" userName="lanyard-textile" createdAt="2025/11/25 15:21:27" color="">}}




{{<matomeQuote body="Ericの投稿でRebbleが一度だけしか言及されてないね。最初はゼロかと思ってたよ！Eric、よくやった。" userName="Lord_Zero" createdAt="2025/11/25 05:55:09" color="">}}




{{<matomeQuote body="裏蓋がネジで外れてバッテリー交換できるのは嬉しいね。防水性が気になるんだけど、それで大丈夫かな？バッテリー以外にガスケットとか他の部品も交換する必要があるのかな？" userName="apparent" createdAt="2025/11/24 19:17:56" color="">}}




{{<matomeQuote body="時計は”water resistant”と記載されてて”waterproof”じゃないよ。Time 2については分からないけど、Pebble 2 Duo（同じ耐水性等級）についてはEricがブログ（https://ericmigi.com/blog/pebble-2-duo-is-in-mass-production）で書いてるね。水泳や熱いシャワー、高圧の水には晒すべきじゃないって。主に偶発的な水しぶきからの保護用みたいだね。" userName="ndiddy" createdAt="2025/11/24 21:18:07" color="#ff33a1">}}




{{<matomeQuote body="確かに、でも彼は”it is waterproofed”（[1] https://www.youtube.com/watch?v=KTlRBI2QCzM）って言ってるよ。このレベルの耐水性（IPX8、水深1mで30分）を指す一般的な言い方なんだ。熱いシャワーは避けるべきだけど、IPX8なら偶発的な水しぶきに”water resistant”なだけじゃないはずだ。" userName="apparent" createdAt="2025/11/24 22:50:11" color="#ff5733">}}




{{<matomeQuote body="動画の中の緑色のものがガスケットだよ。再利用できるはずだけど、防水の世界では何も保証されてないからね。" userName="erohead" createdAt="2025/11/24 19:19:08" color="">}}




{{<matomeQuote body="Pixel Watch 4のこういうアプローチ、すごく好きだな：https://www.ifixit.com/News/113620/the-pixel-watch-4-is-the-..." userName="ortusdux" createdAt="2025/11/24 19:45:03" color="">}}




{{<matomeQuote body="これ、めちゃくちゃすごい技術的偉業だね！" userName="erohead" createdAt="2025/11/24 20:28:43" color="">}}




{{<matomeQuote body="興奮するけど、Android Wear OSで脱Googleじゃないのが残念。<br>セキュリティ更新も3年じゃ短いよ。Pebble Time 2はバッテリー交換できるのは良いね。僕のPebble 2はボタン修理に失敗して悲しかったな。Pebble 2は無線オフにできたのは良かったけど、HRは使えなかったな。HRの質を求めるならGarminかApple Watchだね。" userName="Fnoord" createdAt="2025/11/24 21:46:28" color="#785bff">}}




{{<matomeQuote body="昔Pebbleをいくつか持ってたよ。すごく気に入ってたから、復活したら嬉しいな！Pebbleがダメになってから仕事でApple Watchをもらったんだけど、これもかなり良いね。通知はたくさんオフにしてるけど、時間や天気、軽い運動記録に使ってるよ。" userName="phatskat" createdAt="2025/11/25 08:04:26" color="">}}




{{<matomeQuote body="Pebbleが最近iOSで動くようになったらしいけど、僕はiOSじゃなくてAOSPベースのOSを使ってるから、Apple Watchは選択肢にないんだよね。バッテリー寿命とバッテリー交換できるかどうかも、僕にとってはすごく大事なポイントだよ。" userName="Fnoord" createdAt="2025/11/26 01:26:50" color="">}}




{{<matomeQuote body="Pebble Time 2のデザインは正直イマイチだなって思うけど、ネジ止めで組み立てられるのはめちゃくちゃ魅力的だから、一つ買っちゃいそうだな。昔のPebbleもぶっちゃけダサかったけど、個人的にはもっと実用的な感じがして好きだったんだ。" userName="daemonologist" createdAt="2025/11/24 20:01:57" color="">}}




{{<matomeQuote body="最近の騒動を受けて、Pebbleは二つの大きな変更をしたみたいだね。一つはコンパニオンアプリが完全にオープンソースになったこと。これでCoreがダメになってもコミュニティがサポートを続けられる。もう一つは、複数のアプリストアに対応して、Coreも独自のストアを維持すること。これはRebbleを満足させるためだろうね。全体的に良い方向への進歩だと思うよ。" userName="lawn" createdAt="2025/11/24 19:35:26" color="#785bff">}}




{{<matomeQuote body="次のPebbleのロットが出たら一つ買う予定だよ。Pebbleが戻ってくる前は、知ってる限り唯一のオープンなスマートウォッチだったPineTimeを毎日使ってInfinitimeを動かしてたんだ。またPebbleを手に入れて、PineTimeと行き来できるのが楽しみだな！Ericとチーム、素晴らしいね。" userName="rav3ndust" createdAt="2025/11/25 07:03:54" color="#38d3d3">}}




{{<matomeQuote body="あと1〜2年もすれば、Casioのミドルレンジくらいの価格でPebbleのクローンがゴロゴロ出てくるのが楽しみだな。Valveのハードウェア発表と合わせて、これは既存のハードウェアメーカーに対する結構な一撃だよね。" userName="RobKohr" createdAt="2025/11/25 06:02:39" color="#38d3d3">}}




{{<matomeQuote body="これが見られるのは最高だね！個人的にはめちゃくちゃワクワクするよ。ユーザーを尊重し、ハッカーに優しいハードウェアが本当に少ない中で、Pebbleのこの姿勢はすごく心温まるね。今日二つ買うよ（自分用と妻用）！" userName="freedomben" createdAt="2025/11/24 19:50:17" color="#38d3d3">}}




{{<matomeQuote body="特に付け加えることはないけど、再ローンチ本当におめでとう！死んだ状態から復活させただけでなく、多くの企業が夢見るようなやり方でやったのはすごいね。僕はちょうどApple Watchを買ったばかりだけど、これは本当に魅力的だよ。" userName="ericd" createdAt="2025/11/25 00:10:54" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
