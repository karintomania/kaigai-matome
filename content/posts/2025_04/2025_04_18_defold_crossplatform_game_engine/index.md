+++
date = '2025-04-18T00:00:00'
months = '2025/04'
draft = false
title = '出たー！Defold、あのクロスプラットフォーム対応ゲームエンジンがマジすごいらしい！'
tags = ["ゲームエンジン", "クロスプラットフォーム", "ゲーム開発", "Defold", "ソースコード利用可能"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> 出たー！Defold、あのクロスプラットフォーム対応ゲームエンジンがマジすごいらしい！

引用元：[https://news.ycombinator.com/item?id=43726051](https://news.ycombinator.com/item?id=43726051)

{{<matomeQuote body="このライセンスのやり方は面白いね。オープンソースじゃなくてソース利用可能って書いてあるのがマジで良いと思う。<br>https://defold.com/license/　GPLと違って、エンジンに独自の変更を加えても公開しなくてOK。ゲームで自由にマネタイズできるし、急な変更がないって保証もある。Apache 2.0じゃない理由は、ゲームエンジン自体をマネタイズできないから。マジでよく考えられてるわ。チームに感謝だね。" userName="evv" createdAt="2025-04-18T10:50:01" color="#ff5c5c">}}

{{<matomeQuote body="マジで最高のライセンスじゃん。もっとこういうソース利用可能って増えてほしいわ。<br>持続可能な「公平なオープンソース」って感じだよね。製品を作ったチームがマネタイズできるし、コミュニティを傷つけない。コミュニティはコードにフルアクセスできて、改造もできるし、製品で稼ぐこともできる。会社が潰れたら、コミュニティが引き継げるんだって。<br>会社は無料で提供するサービスと有料にするサービスを選べる。Cloud CIとかビルドとかホスティングを有料にすると、エンジンとエディタは完全に無料で開発・改造できる。これで持続可能なビジネスができるよね。<br>データベースベンダーはこういうライセンスを使って、Amazonにパクられてキャッシュフローを奪われるのを防ぐべき。<br>RedisとかElasticsearchはAmazonにパクられる前にこうするべきだったんだよ。Matt Mullenwegもそうするべきだったんだ。" userName="echelon" createdAt="2025-04-18T13:51:45" color="#ff33a1">}}

{{<matomeQuote body="ソース利用可能って言ってるのは良いけど、まだサイトで「オープンソース」って言ってる部分があるね。本当に良い感じのライセンスで、もっと増えてほしいけど、結構厳しくソフトウェアの種類を制限してるかも。<br>ゲームエンジンの製品を商業化できないし、定義が広いから、法的な問題になる可能性もある。「ゲームエンジン製品」は「ビデオゲーム開発に使われるソフトウェア」って書いてある。コンテンツ作成ソフトとか、作成されたコンテンツを表示するソフトとか。マップエディタとかmodツールとか、ゲーム開発に使えるツールも違反になるかも。Patreonとかで寄付を募ってるクリエイターも違反になる可能性もあるかもね。" userName="ilariel" createdAt="2025-04-18T14:40:31" color="">}}

{{<matomeQuote body="選択肢はこんな感じかな。<br>・ゲームと一緒にmodツールを無料で配る（よくあるパターン）。ゲームを商業化してるだけで、modツールを商業化してるわけじゃない。<br>・defoldなしのツールにする？ゲームデータを読み込めるけど、defoldじゃない。<br>・ツールは無料だけど、サポートとか保証を有料にする？9条でサポートとか保証は売っても良いって書いてある。ソフトウェアライセンス自体にお金をかけちゃダメってことだね。" userName="PolCPP" createdAt="2025-04-18T16:42:33" color="#785bff">}}

{{<matomeQuote body="Patreonの小規模ユーザーがプラットフォームのツールを商業化するための簡単な承認プロセスがあると嬉しいかも。" userName="bee_rider" createdAt="2025-04-18T16:01:43" color="">}}

{{<matomeQuote body="彼らは、extensionsはその制限の対象じゃないってハッキリ言ってるみたいだよ。<br>ライセンスの文章を修正して、もっと分かりやすくする必要があるかも（自分も法律の専門家じゃないけど）。商業的なextensionsはOKで、コアコードを改造したものを商業化するのはダメってことだと解釈してる。<br>心配なのはもっともだけど、もし問題になったら、財団の目標(https://defold.com/foundation/)を考えると、ライセンスの文章を修正してくれると思う。<br>自分はそんなに厳しい制限はないと思うし、弁護士がそう解釈したら、修正を手伝ってくれると思う。<br>だから、とりあえず「慎重に楽観的」って感じかな。" userName="mst" createdAt="2025-04-20T12:25:01" color="#ff5733">}}

{{<matomeQuote body="みんなそんな先見の明はないよ。未来を正確に予測できないから、求めるのは無理だよ。<br>RMSがああいう風に頑張ったり、Amazonがああいう風に頑張ったりしなかったら、このライセンスは生まれなかった。こういうことがあったから、問題解決できるライセンスができたんだよね。また状況が変わったら、新しいライセンスが必要になるんだろうね。" userName="Shorel" createdAt="2025-04-18T14:35:05" color="">}}

{{<matomeQuote body="＞Matt Mullenwegはそうするべきだった<br>＞彼には選択肢がなかったんだよ。GPLコードをリライセンスすることはできないから。既存のものをforkするんじゃなくて、新しいシステムを最初から書く必要があったんだ。" userName="graemep" createdAt="2025-04-18T17:56:50" color="#45d325">}}

{{<matomeQuote body="著作権者は好きなようにコードをリライセンスできると思ってたんだけど？GPLかどうかは関係なくて、第三者のコントリビューターが自分の貢献の著作権をリライセンスしようとしてる人に譲渡したかどうかが問題なんじゃない？過去に署名が必須じゃなかった場合、多くのコントリビューターがいるコードベースだと、後からそれを得るのは難しいことが多いと思う。Wordpressがそうなのかは知らないけど、コードがGPLかどうかは関係ないと思う。" userName="saghm" createdAt="2025-04-18T22:24:01" color="">}}

{{<matomeQuote body="著作権者はリライセンスできるけど、forkが違うライセンスになるようにリライセンスすることはまずないと思うよ。Wordpressはb2のforkとして始まったんだし。Mullenwegが最初の開発者だったら、もっともな批判だけどね。" userName="graemep" createdAt="2025-04-19T06:40:55" color="">}}

{{<matomeQuote body="結局、プロジェクトをマネタイズできるのは一つの組織だけってことだよね。だから、そいつらのマネタイズのアイデアや実行力がイマイチだったり、熱意がなくなったりしたら、プロジェクトは死ぬ可能性が高いってこと。GitHubにはこういう死んだプロジェクトがいっぱいあるんだよね。ソフトウェアのマネタイズって難しいし、重要なソフトウェアを作るのも難しいし、両方やるのはもっと難しいから。オープンソースは資金援助されるべきだけど、これは効率的な方法じゃないね。Mullenwegは、総資産4億ドルくらいあるらしいけど、20年前に「向かい風はすべての船を持ち上げる」って言葉が、自分以外の人が船を持つことを許容するのか、それとも自分の船だけなのか、よく考えるべきだったんじゃないかな。WPの周りには、Mullenwegがお金を受け取らなくても、何十億ドル規模の生態系があるべきなんだよ。" userName="benoau" createdAt="2025-04-19T02:18:28" color="">}}

{{<matomeQuote body="ライセンスは公平に見えるってのは同意かな。全部がOSI準拠のオープンソースである必要はないしね。WASMもサポートしてるし。" userName="Tepix" createdAt="2025-04-18T13:42:29" color="">}}

{{<matomeQuote body="＞GPLと違って、プロプライエタリな変更を加えても公開する必要はないってことだよね。<br>なんでそれが良いことなの？<br>＞エンジンを使って作ったゲームは自由にマネタイズできる。<br>GPLライセンスでも同じことができるよね？<br>＞ベイトアンドスイッチがないという保証もある。<br>GPLライセンスなら、”保証”に頼る必要なんてないじゃん。" userName="executesorder66" createdAt="2025-04-18T18:55:24" color="">}}

{{<matomeQuote body="僕らがいる場所を考えてみてよ。ゲーム開発って、同じエンジンを使って、ゲームの作り方について色んなアイデアを持った開発者がたくさんいるわけじゃん。もしエンジンに必要な機能がなかったら、自分でコードを書くことになるだろうけど、その機能を作る目的は自分のゲームのためなんだから、その機能をエンジンにプッシュバックする必要もなく、自分のゲームの機能を非公開にできるのは当然だと思うんだよね。これが、ゲームエンジンにGPLが向いていない理由。" userName="Ethee" createdAt="2025-04-18T19:08:41" color="#38d3d3">}}

{{<matomeQuote body="もっと重要なのは、成功したゲームは、APIが制限されたNDAの背後にあるプロプライエタリなプラットフォームへの移植が必要になる可能性が高いってこと。<br>正直、良くはないけど、それが僕らが生きている世界なんだよね。" userName="Arelius" createdAt="2025-04-18T20:15:06" color="">}}

{{<matomeQuote body="GPLは、機能や変更をエンジンの開発者にプッシュバックすることを要求してないよ。他の人が利用できるようにするだけでいいんだ。ゲームのデータと一緒にZIPファイルに入れておけばいいんだよ。id TechのGPLリリースで作られたゲームの多くがそうしてる。" userName="badsectoracula" createdAt="2025-04-18T23:06:47" color="#ff5c5c">}}

{{<matomeQuote body="＞＞GPLと違って、プロプライエタリな変更を加えても公開する必要はないってことだよね。<br>＞なんでそれが良いことなの？<br>トップレベルのゲーム開発は軍拡競争なんだよ。プロプライエタリなことができるのは、大企業にとって魅力的。<br>＞＞ベイトアンドスイッチがないという保証もある。<br>＞GPLライセンスなら、”保証”に頼る必要なんてないじゃん。<br>オープンソースからクローズドソースになったプロジェクトはたくさんあるんだよ。保証があるのは良いことだよ(もちろん保証はないけどね)。" userName="all2" createdAt="2025-04-18T19:09:11" color="">}}

{{<matomeQuote body="＞トップレベルのゲーム開発は軍拡競争なんだよ。プロプライエタリなことができるのは、大企業にとって魅力的。<br>大企業だけを助けて、他の人を助けないのが良いことだとは思えないな。<br>＞オープンソースからクローズドソースになったプロジェクトはたくさんあるんだよ。保証があるのは良いことだよ(もちろん保証はないけどね)。<br>でも、オープンソースのものは保証されてるじゃん。後でクローズドソースになったとしても、そこまでのコードはずっとオープンソースのまま残るんだから。だから、保証されてるんだよ。”保証”なんて意味ないよ。" userName="executesorder66" createdAt="2025-04-18T20:44:34" color="">}}

{{<matomeQuote body="＞大企業だけを助けて、他の人を助けないのが良いことだとは思えないな。<br>自分のものを非公開にしたいなら、法的な選択肢があるってことだよ。<br>＞でも、オープンソースのものは保証されてるじゃん。後でクローズドソースになったとしても、そこまでのコードはずっとオープンソースのまま残るんだから。だから、保証されてるんだよ。”保証”なんて意味ないよ。<br>そうかな？ここでもそうじゃないの？" userName="all2" createdAt="2025-04-18T21:07:02" color="">}}

{{<matomeQuote body="＞でも、オープンソースのものは保証されてるじゃん。後でクローズドソースになったとしても、そこまでのコードはずっとオープンソースのまま残るんだから。<br>Apache 2.0ライセンスからの変更は非常に少ないので、その時点からフォークすることもできるよ。ただ、(a)商標を使用できなくなり、(b)販売できなくなるだけ。<br>財団の明確な目標、ひいてはプロジェクトの明確な目標を考えると、彼らが提供しようとしている保証を正確に提供しているように思えるし、保証についてのあなたの指摘は完全に正しいけど、ここで得られる法的な保証のレベルを過小評価していると思うよ。" userName="mst" createdAt="2025-04-20T12:16:47" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="GPLと違って、エンジンに独自の変更を加えても公開しなくていいんだよね。<br>＞それっていいことなの？<br>既存のプロジェクトを改造して、社内プロセスにガッツリ組み込むってことじゃん。それの何が悪いの？" userName="nurettin" createdAt="2025-04-19T10:41:30" color="">}}

{{<matomeQuote body="それってGPL違反にはならないと思うな。変更したバージョンをソースコードと一緒に配布しない場合に違反になるだけじゃない？" userName="sirtaj" createdAt="2025-04-19T12:48:26" color="">}}

{{<matomeQuote body="ライセンスは気に入ったし、精神的にはオープンソースだと思うけど、問題が起こりうるケースがあるよね。Defoldのクローズドソース版のサービスを販売したらどうなるんだろ？" userName="poulpy123" createdAt="2025-04-18T15:37:00" color="">}}

{{<matomeQuote body="エンジンや派生物を商用化することは許可されてないってハッキリ書いてあるから、意図されてないことだよね。でも、ライセンス的に技術的に許可されてるかどうかは弁護士に確認しないとわかんないかも。" userName="simonbw" createdAt="2025-04-19T00:58:05" color="">}}

{{<matomeQuote body="＞Defoldのオリジナル版や変更版（派生版）は自由に配布できるよ。<br>変更した場合でも、コードを公開する必要がないってだけ。<br>変更したゲームエンジンでサービスを販売するのが商用化にあたるのかは不明だけどね。" userName="RandallBrown" createdAt="2025-04-18T18:36:37" color="">}}

{{<matomeQuote body="単に“ソース利用可能”と呼ぶだけでなく（多くの人がそうであるように“オープンソース”を誤用しようとせずに）、Apacheベースのライセンスへの追加を強調しているのは素晴らしいね。https://defold.com/license/" userName="progbits" createdAt="2025-04-18T10:51:19" color="#38d3d3">}}

{{<matomeQuote body="法律家じゃないけど、唯一の追加点は、それに基づいてゲームエンジンを販売することを防いでいるように見えるな。だからゲームは売れるけど、エンジンはダメってことか。ビルトインエディタ付きのゲームはどうなんだろ？<br>フェアだと思うけど、残念ながらOSSじゃないんだよね。なぜそうする必要があるのか疑問。" userName="progbits" createdAt="2025-04-18T10:56:21" color="">}}

{{<matomeQuote body="彼らがどう考えているかは知らないけど、必要ないと思うな。Blenderと比較してみよう。BlenderはGPLで、Blenderをリラベルして販売しようとする怪しいプロジェクトの長い歴史がある。<br>ソースコードを公開する必要がある（GPL）んだけど、ダウンロードと一緒にソースコードを提供して、宣伝せずに隠すことで、法的な問題に巻き込まれずに回避できるみたいだ。" userName="riidom" createdAt="2025-04-18T12:54:18" color="#785bff">}}

{{<matomeQuote body="Blender Foundationの代わりに、アーティストが権利を持つんじゃないの？" userName="palunon" createdAt="2025-04-18T13:05:47" color="">}}

{{<matomeQuote body="誰かが自分たちのゲームエンジンを売るのを阻止したいんじゃない？めっちゃ明確じゃん。" userName="auggierose" createdAt="2025-04-18T12:04:18" color="">}}

{{<matomeQuote body="無料で使えるのに、誰がゲームエンジンを買うんだろ？存在しない問題に対する解決策みたいじゃん。" userName="rowls66" createdAt="2025-04-18T12:19:52" color="">}}

{{<matomeQuote body="僕も同じ疑問だったんだよね。誰かが追加機能付きの有料版を作って、それをコミュニティに還元しないことを心配してるんじゃないかな。例えばさ、Defoldを現在の非OSSのmodified ApacheとGPLの両方でデュアルライセンスにしたらどうかなって考えたんだ。そうすれば、次の選択肢があるわけさ。<br>１．Defoldのmodified versionを使って作成されたソフトウェアを商用化できる。ただし、modified versionのソースを公開しなくてもいいのは、Defoldのmodified version自体を商用化しない場合に限る。<br>２．Defoldのmodified versionを商用化する場合は、GPLに基づいてソースを公開する必要がある。（つまり、そのソースはアップストリームプロジェクトでも使用できる可能性がある。）<br>でも、これを書いてるうちに、この計画の欠陥に気づいちゃったんだー！アップストリームプロジェクトがデュアルライセンスだと、GPLライセンスのコードは使えないんだよね。" userName="Wowfunhappy" createdAt="2025-04-18T12:31:17" color="#ff5733">}}

{{<matomeQuote body="＞dual-license the engine under both their current non-OSS modified Apache and the GPL.<br>もしそうするなら、ぜひ“modified Apache か or the GPL”って言ってほしいな。うちの会社の弁護士は、jQuery pluginsを使うことについて大騒ぎしたんだ。“and”の代わりに“or”って書いてあったからね。" userName="Zacru" createdAt="2025-04-18T13:37:33" color="">}}

{{<matomeQuote body="なんで問題が存在しないって決めつけるの？OracleとかCanonicalとかGitHubとかRedHatとかDataStaxとか、同じようなことがいつも起きてるじゃん。誰かが価格に見合う機能を追加したり、Defoldが提供しないサポートを提供したり、Defoldがしないマーケティングをしたりできるんだよ。無料の製品と同等の有料製品は数えきれないほどあるんだから。<br>有料forkが無料のDefoldユーザーを減らすとは限らないよ。何が構築され、提供されるかにもよるけど、有料forkはエコシステムにとって良いことで、全体のユーザー数を増やすこともあるんだ。" userName="dahart" createdAt="2025-04-18T14:45:13" color="#45d325">}}

{{<matomeQuote body="もしderivative game enginesを売るのを禁止しなかったら、誰かがforkして、有料forkでしか使えない価値のある機能を追加するかもしれない。そうなるとコミュニティが分裂しちゃうかも。" userName="neallindsay" createdAt="2025-04-18T13:21:45" color="">}}

{{<matomeQuote body="Godotコミュニティがどれだけ分裂してるか見てみなよ。（全然そんなことないけど）" userName="seba_dos1" createdAt="2025-04-18T14:07:23" color="">}}

{{<matomeQuote body="それはAmazonが有料版を作るほどユーザーベースが大きくないからだよ。もしくはAmazonの誰もゲームエンジンで収益化する方法を見つけられてないか。もしそうしたら、気を付けてね。" userName="sarchertech" createdAt="2025-04-18T18:27:02" color="">}}

{{<matomeQuote body="Godotのユーザーベースは、もうAmazon Lumberyard（今のO3DE）よりも大きいんだよ。Defoldと違って、GodotとO3DEはマジで無料だし。" userName="seba_dos1" createdAt="2025-04-18T18:52:45" color="#ff5733">}}

{{<matomeQuote body="全体のユーザーベースを見るんじゃなくて、Godotで十分な収益を上げてるから商業的な機能にお金を払ってもいいと思ってるユーザーの数を見ないと。その数は圧倒的に少ないんだよ。もしGodotのゲームがUnityのゲーム並みに収益を上げてたら、Amazonがforkしてると思うよ。" userName="sarchertech" createdAt="2025-04-18T19:18:48" color="#ff5733">}}

{{<matomeQuote body="ユーザー数でマウント取ってんのアンタじゃん。でもGodotの方がまだ多いけどね。" userName="seba_dos1" createdAt="2025-04-18T21:02:32" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="誰かが売ってる改造エンジンには、重要な追加機能があるかもね。例えば、オリジナルのエンジンが対応してないコンソールに移植されたバージョンとか。移植会社はよくあるし、メインのビジネスなら移植を簡単にする社内ライブラリとか改造エンジン持ってたりする。Godotみたいなオープンソースエンジンではよくあること。移植サービスを提供する会社がドキュメントにたくさん載ってる。作者がそういう形で利益を得られるのを許すかどうかだけどね。Defoldは主要なコンソールをカバーしてるみたいだけど、ライセンスを選んだ初期の頃とか、次世代コンソールが出たときとかはそうじゃないかも。GOGやEpicみたいなPCストアとの連携もあるし。移植とか統合が楽になるなら、完成して疲れてるデベロッパーは買うかもね。マルチプレイもそう。簡単に同期できる魔法みたいな解決策もあるけど、最初から考えて設計する方が良い体験になる。でも計画とか技術とか予算が必要。そういうのがアドオンか改造エンジンかは、ライセンスとか実装による。RPG makerもエンジン上に構築されたエンジンみたいなもん。" userName="Karliss" createdAt="2025-04-18T14:10:32" color="#ff33a1">}}

{{<matomeQuote body="RPG in a Box[0]が頭に浮かんだ。Godotをもっと汎用的な「ゲームメーカー」に変えるけど、エンジンを売ってるとも言えるかもね。[0] https://rpginabox.com/ 編集: 明確化" userName="nazgulsenpai" createdAt="2025-04-18T14:30:41" color="">}}

{{<matomeQuote body="何度も書いてあるじゃん。Defoldを無料で使ってほしい、常に無料で開発者が使えるように、ソースコードも常に利用可能にしておきたいんだって。なんで聞くの？" userName="dahart" createdAt="2025-04-19T14:13:54" color="">}}

{{<matomeQuote body="書いてあるよ。「Defoldソフトウェアが第三者によって商業化されるのを防ぐ」って。" userName="dahart" createdAt="2025-04-18T14:47:34" color="">}}

{{<matomeQuote body="今のライセンスだと、マップエディタ内蔵の商用ゲームを配布するのが違反になるかどうかがハッキリしないんだよね。" userName="rpdillon" createdAt="2025-04-18T14:48:59" color="">}}

{{<matomeQuote body="変わったライセンスなのに、みんなが問題視するのがそれだけってスゴくない？ちょっと問題っぽいけど、ハッキリさせれば解決しそうじゃん？" userName="bee_rider" createdAt="2025-04-18T16:06:50" color="">}}

{{<matomeQuote body="それって実際には問題ないよ。ゲームにエンジンの編集ツールなんて普通入れないし。エンジンの編集ツールはそういう用途に向いてないんだって。Photoshopをゲームに入れて、キャラの髪色変えれるようにするみたいなもんでしょ。" userName="sarchertech" createdAt="2025-04-18T18:22:41" color="#ff5c5c">}}

{{<matomeQuote body="ライセンスの解釈が違うんじゃないかな。Defoldのツール使ってるかどうかは関係なくて、商用製品でゲームのコンテンツを改造できるようにするのがダメなんじゃない？<br>＞“Game Engine Product”っていうのは、ビデオゲーム開発に使われるソフトウェアのこと。コンテンツ作成ソフトと、作成したコンテンツを表示するソフトの両方を含む。<br>ライセンスでは、以下の場合に再配布が認められてる。<br>＞a) その成果物または派生物を、Game Engine Productとして販売または商業化しないこと。<br>つまり、ゲームコンテンツを改造できるツールは全部Game Engine Productってことになって、Defoldで作ったGame Engine Productを売るのはダメってことだと思う。" userName="rpdillon" createdAt="2025-04-19T17:21:27" color="#ff33a1">}}

{{<matomeQuote body="ライセンスをちゃんと読んだら、もっと問題なさそう。“as a game engine product”として売っちゃダメって書いてあるのがポイント。ゲームがビデオゲーム開発に使われる可能性があるだけじゃなくて、普通の人がビデオゲーム開発ソフトとして売ってるって思わないとダメってこと。Robloxみたいなゲームエンジンでもあるゲームはグレーゾーンだけど、Defoldが訴えてきて、パズルゲームの無料レベルを作るマップエディタがビデオゲーム開発ソフトとして売ってるって判断される可能性は低いから、気にしなくていいレベル。Robloxみたいなの作りたいならDefoldは向かないけど、そうでなければ心配無用。" userName="sarchertech" createdAt="2025-04-20T00:57:43" color="#45d325">}}

{{<matomeQuote body="Valveのゲームみたいに、ゲーム制作に使ったツールをそのまま配布してるゲームも結構あるよ。" userName="Philpax" createdAt="2025-04-18T22:47:11" color="">}}

{{<matomeQuote body="エンジンの編集ツールをそのままゲームに入れるなんてありえない。編集ツールは強力すぎるし、一般プレイヤーには難しすぎるから。" userName="sarchertech" createdAt="2025-04-18T18:19:39" color="">}}

{{<matomeQuote body="ゲームによってはアリかもよ？(ゲームによって文化が違うし)。それを元にして、もっと使いやすいものを作るかもしれないし。" userName="Zambyte" createdAt="2025-04-18T19:22:18" color="">}}

{{<matomeQuote body="ライセンス的には、自分でマップエディタ作っても規約から逃れられないっぽいね。マップエディタってゲームコンテンツ編集できるから、ゲームエンジン製品に分類されちゃうし。Defoldで作ったゲームエンジン製品の再配布は禁止されてるから。" userName="rpdillon" createdAt="2025-04-19T17:23:54" color="">}}

{{<matomeQuote body="これ、元々はKing Games(Candy Crushの会社)で作られてたんだよね。買収される前に。だから、ライセンスモデルがちょっと変わってるのかも。" userName="chucklenorris" createdAt="2025-04-18T14:06:23" color="">}}

{{<matomeQuote body="＞別のスレッドで書いたんだけど、hyperscalersとか大企業がプロダクトをパクるのを防ぐために、source availableにするってのはアリだよね。<br>https://news.ycombinator.com/item?id=43728095" userName="echelon" createdAt="2025-04-18T13:58:16" color="">}}

{{<matomeQuote body="これは、よくある「エンタープライズサポート」と「配布」のビジネスモデルっぽいね。持続可能だし、コミュニティとメンテナー両方にメリットがある。ウェブサイトにはこう書いてあるよ。<br>サポートページ: Defoldで作ったゲームのパブリッシュ支援についてはbusiness@defold.seまで。<br>概要ページ: 製品開発、マーケティング、サポート、セールスはRefold ABが担当。Defoldチームのメンバーが所有してて、Defold製品の日常業務を委託されてる。<br>オープンページ: Defoldのロードマップはもう公開しないことにした。<br>ステータスページ: Defoldはサブスクリプションモデルには絶対にならないし、ロイヤリティも要求しない。ライセンス料も取らない。メインプロダクトへのアクセスにお金を請求することはない。<br>FAQページ: どんなユーザー追跡してるの？ サービスと製品を改善するために、ウェブサイトとDefoldエディタから匿名で使用状況データを記録してる。<br>スタートアップとかビジネスの成長でよくあるSaaSをたくさん使ってるね。フォーラムはDiscourseだし、アナリティクスも色々入れてる。SendInBlueも使ってる。コミュニティの健全性と成長をすごく意識してるみたい。すごい人が運営してるみたいだね。Amazonとかが他のオープンソースプロジェクトでやってきたように、誰かに盗まれないように、商業的なサポートを提供することで、自分たちを維持してるみたい。その一方で、クールなコミュニティ主導のゲームエンジンを作ってるんだね。<br>[1]https://defold.com/support/<br>[2]https://defold.com/about/<br>[3]https://defold.com/open/<br>[4]https://defold.com/status/<br>[5]https://defold.com/faq/faq/<br>[6]https://forum.defold.com/ ; Discourseはカスタムドメインだと月100ドル以上かかる" userName="echelon" createdAt="2025-04-18T20:05:02" color="#ff5c5c">}}

{{<matomeQuote body="＞(そして、多くの人がするように、”オープンソース”を誤用しようとしていない)<br>彼らがやめようとしたのは、反発を受けたからだよ。最初の発表は”Defoldがオープンソースになる”っていうものだった。" userName="seba_dos1" createdAt="2025-04-18T14:04:34" color="">}}

{{<matomeQuote body="Defoldにはちょっと愛着があるんだよね。ゲーム開発の分野ではユニークだし。例えば、組み込みのGUIエディタはClojureでできてるんだ！https://github.com/defold/defold/tree/dev/editor(GUIはcljfxで、seesawを応援してる)。スウェーデンのゲーム開発スタジオ(Kingとか？)から生まれたみたいだから、商業リリースの実績もある。コンソールプラットフォームのビルド/リリースツールはお金がかかるみたいだけど、Defoldはライセンスとかでフェアであろうとしてる印象がある。" userName="tunaoftheland" createdAt="2025-04-18T12:39:30" color="#ff33a1">}}

{{<matomeQuote body="Defoldの話が出てきて嬉しいな。昔、エディタの開発してたんだ。実は、Defoldの2番目のIDEなんだよ。最初に作ったのはEclipseベースだった。6人くらいのチームで、IDEのコアを置き換えて、1年間で12個くらいのツールを作ったんだ。楽しいプロジェクトだった。ClojureでデスクトップGUIを作ったって言える人は少ないよね。" userName="mtnygard" createdAt="2025-04-18T16:46:51" color="#785bff">}}

{{<matomeQuote body="もしKingなら、巨大な(資金的な)後ろ盾があるね。KingはCandy Crushのおかげで、2011年の6200万ドルから2013年には18億8000万ドルに収益が跳ね上がった、最も収益性の高いゲームパブリッシャーの一つ。2016年にActivision Blizzardに買収され、2023年にはMicrosoftに買収された。<br>WikiにもDefoldエンジンについて書いてあるね。2007年に最初に開発されて、2013年にKingに買収され、2016年に現在のライセンスモデルになった。" userName="Cthulhu_" createdAt="2025-04-18T13:03:54" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Candy Crushの中毒性を考えると、麻薬王が病院を建ててるようなもんだね。Candy Crushは麻薬ほど危険じゃないけど、ゲームエンジンは病院ほど役に立たない。" userName="croes" createdAt="2025-04-18T17:49:00" color="">}}

{{<matomeQuote body="AFAIK、KingがDefoldを財団としてスピンアウトさせたんだって。" userName="mtnygard" createdAt="2025-04-18T16:47:31" color="">}}

{{<matomeQuote body="そうそう、2020年の初めにそうなったんだよね。DefoldはKing時代よりもDefold Foundationになってからのほうが公開期間が長いんだ。Kingはもうずいぶん前からDefoldとは関係ないよ。" userName="britzl" createdAt="2025-04-18T20:17:22" color="#45d325">}}

{{<matomeQuote body="Defoldはずっと前からあるよね。なんで今頃フロントページに出てるのかわからないけど。それはさておき、Defoldは良いんだけど、コミュニティとかドキュメントはGodotに比べるとちょっと弱いかな。MonoGame (Stardew Valleyはこれで書かれた)とか、UnityとかUnrealみたいな大物もあるよね。どれだけ学習に投資したいか、どんな機能が欲しいか、トレードオフとかプラットフォームとか、プログラミング言語とかスタイルとか、いろいろ考えなきゃね。" userName="rockyj" createdAt="2025-04-18T14:39:31" color="#45d325">}}

{{<matomeQuote body="Luaの記事がフロントページに出たからだよ。DefoldはLuaを使ってるし。<br>＞https:／／news.ycombinator.com／item?id=43723088" userName="croes" createdAt="2025-04-18T17:50:52" color="">}}

{{<matomeQuote body="Monogameが大好きすぎてどうしようもない。使うのがめっちゃ楽しいんだ。" userName="hokumguru" createdAt="2025-04-19T01:43:34" color="#785bff">}}

{{<matomeQuote body="関連する投稿がここにあるよ。Luaで6万行のゲームエンジン。<br>＞https:／／news.ycombinator.com／item?id=43723088" userName="magicalhippo" createdAt="2025-04-18T10:57:26" color="">}}

{{<matomeQuote body="Unityが初めて登場した時のことを覚えてるよ。資料を読んだ時の感覚は「これはマジですごいことになるかも」って感じだった。Defoldも同じような感覚があるんだよね。チームのコミュニケーションとか言語の精神とかで、良いものを持ってるってわかる時があるんだ。マルチプラットフォームのエクスポートが充実してるのは大きいよね。Godotの最大のハードルはコンソール対応だったし。唯一の不満はLuaだけってことかな。C#だったらもっと嬉しかったけど、C++みたいにフルコンパイルじゃないだけマシか。" userName="bentt" createdAt="2025-04-18T13:10:19" color="#45d325">}}

{{<matomeQuote body="Godotはコンソールをサポートしてるよ。サードパーティに任せてるだけ。Switchの開発者ならコミュニティのサポートがあるし、W4 Gamesがエクスポートプラグインをライセンスしてる。コンソールのSDKがNDAで保護されてるから、エンジンみたいにオープンに開発できないんだよね。コンソールがもっと特殊だった時代の名残だね。" userName="tapoxi" createdAt="2025-04-18T13:15:33" color="#ff5c5c">}}

{{<matomeQuote body="Godotはマジで良いよね。サードパーティが頑張ってるのもその通り。大変みたいだけど。Kingとの関係でDefoldは楽になってるのかな？" userName="bentt" createdAt="2025-04-18T13:29:13" color="">}}

{{<matomeQuote body="W4 Gamesを移植の選択肢として挙げるのはやめてほしい。一番安いプランでも年間2000ドルもするんだよ。ほとんどのインディーズゲームは数百本しか売れないのに。" userName="saejox" createdAt="2025-04-18T15:52:44" color="">}}

{{<matomeQuote body="そんな値段でコンソール対応してくれるところなんて、まず見つからないって。UnityとかGameMakerのコンソール対応と比べれば、似たようなもんだってわかるよ。<br>自分でエンジンをコンソールに移植するとなると、何百時間もかかるけど、それを他の会社が3つ全部のコンソール向けにたったの2000ドルでやってくれるなんて、かなりお得じゃん！" userName="japhib" createdAt="2025-04-18T16:44:17" color="#ff5733">}}

{{<matomeQuote body="ほとんどのインディーゲームは、まずSteam/Steam Deckで売って、そのあとインディーパブリッシャーに拾われてからコンソールに移植するよね。<br>2000ドルっていうのは、3つのコンソール全部に移植する場合で、1つあたり800ドルってこと。だから、W4でPlayStationだけをターゲットにして、Switchはコミュニティ移植版を使うっていうのもありだよね。" userName="tapoxi" createdAt="2025-04-18T16:21:30" color="#ff5733">}}

{{<matomeQuote body="そのサードパーティは、Godotのリーダーシップと経営陣が所有してるんだって。Godotへの貢献は、彼らの懐を肥やすことになるんだね。" userName="neonsunset" createdAt="2025-04-18T17:49:59" color="">}}

{{<matomeQuote body="他のサードパーティの移植業者の一覧はこちら：<br>＞https://docs.godotengine.org/en/stable/tutorials/platform/co...”<br><br>デマを広めるのはやめて。FOSSなんだから。systemdに貢献するとRed Hatの懐が潤うって言ってるようなもんだよ。" userName="maheart" createdAt="2025-04-18T22:56:32" color="">}}

{{<matomeQuote body="systemdの状況は、Godotの特殊な事情や経営陣の怪しいやり方とは比較できないよ。本質的にはオープンコアだけど、私有の製品なんだ。Unityよりはマシだと思うけど、真の意味でのFOSSエンジンとは言えないね。" userName="neonsunset" createdAt="2025-04-19T01:15:54" color="">}}

{{<matomeQuote body="W4 games（または他の移植業者）に、プロプライエタリなコンソール向けのFOSSエクスポーターをどうやってリリースしろって言うのさ？　彼らはNDAで保護されたSDKに頼ってるんだから。" userName="maheart" createdAt="2025-04-19T04:36:45" color="#45d325">}}

{{<matomeQuote body="静的型付けが欲しいだけなら、Typescriptを書いてLuaにコンパイルできるよ：<br>＞https://typescripttolua.github.io/”" userName="japhib" createdAt="2025-04-18T16:41:34" color="">}}

{{<matomeQuote body="Defoldのサイトではこう勧めてるよ：<br>＞Optional typed Lua using Teal.<br>https://defold.com/product/<br>https://defold.com/assets/teal/<br>https://github.com/teal-language/tl”" userName="anentropic" createdAt="2025-04-18T20:25:28" color="">}}

{{<matomeQuote body="こっちも：<br>＞https://ts-defold.dev/”" userName="britzl" createdAt="2025-04-18T20:28:49" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
