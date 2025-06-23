+++
date = '2025-06-16T00:00:00'
months = '2025/06'
draft = false
title = '多機能なターミナルブラウザChawanが登場！'
tags = ["ターミナル", "ウェブブラウザ", "プログラミング", "OSS", "Nim"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> 多機能なターミナルブラウザChawanが登場！

引用元：[https://news.ycombinator.com/item?id=44293260](https://news.ycombinator.com/item?id=44293260)




{{<matomeQuote body="Nim製のターミナルベースのWebブラウザChawanについて詳しい紹介だよ。[1]許容範囲（個人差あり）のCSSレンダリングや一部のJSサポート、インライン画像（sixel/kitty）に対応してるんだ。http(s)以外にも(s)ftpやgopher、geminiなんかのプロトコルも使えるよ…。Chawanはもともとw3mのクローンとして始まったからUIは似てるんだけど、アーキテクチャは結構違ってて、ページ読み込みは別プロセスだし、プロトコルやファイルタイプの扱いは外部バイナリに分離されてるんだ。その面白い結果として、カスタムのインライン画像フォーマットのデコーダまで登録できるんだけど、実用的なケースはかなり少ないかもね。いくつかのWebサイトがChawanでどう表示されるかが見られるギャラリーはこちらだよ: https://chawan.net/gallery/index.html<br>[1]: https://nim-lang.org" userName="shiomiru" createdAt="2025/06/16 20:48:43" color="#785bff">}}




{{<matomeQuote body="ありがとう、ちょっと調べ物したい時に別のblinkエンジンを使わずに済む方法があるのはホント助かるよ！学校終わったら試してみるね ; )<br>まだ出てないみたいだけど、特にsixel使えない人にとってマジですごいハックなのが、Chromiumのターミナル移植版Carbonylだよ: https://github.com/fathyb/carbonyl。…でも元の作者さんが更新する時間がないみたいなんだ。だからすごく必要最低限で、キーボードショートカットとかファイル保存とかたくさんの機能が足りないんだけど、でも明らかに完全なWeb互換性があるし、とにかくめちゃくちゃクールなんだ。Rustのスキルがある誰かにまた引き継いでもらいたいなあって願ってるよ、最後に見た時（数ヶ月前）はどのフォークも全然勢いがなかったから。" userName="eMPee584" createdAt="2025/06/17 06:26:45" color="">}}




{{<matomeQuote body="余談だけどCarbonylのGitHub投稿見てるとさ、みんな作者さんの健康について、パレスチナ人だから無事かどうかって尋ね続けてるんだよね。<br>作者さんが無事だといいな。彼の仕事はホントに素晴らしかったと思うよ、マジで。戦争なんてクソ食らえだ。" userName="Imustaskforhelp" createdAt="2025/06/17 11:41:48" color="">}}




{{<matomeQuote body="@shiomiru<br>TTY関連のこういう概念について学ぶのに、あなたの意見で一番いいリソース（有料・無料問わず）は何？例えばhttps://www.linusakesson.net/programming/tty/index.phpは知ってるけど、termcapやterminfo、cursesには触れてないんだ。<br>コメントの一つにhttp://www.amazon.com/termcap-terminfo-OReilly-Nutshell-Lind...っていうO’Reillyの本や、<br>オンラインだとhttps://www.scribd.com/document/831486848/Termcap-and-Termin...)が紹介されてたけどね。" userName="onetom" createdAt="2025/06/17 06:31:11" color="#ff33a1">}}




{{<matomeQuote body="Chawanは独自のターミナルモジュールを使ってるから、標準のX/Open cursesについての知識はそんなに詳しくないんだ。<br>とは言え、実際のエスケープシーケンスに関しては、XTermのctlseqs.ms[1]がホントに貴重なリソースだよ。あとnick blackのnotcurses[2]からもたくさんのアイデアをもらったし、特に彼の「sprixels」についてのノート[3]はホントおすすめ。<br>[1]: https://invisible-island.net/xterm/ctlseqs/ctlseqs.html<br>[2]: https://nick-black.com/dankwiki/index.php/Notcurses<br>[3]: https://nick-black.com/dankwiki/index.php/Theory_and_Practic..." userName="shiomiru" createdAt="2025/06/17 08:53:35" color="#ff5733">}}




{{<matomeQuote body="これマジで美しく出来てるね。日常業務の一部でこれを使ってみて、どこまでいけるか見てみるよ。HNとかめちゃくちゃ綺麗に表示されるね。ありがとう！" userName="noufalibrahim" createdAt="2025/06/17 04:56:01" color="">}}




{{<matomeQuote body="いいね！見つけたバグは忘れずに報告してね。" userName="dotancohen" createdAt="2025/06/17 11:27:50" color="">}}




{{<matomeQuote body="これマジ印象的だね！これから追加予定とか、計画してる機能のロードマップってある？" userName="Hrun0" createdAt="2025/06/21 20:03:25" color="#ff33a1">}}




{{<matomeQuote body="一番近いものだと、これかな:<br>https://codeberg.org/bptato/chawan/raw/branch/master/todo、でもちょっと古いし、優先順位もあんまりつけてないんだけどね…。" userName="shiomiru" createdAt="2025/06/21 22:38:20" color="#785bff">}}




{{<matomeQuote body="これマジで超クールじゃん！すごいね。Nimで書かれてるのもいいね。<br>だけどさ、`cha example.com`ってやっても、hjklみたいなコマンドが全然使えないんだよね。唯一反応するのは数字を入力すると左下に出るとこだけ。あれで何ができるのかも分かんないや。<br>これって俺が見落としてるだけ？それともバグかな？<br>Mac OS Sequoia 15.5のApple SiliconでNim 2.24を使ってソースからビルドしたよ。ページはちゃんと表示されるんだけど、コマンドが動かないんだ。頼む！" userName="isaacvando" createdAt="2025/06/16 23:39:28" color="#38d3d3">}}




{{<matomeQuote body="Ghostty、iTerm2、Terminal.appで試してみたけど、全部同じ動きだったよ。" userName="isaacvando" createdAt="2025/06/16 23:56:27" color="#ff5733">}}




{{<matomeQuote body="バグだよ、報告サンキューね。チケット作ったよ：<br>https://todo.sr.ht/~bptato/chawan/63<br>https://git.sr.ht/~bptato/chawanからmacos-inputブランチをプルして、サイトを開いてコマンドをいくつか入力した後に作られる`a`ファイルの中身を教えてくれる？<br>（カレントディレクトリにできるはずだよ。）" userName="shiomiru" createdAt="2025/06/17 00:34:34" color="#ff5c5c">}}




{{<matomeQuote body="aファイルの中身はこれだよ。他に打ってほしいコマンドがあったら教えてね。<br>```<br>handleCommandInput 1, buffer ”” c ’j’<br>handleCommandInput 2, buffer ”” c ’j’<br>after handleCommandInput, buffer 0x104c5b780”j” c ’j’<br>handleCommandInput 1, buffer ”” c ’k’<br>handleCommandInput 2, buffer ”” c ’k’<br>after handleCommandInput, buffer 0x104ca8b70”k” c ’k’<br>handleCommandInput 1, buffer ”” c ’l’<br>handleCommandInput 2, buffer ”” c ’l’<br>after handleCommandInput, buffer 0x104c5bab0”l” c ’l’<br>handleCommandInput 1, buffer ”” c ’k’<br>handleCommandInput 2, buffer ”” c ’k’<br>after handleCommandInput, buffer 0x104ca8d20”k” c ’k’<br>handleCommandInput 1, buffer ”” c ’j’<br>handleCommandInput 2, buffer ”” c ’j’<br>after handleCommandInput, buffer 0x104c5b480”j” c ’j’<br>handleCommandInput 1, buffer ”” c ’h’<br>handleCommandInput 2, buffer ”” c ’h’<br>after handleCommandInput, buffer 0x104ca89c0”h” c ’h’<br>handleCommandInput 1, buffer ”” c ’g’<br>handleCommandInput 2, buffer ”” c ’g’<br>after handleCommandInput, buffer 0x104cae780”g” c ’g’<br>handleCommandInput 1, buffer ”” c ’1’<br>after handleCommandInput, buffer ”” c ’1’<br>handleCommandInput 1, buffer ”” c ’2’<br>after handleCommandInput, buffer ”” c ’2’<br>handleCommandInput 1, buffer ”” c ’3’<br>after handleCommandInput, buffer ”” c ’3’<br>handleCommandInput 1, buffer ”” c ’1’<br>after handleCommandInput, buffer ”” c ’1’<br>handleCommandInput 1, buffer ”” c ’2’<br>after handleCommandInput, buffer ”” c ’2’<br>handleCommandInput 1, buffer ”” c ’2’<br>after handleCommandInput, buffer ”” c ’2’<br>handleCommandInput 1, buffer ”” c ’3’<br>after handleCommandInput, buffer ”” c ’3’<br>handleCommandInput 1, buffer ”” c ’＼3’<br>handleCommandInput 2, buffer ”” c ’＼3’<br>after handleCommandInput, buffer 0x104cae690”＼3” c ’＼3’<br>handleCommandInput 1, buffer ”” c ’＼3’<br>handleCommandInput 2, buffer ”” c ’＼3’<br>after handleCommandInput, buffer 0x104adaed0”＼3” c ’＼3’<br>handleCommandInput 1, buffer ”” c ’＼3’<br>handleCommandInput 2, buffer ”” c ’＼3’<br>after handleCommandInput, buffer 0x104ca8720”＼3” c ’＼3’<br>handleCommandInput 1, buffer ”” c ’＼4’<br>handleCommandInput 2, buffer ”” c ’＼4’<br>after handleCommandInput, buffer 0x104bf8d80”＼4” c ’＼4’<br>handleCommandInput 1, buffer ”” c ’＼3’<br>handleCommandInput 2, buffer ”” c ’＼3’<br>after handleCommandInput, buffer 0x104caaa80”＼3” c ’＼3’<br>handleCommandInput 1, buffer ”” c ’＼4’<br>handleCommandInput 2, buffer ”” c ’＼4’<br>after handleCommandInput, buffer 0x104ca8e40”＼4” c ’＼4’<br>```" userName="isaacvando" createdAt="2025/06/17 01:02:36" color="#785bff">}}




{{<matomeQuote body="変だね、入力は見てるのにコマンドを評価してないみたい…OK、別のこと試してみよう。<br>masterブランチで、`cha -o’page.p=”pager.alert(config.page.j)”’ -V`って起動して`p`を押すと、ステータスラインに何か表示される？" userName="shiomiru" createdAt="2025/06/17 01:58:35" color="#45d325">}}




{{<matomeQuote body="俺もMac OSだけど、同じ問題に遭遇してる。`cha -o’page.p=”pager.alert(config.page.j)”’ -V`で開いて`p`を押してみたけど…何も起こらないね。" userName="erohead" createdAt="2025/06/17 15:37:26" color="#45d325">}}




{{<matomeQuote body="俺も何も起きないよ。" userName="isaacvando" createdAt="2025/06/18 02:09:27" color="">}}




{{<matomeQuote body="masterで直したよ。（clangのコンパイルエラーが原因だったんだ。かなり面白かったよ、詳細は上記のチケットを見てね。）<br>https://todo.sr.ht/~bptato/chawan/63" userName="shiomiru" createdAt="2025/06/21 07:00:33" color="#45d325">}}




{{<matomeQuote body="これすごくいいね！Lenovo M8 4th genにTermuxを入れて、ソースからコンパイルしたよ。Nimを入れるだけでよかった。root権限がなくてもちゃんとインストールできたのもいいね。" userName="FerretFred" createdAt="2025/06/17 04:52:29" color="">}}




{{<matomeQuote body="Linksでサイトを綺麗に見せるようにしてたんだけど、ChawanはCSSに対応してるからちょっと大変になったなー。Linksはマージンとかパディング無視してたから、リストとかの配置が簡単だったんだよね。" userName="mariusor" createdAt="2025/06/17 06:08:40" color="">}}




{{<matomeQuote body="本来は’ただ動く’はずなんだけどね…時々そうじゃないのは分かってる、それはバグだと思っていいよ。でも、グリッド表示でCSSをカスタマイズしたいなら、Chawanは標準の’grid’メディア機能に対応してるよ→ https://developer.mozilla.org/en-US/docs/Web/CSS/@media/grid" userName="shiomiru" createdAt="2025/06/17 08:45:16" color="#785bff">}}




{{<matomeQuote body="@media: gridのアドバイスに従って変更したら、全部綺麗になったよ！ここから確認できるよ→ https://brutalinks.tech （これ、HNみたいなリンクアグリゲーターなんだ）" userName="mariusor" createdAt="2025/06/18 10:03:06" color="#ff33a1">}}




{{<matomeQuote body="こんなCSS APIがあったなんて知らなかったよ。CSSに追加してみる、ありがとう！Linksで見た目がまともになるように頑張ったサイトに、CSSをほとんどなくした’シンプル’なスタイルもあるんだけど、代替スタイルシートのサポートについてイシュートラッカーで確認してみるね。" userName="mariusor" createdAt="2025/06/17 12:32:48" color="">}}




{{<matomeQuote body="長いことw3mを使ってる者だけど、試してみて気に入ったよ。すごくいいね。’Open URL’（アドレスバー）の機能がないのは設計上の選択なのかな？" userName="higon" createdAt="2025/06/17 04:04:45" color="">}}




{{<matomeQuote body="アドレスバーはC-l（control＋L）を押せば開くはずだよ。" userName="shiomiru" createdAt="2025/06/17 08:24:10" color="#38d3d3">}}




{{<matomeQuote body="素晴らしいね！ありがとう！もうtermcapとかncursesは使ってないんだね。端末の処理は自分で直接やってるの？またありがとう！" userName="silasdb" createdAt="2025/06/17 01:31:26" color="">}}




{{<matomeQuote body="Chawanはncursesは使ってなくてtermcapだけだったんだ。(ncursesはtermcapも実装してるけどね。)<br>w3mでtermcapに慣れてたからそれから始めたんだ。でもtermcapは古いし、モダンな端末の唯一有用な機能（true color）に対応できない。’80年代のハードウェア端末で偶然動くかも’って利点だけじゃ、余計な失敗モードを増やす価値はない。<br>だからterminfoに移行する代わりに、terminal queriesの方に完全に切り替えたんだ。(別の理由でも必要だったしね。)<br>XTermの互換性がある既知のTERM値を検出するために、組み込みの端末データベースはまだあるよ。でも、queriesにちゃんと応答する端末なら、TERM値が分からなくてもそのまま動くよ。" userName="shiomiru" createdAt="2025/06/17 02:10:24" color="#ff33a1">}}




{{<matomeQuote body="w3mでtermcapに慣れてたからそれから始めた。でもtermcapは古いし、モダンな端末の唯一有用な機能（true color）に対応できない。’80年代のハードウェア端末で偶然動くかも’って利点だけじゃ…<br>優先順位、だね。俺が端末を使ってる限りは、true colorより80年代のハードウェア端末サポートの方がいいな。でも、俺の唯一のハードウェア端末はVT-420だから、多分ベースのXTerm（モノクロ）をサポートしてるものなら大体動くと思うよ。" userName="NoGravitas" createdAt="2025/06/17 15:25:36" color="">}}




{{<matomeQuote body="TermuxからHNが一発で開けた時、マジでびっくりしたぜ！すっげえ仕事だね！" userName="ijustlovemath" createdAt="2025/06/16 21:48:48" color="">}}




{{<matomeQuote body="ありがとう:)興味あるならHNのユーザースタイルをここに貼っといたぜ。<br>https://lists.sr.ht/~bptato/chawan-devel/%3CD9S40OS2QWHL.PXQ...<br>主に投票矢印を直すためで、今はbackground-imageがplaceholdersでしか表示されねえんだ。" userName="shiomiru" createdAt="2025/06/16 22:15:32" color="#ff33a1">}}




{{<matomeQuote body="ついにターミナルでHNを見るいいツールが出たな！ありがとう！キーボードショートカットはどこで見つけられるんだ？vimキーバインドで動けるけど、戻り方が分からねえんだよな。" userName="greenspam" createdAt="2025/06/16 22:53:44" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="cha-config(5)かabout:chawanを見てくれよ。前者にはオンライン版もあるぜ。<br>https://chawan.net/doc/cha/config.html#pager-actions<br>ナビゲーションは特に、大文字Dで今のbufferを捨てて前のpageに戻れる。カンマ(,)でback、ピリオド(.)でforwardもあって、stackを壊さずに移動できるぜ。（まあ、実際はtreeだけどUIはstack扱いかな）" userName="shiomiru" createdAt="2025/06/16 23:08:41" color="#ff5c5c">}}




{{<matomeQuote body="Nimで書かれてるの見るの、いつも嬉しいわ。俺の初心者目線だと、C/C++とPythonの間にある一番面白いlanguageなんだよな。人気が出なかったのが残念だぜ。userbaseの規模に比べてuserのproductivityが高いのは、このtopicに詳しくなくても「やっぱそうだよな」って思わせてくれるんだ。" userName="poulpy123" createdAt="2025/06/17 09:08:14" color="">}}




{{<matomeQuote body="Nim(rod)はGolangよりちょっと前に出て、featureがかぶってたのが普及が進まなかった理由だろうな。" userName="pancsta" createdAt="2025/06/17 14:19:32" color="">}}




{{<matomeQuote body="macOSで ’make’ 一発で簡単にbuildできたぜ。クールだな。<br>新しいelinksのalternativeが出たのもいい感じだ。" userName="anta40" createdAt="2025/06/17 07:15:11" color="">}}




{{<matomeQuote body="terminalでMarkdown browser作るのってマジで筋が通ってるし、すげえうまくいくと思うんだ。よく考えたら、Netscapeっぽくpageのeditingもできるようにできるんじゃね？それはヤバいだろ。<br>Nimは最高なlanguageだし、これで使われてるの見るのは嬉しいぜ。" userName="desireco42" createdAt="2025/06/17 05:11:16" color="">}}




{{<matomeQuote body="glowがそれに近いぜ: https://github.com/charmbracelet/glow" userName="ralgozino" createdAt="2025/06/17 12:56:09" color="#45d325">}}




{{<matomeQuote body="ありがとう、これ良いの見つけたね" userName="desireco42" createdAt="2025/06/17 14:02:34" color="">}}




{{<matomeQuote body="これめっちゃ動くじゃん、s-search経由で触ってるんだけどw3mより全然良いね =)" userName="zquestz" createdAt="2025/06/17 03:31:23" color="#ff5c5c">}}




{{<matomeQuote body="コード読んでみるのおすすめだよ。Nimで書かれてるから読みやすいし（高性能）。HTML DOMとかWeb仕様の実装とか、やっかいな部分もあるけど、基本的な設定はすぐわかるよ。" userName="elcritch" createdAt="2025/06/16 23:14:42" color="#785bff">}}




{{<matomeQuote body="すごい！ しかもNimなんだ！" userName="corv" createdAt="2025/06/16 21:54:15" color="">}}




{{<matomeQuote body="あの画像、テキストUIでどうやって表示してんの？" userName="ieee2" createdAt="2025/06/17 11:13:04" color="">}}




{{<matomeQuote body="あー、わかったよ。SixelsかKitty protocolで表示してるんだって。対応してる画像形式はPNG, JPEG, BMP, GIF (stb_image), WebP (jebp), SVG (nanosvg)だよ。<br>設定ファイルで有効にできるみたい。" userName="ieee2" createdAt="2025/06/17 11:18:33" color="#ff5733">}}




{{<matomeQuote body="sixel使ってインライン表示。スクショ見てみ。悪くないよ。" userName="dotancohen" createdAt="2025/06/17 11:17:26" color="">}}




{{<matomeQuote body="うん、スクショ良いよね。だから聞いたんだよ。" userName="ieee2" createdAt="2025/06/17 11:19:16" color="">}}




{{<matomeQuote body="そういえばさ、TTYで画像とか動画をレンダリングするのって結構普通なんだよね。<br>fbida: https://www.kraxel.org/blog/linux/fbida/<br>mpv: https://mpv.io/<br>fbidaはscreenとかtmux使う時、たまに-dオプションで/dev/drm/何かしらを指定する必要あるかな。MPVはTTYで長いこと-vo=drm必要だったけど、ここ数ヶ月でいつも動くようになったね。良い改善 :)<br>ディスプレイサーバーいらないよ。" userName="ho_schi" createdAt="2025/06/17 11:22:20" color="#ff5733">}}




{{<matomeQuote body="今日初めて見たよ。ありがとう！" userName="ieee2" createdAt="2025/06/17 11:23:52" color="">}}




{{<matomeQuote body="このbrowser大好き！作ってくれてありがとう！" userName="hecanjog" createdAt="2025/06/16 21:10:07" color="">}}




{{<matomeQuote body="GPMに対応してる？" userName="marcodiego" createdAt="2025/06/16 21:35:56" color="">}}




{{<matomeQuote body="まだGPMには対応してないけど、XTermのmouse protocolは認識するよ。" userName="shiomiru" createdAt="2025/06/16 22:08:15" color="">}}




{{<matomeQuote body="マジで信じられないくらいすごい。gopherにも対応してるんだ。" userName="lucideer" createdAt="2025/06/17 00:21:36" color="#785bff">}}




{{<matomeQuote body="Dockerfile: https://paste.rs/egbGg<br>docker build -t chawan:0.2.0 .<br>docker run -it --rm chawan:0.2.0 https://news.ycombinator.com/" userName="adamseddie" createdAt="2025/06/17 10:38:21" color="#785bff">}}




{{<matomeQuote body="いい仕事してるね、本当にナイスな出来だよ、おめでとう。" userName="ericrenan" createdAt="2025/06/17 16:14:02" color="">}}




{{<matomeQuote body="tiny webのファンとしては、こういうprojectが見られるのはすごく嬉しいよ、（拍手）。" userName="agumonkey" createdAt="2025/06/16 22:45:00" color="">}}




{{<matomeQuote body="記事であった指摘（ホビーPJだって？とか、外部バイナリ、sixel/kitty、Mac対応どうなの？）について、開発者が理由を説明したり、賛同したり、Mac対応は協力をお願いしたりしてるよ。<br>詳しくはリンク見てね！ https://todo.sr.ht/~bptato/chawan/63" userName="shiomiru" createdAt="2025/06/17 08:58:05" color="#ff33a1">}}




{{<matomeQuote body="Chawanも良いけど、これも結構近いよ<br>https://www.brow.sh/" userName="baq" createdAt="2025/06/17 05:58:36" color="">}}




{{<matomeQuote body="もっと近いのはこれかな<br>https://github.com/chase/awrit<br>対応してるターミナルエミュレーターが必要だけどね。" userName="dodslaser" createdAt="2025/06/17 07:18:24" color="">}}




{{<matomeQuote body="これぞShow HNだよ！ ハッカーによるハッカーのためのもの！ なんでもかんでも真面目で野心的でつまらなくある必要はないんだよね。<br>君のフラストレーション、すごくわかるな〜。ほら、代わりに僕の半端なプロジェクトも批判してよ！ → https://akkartik.name/freewheeling-apps<br>一般論としては全くその通りだよ。" userName="akkartik" createdAt="2025/06/17 07:10:32" color="">}}




{{<matomeQuote body="まあ確かにね、全部が洗練されてたり製品レベルじゃなくていいのはわかるよ。<br>君の作品は目的を絞ってて、トレードオフにも正直で分かりやすい。それは珍しいことだね。<br>僕は趣味のツールとか実験的なのは大賛成だよ、ただ未完成な時には正直になろうぜって思ってるんだ。こっそり基準が下がるのは避けたいだけなんだよね。" userName="b0a04gl" createdAt="2025/06/17 07:20:47" color="#ff5c5c">}}




{{<matomeQuote body="未完成なものがあるなら正直になろうぜ<br>未完成なものはShow HNではちゃんとしたトピックだよ。趣味のツール、ちょっとした思いつきで作ったもの、学習目的のプロジェクト、全部トピックとしてあり。<br>一般的な不満を言うのは面白くないし、スレッドの質を下げるだけ。" userName="pvg" createdAt="2025/06/17 13:35:20" color="">}}




{{<matomeQuote body="でも、それがなんで問題なの？ 楽しむためだけにプロジェクトに取り組むのは全く正当じゃん。<br>ここはまさか「Hacker News」じゃないの？<br>ちなみに、これがStallmanによるハッカーの定義だよ→「プログラマーであることがハッカーであることとは違う。それは遊び心のある賢さを評価することだ。遊び心のある賢さなしにプログラマーにはなれるし、プログラミング以外の分野でも遊び心のある賢さは発揮できる。」" userName="invaliduser" createdAt="2025/06/17 07:04:18" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="楽しむために作るの、全然オッケーだよ。誰もそうじゃないなんて言ってない。<br>僕がちょっと異論を唱えたのは、それらを実際以上のものとして扱っちゃう時だけ。<br>僕は壊れたオモチャをたくさん作ったけど、それを過大に宣伝しないようにしてるんだ。<br>ブラウザのデモって呼ぶ？ クールだね。<br>ターミナルの代替って呼ぶ？ そしたら、まあ入力とかレンダリングとかJavaScriptのこと聞いちゃうよね。<br>それが面倒なら、もしかしたら僕がスレッドを間違えたのかもね。別に強いこだわりはないんだけど。" userName="b0a04gl" createdAt="2025/06/17 08:48:38" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
