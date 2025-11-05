+++
date = '2025-10-29T00:00:00'
months = '2025/10'
draft = false
title = 'Minecraft Java版、難読化を撤廃へ！mod開発はどうなる？'
tags = ["Minecraft", "Java", "Mod開発", "リバースエンジニアリング", "プログラミング"]
featureimage = 'thumbnails/purple2.jpg'
+++

> Minecraft Java版、難読化を撤廃へ！mod開発はどうなる？

引用元：[https://news.ycombinator.com/item?id=45748879](https://news.ycombinator.com/item?id=45748879)




{{<matomeQuote body="Minecraftのmodコミュニティが、難読化されたJavaバイナリからデコンパイルして、ツールを使って難読化解除・再難読化を10年以上もやってたなんて驚きだよ！すごい献身だよね。" userName="NelsonMinar" createdAt="2025/10/29 18:28:48" color="#ff33a1">}}




{{<matomeQuote body="ソフトウェアを改造するのにソースコードは不要っていうことの証明だね。Javaはデコンパイルしやすいし、個人的には大規模コードベースで「オブジェクト指向難読化」されてるのが一番の理解の障害だと思うわ。" userName="userbinator" createdAt="2025/10/29 19:31:37" color="#45d325">}}




{{<matomeQuote body="オブジェクト指向難読化は初耳だわ。OOへの憎しみは理解できないけど、問題領域によるよね。グラフィックフレームワークなんてサブタイピングなしじゃ作れないよ。従業員とか契約者みたいなOOのひどい例が、OOは役に立たないって思わせる原因だと思う。HR記録はOOに一番不向きだわ。" userName="abraae" createdAt="2025/10/29 21:01:11" color="#ff33a1">}}




{{<matomeQuote body="2000年代の「エンタープライズ」JavaのDAOやFactoryの地獄は、言語設計のせいだった。ほとんどのコードベースは動的にロードされるインターフェースなんていらないのに、みんなそう書いてたからな。あのひどい経験のせいで、Javaの仕事は避けるようになったよ。OOPは好きだけど、機能のカプセル化として使うだけでインターフェースは全然使わないね。" userName="mywittyname" createdAt="2025/10/29 22:24:13" color="#ff5733">}}




{{<matomeQuote body="公平に言うと、2019年からはMojangがコミュニティが作ったマッピングの代わりに公式のマッピングを提供してるんだよね。" userName="ZeWaka" createdAt="2025/10/29 19:36:17" color="#ff5c5c">}}




{{<matomeQuote body="私もそうだよ。ゲームに詳しくないから、modは公式プラグインシステムを使ってると思ってた。Minecraft modder（多分、子供やティーン？）がリバースエンジニアリングして、さらにProguardを回避するエコシステムまで作ってたなんて知らなかったわ。" userName="krackers" createdAt="2025/10/29 18:45:19" color="#785bff">}}




{{<matomeQuote body="チームのシニアが問題領域に関係なくOOPを使いまくるから、OOP嫌いになりそう。良い抽象化になることもあるけど、そうじゃないところも多いんだよな。OOP嫌いの多くは、俺が今経験してるような、ステートレスであるべき計算にステートフルなオブジェクトを使ったり、ゲッターの裏に隠された分かりにくいメソッドの塊にうんざりしてるんだろうな。" userName="pavo-etc" createdAt="2025/10/29 21:13:11" color="#38d3d3">}}




{{<matomeQuote body="Minecraftのmodがいつも怪しいダウンロードサイトから配布されてて、Windows EXEインストーラーが付いてくることも珍しくないから怖いんだよね。ゲームにはサンドボックスが全然ない（冗談じゃなく）から、一度インストールされたらmodはPCにフルアクセスできちゃうんだろ？" userName="1313ed01" createdAt="2025/10/29 19:00:07" color="#45d325">}}




{{<matomeQuote body="マッピングを提供してくれるなら、なんで難読化するんだろうね？" userName="zachrip" createdAt="2025/10/29 22:10:06" color="#ff5733">}}




{{<matomeQuote body="ProGuardは難読化しながら最適化もできるんだ。JVMが進化すれば、そのうちほとんどの最適化をJVM自身がやるようになるだろうけど、今はコードサイズと起動時間を助けてくれるよ。JVMがもっと良くなって、みんなファイルサイズを気にしなくなれば、これはだんだん重要じゃなくなると思うな。" userName="singron" createdAt="2025/10/29 22:28:40" color="#ff5733">}}




{{<matomeQuote body="最適化だけして、難読化しない方法はないのかな？きっと、クラス名やメソッド名をいじらずに最適化できるはずだよね？" userName="mort96" createdAt="2025/10/29 23:08:16" color="">}}




{{<matomeQuote body="動的にロードされるオブジェクトは共有ライブラリの核だし、コードの再利用や更新をコンパイルなしでできるのは超便利だよ。インターフェースもテストやモックにめちゃくちゃ重要で、これがなきゃ品質の高いソフトウェアは作れない。君がそのメリットを経験してないだけかもしれないね。" userName="locknitpicker" createdAt="2025/10/30 04:59:34" color="#ff5733">}}




{{<matomeQuote body="ProGuardが提供する最大の最適化の一つは、名前を難読化することでクラスのサイズを縮めることなんだ。どうせ難読化するなら、名前が長い必要はないもんね。「hn$z」って、「tld.organization.product.domain.concern.ClassName」よりずっと小さいからね。" userName="the_hoser" createdAt="2025/10/29 23:53:37" color="#ff5733">}}




{{<matomeQuote body="OOが嫌われるのは、学術界や一部の企業が宗教みたいに教えて、抽象化を絶対視させたせいだと思う。多くの開発者はひどいコードを書かされたんだ。OOが常に正しいわけじゃないって、だんだん世間も気づいてきたよね。OOが合う時もあれば、そうじゃない時もあるんだよ。" userName="devjab" createdAt="2025/10/29 23:07:56" color="#ff33a1">}}




{{<matomeQuote body="どんな言語でもクソコードは書けるから、Javaだけの話じゃないよ。全体的にJavaはかなり良いと思うな、特に大きなコードベースにはね。" userName="Romario77" createdAt="2025/10/29 22:28:46" color="">}}




{{<matomeQuote body="Mojangマッピングを使ってる人はごくわずかだよ。主要なModローダーであるForgeとFabric（とその派生）は、Mojangマッピングの制約があるから、それぞれ独自のマッピングを使ってるんだ。Mojangマッピングも使えるけど、はるかに一般的じゃないね。" userName="undeveloper" createdAt="2025/10/30 03:09:11" color="#ff5733">}}




{{<matomeQuote body="1986年からコードを書いてるけど、Javaが始まる前から業界に存在したことでJavaが叩かれるのはいつも面白いね。GoFのデザインパターン本はJavaが発明される前に出版されたのに、Javaが入ってるって断言する人までいるくらいだよ。" userName="pjmlp" createdAt="2025/10/30 08:06:28" color="#ff33a1">}}




{{<matomeQuote body="「品質の高いソフトウェアにはテスト技法が必須」って？馬鹿げてる！モックなんて、テストをグリーンにするだけでアプリが動かない原因になることだってよくあるんだからね。" userName="high_na_euv" createdAt="2025/10/30 09:44:37" color="">}}




{{<matomeQuote body="C++だと、非テンプレートのインターフェース基底クラスとテンプレートの実装クラスの組み合わせがすごく便利なんだ。テンプレートの実装ヘッダーが重くなっても、インターフェース基底クラスだけをIncludeすればビルド時間を殺さないからね。Javaでもこんな使い方が一般的なのかな？" userName="jjmarr" createdAt="2025/10/30 04:35:02" color="#ff5733">}}




{{<matomeQuote body="2004年に海賊版MMOサーバーで遊んでたんだ。オーナーはサーバーバイナリを手にいれて、ヘックスエディタで新機能を追加してたんだよ！まさにMatrixのハッカーみたいで、ヘックスコードをいじって文字を一つずつ変えてる感じだったな。" userName="gretch" createdAt="2025/10/30 00:11:30" color="">}}




{{<matomeQuote body="OO（オブジェクト指向）が嫌われるのは、アカデミアや企業がそれを宗教みたいに教えるからって意見、マジそれ！大学時代、SunがJavaラボを寄付したせいで、アルゴリズムもアーキテクチャも全部Java漬け。教授は「Javaが優れてるからCは死んだ」とか言ってたんだぜ。" userName="rcruzeiro" createdAt="2025/10/30 00:13:22" color="#ff33a1">}}




{{<matomeQuote body="「もちろんできるだろ」って言うなら、ユニットテストとインテグレーションテストの代わりになるもの教えてよ。<br>「Mockのせいでテストは通ってもアプリは動かない」ってのは違うと思うな。テストは対象を検証するだけだし、テストダブルは隔離された入力のため。バグを見逃すなら、テストの作り方が悪いんであってMockのせいじゃないよ。Workmanとそのツールを使ってる。" userName="locknitpicker" createdAt="2025/10/30 09:51:10" color="">}}




{{<matomeQuote body="これってランタイムパフォーマンスの話じゃなくて、ロード時間のちょっとした改善のこと？ JVMがバイトコードを読んだら、完全修飾名をキーにしたハッシュマップじゃなく、もっと効率的なメモリ構造でクラス参照を管理するはず、って思ってるんだけど。" userName="mort96" createdAt="2025/10/30 08:25:15" color="">}}




{{<matomeQuote body="ProGuard回避だけじゃないんだ。Minecraftのmodは、すごい柔軟なランタイムクラスファイル書き換えフレームワークの上に作られてる。JARは@Injectみたいなアノテーションで、modのロード時にMinecraftのメソッドを書き換えられるんだ。これでmod開発が革命的に変わったんだよ！前は手動パッチの山だったからね。JSONデータパックのプラグインもあるけど、そっちはもっと限定的だよ。" userName="nightpool" createdAt="2025/10/29 19:27:47" color="#38d3d3">}}




{{<matomeQuote body="うちの子がmodにハマったから、痛みが少なくて安全にmodを使う方法をシェアするね。<br>1. MultiMCでインスタンスを管理するといいよ。modは互換性ないし、バージョンも細かく指定されるからね。EXEファイルのダウンロードは絶対やめて。<br>2. modはForge, Fabric, NeoForgeみたいなローダーが必要だけど、MultiMCでどれでも入れられるよ。<br>3. CurseforgeとModrinthが本物のサイト。Curseforgeのアプリは使わない方がいいけど、サイトからはJARを直接落とせるし、依存関係もわかるから便利だよ。" userName="xp84" createdAt="2025/10/29 20:19:15" color="#ff5c5c">}}




{{<matomeQuote body="PaperMCはMojangマッピングだけを使ってて、最近はサーバーサイドのmoddingで一番人気のあるローダーだよ。" userName="creatonez" createdAt="2025/10/30 07:16:01" color="">}}




{{<matomeQuote body="それはたぶんJavaが設計哲学（あるいはドグマ）を真に受けて、その書き方を言語レベルで強制してるからだろ。ちゃんとしたモジュールがないとか、モジュール内に単一の関数を持てないとかさ。何でもクラスの中に入れなきゃいけないか、関係ないものと混ざっちゃう。Javaって言語自体が、こういう狂気を推奨してるんだよ。" userName="zelphirkalt" createdAt="2025/10/30 10:19:06" color="">}}




{{<matomeQuote body="Java Editionの開発者たちは、最近modのことをしっかり考えてくれてるよ。前は削ってたデバッグ機能やテスト環境も残すようになったし、mod間で被らないように全部名前空間つきにしたんだ（今週のスナップショットでgamerulesも”minecraft:”プレフィックスになった）。データパックやmodで使いやすい「ビルディングブロック」機能もたくさん追加してるしね。ゲームの内部APIが多機能になったおかげで、Mixinsでのメソッドパッチも前ほどいらなくなったよ。" userName="LelouBil" createdAt="2025/10/29 19:33:59" color="#ff5c5c">}}




{{<matomeQuote body="Paperはmodローダーじゃないよ、裏ではFabricを使ってる。あと、なんでPaperが一番人気のサーバーだと思ってんの？俺はもう下火だと思ってたし、自分のサーバーも何年か前にPaperからFabricに切り替えたけど。" userName="handsclean" createdAt="2025/10/30 12:20:42" color="#ff33a1">}}




{{<matomeQuote body="プログラミングのモジュールはパッケージとも呼ばれるよね。関数が存在する必要があるわけじゃないんだ。Smalltalkが最初だったし、GoFのデザインパターンができたときに使われた言語の一つなんだぜ。もう一つはC++だったな。" userName="pjmlp" createdAt="2025/10/30 10:23:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Notchが2010年に公式modding APIを追加するって言ってたのを思い出したけど、結局実現しなかったんだよね。残念！<br>URL: https://web.archive.org/web/20100708183651/http://notch.tumb..." userName="Nition" createdAt="2025/10/29 19:43:29" color="#45d325">}}




{{<matomeQuote body="Minecraftって公式APIがないのに、moddingシーンがForge/Neo-ForgeとFabricっていう独自のAPIを作っちゃったのがすごいよね！FabricはMix-ins、Forgeはイベントベースなんだ。ユーザーがAPIを自作するってすごくない？公開メソッドだけをAPIにして、moddersが自由に作れたらもっと良いのかな？<br>URL:[1] https://wiki.fabricmc.net/tutorial:mixin_introduction<br>[2] https://docs.minecraftforge.net/en/latest/concepts/lifecycle..." userName="AyanamiKaine" createdAt="2025/10/30 10:56:10" color="#38d3d3">}}




{{<matomeQuote body="Vintage Storyのmoddingは、ゲームがエンジンとmodapi、フックエンジンで作られてて、ゲームプレイのほとんどがmodとして実装されてるんだって。modがクライアントに自動でプッシュされるのは楽だよね。でも、すべてのインターフェースを公開すると安定させるのが難しいみたい。APIじゃない部分はMinecraftみたいに壊れやすいけど、Minecraftよりはまだマシかな。" userName="NwpierratorR" createdAt="2025/10/30 11:11:13" color="#38d3d3">}}




{{<matomeQuote body="Vintage Storyを忘れてた！Crusader Kings 3みたいなParadoxゲームはインターフェースがオープンだけど、大型アップデートでmodが動かなくなるのはあるあるだよね。コミュニティのサポートがなくなるとmodが使えなくなるのが悲しいな。Star Wars Empire at Warみたいに、ゲームがアップデートされなくなってAPIが固定されると、古いmodもずっと使えるのは良いね。" userName="AyanamiKaine" createdAt="2025/10/30 12:40:05" color="#785bff">}}




{{<matomeQuote body="modがクライアントに自動で送られるって、マルウェアの配布に使われないか心配になっちゃうな。" userName="matheusmoreira" createdAt="2025/10/30 12:45:52" color="">}}




{{<matomeQuote body="そういうこと、実はもう起きてるよ。チート作ってるmodderもいるしね。プログラミングのパッケージシステムと同じサプライチェーンの問題が、Vintage Storyのmodにもあるんだ。" userName="smccabe0" createdAt="2025/10/30 14:45:16" color="#ff33a1">}}




{{<matomeQuote body="脱難読化してもmod開発はそんなに変わらないんじゃないかな。CreateとかImmersive Portalみたいな人気modはMinecraftの衝突判定とかレンダリングパイプラインに直接手を加えるから、抽象化じゃ対応できないと思う。ForgeもMixinみたいな直接的な改変をサポートしてるしね。Mojangが全部抽象化するなんて、現実的じゃないだろうな。" userName="mmis1000" createdAt="2025/10/31 13:35:59" color="#ff5c5c">}}




{{<matomeQuote body="MojangはJava EditionをGitHubでオープンソースにするべきなんじゃないかな？Skyrimみたいに、オープンソースになってもみんな色んなプラットフォームでMinecraftを買うと思うんだよね。" userName="giancarlostoro" createdAt="2025/10/29 17:29:23" color="">}}




{{<matomeQuote body="Doomみたいに、もっと色んなゲームがオープンソースになるべきだよ。アートアセットは著作権で保護されてても大丈夫だしね。" userName="throwaway48476" createdAt="2025/10/29 17:36:31" color="">}}




{{<matomeQuote body="面白いことに、Minecraftは反例だよ。アセットがすごく少ないし、それがゲーム体験に不可欠ってわけじゃないしね。" userName="dontlaugh" createdAt="2025/10/29 18:01:03" color="">}}




{{<matomeQuote body="でもさ、音楽とサウンドはゲーム体験にかなり重要な部分を占めてるよ。テクスチャより置き換えるのがずっと難しいし。" userName="xboxnolifes" createdAt="2025/10/29 18:34:40" color="#785bff">}}




{{<matomeQuote body="サウンドはそうかもだけど、音楽？ もし俺が即座に音楽をオフにするゲームがあるとしたら、それはMinecraftだね。Minecraftは東方妖々夢じゃないし。" userName="tmtvl" createdAt="2025/10/29 19:09:07" color="">}}




{{<matomeQuote body="2010年にNotchがさ、『売上が落ちて最低限の時間が経ったら、ゲームのソースコードをオープンソースとして公開する』って約束してたんだよね。<br>https://web.archive.org/web/20100301103851/http://www.minecr..." userName="NelsonMinar" createdAt="2025/10/29 18:27:56" color="#45d325">}}




{{<matomeQuote body="君が探してるのはMinetestかLuantiじゃないかな。" userName="kragen" createdAt="2025/10/29 17:52:03" color="">}}




{{<matomeQuote body="いや、彼らは公式ゲームがオープンソースになることを望んでると思うな…みんなが実際に遊んでるバージョンだから、模倣品よりずっと魅力的だよ。" userName="ajkjk" createdAt="2025/10/29 17:58:52" color="">}}




{{<matomeQuote body="それってあまり魅力的じゃないよ、modを入れるのがすごく難しいからね。" userName="kragen" createdAt="2025/10/29 18:03:24" color="">}}




{{<matomeQuote body="あの音楽は間違いなくクラシックとして評価されてるよ。オンラインでたくさんの人が、それが自分にとってどれだけ意味があるか語ってるのを見かけるし、個人的にもあの音楽は大好きだったな。" userName="gbear605" createdAt="2025/10/29 19:16:03" color="#ff5733">}}




{{<matomeQuote body="Notchはいろいろ言うけど、滅多に実行しないよね。俺はまだ0x10cを待ってるよ。" userName="ikamm" createdAt="2025/10/29 18:32:00" color="">}}




{{<matomeQuote body="Minecraftをオープンソースにしても、彼らが財政的に損をするとは思わないな。みんなゲームを遊ぶ唯一の方法だから買ってるわけじゃないんだ。無料でMinecraftを動かす方法は簡単に見つかるしね。<br>購入の理由はサーバーに参加するためだよ。ほとんどの真面目なサーバーは、有効な有料Minecraftアカウントを持つプレイヤーだけを許可する。サーバーオーナーがbanしたり人を追跡できるからね。ゲームクライアントがオープンソースになっただけで、これが変わるとは思えないよ。" userName="mort96" createdAt="2025/10/30 09:55:19" color="#ff5733">}}




{{<matomeQuote body="MinecraftのBGM、めっちゃ好きだよ。ゲーム外でもわざわざ聴くけど、ゲーム中に不意に流れるのが一番いいんだよね。BGMを切ってる人がいるって話、昨日初めて聞いたと思ったら、今日また聞いたよ。意外すぎてびっくり！" userName="sodapopcan" createdAt="2025/10/29 20:08:23" color="#ff5c5c">}}




{{<matomeQuote body="やっぱりmodコミュニティが超活発だから、Minecraftってすごく魅力的なんだよね。" userName="willis936" createdAt="2025/10/29 18:53:12" color="#38d3d3">}}




{{<matomeQuote body="みんながサードパーティの認証システムを構築すれば、Mojangの認証って必要なくなるんじゃない？" userName="beeflet" createdAt="2025/10/30 14:27:20" color="">}}




{{<matomeQuote body="うん、コミュニティって技術がちょっと劣ってても、それを補って余りあるくらいすごい力があるよね。" userName="kragen" createdAt="2025/10/29 19:02:31" color="#45d325">}}




{{<matomeQuote body="エンジンをオープンソース化しない理由なんてないよ。アカウント認証を「性善説」に頼るオープンソースのランチャーはもう普通だし、認証をコメントアウトするなんて簡単すぎる。JARファイルやアセットはMicrosoftのサーバーからアカウントなしで自由にダウンロードできるしね。タダで手に入れられるくらい簡単なゲームなんだから、エンジンをオープンソース化することに何のデメリットもないと思うんだけど。" userName="mikkupikku" createdAt="2025/10/29 18:05:55" color="#785bff">}}




{{<matomeQuote body="Notchは長年いろんなこと言ってきたよね。Microsoftに売却後、いいことばかりじゃなかったけど。目的を失って一生困らないくらいのお金を手に入れた結果、あまり良くない新しい目的を見つけちゃったみたい。Qanonとか他の陰謀論的なこととかね。望みが叶わない方がいいこともあるってことだよね。" userName="PeaceTed" createdAt="2025/10/30 00:55:33" color="">}}




{{<matomeQuote body="コミュニティこそが全てだよ。技術は最低限の基準を満たしてればいいんだ。Minetestで遊んでる13歳とか、知ってる？" userName="nmilo" createdAt="2025/10/29 21:33:04" color="#38d3d3">}}




{{<matomeQuote body="正直、最低でもMicrosoftがMinecraft Java版のバックエンドサーバーをオープンソース化してくれるだけでもいいんだけどな。これはとっくにやるべきだった。膨大なファンベースがあれば、Microsoftが想像もできないような方法で保守できるようになるのにね。" userName="giancarlostoro" createdAt="2025/10/30 00:42:38" color="#785bff">}}




{{<matomeQuote body="その特定の偶然って、「バーダー・マインホフ現象」のいい例だね。" userName="butlike" createdAt="2025/10/30 17:13:13" color="">}}




{{<matomeQuote body="彼って最近どうしてるの？何か変わったのかな？" userName="scotty79" createdAt="2025/10/30 10:21:05" color="">}}




{{<matomeQuote body="Castlevania Symphony of the NightとかChrono Trigger、Shadowgateとか、ゲーム外でも聞くサントラはあるけど、Minecraftは全然だね。曲が汎用的すぎてもったいないし、アンビエンスとしては主張が強すぎる。Silent Hillのサントラみたい。" userName="tmtvl" createdAt="2025/10/30 00:21:46" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Minecraft Movieは、彼が約束した時のゲームの収益より既に多く稼いでるんじゃないかな。あの頃は、ゲームがこんなに金を生むデカい工場になるとは、さすがの彼も想像できなかっただろうね。" userName="ntoskrnl_exe" createdAt="2025/10/29 18:39:39" color="">}}




{{<matomeQuote body="彼はゲームをMicrosoftに売っちゃったから、もう彼の約束なんて関係ないんだよ。" userName="ecshafer" createdAt="2025/10/29 18:44:47" color="">}}




{{<matomeQuote body="誰にとって魅力がなくなるって？13歳の子たちがMinecraftのMod開発でプログラミングを学んだんだから、そこまで難しくないでしょ。それに、Minecraftで動くっていうメリットと達成感があるしね。Minetestを知ってても、みんなMinecraftを選ぶのは明らかだよ。なんでかは説明できないけどね。" userName="unleaded" createdAt="2025/10/29 19:27:49" color="#45d325">}}




{{<matomeQuote body="アメリカ議会図書館にも認められてるんだよ！<br>https://www.loc.gov/static/programs/national-recording-prese..." userName="ollien" createdAt="2025/10/29 22:04:06" color="">}}




{{<matomeQuote body="C418の初期Minecraft音楽は、特にジュークボックスのディスクなんかは、結構型破りだったのを覚えてる。最近またMinecraftを始めたら、同じC418の曲っぽいけど、相変わらず瞑想的なのに不協和音がなくなってるね。" userName="speedgoose" createdAt="2025/10/29 19:52:26" color="">}}




{{<matomeQuote body="それはもうできるし、やってる人もいるよ。Mojangは、何でか分からないけど、公式サーバーの設定で認証を無効にする（`online-mode=false`）ことまで許してるんだ。" userName="pie_flavor" createdAt="2025/10/30 15:28:12" color="">}}




{{<matomeQuote body="MinecraftのコードをIP保護のために難読化するのは、あんまり意味ないと思うな。遊び方を見たら、ゼロから作るのが簡単なゲームの一つだよ。ほとんどの面白さは、単純なルールシステムの組み合わせで生まれるものだし。ソースコードにすごい発見があるわけじゃない。ナナイトみたいなすごい技術が隠されてるわけでもないし。ブタやヒツジの動きとか、退屈な定義ばかりだよ。Minecraftの技術で一番大変なのは、たぶんチャンク管理だね。" userName="bob1029" createdAt="2025/10/30 08:39:32" color="#ff33a1">}}




{{<matomeQuote body="アルファ版の頃は難読化されてたけど、その上にmodやmodローダーが作られちゃったから、既存のツールチェーンを壊すより現状維持の方が楽だったんだよな。Mojangはmodの移行を楽にしたいと思ってるはず。<br>だって、古いMinecraftのバージョン（1.7.10とか）で有名なmodpackが動いてるのって、modをアップデートするより全部1.7.10にバックポートする方が簡単だからなんだもん。" userName="bombcar" createdAt="2025/10/30 10:40:32" color="#ff5c5c">}}




{{<matomeQuote body="Minecraft、Roblox、Geometry Dash、Trackmaniaみたいなゲームは、コミュニティのおかげで成功したんだよな。単体だと平均的なプレイヤーには物足りないけど、クリエイティブなプレイヤーがみんなを惹きつけるものを作る。<br>Vision Proやメタバースが苦戦してる理由の一つは、エンジンがダメだからじゃないかな。閉鎖的だし、開発しにくい（VR全般に言えるらしい）。コミュニティを作りたいなら、趣味で開発する人や小規模なユーザーにとって開発を簡単にしなきゃダメなんだよ。" userName="armchairhacker" createdAt="2025/10/29 16:49:37" color="#45d325">}}




{{<matomeQuote body="メタバースなんて誰も求めてないし、アクセスするために高い変な帽子（VRヘッドセット）を買いたがる人も絶対いないでしょ。" userName="jon-wood" createdAt="2025/10/29 17:33:59" color="">}}




{{<matomeQuote body="メタバースを求めてる人はいるよ。VRChatのユーザー層とかがそうだね。でも、ごく一部のバーチャルファーリー以外で、それに大金をつぎ込みたいって人は多くないってのは、君の言う通りだ。" userName="beeflet" createdAt="2025/10/29 17:41:44" color="">}}




{{<matomeQuote body="Flight Simulatorシリーズも追加できるね。あれもすごい数のアドオンが生み出された。<br>でも、大事なのはまず良いゲームがあること、エンジンは二の次だと思うよ。コミュニティが臨界点に達すると、mod化できるわずかなメンバーも重要になる。<br>Richard Burns Rallyはmodを意図してなかったのに、ファンが新しい車やコース、オンラインスコアボードを追加した例だね。Luanti (https://www.luanti.org/) コミュニティでも、似たようなことが起きてるよ。" userName="astrobe_" createdAt="2025/10/29 18:01:59" color="#ff5c5c">}}




{{<matomeQuote body="Robloxはリリース当時、ものすごいエンジンだったよ。地形破壊は今でも他に類を見ないくらいだね。<br>2006年にRobloxアプリをダウンロードするだけで、数千もの3Dマルチプレイヤーゲームを無料で、ほとんど瞬時にプレイできたんだ。建物は完全に破壊可能で、地形も動的だった。当時は画期的だったんだよ。Steamでゲームを買ったり、CDで買ったりしてた時代だ。Blocklandは有料だったけど、Robloxは無料だったんだよね。" userName="jjmarr" createdAt="2025/10/29 18:30:40" color="#ff5733">}}




{{<matomeQuote body="VRChatはデスクトップでも動くよ（体験は劣るけどね）。高価なヘッドセットを買わなくても、Webカメラで顔や手のトラッキングをするだけでも、徐々に体験を良くしていけるんだ。" userName="kg" createdAt="2025/10/29 17:44:47" color="">}}




{{<matomeQuote body="多くの人が巨大なモニターやデュアルモニター、湾曲モニターとかに大金使ってるけど、その魅力って、ヘッドマウントディスプレイを着けるのにちょっと近づきたいってところが大きいんだよね。" userName="kragen" createdAt="2025/10/29 17:53:39" color="">}}




{{<matomeQuote body="Robloxは今でも最先端だよ。Robloxでゲームを作ってきた子供たちが、いざ専用エンジンに移ると苦労することが多いんだ。だって、Robloxはあらゆる面で開発がめちゃくちゃ簡単だからね。<br>特に、オンラインマルチプレイヤーがデフォルトでエンジンに組み込まれてて、すぐに動くのが大きなメリットだってよく聞くよ。" userName="skeaker" createdAt="2025/10/29 20:59:18" color="#785bff">}}




{{<matomeQuote body="Vision Proやメタバースが苦戦してるのはエンジンが悪いって話だけど、UnityやUEは今VRサポートがかなり良いし、Godotも追いついてきてるよ。カスタムエンジンもOpenXRみたいなAPIがあれば、通常の3Dゲームと開発の難易度は大差ない。<br>VRの一番の問題は、開発コストが高いのにユーザーが少ないことだね。あと、移動やアクセシビリティ機能のサポート、UXやUIがまだ理想的じゃない問題もある。例えば、字幕の表示一つとっても、酔いや読みにくさの問題があるんだ。" userName="maeln" createdAt="2025/10/29 17:52:07" color="#38d3d3">}}




{{<matomeQuote body="正直、10年以上前のMinecraftってそこまで凄いゲームじゃなかったんだよね。悪くはなかったし、楽しんだけど、特別ってほどでもなかった。Minecraftが正しかったのは、すごく自由度が高くてModdingしやすかったこと。それもマルチプレイでさらに加速したんだ。たぶん、みんながMinecraftで楽しかったことのほとんどは、ゲーム本来のプレイじゃなくて、その上に作られた体験だったと思うよ。" userName="nkrisc" createdAt="2025/10/29 22:20:43" color="#ff5733">}}




{{<matomeQuote body="捕食者と被食者両方である、前向きの目を持つ霊長類が、環境認識を遮断するようなコクーンに頭を閉じ込めるよりも、腕の届く範囲で物を見るのを好むのは当然だね。" userName="shermantanktop" createdAt="2025/10/29 17:58:40" color="">}}




{{<matomeQuote body="Minecraftはね、とんでもなくカスタマイズできるのに、そこまでモノタイズされてないのがすごいよ。自分でサーバーもホストできるし、Metaが描くような、あの信じられないくらい味気ない企業イメージを避けてるんだ。(Metaは、VR技術の制限を受け入れてまでバーチャル空間で交流したい人たちは、その空間で現実の人と同じように見られたいわけじゃないってことを理解してないと思うよ。彼らは、現実世界よりも極端な「普通」を押し付けてるからね)。" userName="rcxdude" createdAt="2025/10/30 01:20:53" color="#ff5c5c">}}




{{<matomeQuote body="Meta Questは開発が超簡単だよ。ソロ開発者から大手スタジオまで、あらゆるレベルのゲームが山ほどある。Metaverseが失敗してるのは、誰もそれを欲しがってないから。なのにMetaはそれをみんなに押し付けてるんだ。VRゲーマーはただゲームがしたいだけで、「世界」でふざけたいわけじゃない。Metaはこれに気づいてないね。" userName="stronglikedan" createdAt="2025/10/29 18:11:53" color="">}}




{{<matomeQuote body="「実体化された」ってのがどういう意味か正確にはわからないけど、MinecraftにはサーバーサイドModを基にしたミニゲームがたくさんあって、他の人気ゲームを模倣してるんだ。時にはMinecraftの人気ミニゲームやModが、独立したゲームとして実装されることもあるよ。Battle royaleゲームは、Minecraftのミニゲームが先行してたから、ほぼ確実にそこから強くインスパイアされたんだ。Factorioも古いindustrialcraft Modからインスピレーションを受けたと認めてるし、Vintage Storyは基本的にStandaloneのTerrafirmacraft（確かその開発者の一人だよね）だね。" userName="vintermann" createdAt="2025/10/30 06:10:33" color="#ff33a1">}}




{{<matomeQuote body="2006年のRobloxはどれくらいデカかったんだろ？<br>あの頃は、Steamをダウンロードして、Counterstrikeみたいな個別のゲームを買ってたな。一番クレイジーなのは「surf」ゲームモードだったかも。あと、Source Modも何でもプレイできたし、WC3マップも当時としてはマジでヤバかった。" userName="Sweepi" createdAt="2025/10/29 19:33:38" color="">}}




{{<matomeQuote body="「インディー開発者」、つまり経験豊富なSWEか、やる気ある人物で身元もクレカも収入もある人と、ただいじくり回してるキッズ／ティーンエイジャーとは違うと思うんだ。「自由な」設定なら、誰でも（子供も含めて）十分学んで（あるいは既存のスクリプトをDLするだけでも）、Moddingを試せた。でも今の状況で開発者登録とかあると、身元証明、年齢確認、ライセンス料、EULAの同意とかが必要になる。これじゃ、ただゲームを自分や友達のためにいじりたい子供たちには大きな障壁だね。2008〜09年頃、初めてWindowsにApacheをインストールしようとした時、インストーラーにドメイン名を聞かれて怖かったのを覚えてる。DNSとかが分からなくて、適当な名前を使ったら怒られるんじゃないかって。こういう「規制された」エコシステムは、善意のある未経験の開発者が始めるのを難しくする一方、サイバー犯罪者は止められない。あの「自由な」環境が、僕を今の開発者＆Sysadmin（テック系はDevOpsって呼ぶけど）にしてくれたんだ。正規の訓練も教育もなしにね。若い世代がこの機会を失うのは悲しいよ。" userName="Nextgrid" createdAt="2025/10/29 23:50:43" color="#ff5733">}}




{{<matomeQuote body="Minecraftに関しては賛成できないな（そのリストで唯一プレイしたゲーム）。アルファ版の時に買ったんだけど、その時ですらシングルプレイヤー体験は際立っていて、めちゃくちゃハマったよ。15年以上経った今でも鮮明な記憶がある。クリエイティビティとサバイバル（とあのクリーパーたち！）のバランスが完璧だったんだ。僕だけじゃないと思うな。確かアルファ版の段階でも何百万ドルも稼いでたはずだよ。" userName="YesBox" createdAt="2025/10/29 19:22:38" color="#ff33a1">}}




{{<matomeQuote body="＞ただロックダウンされただけじゃない<br>でもロックダウンは大きな要因だよ。OpenXRみたいにクロスプラットフォームのVR/AR SDKがあるのに、Appleはそれを実装するのを拒否してる。彼らのプラットフォームがマルチプラットフォームのVRリリースと同時にサポートされない大きな理由は、Appleが作るプラットフォームごとに車輪の再発明を主張するからだね。もしValveのVRヘッドセットがフラットスクリーンゲームを実行できるっていう噂が本当なら、Vision Proにとってはほぼゲームオーバーだよ。iPadみたいな体験で6DOFを求めるニーズは、もっと安いマシンで十分対応されてるからね。" userName="bigyabai" createdAt="2025/10/29 17:21:39" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
