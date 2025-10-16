+++
date = '2025-10-09T00:00:00'
months = '2025/10'
draft = false
title = 'Python 3.14、ついに登場！その速度はいかに？'
tags = ["Python", "プログラミング", "パフォーマンス", "ソフトウェア開発", "バージョン"]
featureimage = 'thumbnails/red2.jpg'
+++

> Python 3.14、ついに登場！その速度はいかに？

引用元：[https://news.ycombinator.com/item?id=45524702](https://news.ycombinator.com/item?id=45524702)




{{<matomeQuote body="関係ないけど、この人には感謝しかないよ！Flaskのチュートリアルで僕のウェブサイトを立ち上げられたんだ。サイトローンチ直前の大事な時に、Flaskでのファイル処理で困ってたら、Stack Overflowで助けてくれて、その修正でサイトは大ヒット！マジ感謝！<br>詳しくはこちら: https://stackoverflow.com/a/34391304/4180276" userName="nadermx" createdAt="2025/10/09 17:17:24" color="#ff33a1">}}




{{<matomeQuote body="Flaskの話題から外れるけど、新しいFlaskロゴが本当に嫌いなんだ。古いロゴはヴィンテージ感があって良かったのに、新しいロゴはWordArtで飢えた高校生が作ったみたいだろ？<br>旧ロゴ: https://upload.wikimedia.org/wikipedia/commons/3/3c/Flask_lo...<br>新ロゴ: https://flask.palletsprojects.com/en/stable/_images/flask-na..." userName="wiseowise" createdAt="2025/10/09 20:06:53" color="">}}




{{<matomeQuote body="Cracker Barrelみたいに、ロゴを元に戻すべきだよ！<br>1. 古いロゴに魅力があったのに、<br>2. 魂のない現代的なロゴに変わって、<br>3. 消費者が激怒！<br>4. 会社（またはオープンソースプロジェクト）が正気に戻って古いロゴに戻る。これに期待するね。<br>画像: https://media.nbcboston.com/2025/08/cracker-barrel-split.jpg" userName="Stratoscope" createdAt="2025/10/09 20:37:48" color="#45d325">}}




{{<matomeQuote body="Cracker Barrelの“論争”って、ほとんどボットが煽ってたみたいだね。" userName="UltraSane" createdAt="2025/10/10 00:52:26" color="">}}




{{<matomeQuote body="それ、何か根拠あるの？" userName="eatkd" createdAt="2025/10/10 01:09:30" color="">}}




{{<matomeQuote body="もちろん、これ見てよ。<br>https://www.nrn.com/casual-dining/cracker-barrel-s-logo-cont...<br>https://www.wsj.com/articles/bot-networks-are-helping-drag-c..." userName="toomuchtodo" createdAt="2025/10/10 01:20:37" color="#45d325">}}




{{<matomeQuote body="誰かCracker Barrelの株を空売りした人いる？もしそうじゃないなら、ボットが時間やお金をかける理由が分からないよ。政治的な影響力も得られてないみたいだし。<br>実際、僕が南部で知ってる友達や親戚で、あのデザイン変更を気に入ってる人なんて一人もいないんだ。" userName="hajile" createdAt="2025/10/10 03:39:23" color="">}}




{{<matomeQuote body="気づいてないかもしれないけど、君の主張には何の証拠もないよ。" userName="MomsAVoxell" createdAt="2025/10/10 09:16:07" color="">}}




{{<matomeQuote body="新しいロゴを知らなかったよ…そして、たくさんのFlaskアプリを使ってきたけど、今初めてロゴが唐辛子じゃないってことに気づいた…" userName="BreakingProd" createdAt="2025/10/10 00:59:33" color="#ff33a1">}}




{{<matomeQuote body="良い話だね！君のプロフィール見て思ったんだけど、そのサイトってhttps://yout.com/だったんだね。まだFlaskで動いてるの？" userName="svieira" createdAt="2025/10/09 17:27:36" color="">}}




{{<matomeQuote body="彼がPatreonやってるなんて知らなかったな。最大100人までってことだったから、最初の100人が彼のDiscordに1年間アクセスできるように設定したんだ。https://www.patreon.com/miguelgrinberg/redeem/f/C28EB241BB" userName="nadermx" createdAt="2025/10/09 18:33:24" color="">}}




{{<matomeQuote body="もうすっかり成長したんだ。管理パネルにはDjango使ってるよ。Flaskがダメだったわけじゃないんだ。ただ、その方がユーザーを管理しやすくなっただけなんだよね。" userName="nadermx" createdAt="2025/10/09 21:12:12" color="">}}




{{<matomeQuote body="Django adminのせいかな？FlaskとDjangoで迷ってる人への欠点とか注意点ってある？役立つ移行ガイドとかあったら教えてほしいな。" userName="swyx" createdAt="2025/10/10 02:10:29" color="#785bff">}}




{{<matomeQuote body="古いロゴは長方形じゃないとダメってのが、Flaskみたいなモダンなものには合わないんだよね。" userName="hackernewds" createdAt="2025/10/09 21:08:24" color="">}}




{{<matomeQuote body="ループの中でいちいち時間測って合計するベンチマークはダメ！ループ全体を測って回数で割るべきだよ。時間計測にはブレがあるから、結果が狂っちゃうんだ。" userName="sroussey" createdAt="2025/10/09 22:05:18" color="#45d325">}}




{{<matomeQuote body="標準ライブラリのtimeitを使うのがいい方法だよ。<br>https://docs.python.org/3/library/timeit.html" userName="8organicbits" createdAt="2025/10/09 23:55:36" color="#ff33a1">}}




{{<matomeQuote body="実際のベンチマークは、起動から計測すべきだよ。コールド起動とホット起動（キャッシュあり）の両方ね。俺はシェル組み込みのtimeコマンドしか使ったことないかも。GNUのtimeコマンドはもっと詳しいパフォーマンスデータを出してくれるんだ。" userName="mjevans" createdAt="2025/10/10 05:44:49" color="#ff33a1">}}




{{<matomeQuote body="$(which time)って書くのは正直面倒だけど、GNU timeの-vオプションで出る統計情報がすごく役に立つから、やめられないんだよな。" userName="rocqua" createdAt="2025/10/10 06:34:22" color="">}}




{{<matomeQuote body="”env time”ってやれば、もっと簡単になるんじゃない？" userName="Tom1380" createdAt="2025/10/10 09:36:47" color="">}}




{{<matomeQuote body="単に’time’って書くだけでも大丈夫だよ。引用符を使えばエイリアスや組み込みコマンドを上書きできるからね。<br>$ ’time’ -v -- echo hi<br>hi<br>Command being timed: ”echo hi”<br>[...]" userName="aaronmdjones" createdAt="2025/10/10 13:47:32" color="">}}




{{<matomeQuote body="一番楽なのは、’time’のエイリアスを作るか、fishみたいなシェルで関数を作るのがいいよ。" userName="janc_" createdAt="2025/10/11 23:06:48" color="">}}




{{<matomeQuote body="Pythonのニュースを聞くたび、2025年になってもPyPyがメインラインPythonと別々ってのが残念だなぁ。GIL-less Pythonが出たら、GIL-less C FFIも可能になるのかな？そうなったらPythonにとってめちゃくちゃデカい勝利になると思うんだ。" userName="didip" createdAt="2025/10/09 17:40:45" color="#ff5c5c">}}




{{<matomeQuote body="PyPyが追加したJITコンパイルは、まさにCPythonのJIT開発プロジェクトが今取り組んでるものなんだ。まだ始まったばかりだけど、3.15にはすごく速くなるケースも出てくる可能性が高いよ。PyPyのデベロッパーも協力してくれてて、彼らの知見はめちゃくちゃ貴重らしい。" userName="taleinat" createdAt="2025/10/10 08:31:35" color="#ff5733">}}




{{<matomeQuote body="「GIL-less PythonがいずれGIL-less C FFIを可能にするのか？」って？C FFIは前から手動でGILを解放できたじゃん。何を意味してるの？" userName="petters" createdAt="2025/10/09 18:46:30" color="">}}




{{<matomeQuote body="「GIL-less PythonがいずれGIL-less C FFIを可能にするのか？」って？それって今のfreethreadingのことじゃないかな？多くのC FFIライブラリが「GIL-less」になってないから、デフォルトで有効にできないんだと思うよ。" userName="nu11ptr" createdAt="2025/10/09 18:02:45" color="#785bff">}}




{{<matomeQuote body="懸念をはっきりさせてくれる？C言語から入った自分としては、たくさんのコンパイラ実装でたくさんの「方言」があるのは当たり前って感じなんだ。健全だし、実験を促すよね。健全な言語エコシステムの兆候じゃないかな？PyPyのCPythonとの互換性なんて、これに比べたらすごく小さいよ。https://pypy.org/compat.html" userName="8organicbits" createdAt="2025/10/10 00:07:45" color="#ff5733">}}




{{<matomeQuote body="それは文化的なものだね。C言語の文化は、みんなが自分専用のソリューションをゴリゴリ作ることがすべてで、それが方言の形成を促すんだ。一方、Pythonの文化は「唯一の、そしてできればたった一つの明白な方法があるべきだ」っていうZen of Pythonがすべてなんだよ。https://peps.python.org/pep-0020/#the-zen-of-python" userName="ModernMech" createdAt="2025/10/10 14:20:18" color="#ff5733">}}




{{<matomeQuote body="まあ、実験的なJITが追加されたってことは、PyPyに一歩近づいたってことかな？新しいJITを構築するって方向だろうけど、PyPyからたくさんのことを学んでると良いね。" userName="natdempk" createdAt="2025/10/09 22:25:04" color="">}}




{{<matomeQuote body="情報共有はされてるよ。Antonio Cuniが最新のCoython開発者スプリントに参加して、PyPyからの知見を共有したんだ。https://antocuni.eu/2025/09/24/tracing-jits-in-the-real-worl..." userName="mattip" createdAt="2025/10/10 05:02:57" color="#45d325">}}




{{<matomeQuote body="どう変わっていくと思う？Pythonがまた破壊的な変更を導入して、多くのユーザーにとってランダムにパフォーマンスが悪化するようなことになるの？なんでPythonの運営者はそんなことをしたいんだろう？" userName="freddie_mercury" createdAt="2025/10/09 21:56:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="なんでC FFIがそんなに人気なのか理解できないよ。C FFIを書くのにかかる時間って、Cで実行ファイルを作ってPythonからそれを呼び出すのとほとんど同じじゃない？C FFIが役立つのはコードを動的にしたい時だけで、それってすごくニッチな使い方だよ。" userName="ActorNightly" createdAt="2025/10/10 05:38:45" color="">}}




{{<matomeQuote body="FFIは一度書けば何百、何千もの他のデベロッパーが使えるようになるんだ。使い捨ての実行ファイルではほとんど意味がないね。Pythonのエコシステムにある他のライブラリと組み合わせて使うってのもあるよ。HTTPをCでやりたい？それともrequestsを使う？" userName="Too" createdAt="2025/10/10 16:54:07" color="#ff33a1">}}




{{<matomeQuote body="もっと詳しく教えてよ。例えばFFIなしでNumPyをどうやって作るの？" userName="eternauta3k" createdAt="2025/10/10 06:33:35" color="#ff5c5c">}}




{{<matomeQuote body="最近はArrowフォーマットの共有メモリとIPCで制御すれば、かなり高性能なNumPyみたいなのが作れるかもね。<br>でも、FFIよりずっと複雑だし、全然簡単じゃないけど…" userName="jononor" createdAt="2025/10/10 07:57:13" color="#ff33a1">}}




{{<matomeQuote body="C言語の関数とプロセス内でメモリを共有するのにFFIが必要なの？" userName="KeplerBoy" createdAt="2025/10/10 07:47:05" color="#38d3d3">}}




{{<matomeQuote body="Guidoは7年以上前に辞任したよ。どれだけ世間知らずなの？" userName="freddie_mercury" createdAt="2025/10/09 21:53:30" color="">}}




{{<matomeQuote body="誰のこと言ってるの？Pythonにはもうずいぶん長いこと独裁者なんていないよ。" userName="rowanG077" createdAt="2025/10/09 21:39:11" color="">}}




{{<matomeQuote body="でも、他のことについては彼が正しいね。" userName="otabdeveloper4" createdAt="2025/10/10 05:09:36" color="">}}




{{<matomeQuote body="TeXみたいに3.14で止まらないことを願うよ。<br>https://www.reddit.com/r/RedditDayOf/comments/7we430/donald_..." userName="amelius" createdAt="2025/10/09 17:50:35" color="">}}




{{<matomeQuote body="止まらないことを願うって？<br>Donald Knuthは、『不変のシステムが今も未来も同じ結果を出すことが、新機能導入よりも重要』と強く信じてる。<br>3年くらいで全てが時代遅れとされる世の中で、これは新鮮だね。僕らの業界は、完全性や正確さより新しさへの飽くなき欲求という病にかかってる。<br>100年持つコードを書けない理由はないよ。コードはただの数学だ。数学で『まだ多項式使ってるの？』なんて言わないだろ？新しいバージョンばかり追い求めるのはやめよう。変わる必要のないコードを書ける人こそ、この業界に本当に貢献してるのかもしれないね。" userName="feoren" createdAt="2025/10/09 18:56:00" color="#ff5733">}}




{{<matomeQuote body="＞100年持つコードを書けない理由はない。コードはただの数学だ。<br>理論上はそうだけど、実際は違うよ。コードは単なる数学じゃなくて、特定のコンピューティングハードウェアを対象に設計された言語で書かれた数学なんだ。そしてコンピューティングハードウェアは変わり続ける。<br>70年前のソフトウェアのソースコードがあったとしても、せいぜいハードウェアをエミュレートする新しいコードを書く必要があるし、最悪の場合はどうにもならない。ハードウェアが変わらなければソフトウェアの腐敗も止まるけど、それは永遠にないね。新しいハードウェアを活用するために更新しないプログラムは、そうするプログラムに駆逐されるよ。" userName="kibwen" createdAt="2025/10/09 21:04:02" color="#785bff">}}




{{<matomeQuote body="x86には30年以上もの後方互換性があるし、周辺機器も一緒だろ。ソフトがコロコロ変わるのはハードの変更じゃなくて、ハードが拡張するからだよ。Wirthの法則にもあるけど、ソフトは使えるハードリソース全部使い切るように膨らむもんだ。" userName="KK7NIL" createdAt="2025/10/09 22:33:59" color="#785bff">}}




{{<matomeQuote body="1995年のソフトを最新のシステムで動かしてみなよ。なんでそんなに複雑かって、いろんな面白い理由がわかるはずさ。" userName="Night_Thastus" createdAt="2025/10/09 22:53:38" color="">}}




{{<matomeQuote body="公平に言ってさ、もし数学にバージョンがあったら、ひどい表記のしがらみや記号の使い回しを捨てて、πじゃなくτを使えたかもね。数学の記法はPerlよりひどいって言ってもいいくらいだ。もしPerlで全部一文字の変数名が必須だったらどう思う？変数名並べたら掛け算って、現代の言語設計者ならやらないだろ。狂ってるよ。<br>1950年からのプログラミングみたいに、もし数学も進化してたらって想像してみてくれ。" userName="0xDEAFBEAD" createdAt="2025/10/10 03:36:35" color="#ff5c5c">}}




{{<matomeQuote body="えーっと、微分で無限小なんて誰も使ってないだろ、今はみんな極限を使ってるんだ。dxとかdyみたいな無限小時代の名残はあるけど、あれはただの後方互換レイヤーだよ。<br>とにかく、こんな意見が出るからこそ、イケてるやつは今Typstを使ってるんだ。TeXとその仲間は停滞してるし、使いにくいし、今のワークフローには合わないし、Rustで書かれてないしね。" userName="bitwize" createdAt="2025/10/09 19:34:03" color="">}}




{{<matomeQuote body="30年前、Windows 95前は16ビットOSで、今のWindowsはサポートしてない。PCIeやSATAは2003年、USBも1996年だ。VGA、DVIも消えて、HDMIは2000年代。要するに、1995年のPCの周辺機器は現代のPCとはほとんど繋がらないし、ソフトも互換レイヤーがないと動かない。31年前のWin16アプリを動かした経験から、互換レイヤーには問題があるね。" userName="jcranmer" createdAt="2025/10/10 00:10:54" color="#45d325">}}




{{<matomeQuote body="このコメント、Hacker Newsっぽいな。数学の表記は何世紀もかけて進化して、今の形になったんだ。目的に合わせてかなり最適化されてるよ。バージョン番号？冗談だろ？" userName="tyg13" createdAt="2025/10/10 06:44:55" color="">}}




{{<matomeQuote body="エミュレーションがここまで成熟してるんだから、将来もずっと可能であり続けるってことにはならないのかな？" userName="7952" createdAt="2025/10/09 21:32:05" color="">}}




{{<matomeQuote body="“進化した”って？そう、進化はしたけど、設計されたわけじゃないだろ。“バージョン番号”がなきゃ後方互換性必須で、古いものを消すのが難しいんだ。書いたコードが全部IBMメインフレームのアセンブリとして動かなきゃいけなかったら、プログラミングはどうなってたか考えてみろよ。<br>τがいい例だ。みんなπよりτが良いって言うけど、どれだけ普及した？これが“徹底的な最適化”ってわけ？<br>ローマ数字がアラビア数字に変わるのに何百年もかかったんだ。“ローマ数字で十分”って言うのはストックホルム症候群だろ。君のコメントも同じ感じがする。深呼吸してこのビデオを見ろよ: https://www.youtube.com/watch?v=KgzQuE1pR1w<br>“冗談だろ？”って？俺は挑発してるんだよ。冗談じゃない。“強い意見、しかし弱く保持する”。" userName="0xDEAFBEAD" createdAt="2025/10/10 08:05:57" color="#45d325">}}




{{<matomeQuote body="OSが原因じゃない例（Windows 11で90年代のゲームを動かすとかじゃないやつ）や、古いVoodoo GPUみたいな特殊なハードウェアが原因じゃない例ってあるの？" userName="KK7NIL" createdAt="2025/10/09 23:53:42" color="">}}




{{<matomeQuote body="“イケてるやつはTypstを使ってる”って？俺が言ってる新しさ信仰にわざと乗ってるだろ。“本当のプログラマーは最新だからTypst！”って？Typstのサイトも“新しい基盤”って。魅力は新しさだけか？完璧な例をありがとう。<br>“TeXは停滞、使いにくい、Rustじゃない”って？使いにくさは問題だけど、停滞とかRustじゃないってのは新しさバイアスだろ。良い競争はいいけど、新しさへの依存はダメだ。<br>数学は変わるけど、コードみたいに腐らない。新しいものが出たら古いのは置き換わるか、用途別に分岐するんだ。無限小は研究で使われてるし、極限が中心になったのは教育の方だね。" userName="feoren" createdAt="2025/10/09 19:47:20" color="#785bff">}}




{{<matomeQuote body="コードは数学だから100年持つコードを書けるって言うけど、例えが微妙じゃない？数学の記法も進化してきたし、ローマ数字なんて使ってないでしょ。ゼロやイコール記号の発明はすごい新機能だったんだから。" userName="sacado2" createdAt="2025/10/10 08:52:47" color="">}}




{{<matomeQuote body="x86に魔法の後方互換性はないよ。Windowsのすごい後方互換性は、Microsoftが地道に努力し続けてるからなんだ。" userName="og_kalu" createdAt="2025/10/09 23:41:03" color="">}}




{{<matomeQuote body="OSやハードウェアがいらないプログラムに限定したら、対象となるプログラムはかなり少なくなるよ。" userName="lmm" createdAt="2025/10/10 00:11:00" color="">}}




{{<matomeQuote body="数学記法が進化しても、古い証明は時代遅れにならないし、数学に“破壊的変更”はないんだ。ゲーデルの不完全性定理の時は危機だったけど、結局は再構築されたしね。プログラミング言語も改善は必要だけど、破壊的変更は慎重に考えるべき。Python 2.7が残ってるのは迷惑だけど、なかったらもっと迷惑だろうね。コア機能は変更しない言語群とか、コードの長期的な健全性のためにできることはたくさんあるはずだよ。" userName="feoren" createdAt="2025/10/10 18:06:27" color="#785bff">}}




{{<matomeQuote body="数学記法こそ、後方互換性がないものじゃないかな。分野が違えば記号の意味は変わるし、Eulerも“i”を最初は無限大で使ってたのに、後に虚数単位にした例もあるよ。数字の定義やゼロ・イチが数かどうかって、シンプルな定義も時代で変わってるんだ。https://en.wikipedia.org/wiki/Glossary_of_mathematical_symbo...<br>https://en.wikipedia.org/wiki/History_of_mathematical_notati..." userName="Someone" createdAt="2025/10/10 10:58:03" color="#45d325">}}




{{<matomeQuote body="“コードは数学だから100年持つコードを書ける”って言うけど、天気予報だって“ただの数学”だよ。でも、昨日の予報が来年の4月に役に立つなんてこと、ないでしょ。" userName="lxgr" createdAt="2025/10/10 15:18:27" color="#ff5c5c">}}




{{<matomeQuote body="いや、OSやハードウェアに依存しないってことはないけど、設計されたのと同じOSで実行するように制限はするよ。" userName="KK7NIL" createdAt="2025/10/10 14:56:39" color="">}}




{{<matomeQuote body="記号の再利用は、後方互換性が壊れるって意味じゃないんだ。分野が違っても文脈で意味はわかるし、どんな言語でも記号の再利用はよくあること。後方互換性が壊れるっていうのは、昔のものが現代の方法で使えなくなること。昔の数学記法は今のとは違うけど、今でも使えるし、新しい記法で使えなくなったわけじゃないよ。" userName="9rx" createdAt="2025/10/10 15:27:33" color="#38d3d3">}}




{{<matomeQuote body="数学に“破壊的変更”はないって意見に、俺は反対だな。非ユークリッド幾何学の登場で、何世紀も使われた多くの定理が破綻したじゃないか。みんなが“コア”とすべき機能で意見が違うから、プログラミング言語での破壊的変更のないコア言語は難しいんだ。数学は目的が共通してるけどね。もしそういう言語があるならANSI Cだろうな。35年以上も使われてて、C#、Java、JavaScript、Python、Go、PHP、Perl、Haskell、RustもCを基盤にしてるけど、それが業界にとって最高だったかはわからないね。" userName="sacado2" createdAt="2025/10/10 18:56:26" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ちょっと関連する質問だけど、コードって本当にただの数学なの？ユーザー入力とかタイミング、割り込み、エラー処理みたいなものを数学として表現するって可能なのかな？" userName="denzil" createdAt="2025/10/10 00:36:59" color="">}}




{{<matomeQuote body="x86には魔法の互換性があるわけじゃないって？俺はそんなこと言ってないし、他のISAにも同等かそれ以上の互換期間があるよ。IBM Zシステムは1964年のSystem/360と互換性あるしね。Windowsの互換性が全部Microsoftのおかげってのもおかしいよ。<br>WindowsはX86の後方互換性を壊す変更で、何か補償しなきゃいけなかった具体例を一つでも示してみてくれよ。" userName="KK7NIL" createdAt="2025/10/09 23:51:04" color="">}}




{{<matomeQuote body="3年で時代遅れになるって言われる世界で新鮮だって？いや、生まれたときからあるからって理由だけで、いまだに残ってるくだらないものも山ほどあるんだよ。<br>コードはただの数学？はぁ？違うでしょ。もしそうなら、バグなんて絶対に出ないはずだよ。" userName="Razengan" createdAt="2025/10/10 16:57:37" color="">}}




{{<matomeQuote body="数学は変わるべきだし、変わるけど、コードみたいに時間で腐敗したりしない、って俺は言いたいの。CSも同じで古くならないよね。概念は残るけど、ユークリッドの『原論』を原文で読んだり、概念を使う人たちが母国語版すら読んだことがないのは確実だよ。" userName="psychoslave" createdAt="2025/10/09 20:18:32" color="">}}




{{<matomeQuote body="安定性は魅力的だし、すぐに陳腐化する新しいものを追いかける疲労感もよくわかるよ。<br>100年持つコードを書けない理由はないって？いや、無理だよ。コードは文脈に依存するし、コンパイラやインタプリタ、ハードウェアも常に変化するからね。<br>数学で「多項式なんてまだ使ってんの？」って言うようなもの？いや、多項式が今日みたいに扱われてたわけじゃない。バビロニア時代と現代のデカルト記法は全く違うし、数学者も常に革新的なことしてるんだよ。" userName="psychoslave" createdAt="2025/10/09 20:07:36" color="#ff33a1">}}




{{<matomeQuote body="もしかしてCommon Lispの開発者？安定性を褒めてるから、もし違っても気に入るかもよ。言語設計とか使いやすさとかコミュニティの議論は置いといて、Common Lispは標準がほぼ凍結されてるから、標準コードが「ほぼ無期限に」動き続けるのが強みなんだ。拡張性も標準に組み込まれてるから、ライブラリで後方互換性を保ちながら進化できるしね。でも、真の非同期プログラミングとか課題もあるし、評価が「最高！」と「使いにくい！」で二極化する言語だけどさ。" userName="dieggsy" createdAt="2025/10/09 20:11:22" color="#785bff">}}




{{<matomeQuote body="Windowsの互換性が全部Microsoftのせい、なんて言ってないよ。Windowsはあくまで例だって。X86の後方互換性を壊す変更の例だって？<br>Intel 80386での16ビットから32ビット保護モードへの移行、Intel 80286が24ビットアドレスバス導入で8086の挙動を壊したこと、x86-64への移行でMicrosoftがエミュレーションやWOW64で対応したこと、とかね。これらを見ても、どれだけ努力があったか分かるでしょ。" userName="og_kalu" createdAt="2025/10/10 00:15:35" color="#ff5733">}}




{{<matomeQuote body="昔の数学記法は今と違うけど使えるって？でも、現代の数学者でそれを理解できる人は少ないよ。十分なデータがあれば意味を解読できるけど、それはエミュレータでコードを動かすのと似てるね。俺たちが手軽に使えるのは、昔の数学の「成果」であって、記法そのものじゃないんだ。" userName="Someone" createdAt="2025/10/10 19:54:38" color="">}}




{{<matomeQuote body="300以上のコメントあるのに、まだ納得できる答えがないね。PyPyの方がずっと速いのに、なんでコミュニティはCPythonを速くしようと時間無駄にしてるの？PyPyがライブラリとか最新CPythonとの機能差があるのはわかるけどさ。みんなでPyPyに移行して足りない部分を補完して、PyPyを「公式Python」にするのはダメなの？何か深刻な技術的理由があるの？" userName="wbolt" createdAt="2025/10/10 05:00:55" color="#ff33a1">}}




{{<matomeQuote body="PyPyに移行しない深刻な技術的理由だって？あるよ。一つ目は起動時間。REPLが遅いと開発時間がめちゃくちゃかかるんだ。普通のPythonなら実行中に開発できるしね。二つ目は互換性。NumPyとかPyTorchはC拡張で書かれてて、常に進化してるからPyPyで追従するのは大変。三つ目はLLM。本当に速度が必要なら、Gemma27bqatみたいなLLMを使えば、PythonコードをC/C++に簡単に翻訳できるよ。" userName="ActorNightly" createdAt="2025/10/10 05:49:42" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
