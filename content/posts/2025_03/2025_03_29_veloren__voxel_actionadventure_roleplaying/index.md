+++
date = '2025-03-29T00:00:00'
months = '2025/03'
draft = false
title = 'Rust製のオープンワールドRPG「Veloren」が進化中！ボクセル世界を冒険だ！'
tags = ["ゲーム", "Rust", "オープンソース", "RPG", "ボクセル"]
featureimage = 'thumbnails/red2.jpg'
+++

> Rust製のオープンワールドRPG「Veloren」が進化中！ボクセル世界を冒険だ！

引用元：[https://news.ycombinator.com/item?id=43517337](https://news.ycombinator.com/item?id=43517337)

{{<matomeQuote body="山とか川の生成方法に興味あるなら、基本は論文の”Large Scale Terrain Generation from Tectonic Uplift and Fluvial Erosion”がベースになってるよ。各チャンクは（ノイズベースで一定の割合で）隆起して、浸食はチャンクの傾斜とか集水域のサイズで決まるんだ。その結果、河川ネットワークと各チャンクの高さが決まって、それに基づいて道とか洞窟とか構造物が配置されるんだって。実際のボクセルは、プレイヤーがそのエリアをロードした時に初めて決まって、基本的には保存されないらしいよ。あと、worldgenに関係ない技術だけど、レンダリングはwgpu、モデルはMagicaVoxel、クライアントとサーバーはECS（specs）を使ってるって。" userName="skitter" createdAt="2025-03-29T18:41:03" color="#ff33a1">}}

{{<matomeQuote body="ちょっとした注意点として、ランチャー経由のインストール（なんでランチャーが必要なの！？）がちょっとおかしいみたい。Macの直接ダウンロードとCargoからのインストールだと、Airshipper v0.15.0がインストールされるんだけど、それが古くて新しいバージョンをインストールするように言われるんだよね。ボタンをクリックするとGithubのリリースページに飛ぶけど、最新バージョンは0.14なんだ。12月にv0.16のリリースがあるけど、タグだけで成果物がないんだよね。イライラしてやめちゃった。<br>編集：issuesページがあるにもかかわらず、ランチャーのGitHubページは単なるGitLabリポジトリのミラーらしい。GitLabには最新バージョンの成果物があるんだよね。なんで公式リンクと`cargo install`ダウンロードで人々をGitHubページに送るのか謎。" userName="misnome" createdAt="2025-03-29T19:48:49" color="">}}

{{<matomeQuote body="ランチャーは、新しいバージョンが出てるかどうかを確認しなくても、最新ビルドを簡単に取得できるようにするためにあったんだ。数年前は、アップデートが不定期（数日だったり、1週間以上だったり）だったんだよね。週1回新しいビルドを定期的にリリースするようになったけど、今でもランチャーは、GitLabプロジェクトに登録することで利用できる、さまざまな非公式または実験的なサーバーを探索する方法として機能してるよ。" userName="suavesito" createdAt="2025-03-29T21:07:21" color="">}}

{{<matomeQuote body="Velorenは好きなんだよね。デザイン目標とかアートディレクションが好きで、長い間プロジェクトをフォローしてきたんだけど、結局のところ、アーティストと開発者だけでゲームを作ろうとするとどうなるかの完璧な例だよね。たくさんのクールなものがあるんだけど、ビデオゲームとしては常に的外れなんだ。" userName="littlestymaar" createdAt="2025-03-29T22:32:21" color="">}}

{{<matomeQuote body="同意。ゲームに貢献したこともあるから、ちょっとは内情を知ってるつもりだよ。Velorenはクールな機能がたくさん詰まってるけど、ゲームプレイのループとか、全体的なプレイヤー体験にほとんど焦点が当てられてない印象だな。あと、個人の自由時間で達成できないような変更は、非常に難しいんだよね。Velorenは十分に人気があるから、大幅な変更は物議を醸す可能性が高いし。誰も責められないけどね。オープンソースのゲーム開発の性質だと思うしかないのかな。それでも、時間がある人は試してみることをお勧めするよ。数時間は楽しめると思うし。見るべきもの、探索すべきものがたくさんあるし。ちょっとまとまりのないデザインが、時には強みになることもあるんだ。予測できないからね。WoWみたいな洗練された時間泥棒だとは思わないでね。" userName="tormeh" createdAt="2025-03-30T00:57:54" color="#38d3d3">}}

{{<matomeQuote body="Rustのゲーム開発が盛り上がってきてるね。<br>Velorenのメインラインクライアントは、独自のエンジンで構築されてるし。<br>Tiny GladeはBevy ECSを使ってるけど、独自のグラフィックススタックを持ってる。<br>BevyとFyroxはどちらもかなり有能になってきてる。まだGodotじゃないけど、近づいてきてるね。BevyとFyroxは設計目標が大きく異なるから、誰にでも合うものがあるはず。BevyはECSに力を入れてて、レベルビルダーのようなユーティリティクレートやサードパーティライブラリがたくさんある。FyroxはECSにそれほど依存してなくて、すべてを完全なパッケージとして構築しようとしてる。Bevyの方が成熟したエンジンだけど、どちらも実現可能だよ。<br>どちらもWASMバンドルとしてWebに簡単にデプロイできるから、マルチプラットフォームターゲティングに最適。Rustは主要なゲームプログラミング言語になりつつあるね。すでに素晴らしいWebバックエンド/RPC/APIサービスプログラミング言語だから、ゲームサーバーもRustで書けるし。" userName="echelon" createdAt="2025-03-29T19:43:20" color="#ff5c5c">}}

{{<matomeQuote body="古いジョークにあるように、Rustには50個のゲームエンジンがあるけど、ゲームは5個しかないんだよね。ツールはあるけど、大手スタジオは使ってるのかな？" userName="wavemode" createdAt="2025-03-29T20:04:43" color="">}}

{{<matomeQuote body="現在、大手スタジオで使用されている一般的に利用可能なエンジンは、UnrealとUnityだけだよ。CryEngineも数えられるかもしれないけど、Crytek自身以外にそれを使ってる大手開発者は1社しか知らないな。インディーズの中にはGodotを使ってる人もいるけど、それは「大手スタジオ」とは言えないよね。あと、Rustのツールはまだ整ってないよ。UnrealとUnityはどちらも、エンジン自体と同じくらい重要なエコシステム全体を持ってるし。さらに、アセットストア、サポートスタッフ、コンソールサポート、その他、従業員数が3桁になると必要なものがすべて揃ってる。CryEngine（O3DE - 複雑な話）のオープンソースフォークを今すぐダウンロードできるよ。無料だけど、コード以外のものが足りないから誰も使わないんだ。" userName="tormeh" createdAt="2025-03-30T00:28:58" color="">}}

{{<matomeQuote body="GodotがSteamで勢いを増してるね！" userName="prox" createdAt="2025-03-30T08:46:02" color="">}}

{{<matomeQuote body="昨年、Godotで書かれたゲームが781本Steamでリリースされたんだ。これは、リリースされた全ゲーム18,887本の4％にあたるよ。<br>割合は年々増加してるね。<br>制約のないエンジンがより高性能になるにつれて、利益を搾取する商用エンジンを使用する理由が減るんだ。AAAスタジオはまだGodotを使わないだろうけど、いずれ十分に良くなるはず。Unrealの最も高度な機能のいくつかのオープンソース実装が多数存在するようになったし。誰もがMayaの代わりにBlenderを使うようになったよね。同じことがゲームエンジンにも起こるだろうね。" userName="echelon" createdAt="2025-03-30T16:15:23" color="#ff5c5c">}}

{{<matomeQuote body="大手スタジオじゃないけど、BAFTAにノミネートされたゲーム[1]ってのも、それなりにすごいんじゃない？<br>[1]: https://store.steampowered.com/news/app/2198150/view/6559419..." userName="littlestymaar" createdAt="2025-03-29T22:26:12" color="">}}

{{<matomeQuote body="Tiny Gladeは悪くないけど、ゲームって呼べるか微妙だよね。目的もないし、シミュレーション要素もほとんどないし。ただジオラマを作るだけって感じ。" userName="Rohansi" createdAt="2025-03-30T06:19:30" color="">}}

{{<matomeQuote body="Tiny Gladeの方がVelorenよりゲームっぽいと思うけど。" userName="littlestymaar" createdAt="2025-03-30T13:40:35" color="">}}

{{<matomeQuote body="それが何であれ、めちゃくちゃ成功してるよね。" userName="vintermann" createdAt="2025-03-30T10:51:46" color="">}}

{{<matomeQuote body="既存のc++スタックに比べてメリットが少ないし、もっと重要なのは、ゲームエンジンのコーディングをする開発者のほとんどがc++開発者だから、経済的に不利になるからじゃない？" userName="Guthur" createdAt="2025-03-29T20:13:29" color="">}}

{{<matomeQuote body="それが本当かどうかは知らないけど、オープンソースのゲームエンジンだけを見てる人からすると、Bevyはかなり魅力的に見えるよ。すごく有能そうだし(Tiny Gladeはすごい)、コードベースも新しくてモジュール式だし。今、俺を引き留めてる足りないものは、組み込みのエディタ/IDEとスクリプトまたはノードシステムなんだよね。だから今はGodotの方が魅力的に見える。O3DEにも注目してるけど、あれは俺が持ってるハードウェアよりもっと良いものが必要だと思う。" userName="bobajeff" createdAt="2025-03-29T23:38:47" color="#785bff">}}

{{<matomeQuote body="Tiny Gladeは独自のVulkanレンダラーを実装してるってことに注意してね。少なくともECSはBevyのコードベースを使ってると思うけど。BevyのWGPUレンダラーはTiny GladeのVulkanレンダラーほど凝ってない。" userName="tormeh" createdAt="2025-03-30T01:22:30" color="#ff5733">}}

{{<matomeQuote body="Rustの熱狂的な人たちって、Rustが他のすべての言語とツールに取って代わると考えてる気がする。こういうことが行われてるのはクールだけど、それが主要なゲームプログラミング言語になることを示すには不十分だよ。特に、他のツールの成熟度と洗練度からするとね。" userName="knowknow" createdAt="2025-03-29T20:17:49" color="">}}

{{<matomeQuote body="Jaiはどうなの？" userName="pandemic_region" createdAt="2025-03-29T19:52:11" color="">}}

{{<matomeQuote body="公開されてるの？" userName="Ygg2" createdAt="2025-03-29T20:05:55" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="いやいや、ベータテスターのインナーサークルはあるけど、一般の人からしたら10年開発してもまだ絵に描いた餅って感じじゃん。" userName="jsheard" createdAt="2025-03-29T20:07:56" color="">}}

{{<matomeQuote body="Jaiで動かせるものって何かあるの？" userName="lawn" createdAt="2025-03-29T20:01:13" color="">}}

{{<matomeQuote body="＞Rustが主要なゲームプログラミング言語になりつつあるね。<br>いや、そうじゃないよ。" userName="heromal" createdAt="2025-03-29T22:11:59" color="">}}

{{<matomeQuote body="ダウン वोटされてるけど、たしかにそうかもね。C++、C#、Lua、GML、Haxe、Swift、Java、Javascriptとかでもいっぱいゲーム作られてるし。ゲームの数で言ったら、Rustは年間トップ10にも入ってないんじゃない？" userName="ecshafer" createdAt="2025-03-29T22:26:50" color="#38d3d3">}}

{{<matomeQuote body="あと、ゲーム業界って結構保守的だから、これらの言語が採用されるまでにも数十年かかったし、プラットフォームのオーナーからのプッシュが必要だったケースも多かったよね。" userName="pjmlp" createdAt="2025-03-30T05:51:17" color="">}}

{{<matomeQuote body="俺のコメントは議論の役に立ってないから、ダウン वोटされるべきだったかも。でも言った通り、Rustはまだ全然影響力ないし、業界がBevyじゃなくて主要な2言語に切り替えるには、メモリ安全だけじゃ無理だと思う。" userName="heromal" createdAt="2025-03-30T16:07:59" color="">}}

{{<matomeQuote body="関連情報。<br>Veloren、オープンソースゲーム、バージョン0.16<br>https://news.ycombinator.com/item?id=39876804<br>– 2024年3月 (17コメント)<br>Velorenの5年間<br>https://news.ycombinator.com/item?id=36259635<br>– 2023年6月 (1コメント)<br>VelorenはRustで書かれたマルチプレイヤーボクセルRPG<br>https://news.ycombinator.com/item?id=33496414<br>– 2022年11月 (4コメント)<br>VelorenはRustで書かれたマルチプレイヤーボクセルRPG<br>https://news.ycombinator.com/item?id=30667022<br>– 2022年3月 (177コメント)<br>Veloren – Rustで書かれたオープンソースMMORPG<br>https://news.ycombinator.com/item?id=26037461<br>– 2021年2月 (143コメント)<br>Veloren: Rustで書かれたオープンワールド、オープンソースマルチプレイヤーボクセルRPG<br>https://news.ycombinator.com/item?id=20347286<br>– 2019年7月 (1コメント)" userName="dang" createdAt="2025-03-30T00:34:25" color="">}}

{{<matomeQuote body="Velorenを数年前にちょっとプレイしたんだけど、めっちゃ進化してて感動したからまたやってみようかな。<br>真面目な質問なんだけど、ボクセルなのにブロックベースなのって何か理由あるの？ボクセル技術が出始めた頃は、めちゃくちゃボクセルがあって、物理演算も得意になって、普通のゲームみたいになると思ってたんだけど。<br>何がボトルネックなの？それとも、これは意図的なデザインなの？ボスとか見てると近づいてる気もするけど、まだ遠い気がする。" userName="ianbutler" createdAt="2025-03-30T02:42:11" color="#38d3d3">}}

{{<matomeQuote body="デザイン的なものじゃない？<br>ボクセルが空間で回転してるのを見ると、それはもう「ボクセル」って感じじゃないんだよね。ただの立方体じゃん。<br>最近は言葉の使い方が大雑把になってるのかも。" userName="JKCalhoun" createdAt="2025-03-30T03:40:16" color="">}}

{{<matomeQuote body="なるほどね。The Finalsみたいな感じを想像してた？でもあれは、破壊できる地形を事前に焼き付けてるのかも。" userName="ianbutler" createdAt="2025-03-30T04:53:47" color="">}}

{{<matomeQuote body="The Finalsの破壊表現はプリベイクじゃないんだね。サーバー側で全部処理して、それをクライアントに伝えてるから一貫性があるんだ。だからCPUに負荷がかかるんだって。" userName="dannersy" createdAt="2025-03-30T08:55:21" color="#785bff">}}

{{<matomeQuote body="へー、それは知らなかった。ちょっと複雑すぎるかなと思ってたけど、確信がなかったんだ。" userName="ianbutler" createdAt="2025-03-30T19:13:09" color="">}}

{{<matomeQuote body="めっちゃわかる。最初にVoxelsを体験したのはCommand and Conquer: Tiberian Sunだったな。あの頃のWestwoodのゲームはユニットとかにvoxel使ってたけど、Minecraftみたいなキューブっぽさを出すつもりはなかったんだよね。ハードとソフトの両方で、物理演算のモデルが今と違ったからだと思う。" userName="belthesar" createdAt="2025-03-31T17:19:19" color="">}}

{{<matomeQuote body="Space Engineers 2とEnshroudedをチェックしてみて。voxelの可能性を広げてるよ。SE2の惑星の水のシミュレーションもすごいことになるらしい。" userName="prox" createdAt="2025-03-30T08:27:50" color="#38d3d3">}}

{{<matomeQuote body="キューブ状じゃないvoxelゲームもたくさんあるよ。Marching cubes algorithmとかまさにそう。Enshroudedっていう、完全に変形可能で採掘可能なワールドのゲームもブロックベースじゃないよ。https://store．steampowered．com/app/1203620/Enshrouded/" userName="tbillington" createdAt="2025-03-30T11:54:00" color="#ff33a1">}}

{{<matomeQuote body="Enshroudedを忘れてた！すごく良い例だ、ありがとう。ってことは、見た目の問題だけなんだね。" userName="ianbutler" createdAt="2025-03-30T19:12:30" color="#ff5733">}}

{{<matomeQuote body="ちょっと変だよね。ブロック状のvoxelの魅力は、建築がしやすいことなのに、これは建築ゲームじゃないし。" userName="vintermann" createdAt="2025-03-30T10:49:03" color="">}}

{{<matomeQuote body="Teardownってゲーム知ってる？" userName="ChickeNES" createdAt="2025-03-30T08:12:19" color="">}}

{{<matomeQuote body="Velorenのめっちゃ初期のバージョンをCube Worldの代替としてプレイしてたの思い出した。今こんなんなってて嬉しい。" userName="99094" createdAt="2025-03-29T20:56:08" color="">}}

{{<matomeQuote body="これはCube Worldっていうゲームのオープンソース版なんだよね。Cube Worldは詐欺みたいなもんで、約束した機能がちょっとしかなくて、何年もアップデートされなかったんだ。" userName="matricaria" createdAt="2025-03-29T19:24:22" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="このプロジェクトは、言ってる通りCube Worldのクローンとして始まったんだよね（CloneWorldって名前も一時期出てたけど定着しなかった）。でも、すぐに方向性が違うってなったんだ。VelorenはCube Worldに見た目は似てるけど（そこまで似てないと思うけど）、完全に独自の方向に向かってるよ。" userName="suavesito" createdAt="2025-03-29T22:43:44" color="#38d3d3">}}

{{<matomeQuote body="これ、ちょっと古い情報かも。Velorenは最初はCube Worldのクローンとして始まったけど、Veloren独自のゲームになるように目標が変わってきてるんだよね。" userName="tormeh" createdAt="2025-03-30T01:59:41" color="">}}

{{<matomeQuote body="だって全部Minecraftのクローンじゃん。" userName="philipwhiuk" createdAt="2025-03-29T21:02:11" color="">}}

{{<matomeQuote body="Minecraftだって元々はDwarf Fortressの要素を取り入れたInfiniminerのクローンとして始まったんだし。インスピレーションの連鎖だね。" userName="zanderwohl" createdAt="2025-03-29T22:44:59" color="">}}

{{<matomeQuote body="2つの違うアイデアを混ぜ合わせるのは、ほぼ間違いなくクローンじゃないよね。" userName="philipwhiuk" createdAt="2025-04-03T10:33:33" color="">}}

{{<matomeQuote body="全然違うよ。見た目の好みは別として、Cube WorldとVelorenはゲームプレイの点ではMinecraftと共通点なんてないよ。" userName="maeln" createdAt="2025-03-29T21:50:54" color="">}}

{{<matomeQuote body="デフォルトのゲームプレイはそうかもね。でも、MinecraftのサーバーにはVelorenみたいなことをやろうとしてるのがあったと思うよ。Minecraftサーバーのミニゲームとかゲームコンセプトの多様性はすごかったからね。" userName="vintermann" createdAt="2025-03-30T10:47:12" color="">}}

{{<matomeQuote body="MinecraftはInfiniminerのクローンで、InfiniminerはMotherloadの3Dクローンで、Motherloadは…" userName="vmg12" createdAt="2025-03-29T22:29:27" color="">}}

{{<matomeQuote body="全部ディグダグに行き着くんだよ…" userName="itishappy" createdAt="2025-03-29T23:36:22" color="">}}

{{<matomeQuote body="Boulderdashってディグダグのコピーなの？" userName="prox" createdAt="2025-03-30T08:42:41" color="">}}

{{<matomeQuote body="マジかよ、その通りだ！" userName="itishappy" createdAt="2025-03-30T14:46:12" color="">}}

{{<matomeQuote body="でも、Cube Worldはクラフトとか採掘ゲームじゃなくて、オープンワールドのZeldaみたいなARPGだったんだよね。ランダム生成の装備で成長していくのがメインで。ボクセルのサイズは小さくて、テクスチャがないから、3D化したピクセル絵みたいな見た目になってる。" userName="rhet0rica" createdAt="2025-03-29T23:30:07" color="#45d325">}}

{{<matomeQuote body="探してる言葉はボクセルゲームかもね。" userName="SkiFire13" createdAt="2025-03-29T22:13:06" color="">}}

{{<matomeQuote body="いや、そうでもないよ。機能リストを見てみて。他のボクセルゲームは作れるけど、このゲームはそうじゃなくて、Minecraftの機能リストそのものなんだ。" userName="philipwhiuk" createdAt="2025-04-03T10:33:07" color="">}}

{{<matomeQuote body="起動するためのいくつかのコツを紹介するね（詳しいわけじゃないけど、これでうまくいったよ）。RustのパッケージをFlatpakとかCOPRじゃなくてインストールする。Waylandを使ってるなら、fractional scalingを無効にする。airshipperをGnomeのアプリグリッドじゃなくてターミナルから起動する（すでにアプリグリッドから起動したことがあるなら、孤立したプロセスがないか確認してkillしてね。CPUを食いつぶしてるみたいだから）。" userName="daemonologist" createdAt="2025-03-30T02:32:09" color="#785bff">}}

{{<matomeQuote body="それってドイツ語で「失われた」って意味の言葉じゃない？ちょっと前に試してみたんだけど、すごく面白そうだったよ。特にバイオームと雷の表現が。" userName="pndy" createdAt="2025-03-29T18:20:23" color="#ff5c5c">}}

{{<matomeQuote body="ドイツ語だと“Verloren”（オランダ語でも同じ）だよ。でも、似てるのは確かだね。" userName="VonTum" createdAt="2025-03-29T18:21:47" color="">}}

{{<matomeQuote body="偶然じゃないよ、その言葉から来てるんだ！" userName="suavesito" createdAt="2025-03-29T21:08:53" color="">}}

{{<matomeQuote body="マジで嫌い。読むたびに「typoだ」って思っちゃう。" userName="hovering_nox" createdAt="2025-03-29T22:10:35" color="">}}

{{<matomeQuote body="確か、あれってマジでtypoなんだよ。誰かが“verloren”をタイプミスして、それがゲームの名前としていいと思ったらしい。名前の由来って、意外と地味だったりするよね。" userName="tormeh" createdAt="2025-03-30T01:20:23" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="最近のゲームのネーミング、マジで嫌いなんだよね。こっちの方が全然いいわ。最近よくあるのは、名詞 形容詞 名詞みたいなパターンじゃん？例えば「Dark Kingdom：Multitude」とかどうよ？" userName="ahartmetz" createdAt="2025-03-30T23:30:12" color="">}}

{{<matomeQuote body="形容詞 名詞 形容詞、だったわ。ゴメン。<br>最初の二つは意味が通じるけど、三つ目でクリエイティブっていうか、ランダムになるんだよね。" userName="ahartmetz" createdAt="2025-03-31T20:53:02" color="">}}

{{<matomeQuote body="マジか、言われるまで「r」が抜けてるの気づかなかったわ。今、めっちゃ共感してる。" userName="spacechild1" createdAt="2025-03-29T23:17:40" color="#ff5733">}}

{{<matomeQuote body="もしかして、このゲームって失われたrを探すクエストなの？" userName="Hikikomori" createdAt="2025-03-29T23:47:22" color="">}}

{{<matomeQuote body="＞“Veloren（/ vɪlɔɹn /、ve-LOR-en、ドイツ語/オランダ語のverloren（‘lost’）から）は、Rust Languageで書かれたオープンワールド、オープンソースのマルチプレイヤーボクセルRPGです。”<br>＞https://wiki.veloren.net/wiki/Main_Page" userName="rzzzt" createdAt="2025-03-29T20:16:04" color="#45d325">}}

{{<matomeQuote body="おかげで仕事が止まったわ！マジ最高！" userName="canadiantim" createdAt="2025-03-30T00:34:22" color="#ff33a1">}}

{{<matomeQuote body="前にSteam Deckで試したとき、ランチャー経由で1年以内だったと思うけど、完全にバグってて遊べなかったんだよね。もし直ってたら、もう一度試してみたいんだけど。" userName="silverliver" createdAt="2025-03-31T06:38:56" color="#38d3d3">}}

{{<matomeQuote body="PS3の3D Dot Game Heroesを思い出すな。" userName="muterad_murilax" createdAt="2025-03-29T19:58:23" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
