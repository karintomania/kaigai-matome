+++
date = '2025-03-27T00:00:00'
months = '2025/03'
draft = false
title = 'Blenderがオスカー受賞バージョンを公開！3D制作の常識が変わる！？'
tags = ["Blender", "3D", "ソフトウェア", "映像制作", "オープンソース"]
featureimage = 'thumbnails/red3.jpg'
+++

> Blenderがオスカー受賞バージョンを公開！3D制作の常識が変わる！？

引用元：[https://news.ycombinator.com/item?id=43489114](https://news.ycombinator.com/item?id=43489114)

{{<matomeQuote body="いつもの賞賛は置いといて、Blenderが3Dをマジで広めたって話だよな。動画とかチュートリアルがめっちゃ見られてるし、興味持つ人も増えた気がする。一部のプロだけじゃなくて、普通の人が使うようになったのがデカい。今じゃ、めっちゃハイエンドなこと以外はBlenderでしょ。マジ、Coca-Colaみたいなブランドになったよね。Blenderって言ったら、3Dのphotoshopみたいなもんじゃん？" userName="EMIRELADERO" createdAt="2025-03-27T03:22:37" color="#ff33a1">}}

{{<matomeQuote body="CG業界に15年いるけど、昔はMayaが当たり前だったんだよ。でも今はBlender。この前、アニメーション勉強してる子に「Maya使ってる？」って聞いたら「なにそれ？」って言われたし。2.8が出てからマジで変わったよね。開発資金が増えて、どんどん良くなって、人も増えて、また良くなるみたいな。これからどうなるか楽しみだわ。" userName="greenknight" createdAt="2025-03-27T04:03:18" color="#785bff">}}

{{<matomeQuote body="ここから学べることは多いよね。人は慣れたものを使いたがるから、最初に触れる機会がないと後で使おうと思わない。会社が小さい時は関係ないけど、No.1になったら新しい人が入ってくる流れを考えないと。Mayaが無料版出してたら、Blenderはここまで早く普及しなかったかもね。" userName="CobrastanJorji" createdAt="2025-03-27T05:52:15" color="#785bff">}}

{{<matomeQuote body="新しい技術で「デモと価格はお問い合わせください」って書いてあると、即却下だわ。新しいプロジェクトで技術選定するときは、一応全部の会社に連絡するけど、「チームの経験」って評価項目があるから、そういう会社は不利なんだよね。相当良くないと選ばれない。" userName="ryanjshaw" createdAt="2025-03-27T08:16:09" color="">}}

{{<matomeQuote body="＞みんなが学んだものを使いたがるから、学べないソフトは使わないってこと。<br>MicrosoftがWindowsの海賊版を放置した理由もそれ。サーバーでWindowsが勝てなかった理由も同じ。PostgresがOracleより劣るのに勝てた理由もそう。CUDAがデファクトスタンダードな理由も、SaaSが無料プランを用意する理由も全部同じ。" userName="baq" createdAt="2025-03-27T07:00:53" color="#ff5733">}}

{{<matomeQuote body="いや、それは違うと思うな。いろんな要素があるし、間違ってる例もある。Postgresが勝ったのは、値段と機能のバランスが良かったから。学習コストだけならMySQL/MariaDBが勝ってたはず。CUDAだって、みんなが知ってるからじゃなくて、CUDAでしか動かないソフトがたくさんあるからでしょ。CUDAのことなんて知らない人もNvidiaのカード買ってるよ。" userName="thyristan" createdAt="2025-03-27T08:29:33" color="">}}

{{<matomeQuote body="いやいや、言ってること同じじゃん。MySQLとPostgresの話は、どっちも無料で十分使えるものだったから、開発者が有料のやつに乗り換える理由がなかったってこと。CUDAもそうでしょ？ソフトウェアがあるから人気が出たんでしょ？結局はそれだよ。無料の製品が進化して、GPGPUの開発者がそれしか知らなくなったってこと。" userName="baq" createdAt="2025-03-27T08:39:54" color="#ff5c5c">}}

{{<matomeQuote body="MySQLはPostgresよりシスアドに優しいんだよ。Postgresが勝ったのはOracleからの移行が楽だったから。" userName="sam_lowry_" createdAt="2025-03-27T10:12:28" color="">}}

{{<matomeQuote body="マジな質問なんだけど、なんでMySQLの方がシスアドに優しいの？" userName="carlos_rpn" createdAt="2025-03-27T11:17:52" color="">}}

{{<matomeQuote body="MySQLの方がデプロイが楽だし、高可用性の歴史も長いから。予測しやすいしね。クエリ最適化も賢すぎないから、クエリが悪いとデータが増えるほど悪くなる。Postgresはデータ量で挙動が変わるから、本番環境でしか再現しない問題が起きたりする。あと、MySQLはアップデートも簡単。Postgresはバージョンを並べてデータ移行しないといけないからDockerだと面倒。あと、vacuumingとか。" userName="asyx" createdAt="2025-03-27T18:37:45" color="#38d3d3">}}

{{<matomeQuote body="本題だけど、最近話題になってるこの素晴らしいビデオエッセイ[1]、めっちゃおすすめだよ。 1: ”For-Profit (Creative) Software” by EndVertex https://youtu.be/I4mdMMu-3fc" userName="tobr" createdAt="2025-03-27T06:24:51" color="">}}

{{<matomeQuote body="これ、マジで薄っぺらいエッセイだと思うわ。作者、分析力ゼロだし、自己反省もできないし、自分の行動の一歩先すら考えられてないんじゃない？<br>ビデオの冒頭から、ソフトが高すぎると文句言ってるくせに、大学でめっちゃ勉強したとか言ってるし(高いの知ってて)。で、なぜか楽器を取り上げられたとか言ってるし(条件は最初から分かってたのに)。<br>しかも、大学卒業後、高いソフトを勉強したのが大間違いだったと分かったら、何してるかって？教え始めてるじゃん！被害者（怪しいけど）から問題の一部にジョブチェンジしてるよね。" userName="Ray20" createdAt="2025-03-27T11:57:35" color="">}}

{{<matomeQuote body="KiCadが電子産業に食い込んでる理由の一つもこれだよね。9割の企業が必要なこと全部できるし、趣味でやる人も手頃な値段で学んで試せるし。" userName="_fizz_buzz_" createdAt="2025-03-27T06:59:57" color="#ff5c5c">}}

{{<matomeQuote body="Autodeskも時々やってたよね。学生なら今でも無料でMaya使えるし、インディーゲーム開発者向けの格安版もあったはず。でも、何かしらの条件がついてたけど。<br>Mayaが廃れたのって、Blenderのせいだけじゃなくて、Autodeskがまず商業3Dソフトで独占状態になって、既存ユーザーへのサブスクリプションを締め付けたのが原因だと思う。もちろん、移行できる無料の選択肢があったから、その戦略は通用しなかったんだよね。" userName="flohofwoe" createdAt="2025-03-27T10:15:26" color="#ff33a1">}}

{{<matomeQuote body="教育版とインディー版はどっちもフルバージョンだよ。教育版は1年間のライセンスで、再ライセンスできる回数も決まってる。インディー版は収入制限だけで、ライセンシー（スタジオか個人）の収入が年間10万USD以下なら使える。ファイル形式が少し違うかも。" userName="sbuk" createdAt="2025-03-27T17:00:23" color="">}}

{{<matomeQuote body="多くの企業が教育機関向けに大幅な割引を提供してるのは、大学生に無料で使わせて中毒にさせるためなんだよね。" userName="stevage" createdAt="2025-03-27T07:14:18" color="">}}

{{<matomeQuote body="＞もしMayaに無料版があったら、Blenderは今ほど早く普及したかな？絶対ないと思うわ。<br>Mayaの成功も、学生向けの格安ライセンスが大きかったよね。確か100ドルくらいだったはず。プロ版は1000ドル近くしたのに。" userName="swiftcoder" createdAt="2025-03-27T08:23:54" color="#45d325">}}

{{<matomeQuote body="Adobeみたいに、毎年ソフトを改悪しても、みんな使わざるを得ないってケースもあるけどね。" userName="noduerme" createdAt="2025-03-27T07:54:10" color="">}}

{{<matomeQuote body="SketchとかFigmaがAdobeのシェアをかなり奪った気がするなー。<br>20年前はデザイナーみんなPhotoshop、Flash、Fireworks使ってたし、大学でも教えられてた。私が一緒に働いてるデザイナーにもそういう人がいる。今は誰も使ってないけど。<br>XDもあるけど、Adobeは完全に後追いだよね。使ってる人一人しか見たことないし、その人もFigmaに移行するところだった。<br>同僚（デザイナー含む）がPhotoshopの代わりにPhotopea使ってるの見るのも面白い。" userName="whstl" createdAt="2025-03-27T08:00:02" color="#ff33a1">}}

{{<matomeQuote body="Sketchはアメリカとか、一部のMacユーザーが多い地域でしか使われてないよ。<br>注目すべきはFigmaだね。だからAdobeも買収しようとしたんでしょ。" userName="pjmlp" createdAt="2025-03-27T09:07:16" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Sketchも人気なくなった気がするなー。12年前はどこでも使われてたのに。Figmaに取って代わられて、最近全然聞かないし。フロントエンドのエンジニアとして、いろんなデザイナーと仕事してきたけど。" userName="brulard" createdAt="2025-03-27T09:20:41" color="">}}

{{<matomeQuote body="アメリカでは働いたことないけど、Sketchはヨーロッパとラテンアメリカではめっちゃ使われてたよ。Microsoftと仕事してる会社（僕がいた会社いくつか）が、SketchのためだけにMac買ってたぐらい。Figmaが出てきて一瞬で変わったけどね。" userName="whstl" createdAt="2025-03-27T09:45:10" color="#ff5733">}}

{{<matomeQuote body="南ヨーロッパとラテンアメリカでMac買うって、お金持ちだったんだね。だって、その辺はアメリカみたいに開発者が稼げる地域じゃないし。ポルトガルだと、Macは給料2か月分くらい。最低賃金が800ユーロで、ITのトップでも税引き後1500ユーロくらい。Mac持ってる人は、クレジットか携帯会社とのセットで買ってるのがほとんどだよ。" userName="pjmlp" createdAt="2025-03-27T11:33:08" color="">}}

{{<matomeQuote body="それは、古いデザイナーが新しいことを学びたくないからじゃない？" userName="worthless-trash" createdAt="2025-03-27T07:59:37" color="">}}

{{<matomeQuote body="いや、それが理由じゃないよ。印刷業界は今でもAdobe一択だし。" userName="noduerme" createdAt="2025-03-27T08:26:21" color="">}}

{{<matomeQuote body="Microsoftが2000年代初頭から10年代にかけて、存在感を維持するのに苦労したのも同じだよね。Windowsで開発するには、VSのライセンスとドキュメントに何千ドルも払わなきゃいけなかったし。" userName="omcnoe" createdAt="2025-03-27T07:23:52" color="">}}

{{<matomeQuote body="2004年の記事だけど、＞でも開発ツールは無料で配りたかったんだって。Empower ISVプログラムを使えば、MSDN Universal（Flight Simulator以外のMicrosoft製品全部入り）が5セットで375ドルくらいで買えた。”.NET言語のコマンドラインコンパイラは無料の.NET runtimeに付属してるし、C++コンパイラも無料になった。" userName="thaumasiotes" createdAt="2025-03-27T08:01:52" color="">}}

{{<matomeQuote body="大学で勉強してた頃、Mayaの話を聞いたなー。めっちゃ高くて、業界の人じゃないと手に入らなかった。Blenderのおかげで、3Dモデリングとアニメーションがすごく身近になったよね。" userName="xmprt" createdAt="2025-03-27T05:07:07" color="#ff33a1">}}

{{<matomeQuote body="Cinema4Dのことは誰も語らないの？僕はプロじゃないけど、90年代から使ってるよ（Strata 3DとかInfini-DとかRenderManとかPlaymationとか）。モーショングラフィックスのプロジェクトでアーティストとして手伝ったこともあるし。Cinema4Dが一番使いやすいんだよね。MaxonはUIが快適なんだよなー。Blenderは難しそう。" userName="noduerme" createdAt="2025-03-27T07:52:27" color="#45d325">}}

{{<matomeQuote body="AutodeskはMaya以外にも色々やってるよね。Blenderの影響で利益が大きく変わると思う？もしそうなら、いつ頃？Blenderに対抗して開発を加速させたりしてるのかな？" userName="Vespasian" createdAt="2025-03-27T05:21:01" color="">}}

{{<matomeQuote body="今のリードがどれだけ大きくても、Autodesk（と次のAdobe）は、OSSが十分な時間があれば常に勝つ理由のケーススタディだよね。OSSは慢性的な病気に苦しむけど、商用ソフト開発を苦しめる致命的な病気にはかかりにくいから。OSSの開発体制は、商用ソリューションに何十年も遅れをとるけど、市場が不調で誰かが政府系ファンドに買収されてプロジェクトを潰しても、GIMPを最初から書き直す必要はないんだよね。GIMPとかFreeCADが今はイマイチだけど、誰かが50年後もそれらのトーチを掲げてるはず。次の50年で、AdobeとAutodeskは消滅するか、レガシーなクライアントだけ相手にする会社になる可能性が高い。その時、ツールを構築した才能や経験は無に帰すけど、GIMPはGTK4ポートのリリース候補を出してるよ。" userName="mistercheph" createdAt="2025-03-27T06:10:48" color="#ff33a1">}}

{{<matomeQuote body="＞GIMPを最初から書き直す必要はないって言うけど<br>マジでそうするべきだと思う。<br>今のトレンドだと、GIMPとかPhotoshopの代わりはPixlrとかPhotopeaみたいなウェブアプリになるんじゃないかな。" userName="Shorel" createdAt="2025-03-27T07:13:43" color="">}}

{{<matomeQuote body="＞より優れたFOSSの競合が現れる可能性もあるよね<br>GIMPはマジでクソ。個人的な経験から言うとね。ワークフローは破壊的だし、レイヤーの使い勝手が悪いところが多すぎる。パフォーマンスも悪い。例えば、テキストを回転させると、ぼやけたピクセルになる。もう一回回転させると、もっとぼやける。テキストを変えたい？最初からやり直しだよ。基本的なことなのに、マジでひどい。根本的な見直しはされないと思う。なぜなら、多くのユーザーが今のワークフローに慣れてて、嫌がるから。他のプロジェクトから競争が生まれると思う。OSSの耐久性が高いってのは同意。" userName="Voultapher" createdAt="2025-03-27T08:43:43" color="">}}

{{<matomeQuote body="Autodeskをすぐに見限るのは違うと思うな。最近3Dプリンティングを始めたんだけど、FusionはOSSの製品よりはるかに優れてるし、無料のプランも充実してる。OSSの開発者とCADチームの間には接点がないから、コラボレーション機能が進まないと思う。それを実現するための臨界点がないんだよね。" userName="baq" createdAt="2025-03-27T07:04:34" color="">}}

{{<matomeQuote body="ここ数年で、オープンソースのCADはすごく良くなってるよ。FreeCADを使えば、簡単なパーツならモデリングできるし、ちゃんと動く。昔はそうじゃなかった。KiCADも昔はバグだらけだったし、Blenderもそうだったよね。" userName="leoedin" createdAt="2025-03-27T07:44:59" color="">}}

{{<matomeQuote body="なんで写真関係のソフトで、商用レベルのOSSがないんだろう？GIMPくらいしか思いつかないけど、商用ソフトには全然及ばないよね。" userName="whatever1" createdAt="2025-03-27T06:25:31" color="">}}

{{<matomeQuote body="Lightroomの代わりにDarktableがあるよ。数年前に調べた時、Darktableを使ってる友達は、俺がLightroomでやってるのと同じ結果を同じくらいの労力で出せてた。でも俺が試した時は、再学習するのが大変で、Appleにお金を払い続ける方が安かった。今はAI機能でも遅れてると思う。" userName="lrem" createdAt="2025-03-27T06:38:39" color="">}}

{{<matomeQuote body="DarktableはUXがめちゃくちゃ。原因は、マネジメント不足とか、方向性の欠如とか、プロジェクトをすぐ辞めちゃう趣味プログラマーとか。フォークして修正しようとしてる人もいるよ（https://ansel.photos/）。" userName="omnimus" createdAt="2025-03-27T08:38:12" color="">}}

{{<matomeQuote body="何が問題なの？" userName="makeworld" createdAt="2025-03-27T12:18:08" color="">}}

{{<matomeQuote body="AdobeはCS6までは海賊版を気にしなかったんだよね。俺が学生の頃は、メディアに興味がある奴はkeygenを持っててPhotoshopを学んだし、海賊版を使って小規模なビジネスを始めた人もいた。お金が貯まったら正規品を買ってたけどね。写真、ビデオ、オーディオの開発はマジで大変。数学がたくさん必要だから。その手の魔法ができる人は限られてるし、OSSでできる人はもっと少ない。他のFOSSプロジェクトも人材を求めてるし。" userName="mschuster91" createdAt="2025-03-27T07:59:21" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Blenderに貢献したことはないけど、クレジットで「made with Blender」って表示されてるのを見たとき、なんか誇らしかったな。BlenderはFLOSS運動の宝だし、他のプロジェクトも見習うべき歴史と行動があるよね。今後の成功も楽しみにしてるよ。" userName="marcodiego" createdAt="2025-03-27T00:57:24" color="#785bff">}}

{{<matomeQuote body="みんながBlenderのUXがマジでクソだって言ってた頃に使ってたの覚えてるわ。それが今じゃ、多くのアーティストにとってデフォルトになったんだからすごいよね。オープンソースってのもあるけど、競合製品が似たようなものでもマジありえないくらい高い金額を取ってるのもデカいよね。" userName="keyle" createdAt="2025-03-27T01:16:36" color="#ff5c5c">}}

{{<matomeQuote body="＞みんながBlenderのUXがマジでクソだって言ってた頃に使ってたの覚えてるわ<br>それマジで覚えてるわ。でも、Blenderのやり方に慣れたら、当時の他の3Dソフトよりいろんな意味で優れてるって分かったんだよね。ワークフローが違いすぎて、多くの人が慣れなかったんだよな。数バージョン後、Blenderは素晴らしいところはそのままに、慣れなかった人にも合うように改善したんだよね。よくある「全部ぶっ壊して作り直す」みたいなことせずに、ずっと改善し続けてるのがすごい。" userName="blooalien" createdAt="2025-03-27T03:14:28" color="#785bff">}}

{{<matomeQuote body="古参ユーザーを怒らせずに改善するリデザインって、プロジェクトにとってマジで一番難しいことだと思う。FAANG企業ですら失敗してるのを見てるから、オープンソースプロジェクトがそれをやってのけたのが10倍すごい。" userName="whstl" createdAt="2025-03-27T08:15:40" color="#ff5733">}}

{{<matomeQuote body="2006年によく使ってたけど、UXの学習曲線はマジで壁だった。でも、乗り越えたら、スペースシャトルのコックピットみたいな見た目だったけど、当時から結構直感的だった。" userName="danielbln" createdAt="2025-03-27T11:38:32" color="#ff5c5c">}}

{{<matomeQuote body="UXと数学的な面で、常に限界に挑戦してるよね。何がコミュニティをこんなに活気に満ちたものにしてるのか分からんけど、書き留めておく価値はあると思う。" userName="agumonkey" createdAt="2025-03-27T02:41:57" color="#ff5c5c">}}

{{<matomeQuote body="＞何がコミュニティをこんなに活気に満ちたものにしてるのか分からんけど、書き留めておく価値はあると思う<br>俺が覚えてるのは、Mayaと3DS Maxの値上げ後、業界からの大規模な支援とスポンサーシップを得たんだよね。" userName="throwup238" createdAt="2025-03-27T02:46:17" color="">}}

{{<matomeQuote body="完璧には程遠いけど、昔とは比べ物にならないくらい良くなったよね。まだいくつか気になる点はあるけど。サイドツールパネルとサイドバープロパティパネルの違いは、初心者には混乱するかも。「Texture painting」も改善が必要だけど、使えるレベルにはなってる。Blender 4はBlender 2とは全くの別物だよ。Grease pencilはマジで画期的。Sculptingもね。Blender（とKrita）があれば他には何も要らないかも。3DSMaxからBlenderに乗り換えたけど、もう戻ることはないな。Rigifyはまだたくさんのシェイプを作るけど、ワンクリックでリギングできるようになった。ウェイトを修正したり、リグの細かい部分を調整する必要はほとんどない。" userName="reactordev" createdAt="2025-03-27T01:52:08" color="#ff5733">}}

{{<matomeQuote body="Blenderは元々プロプライエタリで、最終的に購入されてGPLでリリースされたんだよね。他のクリエイティブツールでも同じような解決策があるのかな？クロスプラットフォームに対応したプロプライエタリソフトウェアを購入して、ライセンスを変更するとか。" userName="mattl" createdAt="2025-03-27T02:27:42" color="">}}

{{<matomeQuote body="OpenOfficeも歴史的にそうだったね。" userName="schoen" createdAt="2025-03-27T02:28:25" color="">}}

{{<matomeQuote body="3D編集ソフトのUXってどこもイマイチなんだよねー。これってBlenderに限った話じゃないと思うんだけど！" userName="shadowgovt" createdAt="2025-03-27T01:23:34" color="">}}

{{<matomeQuote body="いやいや、それは違うでしょ。ソフトによって得意なインターフェースがあるのは確かだけど、Houdini、Maya、Softimage XSIはどれも素晴らしいインターフェースだったよ。他のUIと比較する時のベンチマークにすべきだと思う。マジで。" userName="CyberDildonics" createdAt="2025-03-27T02:00:57" color="#ff33a1">}}

{{<matomeQuote body="素晴らしいとまでは言えないかなー。まあまあ使えるって感じ？無料の選択肢よりはマシだったけど。改善の余地はめっちゃあるけど、UIを完璧にするのが難しいのは確かだよね。<br>今は音楽制作業界でいうところの「スキューモーフィズム」の段階なんだと思う（みんな現実のツールを真似してるだけ）。Maya、Blenderとかは別として、過去のツールをベースにちょっと磨きをかけてるだけ。そのうちLogicみたいなのが出てきて悪い習慣が変わるかもね！" userName="nonchalantsui" createdAt="2025-03-27T02:50:07" color="">}}

{{<matomeQuote body="それはない。クリエイティブツール全般の問題だよ（そして面白い問題でもある！）。みんなに合うようなクリエイティブなワークフローを一つのUIに押し込むのは無理があるんだよね。" userName="SunlitCat" createdAt="2025-03-27T03:34:00" color="">}}

{{<matomeQuote body="いや、それって漠然としてて適当なこと言ってるだけじゃない？Maya、XSI、Nuke、Houdiniとか使ったことある？" userName="CyberDildonics" createdAt="2025-03-27T05:25:54" color="">}}

{{<matomeQuote body="Blenderは成功したのに、Gimpが失敗したのはなぜ？Blenderにはセンスのある英雄的な人がいるの？" userName="philsnow" createdAt="2025-03-27T05:35:14" color="">}}

{{<matomeQuote body="Gimpは昔からやり方を変えようとしなかったから、一部のマニアしか使わないんだよ。UIが複雑すぎるとか、使いにくいとか、直感的じゃないとか、ずーっと言われてるのに無視。<br>最近3.0が出たけど、UIはほとんど変わってなかった。「GEGL operation」みたいなのがメニューのど真ん中にあったりするし。<br>Blenderは2.8でUIを全部作り直して、その後も改良を重ねてる。古参ユーザーからは不満も出たけど、最終的には成功したよね。" userName="M4v3R" createdAt="2025-03-27T06:24:53" color="#ff5733">}}

{{<matomeQuote body="＞People have complained for years that their UI is too complicated<br>それってむしろ特徴なんじゃないの？" userName="dncornholio" createdAt="2025-03-27T08:35:04" color="">}}

{{<matomeQuote body="違うよ。使いにくいツールは淘汰されるんだよ。ちょっと写真を編集したり、簡単なイラストを描きたいだけなのに、何時間もかけてアプリの使い方を学ぶ人なんていないでしょ。ほとんどの人はUXが良くて使いやすいツールを選ぶよ。" userName="M4v3R" createdAt="2025-03-27T09:36:54" color="#ff5c5c">}}

{{<matomeQuote body="Blenderがパイメニューを採用したのに対して、Gimpは無視したのが良い例だよね。Gimpの開発チームは外部の意見を聞き入れないし、他のツールのユーザーが機能のリクエストをすると、意地になって拒否するんだよね。本当に悲しい。<br>Gimpはもっと良くなるはずだったのに、ユーザーのニーズを無視したせいでこうなった。Blenderはユーザーの意見を聞いてUIを改善したのにね。<br>Tonは英雄的でセンスの塊だよ！コミュニティから愛されてる！（Autodeskからは嫌われてるけど。）<br>動画のURLがたくさん貼ってあるね" userName="DonHopkins" createdAt="2025-03-27T08:58:15" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Blenderはパイメニューを取り入れたけど、Gimpは無視したんだよね。反射的な反発…“インターネットで誰かが間違っている”ってやつだ！ちょっと散歩して考えたんだけど、パイメニューって何？俺の直感的な考えでは、Gimpは最初からパイメニューがあったはず。少なくとも90年代後半の1.somethingを使ってた頃から。メニュー項目が必要なら右クリック。そこにメニューがあるじゃん。これってパイメニューと位相的に同じじゃない？パイメニューは放射状である必要ある？放射状ってリストより良いの？リストの方が読みやすいけどな。" userName="somat" createdAt="2025-03-27T11:58:45" color="">}}

{{<matomeQuote body="主要なオープンソースのグラフィックプロジェクトは3つあったよね。<br>・Gimp（2Dラスタ）<br>・Inkscape（2Dベクタ）<br>・Blender（3D）<br>10～20年前はどれも強力だったけど、UIがイマイチだった。Blenderは数年前にUIを刷新して全てを変えた。Inkscapeも正しい方向に進んでいるようだけど、まだ使いにくい（少なくとも初心者には）。Gimpの動きが一番遅いみたい。" userName="brulard" createdAt="2025-03-27T09:35:34" color="">}}

{{<matomeQuote body="UIに関するフィードバックを真剣に受け止めたのが大きかったんじゃないかな。" userName="preciousoo" createdAt="2025-03-27T05:41:51" color="">}}

{{<matomeQuote body="fund.blender.orgのクレジットセクションに答えがあると思う。2019年頃から100万ドル規模の貢献や企業ユーザーからのフィードバックが流れ込んできたんだ。" userName="numpad0" createdAt="2025-03-27T07:06:15" color="#ff5c5c">}}

{{<matomeQuote body="他のオープンソースの人たちやプログラマーが、UI/UXをどう改善したのかを知るための場所ってあるのかな？" userName="tonetegeatinst" createdAt="2025-03-27T01:19:58" color="">}}

{{<matomeQuote body="あんまり意地悪くは言いたくないけど、Blenderチームは長年にわたってUIを改善するために努力してきたよね。でも長年のカジュアルユーザー（1.7から年に1、2回マイナープロジェクト）としては、BlenderのUIは常に優れていて、プロのUIって感じだった。使いにくいっていう評判があったけど。“UIを大幅に変更して使いやすくした”っていうのは、業界が追いつくのを待って、ダークモードを追加して、“UIを使いやすくした”っていうプレスリリースを大々的に発表して、みんなに信じ込ませたって感じかな。UIの主な“改善点”は、動作を遅くして、ホットキー地獄を緩和するために古典的なメニューシステムを追加したことだと思う。BlenderのUIを一言で言うなら“101ボタンマウス”って感じかな。超速くて細かい制御ができるけど、学習曲線が急すぎる。" userName="somat" createdAt="2025-03-27T01:37:26" color="">}}

{{<matomeQuote body="それってBlender UIの足を引っ張ってた考え方と似てる気がするな。undo機能の導入に真剣に反対してた人たちもいたし。UIストックホルム症候群ってやつだね。2.8のUI刷新は“ダークテーマを適用した”だけじゃない。数百個のランダムに配置された小さなアイコンとドキュメント化されていないホットキーのごちゃ混ぜだったUIを、発見しやすくて、いくらか馴染みのあるインターフェースに変えたんだ。少なくともUI刷新を完了させたんだ。改善点の多くは以前のバージョンで段階的に導入されてた。UIがどう遅くなったの？" userName="jampekka" createdAt="2025-03-27T09:20:36" color="">}}

{{<matomeQuote body="Blenderはまだ数百個の半ランダムなボタンとオプションのごちゃ混ぜだよ。それこそがプロフェッショナルUIの核となる機能なんだ。ツールを長時間操作するユーザー向けにカスタマイズするには、摩擦を減らして、操作を平坦化して、すべてのものを前面に出して、1回の操作でアクセスできるようにすることが最も重要なんだ。見た目は悪くて、とっつきにくくて、習得が難しくて、デザイナーが泣くけど、非常に高速で効率的。毎日何時間も使うならまさに最適なんだ。＞Is this https://www.reddit.com/r/BlenderDoughnuts/comments/1jdv2mq/r... really that much cleaner than this https://www.reddit.com/r/BlenderDoughnuts/comments/hwes95/th...＜br>ごめんね、redditだけど、実際に動作するUIのショットで最高の例だったんだ。カジュアルユーザー向けにインターフェースをカスタマイズする場合は、逆のことをする。動作を遅くして、オプションを減らして、メニューをネストして、モデルダイアログを導入する。3、4回の操作が必要になる。重要なのは、不慣れなユーザーを優しく導くこと。これは重要な設計上の考慮事項だけど、長時間操作するとイライラするんだ。" userName="somat" createdAt="2025-03-27T13:07:09" color="">}}

{{<matomeQuote body="GIMPもBlenderを見習ってほしいよ。GIMP 3.0のリリースは本当にがっかりだった（しかも使えない…ブラシの種類を切り替えるとクラッシュする）。" userName="kstenerud" createdAt="2025-03-27T04:40:41" color="">}}

{{<matomeQuote body="アートやるなら、Kritaの方が期待に近いかもね。これもFOSSプロジェクトだけど、何でもやろうとするんじゃなくて、ペイントとかアートに特化してるんだ。" userName="StableAlkyne" createdAt="2025-03-27T05:04:50" color="#45d325">}}

{{<matomeQuote body="＞変わったって言うけど<br>結局、不満点はいつもと同じじゃん。期待値が上がったんだよ！多分、それが見えてるんじゃないかな。" userName="nukem222" createdAt="2025-03-27T01:42:02" color="">}}

{{<matomeQuote body="いやいや、昔のBlenderのインターフェースは今のと比べたらマジで別物だよ。文句言うやつはBlender 2（最初に触ったバージョンだと思う）を一日強制的に使わせるべき。" userName="LennyHenrysNuts" createdAt="2025-03-27T01:43:47" color="">}}

{{<matomeQuote body="ほんとそれ、Blenderはマジですごい。" userName="toblaroni" createdAt="2025-03-27T01:02:26" color="">}}

{{<matomeQuote body="Blenderはマジですごいし、Gimpとか他のFOSSエディタより遥かに先を行ってるよね。ただ、今の3Dソフト（Blender、Unrealとか）は、もうすぐ何か新しいものに取って代わられる気がするんだよね。3D AIの進化がマジでヤバい。スカルプトとかリトポとかリギングとか、誰も気にしなくて良くなる日が来るんじゃないかな。AIネイティブなツールが出てきて、アーティスト向けのツールになると思う。週末はBlender、ComfyUI、自作ソフトでショートフィルム作ってるけど、AIが重労働を肩代わりしてくれるから、生産性が10倍になったよ。" userName="echelon" createdAt="2025-03-27T01:52:28" color="#ff5c5c">}}

{{<matomeQuote body="3D AIの最先端って何？去年調べた時は、使えるレベルのものが全然なかったんだけど（ポリゴン数が制御できなかったり、リギングがグチャグチャだったり）。" userName="telchior" createdAt="2025-03-27T05:21:29" color="">}}

{{<matomeQuote body="最高のOSSソフトってBlender、Ghidra、Linuxのどれ？" userName="brcmthrowaway" createdAt="2025-03-27T01:02:27" color="">}}

{{<matomeQuote body="Linuxは素晴らしいけど、元々はUnixのクローンだし、人気が出たのは有料だったものを無料で使えるようにしたからってのが大きいよね。BlenderとGhidraはゼロから作られて、それぞれの分野でトップレベルだし、Linuxよりもコミュニティの誇りを感じるな。最高のOSSソフトはEmacsだけどね！" userName="ants_everywhere" createdAt="2025-03-27T01:42:28" color="#38d3d3">}}

{{<matomeQuote body="どれか選ぶとしたらLinuxかな。ツールがいっぱい作られてるし、エコシステムがすごいもん。" userName="kadoban" createdAt="2025-03-27T01:14:32" color="">}}

{{<matomeQuote body="質問に答えるならgitじゃない？" userName="babuloseo" createdAt="2025-03-27T01:04:24" color="">}}

{{<matomeQuote body="Blender 4.4は安定性重視なんだってさ。「Winter of Quality」っていう開発チームの取り組みで、2024年から2025年の北半球の冬に品質と安定性をめっちゃ向上させたらしいよ。「Winter of Quality」って名前なのに、ちゃんと時期を「2024–2025 northern hemisphere winter」って指定してるのがマジですごいね。" userName="chrismorgan" createdAt="2025-03-27T02:03:35" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
