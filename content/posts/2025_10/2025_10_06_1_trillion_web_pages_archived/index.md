+++
date = '2025-10-06T00:00:00'
months = '2025/10'
draft = false
title = '1兆のWebページがアーカイブされた！'
tags = ["インターネットアーカイブ", "Webアーカイブ", "データ保存", "分散システム", "デジタル遺産"]
featureimage = 'thumbnails/purple4.jpg'
+++

> 1兆のWebページがアーカイブされた！

引用元：[https://news.ycombinator.com/item?id=45487476](https://news.ycombinator.com/item?id=45487476)




{{<matomeQuote body="archive.orgのP2Pミラーリング機能があったら嬉しいな。本家のアプリはすぐエラーになるし。Bittorrentみたいにゆっくりミラーして、P2Pで提供できたら最高！ArchiveBoxも使ってるけど、結局IAの膨大なデータには敵わないね。" userName="arjie" createdAt="2025/10/06 05:10:01" color="#ff33a1">}}




{{<matomeQuote body="ディスク容量をarchive.orgに寄付して、レアなコンテンツをミラーリングするシステムを考えたんだ。Bittorrentベースでコンテンツ配信もできる。いくつかのアーカイブチームに提案したけど、誰も興味示さなくて、結局作らなかったな。" userName="stavros" createdAt="2025/10/06 13:51:07" color="#38d3d3">}}




{{<matomeQuote body="IAってIPFS使わないのかな？ 古いWebサイトだとJavaScriptやCSSが動かない問題もあるし。当時のデータから壊れたコードを修正できたらいいのにね。IAでドメイン選んだら、WARファイルをデスクトップクライアントがダウンロードして、オフラインで見れるようになったら最高だよね。" userName="giancarlostoro" createdAt="2025/10/06 13:41:29" color="#45d325">}}




{{<matomeQuote body="長期的にインターネットアーカイブのリソースを維持するのは本当に難しい問題だよね。Filecoinもうまくいかないと思う。アーカイブ維持の重要性を感じる人と、金銭目的でストレージを運営する人では目的が違いすぎるから。IAに直接お金を送って、ストレージ費用を賄う方が現実的だよ。（IAボランティアより）" userName="toomuchtodo" createdAt="2025/10/06 13:56:02" color="#ff5733">}}




{{<matomeQuote body="Anna’s Archiveに、まさにこのシステムがあるよ。Freenetみたいな感じだね。" userName="1gn15" createdAt="2025/10/06 13:58:11" color="">}}




{{<matomeQuote body="僕の考えてるシステムはボランティア制で、レアなファイルを最小限にするように自動でバランスを取るんだ。長期コミットメントは難しいから、短期参加をすごく簡単にすれば、全体でうまくいくんじゃないかな。" userName="stavros" createdAt="2025/10/06 13:59:17" color="#38d3d3">}}




{{<matomeQuote body="「バージョン管理された」Bittorrentってあるのかな？ 適切なPGPキーがあれば、Bittorrentとパッケージングシステムを組み合わせて、更新可能なディストリビューションができるかもね。" userName="zapataband2" createdAt="2025/10/06 05:26:11" color="">}}




{{<matomeQuote body="Freenetは暗号化がすごいけど、それは今回の話とは違うね。Anna’s ArchiveってBittorrent以外に何があるんだろう？" userName="stavros" createdAt="2025/10/06 13:59:47" color="">}}




{{<matomeQuote body="Anna’s ArchiveもBittorrentを使ってるね。僕もActivityPubでIAみたいなのを作ろうと調べてたんだけど、IPFSは誰も使わないってIAと同じ結論に至ったよ。一般ユーザーには難しいし、ツールも少ない。結局Bittorrentの方が実用的なんだよね。" userName="TechSquidTV" createdAt="2025/10/06 13:49:22" color="#45d325">}}




{{<matomeQuote body="ちょっと混乱してるんだけど、これってディスクスペースを提供できるシステムじゃないの？<br>https://annas-archive.org/torrents<br>何か誤解してる気がするな。" userName="1gn15" createdAt="2025/10/06 16:21:21" color="">}}




{{<matomeQuote body="いや、別に俺は何にもしてないよ、今はただの設計だしね。でも、いいデザインだと思うんだ。<br>もしどの Archive Teamでもこれに協力したいなら、ぜひ実現したいな。分散型でボランティア主導のバックアップのための、良い FOSS システムを作れると嬉しいね。" userName="stavros" createdAt="2025/10/06 14:09:55" color="">}}




{{<matomeQuote body="トレントの問題は、ファイルが変わると（たまに小さいメタデータ変更でも）更新されて、シーダーが見つからなくなることだね。<br>古いハッシュのリストも持っておけば、少なくとも手動で古いトレントからデータを復元しようとできるんじゃないかな？" userName="kevincox" createdAt="2025/10/06 14:39:53" color="#45d325">}}




{{<matomeQuote body="textfilesにメールしてみたらどう？<br>彼なら ArchiveTeamの誰に繋ぐべきか知ってるし、IAの分散型 Webの人たちと繋がる機会もあるかもよ。<br>君のアーキテクチャは torrentプリミティブに依拠しているから、Filecoinや IPFSより優れてるって強く信じてるんだ。（IAを信頼できる情報源とし、最後の手段のストレージシステムとする。→アイテムインデックス→トレントインデックス→グローバルな torrentスウォーム）" userName="toomuchtodo" createdAt="2025/10/06 14:14:56" color="#ff5733">}}




{{<matomeQuote body="俺のシステムは、「X GB提供したい」って言うだけで、あとは全部処理してくれるんだ。スペースを埋めたり、珍しい torrentsを入手したり、アップデートしたりね。<br>ただ torrentをダウンロードして終わりじゃなくて、グローバルに分散した信頼性の低い JBODを中央サーバーが「プッシュ」方式で管理する、って考えるといいよ。" userName="stavros" createdAt="2025/10/06 16:23:42" color="#38d3d3">}}




{{<matomeQuote body="なんか Wualaに似てるね。<br>https://www.youtube.com/watch?v=3xKZ4KGkQY8" userName="zerd" createdAt="2025/10/06 18:57:06" color="">}}




{{<matomeQuote body="それは古い情報だよ。<br>こういった問題は BitTorrent Enhancement Proposalsで解決済みだよ。新しい torrentは作るけど、スウォームのメンバーにとっては古い torrentを更新するのと機能的に同じ方法で配布されるんだ。<br>BEP-0039と BEP-0046を見てみて。これらは torrentを更新するための HTTPと DHTのメカニズムをそれぞれカバーしてるよ。<br>https://www.bittorrent.org/beps/bep_0039.html<br>https://www.bittorrent.org/beps/bep_0046.html<br>もしその更新された torrentが BEP-0052（v2）torrentなら、ファイルごとにハッシュされるから、変更されていないファイルについては更新された v2 torrentでも同じハッシュになるよ。<br>https://www.bittorrent.org/beps/bep_0052.html<br>これは BEP-0038と組み合わされるから、更新された torrentはファイルを共有する古い torrentの infohashを参照できるんだ。だから、古いものを持っていれば、変更されたファイルだけダウンロードすればいいんだよ。<br>https://www.bittorrent.org/beps/bep_0038.html" userName="Lammy" createdAt="2025/10/06 16:04:57" color="#ff5c5c">}}




{{<matomeQuote body="Internet Archiveとは別の Archive Teamが、Internet Archiveの一部を分散バックアップしてたんだ。<br>https://wiki.archiveteam.org/index.php/INTERNETARCHIVE.BAK<br>ただ、もう何年か休止状態だけどね。" userName="pronoiac" createdAt="2025/10/06 13:31:15" color="">}}




{{<matomeQuote body="Webアーカイブは本当に遅いってのは確認済みだよ。<br>AIスクレイパーが帯域幅のボトルネックを作ってるのを見たことがある気がする。<br>一部のデジタルアーカイブでは科学的なアカウントを作る必要があるんだ（Common Crawlがそうだったと思う）。<br>データはかなり簡単に巨大になるし、多くのものを保存するのが目標だからね。インターネットだけでなく、時間の次元も加えて保存してるし。<br>データが多すぎるから、ナビゲートしたり検索したりするのが難しくて、簡単に使えなくなるんだ。<br>例えば、だから俺は自分のメタデータリンクを作ったんだよ。ドメインに関する情報が必要だったからね。<br>Link:https://github.com/rumca-js/Internet-Places-Database" userName="renegat0x0" createdAt="2025/10/06 11:46:53" color="#ff33a1">}}




{{<matomeQuote body="あれこれ言われてるけど、結局IPFSとかってどのクライアントやライブラリに実装されたの？もう何年も経ってるんだけど。" userName="NoMoreNicksLeft" createdAt="2025/10/06 16:15:40" color="">}}




{{<matomeQuote body="今ちょっと探したんだけど、archive.orgの人が書いためっちゃ長いブログかコメントで、IPFSは遅すぎるしトランザクション量も多いから実用的じゃないって結論付けてたのを読んだ気がするんだよね。その記事見つけたい！<br>編集: https://github.com/internetarchive/dweb-archive/blob/master/..." userName="komali2" createdAt="2025/10/06 14:25:10" color="#ff33a1">}}




{{<matomeQuote body="だってIPFSで誰もピンしないからね。正直、今は余計な手順を踏むHTTPみたいなもんだよ。" userName="stavros" createdAt="2025/10/06 13:44:22" color="#ff5733">}}




{{<matomeQuote body="そうそう、前にスクレイピングで過去のWebページを見ようとした時、Internet Archiveから情報取るのがめっちゃ大変だったよ。結局、https://pypi.org/project/pywaybackup/っていうライブラリを使ったらかなり助けられたけどね。" userName="uses" createdAt="2025/10/06 15:51:51" color="#ff33a1">}}




{{<matomeQuote body="IPFSってアイデアは最高なのに実行がイマイチだよね。コンテンツアドレス型ストレージ自体はすごく良いけど、実際の大きい規模（ハードディスク1台以上）で使うのはめっちゃ難しいよ。" userName="outside1234" createdAt="2025/10/06 13:53:34" color="#38d3d3">}}




{{<matomeQuote body="彼にメールしたけど、まだ返信ないんだよね。もしもう少し詳しい情報が知りたかったら、僕が書いた短い設計ドキュメントがこれだよ: https://gist.github.com/skorokithakis/68984ef699437c5129660d..." userName="stavros" createdAt="2025/10/12 16:06:07" color="#785bff">}}




{{<matomeQuote body="それは他のコレクションしかカバーできないよ。だって、Wayback MachineのWebスクレイプから得られるWARCファイルは公開されてないんだもん。" userName="smallerize" createdAt="2025/10/06 15:30:56" color="">}}




{{<matomeQuote body="トレントの更新に関するBEPがいくつかあるよ:<br>https://www.bittorrent.org/beps/bep_0039.html<br>https://www.bittorrent.org/beps/bep_0046.html" userName="pabs3" createdAt="2025/10/06 05:39:51" color="#ff5c5c">}}




{{<matomeQuote body="BitTorrent v2っていう標準があるんだけど、残念ながらほとんどのFOSS torrentクライアントは対応してないんだよね。一部はリリース当初のLibtorrent 2.0.xのIO性能が悪かったせいで、torrentクライアントが1.2.xブランチに戻っちゃったからさ。詳しくはここ見てね: https://blog.libtorrent.org/2020/09/bittorrent-v2/" userName="throawayonthe" createdAt="2025/10/06 11:01:16" color="#38d3d3">}}




{{<matomeQuote body="SciOpがその分野でなんかやってるみたいだよ、カタログサイトとWebseedsでね。ここがそのサイト: https://sciop.net/" userName="pronoiac" createdAt="2025/10/06 13:43:35" color="">}}




{{<matomeQuote body="やあ、Internet Archiveでデータセンターやインフラチームを運営してる者だけど！この秋に開催されるいろんなイベントにぜひ来てほしいな。もしチケット代の支払いが難しい場合は、僕にメールしてくれれば（プロフィールにアドレスがあるよ）、可能なら招待するから遠慮なく言ってね！" userName="jonah-archive" createdAt="2025/10/06 05:41:33" color="#ff5733">}}




{{<matomeQuote body="イベントは世界中で分散開催されるの？それともチームが集まってる場所（多分サンフランシスコかな？）だけなのかな？<br>P.S. Internet Archiveのチームのみんな、本当にありがとう！君たちが提供してるものは人類にとってすごく重要なことだよ。" userName="psychoslave" createdAt="2025/10/06 07:08:54" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ねぇQ、Internet Archiveのサイズってどれくらいなの？" userName="moralestapia" createdAt="2025/10/06 07:02:53" color="">}}




{{<matomeQuote body="大まかに言うと、ユニークデータは150〜200ペタバイトの間ってとこかな。僕が最後に確認した時は、その範囲の低めだったと思うよ。" userName="textfiles" createdAt="2025/10/08 01:57:34" color="#ff5733">}}




{{<matomeQuote body="それは十分デカいから、実際の物理的な磁気チャージで取り込まれたデータって、人が感じられるくらいの重さがあるのか気になるな。もちろんハードウェアは家一つを埋め尽くすだろうけど、世界のデータが、少なくとも理論上だけど、はっきりとした物理的な現実になるのはどの時点なんだろうね？" userName="metalman" createdAt="2025/10/06 11:19:31" color="#ff33a1">}}




{{<matomeQuote body="Exabyteか、それに近いサイズだと思うな。" userName="the_real_cher" createdAt="2025/10/06 11:21:44" color="">}}




{{<matomeQuote body="一番知りたいのは、そんなにたくさんのアーカイブページをどうやって信頼性高く安全に保存・ホストしてるのかってこと！この巨大なプロジェクトについて簡単に説明してくれない？<br>あと、この素晴らしい成果、本当におめでとう！君たちは僕にとっての情報の頼みの綱だよ。追記: 全部で何テラバイトになるの？" userName="southernplaces7" createdAt="2025/10/06 09:23:25" color="#45d325">}}




{{<matomeQuote body="NSAが米国のサーバーにアクセスできるのはみんな知ってるよね。悪意ある改ざんからアーカイブをどう守ってるの？不変ストレージとか使ってる？ポスト量子暗号で安全なの？" userName="WhereIsTheTruth" createdAt="2025/10/06 08:13:25" color="#45d325">}}




{{<matomeQuote body="なんでそんなことするんだ？これまで彼らが誰かのウェブサイトを”悪意を持って改ざん”した事例って見たことある？" userName="gosub100" createdAt="2025/10/06 12:09:36" color="">}}




{{<matomeQuote body="Internet Archive（IA）がアーカイブしてるデータの完全性と不変性に疑問があるだけだよ。なんでデータを改ざんするのか知りたい？<br>https://seclab.cs.washington.edu/2017/10/30/rewriting-histor...<br>https://blog.archive.org/2018/04/24/addressing-recent-claims...<br>NSAはすでにRSAにバックドアを仕掛けるために金を払い、ハッキング済みのルーターを流通させているのがバレた。QUANTUMでページを書き換えたり、感染したリモートマシンからデータを抜き取ったりできるんだぜ。他に何ができると思う？<br>https://www.amnesty.org/en/latest/news/2022/09/myanmar-faceb..." userName="WhereIsTheTruth" createdAt="2025/10/06 13:24:46" color="#ff5c5c">}}




{{<matomeQuote body="Internet Archive（IA）自身がデータを改ざんする可能性もあるんじゃない？もともと公式な歴史的スナップショットとして、真剣な目的で使われるようには作られてないし。でもこれまでにも注目されるネットの騒動でそういう使われ方をしてきたよね。ひそかに改ざんされて悪意のある目的で参照されるのは時間の問題だと思う（たぶん選挙中とかに）。" userName="gosub100" createdAt="2025/10/06 16:30:31" color="#45d325">}}




{{<matomeQuote body="もしヨーロッパにいるなら、Software Heritage（Internet Archiveに似てるけど、ソースコード専門）も検討してみてね。<br>https://www.softwareheritage.org/jobs/" userName="pabs3" createdAt="2025/10/06 06:59:59" color="#45d325">}}




{{<matomeQuote body="Internet Archiveは今アムステルダムにも拠点があるんだって。" userName="msephton" createdAt="2025/10/06 10:29:01" color="">}}




{{<matomeQuote body="ここで話してるイベントって何のこと？" userName="awesomeMilou" createdAt="2025/10/06 05:49:34" color="">}}




{{<matomeQuote body="たぶんこれらだよ。<br>https://blog.archive.org/events/" userName="jackling" createdAt="2025/10/06 06:29:31" color="#45d325">}}




{{<matomeQuote body="この偉業に関する技術的な詳細を知りたいな。例えばそもそもどうやってクローリングするのかとかストレージのこととか。" userName="vettyvignesh" createdAt="2025/10/06 08:11:49" color="">}}




{{<matomeQuote body="もっとコンテンツをアーカイブするのを手伝いたいなら、ArchiveTeamっていうボランティアグループがあるよ。彼らはIAにデータを提供してるんだ。興味あるならhttps://archiveteam.org/を見てみたら？" userName="pabs3" createdAt="2025/10/06 05:40:53" color="#45d325">}}




{{<matomeQuote body="みんなの旅行の写真を無料で保存する場所になっちゃわないように、ちゃんと人間が「これ、アーカイブする価値あるね」って決めなきゃいけないんじゃない？" userName="londons_explore" createdAt="2025/10/06 19:39:13" color="#785bff">}}




{{<matomeQuote body="ArchiveTeamのメンバーがウェブサイトのクロールを始められるんだ。誰でもリクエストできるし、理由を伝えればだいたいクロールしてくれるよ。" userName="pabs3" createdAt="2025/10/07 04:59:58" color="#785bff">}}




{{<matomeQuote body="1兆ページもアーカイブしたのはすごいけど、検索できないのはもったいないなぁ。URLがわかってないと見つけられないのは不便だよね。アーティスト名とかファイル名、画像の中身とかで検索できるようになるといいのに。" userName="msephton" createdAt="2025/10/06 10:32:39" color="#45d325">}}




{{<matomeQuote body="それを全部インデックス化するなんて、めちゃくちゃ大変だろうね。" userName="qwertytyyuu" createdAt="2025/10/06 10:36:11" color="">}}




{{<matomeQuote body="時間軸も考慮したら、今のインデックス戦略とそんなに変わらないんじゃないかな。別のサイトみたいに動いて、あとでドメインごとに結果をまとめるとか？" userName="Exuma" createdAt="2025/10/06 10:49:29" color="">}}




{{<matomeQuote body="Googleみたいな企業の問題だったらすぐ解決するだろうけど、誰かがお金もらってやらない限り、世の中って動かないもんだよね。" userName="citbl" createdAt="2025/10/06 10:40:02" color="#38d3d3">}}




{{<matomeQuote body="AI企業がIAとかCommon Crawlからすごく恩恵を受けてるのに、少しもお金が還元されないのは残念だよね。" userName="Keyframe" createdAt="2025/10/06 10:49:04" color="#ff5c5c">}}




{{<matomeQuote body="Kagiか何かで、こういう検索機能があった気がするんだけどなぁ。今見つけられないんだよね。" userName="1gn15" createdAt="2025/10/06 13:57:09" color="">}}




{{<matomeQuote body="それってプライバシー的にどうなの？robots.txtが無効になって、サイトを削除するのも後からじゃできなくなる、並行ウェブができちゃうじゃん。データは公開されてるから避けられないけど、IAを検索可能にするのはマジでやばいと思う。" userName="bluebarbet" createdAt="2025/10/06 11:33:43" color="#ff5c5c">}}




{{<matomeQuote body="実はね、Internet Archiveはrobots.txtを遡及的に尊重してると思うんだ。例えば、今disallowリストに追加したら、1年前のWebayback Machineのスクレイプも公開アクセスから削除されるって。でも、もしかしたら違うかもしれないから、詳しい人がいたら教えてほしいな。" userName="breakingcups" createdAt="2025/10/06 12:42:46" color="">}}




{{<matomeQuote body="記憶が正しければ、Internet Archiveはrobots.txtが悪用されて古いページの削除に使われるようになったから、もう気にしなくなったんだよね[1]。ページを削除してほしい場合は、フォームと理由が必要だよ[2]。(robots.txtはプライバシー対策じゃなくて、クローラーが同じ場所をぐるぐる回るのを防ぐためのものだからね！)<br>[1] https://blog.archive.org/2017/04/17/robots-txt-meant-for-sea...<br>[2] https://help.archive.org/help/how-do-i-request-to-remove-som..." userName="1gn15" createdAt="2025/10/06 16:26:57" color="#45d325">}}




{{<matomeQuote body="へぇ、知れて良かったよ。個人的な意見だけど、あまり共感されてないみたいだけど、サイトをネットから削除するってことは、歴史的にアクセスできなくなって、インデックスされず、簡単な検索でも見つからなくなるって意味だったはず。もし今後その常識を変えるなら、少なくとも遡及的に尊重するのが礼儀だと思うんだ。" userName="bluebarbet" createdAt="2025/10/07 10:06:15" color="">}}




{{<matomeQuote body="それって、一度リリースされたものは完全に「リリースされてない」状態にはできないっていう考え方と矛盾するんじゃないかな。" userName="fragmede" createdAt="2025/10/07 10:17:20" color="">}}




{{<matomeQuote body="そうかもしれないね。以前調べたけど、はっきりした答えは出なかったんだ。でも、サイトをオフラインにするってことは、robots.txtの`Disallow`の究極の指示だって、広く理解されてきたはずだから、それを尊重すべきだよ。" userName="bluebarbet" createdAt="2025/10/06 14:32:20" color="">}}




{{<matomeQuote body="関連情報だよ: https://wiki.archiveteam.org/index.php/Robots.txt<br>(あと、こういう機能を禁止しちゃうと、開発が裏に潜るだけで、DRMみたいに真っ当なユーザーだけが損をするってことも考えてみてね。)" userName="1gn15" createdAt="2025/10/06 16:18:32" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺はGPTウェブ検索を使ってて、いつもInternet Archiveから教科書を探すんだ。教科書にはすごくいいんだけど、ウェブページについてはどうかな。" userName="emporas" createdAt="2025/10/06 10:40:59" color="">}}




{{<matomeQuote body="関連するブログ記事で体験談を募集してるよ:https://blog.archive.org/2025/09/23/celebrating-1-trillion-w..." userName="ChrisArchitect" createdAt="2025/10/06 04:56:53" color="">}}




{{<matomeQuote body="Internet ArchiveとCommon Crawlって一緒に仕事したことあるのかな？範囲とかインフラってどう違うんだろう？目的は違うけど、やってることは基本的に似てるよね。" userName="ks2048" createdAt="2025/10/06 10:40:33" color="#ff33a1">}}




{{<matomeQuote body="Internet ArchiveはCommon CrawlとかArchiveTeamとか、他のグループからのWARCを取り込んでると思うよ。" userName="pabs3" createdAt="2025/10/06 11:09:58" color="#ff33a1">}}




{{<matomeQuote body="IAがAI企業と取引して全アーカイブを渡すって話。多額の寄付をくれたらアーカイブを維持できるし、データも全部渡す。もし断ったら、ダウンロード速度は激遅になるし、全部手に入れるのに何年もかかるぞ。" userName="londons_explore" createdAt="2025/10/06 19:36:00" color="#45d325">}}




{{<matomeQuote body="そんなことしたら、IAが公共財として築き上げてきた信頼がぶっ壊れるぜ。みんな自分のコンテンツがアーカイブされるのは気にしないけど、データを売るのは許さないだろうな。" userName="Lapra" createdAt="2025/10/06 19:51:09" color="#ff5733">}}




{{<matomeQuote body="統計が見れたら面白いだろうな。データ量がどれくらいかとか、分布はどうなってるのかとか。時間でページが重くなってるし、同じページが何度もアーカイブされてるから、その辺も気になるぜ。" userName="ehsanu1" createdAt="2025/10/06 04:56:09" color="">}}




{{<matomeQuote body="IAが著作権屋に閉鎖されてないのが不思議だぜ。IAは遅すぎて使えないから、俺はいつもarchive.isを使ってる。でも、彼らの努力には敬意を払うよ。" userName="FooBarWidget" createdAt="2025/10/06 06:37:52" color="">}}




{{<matomeQuote body="閉鎖はされなかったけど、訴訟に負けて著作権コンテンツの貸し出しができなくなって、かなり不便になったよ。それから俺のサイト利用は10分の1に減ったな。" userName="groos" createdAt="2025/10/06 16:24:55" color="#ff33a1">}}




{{<matomeQuote body="ドメインごとの訪問統計があったらいいのにね。そうすれば、ライブサイト運営者が自分のサイトとarchive.orgのアーカイブ、どっちがどれだけ見られてるか比較できて便利じゃん？" userName="lofaszvanitt" createdAt="2025/10/06 07:53:01" color="">}}




{{<matomeQuote body="インターネットの歴史にとって素晴らしい節目だね！" userName="zghst" createdAt="2025/10/06 05:49:49" color="">}}




{{<matomeQuote body="これ、IPFSに全部コピーして、オンチェーンに置くべきだよね。" userName="philippz" createdAt="2025/10/08 01:32:49" color="#785bff">}}




{{<matomeQuote body="Jason Scottこと@textfilesの講演が含まれてたらよかったなー。彼の話っていつもすごく面白いからさ！" userName="lyu07282" createdAt="2025/10/06 07:56:25" color="">}}




{{<matomeQuote body="じゃあ、全ウェブページをスクレイピングする代わりに、Archiveに払えば全データ手に入るってこと？" userName="totaldude87" createdAt="2025/10/06 15:29:23" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと関係ないバカな質問なんだけど、もしインターネット上の全ページのバージョンを10年間、毎秒アーカイブしたら、10年後には1デシリオンページになるの？" userName="vivzkestrel" createdAt="2025/10/07 03:29:17" color="#785bff">}}




{{<matomeQuote body="今頃、OpenAIはもっとたくさんのページをアーカイブしてるのかな。" userName="not--felix" createdAt="2025/10/06 09:35:49" color="">}}




{{<matomeQuote body="おめでとう！" userName="BiraIgnacio" createdAt="2025/10/06 12:26:22" color="">}}




{{<matomeQuote body="これらの全ページのインデックスってあるの？" userName="i_have_to_speak" createdAt="2025/10/06 06:46:22" color="#38d3d3">}}




{{<matomeQuote body="政府（やデータにアクセスできる他の人たち）が歴史を書き換えるのをどう防ぐの？<br>何かブロックチェーンでハッシュ化するの？<br>歴史を書き換えられないってのは世界にとって素晴らしい贈り物になるよね。" userName="timmy777" createdAt="2025/10/06 08:24:50" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
