+++
date = '2025-02-20T00:00:00'
draft = false
title = 'Rustで新しいコードを書くことは皆にとっての勝利！Greg K-Hが語るその理由とは？'
tags = ["Rust", "プログラミング", "ソフトウェア開発", "オープンソース", "技術トレンド"]
featureimage = 'thumbnails/blue2.jpg'
+++

> Rustで新しいコードを書くことは皆にとっての勝利！Greg K-Hが語るその理由とは？

引用元：[https://news.ycombinator.com/item?id=43101204](https://news.ycombinator.com/item?id=43101204)

{{<matomeQuote body="Linusの反応がこの文脈に関連してる気がするよね。" userName="lazypenguin" createdAt="2025-02-21T02:40:52" color="">}}

{{<matomeQuote body="Linusの返事は素晴らしいトーンで、問題が解決することを期待してる。彼は自分の主張をしっかり伝えつつも、Christophの懸念に対しても敬意を持って対応してるから、LinuxのメンテナコミュニティとRustを使う貢献者たちが協力できることに希望が持てるよ。" userName="thesuperbigfrog" createdAt="2025-02-21T02:54:51" color="#45d325">}}

{{<matomeQuote body="返答はChristophの懸念には言葉で答えてるけど、実際にはかなりの調整が必要になると思う。Cの変更でRustのバインディングが壊れた場合はRust側が直さないとダメみたいで、CメンテナはRustのことを気にしなくていいってことでしょ。でもCだけの変更で全体が壊れるPRがメインラインにマージされるのは難しそう。" userName="j16sdiz" createdAt="2025-02-21T05:25:20" color="">}}

{{<matomeQuote body="＞ rust folks should fix the rust binding when C changes breaks the binding<br>これが長期的にどう機能するのか理解できない。壊れた部分がある状態でカーネルをリリースするとか無理じゃない？Rustの人たちが直さないといけないか、Cの変更を見送らなきゃいけないし、ユーザーはカーネルアップデート後にドライバが動かなくなったら困るよね。" userName="Tomte" createdAt="2025-02-21T05:57:55" color="#45d325">}}

{{<matomeQuote body="Linuxカーネルの開発プロセス知ってる？機能は二週間のマージウィンドウでしかマージできないし、その後の八週間は修正だけしか受け入れられないから、その間にRustのバインディングは直せると思うよ。" userName="sanxiyn" createdAt="2025-02-21T06:05:14" color="">}}

{{<matomeQuote body="八週間の間にRustの開発者が時間や興味を持てなかったらどうするの？実際には無理ってわけじゃないけど、厳しいルールにするのは難しいと思う。" userName="Tomte" createdAt="2025-02-21T06:07:57" color="">}}

{{<matomeQuote body="カーネル開発に詳しくないけど、Cのコードと何が違うの？インターフェースが変わったら、使ってる人は壊れるよ、RustでもCでも結局調整が必要なんじゃない？メンテナが自分のコードのすべての使い方を直すのが普通ってのは、スケールしない気がする。" userName="Lutger" createdAt="2025-02-21T09:46:05" color="">}}

{{<matomeQuote body="Linuxカーネルみたいなプロジェクトでは、実際の破壊的な変更はとても稀だから注意が必要。数年分のデバイスドライバがそのAPIに依存してる場合、壊すことはできなくて新しいバージョンを導入することになる。" userName="swiftcoder" createdAt="2025-02-21T10:22:28" color="#ff5c5c">}}

{{<matomeQuote body="それは違う。内部APIはすぐに変わることが多いんだ（例えば、引数を追加するなど）。外部のドライバが最新のカーネルで動かないのを試してみればわかるよ。" userName="cozzyd" createdAt="2025-02-21T10:58:51" color="">}}

{{<matomeQuote body="もちろん、引数を追加するような単純な機械的な変更の場合、Rustのバインディングの変更も簡単だよ。全く知らないハードウェアのドライバコードをいじってるときに、例えば<br>quaff(something, 5, Q_DOOP) ... を quaff(something, 5, 0, Q_DEFAULT | (Q_DOOP << 4)) にするような感じ。これならCプログラマでもRustバインディングを調整できる気がする。" userName="tialaramex" createdAt="2025-02-21T13:18:40" color="#ff5c5c">}}

{{<matomeQuote body="もし運転コードを見ていて、実際に見たことないハードウェアのいじくり方を半時間もかけて学ぶことになったら、まさにその通り。> Isn’t the point of Coccinelle that you don’t have to spend time walking through (C) driver code you’ve never heard of? ”の言いたいことは同感だわ。" userName="mananaysiempre" createdAt="2025-02-21T23:30:47" color="">}}

{{<matomeQuote body="もしカーネルが壊れたRustでリリースされるなら、そのポリシーへの対応に驚いたりするなよ。" userName="sanxiyn" createdAt="2025-02-21T06:09:54" color="">}}

{{<matomeQuote body="数年後、Rustで書かれたデバイスのドライバが新しいカーネルで使えなくなることを考えると心配だ。Rustが第二級市民として扱われ続けるなら、それも受け入れざるを得ないかもしれない。" userName="Tomte" createdAt="2025-02-21T06:14:58" color="">}}

{{<matomeQuote body="＞ At least for Debian, all you need to do if you hit such a case is to simply go and choose the old kernel in the Grub screen. ”古いカーネルをGrubで選ぶだけならいいけど、もっと面倒くさいことがあるのも事実だよ。" userName="mschuster91" createdAt="2025-02-21T08:14:52" color="">}}

{{<matomeQuote body="そんなワークフローを提案するつもりじゃないよね、さすがに。" userName="account42" createdAt="2025-02-21T10:50:53" color="#785bff">}}

{{<matomeQuote body="Rustのコードがまだデフォルトでビルドされないようにすれば、問題は起こりがちだけど、基本的にはRustが全力でサポートされる言語になるまではそれでいいんじゃない？" userName="kelnos" createdAt="2025-02-21T06:10:19" color="">}}

{{<matomeQuote body="＞ No Rust code is built unless CONFIG_RUST is on, and it is off by default. ”CONFIG_RUSTがオフならRustのコードはビルドされないから、当面は問題ないってことじゃない？" userName="sanxiyn" createdAt="2025-02-21T05:45:16" color="">}}

{{<matomeQuote body="理論上はそうだけど、最近のNova NvidiaドライバがRustで書かれると、重要になること急増するよね。それでも、ポリシーが変わらなくてもそれは悪くないと思うよ。" userName="robinei" createdAt="2025-02-21T07:27:17" color="">}}

{{<matomeQuote body="Linusが強く意見を主張する数少ない人が一人だということ。ただ、会話の進行を制御することとはまた違う認識を持っているのが素晴らしい。" userName="nxobject" createdAt="2025-02-21T03:33:18" color="#45d325">}}

{{<matomeQuote body="「技術的に尊敬しているし、一緒に働くのが好きだ。 」って言いながら、強気で言う姿勢が昔とは全然違うのがすごくいい感じ！" userName="SeanAnderson" createdAt="2025-02-21T03:38:38" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="印象として、彼のキャラクターの核心にはいつもこれがあったと思う。ただ、それを文章にするのを学んだのかな。対照的に、状況に応じて模範的なキャラクターを演じる人たちもいるけど、実際には裏では復讐心に満ちて毒々しい場合がある。" userName="atq2119" createdAt="2025-02-21T03:52:25" color="">}}

{{<matomeQuote body="LinusはRustがあまり好きじゃないか、少なくともPro-Rustではないと思ってたけど、実際には彼の近くのスタッフがかなりRust推しだから、内核でもRust実験が始まった感じ。最近の反応を見てると、Rusted Linuxは避けられない流れだね。彼はPro-Rustだ。" userName="ksec" createdAt="2025-02-21T03:16:57" color="">}}

{{<matomeQuote body="最初からそう思う必要はなかったはず。実験が始まったのは、彼が試してみたいと思っていて、ある程度の支持があったから。彼の動機についてはかなり喋ってるしね。" userName="dralley" createdAt="2025-02-21T05:30:16" color="#ff5733">}}

{{<matomeQuote body="彼はC++を排除するのに困ってなかったよね。" userName="Symmetry" createdAt="2025-02-21T13:42:07" color="">}}

{{<matomeQuote body="CとRustの利点を比較したら、CとC++の比較よりもずっと影響が大きいと思う。" userName="miohtama" createdAt="2025-02-21T14:03:23" color="">}}

{{<matomeQuote body="Linux Foundationの企業スポンサーからRustを進める相当な圧力がかかってると思うよ。Google、Microsoft、AWSなんかも含まれてる。" userName="the_duke" createdAt="2025-02-21T06:16:08" color="">}}

{{<matomeQuote body="圧力はあちこちから常にかかってる。何かがOSの置き換えをするリスクがあるからね。C++の普及に関しては、Linusはその流れが限られてるのを見極めて、リスクがほとんどないと判断したんだと思う。<br>ただ、Rustに関してはそうはならない。" userName="snailmailstare" createdAt="2025-02-24T12:13:07" color="">}}

{{<matomeQuote body="少なくともGoogleはAndroidでRustベースのLinuxコードを実際に使用して展開してる。大きなLinux Foundationのメンバーは公には知られていない影響力を持ってると思うよ。" userName="the_duke" createdAt="2025-02-25T10:18:44" color="#ff5733">}}

{{<matomeQuote body="Rusted Linuxは「避けられない」理由があって、なぜならRustは客観的に良い言語だから。Cに比べても設計が多くの言語の欠点を修正してるし。" userName="tonyhart7" createdAt="2025-02-21T06:02:45" color="#785bff">}}

{{<matomeQuote body="本当の理由は昔の5時間かかるカーネルコンパイルへの思いなんじゃないかな。" userName="smidgeon" createdAt="2025-02-21T09:24:30" color="">}}

{{<matomeQuote body="なんでそういうの？古いシステムにはRustツールチェインがないかもしれないし、将来出てくるアーキテクチャはどうなるの？" userName="billfruit" createdAt="2025-02-21T04:08:02" color="">}}

{{<matomeQuote body="＞古いシステムにはRustツールチェインがないかもしれないし、<br>Linuxは常に進化についていけないと捨てられるというスタンスだよね。安定したドライバAPIがないのもその一環。<br>＞将来出てくるアーキテクチャはどうなるの？<br>そのアーキテクチャにRustコンパイラが無いなんて誰が言ってるの？Cコンパイラがある保証もないし。" userName="lmm" createdAt="2025-02-21T04:14:48" color="">}}

{{<matomeQuote body="今のところRustツールチェインがないLinuxのレガシーシステムってどれなの？進歩を止めて200人がAmigaでm68kを動かすために99.9%のユーザーを犠牲にするの？Apple Siliconのユーザーはm68kの何倍もいると思うよ。" userName="danieldk" createdAt="2025-02-21T08:05:15" color="#785bff">}}

{{<matomeQuote body="確かRustはllvmを使ってるから、バックエンドを変更すれば大丈夫じゃない？" userName="jfbfkdnxbdkdb" createdAt="2025-02-21T10:10:27" color="">}}

{{<matomeQuote body="Linuxがサポートしているプラットフォームの中には、LLVMが対応していないものもあるよ。それに、古いシステムにはメンテナが少ないから、良いLLVMバックエンドを作るのは難しいかも。" userName="rcxdude" createdAt="2025-02-21T12:07:48" color="">}}

{{<matomeQuote body="なんで彼はこのメールを3週間前に送らなかったのか理解できない。" userName="foota" createdAt="2025-02-21T08:04:16" color="">}}

{{<matomeQuote body="正直、Linuxからのこういう返答を待ってた。Hellwigをひとまず黙らせた感じ。<br>＞問題のプルリクエストはDMAレイヤーには全く影響を与えないもので、全く別のサブディレクトリのユーザーの話だった。<br>全くあなたのコードに影響を与えないわけだから、こんな無茶な反論を持ち出すのは残念だよ。<br>早かったら、才能ある貢献者をカーネルから失わずに済んだかもしれない。" userName="kennysoona" createdAt="2025-02-21T07:01:12" color="#ff5733">}}

{{<matomeQuote body="＞早かったら、才能ある貢献者をカーネルから失わずに済んだかもしれない。<br>R4Lのリード開発者が辞めたのは、Hellwigを完全な負け犬に感じさせないための妥協だと思ってる。それはひどいけど。" userName="kombine" createdAt="2025-02-21T08:44:47" color="">}}

{{<matomeQuote body="誰が辞めたの？" userName="josefx" createdAt="2025-02-21T09:21:35" color="">}}

{{<matomeQuote body="色々な議論を見て感じたのは、Rustを受け入れることで得られる利益が、その苦労に見合わないと考えてる人がいるってこと。提案されてる利点の大部分は、Rustなしでも他の方法で実現できるかもしれないし、clangを必須のコンパイラにして、甚至限界チェックを導入するだけで大きな効果が得られるんじゃないかな。あと、Rustコードの可読性や美しさについての不満も多いみたいだね。" userName="dfawcus" createdAt="2025-02-19T18:29:05" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Cの開発者は間違いを犯さないと思ってるから、Rustの価値を見出せないんだろうな。FreeBSDの開発者ともそんな議論をしたことあるけど、同じような態度で、俺のアプリをクラッシュさせるバグを指摘したら、逆にRustのラッパーが悪いって責められたのは驚いたよ。" userName="0x457" createdAt="2025-02-19T21:20:26" color="#ff5c5c">}}

{{<matomeQuote body="確かに、そんな風にプライドでやったことはあるな。誰かを謙虚にするための努力をしてしまうことがある。でも、自分も同じように謙虚にされる必要があると思ってる。時には自分を本当に見つめ直すことも大事だね。" userName="EasyMark" createdAt="2025-02-21T04:37:56" color="">}}

{{<matomeQuote body="人はなんで自分の頭の中で多くのシンボルを使いこなすことを見せびらかしたがるのか理解できん。結局、コンピュータは指示されたことをやるだけなんだし、人間がそれを完全に支配するなんて無理だよ。言語が問題解決を考える上で影響があるのは確かだけど、進歩をもたらすのはツールや抽象化だと思うんだ。" userName="dc443" createdAt="2025-02-21T09:55:57" color="">}}

{{<matomeQuote body="＞”色々な議論を見て感じたのは、Rustを受け入れることで得られる利益がその苦労に見合わないと考えてる人がいるってこと。”そのメールを読んでみて。Greg KHは確かにその利点に価値があると考えてるよ。あと、今のタイミングでCコードを改善できるチャンスでもある。確かにシンプルな解決策があるかもしれないって考えたくなるのもわかるけど、実際にそういうものは見たことがないからな。" userName="mustache_kimono" createdAt="2025-02-19T20:55:43" color="">}}

{{<matomeQuote body="＞”そのメールを読んでみて。Greg KHは確かにその利点に価値があると考えてるよ。”誰もがGreg KHがそう思ってるなんて考えてないだろ。彼はここで言われてる「人々」とは違う存在なんだ。" userName="whstl" createdAt="2025-02-21T08:55:09" color="">}}

{{<matomeQuote body="CVEリストを見ると、Cのメモリバグの70-80％は範囲外読み書きに関係してるんだ。Rustと同様に、bounds-safetyも冗長なチェックを排除できる。カーネルに実装するのは可能性が高いと思うけど、フォーマル化はリファクタリングを難しくする可能性があるから、そこに対する恐れがあるかも。Cやカーネルの利点は、新しいハードウェアや要件に対する柔軟性なんだから。" userName="mimd" createdAt="2025-02-19T21:29:56" color="">}}

{{<matomeQuote body="＞”カーネルに導入するのはどのくらい可能性があるのか？”私の予想では難しい。fbounds-safetyは、範囲外の読み書きが発生した際にプログラムを中断する仕組みだから、カーネルを中断させるのは全然良い選択肢とは言えない。ドライバにバグがあったら、PCが突然オフになるなんて誰もが受け入れられないから。" userName="whytevuhuni" createdAt="2025-02-19T22:03:40" color="">}}

{{<matomeQuote body="そうだね、カーネルでのパニックはよろしくない。R4Lに関してはずっとフォローしてきたけど、fboundsにはプログラムを中断せずにテレメトリイベントとして記録するオプションがあるみたい。それを使えば、カーネルが生き残る可能性があるから良さそうだね。" userName="mimd" createdAt="2025-02-19T22:30:37" color="#785bff">}}

{{<matomeQuote body="ああ、ありがとう。それがWARN_ON_ONCE(…)と同じように処理できて、遅延があまりなければ良いシステムだね。そんなら、すごく良さそうだ。自分も読み込む必要がある。" userName="whytevuhuni" createdAt="2025-02-19T22:43:41" color="">}}

{{<matomeQuote body="Linusの考えについて、プログラムを壊さないようにするセキュリティ強化の努力は絶対に必要だよという意見があるみたい。＞”https://lkml.org/lkml/2017/11/21/356”" userName="oskarkk" createdAt="2025-02-20T23:56:47" color="">}}

{{<matomeQuote body="GCCのために、コンパイラがトラップを挿入したときに警告を出す10行くらいのパッチを持ってるよ。サニタイザーを使って、警告をエラーに変えて、サインオーバーフローとかの問題を防げるよ。" userName="uecker" createdAt="2025-02-20T06:36:51" color="#785bff">}}

{{<matomeQuote body="そのパッチ、役立ちそうだね。なんでアップストリームに行かなかったの？" userName="estebank" createdAt="2025-02-21T17:22:11" color="">}}

{{<matomeQuote body="サニタイザーはプロダクションには出荷されないよ。" userName="saagarjha" createdAt="2025-02-20T23:50:17" color="">}}

{{<matomeQuote body="データ損失やセキュリティの脆弱性を引き起こすのが、カーネルがクラッシュするよりいいなんて、俺には理解できない。" userName="chlorion" createdAt="2025-02-21T02:12:28" color="">}}

{{<matomeQuote body="どちらかはサーバーやアプリケーション、データを失わせるかもしれないけど、もう一つは確実に壊れるよ。" userName="NBJack" createdAt="2025-02-21T03:30:14" color="">}}

{{<matomeQuote body="多くのケースでは、静かに間違ったことをするより、はっきりと爆発する方が好ましいよ。特に敵対的な行動をする奴らの前ではね。" userName="fwip" createdAt="2025-02-21T04:08:30" color="#38d3d3">}}

{{<matomeQuote body="一方は攻撃者に本来アクセスできないデータにアクセスさせたり、勝手にコードを実行させたりするかもしれない。もう一方はそれをしないように保障されている。" userName="int_19h" createdAt="2025-02-21T09:25:56" color="#ff5c5c">}}

{{<matomeQuote body="Rustはプログラミングエコシステムから他の安全な選択肢を追いやってると思う。Adaみたいな他の安全なメモリの言語もあるのに、理由がわからない。Rustだけがメモリ安全を達成する唯一の選択肢でなくてもいいよね。" userName="throwawaymaths" createdAt="2025-02-21T00:43:34" color="">}}

{{<matomeQuote body="LinusはAdaがあまり好きでないみたいで、才能のあるプログラマも少なくて年齢層も高いからね。Rustが他の言語よりも優れている理由は、成功したからで、若手が触れることができたのも一因だよ。それに、Rustが唯一の選択肢であるべきじゃないという意見から、待てたはずだという意見に変わるのはおかしいと思う。" userName="dralley" createdAt="2025-02-21T00:50:02" color="">}}

{{<matomeQuote body="そうだね！Rustは色んなことをうまくやってるけど、プロトコルとprocマクロはひどいし、RAIIもダメだよ。" userName="throwawaymaths" createdAt="2025-02-21T00:52:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="あなたの意見だね。でもprocマクロがひどいのには同意するよ。「プロトコル」ってRustの何のことかわからないけど。RAIIについては意見が分かれることもあるけど、私はそれに感謝してる。結局、Linus Torvaldsが隠れているアカウントじゃない限り、私たちの意見は関係ないみたいだね。" userName="kelnos" createdAt="2025-02-21T06:47:22" color="#ff5c5c">}}

{{<matomeQuote body="＞研究が遅れているのは、潜在的な利点が少なくて、研究のコストが高いから。<br>その通り。今のところ、Rustの他に達成できている安全な選択肢はないし、現状で改善するのを止める理由にはならないよ。" userName="lmm" createdAt="2025-02-21T08:36:26" color="#ff5c5c">}}

{{<matomeQuote body="＞Rustが唯一の方法である理由は、それが唯一うまく機能しているからだ。<br>その通りだけど、大変だからみんな挑戦しなくてRustに落ち着くんだよ。6ヶ月で進展が得られるかもしれないのに、何でRustのコストを払わなきゃいけないの？" userName="throwawaymaths" createdAt="2025-02-21T21:04:38" color="">}}

{{<matomeQuote body="先週のAdaスレッドの後、AdacoreのサイトでPDFを見たけど、意外なことが多かったよ。論理演算子が短絡評価しないとか、サブプロシージャと関数があって前者は値を返さないとか、Adaのswitch相当はフォールスルーしないとかね。" userName="caspper69" createdAt="2025-02-21T02:31:26" color="#ff5733">}}

{{<matomeQuote body="＞論理演算子が短絡評価しないって言ってるけど、二つの構文があって、短絡しないのは`and`で、短絡するのは`and then`だよ。" userName="jcmoyer" createdAt="2025-02-21T03:27:27" color="">}}

{{<matomeQuote body="＞理由を拒否する前に、少なくともその理由を知るべきだよ！" userName="eviks" createdAt="2025-02-21T03:37:55" color="">}}

{{<matomeQuote body="Rustの戦略が唯一の方法でなければならない理由って何なの？RAIIだと思う人もいるけど、明確なキーワードを使って解放ステップを作ればいいんじゃない？" userName="throwawaymaths" createdAt="2025-02-21T04:05:14" color="">}}

{{<matomeQuote body="良い会話は「Rustの戦略が唯一の方法かどうか」を議論するところから始まると難しいと思う。他にも方法はあるよ。Javaの戦略も有効だけど、システムプログラミングには不向きだし、Rustのアプローチは強力だよ。" userName="solidsnack9000" createdAt="2025-02-21T05:59:48" color="#38d3d3">}}

{{<matomeQuote body="私の言う「戦略」は理論じゃなく実装の話。ライフタイピングをコンパイラにお願いする必要ある？静的チェックツールの一部にしても良いだろ。RAIIなしでアフィン型も使えるし、Rustのやり方に代わるオプションはたくさんある。" userName="throwawaymaths" createdAt="2025-02-21T06:08:54" color="#ff33a1">}}

{{<matomeQuote body="まず、君の指摘は”Rustのメモリ安全性戦略”とは関係ないことを言っているよね。マクロや他の使いやすさは戦略には含まれていないし、確かにそれらはRustの核となる価値を変えずに異なることができる。静的解析に関するポイントに集中した方が良いと思うけど、型システムは静的解析ツールの一種だし、他のツールに置き換えられる可能性もある。例えばPythonのMyPyがあるけど、そんなツールは開発の日常から外れることができない。プログラムの正しさをチェックする以上、コードが正しいかどうかを確認し続けなきゃいけない。皆が静的解析ツールをまったく使わないとしたら、それは問題を生む。Rustが他の言語と違うのは、親密に統合されたアフィン型を持ち、適度に使いやすい環境が整っているところだね。" userName="solidsnack9000" createdAt="2025-02-21T18:41:13" color="#45d325">}}

{{<matomeQuote body="テストや開発ビルドの時だけValgrindやASANを使っている成功事例もあるよ。>どうやってコミットごとにコードの信頼性を確認するの？今は簡単に全コミットでフルチェックできるし、プルリクエストもテストに失敗したら拒否できるようになってる。失敗を避けるためにGitの履歴を修正するのも面倒だけどできる方法だ。" userName="throwawaymaths" createdAt="2025-02-22T02:59:37" color="">}}

{{<matomeQuote body="静的解析は無視される可能性が高いという大きな欠点があるよ。" userName="samus" createdAt="2025-02-21T10:59:39" color="">}}

{{<matomeQuote body="それでいいさ。例えば、自分だけが使うプログラムでは静的解析をしなくても問題ないし、物理シミュレーションのように一度だけ400,000コアで走らせるHPCのワークロードでも、テストでクラッシュしなければ多分スケールでも大丈夫だろう。OSを作るならもちろんチェックはするべきで、実際、RustのエコシステムもMIRIを使うことを推奨しているよ。" userName="throwawaymaths" createdAt="2025-02-21T20:57:48" color="">}}

{{<matomeQuote body="じゃあ、Cで「速いプログラム」を書くのは？それがカーネル開発の比較になっているよ。RustがMakefileやシェルスクリプト、Pythonスクリプトの代わりになるとは言わないけど、Rustなら多くの”速いプログラム”を快適に書けるのはすごいね。" userName="solidsnack9000" createdAt="2025-02-21T22:41:04" color="#ff33a1">}}

{{<matomeQuote body="＞Cで「速いプログラム」を書くのはどう思う？もちろんカーネル開発では無理だね。そういう場合は静的解析は必須だよ。" userName="throwawaymaths" createdAt="2025-02-22T02:53:57" color="">}}

{{<matomeQuote body="(Miriは静的解析ではないよ。)" userName="steveklabnik" createdAt="2025-02-21T21:03:15" color="">}}

{{<matomeQuote body="それは問題の本質じゃないよ。静的解析の外にあるユニットで、安全性チェックを追加するために存在しているんだ。" userName="throwawaymaths" createdAt="2025-02-21T21:31:42" color="">}}

{{<matomeQuote body="他の選択肢が探求され、却下された可能性はどうやって分かるの？君がRustに不満を持っていることは、みんながそう思ってるわけじゃない。Rustの機能を好む人もいるし、私はそれをコンパイラに一体化してほしいと思う。問題ない？もしライフタイムチェックが別のツールなら、rustcがライフタイムルールに違反したバイナリを作れるなら、Rustはメモリ安全な言語とは言えないよ。コンパイラが成功したら正しさが保証されていることで、生産性が向上するし、私たちが考えることはどうでもいいんだ。" userName="kelnos" createdAt="2025-02-21T06:53:35" color="#38d3d3">}}

{{<matomeQuote body="時には何かが勢いで選ばれることもある。実は言語にこだわってないんだ。雇われた言語でコーディングするけど、個人プロジェクトはC++やPythonでやることが多いよ。" userName="EasyMark" createdAt="2025-02-21T04:41:04" color="">}}

{{<matomeQuote body="正直言って、同じモノリシックなコードベースに二つのプログラミング言語を並行して混ぜるのは良くないと思う。フロントエンドとバックエンドのように用途やレイヤーが違う場合ならまだしも、両方を自分で扱うのはストレスになるし、Cの開発者とRustの開発者が分かれて作業することで技術的にもコミュニケーション的にも摩擦が生まれる。特に組み込みシステムに関わっていると、二つのツールチェーンを設定する手間や、Rust/LLVMのコンパイラの遅いコンパイル時間によるCIやデバッグの時間延長を想像するだけで”痛い”ね。" userName="typ" createdAt="2025-02-21T02:26:32" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
