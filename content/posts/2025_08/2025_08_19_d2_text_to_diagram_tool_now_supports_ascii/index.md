+++
date = '2025-08-19T00:00:00'
months = '2025/08'
draft = false
title = 'D2（テキストから図を作成するツール）がASCIIレンダリングに対応！これは試すしかないぞ！'
tags = ["D2", "図形描画", "ASCII", "開発ツール", "レンダリング"]
featureimage = 'thumbnails/purple4.jpg'
+++

> D2（テキストから図を作成するツール）がASCIIレンダリングに対応！これは試すしかないぞ！

引用元：[https://news.ycombinator.com/item?id=44954524](https://news.ycombinator.com/item?id=44954524)




{{<matomeQuote body="やあ、みんな！今朝追加した新機能をシェアするね。まだアルファ版だけど（もうGitHubでissueも報告されてるけどね笑）。ブログ記事をスキップして直接試したいなら、こっちをどうぞ！<br>https://play.d2lang.com/?script=qlDQtVOotFLIyFTwSEzOTi1S8Est...<br>もっと大きな例はこちら！<br>https://play.d2lang.com/?script=rJJBjtswDEX3OgWBrm2kzU4Feoru..." userName="alixanderwang" createdAt="2025/08/19 19:06:29" color="#45d325">}}




{{<matomeQuote body="Playgroundが動かないと思ったんだよね。黒背景に黒いテキストが表示されてたから。多分ダークモードが有効になってるのかも。他のレンダラーは動くけど、ASCIIは表示されないよ。" userName="rng-concern" createdAt="2025/08/19 20:50:32" color="#38d3d3">}}




{{<matomeQuote body="あー、そうか、ダークモードでのテストを忘れてた！教えてくれてありがとう！<br>追記: 修正したよ。" userName="alixanderwang" createdAt="2025/08/19 21:01:23" color="">}}




{{<matomeQuote body="SVGレンダラーって、ノードにカスタムIDとか属性をサポートしてる？もしそうなら、Stylus (https://github.com/mmastrac/stylus) に対応を追加したいな。" userName="mmastrac" createdAt="2025/08/20 04:43:48" color="#38d3d3">}}




{{<matomeQuote body="うん、たぶん君が探してるのはこのセクションの最後にあるノートだよ: https://d2lang.com/tour/exports/#svg<br>もし追加したら、D2／D2-docsにPR出してコミュニティツールやプラグインのリストに入れてくれてもいいよ！" userName="alixanderwang" createdAt="2025/08/20 05:50:56" color="#38d3d3">}}




{{<matomeQuote body="じゃあ、記事によるとELKからダウンサイズしてるだけってこと？これ動かすにはELKを指定しないとダメなの？それとも.txt出力しようとしたら自動で有効になる？（ELKはD2でよく使ってるから気になってさ）。" userName="aidenn0" createdAt="2025/08/20 00:30:23" color="#38d3d3">}}




{{<matomeQuote body="ELKに切り替わるよ: https://github.com/terrastruct/d2/blob/master/d2cli/main.go#..." userName="alixanderwang" createdAt="2025/08/20 00:36:17" color="#ff33a1">}}




{{<matomeQuote body="素晴らしいツールをありがとう:-)！D2は本当に気に入ってて、数年前に見つけて以来、ずっと図形描画に使ってるよ。これからも頑張ってね！" userName="hiyer" createdAt="2025/08/20 13:58:21" color="">}}




{{<matomeQuote body="D2はmermaidよりずっと好きだったんだけど、個人的にはこれでグリッドレイアウトが実質的に使えなくなるのはちょっとね: https://github.com/terrastruct/d2/issues/1164<br>正確なピクセル幅を計算しなきゃいけないのは、こういうツールの意味がないと思うんだ、少なくとも俺にとっては。" userName="lidavidm" createdAt="2025/08/20 01:49:44" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう！0.7.2（次期リリース）で対応してくれるって知れて良かったよ！" userName="alixanderwang" createdAt="2025/08/20 02:03:52" color="">}}




{{<matomeQuote body="すごいね！本当に感謝するよ！ついでにD2をGitHubとNotionにも対応させてくれないかな？" userName="lidavidm" createdAt="2025/08/20 02:05:45" color="">}}




{{<matomeQuote body="この役立つ比較サイトのリンクに感謝するよ：https://text-to-diagram.com/" userName="mwexler" createdAt="2025/08/20 12:30:27" color="#ff5c5c">}}




{{<matomeQuote body="僕はブラウザベースのテキストから図作成ツールのリストを管理してるんだけど、D2のオンライン版がブラウザ単体では動かず、バックエンドサーバーで図が生成されることに最近気づいたんだ。D2はブラウザだけで動かせるの？記事に書かれてた拡張機能はオフラインでも動くのかな？（多くのツールはそうなんだけど）" userName="smusamashah" createdAt="2025/08/19 21:15:54" color="#ff33a1">}}




{{<matomeQuote body="今はできるよ！（1週間前からだけどね）d2 playgroundのネットワークタブを見てみて。最近開発してるD2のWebAssemblyポートをラップしたd2.jsが動かしてるんだ。まだ完全に公式準備はできてないけど、もうすぐだし、別途アナウンスする予定だよ。" userName="alixanderwang" createdAt="2025/08/19 21:20:13" color="#38d3d3">}}




{{<matomeQuote body="これは素晴らしいニュースだね！素晴らしいツールをありがとう。いろんな場所にホストするのが一番の悩みだったんだ。" userName="troyvit" createdAt="2025/08/20 15:59:40" color="">}}




{{<matomeQuote body="最近少し変わったみたいだけど、僕はD2をずっとローカルで使ってるよ。バイナリにはWebサーバーを起動して、保存時に変更をプッシュするウォッチモードがあるから、インタラクティブに図を開発できるし、例えばビデオ会議なんかでWebブラウザを共有したりもできるんだ。スレッドで他の人が話してるMermaidについては知らないから比較できないけど、D2は基本的なことを覚えるのがすごく簡単で、インストールから最初の図まで数分でできるくらい簡単だよ。" userName="cess11" createdAt="2025/08/20 12:26:29" color="#45d325">}}




{{<matomeQuote body="そうだけどさ、チャートを埋め込んだ場所へのリンクを渡すだけで済むのに、なんでWebサーバーを動かすなんて手間をかけるの？プレゼンがあるチャットに埋め込むだけでもいいじゃない。バイナリがいらないのがMermaidの強みだよ。D2のWebAssemblyポートが公式にリリースされるまでは、D2をMermaidの競合と呼ぶのは公平じゃないと思う、使いやすさのレベルが全然違うからね。リリースが近いのは嬉しいけど。" userName="Daedren" createdAt="2025/08/20 13:45:29" color="#ff33a1">}}




{{<matomeQuote body="言った通り、僕はMermaidのこと何も知らないし、そんな比較もしてないよ。僕が作りたいのはどこにでも埋め込めるSVGだけだし、D2はその目的には十分すぎるくらいだから問題ないよ。" userName="cess11" createdAt="2025/08/21 07:31:22" color="">}}




{{<matomeQuote body="あのリスト、見せてくれない？<br>追記：見つけた！ありがとう。" userName="rendall" createdAt="2025/08/19 21:21:49" color="">}}




{{<matomeQuote body="https://xosh.org/text-to-diagram/" userName="sestep" createdAt="2025/08/19 21:24:05" color="">}}




{{<matomeQuote body="共有ありがとう！最初のセクションを見る限り、公式のMermaid PlaygroundはUIとテキスト編集の両方に対応してるんだね。これは本当に便利で、すごく助かってるよ。" userName="filcuk" createdAt="2025/08/19 22:18:55" color="">}}




{{<matomeQuote body="ASCIIからの変換は良いね。でも、もし図を更新する必要がある場合、オリジナルのD2ソースってどうやって手に入れるの？そこが気になるな。" userName="arunc" createdAt="2025/08/20 03:58:11" color="#ff33a1">}}




{{<matomeQuote body="おー、これ最高じゃん！D2の構文はすごく魅力的だけど、Mermaidのツールの方が使いやすくて、最近はMermaidを使うことが多かったんだよね。でもこれは、Mermaidには見られない本当に斬新な機能だ。https://asciiflow.com/への橋渡しにもなるし、かなり良い感じだね。" userName="hiAndrewQuinn" createdAt="2025/08/20 05:28:58" color="#ff5c5c">}}




{{<matomeQuote body="1. これってMermaidと比べてどんな価値があるの？見た目とか動作は好きだけど、乗り換えるちゃんとした理由はあるのかな。<br>2. 俺の意見だと、こういうツールに足りないのは、自動生成された出力に対して手動で『修正レイヤー』を追加できる機能だね。例えば、ボックスを特定のX/Y量だけ動かしたり、リサイズしたりする機能さ。" userName="fzeindl" createdAt="2025/08/20 06:22:22" color="#38d3d3">}}




{{<matomeQuote body="1. 価値観によるね =)。君が挙げた2つで十分な人もいるだろうし、例えばCLIがSVGをレンダリングするのにChromiumブラウザを必要としない（https://news.ycombinator.com/item?id=31275754）みたいな違いもあるよ。全てを網羅してるわけじゃないけど、比較サイト作ったから参考にしてね: https://text-to-diagram.com<br>2. オープンソース製品の投稿で有料製品を宣伝するつもりはないんだけど、君が言及したから言うと、僕らは位置や寸法をロックできるIDEも作ってるよ: https://docs.terrastruct.com/tour/freehand" userName="alixanderwang" createdAt="2025/08/20 06:37:17" color="#785bff">}}




{{<matomeQuote body="そうそう、MermaidJSでのWiiUの例って、サブグラフがネームスペースを作らないせいで壊れてるみたいだよ。具体的には、`amd`サブグラフ内の`rom`ノードが、`ibm`サブグラフ内のものを上書きしちゃってるんだ。" userName="cpmsmith" createdAt="2025/08/20 15:10:25" color="#45d325">}}




{{<matomeQuote body="ありがとう！Issue作ったよ: https://github.com/terrastruct/text-to-diagram-site/issues/6..." userName="alixanderwang" createdAt="2025/08/20 15:34:48" color="#785bff">}}




{{<matomeQuote body="＞ Mermaidと比べてどんな価値があるの？<br>最近D2を使い始めた長年のMermaidユーザーとして言うと、D2の構文は書きやすくて、より良い抽象化のおかげで保守もしやすいはずだよ。D2は既成の図の種類は少ないけど、Mermaidより優れた合成サポート（特にレイヤーやシナリオ）があるのがキラー機能だね。Sankey図ならMermaidだけど、階層化されたDFDならD2が断然良いよ。D2は要素を自由に組み合わせられるから、汎用的な図形タイプとして使えるんだ。<br>＞ これらのツールに足りないのは、自動生成された出力に手動で『修正レイヤー』を追加できる機能だね。<br>これは技術的にはMermaidでも、ノードにCSSクラスを付けて微調整することでできると思うよ。" userName="dragonwriter" createdAt="2025/08/20 19:12:48" color="#ff5c5c">}}




{{<matomeQuote body="Struturizrみたいな感じ？https://structurizr.com/" userName="arkh" createdAt="2025/08/20 08:59:41" color="">}}




{{<matomeQuote body="D2はダイアグラムツールとして見た目も使い勝手も好きだな！これが”本当の理由”だよ。" userName="Myrmornis" createdAt="2025/08/20 08:43:13" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="インラインのLaTeX数式に対応してるのがすごく良いね！これは素晴らしい機能だと思うよ。" userName="bigfishrunning" createdAt="2025/08/20 15:25:23" color="#ff5c5c">}}




{{<matomeQuote body="これクールだね！前の投稿でC4対応してたの見たよ。ちょうどC4使う予定だから、試してみるね。" userName="robertlagrant" createdAt="2025/08/19 19:01:58" color="#45d325">}}




{{<matomeQuote body="これ最高じゃん！D2は知らなかったけど、Neovimのターミナルで直接チャートを作って下書きして、最終的に綺麗な画像でレンダリングできるってアイデアがすごく気に入ったよ。近いうちに試してみるね。" userName="tombert" createdAt="2025/08/19 22:33:43" color="#ff5733">}}




{{<matomeQuote body="D2はもうライブ更新されるHTTPサーバーがSVGを配信してるから、Vimとブラウザを並べればリアルタイムで更新が見られるよ。俺、D2は1年前に知って、今は全部の図に使ってるんだ。" userName="aidenn0" createdAt="2025/08/20 00:31:33" color="#45d325">}}




{{<matomeQuote body="あー、でもそれってそこまでオタクっぽくてクールじゃないよね（笑）ASCIIレンダリングにはある種の優雅さがあるんだよな。" userName="tombert" createdAt="2025/08/20 00:41:34" color="#38d3d3">}}




{{<matomeQuote body="普段ASCIIダイアグラムにはMoondrawを使ってるんだけど、Vimにいる時はD2がめちゃくちゃ便利だね。" userName="mtillman" createdAt="2025/08/19 22:58:16" color="#45d325">}}




{{<matomeQuote body="これは知らなかったな。他のテキストベースのダイアグラムツールは試したことあるけど、これは確かに面白そう。職場でVisioみたいなGUIベースのツールを強制されてるんだけど、D2にはもっとメリットを感じるよ。自宅や自分のビジネスのセットアップで絶対試す価値ありだね。" userName="masfoobar" createdAt="2025/08/20 12:22:10" color="#38d3d3">}}




{{<matomeQuote body="追記だよ。<br>Emacsのプラグインを見つけた！やったー。今夜遊んでみるね。" userName="masfoobar" createdAt="2025/08/20 12:24:02" color="">}}




{{<matomeQuote body="使ってみたけど、古いね。最近のD2のキーワードを理解しないし、Emacsとの連携もイマイチだよ。例えばデフォルトのキーバインドとか、Emacsっぽくないし。" userName="jhoechtl" createdAt="2025/08/20 12:33:19" color="#45d325">}}




{{<matomeQuote body="コミュニティ製のD2プラグインはメンテ状況がバラバラだけど、このメンテナーはGitHub（https://github.com/andorsk）で活発みたいだよ。d2-emacsプラグインもトップにピン留めされてるし、もし興味があるなら彼に伝えてみたら反応してくれるかもね！" userName="alixanderwang" createdAt="2025/08/20 12:49:33" color="#45d325">}}




{{<matomeQuote body="うん、でもVimscriptで書かれてるってのが変というか、残念だよね。" userName="Graziano_M" createdAt="2025/08/19 21:38:19" color="">}}




{{<matomeQuote body="Vimの拡張機能がVimscriptで書かれてることが、どうして変だなんて言えるんだ？！" userName="gsinclair" createdAt="2025/08/19 22:48:33" color="">}}




{{<matomeQuote body="じゃあさ、Javaの拡張機能がJavaScriptで書かれてるって状況を想像してみてよ...。" userName="stavros" createdAt="2025/08/20 00:06:32" color="">}}




{{<matomeQuote body="想像する必要なんてないよ、Java 8から実際にあったことだし。<br>https://www.baeldung.com/java-nashorn" userName="cess11" createdAt="2025/08/20 12:31:53" color="#ff33a1">}}




{{<matomeQuote body="Java 14で廃止されたけどね。今はGraalが使われてるよ。" userName="reactordev" createdAt="2025/08/20 14:41:27" color="#ff33a1">}}




{{<matomeQuote body="Vimはほぼ終わりだよ。新しいプラグインのほとんどはLua（Neovim用）で書かれてるんだ。Luaはあまり好きじゃないけど、Vimscriptよりはるかにマシ。Neovimプラグインはたまに調整するけど、Vimscriptで書かれたやつは触らないね。" userName="Graziano_M" createdAt="2025/08/20 03:27:21" color="">}}




{{<matomeQuote body="1. Vimはまだまだ現役だよ。<br>2. 「Lue」じゃなくて「Lua」ね。<br>3. NeovimならVimscriptとLua両方使えるから、好きな時に移行すればいいし、しなくてもいいよ。<br>4. Neovimの新しいプラグインはLuaで書かれる傾向にあるね。" userName="JSR_FDED" createdAt="2025/08/20 05:40:59" color="#785bff">}}




{{<matomeQuote body="うん、新しいプラグインはLuaで書かれてるけど、これは違ったね。残念。<br>前のコメントはスマホで書いたんだけど、LuaがLueに自動修正されちゃったんだ。" userName="Graziano_M" createdAt="2025/08/20 12:41:52" color="">}}




{{<matomeQuote body="Vimユーザーは君が思ってるよりずっと多いよ。<br>俺はSSHを使うときはいつもVimを使ってる。この30年間、毎日ね。" userName="reactordev" createdAt="2025/08/20 14:43:40" color="">}}




{{<matomeQuote body="これ、Mermaidよりずっと見栄えがいいね。<br>GitHubのPRのコードブロックでMermaidみたいにサポートされてるのかな？" userName="heliophobicdude" createdAt="2025/08/20 01:41:59" color="">}}




{{<matomeQuote body="残念ながらまだだよ。GitHubの人たちに連絡してみたけど、ダメだったんだ。<br>でも、クライアントサイド描画ができるd2.jsは今月までまともに使えなかったし、まだ正式リリースじゃないんだ（ちょっと隠されてる）。<br>だから、公式リリース（もうすぐ™）で状況が変わるか見てみよう。もしこの記事を読んでるD2ファンでGitHubのフロントエンドチームに知り合いがいるなら、口添えしてくれると嬉しいな ＝)" userName="alixanderwang" createdAt="2025/08/20 02:10:01" color="#38d3d3">}}




{{<matomeQuote body="頑張ってね！Mermaidの代替として受け入れられたら最高だよ。D2はビジュアルも言語もMermaidよりずっと良いし、もう数年がっつり使ってるけど本当に素晴らしい。有料製品が健全だといいな。シーケンス図が一番よく使うタイプで、いつもスケッチレンダリングを使ってるよ。<br>機能リクエストなんだけど、シーケンス図の矢印ラベルにクリック可能なハイパーリンクを付けたいな。あと、垂直方向の間隔をもっと制御したいのと、カラムのグループ化もできたら嬉しいな。" userName="Myrmornis" createdAt="2025/08/20 08:41:41" color="#38d3d3">}}




{{<matomeQuote body="＜3<br>そのリンク機能、リクエストを正しく理解していればもうできるよ: https://play.d2lang.com/?script=Ks5ILEi1UihOLSxNzUtOjU_JTEwv...<br>よし、シーケンス図の改善については次のリリースに向けてスプリントに入れるよ。" userName="alixanderwang" createdAt="2025/08/20 09:36:36" color="#45d325">}}




{{<matomeQuote body="いや、残念ながらね。それがまだ俺のドキュメント作成の最大の障害なんだ。<br>D2をPNGにコンパイルしてドキュメントに埋め込むCIパイプを設定する時間をかけたくないから、Mermaidを無理して使ってるんだよ。" userName="baby_souffle" createdAt="2025/08/20 01:59:18" color="#ff33a1">}}




{{<matomeQuote body="最近はLLMを使ってテキストから図を作るのが最高のワークフローだね。<br>主な課題は、これらをどう見栄え良くするかだ。人間が編集しやすいように最適化するのは、現時点では二の次。多くのツールがここでつまづくんだ。" userName="jillesvangurp" createdAt="2025/08/19 19:52:09" color="">}}




{{<matomeQuote body="LLMを使ってテキストから図を作るのは最近のキラーワークフローだよね。便利だけど、そこまでじゃないかな。図をコードで書くツールを使うなら、LLMにコードを書いてもらうと早く始められるけど、長い目で見れば自分で書いた方が制御しやすいし、ハルシネーションもないよ。結局、キーボードを打つ回数も少なくなるだろうし、オートコンプリートがしっかりしていればなおさらだね。" userName="billyp-rva" createdAt="2025/08/19 20:02:16" color="#45d325">}}




{{<matomeQuote body="D2、めちゃくちゃカッコいいと思う！自分はOPじゃないけど、システムを説明してLLMに描いてもらうのがすごく好きなんだよね。だからLLMがD2を”描く”ってのは、すごい新しい一歩なんじゃないかな？<br>変更したい時はドキュメントや設計を更新して繰り返すだけ。システム設計の面接を想像してみてよ、自分で描くのを完全にスキップして、結果のグラフを解釈して自分の作業を検証する感じ！" userName="thejazzman" createdAt="2025/08/19 22:49:24" color="#785bff">}}




{{<matomeQuote body="公式のPythonリポジトリを作ってくれない？Notebookで使いたいんだけど、今はDatabricksを使わざるを得ないんだよ。" userName="peroids" createdAt="2025/08/20 04:44:57" color="">}}




{{<matomeQuote body="D Programming Languageと混同しないでね。似たドメイン（dlang.org）を持ってて、現在バージョン2だよ。" userName="eric-p7" createdAt="2025/08/19 19:58:15" color="">}}




{{<matomeQuote body="正直に言うと、最初はD langのことだと思ってたんだよね。でも、テキストベースの図にも興味があるから、結局クリックしてよかったよ！<br>今はDlangをあまり使ってないけど、言語自体にはまだ興味があるんだ。どっちにしろ、このクリックはWin-Winだったね！" userName="masfoobar" createdAt="2025/08/20 12:29:09" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="D2をシーケンス図や移行図に使ってるんだけど、気に入ってるよ！この新機能、すごく面白いね！" userName="jiehong" createdAt="2025/08/19 21:25:04" color="#785bff">}}




{{<matomeQuote body="これはLLMにアーキテクチャ図のコンテキストを与えるのに超役立つだろうね！" userName="CuriouslyC" createdAt="2025/08/19 23:17:24" color="#ff33a1">}}




{{<matomeQuote body="これってクワインが可能なのかな？" userName="sidewndr46" createdAt="2025/08/19 21:09:35" color="">}}




{{<matomeQuote body="うん、できるよ。でも、プレイグラウンドで見つけた唯一のものは、全部改行とスペースだったけどね。<br>エスケープ形式だと、＼x20＼n＼x20＼n＼x20＼n＼nって感じ。" userName="cluckindan" createdAt="2025/08/19 22:11:55" color="">}}




{{<matomeQuote body="マジで最高だよ。これ、めっちゃいいじゃん。使うわ。超クール！" userName="scrubs" createdAt="2025/08/20 05:36:35" color="#38d3d3">}}




{{<matomeQuote body="うわー！これでD2が本当に使えるものになったじゃん！" userName="mielebauknecht" createdAt="2025/08/19 23:25:44" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
