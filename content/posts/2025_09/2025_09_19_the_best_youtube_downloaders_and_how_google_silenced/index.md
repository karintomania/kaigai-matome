+++
date = '2025-09-19T00:00:00'
months = '2025/09'
draft = false
title = '最高のYouTubeダウンローダーはコレ！Googleが隠し続けるダウンロード妨害の全貌'
tags = ["YouTube", "動画ダウンロード", "Google", "技術", "規制"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> 最高のYouTubeダウンローダーはコレ！Googleが隠し続けるダウンロード妨害の全貌

引用元：[https://news.ycombinator.com/item?id=45300810](https://news.ycombinator.com/item?id=45300810)




{{<matomeQuote body="GoogleがYouTubeダウンローダーを密かに承認してるって主張は無理があるな。yt-dlpのソースコードを見れば、ダウンロードがいかに複雑か、そしてGoogleがどれだけダウンロード妨害に必死かよく分かるんだ。広告ブロック対策やダウンローダーの阻止に全力を尽くしてて、開発者にとっては悪夢だよ。Googleは互換性をどんどん無視してるし、Chromeの秘密ヘッダーみたいなのが増えたら、ダウンロードはもっと難しくなるはずだ。これはGoogleが互換性についてどんどん関心を示さなくなっている証拠とも言えるね。例として、Chromeブラウザを使っていることを認証するための秘密のX-Browser-Validationヘッダーがすでに存在していて、これが今後拡張される可能性もあるよ。[0] Ask HN: Does anyone else notice YouTube causing 100% CPU usage and stattering?<br>https://news.ycombinator.com/item?id=45301499[1] Chrome’s hidden X-Browser-Validation header reverse engineered https://news.ycombinator.com/item?id=44527739[2] https://github.com/dsekz/chrome-x-browser-validation-header" userName="molticrystal" createdAt="2025/09/19 20:49:53" color="#38d3d3">}}




{{<matomeQuote body="YouTubeがダウンローダーに依存してるって記事の主張も納得できないんだよね。企業がYouTubeを使うのは、タダでめちゃくちゃ便利で、この20年くらいずっと安定してるからであって、自社で代替手段を準備するリソースがないからだよ。それに、YouTubeって「YouTuber」っていう、ちゃんと稼げる職業が生まれるくらい市場を作り出したんだ。この収益化の仕組みを守ることがYouTubeにとってもクリエイターにとっても一番大事なんだ。" userName="AceJohnny2" createdAt="2025/09/19 22:06:43" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、企業が代替手段を用意するリソースがないって意見はマジで同意だわ。とあるテックニュースサイトが、YouTubeリンクや埋め込みのために自社の動画ホスティングサーバーを閉鎖したのを知ってる。古い動画は見れなくなったよ。HTML5が広くサポートされてる今、HTMLタグ1つで動画埋め込めるのに、何でそんなに自社ホスティングが大変なのか理解できないんだよね。このほんの少しの労力すら惜しんで、みんなYouTubeに集約しちゃうんだから、利益重視の企業にとっては本当にそうなんだろうな。" userName="lucb1e" createdAt="2025/09/20 00:29:07" color="#785bff">}}




{{<matomeQuote body="HTMLタグ1つで簡単って言うけど、そんな単純な話じゃないんだよ。ffmpegでいくつかの品質設定でエンコードしたり、最高品質のコピーに加えて他のコピーも全部保存したりするのに、どんな普通のサーバーでも対応できると思う？僕の5ドルのLinodeじゃストレージが足りないよ。「ストレージは安い」って言っても、結局サーバーをアップグレードすることになるし、ワンクリックで終わるわけじゃない。僕もVimeoをCDNとして年間240ドル払ってるけど、もしVimeoが明日シャットダウンしたら、同じような価格帯のサービスを見つけるのはかなり難しいだろうな。専門的なホスティングを自分で構築しようとすると、全然安くないんだ。" userName="jacobgkau" createdAt="2025/09/20 01:20:46" color="#785bff">}}




{{<matomeQuote body="なんでYouTubeがダウンロード速度を視聴速度に制限しないのか、ずっと不思議に思ってるんだ。昨日15時間の番組を20分くらいでダウンロードできたけど、本来の視聴方法じゃそんな量のデータをダウンロードできるわけないだろ。ブロックされたり速度制限されたりしなかったのは良かったけど、僕みたいなのをブロックするのなんて簡単そうなのにね。何か見落としてる？やっぱり、ある程度は許容してるように感じるんだよ。追記: なんだこれ、今日から突然YouTubeのサイトでもyt-dlpでも「ボットじゃないことを確認するためにサインインして」って強制されるようになった。もしかして指紋認証されてブラックリスト入りしちゃったのかも。" userName="geokon" createdAt="2025/09/20 07:02:43" color="">}}




{{<matomeQuote body="記事が主張してる「YouTubeが本当にダウンローダーを止めたいなら、EME（Encrypted Media Extensions）に切り替えるはずだ」って話、どう思う？それはありえると思う？" userName="ameliaquining" createdAt="2025/09/19 20:53:19" color="">}}




{{<matomeQuote body="ほら、僕が自分で高画質動画をいろんなビットレートでホスティングしてる例だよ。2016年のラップトップでエンコードしたんだ。サーバーはOVHの月30ドルので、2TBのストレージと1gbpsの回線速度、無制限転送がついてるんだ。月に何十TBものトラフィックを使っても全然問題ないよ。見てみて！ http://lelandbatey.com/projects/REDLINE-intro/" userName="lelandbatey" createdAt="2025/09/20 05:15:49" color="#45d325">}}




{{<matomeQuote body="バックエンドの動画ホスティングは設定するだけなら簡単だよ。でも、強力なクライアントサイドの監視システムを運用してチェックしないと、ユーザーが抱えてる問題は絶対に見えないんだ。彼らもわざわざ教えてくれないし、ただ去っていくだけだよ。RedditでさえYouTube並みの動画プレイヤーを提供できてないだろ？自分たちがRedditよりリソースも優秀なプログラマーも持ってると思う？" userName="snowwrestler" createdAt="2025/09/20 16:41:22" color="#ff5c5c">}}




{{<matomeQuote body="僕はYT Premiumユーザーだけど、もしGoogleがyt-dlpを禁止するなら、すぐにサブスクリプションをキャンセルするよ。そんなことのために金払ってるわけじゃないからね。" userName="js8" createdAt="2025/09/20 07:08:01" color="">}}




{{<matomeQuote body="yt-dlpのコード見ると、動画DLってめちゃくちゃ複雑なんだよな。Googleがいつも妨害してくるのを、yt-dlpの開発者たちが英雄的に乗り越えてて本当に頭が下がる。uBlock Originのフィルター作ってる人も同様にね。<br>自分でやろうにも、そんな時間と労力はかけられないってのが本音だわ。感謝しかない。" userName="guerrilla" createdAt="2025/09/20 02:17:13" color="#ff5c5c">}}




{{<matomeQuote body="テレビとか冷蔵庫みたいなスマートデバイスのYouTube機能って、ハードウェア的な対応が微妙なんだよね。<br>古いデバイスがなくなったら、DRMのEncrypted Media Extensionsとかに移行するだろうな。yt-dlpのリポジトリでも、DRM保護された形式の実験してるって話も見たよ。SABRもDRM関連らしいし。" userName="molticrystal" createdAt="2025/09/19 21:04:59" color="#ff33a1">}}




{{<matomeQuote body="クリエイターってさ、YouTubeだけじゃなくて、アーカイブとか一般公開のために他の場所にもコンテンツを出さないのはなんでだろうね？<br>ウォールドガーデンの外でも見れるようにさ。やっぱり重要じゃないのかな？それともホスティング費用とか、広告収入が惜しいとか？" userName="SilverElfin" createdAt="2025/09/20 07:07:42" color="">}}




{{<matomeQuote body="マネージドサービスにお金払ってる人たちは、帯域幅のコストを全然理解してないから、君が言ったことは不可能だと思ってるだろうな。<br>今や帯域幅なんて、US／EUで100gコミットだと月25セント以下でいけるし、OVHは毎秒数十テラバイトも提供してる。独立性を保ってるの、本当に素晴らしい！" userName="fatchan" createdAt="2025/09/20 05:25:22" color="#38d3d3">}}




{{<matomeQuote body="ウェブがますますひどくなるにつれて、長期的な解決策はブロックリストじゃなくて許可リストだけになるだろうね。<br>追跡したりデータを金にしたりするサイト、SEO詐欺、自動生成コンテンツ、それに増え続けるボットのせいで、全部をフィルターするルールを維持するのが無理になってきてるもん。自分が承認するトラフィックのルールを書く方がずっと楽だよ。" userName="imiric" createdAt="2025/09/20 05:31:30" color="#ff33a1">}}




{{<matomeQuote body="DRMを使うと、YouTubeクリエイターはCreative-Commons-licensedコンテンツ、例えばKevin MacLeodの音楽とかWikipediaの画像を動画で使えなくなっちゃうんだ。それって違法になるってことだよ。" userName="kragen" createdAt="2025/09/20 01:02:44" color="#ff5733">}}




{{<matomeQuote body="アプリ内には公式のダウンロードオプションがあるけど、もしダウンロード速度が視聴時間と同じくらいに制限されたら、全く意味ないだろうな。" userName="Waraqa" createdAt="2025/09/20 07:15:20" color="">}}




{{<matomeQuote body="これは俺がuBlock/uMatrixで既にやってることとほとんど同じだね。デフォルトで全サイトのサードパーティコンテンツを全部フィルターして、CDNsとか正当なサードパーティドメインだけ手動で許可してるよ。<br>それに、モバイルデバイスでは難しいから、Google AnalyticsとかFacebook Pixelみたいなよくある悪質なもの対策にDNS blacklistsも使ってるんだ。" userName="drnick1" createdAt="2025/09/20 07:24:46" color="#ff5733">}}




{{<matomeQuote body="yt-dlpユーザーで、しかもプレミアム会員でもあるっていうごく少数のユーザーがボイコットしたところで、彼らが何か影響を受けると考えるのはかなり甘いよな。" userName="phoronixrly" createdAt="2025/09/20 07:14:47" color="">}}




{{<matomeQuote body="まあ同意するけどさ（俺は動画をダウンロードする時、失敗したことないんだけど）、まだ完全にダウンロード不可能にはしてないから、これは勝利だと思ってるよ。" userName="eek2121" createdAt="2025/09/20 00:06:34" color="">}}




{{<matomeQuote body="YouTubeが販売・レンタルしてる長編映画なんかは、もうこの暗号化使ってるんじゃないかな。" userName="hayksaakian" createdAt="2025/09/19 22:47:23" color="">}}




{{<matomeQuote body="なんでみんな同じこと言い続けてるのか分かんないけど、もうこの戦いは負けだよ。君のデータは訪問したウェブサイトに集められて、プロキシコンテナ経由でFacebookに渡されてる。エンドユーザーには見えないから、別のドメインを見ることは絶対にないんだ。" userName="noja" createdAt="2025/09/20 19:54:35" color="#ff5733">}}




{{<matomeQuote body="動画提供自体は簡単だけど、多くの人に提供するのは難しいんだ。RedditやYouTubeみたいに大量の人が常に動画を見ようとするから、ものすごい帯域幅が必要。YouTubeは人気動画をすぐに利用可能にし、高品質圧縮を適用するために努力してるよ。<br>もし視聴者が多くなく動的なコンテンツじゃないなら、動画サイトを立ち上げるのは結構簡単さ（infowarsもやってるし）。h264とaacオーディオを特定の解像度とビットレートでターゲットにすれば、安くてもほとんどのデバイスで再生できる競争力のあるものが作れるよ。帯域幅的には最適じゃないけどね。" userName="cogman10" createdAt="2025/09/20 17:47:33" color="#38d3d3">}}




{{<matomeQuote body="君は正規の視聴者だったかもしれないよね…動画の特定のセグメントをスキップして、前回どこで止めたか探したり、覚えのあるシーンや動画のクライマックスを見つけたり。YouTubeはデータ速度を制限しようとするけど、それが最初に起こった時、youtube-dlは使えなくなって、みんなPythonのバージョンをアップグレードしてyt-dlpを使い始めたんだ。" userName="axiolite" createdAt="2025/09/20 07:14:36" color="#ff5c5c">}}




{{<matomeQuote body="携帯から見てるんだけど、君のウェブサイトで使ってるプレイヤーは何？バッファリングは処理できる？" userName="MonaroVXR" createdAt="2025/09/20 06:47:20" color="">}}




{{<matomeQuote body="仕組みを詳しく説明してくれる？もし君の言ってる通りなら、全てのウェブサイトはすでに自分のドメインから広告を提供してるはずだよね。このアプローチで考えられる主な問題は、ウェブマスターが収入を得るために広告表示回数を大幅に水増しする動機があるってことだ。" userName="drnick1" createdAt="2025/09/20 20:19:22" color="">}}




{{<matomeQuote body="もしyt-dlpの全ユーザーが俺と同じことをしたら、それなりの効果があるはずだよ。もしyt-dlpがごく一部のユーザーにしか使われてないなら、Googleが敵対する理由はないよね？もし相当数のユーザーが使ってるなら、Googleも気にするはずだ。" userName="js8" createdAt="2025/09/20 16:06:36" color="">}}




{{<matomeQuote body="公式のダウンロードオプションだと、動画はファイルとして君のファイルシステムにはダウンロードされないよ。ただ公式アプリかウェブサイトでオフライン再生できるだけ。今、試してみたところだ。" userName="alright2565" createdAt="2025/09/20 14:00:04" color="#ff33a1">}}




{{<matomeQuote body="だから、作者は暗号化機能にお金を払うべきで、それ以外は自由にダウンロードできるようにするべきだね。YouTubeもこうすれば広告を埋め込めるんじゃないかな。" userName="dzhiurgis" createdAt="2025/09/19 23:51:56" color="">}}




{{<matomeQuote body="このデモ（https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/...）が再生できない人なんて世界中にいる？俺はこれを使ってて問題は知らないけどね。<br>RedditはYouTube並みの動画プレイヤー提供に奮闘してるけど、君はRedditよりリソースやプログラマーが優秀なの？Redditがどんな問題か知らないとMDNや俺が優れてるかは言えないな。<br>自動字幕や吹き替え、言語選択メニューみたいな機能パリティなら別。俺のサイトも今はサポートしてないし、YouTubeの自動生成オランダ語字幕はひどい字幕だよ（英語自動生成よりひどいし、専門用語やノイズへの対処もね）。" userName="lucb1e" createdAt="2025/09/20 21:27:24" color="#38d3d3">}}




{{<matomeQuote body="おいおい、誰も数字なんて見てないよ。Vimeoは月20ドルだろ。VimeoとLinodeサーバーを合わせても月25ドルで、OVHの月30ドルより安いんだぜ。紹介されてるScaleEngineも月25ドルだから、Linodeと合わせれば月30ドルでOVHと同じになる。みんな予算が違うだけで、ある人には月30ドルが妥当でも、別の人には高いだけってこと。でも、月5ドルじゃ動画コンテンツは無理だけど、動画以外のコンテンツはたくさんホストできるっていう核心の主張は変わらないね。" userName="Karrot_Kream" createdAt="2025/09/20 08:25:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="YouTubeでマジでイラつくことの一つが、動画が削除されたときに「この動画は利用できません」って出るだけで、それ以上のメタデータが一切ないことだね。動画が見れなくなったことよりも、どの動画が削除されたのか分からないことの方が、俺はよっぽど頭にくる。開いた動画を全部自動でyt-dlpして、タイトル、チャンネル、サムネイル、日付のシンプルなインデックスと一緒に巨大なハードドライブに保存するツールを本気で作りたいって考えたよ。みんな、いろんな種類のメディアが気づかないうちに消えちゃうことに、もっと危機感を持つべきだと思うね。" userName="peteforde" createdAt="2025/09/20 01:23:16" color="#ff5c5c">}}




{{<matomeQuote body="以前、ブラウザ履歴を解析して、YouTube動画を見つけたらyt-dlpを走らせるBashスクリプトがあったんだ。作成は簡単だったけど、動かし続けるのは大変だったね。例えば、Googleがすぐに俺のIPをレート制限してきたから、NASにオフロードして、夜間にダイヤルアップ並みの速度で何時間もダウンロードさせ続けたよ。そのうちストレージがすぐいっぱいになったから、動画フィルタリングを追加したり、基本的なゴミ収集も計画してた。もちろん、youtube-dl（後にyt-dlp）を常に最新に保つ必要もあったしね。結局、これだけの価値はないって判断したよ。もし動画が削除されたら、リンク/IDをBingとYandexに貼り付けて探すかな。キャッシュに残ってる可能性は十分にあるしね。もし自分でツールを作るなら、ブラウザ拡張機能にして、YouTubeの＜video＞要素から直接動画を引っ張るのがおすすめだよ。" userName="pzmarzly" createdAt="2025/09/20 01:47:24" color="#38d3d3">}}




{{<matomeQuote body="「この動画は利用できません」って表示されるから、みんなYouTube Musicは使わない方がいいよ。数年前にSpotifyからプレイリストを移行したら、今じゃ何十曲も「利用できません」ってなってて、どの曲だったかすら教えてくれないんだ。これは、YouTubeが故意に、復旧不可能なデータ損失を引き起こしたってこと。10年間YouTube Premiumを払ってきたけど、解約したし、もう二度と金は払わないって誓ったよ。" userName="uncircle" createdAt="2025/09/20 11:42:14" color="#ff5c5c">}}




{{<matomeQuote body="昔はこれにめちゃくちゃ執着してたな。面白い動画や画像みたいなユニークなファイルを生成するために、宇宙が何十億年もかけて協調的な努力をしてランダムな数字を作り出したんだって考えてた。それが、YouTubeのくだらない理由とか著作権とかリンク切れとかで全部無効になっちゃうのは、あまりにももったいないってね。だから、データを溜め込み始めたんだ。ハードウェアを買って、ZFSと数百テラバイトのストレージがある自宅データセンターを設計し始めたよ。どうでもいいものまで、珍しいってだけで保存してた。結婚して、この考え方は治った気がするね。今はすべて、雨の中の涙のように時間と共に失われる瞬間なんだなって思うよ。" userName="matheusmoreira" createdAt="2025/09/20 09:17:54" color="#45d325">}}




{{<matomeQuote body="俺もまだ少しはこういう考えがあるけど、なんでもかんでも溜め込むのは無駄だって現実的に考えるようにしてる。本当に残す価値があるものだけを厳選して、すごく興味があるか個人的に思い出深いものだけを保存するようにしてるんだ。" userName="balder1991" createdAt="2025/09/20 20:00:13" color="">}}




{{<matomeQuote body="全く同感だ。yt-dlpを知る前に失くした、俺にとって一番大切な懐かしの動画のいくつかは、タイトルすら思い出せないんだ。あの悲しみは言い表せないね。Spotifyだと、音楽が削除されてもプレイリストにはグレイ表示で残るのにさ。Googleの人、頼むからタイトルだけでも見られるようにしてくれ！" userName="youniverse" createdAt="2025/09/20 03:00:45" color="">}}




{{<matomeQuote body="Spotifyはデフォルトではそうじゃないんだ。通常のSpotify設定だと、単に削除された曲を黙って消去するだけ。プレイリストが自分の許可なく変更されたことに気づくには、「再生できないトラックを表示」という設定をオンにする必要があるんだよ。" userName="sneak" createdAt="2025/09/20 16:12:03" color="">}}




{{<matomeQuote body="試しに、archive.orgでそのURLにアクセスしてみた？そうすれば、少なくともタイトルは分かるはずだよ。" userName="shaky-carrousel" createdAt="2025/09/20 07:58:47" color="">}}




{{<matomeQuote body="ネットワークで透過的に動くWebキャッシュ欲しいな。LRUだけど、アーカイブ指定したリソースは消えないようにしたい。ブラウザ拡張でマークできたら最高だけど、クライアントサイドJavaScriptが邪魔なんだよね。WebサイトからのランダムなJavaScript実行を許したのは失敗だった。今、完全にフリーソフトウェアだけで生きてる人なんてほぼいないし、10年前にJavaScriptをブロックしてたけど、社会から置いてけぼりになるだけだったわ。" userName="globular-toast" createdAt="2025/09/20 08:45:34" color="#38d3d3">}}




{{<matomeQuote body="このサイトが役に立つかもね！<br>https://findyoutubevideo.thetechrobo.ca/<br>Hacker Newsにも投稿されてたよ。<br>https://news.ycombinator.com/item?id=38228481" userName="Sophira" createdAt="2025/09/20 16:11:09" color="#45d325">}}




{{<matomeQuote body="動画が消えちゃった時に、基本的なメタデータすら残らないのは本当にイライラするね。まるで、そこにコンテキストがあったはずなのに、ブラックホールができちゃったみたいだ。" userName="BrtByte" createdAt="2025/09/20 17:02:42" color="">}}




{{<matomeQuote body="なんでプラットフォームって、メディアだけ削除してメタデータやコメント、評価はそのまま残さないんだろうね？<br>法的に、アイデア自体が見つかりにくいようにする必要があるのかな？それとも、メディアだけ削除して議論は続けさせても大丈夫なの？" userName="CM30" createdAt="2025/09/20 08:06:20" color="#ff5c5c">}}




{{<matomeQuote body="メタデータを残すと、そのサービスが特定の欲しいものが足りてない、ってことを示唆しちゃうからじゃないかな。存在すら知らないものの一般的な404エラーじゃ、心に『動画タイトル』サイズの穴は開かないし、競合にニーズを満たすチャンスを与えちゃうこともない、ってことかもね。" userName="heavyset_go" createdAt="2025/09/20 13:14:39" color="#ff33a1">}}




{{<matomeQuote body="法的要件じゃない、たぶんね。経済物理的な制約だと賭けるよ。彼らは議論とかコンテンツとかアイデアなんてほとんど気にしないんだ。ただ、ベルが鳴るまでユーザーの目を特定の四角い枠の中に釘付けにしておきたいだけさ。" userName="balamatom" createdAt="2025/09/20 08:57:13" color="#ff33a1">}}




{{<matomeQuote body="名前自体が法的に削除を求められるものなのかもね。" userName="tokioyoyo" createdAt="2025/09/20 10:04:02" color="">}}




{{<matomeQuote body="削除された動画が、どのチャンネルのものだったのかさえ分からないんだよね。すごくイライラするよ。" userName="xnx" createdAt="2025/09/22 18:08:18" color="">}}




{{<matomeQuote body="ArchiveBoxがその解決策になるかもね。<br>https://archivebox.io/" userName="notrealyme123" createdAt="2025/09/20 10:16:03" color="#785bff">}}




{{<matomeQuote body="GoogleはYouTubeダウンローダーを必要としてる、っていう意見には、そうであってほしいけど信じられないな。もしYouTube動画をダウンロードできないってなったら、組織の多くはもっと柔軟なプラットフォームに移行したり、YouTubeの説明欄に別途ダウンロードリンクを貼ったりするって言うけど、どれだけの組織がそれを『絶対必要』と考えるだろう？Googleが気にするほどじゃないと思うよ。" userName="Wowfunhappy" createdAt="2025/09/19 20:32:10" color="#785bff">}}




{{<matomeQuote body="自分のYouTube動画なら、YouTube Studioからいつでもダウンロードできるじゃん？記事の主張はちょっと違うと思うな。API経由じゃダメでも、手動ならいけるよ。" userName="adocomplete" createdAt="2025/09/19 21:29:34" color="#45d325">}}




{{<matomeQuote body="毎日動画を5年間もアップロードしてたら、全部ダウンロードするのはマジでキツい作業になるだろうね。想像しただけでゾッとするわ。" userName="ThunderSizzle" createdAt="2025/09/19 22:40:44" color="">}}




{{<matomeQuote body="Google Takeoutを使えばいいじゃん。まとめてアーカイブファイルにしてダウンロードできるよ。" userName="crazygringo" createdAt="2025/09/19 23:11:41" color="#785bff">}}




{{<matomeQuote body="普通はオリジナルファイルをローカルに保存してるんじゃない？まさかYouTubeにアップロードした動画のアーカイブをYouTube任せにしてないよね？" userName="yason" createdAt="2025/09/20 15:46:04" color="">}}




{{<matomeQuote body="そういうローカル保存してる人って少数派だよ。ほとんどの人は、マスターをYouTubeにしか置いてないもん。「きっと」って言ってたけど、冗談だよね？" userName="sneak" createdAt="2025/09/20 16:13:24" color="#38d3d3">}}




{{<matomeQuote body="企業の動画とか資料って、ほとんど18ヶ月くらい経ったらアクセスを気にしなくなるよ。むしろ情報が古くなったら、積極的に消したいって思うもん。" userName="ghaff" createdAt="2025/09/20 12:48:45" color="">}}




{{<matomeQuote body="でもさ、論点って積極的にサポートするかどうかじゃなくて、ダウンロードを黙認してるかってことだと思うんだけど。" userName="BrtByte" createdAt="2025/09/20 17:03:51" color="">}}




{{<matomeQuote body="動画のダウンロードを阻止できるって前提がおかしいよ。だって再生して録画できるじゃん？どんなにデバイスがロックダウンされてても、画面を撮ればいいだけ。NetflixとかがDRM使うのは、ライセンス元が要求するから。でもDRMが効くって意味じゃないし、トレントでいくらでも見つかるしね。" userName="nitwit005" createdAt="2025/09/19 21:40:37" color="#ff5c5c">}}




{{<matomeQuote body="トレントで見られるほとんどのコンテンツって、ストリーミングサービスのDRMをハッキングして手に入れたものじゃないよ。" userName="dylan604" createdAt="2025/09/19 23:03:46" color="#ff5c5c">}}




{{<matomeQuote body="DRMを破るなんて言ってないよ。そうする必要がないって言いたかっただけだから。" userName="nitwit005" createdAt="2025/09/19 23:13:17" color="">}}




{{<matomeQuote body="AFAIK HDMIが直接リッピングを保護するなら、どうやってダウンロードしてるの？" userName="dzhiurgis" createdAt="2025/09/19 23:56:50" color="">}}




{{<matomeQuote body="DRMは完璧じゃないけど機能してるよ。YouTube動画とは違って、GitHubからWidevine Level 1 DRMを簡単に破るツールは手に入らないんだ。4Kコンテンツを違法DLするグループが使うツールや秘密鍵は保護されてて一般には出回らない。Torrentにアップされるほど人気のあるものなら関係ないけど、個人的な特殊コンテンツならDRMはDLをかなり防ぐよ（特に4Kで使うLevel 1はハードウェアデコーダーしか鍵にアクセスできない）。つまり、DRMはYouTubeみたいに100人に1人がDLできるのを10万人に1人くらいに減らす効果があるんだ。" userName="varenc" createdAt="2025/09/20 00:22:41" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そんなに複雑じゃないよ。OBSみたいなソフトを使えば、どんなDRMでも回避できるんだ。DRMコンテンツは最終的には画面に表示されるわけだし、それを防ぐ方法はない。画面とシステム音声を録画すればいいだけだから、すごく簡単だよ。" userName="estimator7292" createdAt="2025/09/20 13:27:59" color="#ff5c5c">}}




{{<matomeQuote body="うん、安価なカードでHDMIストリームをキャプチャできるから、結局はなんでもコピー可能だよ。ただ、それにはちょっと手間がかかるんだよね。広告まみれで集中を妨げられても、一番簡単な方法を選ぶ人もいるけどさ。" userName="grugagag" createdAt="2025/09/19 22:21:52" color="">}}




{{<matomeQuote body="なんでTorrentでは4Kの番組がまだあまり見つからないの？" userName="dzhiurgis" createdAt="2025/09/19 23:54:22" color="">}}




{{<matomeQuote body="Netflixの番組をダウンロードするのは、YouTubeみたいにリンクを貼って簡単にできるわけじゃないんだ。海賊版制作者が高くつくから、広告付きで提供されてる場合が多いよ。Torrentで見つかることもあるけど、映画に比べてシリーズものの方が少ないね。" userName="kelvinjps" createdAt="2025/09/20 00:29:33" color="#38d3d3">}}




{{<matomeQuote body="最高品質が欲しいなら話は別だよ。DRM側が望めば、それすら完全に止められるはずなんだ。今の方法が通用するのは、レガシーサポートのおかげ。もしHDMIやDRMの最新バージョンだけをサポートしたら、高品質な映像や音声を手に入れるのはすごく難しくなるよ。現状でも、テレビや専用ハードウェアに送られる最高品質のフィードは手に入らないままだしね。" userName="eek2121" createdAt="2025/09/20 00:12:16" color="#ff5733">}}




{{<matomeQuote body="されなかった？じゃあ、どうやってストリームのビットを直接取得してるの？通常、再エンコードされてない直接のソースがTorrentにあるよね。それとも、プレイヤーが復号した後の、デコード前のメモリバッファからソースを読み取ってるってこと？" userName="crazygringo" createdAt="2025/09/19 23:14:21" color="">}}




{{<matomeQuote body="みんながそうとは言えないけど、俺は興味ないな。ストレージ容量を大量に食うし、俺のデバイスは「1K」（1080p）しか表示できないからね。" userName="lucb1e" createdAt="2025/09/20 00:38:53" color="">}}




{{<matomeQuote body="Netflixは、OBSなどのスクリーンレコーディングを防ぐためにビデオパスを暗号化しないプラットフォームには、720p（またはそれ以下）の動画しか提供しないんだよ。" userName="Mindwipe" createdAt="2025/09/20 18:20:44" color="#ff33a1">}}




{{<matomeQuote body="https://en.wikipedia.org/wiki/High-bandwidth_Digital_Content... のこと？迂回するのはそんなに難しくなさそうだけど。" userName="lucb1e" createdAt="2025/09/20 00:40:54" color="#ff5733">}}




{{<matomeQuote body="FPGAとかを使って、TV/モニターの制御基板とディスプレイパネル間のMIPI信号を傍受できないかな？そのレベルにはDRMはないはずだよね？生のビデオ信号をどうにかしないといけないけど、ビデオカメラで撮るよりはいいし、元のファイルよりは少し劣る感じかな。" userName="Liftyee" createdAt="2025/09/20 00:42:14" color="#ff33a1">}}




{{<matomeQuote body="俺が言ってるのは、みんなストリーミングプラットフォームとは違うソースからオリジナルを手に入れてるってことだよ。" userName="dylan604" createdAt="2025/09/20 00:46:13" color="">}}




{{<matomeQuote body="最終的には信号は暗号解除されて目に見える必要があるからね。ノイズは見たくないでしょ。だからLCDと接続の間では、信号はクリアテキストで渡されてる。これを傍受できるよ。HDCPコンバーターも安く手に入るしね。" userName="array_key_first" createdAt="2025/09/24 02:52:26" color="#ff5c5c">}}




{{<matomeQuote body="1080pは2Kだよ。「K」の値はY軸じゃなくてX軸で決まるんだ。だから4Kは3840x2160なの。16K = 15360x8640<br>8K = 7680x4320<br>4K = 3840x2160<br>2K = 1920x1080<br>1K = 960x540だよ。(すべての値は下の階層の倍になってるか、1Kの場合は半分になってるね)。" userName="encrypted_bird" createdAt="2025/09/20 01:11:25" color="#ff5733">}}




{{<matomeQuote body="スクリーンレコーディングとか、仮想ディスプレイでの録画のこと？4Kコンテンツに使われるレベル1 DRMではそれは無理だよ。一部のものではいけるけど、4Kでは絶対無理。セキュリティレベルが低いと720pにダウングレードされるし。俺が間違ってるって証明してくれたらランチ奢るよ！Netflixのこのテストパターン（https://www.netflix.com/title/80018499）の4K版をOBSで録画してみてよ。カメラでモニターを撮ることはできるけど、レベル1 DRMだとビデオデコードがOSからアクセスできないハードウェアビデオデコーダーで行われるから、macOS/Windowsで4KコンテンツをOBSとかで録画しようとすると、画面が真っ黒になるんだ。スマホでも同じ。720pコンテンツならうまくいくかもしれないけどね。" userName="varenc" createdAt="2025/09/22 04:05:56" color="#785bff">}}




{{<matomeQuote body="関連情報だよ: https://en.wikipedia.org/wiki/Analog_hole" userName="1gn15" createdAt="2025/09/20 16:01:06" color="#38d3d3">}}




{{<matomeQuote body="DRMが機能しないってことじゃないよ。あんな番組全部トレントで見つけられるんだからね。やる気のあるティーンなら誰でもプラスチック片でマスターロックを開けられるけど、それでもみんな使うでしょ？正直な人を正直に保つだけだよ。" userName="dmbche" createdAt="2025/09/20 02:51:19" color="#ff33a1">}}




{{<matomeQuote body="うん、実際できるよ。そこまでしなくても、HDCPコンバーターがあるんだ。HDCP 1に変換してくれるし（マスターキーが公開されてるやつね）、普通のHDMIにも変換してくれる。HDFuryとか見てみて。" userName="veegee" createdAt="2025/09/20 02:03:32" color="#ff33a1">}}




{{<matomeQuote body="彼らはまともなトラッカーにいないよ、人気のものは全部4K HDRで手に入るから。" userName="antonkochubey" createdAt="2025/09/20 01:16:46" color="">}}




{{<matomeQuote body="Netflixオリジナルみたいに、他に元ソースがない動画はどうやってダウンロードするんだろうね？ うーん、分からない。" userName="encrypted_bird" createdAt="2025/09/20 01:01:43" color="">}}




{{<matomeQuote body="全くデタラメだよ。<br>ちゃんとしたダウンロードを見つけると、ファイル名に「NFLX.WEB-DL」って入ってるはず。これはNetflixからリッピングされたって意味。<br>DRM解除は難しくないし、GitHubにもツールはたくさんあるよ。鍵の入手が主な問題だけど、TVファームウェアのダンプとか探せば手に入るよ。これなら画面録画よりずっと簡単だし、オリジナル品質だ。" userName="pta2002" createdAt="2025/09/20 09:45:39" color="#45d325">}}




{{<matomeQuote body="どのプライベートトラッカーに行っても、海賊行為してるやつらのほとんどは無料でやってるし、それが好きでやってるだけ。<br>TV番組含め、基本的に何でも見つかるはず。見つからなくてもリクエストすればすぐだよ。<br>彼らの唯一の出費は、ストリーミングサービスのサブスク代かBlu-ray代くらいだね。" userName="pta2002" createdAt="2025/09/20 09:40:55" color="#ff5c5c">}}




{{<matomeQuote body="HDMIストリームをリッピングすると（これもDRM破りだけどね！）、必然的にビデオを再エンコードしなきゃいけないから、品質は確実に落ちるよ。<br>UI要素が画面に入り込んじゃうこともあるし、字幕も抽出できないんじゃないかな。" userName="pta2002" createdAt="2025/09/20 09:48:27" color="#ff5733">}}




{{<matomeQuote body="たった一人でコピーしてBitTorrentとかにアップロードしちゃえばそれで終わりだよ。こういう信頼できるコンピューティングスキームは全部、一番弱いリンクが破られないことに依存してるんだよね。<br>その一番弱いリンクってのは、攻撃者が常にアクセスできるハードウェアのことさ。" userName="beeflet" createdAt="2025/09/19 23:40:15" color="#785bff">}}




{{<matomeQuote body="YouTubeみたいに単純じゃないかもしれないけど、Netflixの番組の海賊版ストリームは、リリースから10分＋再生時間内には絶対に見つけられなかったことがないよ。" userName="AngryData" createdAt="2025/09/21 19:29:24" color="">}}




{{<matomeQuote body="古いバージョンに見えるね。たぶん最大でも1080pなんじゃない？" userName="dzhiurgis" createdAt="2025/09/20 05:13:38" color="">}}




{{<matomeQuote body="HDCPが、リッピングされたコンテンツが4Kじゃない理由だと思うな（もしくは、もっと高いNetflixサブスクが必要だからか）。<br>みんなHDMIスプリッターでバイパスしてるみたいだね。" userName="nitwit005" createdAt="2025/09/20 01:25:11" color="#ff5c5c">}}




{{<matomeQuote body="Googleが対策を強化したって？今のAdSenseポリシーには「Google製品の乱用」なんて記述はないよ。<br>もっと中立的に言えば、この古いルールは撤回されて、2012年以降は適用されてないんだ。<br>2025年に書かれたこの記事は、もう起こってないことについて文句言ってるんだね。" userName="tantalor" createdAt="2025/09/19 20:16:32" color="#785bff">}}




{{<matomeQuote body="Googleが、広告や犯罪行為を助長したかどうかってことを公開法廷じゃなくて私的な判決メカニズムで処理するのは、権力のひどい乱用だし、ほとんど恐喝だよ。<br>Google AdsとYouTubeが同じ独占企業じゃなかったら、こうはならなかったかもしれないのにね。" userName="loehnsberg" createdAt="2025/09/20 11:13:35" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
