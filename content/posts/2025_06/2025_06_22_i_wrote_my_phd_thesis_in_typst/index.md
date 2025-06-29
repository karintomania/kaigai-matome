+++
date = '2025-06-22T00:00:00'
months = '2025/06'
draft = false
title = '博士論文をTypstで書いた話'
tags = ["Typst", "組版", "LaTeX", "論文", "Tech"]
featureimage = 'thumbnails/purple3.jpg'
+++

> 博士論文をTypstで書いた話

引用元：[https://news.ycombinator.com/item?id=44350322](https://news.ycombinator.com/item?id=44350322)




{{<matomeQuote body="Typstは超有望に見えるね、特にIEEEみたいな共通テンプレートがあってLaTeXと全く同じ出力になるのがいい。LaTeXで一番ムカつくのはツールなんだわ。この前の論文ではMakefile使ってたんだけど、普段は動くのに、ダメな時は二回実行すれば直った。マジ稀に`git clean -xdf`しないと次が動かなかった。何が起きてたか今だに分かんないし、世の中のMakefileって大概めちゃくちゃ複雑で、エラーメッセージ解析して同じコマンドをまた実行してるだけみたい。" userName="WhyNotHugo" createdAt="2025/06/22 22:39:32" color="#ff5733">}}




{{<matomeQuote body="狂気の定義は、同じこと二回やって違う結果を期待すること。奇遇にも、これがLaTeXの基本的なコンパイル方法だね。" userName="shusaku" createdAt="2025/06/22 22:50:06" color="">}}




{{<matomeQuote body="完璧な解決策じゃないし、Makefileの中で既に使ってるかもだけど、まだ知らない人のためにLatexmk[1]ってのがあるよ。これで面倒なことが全部自動化されるはず。少なくともDebianだとtexlive-fullに入ってると思う。さらに`-outdir`みたいな便利なフラグもあって、LaTeXのウザい中間ビルド＼auxファイルをgitignoreしやすい別のディレクトリに全部送れるよ。<br>https://mgeier.github.io/latexmk.html#running-latexmk" userName="pcfwik" createdAt="2025/06/22 22:55:53" color="#ff5733">}}




{{<matomeQuote body="プログラミングだと違う結果が出るのって普通なんじゃないの？開発者って普通、冪等性とかビルドの再現性とか頑張って含まないし。" userName="Diti" createdAt="2025/06/23 11:51:36" color="">}}




{{<matomeQuote body="LaTeXがコンパイルに複数パス必要なのは、80年代のミニコンピュータのメモリ制約を考えて設計されたからだよ。Latexmkはこれを解決する一つの方法。AUCTeXみたいな良いIDEもコンパイラを何回起動すべきか判断できる。良いIDEはSyncTeX（ソースからPDFの正確な場所へのジャンプ、その逆も）みたいな他の超便利な支援機能も提供してくれる。" userName="nextos" createdAt="2025/06/22 23:38:43" color="#785bff">}}




{{<matomeQuote body="＞ 私の一番の不満はLaTeXのツールです。前回の論文では…<br>俺もLaTeXツールにめっちゃ苦労したわ。Makefile使っても二回実行とか`git clean -xdf`とか必要で、いつも「何か間違ってる？」って気分。ツールと戦って何時間も無駄にする。新しいマシンにクリーンインストールしても何か動かない気がするし。この前、ドキュメント変更したときは、同じ問題抱えてる人の検索結果100個くらい漁って、やっと解決策見つけたと思ったら、超分かりにくいヤツだった。他の場所にその答えを再投稿して助けようとしたけど、マジ疲れて、絶対避けられない時以外はもうLaTeX使わないって誓ったわ。" userName="Aurornis" createdAt="2025/06/23 05:22:59" color="">}}




{{<matomeQuote body="昔はわかったけど、LaTeX久々すぎて忘れたな〜。10年以上前の自分のビルドスクリプト見たら、bibtex使うなら3回、使わないなら2回やってたっぽい。<br>ああいう時代は終わって嬉しいね。" userName="jeffparsons" createdAt="2025/06/22 22:59:46" color="">}}




{{<matomeQuote body="最近はLaTeXコンパイルするならTectonic使えばいいよ。複数回コンパイルとか自動でやってくれるから。" userName="Evidlo" createdAt="2025/06/23 02:58:59" color="#785bff">}}




{{<matomeQuote body="普通コードは2回コンパイルしたら同じ結果になるけど、LaTeXは1回目の出力が2回目の入力になるんだ。<br>10年前に書いた時、ページ番号とか目次でそうなるの見たよ。1回目でレイアウト決めて、2回目でちゃんとしたページ番号入れる、みたいな。<br>今のコンパイラじゃありえないよね。<br>10年前の話だし、理由は違うかもだけど。" userName="MajimasEyepatch" createdAt="2025/06/23 16:17:02" color="#ff33a1">}}




{{<matomeQuote body="「LaTeXが複数回コンパイル必要なのは、80年代ミニコンのメモリ制約のため」ってのは一理あるけど、どんな組版ソフトも目次をちゃんと作るには複数回必要だよ。<br>目次のページ番号って全部コンパイルしないと分からないし、目次に項目が増えたらページが増えることもあるしね。<br>LaTeXでユニークなのは、ユーザーに複数回パスが必要ってのを直接見せてるとこだよ。" userName="gucci-on-fleek" createdAt="2025/06/23 04:58:50" color="#38d3d3">}}




{{<matomeQuote body="俺のMakefileだと4回実行してた気がする。<br>それでもWordよりは好きだったな。" userName="tom_" createdAt="2025/06/23 01:21:35" color="">}}




{{<matomeQuote body="18時間って、無限に行って帰ってくるみたいなもんだね…いい旅だったね！" userName="pantulis" createdAt="2025/06/24 06:57:42" color="">}}




{{<matomeQuote body="文書のフォーマットシステムにビルド環境が必要なのはやっぱ嫌だな。正直、本格的な組版にビルド環境なんてほとんど要らないでしょ。LaTeXの問題は柔軟すぎるとこかもね。Linuxディストリビューションの問題にちょっと似てるんだ。Linuxはバザールモデルのはずなのに、結局ディストリビューションごとに大聖堂になっちゃうんだよね。システム全体を作るのに大きな決定が必要になるから。LaTeXのクラスファイルも同じ感じ。" userName="da_chicken" createdAt="2025/06/23 13:03:48" color="#45d325">}}




{{<matomeQuote body="多くの人はLaTeXをローカルじゃなくOverleaf（ウェブサイト、https://overleaf.com を見てね）で使ってるよ。そうすればローカルにいろんな拡張パッケージやフォントをインストールしなくて済むし、全部そこに揃ってるんだ。論文を書いた後、ウェブGUIから会議やジャーナルに直接提出できるから、メールしたり別のサイトにアップロードしたりする必要ないよ。" userName="jll29" createdAt="2025/06/23 14:14:10" color="#38d3d3">}}




{{<matomeQuote body="CとかC++のコンパイラが、何回か実行しないと間違った出力出すのを想像してみて。しかも平均的なユーザーには何回実行が必要か分からないから、みんな安全のために何度も実行する。これって馬鹿げてるけど、LaTeXでは受け入れられてるんだよね。" userName="optionalsquid" createdAt="2025/06/23 22:12:34" color="#38d3d3">}}




{{<matomeQuote body="正直、Typstも内部では固定点に到達するまで何度も再コンパイルしてるよ。でも、前のイテレーションに依存する部分を制限したり、確実に変わらなかった部分は前の結果を再利用するように設計されてるんだ。" userName="SkiFire13" createdAt="2025/06/23 06:09:06" color="#785bff">}}




{{<matomeQuote body="決定的である限り、問題ないはずだよね。<br>コマンドをMakefileで実行すればいい。そうはなってないみたいだけど。" userName="mixmastamyk" createdAt="2025/06/23 15:21:39" color="">}}




{{<matomeQuote body="それは狂気の定義じゃなくて、練習の定義だよ。" userName="someuser2345" createdAt="2025/06/23 14:25:04" color="">}}




{{<matomeQuote body="4回目、理論的には5回目が必要な場合もあるんだ。無限ループになることさえあって、例えばvrefパッケージを使うとね。”次のページの図3”とか”8ページの図3”みたいな参照を”うまく”置き換えるんだけど、それが図を次のページに動かしちゃって、参照が”8ページに”って縮小されて、また図が元の場所に戻って…って更新が必要になっていくんだ。<br>LaTeXは大体出力に警告（”LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.”）を出して知らせてくれるけど、長すぎて誰も読まない。警告が出なくても安定した保証はないから、うちのMakefileではタイムスタンプみたいな可変部分を除いたPDFファイルを比較してビルドが収束したか確認してるよ。" userName="mr_mitm" createdAt="2025/06/23 09:04:55" color="#ff5733">}}




{{<matomeQuote body="なんでlatexmk使わなかったの？再コンパイルとか自動でやってくれるのに。" userName="_Algernon_" createdAt="2025/06/23 09:27:35" color="#ff5c5c">}}




{{<matomeQuote body="LaTeXで博士論文（物理）書いたけど、やっぱコンパイルは最低2回必要だったよ。25年前も今も変わらないんだね。Wordで書いてた友達はファイル壊れて全部やり直しだったらしいから、それに比べたら図の配置なんて全然気にならなかったな。" userName="BrandoElFollito" createdAt="2025/06/23 17:57:21" color="#38d3d3">}}




{{<matomeQuote body="Typstのソースとどんな風になるか見てみたい人いる？いくつか作ってみたからどうぞ。<br>履歴書: https://typst.app/project/rDUHMUg5vxl4jQ5q2grGPY<br>委任状: https://typst.app/project/rs9ZgGLhgM7iPvFs7PQv5O<br>遺言書: https://typst.app/project/r45dVk6MpLjsoXMvxkTxsE" userName="commandersaki" createdAt="2025/06/22 23:16:59" color="#38d3d3">}}




{{<matomeQuote body="ジャーナルとか学会がまだLaTeXしか受け付けないから、typstには乗り換えないでおくよ。受け付けるようになるかな？それは学会側がツールに組み込むかどうかにかかってると思うな。" userName="gumbojuice" createdAt="2025/06/23 02:47:29" color="#45d325">}}




{{<matomeQuote body="それ、マジでそうかなぁ？純粋数学のジャーナルだってLuaTeXさえ受け付けないところ多いんだぜ？typstなんて、どうなるか…。" userName="ykonstant" createdAt="2025/06/23 10:36:28" color="#ff5733">}}




{{<matomeQuote body="typstを受け付けてるところ、もう少なくとも2つあるよ。だから、’ever’（永遠にない）ってわけじゃないね。でも、まだほとんどはダメだし、ソース提出が必要な場合はやっぱりLaTeXが必須な場合が多いけどね。" userName="Paapaa" createdAt="2025/06/23 09:05:23" color="#ff5733">}}




{{<matomeQuote body="IJIMAI（https://typst.app/blog/2025/typst-at-ijimai）とJUTI（https://forum.typst.app/t/juti-call-for-papers-best-paper-aw...）だよ。まあ、一番有名ってわけじゃないけど、そこから始まるんだって感じかな。" userName="xkevio" createdAt="2025/06/23 12:13:02" color="#45d325">}}




{{<matomeQuote body="それ、マジでそう思う。typstを受け付けるだけじゃなくて、今みたいにLaTeXのテンプレートを提供してくれるかどうかが大事だよね。テンプレート使えば、書く方も編集する方もすごく時間節約できるからさ。" userName="dimatura" createdAt="2025/06/23 12:47:37" color="#45d325">}}




{{<matomeQuote body="これ、typstの最大の悩みだよね。俺、最終提出のためにtypstからLaTeXに変換するツール作ったんだ。まだちょっと微妙で、数式とかはうまく変換できないんだけどね。→ https://gitlab.com/theZoq2/ttt" userName="thezoq2" createdAt="2025/06/23 09:00:54" color="#785bff">}}




{{<matomeQuote body="ジャーナル投稿はLaTeX必須だし、指定のクラスファイルじゃないと落とされるんだよ。" userName="aragilar" createdAt="2025/06/23 11:00:21" color="#ff5733">}}




{{<matomeQuote body="普通はLaTeXかWord出して、出版社が最終組版するんだ。著者PDFはプレビューだよ。結構違ったりするし。" userName="jltsiren" createdAt="2025/06/23 08:49:23" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="科学出版界ってマジ変だよね。組版料とか言うけど、やるのは参考文献のフォーマット直しとか。誰もジャーナル自体読まないし。PDF提出でいいじゃん。" userName="IshKebab" createdAt="2025/06/23 11:44:18" color="">}}




{{<matomeQuote body="arXivはソースも要るし、スタイルはジャーナルの個性なんだよ。品質管理とかもあるし、メタデータも必要だからPDFだけじゃダメだよ。" userName="aragilar" createdAt="2025/06/23 12:17:03" color="#45d325">}}




{{<matomeQuote body="引用とか参考文献の不備は多いから、あれは質を保つのにマジ大事なんだよ。PDFで提出とかだと、後で編集とか組版とかほぼ無理。ひどい結果になるよ。" userName="jonathanstrange" createdAt="2025/06/23 12:29:45" color="#ff33a1">}}




{{<matomeQuote body="PDFじゃ編集組版無理＞いやいや、彼らは編集組版なんてしてないって。テンプレート使えとか、著者のイニシャルをイタリックにしろとか言ってるだけじゃん。" userName="IshKebab" createdAt="2025/06/23 22:11:15" color="">}}




{{<matomeQuote body="組版で手数料取る＞昔は実際に組版やってたからそうだったの。PC時代になって収益源を変えただけなんだよ。" userName="colejohnson66" createdAt="2025/06/23 14:19:11" color="">}}




{{<matomeQuote body="俺もTypstに乗り換え中。マジ快適だし、コンパイルも爆速だよ。ただ、数式記法を覚え直すのがちょっと大変かな。" userName="TimorousBestie" createdAt="2025/06/22 22:53:19" color="#45d325">}}




{{<matomeQuote body="Typstもいいけど、俺はLaTeXに戻ろうかな。Claude CodeとVS Code使うとマジ便利。昔はTikZとか詳しかったけど忘れちゃって。でもClaudeが95%はやってくれるんだよね。LaTeXのエラー解析も簡単にしてくれるし。" userName="wenc" createdAt="2025/06/22 23:30:51" color="#785bff">}}




{{<matomeQuote body="ClaudeみたいなLLMって、新しいことをしたい新しい言語にとってはマジで大問題だよね。LaTeXの代替が40年以上のパッケージ開発時間と競合するだけでも大変だったのに、今はLLMが吸い上げた何百万行もの既存コードとも戦わなきゃいけないんだから。" userName="TimorousBestie" createdAt="2025/06/22 23:50:21" color="">}}




{{<matomeQuote body="ClaudeでTypstの簡単なプログラミングをいくつかやったけど、問題なく動いたよ。Typstのこと知らないだろうと思ってたんだけど、そんなことなかったんだよね。Typstの良いところの一つは、ほとんどのタスクがめちゃくちゃシンプルなこと。置き換えようとしてたLaTeXの分厚いクソ書類と比べたら、Typstで自分の本を組むのは段違いに簡単だよ。" userName="noelwelsh" createdAt="2025/06/23 07:08:29" color="#ff5c5c">}}




{{<matomeQuote body="そりゃそうだけどさ、LLMがLaTeXを使いやすくしてくれるなら、なんでみんなを新しい言語に移行させようとする手間をかけるのさ？" userName="rcpt" createdAt="2025/06/23 12:47:00" color="">}}




{{<matomeQuote body="だってLaTeXは書くのが見た目悪くて、人間にはフレンドリーじゃないんだもん。AIエージェントを挟んだところで、その問題は解決しないんだよ。" userName="Ar-Curunir" createdAt="2025/06/23 15:53:12" color="#ff33a1">}}




{{<matomeQuote body="実際に研究論文を書いたことある？<br>AIが吐き出すものは絶対編集しないと、曖昧で意味不明なゴミになるに決まってるじゃん。" userName="Ar-Curunir" createdAt="2025/06/24 05:00:19" color="#ff33a1">}}




{{<matomeQuote body="君の意見には、いくつかの前提があると思うけど、それは真実じゃないと俺は思ってるんだよね。<br>1. LaTeXがすべての文書出版ニーズに十分か？例えば、LaTeXからHTMLへの変換はダメか、存在しない。TypstにはHTML出力があるよ。<br>2. LLMがあらゆる問題を解決するのに十分か？<br>3. 人間にとって簡単なことがLLMにとっても簡単じゃないか？<br>4. 新しいLLMのリリースがTypstについてもっと学習しないか？<br>結局さ、俺は誰かを移行させようとしてるわけじゃないんだ。自分が一番良いと思うものを使えばいいんだよ。俺のユースケースでは、TypstがLaTeXより良い選択肢だって確信してるね。" userName="noelwelsh" createdAt="2025/06/23 13:09:56" color="#ff5c5c">}}




{{<matomeQuote body="みんなをLaTeXから移そうとするのはPython3レベルの大変な要求だよ、HTMLレンダリングにそこまでの価値があるかは疑問だね。うん、Typstの構文は綺麗に見えるけど、それはもはやそんな大きなアドバンテージじゃないんだよ。" userName="rcpt" createdAt="2025/06/23 23:57:38" color="">}}




{{<matomeQuote body="＞ なぜみんなを新しい言語に移行させようとする手間をかけるの？<br>…新しい言語の方が良いかもしれないから？<br>でも今後は、どの新しい言語が現存の代替より優れているかを見分けるのが難しくなるだろうね。LLMはユーザーに乗り越えられないほどの現状維持バイアスを負わせるんだ。" userName="TimorousBestie" createdAt="2025/06/23 13:35:25" color="#ff33a1">}}




{{<matomeQuote body="でもTypstってどういう点が優れてるの？" userName="rcpt" createdAt="2025/06/23 23:55:30" color="">}}




{{<matomeQuote body="現状維持をちょっとひいきするのも受け入れられるかも...でも今のLLMは古い言語を強く支持してて、訓練データにないモダンな機能は理解できないんだよね。もし90年代に主にCコードで訓練されたLLMがあったら、新しい言語のコードを簡単に生成できなかったから、今もCだけ書いてたかもね。これはTypstとか組版だけの話じゃなく、プログラミング言語設計全般に関わることで、改善を進めるのがどんどん難しくなってるんだ。" userName="lblume" createdAt="2025/06/23 06:13:13" color="">}}




{{<matomeQuote body="「もし今もCだけ書いてたら...」って意見だけど、それってそんなに悪いこと？Cから離れる理由ってだいたい使いやすさとか安全性だけど、LLMがコードベースを全部読んで必要な変更の9割をやってくれるなら、そもそも言語を変える動機の大半はなくなるんじゃない？" userName="fc417fc802" createdAt="2025/06/23 08:19:54" color="">}}




{{<matomeQuote body="もし完全に自律したAIができたら、たぶんCとか人間が理解できる言語ではプログラムしないだろうね。もし人間が読める言語で書くとしても、少なくともたまには人間がコードをレビューしないと。Cよりモダンな言語の方がレビューは断然簡単だよ。" userName="afdbcreid" createdAt="2025/06/23 13:16:40" color="">}}




{{<matomeQuote body="Typst、一回でも使ってみた？偉そうなこと言ってるけど、LaTeXより断然、光年レベルで良いよ。" userName="okanat" createdAt="2025/06/23 06:34:48" color="">}}




{{<matomeQuote body="Claudeのことは知らないけど、LaTeXのIDEならTeXStudioを絶対に推薦するね。LaTeXの設定とかコンパイルの面倒な問題を全部解決してくれるし、分かりやすいインターフェースでクラシックなメニュー（意味不明な小さいアイコンじゃなくて言葉！）があるから、色々な一般的なタスクができるんだ。自分は自分のLaTeXワークフローではカスタマイズしたVimを使ってて、いくつかのプログラミング言語にはVS Codeを使ってるけど、そんな自分でもTeXStudioはすごくいいと思うよ。" userName="ykonstant" createdAt="2025/06/23 10:34:36" color="#45d325">}}




{{<matomeQuote body="以前UbuntuでカスタマイズしたLaTeX環境を使ってたけど、Macにしてから完全にTeXStudioに移行したんだ。これも超おすすめ！" userName="yunohn" createdAt="2025/06/24 01:47:04" color="#ff33a1">}}




{{<matomeQuote body="わりと楽観的な予測だと、一部の人はTypstを受け入れるだろうけど、TypstからのLaTeXエクスポート機能が徐々に成熟して、最終的には特定の分野で、ジャーナル提出のためにLaTeXそのものじゃなくて、QuartoとかTypstみたいな他のフロントエンドを使ってLaTeXに出力するっていう茶番になるんじゃないかな。そのしばらく後に、Typstがブレークスルーして一般的に受け入れられるようになる、とか。" userName="kzrdude" createdAt="2025/06/23 08:45:48" color="#ff5c5c">}}




{{<matomeQuote body="mitexっていう選択肢もあるよ [1]。もうこの歳じゃ新しい記法なんて覚えられるわけないけどね。 [1] https://typst.app/universe/package/mitex/" userName="nomel" createdAt="2025/06/22 22:56:29" color="">}}




{{<matomeQuote body="TypstはLaTeXより簡単に学べるよ。Unicodeサポートもすごくて、キーボード次第で数式のソースコードが超快適になるんだ :)" userName="andrepd" createdAt="2025/06/22 23:14:49" color="#ff5733">}}




{{<matomeQuote body="LaTeXは嫌いなとこ多いけど（論文もこれで書いた）、数式の書き方はそうじゃなかった。なんでそれを変えるんだ？" userName="PatronBernard" createdAt="2025/06/23 11:19:18" color="">}}




{{<matomeQuote body="バックスラッシュ＼とブレース｛｝だらけのものは、絶対にもっと良くできると思うよ。" userName="gsinclair" createdAt="2025/06/23 12:43:33" color="">}}




{{<matomeQuote body="いや、本当にずっと軽いよ。僕の例はここで見てね：https://news.ycombinator.com/item?id=44354520" userName="cbolton" createdAt="2025/06/24 08:34:11" color="#45d325">}}




{{<matomeQuote body="Typst作った人たちがドイツ人だから、これがLaTeXの不満だったのかな？QWERTZキーボードで＼打つのつらいもんね。" userName="_bent" createdAt="2025/06/25 11:04:09" color="">}}




{{<matomeQuote body="うちの会社[1]はTypstで請求書とかラベルを毎日何千枚も作ってるよ。シンプルだから他のツール（wkhtmltopdfとか）より使いやすいし、高いWYSIWYGサービスよりスクリプトもできて便利。実際に使われてるの見ると嬉しいね。<br>[1] https://garnercorp.com/" userName="lizimo" createdAt="2025/06/23 14:00:50" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="生成パフォーマンスはどう？HTMLベースよりメモリも速さも良いといいな。うちのチームは時間かかるのはGotenberg、速いのはC#とSkia使ってるよ。" userName="lol768" createdAt="2025/06/23 14:57:02" color="">}}




{{<matomeQuote body="ほとんどのドキュメントはすぐできるよ。KubernetesとHPA使ってるから高負荷もOK。<br>HTML（ブラウザ）だとページのレイアウトとか大変なんだ。テーブルヘッダーを全ページに出すとか、TypstやLaTeXじゃないと無理な高度なこともできるよ。<br>[1] https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_q..." userName="lizimo" createdAt="2025/06/23 20:06:44" color="#45d325">}}




{{<matomeQuote body="15ページくらいの短いのだと、数ミリ秒だったよ。変更したらすぐ結果見せられるくらい速いね。「 」<br>メモリは見てない。" userName="ManBeardPc" createdAt="2025/06/23 16:01:42" color="#ff5733">}}




{{<matomeQuote body="コメントありがとう！定期的にPDFを作る必要があって、wkhtmltopdfが古いからchromeを使うしかなかったんだけど（管理が大変なんだ）、コードをTypst（typst gem経由）で書き直したら、もう最高に良くなったよ。" userName="film42" createdAt="2025/06/23 20:57:28" color="#ff5733">}}




{{<matomeQuote body="Typstでちゃんとした作業してる人がいるって聞けて嬉しいな。LaTeXは避けてたんだ。大学ではorg-modeからLaTeXにしてたけど、.emacsファイルがLaTeX設定でいっぱいになって大変だった。多分今じゃコンパイルもできないかも。Typstは使ってて最高だよ（LaTeXはレイアウトが inconsistent でひどかった）。これからも続いてほしいね。" userName="pityJuke" createdAt="2025/06/22 23:23:18" color="#38d3d3">}}




{{<matomeQuote body="Typstは本当にスッキリしてる感じだよね。ごちゃごちゃしてなくて、特にレイアウト調整がすごく分かりやすいし、思った通りになる。" userName="veunes" createdAt="2025/06/23 06:48:36" color="">}}




{{<matomeQuote body="Typstに不満が2つだけあるんだ。<br>1. 数学記法はLaTeX標準をそのまま引き継いでほしかったな。バックスラッシュとか無くなったのが嫌。<br>2. ファイルスコープを超えて変数を共有する方法がないんだ。共通の設定とか持てないのが不便。<br>それ以外はTypstはしっかりしてるし、NeovimとTinyMist LSPと組み合わせると書くのは最高だよ。" userName="msravi" createdAt="2025/06/23 07:17:52" color="#45d325">}}




{{<matomeQuote body="点1について：数学記法をLaTeXのままにしなくて本当に良かったと思うよ！やっと数学入力が進歩した感じ。<br>点2について：設定ファイル（settings.typみたいなの）を作って、それをいろんなファイルからimportすれば共有できるよ。" userName="cbolton" createdAt="2025/06/23 11:18:39" color="#45d325">}}




{{<matomeQuote body="＞点2について：設定ファイル作ってimportすれば共有できるよ<br>それは分かってるんだけど、3種類のスタイルと10個のファイルがあるとして、普通ならトップファイル（top1.typとか）でスタイル設定して、それが10個のファイル全部に伝わるようにするんだけど、Typstはこれができないんだ。10個全部のファイルで適切な設定ファイルをincludeしないといけない。Makefileで共通settings.typを生成するとか、ごまかすしかないんだ。<br>これは実際の問題で、履歴書で3スタイル（resume、cv、timeline）と education, work experienceみたいな複数のファイルがあるんだけど、詳細レベルとか何を含めるかをスタイルで変えたいんだ。LaTeXだと<br>ewcommandとかifthenelseで簡単だった。Typstでは、設定を全部関数引数で渡すしかなくて、関数がごちゃごちゃになるんだ。" userName="msravi" createdAt="2025/06/23 15:34:58" color="#785bff">}}




{{<matomeQuote body="master settings.typを作って、それをtop1.typとかtop2.typとかtop3.typでimportすれば良いんじゃない？<br>別の方法として、ビルドする時に`typst c --input name=value`みたいにグローバル設定を渡すこともできるよ。<br>もしかしたら俺が誤解してるかもしれないから、もし実際の例（Gistとか）をリンクしてくれたら、具体的な解決策を考えてみるよ。" userName="cbolton" createdAt="2025/06/23 16:26:47" color="#ff33a1">}}




{{<matomeQuote body="＞master settings.typを作って、それをtop1.typとかtop2.typとかtop3.typでimportすれば良いんじゃない？<br>そうなんだけど、importされたファイル（education.typとかpublications.typとか）にも設定が伝わらないのがTypstの問題なんだ。それぞれのファイルで適切な設定をincludeする必要があるんだよ。<br>＞ビルドする時に`typst c --input name=value`みたいに設定渡すこともできるよ<br>これは知らなかったな。確認してみるよ。" userName="msravi" createdAt="2025/06/23 16:39:34" color="#ff5733">}}




{{<matomeQuote body="settings.typをtop.typでimportして、そのtop.typをeducation.typでimportすれば、変数とか関数は伝わるよ。あるいは、settings.typを必要なファイル全部（education.typとか）でimportしてもいい。<br>なんで単純なimportじゃダメかって言うと、それぞれの.typファイルは「純粋」なんだ。ファイル内で定義されたものか、importしたものしか認識しない。だから、あるファイルが別のファイルで使える変数とかを魔法みたいに変えちゃうことがないんだ。これは良い点だけどね。<br>もちろん、そういうことがしたいケースがあるのは事実だ。今はStateとかContextを使えば似たようなことができるけど、あまり良くない感じだね。将来的にはカスタム型定義で、この辺をもっと良くする計画があるよ。" userName="cbolton" createdAt="2025/06/23 17:26:38" color="#38d3d3">}}




{{<matomeQuote body="同意。両方で数学書いたけど、Typstの選び方の方がずっと覚えやすくて使いやすい。LaTeXの構文を残しても、新しいことを学ぶ必要がなくなる以外に、Typstにとって何かメリットがあったわけじゃないと思う。" userName="davemp" createdAt="2025/06/23 13:40:52" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
