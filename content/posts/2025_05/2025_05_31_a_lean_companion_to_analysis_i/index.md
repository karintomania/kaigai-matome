+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = '解析学IにLeanという相棒！？'
tags = ["Lean", "解析学", "定理証明", "数学", "教育"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> 解析学IにLeanという相棒！？

引用元：[https://news.ycombinator.com/item?id=44145517](https://news.ycombinator.com/item?id=44145517)




{{<matomeQuote body="Lean使うと、証明のフィードバックがすぐもらえるのが最高！前は先生とか人からしかダメだったのに。<br>コンパイラから速攻フィードバック！将来はRustみたいにもっと詳しいアドバイスくれるといいな〜（LLMいるかもだけど）。" userName="ubj" createdAt="2025/05/31 20:46:41" color="#38d3d3">}}




{{<matomeQuote body="Leanの即時フィードバックはほぼ完璧だね。でもさあ、証明をじっくり考える時間って大事じゃない？昔は紙でコーヒー飲みながら色々試してた。<br>Leanだとやみくもにポチポチするだけにならないかなって心配。<br>あの「ゆっくりじっくり」が概念の理解や新しいアイデアにつながると思うんだよね。どう思う？" userName="vessenes" createdAt="2025/06/01 06:16:38" color="#ff33a1">}}




{{<matomeQuote body="Jim PortegiesとJelle Wemmenhobeがwaterproofで授業で試した研究があるよ。結果面白い！<br>確かに自分で色々試すのは大事だけど、定理証明系でチェックできるメリットもある。<br>自動化しすぎず、どう証明パターンを見せるかが学びのカギだって。Jelleの博士論文に詳しく載ってるよ：https://research.tue.nl/nl/publications/waterproof-transform..." userName="mseri" createdAt="2025/06/01 07:56:58" color="#ff5c5c">}}




{{<matomeQuote body="RustみたいにアドバイスくれるのはAcornで実現してるよ。<br>証明が失敗しても「これ試してみて」ってVS Codeで候補が出るんだ。<br>LLMじゃなくて、VS Codeの中の小さなローカルモデルがやってる。いつかこれが超すごくなるかも！詳しくはこちら：https://acornprover.org/docs/tutorial/proving-a-theorem/" userName="lacker" createdAt="2025/06/01 21:28:22" color="#785bff">}}




{{<matomeQuote body="Acornっていいね、知らなかった！数学界隈でどれくらい使われてるのかな？みんなLeanに集まってる気がするけど。" userName="ubj" createdAt="2025/06/01 22:57:26" color="">}}




{{<matomeQuote body="AcornはLeanよりずっと新しいから、Leanの方が使われてるよ。<br>でも数学者のほとんどは形式手法使ってないから、まだチャンスはあるかもね。" userName="lacker" createdAt="2025/06/02 00:44:43" color="">}}




{{<matomeQuote body="これ、めちゃくちゃ楽しみ！別のリポジトリになったらもっと見つけやすくて良いのにね。<br>数学は前から気になってたけど、Taoの解析学でプログラマー脳に合う厳密さを見て感動したんだ。<br>Leanも楽しかったけどMathlibはちょっと難しくて。<br>この記事は本とツールをつなぐ橋渡しになってて良いね！" userName="danabramov" createdAt="2025/05/31 17:18:18" color="#38d3d3">}}




{{<matomeQuote body="私も同じ！収束とかCauchy列とか、地元のごく安い出版社（Hindustan Book Agency）の本で学んだよ。" userName="dilawar" createdAt="2025/05/31 18:25:21" color="">}}




{{<matomeQuote body="解析学みたいなメジャーな数学分野で定理証明が盛り上がってきて嬉しいね！<br>PLTだと、Winskelの「The Formal Semantics of Programming Languages」がIsabelleで検証されてる有名な例があるよ（http://concrete-semantics.org）。<br>定理証明に興味あるなら、解析学よりPLTの方が最初は簡単かも。解析学の定理ってそれ自体が難しいからさ。" userName="nextos" createdAt="2025/05/31 18:23:50" color="#ff33a1">}}




{{<matomeQuote body="PLTの証明が簡単って言われてもあんまり驚かないな。ルーチン作業が多いって聞くし。<br>「数学的な」証明とはだいぶやり方が違うなら、スキルってどれくらい移るのかな？<br>Software Foundations (Rocq版) も良いよ（Lean版もあるかも）。最初のほうはやったけど結構楽しかった。" userName="cole-k" createdAt="2025/05/31 20:56:29" color="#45d325">}}




{{<matomeQuote body="Kevin BuzzardはLeanでの証明は単純なオブジェクト（整数）に関する深い構造についてだって言ってたよ。現代数学は複雑なオブジェクトがメインだね。定義があれば性質は再帰とか場合分けはそんなに使わないって。" userName="crvdgc" createdAt="2025/06/01 10:05:38" color="">}}




{{<matomeQuote body="Mathlibのアプローチと普通の教科書のアプローチを比べるのはすごく面白いだろうね。形式化されたライブラリは結果を最大限に一般化しやすいし、証明の構成を洗練しやすいんだ。証明のリファクタリングが簡単になるのは、論理的なつながりをシステムが追跡してくれるからだよ。紙とペンではそうはいかないから、やり直しの機会を見逃しがちだね。Mathlibの「最大限の一般性」版の解析学を教えるのが理にかなっているのか？他の証明主体の数学分野でも同じ疑問があるね。" userName="zozbot234" createdAt="2025/05/31 20:18:30" color="#45d325">}}




{{<matomeQuote body="入門コースでは絶対にやらない方がいいよ。学ぶことが多すぎるんだ。どう証明するか、どうプログラムするか、そして基本内容そのもの。教員の経験でもそうみたいだよ。上級者にはいいけど、平均的な学生には授業時間の無駄だって。" userName="krapht" createdAt="2025/05/31 21:29:05" color="">}}




{{<matomeQuote body="数学者でありプログラマーでもあるんだけど、どんなプログラム的な形式化も根本的な理解を教えるのには失敗すると思うな。俺の偏見だけど、数学概念は学術論文で学んできたからね。コードのオーバーヘッドはすごいと思うよ。スタイルが全然ないことが多いから。理解不能だと言われた他人の数学論文を解析した経験から言ってるんだけど、コードはそれより10倍ひどいよ。ほとんど理解しやすさに関する標準がないからね。" userName="smohare" createdAt="2025/05/31 20:52:07" color="">}}




{{<matomeQuote body="LeanとかCoqとかAgdaにも、証明の慣用的な書き方（イディオムとかタクティク）はないのかな？そういうのを学べば、証明が少し読みやすくなるんじゃない？" userName="thdhhghgbhy" createdAt="2025/06/01 18:50:33" color="">}}




{{<matomeQuote body="Terence Taoは自分のYouTubeチャンネルも持っていて、いくつかLeanを使ってる動画があるよ[1]。詳しくは知らないけど、彼がLLMと一緒に仕事してるのを見るのはクールだったな。[1] https://www.youtube.com/@TerenceTao27" userName="mettamage" createdAt="2025/06/01 01:30:42" color="#45d325">}}




{{<matomeQuote body="これはすごくいいプロジェクトだし、解析学みたいな基礎的なトピックにはすごくいいアプローチだと思う。いくつかすぐに心配な点があるよ。1. Mathlibの核となる解析学の結果は、フィルターという概念を使って一般的な、統一された方法で極限を扱ってる。それでも、これらの結果をイプシロン・デルタ形式に特殊化したものもあるけどね。Taoの解析学はもっと伝統的なイプシロン・デルタのアプローチを使ってるんじゃないかと思う。2. Mathlibは動きが速くて、壊すことがあるんだ。しょっちゅう名前が変わったりリファクタリングされたりする。下流のリポジトリは常にメンテナンスが必要になるね。" userName="jhanschoo" createdAt="2025/06/01 02:12:49" color="#ff33a1">}}




{{<matomeQuote body="自分で見てみればいいよ。実数列の極限に関する章の多くはサンプルページで見られるよ。ここにリンクがあるよ。https://link.springer.com/chapter/10.1007/978-981-19-7261-4_..." userName="ted_dunning" createdAt="2025/06/01 04:38:01" color="#ff5733">}}




{{<matomeQuote body="過激な意見かもしれないけど、数学教育はMathematicaみたいなComputer Algebra Systemsとか、LeanみたいなTheorem proversを構築することに焦点を当てるべきだと思うんだ。視覚化と実践的な応用にもっと重点を置いてね。究極的には、紙での数学は一切やらずに、学んだこと全部をLeanで証明できるようになることだってありうる。今のシステムの手計算が endless で、seem so useless なのはboringでtediousだし、数学を嫌いにさせてる気がするよ。" userName="UltraSane" createdAt="2025/06/01 20:12:02" color="">}}




{{<matomeQuote body="Leanの教科書！なんでHoTTじゃないんだろう？「Type Theory（HoTT）は数学の基礎として（ZFC）Set Theoryを置き換えるべきか？」っていうHNの記事があったよ。https://news.ycombinator.com/item?id=43196452<br>今週のHNから、追加のLeanリソースもあるよ。<br>「100 theorems in Lean」<br>https://news.ycombinator.com/item?id=44075061<br>「Google-DeepMind/formal-conjectures: collection of formalized conjectures in lean」<br>https://news.githubusercontent.com/google-deepmind/formal-conjectures/blob/main/README.md" userName="westurner" createdAt="2025/05/31 23:52:02" color="#ff33a1">}}




{{<matomeQuote body="HoTTの多くのアイデアは今、Agdaコミュニティで形式化が進んでるよ。[1]とか、新しい教科書[2]も出て、そのAgda形式化[3]もあるんだ。俺の専門外だから詳しい動機はわかんないけど、Agdaの方がLeanよりHoTTの形式化には向いてるみたいだよ。<br>[1] https://martinescardo.github.io/HoTT-UF-in-Agda-Lecture-Note...<br>[2] https://www.cambridge.org/core/books/introduction-to-homotop...<br>[3] https://github.com/HoTT-Intro/Agda" userName="v64" createdAt="2025/06/01 17:45:00" color="">}}




{{<matomeQuote body="HoTTはすごく専門的でニッチな話題だから、こういう風に二つの難しいプロジェクトを同時にやるのは意味がないよ。HoTTは標準として受け入れられるには程遠いし、ほとんどの人にはまず無理。これって、JavaScriptフレームワーク開発者にElmとかHaskellのフレームワーク作れって頼むようなもんじゃない？" userName="Mond_" createdAt="2025/06/01 13:53:06" color="">}}




{{<matomeQuote body="＞ HoTTはすごく専門的でニッチな話題だから、こういう風に二つの難しいプロジェクトを同時にやるのは意味がないよ。<br>形式化された数学では、ちょっと議論のあるトピックでもあるんだ。Leanや抽象数学の専門家、Kevin Buzzardの関連コメント見てみるといいよ。彼のNcatlabページ（https://ncatlab.org/nlab/show/Kevin+Buzzard）にリンクがあるんだけど、”Is HoTT the way to do mathematics?”（2020年）とか、”Grothendieck’s use of equality”（2024年、arXiv: https://arxiv.org/abs/2405.10387、Hacker Newsでの議論: https://news.ycombinator.com/item?id=40414404）とかね。" userName="zozbot234" createdAt="2025/06/01 14:47:41" color="">}}




{{<matomeQuote body="ていうか、なんでHoTTじゃなきゃいけないの？HoTTの定理証明系は使いやすくするための開発があまり進んでないし、ドキュメントもずっと少ない。HoTTのメリットも不明確で、カテゴリー理論のすごく難解な構成を扱う時しか作業を減らせないみたいに見えるよ。" userName="krapht" createdAt="2025/06/01 02:08:26" color="">}}




{{<matomeQuote body="＞ Why no HoTT, though?（なんでHoTTじゃないの？）<br>個人的にはちょっと変な質問だと思うな。これはTerrence Taoの解析学の教科書に合わせたLeanでの形式化なんだよ。彼は型理論の教科書なんて書いてないから、高階型理論（HoTT）じゃないんだ。彼がやろうとしてることとは全然違うんだよ。" userName="seanhunter" createdAt="2025/06/01 17:11:15" color="#38d3d3">}}




{{<matomeQuote body="HoTTが既に証明されてて、集合、圏、型も既に証明されてるなら、応用解析の本で同じことを証明する必要はないっていうのはわかるな。でも、実際の応用分野でHoTTを検証する別の機会にはなるかもね。「これはHoTTと整合してる？」ってツールが尋ねてくれるとか。" userName="westurner" createdAt="2025/06/03 14:39:11" color="">}}




{{<matomeQuote body="でも、彼がやろうとしてることはこれじゃないんだよ。彼は学部の実解析コース用の教科書を書いたんだ。←これにはHoTTは含まれてない。HoTTは学部の実解析じゃないからね。彼はその本のLean版の相棒を作ってるんだ。←だからこれにもHoTTは含まれてないんだ。<br>まるでホロホロ鳥の育て方とかスカイダイビングについて何も書いてないのと同じで、HoTTについても何も書いてない。彼が書こうとしてるのはそれじゃないからね。彼はただの数学者として、定理証明系がどうやってすごく具体的な主流の数学的タスク（解析学の基礎定理の証明）を達成する手助けになるかを示してるんだ。定理証明系の理論的な基礎について書こうとしてるわけじゃないんだよ。" userName="seanhunter" createdAt="2025/06/03 15:24:48" color="#45d325">}}




{{<matomeQuote body="その本には型は登場するの？おそらく、左から右へのMROは型理論のおかげでダイヤモンド継承を解決してるんだろうね。HoTTが古典空間での帰納的に提示される実解析にとって最も十分な型／圏／情報理論的な集合論であるかどうかは、結局重要じゃないんだろうな。でも、もし先行する形式化が関係ないなら、なんでLeanで発表するの？（公平に言って、HoTTはLean自体の基礎として証明されてるの？）" userName="westurner" createdAt="2025/06/03 23:31:06" color="">}}




{{<matomeQuote body="型は登場しないよ。解析学は普通、素朴集合論を使って自然数、整数、有理数、そして（Dedekind cuts経由で）実数を構成するんだ。間違いなく、数学の標準的な構成ではこれらはセットであって、タイプじゃない。そこから、標準的な解析学の最初のコースでは実数のトポロジー、数列と級数、実関数fの極限と連続性、微分と積分を扱う。その後、もし解析学をさらに深めるなら、たいてい複素数とその関数、それらでどう微積分をやるか、フーリエ解析などになるけど、タイプや型理論は俺が知ってる限りでは標準的な解析学の扱いに含まれないね。<br>タイプは純粋数学の主流なトピックじゃないんだ。型理論はBertrand Russellが集合論の問題を解決しようとした試みの一部だったけど、ZF/ZFCや素朴集合論の方が数学の他の全てを書き直す必要がずっと少なくて済んだから、そっちが標準的なアプローチになったんだ。タイプは形式論理や圏論を深く掘り下げる場合に出てくると思う（どちらも解析学ではないけど）。圏論はもっと一般的なトピック（群、環、体、加群）を扱った後に、抽象代数で少し触れられることがある。俺が知ってる型理論を知ってる人のほとんどは、純粋数学というよりはコンピュータサイエンス、特にラムダ計算を学ぶようなコンピュータサイエンスのコースから来た人たちだよ。<br>なんで、先行する形式化が関係ないならLeanで発表するの？<br>誰かがPowerPointでプレゼンするとしたら、PowerPointの作り方について話さなきゃいけない？誰かがLaTeXで論文を書くとして、その論文はLaTeXや数学的組版について書かなきゃいけない？それとも、それらは目的を達成するために使えるツールなの？彼はLeanを使ってるからLeanで発表してるんだ。彼は定理証明系や他のツールがどう数学者を助けるかに興味があるんだよ。Leanそのものの作り方について発表してるわけじゃないんだ。解析学で証明をするのにどうLeanを使えるかを示してるんだ。" userName="seanhunter" createdAt="2025/06/05 09:55:46" color="#ff33a1">}}




{{<matomeQuote body="超クール！「解析学I」って、俺（数学者じゃなくてエンジニアだけど）が初めて完全に追いついて進められた「本物の」数学教科書だったんだ。他の本（Rudinとか）は無理だったんだけどね。Leanの相棒ができれば、数学とプログラミング知ってる人が、もっと厳密に学ぶのに役立つといいな。<br>" userName="brosco" createdAt="2025/06/01 01:56:44" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これまで何年も、Taoの「解析学I」をLeanで形式化しようとした人がたくさんいたんだよね。まさにTaoが今やってることを。残念ながら、どれも最初の数章までしか進んでないけど（Taoはもっと先へ行けるって期待してる！）。俺自身も考えてたんだよ。ブログ（https://taoanalysis.wordpress.com/）の解答に、各演習の形式化された証明を付けようと思って。<br>この本のプライベートDiscordサーバーでも投稿したんだけど、役立つかもしれないからここに共有するね。関連リポジトリとかリンクがいっぱい。：<br>- https://github.com/cruhland/lean4-analysis which pulls from https://github.com/cruhland/lean4-axiomatic<br>- https://github.com/Shaunticlair/tao-analysis-lean-practice<br>- https://github.com/vltanh/lean4-analysis-tao<br>- https://github.com/gabriel128/analysis_in_lean<br>- https://github.com/mk12/analysis-i<br>- https://github.com/melembroucarlitos/Tao_Analysis-LEAN<br>- https://github.com/leanprover-community/NNG4/ (this one does not follow Tao’s book, but it’s the Lean4 version of the natural numbers game, so has very similar content as Chapter 2)<br>- https://github.com/djvelleman/STG4/ (similar to the previous one, this is the Lean4 set theory game, so it’s possibly similar content as Chapter 3; however, in https://github.com/djvelleman/STG4/blob/main/Game/Metadata.l... I see ”import Mathlib.Data.Set.Basic” so this seems to just import the sets from Lean rather than defining it anew and setting down axioms, so this approach might mean that Lean will “know” too much about set theory, which is not good for our purposes)<br>- https://gist.github.com/kbuzzard/35bf66993e99cbcd8c9edc4914c... -- for constructing the integers<br>- https://github.com/ImperialCollegeLondon/IUM/blob/main/IUM/2... -- possibly the same file as above<br>- https://github.com/ImperialCollegeLondon/IUM/blob/main/IUM/2... -- for constructing the rationals<br>- https://lean-lang.org/theorem_proving_in_lean4/axioms_and_co... -- shows one way of defining a custom Set type<br>" userName="IssaRice" createdAt="2025/06/01 02:34:18" color="#38d3d3">}}




{{<matomeQuote body="この「Mathlibの同等物への同型写像を証明すること」って、どれくらい重要なんだろうね？　つまり、同型写像の部分を省いちゃったら、何か変わるのかな？　例えば定理の自動翻訳とかで、実際にどこかで使われてるの？<br>" userName="practal" createdAt="2025/05/31 17:40:57" color="#ff5733">}}




{{<matomeQuote body="たとえ他になくても、教育的な価値はあるよね。自分が作った集合とか操作が、本でこれから使うものと「同じ」だって、自分で納得できるわけだから。<br>" userName="titanomachy" createdAt="2025/05/31 19:08:29" color="#ff33a1">}}




{{<matomeQuote body="個人的には、教育的な視点からそれがすごく気に入ったんだ。この教科書が形式化されたらって夢見てたとき、形式化がMathlibから離れすぎると扱いにくくなるんじゃないかって心配してたんだよね。でも、Mathlibをそのまま使うだけだと、自己完結性が失われるのも心配だった。今回のやり方（同型写像で繋ぐ）は、いい妥協点だと思うよ。<br>" userName="danabramov" createdAt="2025/05/31 19:44:35" color="#ff5733">}}




{{<matomeQuote body="こういう同型写像は、次のことをハッキリさせるのに役立つんだ。<br>1.自分が今やった開発が、Mathlibにある対応するものと等価だってこと。開発って具体的な部品から始めることが多いけど、Mathlibの定義は複雑な一般的なクラスを特別化したものだったりするからね。<br>2.Mathlibのものの基本的な記法とか名前の付け方。これが違う場合があるから。<br>" userName="jhanschoo" createdAt="2025/06/01 02:20:26" color="#ff5733">}}




{{<matomeQuote body="CoqとかAgdaじゃなくて、なんでLeanを選んだのか、彼はあんまり詳しく説明してないんだよね。<br>" userName="thdhhghgbhy" createdAt="2025/06/01 18:05:13" color="">}}




{{<matomeQuote body="この本に限って言えば、理由はTaoが自分の研究で既にLeanを知ってて使ってるからじゃないかな（E.g., https://terrytao.wordpress.com/2023/11/18/formalizing-the-proof-of-the-polymath-prime-gaps-project/）。<br>じゃあなんで数年前にLeanを選んだのか、それは興味深い裏話だろうけど、彼が具体的に何か書いたのは知らないな。<br>" userName="_delirium" createdAt="2025/06/01 18:30:01" color="#ff33a1">}}




{{<matomeQuote body="Kevin BuzzardがLeanを有名にして、すごく難しい理論の証明に使われてるから、Leanを選んだんじゃないかなって推測するよ。<br>" userName="UltraSane" createdAt="2025/06/01 20:17:46" color="">}}




{{<matomeQuote body="線形代数を学ぶためにLeanを試したいんだけど、いいスタート地点を知ってる人いない？<br>" userName="331c8c71" createdAt="2025/06/01 19:56:52" color="">}}




{{<matomeQuote body="Leanの定番入門書は’Mathematics in Lean’だよ。これね→https://leanprover-community.github.io/mathematics_in_lean/i... 線形代数は9章まで出てこないし、内容は積み重ね式なんだけど、最初の4章で基本を学んで、その後は先に進んでみたらどうかな？" userName="griffzhowl" createdAt="2025/06/01 22:09:56" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
