+++
date = '2025-03-29T00:00:00'
months = '2025/03'
draft = false
title = '衝撃 LinuxをWindows化!? WineでWindowsアプリが爆速動作する夢のディストリビューション爆誕か'
tags = ["Linux", "Windows", "Wine", "互換性", "ディストリビューション"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> 衝撃 LinuxをWindows化!? WineでWindowsアプリが爆速動作する夢のディストリビューション爆誕か

引用元：[https://news.ycombinator.com/item?id=43518917](https://news.ycombinator.com/item?id=43518917)

{{<matomeQuote body="論文：Wine経由でWindowsバイナリをデフォルトで実行するLinuxディストリを作ろうぜ。<br>Debianならパッケージを一つインストールするだけだよ：sudo apt install wine-binfmt<br><br>そうでなくても、もうちょい：echo 'none /proc/sys/fs/binfmt_misc binfmt_misc defaults 0 0' >> /etc/fstab mount -a echo ':DOSWin:M::MZ::/usr/bin/wine:' > /proc/sys/fs/binfmt_misc/register" userName="notfed" createdAt="2025-03-30T03:52:44" color="">}}

{{<matomeQuote body="マジ最高！誰かがbinfmt_miscについて言ってたね。知らなかった。" userName="pbohun" createdAt="2025-03-30T03:55:24" color="">}}

{{<matomeQuote body="次のステップはWindowsアプリを隔離することだね。WINEPREFIXを分けるのもアリだけど、Androidみたいにアプリごとに別ユーザーにするのが良いと思う。アプリがお互いのファイルを読めないようにするだけじゃなくて、アプリごとにファイアウォールを設定できるし。<br>数年前にWindowsからLinuxに乗り換えたんだけど、WordとかExcelとか、どうしても使いたいWindowsアプリがいくつかあってさ。Wineのおかげでこれからも使えるんだ。それにめっちゃ速いんだよね。WordとかExcelの起動が一瞬だし、RAMの使用量も少ないし。LibreOfficeとかAbiwordとかオンラインのOfficeを使うより、eBayで古いOffice買った方がマシ。<br>EDIT：前に撮った動画が見つからないけど、hyplandデスクトップだとこんな感じだよ。リソースそんなに使ってないのがわかるかな。<br>https://www.reddit.com/r/unixporn/comments/11w3zzj/hyprland_..." userName="csdvrx" createdAt="2025-03-30T04:36:02" color="#785bff">}}

{{<matomeQuote body="＞次のステップはWindowsアプリを隔離することだね。WINEPREFIXを分けるのもアリだけど、”念のために言っておくと、wine prefixはそれぞれ設定を持つけど、互いに隔離されてるわけじゃないよ。”<br>https://gitlab.winehq.org/wine/wine/-/wikis/FAQ#how-good-is-...<br>＞Androidみたいにアプリごとに別ユーザーにするのが良いと思う。“これはある程度有効だけど、全部同じユーザーのX sessionで実行しないことが前提だよ。Linuxでは、デスクトップ環境によっては、別の仮想コンソールで別のユーザーとして実行される別のデスクトップセッションを開始できる’ユーザー切り替え’アクションがあるんだ。Control+Alt+F2とかで切り替えられるよ。”" userName="foresto" createdAt="2025-03-30T18:19:44" color="#38d3d3">}}

{{<matomeQuote body="＞念のために言っておくと、wine prefixはそれぞれ設定を持つけど、互いに隔離されてるわけじゃないよ。”<br>それマジ良い指摘！<br>承知の上だよ。だから、wineアプリは別々のユーザーIDで実行するべきだって言ってるんだ。どのアプリにも、絶対に必要なもの以外のアクセス権は与えたくないからね。<br>＞これはある程度有効だけど、全部同じユーザーのX sessionで実行しないことが前提だよ。”<br>wineアプリを起動するとき、起動スクリプトでそのユーザーIDがXwaylandでレンダリングできるようにしてる。それぞれのアプリを別のX sessionで実行するほど安全じゃないけど、wayland compositorが必要に応じてより多くの隔離を提供できる。" userName="csdvrx" createdAt="2025-03-30T21:37:41" color="#785bff">}}

{{<matomeQuote body="Lutrisはアプリ/ゲームごとに専用のwine prefixを作るから、そのまま使えるよ。Lutris自体が提供するパッチでインストールできるアプリもたくさんあるし。" userName="madduci" createdAt="2025-03-30T12:04:11" color="">}}

{{<matomeQuote body="＞アプリがお互いのファイルを読めないようにするのはなぜ？“<br>そもそも、アプリの分離を前提としていないOS向けに設計されたデスクトップアプリの話をしてるんだよね？共通のファイルシステムを使うのが、相互運用性の主要なメカニズムになってるのに。" userName="Gormo" createdAt="2025-03-31T11:50:17" color="">}}

{{<matomeQuote body="＞アプリがお互いのファイルを読めないようにするのはなぜ？“<br>だってできるんだもん。それにWindowsアプリは安全だと思ってないし。<br>おかげで、15年前のOfficeソフトでも問題なく動かせるんだ。たとえ悪意のあるソフトだとしても、ネットワークアクセスもファイルアクセスもなければ、リソースも制限されてるから、サービス拒否攻撃すらできない。<br>最悪の場合、自分のファイルを消そうとするかもしれないけど、次の実行時にイメージから復元されるし、それで終わり。" userName="csdvrx" createdAt="2025-03-31T16:36:41" color="#785bff">}}

{{<matomeQuote body="＞ネットワークアクセスもファイルアクセスもないってことは”すごいね。でもさ…ファイル読み書きできないOfficeアプリで何ができるの？" userName="CRConrad" createdAt="2025-04-02T17:53:09" color="">}}

{{<matomeQuote body="マジ面白いね。<br>Linuxで新しいバージョンのOfficeを動かすのは無理だと思ってた。<br>個人的にはLibreOfficeの方が好きだけど、選択肢は多い方が良いよね！" userName="eitland" createdAt="2025-03-30T07:16:00" color="">}}

{{<matomeQuote body="Office 2013は、Click2Runじゃない最後のバージョンで、数年前はWineでめっちゃ快適に使えてたんだよね。" userName="p_l" createdAt="2025-03-30T10:49:33" color="#ff33a1">}}

{{<matomeQuote body="俺が試したときは、Office 2007と2010が一番安定してたかな。今度Office 2013も試してみるよ(wine64でちゃんと動くバージョンが欲しい!)" userName="csdvrx" createdAt="2025-03-30T17:17:33" color="">}}

{{<matomeQuote body="具体的なセットアップは残ってないんだけど、たしかwinetricksに入ってたスクリプトがベースで、オフラインの2013 proplus 32bit isoを使ってOffice 2013 professionalをインストールしてたはず。WineHQによると2013 64bitのインストーラーは“gold”らしいけど、アプリごとにちょこちょこ調整が必要で、Accessがたまに落ちるみたい。大体2013-2016あたりがWineで動くみたいだよ。" userName="p_l" createdAt="2025-03-30T23:24:22" color="#785bff">}}

{{<matomeQuote body="どれが一番使えるOfficeのバージョン？" userName="sureglymop" createdAt="2025-03-30T07:12:50" color="">}}

{{<matomeQuote body="Linuxディストリビューションだと、wineをインストールしてれば、結構前からそれがデフォルトになってるよね。" userName="panzi" createdAt="2025-03-30T15:36:09" color="">}}

{{<matomeQuote body="うちの親はmacOSだから、それは無理。" userName="panzi" createdAt="2025-03-30T17:21:46" color="">}}

{{<matomeQuote body="Wine bottlerがいい感じに動くよ。" userName="renewedrebecca" createdAt="2025-03-30T17:51:00" color="">}}

{{<matomeQuote body="WineとWine bottlerって、Apple siliconのMacでも動くの？前のIntel Macなら動くかもだけど、新しいMacはよくわかんない。" userName="iamnotarobotman" createdAt="2025-03-30T20:02:22" color="">}}

{{<matomeQuote body="動くよ！ Rosetta 2を先にインストールする必要があるかもだけど。" userName="renewedrebecca" createdAt="2025-03-30T23:55:51" color="">}}

{{<matomeQuote body="なんかWineって、もうちょい polish してほしいって思うの、俺だけ？ ダイアログとかメニューのフォントが小さすぎてマジ見えないんだよね。GDI のテキストレンダリングがフォント fallback 使ってないっぽいから、Scintilla とか ebook reader とかでもイマイチうまく表示されないんだよなー。" userName="GoblinSlayer" createdAt="2025-03-30T09:56:29" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="よく使うWindowsフォントって、ライセンス的に Wine に入れられないものが多いんだよね。でも、Winetricks[1] 使えば、Microsoft から直接フォントをダウンロードしてインストールできるよ。あと、Windows のフォント fallback は Linux とかとは全然違うんだよね。Windows はフォント linking っていう仕組み[2] 使ってて、Wine でもうまく動かすにはレジストリの設定が必要[3]。" userName="acka" createdAt="2025-03-30T10:42:53" color="#ff33a1">}}

{{<matomeQuote body="Wine には、プロプライエタリなフォントと同じメトリクスを持つフォントが標準で入っててほしいよね。フォントファイルには著作権があるけど、字形自体はコピーしても問題ないはず。DejaVu プロジェクトみたいに、Segoe とか Calibri みたいなフォントの equivalent を作ればいいじゃん。" userName="Asooka" createdAt="2025-03-30T13:37:25" color="">}}

{{<matomeQuote body="俺は Linux 全体でフォント fallback がちゃんと動くようにしてほしいな。そもそもレンダリングが違うから、メトリクス合わせてもあんま意味ない気がする。" userName="GoblinSlayer" createdAt="2025-03-30T14:22:27" color="">}}

{{<matomeQuote body="Windows フォントはインストールしたんだけど、それだけじゃ足りないのかな？ Wine って FreeType にレンダリングを任せてるんだよね？ だったら、フォント fallback も FreeType に任せればいいじゃん。" userName="GoblinSlayer" createdAt="2025-03-30T14:18:38" color="">}}

{{<matomeQuote body="＞なんか Wine って、もうちょい polish してほしいって思うの、俺だけ？ ダイアログとかメニューのフォントが小さすぎてマジ見えないんだよね。＜br>それはお前だけ。俺は昔の Office アプリ動かすために DPI と高解像度の設定したら、2K のラップトップでも 4K の画面でも、すごく綺麗なフォントで表示されてるよ。`xprop -root -f _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 2` を試してみて。" userName="csdvrx" createdAt="2025-03-30T17:21:56" color="#ff5c5c">}}

{{<matomeQuote body="新しいディストリビューションは必要ないと思う。よく使う Windows アプリは Wine で動くようにできるけど、一つのアプリを動かすためのハックが他のアプリを壊したりするんだよね。それに、設定も人それぞれで、ある人の環境でうまくいっても、別の人の環境ではうまくいかないことがある。つまり、設定に一貫性がないんだよね。一番簡単な解決策は、Wine が入ったコンテナ（またはサンドボックス）を配布して、そのコンテナの中で Windows プログラム（一つだけ）を動かすようにすることだと思う。そうすれば、誰でも同じものが手に入るし、いつでも動く。Wine の設定で悩む必要もなくなる。スペース効率は悪いけど、Wine をコンテナ向けにスリム化する方法もある。問題はライセンスとソフトウェアの anti pattern。ソフトウェアをコンテナにインストールするために、なんか裏技が必要になるかも。" userName="coderenegade" createdAt="2025-03-30T00:11:25" color="#45d325">}}

{{<matomeQuote body="Wine で Windows アプリケーションを動かすためのコンテナのコンセプトは、’bottles’ って呼ばれてるよ。<br>https://support.codeweavers.com/en_US/2-getting-started/2-in...<br>Cedega が最初だったと思うけど、間違ってるかも。俺が最初に遭遇したのはそこだった。" userName="trelane" createdAt="2025-03-30T00:23:34" color="">}}

{{<matomeQuote body="初めて知った。ちょっと試してみる。誰かがもう取り組んでるってのはいいことだね。だって、抽象化のレイヤーがたくさんあるんだから、効率が悪くても、どんな基盤システムでもソフトウェアを ergonomic に動かせるはずだって思うんだよね。" userName="coderenegade" createdAt="2025-03-30T03:42:59" color="">}}

{{<matomeQuote body="めっちゃ efficient だよ。古い Office スイートから Word をコールドスタートする方が、Libreoffice を起動するよりもずっと速いし、RAM の使用量も少ない。数年前、Wine が一番サポートしてるって言ってたバージョンの Office を ebay で買って、wine32 と wine64 で試してみた結果、Office 2010 が wine32 で動かすのが一番いいって結論になった（Wine は進化してるから変わってるかも）。15 年前のソフトウェアだけど、Unicode xkb symbols で完璧に動くし、ネットワークアクセスもないし、アプリごとにユーザー ID が違うから、問題ないと思う。vim で必要なことが全部できるし、変な変更で驚かされることもないから、昔の Excel を同じように使うのもアリだよね！" userName="csdvrx" createdAt="2025-03-30T04:59:22" color="#ff33a1">}}

{{<matomeQuote body="90年代のOfficeスイート見てると、マジで何が改善必要だったんだろって思うよね。Google Docsのクラウドでの自動保存が画期的だったくらいしか思いつかないわ。" userName="doublepg23" createdAt="2025-03-30T05:04:14" color="">}}

{{<matomeQuote body="＞何が改善必要だったんだろう？<br>あんまないのかもね？<br>数ヶ月前、電源切れちゃって（フルスクリーンアプリ使ってて気づかなかった）、Linux再起動して古いWord使ったら、自動保存されててマジ助かった！Excel 2010はAI向けじゃないけど、wineのコピペとスクリプトで意外となんとかなるし！" userName="csdvrx" createdAt="2025-03-30T05:24:15" color="#ff5733">}}

{{<matomeQuote body="Excelの自動保存は昔からあったよ。Office 4.3の一部だったWord 6と一緒に配布されたバージョン（Excelのバージョン番号は覚えてないけど）の90年代初頭には有効にしてたもん。" userName="squiggleblaz" createdAt="2025-03-30T05:56:16" color="#ff5c5c">}}

{{<matomeQuote body="今のExcelの自動保存はODSPと使うと違うんだよねー。セルの変更とか、表のフォーマットとか、一個ずつ自動保存されるの。エンドユーザーにはマジで意識させないのよ。Wordも似た感じ。" userName="p_ing" createdAt="2025-03-30T15:07:09" color="#ff5c5c">}}

{{<matomeQuote body="Word 2010使ってて最近作ったファイルも問題ないってこと？15年前のWordと今の.docxが互換性あるってのが意外だわ。" userName="jack_pp" createdAt="2025-03-30T06:29:22" color="">}}

{{<matomeQuote body="そんな驚くことないよ。zip圧縮されたxmlだから。将来のバージョンはxmlにオプションのノードを追加するかもしれんけど、前のバージョンはそれを無視できるし。" userName="clusterfook" createdAt="2025-03-30T10:18:33" color="#ff5c5c">}}

{{<matomeQuote body="今のWordスイートの基本フォーマットはWord 2010で導入されたんだよね。だからドキュメント作った人がWord 2010に元々あった機能を使ってれば問題ないはず。新しいバージョンの機能は表示されなかったり、箱で表示されたりする。" userName="odo1242" createdAt="2025-03-30T16:44:07" color="#ff33a1">}}

{{<matomeQuote body="共同編集機能がないのは痛い。「変更履歴の記録」じゃ、なんか違うんだよね。" userName="duskwuff" createdAt="2025-03-30T06:16:37" color="">}}

{{<matomeQuote body="それ良いこと言うね。もしかしてGoogle Docsがオフィススイートの頂点かも。" userName="doublepg23" createdAt="2025-03-30T19:28:05" color="#38d3d3">}}

{{<matomeQuote body="Google Docsの自動保存はマジで優秀だけど、Word 6.0 for Windows 3.1でも自動保存の間隔を分単位で設定できたんだよ。当時は、作業中のファイルを更新してたんだよね。今のバックアップファイル作るより好きだったな。" userName="ipcress_file" createdAt="2025-03-30T13:40:51" color="#ff5c5c">}}

{{<matomeQuote body="各アプリが別々のユーザーIDで隔離されるのは良いよね。でも、ファイルのアクセス権で問題が起きないかな？<br>もし問題ないなら、プログラムが全部のファイルにアクセスできるってことにならない？それだと隔離の意味なくない？" userName="tinyhitman" createdAt="2025-03-30T20:24:27" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="オレがOffice使うときは、Z:ドライブにある共有ディレクトリからファイルを持ってくるんだ。<br>スクリプトで全部自動化してて、wineがXwaylandを使えるようにしてる（アプリを起動するまで、そのユーザーIDはディスプレイにコンテンツを表示できないから）。<br>もしwineを違うユーザーIDで試したいなら、/tmp/wineみたいなグループ書き込み可能なディレクトリから始めるといいよ。Windowsアプリと自分のユーザーが同じグループに所属するようにしてさ。" userName="csdvrx" createdAt="2025-03-30T21:27:11" color="#ff5733">}}

{{<matomeQuote body="いいね。ディストリビューションがもっと簡単にできるようにしてくれると嬉しいな！" userName="tinyhitman" createdAt="2025-04-02T11:04:14" color="">}}

{{<matomeQuote body="bottlesの考え方はすごく好き。<br>これをディストリに組み込んで、ユーザーには見えないようにできたら最高だね。友達や家族に設定してあげられるじゃん。" userName="pbohun" createdAt="2025-03-30T14:11:21" color="#785bff">}}

{{<matomeQuote body="Linuxシステムを色々変えるってことは、新しいディストリを作ってるのと同じだよ。<br>そもそも、Linuxが柔軟すぎるのがいけないんだ。オレのシステムとあんたのシステムは違うし、両方でテストした人いる？安定したABIが欲しいなら、もっと安定したシステムが必要だよ。" userName="immibis" createdAt="2025-03-30T00:22:20" color="">}}

{{<matomeQuote body="基盤となるシステムは何も変える必要ないんだよ、そこがポイント。<br>コンテナは基盤システムに関係なく同じように動くから、みんなの環境の違いを回避できる。<br>FedoraとUbuntuで同じコンテナを普通に使ってるし、RHELとか他のシステム向けのコンテナも作ってる。<br>コンテナの利点は、開発環境とデプロイ環境の差をなくせること。<br>みんながそれぞれのマシンでソフトウェアを動かすんじゃなくて、コンテナの中で一度動かせば、それを配布するだけ。" userName="coderenegade" createdAt="2025-03-30T03:36:27" color="#785bff">}}

{{<matomeQuote body="コンテナが動くのは、カーネルがほぼ同じで、他のものを全部コピーしてるから肥大化するんだよ。<br>しかも、ユーザーモードレベルでは互換性がない（グラフィックドライバーとか！）。<br>もしオレのカーネルが君のと全然違ったら（カーネルオプションとかメジャーバージョンが違うだけでも）、仮想マシンが必要になる。" userName="immibis" createdAt="2025-03-30T11:14:49" color="">}}

{{<matomeQuote body="WineをFlatpakのプラットフォームとして配布できるかもね。Flatpakはすでにコンテナで、どのディストリビューションでも同じように動くし。Win32のベースを同じツールで同じように作るのは難しくないんじゃないかな。" userName="LeFantome" createdAt="2025-03-30T03:51:55" color="">}}

{{<matomeQuote body="Flatpakの方が良いかも。共通部分をうまくまとめられるから、Wineのバージョンを一つ（かごく少数）だけ持ち込めば済むかもしれないし。" userName="nine_k" createdAt="2025-03-30T00:17:15" color="#38d3d3">}}

{{<matomeQuote body="残念ながら、Flathub（最大のFlatpakリポジトリ）は技術的には可能だけど、Windowsアプリを許可してないんだよね。" userName="OsrsNeedsf2P" createdAt="2025-03-30T01:07:50" color="">}}

{{<matomeQuote body="https://docs.flathub.org/docs/for-app-authors/requirements にこう書いてあるよ。<br>＞WindowsアプリでWineとかエミュレーター使ってるやつは、公式にメンテするって意思があるなら受け付けるよ、とのこと。なんでだろ？普通のパッケージはOKなのに。Javaとか.netと何が違うんだろ？" userName="yjftsjthsd-h" createdAt="2025-03-30T02:19:06" color="">}}

{{<matomeQuote body="たぶん、暗黙的に海賊版になっちゃうからじゃないかな。Windowsのフリーソフトなんて誰も共有しないし。皆MS OfficeとかPhotoshopとかCADとかを求めてるんだよ。そういうのはOSSの代替品がないし、導入のハードルも高いからね。やるなら大規模な組織が必要だね。ソフトウェアを配布できるような契約を結んで、ユーザーが購入できる仕組みも提供する必要がある。ライセンスの問題もあるし。難しいけど、基本的な考え方は単純で実現可能だよ。問題は技術的なことじゃなくて、Windowsソフトの配布方法とライセンスなんだよね。" userName="coderenegade" createdAt="2025-03-30T04:00:55" color="#ff5c5c">}}

{{<matomeQuote body="ちょっと考えたんだけど、Dockerfileみたいに、再現可能なレシピを共有する方が良くない？Wineなら、FROM wine-1.23みたいな感じで。レシピをメンテして、古い依存関係に固定しておけば。コンテナはsyscallレベルで抽象化してくれるから、翻訳レイヤーとして使えると思うんだよね。GUIがあれば、アプリごとにサンドボックス作って、設定とかインストールしたものを覚えておいて（Winefileに追加して）。" userName="cookiengineer" createdAt="2025-03-30T04:55:28" color="#45d325">}}

{{<matomeQuote body="それ、https://docs.flathub.org/docs/for-app-authors/requirements#l... に書いてあるけど、一般的じゃないと思う。Windows＝プロプライエタリ＝再配布不可ってわけじゃないし。MS Officeは無理でも、シェアウェアなら大丈夫だと思う（法律家じゃないけど）。例えば、Notepad++はGPLv3でWine platinum ratingだし、なんでFlathubにないの？" userName="yjftsjthsd-h" createdAt="2025-03-30T05:26:27" color="">}}

{{<matomeQuote body="＞新しいディストリビューションはいらないと思う。よく使うWindowsアプリはWineで動くようにできるし。<br>シームレスなWindowsみたいな体験を提供して、ユーザーがWindowsと同じように作業できるようにするのが理想なんだと思う。設定とかいじらずに、クリックしたら動くように。" userName="DeathArrow" createdAt="2025-03-30T08:32:03" color="#38d3d3">}}

{{<matomeQuote body="今さら新しいシステムなんて誰も学ばないよ。みんなexeの書き方とかパッケージの仕方を知ってるんだから。<br>＞一つのアプリを動かすためのハックが他のアプリを壊すことがある。<br>Windows exeをサポートすることだけを目的としたOSなら、そういう問題は避けられると思う。" userName="win32lover" createdAt="2025-03-30T00:27:46" color="">}}

{{<matomeQuote body="それならSteamOSってのがあるじゃん。" userName="umanwizard" createdAt="2025-03-30T01:47:33" color="">}}

{{<matomeQuote body="Protonの重要な機能の一つは、アプリごとに設定を調整できることだよね。ローカルで必要な調整ができるように。" userName="yjftsjthsd-h" createdAt="2025-03-30T02:06:16" color="#ff5733">}}

{{<matomeQuote body="そうそう。アプリごとに調整できるけど、昔ほど必要じゃないかもね。" userName="bitmasher9" createdAt="2025-03-30T02:12:57" color="">}}

{{<matomeQuote body="一般的に必要ないってこと？それともユーザーが？Protonは調整を全部まとめて、考えなくてもいいようにしてると思ってたんだけど、ちゃんと調べたわけじゃないんだ。" userName="yjftsjthsd-h" createdAt="2025-03-30T02:21:41" color="">}}

{{<matomeQuote body="SteamOSは明らかにLinuxだから、ブログで言ってることとは違うよね。" userName="win32lover" createdAt="2025-03-30T14:08:24" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="dockerをパッケージマネージャーとして使うこともできるよ。実際にそういう仕事してたし。必要な依存関係をコンパイルして、プロセスを効率化してたんだ。<br>dockerの抽象化レイヤーを作って、コンテナ内で実行する”実行ファイル”をインストールできるようにすることも可能だよね。flatpakとかsnaps、appimagesも同じ考え方じゃない？<br>新しいシステムを学ぶ必要がないように、抽象化技術を活用するのが大事。" userName="coderenegade" createdAt="2025-03-30T03:50:39" color="#ff5733">}}

{{<matomeQuote body="＞20年前のexeファイルは今でもWindowsで実行できるけど、Linuxのバイナリは1年前のものでも動かないことがあるよね。アップデートで動かなくなる可能性がある。<br>たぶん、違うものを比較してるんだと思う。<br>Windowsのアプリインストールは、必要な依存関係を全部含めるのが普通だけど、Linuxはアプリ間で共有するからね。だから、依存関係が変わると動かなくなるのは当然。<br>解決策はいくつかあるよ。Windowsと同じように配布するとか、静的にリンクするとか。" userName="feelamee" createdAt="2025-03-30T11:13:46" color="#ff5c5c">}}

{{<matomeQuote body="違うものを比較してるのはその通りだけど、そもそも元の主張も正しくないと思うな。一部のexeファイルはそうかもしれないけど、全部じゃないでしょ。<br>Linux + WineでWindowsシステムを置き換えたことがあるけど、レガシーソフトが動かなくなってたんだ。最新のWindowsじゃどうやっても動かなくて。WineならDLLファイルを見つければ問題なく動いたよ。<br>Wineは安定してるかもしれないけど、動的にリンクされたレガシーソフトはWindowsでもLinuxでも問題が起きる可能性があるよね。Kernelの変更もそうだし。Windowsは互換性があるって言われるけど、実際は違うこともある。" userName="elmo2you" createdAt="2025-03-30T12:01:35" color="#38d3d3">}}

{{<matomeQuote body="＞Linux + WineでWindowsシステムを置き換えたことがあるけど、レガシーソフトが動かなくなってたんだ。最新のWindowsじゃどうやっても動かなくて。WineならDLLファイルを見つければ問題なく動いたよ。<br>Windows 11からLinuxに乗り換えたのも同じ理由だよ。古いバージョンのOfficeの方が速かったんだ。WordpadよりWordの方が起動が速かったし（Notepad並み！）。古いOfficeのOutlookの方がメモリの使用量も少なくて、Windowsに付属してるやつより反応が良かった！<br>新しいノートPCを買ったとき、古いOfficeのインストールで問題が起きて、古いOfficeがブロックされるって噂もあったし。<br>リスクを取りたくなかったから、移行を始めたんだ。<br>＞Windowsは互換性があるって言われるけど、実際は違うこともある<br>完璧に互換性があったよ。Windows 11の一部のバージョンがおかしくなるまではね（Proライセンスでも）。<br>Windows（とAutoHotKeyとか）は大好きだったけど、今はLinuxに満足してるよ。" userName="csdvrx" createdAt="2025-03-30T17:49:57" color="#38d3d3">}}

{{<matomeQuote body="＞Windows（とAutoHotKeyとか）は大好きだったけど<br>あのさ、Win+1とかWin+2で仮想デスクトップを切り替える設定ってどうやるの？あと、あの遅いアニメーションを無効にして、すぐに切り替えるには？<br>何か情報があったら教えてほしいな。<br>Linuxを長く使ってるんだけど、仕事でWindowsを使わないといけなくなって。だから、できるだけLinuxと同じような操作感にしたいんだ。" userName="feelamee" createdAt="2025-03-30T19:17:35" color="">}}

{{<matomeQuote body="＞Linuxでおなじみの操作感をWindowsでも実現したいんだよね。<br>regeditはUI調整の出発点として良いと思うよ。PowerToysもおすすめだけど、キーボード中心の操作ならAHKスクリプトを組むのが良いかも。例えば、ワークフローをキーボード操作に特化させたいならね。<br>＞Linuxでの効率をWindowsに近づけようとしたけど、Windowsには便利なツールがたくさんあるから、結局Windowsに戻っちゃった。" userName="csdvrx" createdAt="2025-03-30T21:13:32" color="">}}

{{<matomeQuote body="アニメーションは「設定」＞「アクセシビリティ」＞「視覚効果」＞「アニメーション効果」で全部オフにできるよ。特定のデスクトップに切り替えるホットキーは標準機能にはないね。あと、ウィンドウを別のデスクトップに移動させるホットキーがないのが不満だな。" userName="pitaj" createdAt="2025-03-30T20:13:16" color="#ff5c5c">}}

{{<matomeQuote body="LinuxならLD_PRELOADとLD_LIBRARY_PATHがあるじゃん。古いバイナリが動かない原因は、古いライブラリにリンクされてるからってことが多いんだよね。必要なライブラリを用意すれば、WindowsのDLLと同じように動くことが多いよ。" userName="Gormo" createdAt="2025-03-31T11:54:52" color="">}}

{{<matomeQuote body="Windowsのバイナリ配布ではシステム層のものをバンドルする必要ないけど、Linuxはシステムライブラリとオプションライブラリの区別があいまいだし、API/ABIの保証もないから、依存関係をバンドルするだけじゃダメなんだよね。Mesa、libwayland、GTKとかはバンドルできないし、互換性が崩れないとも限らない。<br>WindowsはGUIライブラリ、OpenGLドライバー、サウンドライブラリをバンドルしないけど、Linuxはコンテナにシステムライブラリを入れなきゃいけなくて、互換性が残ってるか祈るしかない。静的リンクもGlibc以降は完全に動かないライブラリもあるから無理だよ。" userName="okanat" createdAt="2025-03-30T22:27:07" color="#45d325">}}

{{<matomeQuote body="それはそうかもね。でも、cmakeでC/C++の静的実行ファイルを作るのは上手くいってるよ（たぶんclang/gccに-staticを渡してる）。golangも静的実行ファイルを作れるみたいだし。<br>静的リンクが高コストじゃなければ、dockerイメージで共有ライブラリを使う必要ないと思うんだよね。イメージをリビルドするなら、全部作り直すことになるし。<br>静的実行ファイルなら、dockerイメージとか複雑なパッケージングを避けられるかも。" userName="musicale" createdAt="2025-03-31T04:43:45" color="">}}

{{<matomeQuote body="＞それはそうかもね。でも、cmakeでC/C++の静的実行ファイルを作るのは上手くいってるよ（たぶんclang/gccに-staticを渡してる）。golangも静的実行ファイルを作れるみたいだし。<br>リンクするものやアプリの内容にもよるよ。Dockerコンテナ上のGolangは相性が良いね。Dockerはベースディストリビューションに依存しなくて済むし、Goはlibcをスキップして独自のネットワークスタックを使うし、resolv.confを解析して独自のDNSクライアントを実行する。GUIアプリを全部静的リンクすると、ディスクを食いつぶすモンスターみたいなディストリビューションになるよ。<br>Linuxでクローズドソースのアプリを安心して配布するには、バイナリ互換性が重要だよ。Qt3やGTK2アプリはもう作られないし、サポートもされない。WindowsならWin32で書かれたアプリでも最新機能を使えるんだ。Win32、WPF、WinUIを同じアプリで使えるし、バンドルする必要もない。せいぜい最新のdotnetを入れてもらうくらい。" userName="okanat" createdAt="2025-04-01T00:15:30" color="#45d325">}}

{{<matomeQuote body="＞GUIアプリを全部静的リンクすると、ディスクを食いつぶすモンスターみたいなディストリビューションになる<br>昔のMacintoshのtoolboxは64KBだったけどね。白黒だけど。<br>1MBのGUIライブラリ（Smalltalk-80とか）でも、今のアプリなら誤差みたいなもんでしょ。" userName="musicale" createdAt="2025-04-02T03:23:59" color="">}}

{{<matomeQuote body="「あなた」が違うんだよね。配布者向けの選択肢を提示してるけど、引用はユーザー向けの選択肢について話してる。ユーザーからすると、配布者が過去に選んでれば楽になったはずの選択肢なんて役に立たない。" userName="regularfry" createdAt="2025-03-30T15:36:43" color="">}}

{{<matomeQuote body="単純じゃないと思うよ。openglドライバーは複雑で、ハードウェアごとのuserlandライブラリが必要で、動的リンクが必要らしいし。WindowsのバイナリがLinuxでゲームをリリースする上で一番安定してるみたいだし。<br>Linuxのsyscall ABIの安定性とか、カーネル内の他のものも気になる。" userName="rendaw" createdAt="2025-03-30T17:38:58" color="">}}

{{<matomeQuote body="＞openglドライバーは複雑で、ハードウェアごとのuserlandライブラリが必要で、動的リンクが必要らしい<br>そうだよ。OpenGLドライバーは動的にロードされるけど…<br>OpenGL ABIの安定性に問題があるって聞いたことないけど？" userName="feelamee" createdAt="2025-03-30T19:24:44" color="">}}

{{<matomeQuote body="OpenGLのABIはめっちゃ安定してるんだけど、OpenGLドライバー(特にオープンソースのやつ)は、ディストリビューションが動的にリンクしたがる他のライブラリも使うんだよね。だから、プログラムと一緒に違うバージョンのライブラリを配布すると問題が起きる可能性があるんだ。静的にリンクされたライブラリでも、正しくビルドされてなくて、実行ファイルがまだライブラリのシンボルをエクスポートしてたら同じことが言えるよ。乗り越えられない問題じゃないけど、経験の浅いLinux開発者はしくじるかもね。" userName="account42" createdAt="2025-03-31T11:50:15" color="">}}

{{<matomeQuote body="マジそれな。昔から、アーカイブされたEXEがDLLが見つからないって怒り出す問題にめっちゃ悩まされてるんだよね。<br>同じように、作者が言ってるように、Linux自体にバイナリ互換性の問題があるわけじゃないんだよ。もしこれが問題で、エミュレーションレイヤーを通してデフォルトでEXEを実行するディストリビューションを作ろうとしてるなら、Alpineとか他のmuslベースのディストリビューションを使った方が絶対いいと思うよ。" userName="ryukoposting" createdAt="2025-03-30T21:34:55" color="#ff5c5c">}}

{{<matomeQuote body="この件についてYouTubeの動画を見て勉強しなきゃ。コンピューターエンジニアリングではしょっちゅう出てくることだけど、ちゃんと理解せずに何とかやってこれちゃったんだよね。時々こういうコメントを見かけると、すごくよく分かる気がするんだけど、まだ学ぶべきニュアンスがたくさんあるんだろうな。" userName="john-radio" createdAt="2025-03-30T23:52:16" color="">}}

{{<matomeQuote body="これって、クレムリンの前で「アメリカ大統領打倒！」って叫ぶソ連時代のジョークみたいなもんだよね。この場合、俺もLinuxのWine上で20年前のWindowsバイナリを実行できるってこと。" userName="Onavo" createdAt="2025-03-30T11:38:26" color="">}}

{{<matomeQuote body="この記事の前提は悪くないんだけど、技術的な不正確さが目立つんだよね。<br>ある部分では、syscall、libc (たぶんglibcのこと)、PE vs. ELF、そして'ABI'について話してるけど、それらは全部違うものだし、IIUC的には全部Linux上ではかなり安定してるんだよね。安定してないのは、GTKとかQTみたいなユーザー空間ライブラリなんだよ。結局、何の話をしてるんだ？<br>＞ A small modification to the “exec” family of system calls to dispatch on executble type would allow any Linux application to fork an exec a Windows application with no effort.<br>っていう記述もあるけど、俺はカーネル開発者じゃないから本当かどうか疑わしいな。それに、Gatekeeper(無効にできる)、Recall(デフォルトで無効)、Microsoftアカウントでのサインイン(簡単にバイパスできる)についても話してる。それに”違法ファイルをスキャンする”って言ってるけど、それってAppleのiCloud CSAMスキャンみたいなやつでしょ？あれはコンピューター上にはないし、めっちゃ批判されて中止になったじゃん。LinuxがWine経由でWin32との互換性を持つっていうアイデアは悪くないけど、もっと正確に書いてほしいな。" userName="subjectsigma" createdAt="2025-03-29T23:24:12" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
