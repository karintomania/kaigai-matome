+++
date = '2025-05-28T00:00:00'
months = '2025/05'
draft = false
title = 'Compiler Explorerが見せる！ 永遠に続くURLの可能性'
tags = ["URL", "永続性", "Webアーカイブ", "リンク切れ", "プログラミング"]
featureimage = 'thumbnails/purple5.jpg'
+++

> Compiler Explorerが見せる！ 永遠に続くURLの可能性

引用元：[https://news.ycombinator.com/item?id=44117722](https://news.ycombinator.com/item?id=44117722)




{{<matomeQuote body="2010年より前はリンクって永遠だと思ってて、ブラウザのブックマーク使いまくってたんだよね。でもしばらくしたら、大量のブックマークがリンク切れで使えなくなっちゃった。それから、ウェブページをPDFで印刷したり、リーダービューの内容をRTFファイルにコピペするようになったんだ。" userName="kccqzy" createdAt="2025/05/28 17:10:10" color="">}}




{{<matomeQuote body="俺はSingleFileって拡張機能で、行ったページ全部アーカイブしてるよ。設定は簡単だけど、ディスク容量めっちゃ食うから注意ね。俺のアーカイブは1.1TBもあるんだ。<br>SingleFileについてはここ見て→ https://github.com/gildas-lormeau/SingleFile" userName="lappa" createdAt="2025/05/28 19:19:53" color="#785bff">}}




{{<matomeQuote body="ちなみに、公式のWeb Archiveのブラウザ拡張機能を入れると、見たページ全部自動でアーカイブするように設定できるんだぜ。" userName="flexagoon" createdAt="2025/05/28 17:16:45" color="#45d325">}}




{{<matomeQuote body="最近はIAとか特にarchive.isも一時的なものだと思うようになったよ。自分で保存したサイトが、自分のアーカイブ以外では跡形もなく消えるのを見てきたんだ。問題は、俺のアーカイブが特定の時点のサイトを正確に表してるってどうやって証明するかだよね。うーん、できるかな？証明書チェーンで何かできないかな。" userName="internetter" createdAt="2025/05/28 21:35:55" color="">}}




{{<matomeQuote body="gpgで署名してsigをbitcoinにアップロードする。<br>追記：ごめん、それはいつ取ったかは証明できても、偽物じゃないって証明にはならないね。" userName="shwouchk" createdAt="2025/05/28 23:35:45" color="">}}




{{<matomeQuote body="それらってどう管理してるの？検索する方法はあるの？何か特定のカタログ化の方法があって、必要なものがすぐに見つけられるようになってるのかな？" userName="davidcollantes" createdAt="2025/05/28 19:54:46" color="">}}




{{<matomeQuote body="俺の解決策は、大事なことは覚えておくか、せめてどこで見つけられるかを覚えておくことだな。まだ死んでないから、たぶんこれで大丈夫なんだろ。" userName="90s_dev" createdAt="2025/05/28 18:05:35" color="">}}




{{<matomeQuote body="KaraKeepは、SingleFileの拡張機能で保存したページをkarakeep API経由で受け取れる、まあまあなセルフホストアプリだよ。これでアーカイブしたページが検索できる。（しかもLLMで自動要約やタグ付けもしてくれるんだ）。" userName="nirav72" createdAt="2025/05/29 02:36:57" color="#785bff">}}




{{<matomeQuote body="内容をハッシュ化する。" userName="fragmede" createdAt="2025/05/28 23:39:53" color="">}}




{{<matomeQuote body="ストレージは安いけど、もっと良くしたいなら、色々方法あるよ。<br>・画像とか重複排除する<br>・ニュース記事はmarkdownで保存<br>・サイトのテンプレート作ってスタイルだけ保存とか、良い圧縮も<br>・全文検索とかembeddingsを追加<br>みたいにできるよ。" userName="internetter" createdAt="2025/05/28 21:34:28" color="#785bff">}}




{{<matomeQuote body="署名するのも実質同じことだよね．問題は，ハッシュ化したものがそこにあったものだってどうやって証明するの？" userName="shwouchk" createdAt="2025/05/29 03:32:38" color="">}}




{{<matomeQuote body="できないんだよ．コピーを持ってるのがあなただけじゃない限り，ハッシュは検証できないからさ（ハッシュも主張もあなたから出てるわけだし）．これを機能させる一つの方法は，bitcoinみたいなproof of workをページ自体にハッシュとして埋め込むこと．元の作者が作って，誰でも変更されてないか検証できるようにするんだ．もし変更したいなら，もっとproof of workが必要になる（不可能じゃないけどコストはかかる）．" userName="chii" createdAt="2025/05/29 06:03:55" color="#ff5733">}}




{{<matomeQuote body="WARCを使うといいよ： https://en.wikipedia.org/wiki/WARC_(file_format)<br>あとWebRecorderも： https://webrecorder.net/" userName="macawfish" createdAt="2025/05/28 20:45:03" color="#45d325">}}




{{<matomeQuote body="冗談はさておき．これ，スマホアプリがあるんだって．" userName="nirav72" createdAt="2025/05/29 22:26:36" color="">}}




{{<matomeQuote body="SingleFileの方がずっと便利だよ，標準のHTMLファイルに保存してくれるからね．MHTMLとか．mhtファイルを簡単に読めるのは，俺が知ってる限りInternet Explorerだけだよ．" userName="RiverCrochet" createdAt="2025/05/29 15:28:56" color="">}}




{{<matomeQuote body="タイムスタンプサービスってのがいくつかあるよ，無料のもあるかも．目的サイトのURLを送ると，”私，Timestamps-R-USは，〇年〇月〇日〇時にダウンロードした〇〇の中身が〇〇にハッシュされることを断言します”みたいな証明書がもらえる．秘密鍵で署名されてて，公開鍵で誰でも検証できる．自分で同じURLをダウンロードしてハッシュが一致するかチェックするんだ．サービス側もダウンロードするから，ログイン必要だったり内容が多いとややこしかったり，課金されるだろうね．" userName="akoboldfrying" createdAt="2025/05/28 22:38:25" color="#45d325">}}




{{<matomeQuote body="ありがとう．これ知らなかったけどいいね．質問なんだけど：<br>— 圧縮して保存？それともそのまま？<br>— 銀行口座とかプライベートな情報は？<br>プライバシーはプライベートブラウジングモードかな．<br>圧縮についてだけど，何千ファイルだと自己解凍ヘッダーでかさばらない？グローバルな圧縮辞書でエンコードデータだけ保存する方が節約にならない？" userName="snthpy" createdAt="2025/05/29 05:20:19" color="">}}




{{<matomeQuote body="warcは万能じゃないんだ．例えばgeminiだと会話の記録取るのが面倒で，pdfとwarcで保存し始めたんだけど．pdfは画面に見えてる1ページだけだし，warc開くとjsリダイレクトが起動するんだ．テキストは手動で抽出できるけど，ブラウザで”ただ開いて”オフラインアーカイブ版を期待することはできない．まるで生きてるページとやり取りしてるみたいで，使いやすさ，プライバシー，セキュリティ全部で最悪だね．正直webrecorderは使ってないんだけど，これ解決してくれるの？確認した？" userName="shwouchk" createdAt="2025/05/29 00:03:31" color="#ff5c5c">}}




{{<matomeQuote body="似たようなこと考えてたんだけど、拡張機能はあんま信用できなくてさ。ちょっと聞きたいんだけど；<br>— ログイン必要なページとか無限スクロール、銀行サイト、FBとかも全部アーカイブしてるの？<br>— 量ってどれくらい？<br>— どれくらい見返す？探しやすい？<br>— 別に整理したりしてる（ブックマークとか）？LLM/RAGとか試した？" userName="shwouchk" createdAt="2025/05/28 23:34:22" color="#45d325">}}




{{<matomeQuote body="ちょっと話それるけど、分かんないんだよな。それってさ、自分のパソコンの中のファイルを検索するのにどう役立つの？それとも、自分の見たウェブサイト全部の記録をケータイにコピーしてるってこと？" userName="dotancohen" createdAt="2025/05/30 04:02:26" color="">}}




{{<matomeQuote body="ウェブページをテキストにするやつないかな？beautiful soupとかPythonの4行くらいのコードでできるのは知ってるけど、スマホで必要なんだ。良い方法が分かんないんだよね。スマホのブラウザに”リーダービュー”って出るけど、たまにしか出ないし、必要なページでは出ないことが多いんだ！<br>追記： Termuxにw3m入れてみた…最近は何でもできるんだな！" userName="andai" createdAt="2025/05/28 21:15:01" color="">}}




{{<matomeQuote body="ウェブサイトって、全く同じお願いしても毎回同じ内容返してくれるわけじゃないんだよね。でも、こんなややこしいことしなくてもいいんだよ。あるhashsumがある時間に存在したことを証明してくれるサービスさえあれば十分。それが何を意味するかは別の仕組みで証明すればいいんだから。" userName="XorNot" createdAt="2025/05/28 22:45:54" color="#785bff">}}




{{<matomeQuote body="Chrome and Edgeなら普通に読めるよ？形式は確か.emlと同じだったはず。" userName="dataflow" createdAt="2025/05/29 15:31:55" color="">}}




{{<matomeQuote body="それ私のやり方でもあって気に入ってたんだけど、この10年くらいで、どこにあるか覚えてても、探し方覚えてても、いざ探すと無くなってるって気付いたんだ。”Search rot”はlink rotと同じくらい深刻だよ。まだ機能してるかって意味では、今どき人がやることで大事なことなんてほとんどないかもね。考えたり覚えたりするのが命に関わるほどヘタになるなんてまずないし。" userName="TeMPOraL" createdAt="2025/05/28 20:58:16" color="#45d325">}}




{{<matomeQuote body="元の人はSingleFileっていうブラウザ拡張機能使ってるんだ。これでページ全体を一つの.htmlファイルとして保存できるんだけど、SingleFileはダウンロードじゃなくてKarakeepに直接送ることもできるらしいよ（自分でKarakeepをNASとかに置いてる場合ね）。そしたらスマホアプリとかKarakeepの画面で保存したページを探したり見たりできるんだ。Karakeepが自動でインデックス作ってくれるんだって（LLMがタグ付けしてくれる機能もあるみたい）。" userName="nirav72" createdAt="2025/05/30 22:00:39" color="#785bff">}}




{{<matomeQuote body="ドメインごと消えることもあるって注意点は一応あるけど、これは良い提案だよ。" userName="petethomas" createdAt="2025/05/28 17:55:02" color="">}}




{{<matomeQuote body="Zoteroっていうの使ってみたら？文献管理ソフトだけど、ブラウザと連携してウェブページも自分のパソコンに保存できるよ。" userName="XorNot" createdAt="2025/05/28 21:17:11" color="#ff5c5c">}}




{{<matomeQuote body="1と部分的に3だね - ゲームとか他のものに圧縮と重複排除を使ったbtrfsを使ってるよ。すごくうまくいくし、使う側からは”見えない”よ。" userName="ashirviskas" createdAt="2025/05/28 22:34:08" color="">}}




{{<matomeQuote body="ArchiveTeamのGoo.glプロジェクト[1]と協力する価値があるかもね？<br>＞URL短縮なんてマジ最悪のアイデアだったよ[2]<br>[1] https://wiki.archiveteam.org/index.php/Goo.gl<br>[2] https://wiki.archiveteam.org/index.php/URLTeam" userName="mananaysiempre" createdAt="2025/05/28 16:54:36" color="#ff5733">}}




{{<matomeQuote body="確かArchiveTeamはGoo.glの短いURLをブルートフォースしてたんだよね、”既知の”リンクをたどるんじゃなくて。だからCompiler ExplorerのURLもたくさん/全部持ってると思うよ。（というわけで、彼らに連絡するのはいい考えだね）" userName="MallocVoidstar" createdAt="2025/05/28 20:23:06" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="そのプロジェクトのリアルタイムステータスによると、420億のgoo.gl URLをスキャンして、75億が見つかったみたいだよ: https://tracker.archiveteam.org:1338/status" userName="tech234a" createdAt="2025/05/29 01:45:06" color="#45d325">}}




{{<matomeQuote body="ありがとう！誰かがGitHubでそのことについて投稿してくれたし、明日それを見てみるよ！" userName="mattgodbolt" createdAt="2025/05/30 03:53:03" color="">}}




{{<matomeQuote body="URLが永遠に続くっていうのは美しい夢だったけど、実際には99%のURLは永遠には続かないみたいだね。終わりなき負け戦を続けるより、インフラは永続しないっていう前提で技術を構築すべきなのかも？" userName="s17n" createdAt="2025/05/28 17:58:55" color="#ff5733">}}




{{<matomeQuote body="＞インフラは永続しないっていう前提で技術を構築すべきなのかも？<br>そうだね。あとURL短縮をインフラとして使わないってことだね。" userName="nonethewiser" createdAt="2025/05/28 18:35:14" color="">}}




{{<matomeQuote body="URNは、モノの場所からモノの”アイデンティティ”を切り離すことでその問題を解決するはずだったんだ。でも全然普及しなくて、その後リンク短縮サービスがそのアイデアを”悪い形”で再実装したんだよね。https://en.m.wikipedia.org/wiki/Uniform_Resource_Name" userName="dreamcompiler" createdAt="2025/05/29 05:41:52" color="#45d325">}}




{{<matomeQuote body="そうだね。ドメイン名はよく持ち主が変わるし、永遠に続くはずのURLも時間とともに悪質なフィッシングリンクに変わることがあるんだ。" userName="hoppp" createdAt="2025/05/28 20:39:14" color="#ff5c5c">}}




{{<matomeQuote body="理論的には、IPFSみたいなコンテンツアドレス型のシステムが一番いいと思うよ: 誰かがオンラインでコピーを持っていれば、君もそれをもらえるからね。" userName="emaro" createdAt="2025/05/28 21:47:06" color="#38d3d3">}}




{{<matomeQuote body="なんだか、一般的な暗号技術がほぼ全ての機密性に関わる問題を鍵配布（大規模な非協調システム、例えばWeb PKIやPGPではほぼ不可能）に帰着させるのとすごく似てるね。content-addressable storageも、ほぼ全てのデータ永続性に関わる問題を、可変な名前とハッシュの対応付けの維持（これもBitTorrent、Git、IPFSみたいな大規模な非協調システムではほぼ不可能）に帰着させる感じだよ。" userName="mananaysiempre" createdAt="2025/05/29 02:19:48" color="#45d325">}}




{{<matomeQuote body="DNSは分散していて、緩く協調してるマッピングサービス問題を結構うまく解決してるように見えるけどね。" userName="dreamcompiler" createdAt="2025/05/29 05:46:26" color="">}}




{{<matomeQuote body="それはそうだけど、それじゃ元の木阿弥だよ。DNS名を使っても、それが永遠に同じコンテンツを指す保証はないからね。" userName="emaro" createdAt="2025/05/29 09:17:40" color="">}}




{{<matomeQuote body="でも、そうすると全てのコンテンツは静的で、二度と更新されないべきってこと？<br>もしSPAをIPFS経由で配信しても、そのSPAは結局、落ちたり変わったりするかもしれないエンドポイントからデータを取ってくる必要があるよね。<br>全部ブロックチェーンに置いたとしても、データを読むためのRPCエンドポイントにはURLが必要だし。" userName="hoppp" createdAt="2025/05/29 13:29:23" color="#ff5c5c">}}




{{<matomeQuote body="＞でも、そうすると全てのコンテンツは静的で、二度と更新されないべきってこと？<br>そう、そしてここに論争の根本があるんだ。この手のことを気にする多くのユーザーは、一度見た出版物がそのままそこに留まることを望む。一方、多くの発行者は内容を消したり（本当に安全上の理由のこともあるけど、マーケティング目的が多い）できることに慣れちゃってるんだ。それに、人間が読める名前の空間を維持するっていういつもの問題も全部ひっくるめてね。" userName="mananaysiempre" createdAt="2025/05/29 15:02:16" color="#785bff">}}




{{<matomeQuote body="いや、全てのコンテンツが二度と変わっちゃダメってわけじゃないんだ。これがこのジレンマの核心だよ。動的なコンテンツ（と識別子）は、静的なコンテンツ（content addressedなもの）よりも早く劣化する。両方持つことはできるけど、同時にってわけにはいかないんだ。" userName="emaro" createdAt="2025/05/31 10:26:47" color="#38d3d3">}}




{{<matomeQuote body="ちなみにIPFSは今、EUのPiracy Watchlistに載ってるらしいよ。もしかしたら違法化の前兆かもしれないね。" userName="immibis" createdAt="2025/05/29 09:06:46" color="#ff5c5c">}}




{{<matomeQuote body="へぇ、それは知らなかった。面白いね。まあ、そんなに驚きじゃないかもしれないけど…。" userName="emaro" createdAt="2025/05/31 10:27:30" color="">}}




{{<matomeQuote body="URLはネットワーク上のリソースの”場所”を識別するものであって、リソースそのものじゃないんだ。だから、永続性もユニークさも必要とされない。「uniform resource locators」って呼ばれてる理由だよ。この問題は1997年には認識されてて、だからDigital Object Identifierが発明されたんだ。" userName="jjmarr" createdAt="2025/05/28 23:56:24" color="#38d3d3">}}




{{<matomeQuote body="リンク短縮サービスをデータベース代わりに悪用して、その後、元の参照をなくしちゃって、ネットのあちこちから必死に大事なリンクをサルベージしなきゃいけなくなるって、なんか詩的だよね。" userName="creatonez" createdAt="2025/05/28 18:28:16" color="">}}




{{<matomeQuote body="URL短縮サービスってのは、本来長いURLを短くするために使うもんだろ。マジで悪用してるのは、詐欺とかスパムとか違法サイトを共通ドメインの裏に隠して、あちこちにばらまく奴らだよな。" userName="rs186" createdAt="2025/05/28 20:43:38" color="">}}




{{<matomeQuote body="これは単なる”長いURL”じゃなくてさ、URLのフラグメントサフィックスにコンテンツ全部が格納されてるURLだぜ。blobみたいなもんで、常にそうだったんだ。" userName="creatonez" createdAt="2025/05/28 20:48:52" color="#ff5733">}}




{{<matomeQuote body="彼らは単にリンク短縮サービスでURLを圧縮しただけじゃないの？彼らはURLを”データベース”（つまり、コンパイラの状態を保持するもの）として使ったんだよ。" userName="nonethewiser" createdAt="2025/05/28 18:31:44" color="">}}




{{<matomeQuote body="配られたURLの中に全部の状態をエンコードしてたんだから、彼ら自身は何も保存してないんだよ。だから、リンク短縮サービスが、”データベース”、つまりURLを保存してた唯一の場所ってことになる。" userName="Arcuru" createdAt="2025/05/28 18:48:38" color="#45d325">}}




{{<matomeQuote body="いやいや、URL短縮の目的はデータを保存することじゃなくて、URLを短くすることだよ。データがGoogleのサーバーのどこかに保持されちゃったのは、たまたまだね。言い換えると、短いURL全部が、そういう意味では”URL短縮サービスをデータベースとして使ってる”ことになる。長いクエリパラメータを持つURLを短縮サービスで短くしても、”リンク短縮をデータベースとして悪用してる”ってことにはならないんだ。" userName="nonethewiser" createdAt="2025/05/28 18:53:50" color="#45d325">}}




{{<matomeQuote body="でも、この場合はURL自体がデータなんだ。だから、URLを保存するのはデータを保存するのと同じなんだよな。" userName="cortesoft" createdAt="2025/05/28 21:09:09" color="#ff5c5c">}}




{{<matomeQuote body="それはたまたまのことだよ。状態はURLの中にあって、それがものすごく長いから短縮されただけなんだ。GoogleのURL短縮サービスはデータを保存するために必要だったわけじゃない。それは単に、URL短縮の普通の利用ケースだよ。なんかすごくでかいクエリパラメータがある長いURLを、短いURLにマッピングするっていうね。" userName="nonethewiser" createdAt="2025/05/28 22:23:46" color="#ff5c5c">}}




{{<matomeQuote body="https://killedbygoogle.com/ ＞ Google Go Links (2010–2021) ＞ 約4年前に終了（Google Short Linksとしても知られてた）URL短縮サービスだったね。Google Workspace（旧G Suite（旧Google Apps））の顧客向けにはカスタムドメインもサポートしてたんだ。11年くらい続いたみたいだよ。" userName="amiga386" createdAt="2025/05/28 16:48:09" color="#ff5c5c">}}




{{<matomeQuote body="サービスを”終了”するって（新しく発行できなくするって意味でね）のは大したことないし、そんなに言及するほどのことでもないよ。既存のリンクを使えなくする方がずっとひどい仕打ちだ。特に、Googleがまだ自分のアプリのために内部で何らかの形でそれを使ってるってのが、さらにたちが悪いね。" userName="zerocrates" createdAt="2025/05/28 17:16:05" color="#ff33a1">}}




{{<matomeQuote body="今ってhttps://g.co使ってないっけ？それともまだ新しい内部的なgoo.glリンクが作られてるの？編集：Googleは、俺の PixelにGrapheneOS入れて起動した時に出る”Your device is booting another OS”画面でg.coリンクを使ってるよ。もしこのサービスが終了したら、スマホのBIOSにハードコードされてるリンクがただのゴミになるってことでしょ、気まずいな。" userName="ruune" createdAt="2025/05/29 17:57:04" color="#38d3d3">}}




{{<matomeQuote body="Google Mapsはさ、”maps.app.goo.gl”ってリンク作るんだよね。他のは知らないけど、彼ら（Google）はメッセージでMapsについて具体的に言ってたよ。たぶん他のサービスはドメインだけ使って、裏のサービスは全然違うんだろうね、わかんないけど。" userName="zerocrates" createdAt="2025/05/29 19:19:21" color="">}}




{{<matomeQuote body="Googleが読み取り専用版を閉じるのに労力かける価値あるってのが、なんか意外だわ。プライベートリンクへのリダイレクトを残すことの法的リスクを恐れてるとかじゃない限りね。" userName="layer8" createdAt="2025/05/28 19:08:33" color="">}}




{{<matomeQuote body="外からだと分かりにくいけど、サービスが古いとか危ないライブラリとかランタイムとかに依存してる可能性はあるよね。それを止めたがってるのかも。まあでも正直、どうでもいいくらいの費用で、単に経費削減のために閉じてるだけって可能性も同じくらいあると思うわ。過去の約束とかどうでも良さそう。" userName="actuallyalys" createdAt="2025/05/28 19:22:15" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="だいたいこういうサービスって、Googleの何人かの社員のサイドプロジェクトなんだよね。で、最後に残った人が辞めると、閉じられちゃうんだよ。" userName="Scaevolus" createdAt="2025/05/28 20:42:05" color="">}}




{{<matomeQuote body="でもさ、誰もさ、”goo.gl URL短縮サービスをSisyphusリリースマネージャーとDante 7 SRE監視で動くように移行するのに2ヶ月費やした”なんて、自分の業績評価シートに書きたくないじゃん。そんなのマイナス評価だろ。" userName="mbac32768" createdAt="2025/05/29 02:19:53" color="#785bff">}}




{{<matomeQuote body="別の可能性としては、それが”気を散らすもの”だからってのもあるね。費用はたいしたことなくても、それぞれのシステムには頭のリソースとか、ドキュメント、法律問題（法改正とかで変わることもある）とか、固定でかかるコストがあるんだよ。そういう気を散らすものを取り除くのは、マネジメントの基本だよね。" userName="mmooss" createdAt="2025/05/28 21:21:59" color="">}}




{{<matomeQuote body="＞この記事は人間が書いたけど、リンクはLLMに提案してもらって、文法チェックもしてもらったよ。今日こんな注意書き見るの2回目だわ。新しいトレンドの始まりを見てるみたいだね。" userName="olalonde" createdAt="2025/05/28 17:34:36" color="">}}




{{<matomeQuote body="みんなこういう注意書き載せる必要があるって感じてるなんて、マジでクレイジーだよな。" userName="tester756" createdAt="2025/05/28 18:00:01" color="">}}




{{<matomeQuote body="俺には分かる気がするな。AIで作られたひどいコンテンツを山ほど見た後、みんな”AI不使用”ボタンとか注意書きを載せ始めたんだよ。で、ちょっとしたことにAI使ってる人たちもさ、全くAIが関わってないって嘘つかずに、記事全体がAIで作られたわけじゃないってハッキリさせたかったんだろ。" userName="actuallyalys" createdAt="2025/05/28 19:27:06" color="">}}




{{<matomeQuote body="それってさ、免責事項（disclaimer）って言うより、主張事項（claimer）だよねw" userName="layer8" createdAt="2025/05/28 19:18:37" color="">}}




{{<matomeQuote body="このコメントは人間が書いたよ、自動チェックなしでさ。でもどうやってそれをチェックするの？" userName="psychoslave" createdAt="2025/05/28 19:21:56" color="">}}




{{<matomeQuote body="ビジネスメールとか、どうでもいいコメントはLLMが手伝っても気にしないよ。でも個人のブログとか、エッセイ、記事、真面目な著作とかはLLMを使ったか、どのくらい使ったか教えてほしいな。ブログを読んで人間が書いたみたいに見えて、LLMの言及がないなら、安心して人間が書いたって思いたいんだ。それってそんなに無理な願い？" userName="acquisitionsilk" createdAt="2025/05/28 23:42:02" color="#ff5c5c">}}




{{<matomeQuote body="そういう免責事項はいらないと思うな。内容がそれ自体で立派なら、それで十分だよ。内容がダメダメなら、AIが作ったダメダメと人間が作ったダメダメで何が違うっていうの？<br>免責事項を誰もが知りたいとか欲しいと思う唯一の理由は、内容の質を自分で見分けられない人が、AI生成を（悪い）質の代わりとして使ってるからだよ。" userName="chii" createdAt="2025/05/29 06:08:22" color="">}}




{{<matomeQuote body="著者にとっては重要だと思うよ。僕は専門家のMatt Godboltと、深みを出すけどデマも作るLLMを区別したい。質の見分け？新しいこと学ぶ時は著者の信頼性を頼るかな。" userName="johannes1234321" createdAt="2025/05/29 13:16:18" color="#45d325">}}




{{<matomeQuote body="科学論文読んでる時はどうやって区別するの？" userName="chii" createdAt="2025/05/29 14:08:58" color="">}}




{{<matomeQuote body="同じだよ？<br>（知ってる研究者の名前もいるし、いくつかの機関は過去に良いレポートを出してて、それをどれだけ信用するかの考慮に入れるんだ…そして人間だから、自分の見解を肯定するものにはより信用を置き、それに異議を唱えるものにはそれほど置かない…別の言葉で言うと、主観的な信頼には多くの要因が絡むんだ）" userName="johannes1234321" createdAt="2025/05/29 18:17:51" color="">}}




{{<matomeQuote body="言いたくないけど、すごく資金潤沢な財団でも関わってない限り、Compiler Explorerとgodbolt.orgも永遠には続かないだろうね。（たぶんその頃には、全部の情報が、ありとあらゆるものを網羅した487兆パラメータのモデルに蒸留されてるだろうけど…）" userName="wrs" createdAt="2025/05/28 18:54:17" color="">}}




{{<matomeQuote body="運営は13年うまくいってるよ。資金はあと1年ちょっと分はあるし、成長しても、今のスポンサー全部いなくなっても大丈夫。でもね、資金じゃなくて”俺”が単一障害点（single point of failure）なんだ。財団とかも考えてるけどね。" userName="mattgodbolt" createdAt="2025/05/29 00:23:17" color="#ff33a1">}}




{{<matomeQuote body="まあ、そうだね。Compiler ExplorerのリンクはCEが消えたら動かなくなるけど、それまでは大丈夫。一番重要なCEリンクはバグレポートにあると思うんだ。バグレポートにリンク貼る時は、コードと使ったコンパイラ情報も書いとくと自己完結できるから、CEがなくなっても安心だよ。すぐ消えるとは思わないけどね。" userName="badmintonbaseba" createdAt="2025/05/29 11:45:59" color="#45d325">}}




{{<matomeQuote body="ねえ、ドメイン維持費かかるのにURLが永遠とかどうなの？URLが消えるのも良いことかもね。良いものだけ歴史に残るゴミ収集みたいにさ。" userName="swyx" createdAt="2025/05/28 17:45:45" color="">}}




{{<matomeQuote body="歴史家はさ、残されなかった”ゴミ”の方を知りたいんだと思うよ、”本物の”生活を知るためにね。千年後の歴史家が、デジタルメディアが朽ちて痕跡もなく消えちゃう今の時代をどう見るか、タイムジャンプできたら見たいな。" userName="johannes1234321" createdAt="2025/05/28 17:52:57" color="">}}




{{<matomeQuote body="現代の教養ある人って、昔の教養ある人ほど日記書かないのかなってよく思う。ジャーナリングブーム、起こすべきかもね。書くなら紙とペンだよ、デジタルの良いストレージより文字通り10倍耐久性があるから。" userName="mrguyorama" createdAt="2025/05/28 18:17:25" color="">}}




{{<matomeQuote body="＞紙とペンはデジタルの良いストレージより文字通り10倍耐久性があるから。根拠求む笑。データ複製はさ、紙の単一障害点より全然イケてるって。" userName="swyx" createdAt="2025/05/28 21:41:08" color="">}}




{{<matomeQuote body="質問：1000年後に残って読める可能性高いのは？失われた遺跡の紙？ストレージメディア？コピーし続ければ残るかもだけど、それって普通の情報？面白いものだけ？組織の資金や場所は大丈夫？今の歴史家は、普通の人の生活を知るのにランダムな発見が大事なんだ。昔は紙がいっぱいあって良かったけど、今はデジタルでデータ消えたりフォーマット古くなったり問題多いよね。" userName="johannes1234321" createdAt="2025/05/29 00:45:46" color="#ff5c5c">}}




{{<matomeQuote body="ストレージメディアの方だよ。だって、1000年前の紙の原本なんて信じられないくらい稀だし、最近のストレージはもっといっぱい情報持ってるじゃん。Beowulfのデジタル版は何百万もあるのに、1000年前の紙は一つ。紙が脆すぎて、存在すら知らない1000年前の他の作品もたくさんあるはずだよ。" userName="KPGv2" createdAt="2025/05/29 06:17:29" color="#ff5c5c">}}




{{<matomeQuote body="でもね、たった一枚の紙に書かれたランダムな事実の方が、壮大な詩よりも人々のことを教えてくれるかもよ。どっちかだけじゃ完全な歴史にはならないよね。" userName="johannes1234321" createdAt="2025/05/29 09:44:34" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
