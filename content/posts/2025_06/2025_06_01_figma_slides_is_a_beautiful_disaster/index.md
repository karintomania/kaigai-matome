+++
date = '2025-06-01T00:00:00'
months = '2025/06'
draft = false
title = 'Figma Slides 美しいのに欠陥だらけと批判 なぜ？'
tags = ["Figma", "製品開発", "バグ", "デザインツール", "プレゼンテーション"]
featureimage = 'thumbnails/purple3.jpg'
+++

> Figma Slides 美しいのに欠陥だらけと批判 なぜ？

引用元：[https://news.ycombinator.com/item?id=44148933](https://news.ycombinator.com/item?id=44148933)




{{<matomeQuote body="この悲惨な状況で一番変なのは、Figmaで実際にソフト使ってる人なら誰でもすぐ気づくはずの問題ばかりってこと。<br>多くのコメントはクラウドとかクロスプラットフォームが悪いって言ってるけど、同じ機能はFigmaのSlidesじゃないアプリではちゃんと動いてるじゃん。何年も前に解決済みの問題だよ。<br>だから、Slidesがなんでこんなにダメダメなんだ？外から見てると、インフルエンサーの“MVP超速で出せ”みたいなアドバイスを鵜呑みにして、バグだらけでもいいからローンチ急いじゃったスタートアップみたいに感じるね。ユーザーは必要な時に動かない製品で痛い目見ると、そこから回復するのは難しいってことを忘れちゃダメ。<br>僕のキャリア経験から言うと、これも出世第一の幹部の下でハマった時と似てるな。彼らは現実を命令できると思ってて、エンジニアに相談する前に勝手に決めた納期で全部の機能を一気に出させようとする。結局、特定の納期を要求する上司の怒りを避けるために何かをリリースして、後で本番環境でバグを直したり機能を完成させたりするのを期待するんだ。僕の場合、その幹部は実際にソフト使わなかったから、社内で評価されるためにはそれが合理的なやり方だったんだよ。そしてもちろん、結果はこうなる。" userName="Aurornis" createdAt="2025/06/01 15:27:04" color="#ff33a1">}}




{{<matomeQuote body="FigmaのPMだよ（開発ツール担当でSlidesじゃないけど）。<br>アレンさんに起きたことは本当に最悪だね。チームに連絡して、この具体的なケースを掘り下げてもらうことにしたよ。もっと一般的に言うと、Slidesが発表の時には完璧である必要があるってことは分かってるし、それ以下は許容できないことだと思って認識してる。<br>ちなみに、僕たちFigma社員は社内会議から大きなイベントまで、ほとんど全部Figma Slidesを使ってやってるんだ。PMとして毎週使ってるし、Slidesの社内フィードバックチャンネルは僕みたいな人間からの改善要望でめっちゃ活発だよ。Figmaって結構ユニークな場所で、 senior leadership（上級管理職）は納期を追いかけるより品質改善を要求する方が多いんだ。ユーザー体験がいかに重要か僕たちは分かってる。いつも完璧にできるわけじゃないけど、ダメだった時は直すことにコミットしてるよ。" userName="greysteil" createdAt="2025/06/01 16:55:56" color="#ff5733">}}




{{<matomeQuote body="＞ FYIとして、僕たちFigma社員は社内会議から大きなイベントまで、ほとんど全部Figma Slidesを使ってやってるんだ。<br>これが問題の一部だと思うな。社内での利用って、どれくらいeditor view（編集画面）の中で完結してる？Figmaのリンクをクリックしないで、PPTとかPDFが欲しいっていう社内外のステークホルダーはいる？だって、プレゼンではそういう要望って普通にあるけど、社内利用だけだとそういうニーズは出てこないでしょ。<br>例えば、数百MBもしないでPDFにエクスポートできる方法が必要だよ。PPTエクスポートなんて絶望的に壊れてるし。出力はまるで切り貼りした脅迫状みたいだよ。" userName="karthikb" createdAt="2025/06/01 17:43:05" color="#ff5733">}}




{{<matomeQuote body="ちょっと脱線だけど、普段はFigma（元のアプリ）でスライド作ってるんだけど、エクスポートしたPDF（数百MB）をAdobeの「Compress PDF」ってオンラインツールに通すと10MB以下になることを発見したんだ。FigmaからエクスポートしたPDFが最初から小さかったら最高なんだけどね。" userName="mjaniczek" createdAt="2025/06/01 18:09:38" color="">}}




{{<matomeQuote body="ファイルをメールで送るのってめちゃくちゃ一般的で、多くのビジネスで簡単なコミュニケーションのためには15MB以下であることはほぼ必須なんだよね。<br>あと、僕のactive projects（進行中のプロジェクト）をOneDriveでiPadに同期してるんだけど、これにはsteerco（運営委員会）やupdate slidedecks（アップデート用スライド資料）も含まれてるんだ。出張中や通勤中にiPadで読むのに、小さい資料の方がずっと扱いやすいし、モバイル回線でも簡単に同期できるから、やっぱり小さいファイルがいいんだよ。" userName="dahcryn" createdAt="2025/06/02 08:44:02" color="">}}




{{<matomeQuote body="遭遇した具体的なバグはともかく、これは基本的にオンラインでしかちゃんと動かない製品なのに、使う側は本番でどんな回線状況になるか事前に確実に知るのが難しいって点が、この種の製品にとって根本的な計算ミスじゃないか？視聴者の前でユーザーを恥ずかしい状況に追い込む可能性が、一定の割合でほぼ保証されてるってことだよね。" userName="tobr" createdAt="2025/06/01 17:36:56" color="#ff33a1">}}




{{<matomeQuote body="オフライン機能はあるんだよ、今回はそれがちゃんと動かなかっただけなんだ。<br>ドキュメントへのオフラインアクセスなんて、クラウドバックアップされてるアプリでは解決済みの問題だよ、Figmaも含めてね。クラウドコンポーネントについてコメントしてる人たちは、Figmaを使ったことがない人たちに違いないよ。それは本来壊れてるものじゃなくて、ただ今回はSlidesで壊れてたってだけなんだ。<br>Figmaの他のツールは概して良い出来だよ。だから、Slidesをこんなに壊れた状態でリリースしたのがマジで不思議なんだ。" userName="Aurornis" createdAt="2025/06/02 04:52:27" color="#45d325">}}




{{<matomeQuote body="でも、一般的なFigmaじゃなくてSlidesの話をしてるんだよ。プレゼンソフトって、発表中にちゃんと動くことが超重要じゃん。" userName="tobr" createdAt="2025/06/02 11:54:44" color="">}}




{{<matomeQuote body="＞ユーザーが事前にどんな接続になるか確実に知るのが難しい<br>2025年だし、ユーザーは常にネットに繋がってるって考えるのは安全だよ。イベント行く時にネット環境のこと心配したことないもん。" userName="charcircuit" createdAt="2025/06/01 18:25:54" color="">}}




{{<matomeQuote body="ユーザーは常にネット使える？いや、大事な会議中に突然落ちる時もあるし。学会での発表？ホテルが“ネットあり”って言っても、1万人で10Mbps共有とかかも。別の会社でプレゼン？ゲストネットワークのファイアウォールが厳しすぎてFigmaが読み込めないかも。プロバイダに5Gテザリングを“不正利用”で一時的に止められるかも。Computexの基調講演で発表？Figmaが障害起こしたら、数百人の記者は明日来てって言う？ネットが今まで大丈夫だったからって、見知らぬ第三者のネット環境やFigma自体が落ちないことにキャリア賭けられる？" userName="crote" createdAt="2025/06/01 18:48:30" color="#785bff">}}




{{<matomeQuote body="＞別の会社でプレゼン？ゲストネットワークのファイアウォールが厳しすぎて<br>これ、俺にもあったんだよ（笑）。ランディングページのデモ動画をコピペしたんだけど、向こうの会社がうちのCDNをブロックしてたみたいで、デモのスライドが真っ白。全部記憶で口頭デモしたけど、まあまあだったけどマジ気まずかったわ。" userName="chotmat" createdAt="2025/06/02 03:41:21" color="#785bff">}}




{{<matomeQuote body="＞大事な会議中に突然落ちる<br>記事にはネット接続が切れても大丈夫って書いてあったじゃん。<br>＞10Mbps共有<br>動画ストリーミングしてるわけじゃないし。<br>＞ゲストネットワークのファイアウォールが厳しすぎてFigmaが読み込めない<br>Figmaって業界標準ツールだし、ブロックされる可能性は低いと思うけど。<br>＞プロバイダに5Gテザリングを“不正利用”で一時的に止められる<br>この場合、スマホから直接プレゼンすればいいんじゃない？<br>＞Figmaが障害起こしたら、数百人の記者は明日来て<br>まあ、そうなるかもね。でも記者はライブストリームとか録画で見れるでしょ。" userName="charcircuit" createdAt="2025/06/01 22:46:17" color="#38d3d3">}}




{{<matomeQuote body="＞記事にはネット接続が切れても大丈夫って書いてあった<br>…そうだった？記事には正反対のこと、少なくとも2回書いてあったと思うけど。<br>＞プレゼンを開いて読み込んでても、プレゼンできるわけじゃない。実際にプレゼンをクリックする時にオフラインだとダメになる。<br>＞プレゼン中ならオフラインで利用できるように“ダウンロード”できるけど、タブを閉じるとダウンロードが解除されるから要注意！" userName="pavel_lishin" createdAt="2025/06/02 14:08:13" color="#ff5c5c">}}




{{<matomeQuote body="イベント会場って、意外と人が多い場所なのにネット環境が不安定なんだよね。施設によっては電波が届かないとこもあるし、WiFiとかローカルネットワークが混雑してたりでさ。" userName="skeeter2020" createdAt="2025/06/01 19:00:18" color="">}}




{{<matomeQuote body="いや、ユーザーがネットにアクセスできる、しかも速くて安定してるって仮定は、絶対安全じゃないよ。" userName="dcrazy" createdAt="2025/06/01 18:49:24" color="">}}




{{<matomeQuote body="Figma Slidesはそんなに高速で安定したインターネット接続は必要ないんだよ。" userName="charcircuit" createdAt="2025/06/01 22:39:42" color="">}}




{{<matomeQuote body="こう考えるのはヤバいって。ネットが繋がらない理由なんて無限にあるんだから。ただの怠慢なエンジニアリングとテスト不足でしょ、これ。" userName="murermader" createdAt="2025/06/01 18:43:48" color="">}}




{{<matomeQuote body="だから可能性が高いものから考えなきゃダメなんだよ。だって悪いことなんて常に無限に起こりうるんだからさ。" userName="charcircuit" createdAt="2025/06/01 22:39:19" color="">}}




{{<matomeQuote body="London ExCeLとかParis ExpoのWi-Fiに繋いでから、もう一回真顔で言ってみてよ？マジでヤバいから。" userName="neilalexander" createdAt="2025/06/01 20:41:37" color="#ff5733">}}




{{<matomeQuote body="事前に会場行ってITさんとスライド確認したらバッチリだったのに、本番当日になったら利用者が100倍になって全部パー！って感じなんだよ。" userName="xarope" createdAt="2025/06/02 02:37:02" color="#ff5733">}}




{{<matomeQuote body="2025年なのに、サービスが全く止まんないプロバイダーなんて使ってるヤツいんの？いないでしょ。" userName="dylan604" createdAt="2025/06/01 20:28:59" color="">}}




{{<matomeQuote body="記事にも書いてある通り、障害が起きてもちゃんと対応できるじゃん。問題なくね？" userName="charcircuit" createdAt="2025/06/01 22:37:36" color="">}}




{{<matomeQuote body="オマエ、マジでカンファレンスで発表したことないだろ？（そうじゃなきゃこんなこと言えないよ）" userName="izacus" createdAt="2025/06/01 22:41:58" color="">}}




{{<matomeQuote body="Greyさんありがとう。イベントでの発表フロー以外はFigma Slidesめっちゃ気に入ってたから、この記事読めてよかったわ。Figmaが強い方が世の中のためになるっしょ。" userName="apike" createdAt="2025/06/01 19:08:43" color="#38d3d3">}}




{{<matomeQuote body="これぞ「ウチの低遅延10 Gbps専用回線ならバッチリ動くんで！」っていう大企業お決まりのセリフの極致だな。<br>じゃあ、そのサービスを不安定な4Gを50人でテザリング共有してる環境で使ってみて？それでも”ただ動くだけ”とか言えるか？" userName="jiggawatts" createdAt="2025/06/02 02:34:44" color="#ff33a1">}}




{{<matomeQuote body="俺の予想だけど、たぶんAIアシスタントとかVibeコーディングが原因じゃね？（ちゃんと考えて作ってないって意味）" userName="xk_id" createdAt="2025/06/03 03:42:43" color="">}}




{{<matomeQuote body="僕がAppleスタイル（シンプルでノイズ無し、箇条書きではなく1スライド1アイデア）のプレゼンをすると、聴衆はすごく楽しんでくれて、アイデアも伝わるのがわかるんだ。でも、経営陣からは「会社のテンプレートを使え」って何度も言われるんだよね。彼らは全然わかってない。何が良いプレゼンなのか。自分たちが聴衆の時は楽しんでるのにね。無駄だよ。<br>追記: 余談だけど、社員700人以上の中で僕だけMacBook使ってるんだ。" userName="submeta" createdAt="2025/06/01 10:35:51" color="">}}




{{<matomeQuote body="僕の経験だと、みんなスライドを資料そのものみたいに使うんだよね。僕はいつも話の補足としてスライドを使うんだけど、後からスライドだけちょうだいって言われてビックリするよ。喜んで送るけど、それだけだと全然役に立たないんだ。だから、上司からはスライドを読めば全部わかるように、情報を全部載せろってプレッシャーかけられることもあるよ。発表者がただのナレーターになっちゃうんだ。" userName="seventhtiger" createdAt="2025/06/01 11:19:51" color="">}}




{{<matomeQuote body="僕はプレゼンを録画するように頑張ってるよ。スライドちょうだいって言われたら、この問題の対処法として、録画を全部送るようにしてるんだ。" userName="Daniel_Van_Zant" createdAt="2025/06/01 12:01:17" color="">}}




{{<matomeQuote body="それ、もらった人はどうするの？また1時間見直すわけ？AIの要約ツールに入れるとか？" userName="lucumo" createdAt="2025/06/01 12:25:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もし情報が、コピーを頼むほど重要なのに、1時間かけて見るほどじゃないって言うなら、僕から言えることはないな。だって、たった5分の記事とか30秒の会話からでも、めちゃくちゃ価値のある洞察って得られるんだから。" userName="Icathian" createdAt="2025/06/01 12:28:16" color="">}}




{{<matomeQuote body="スライドに入れる情報量は、プレゼンの内容によると思うな。10分以内の短い集中したプレゼンなら、話がしっかりしてれば最小限のスライドでいいよ。でも、もっと長くて複雑な話なら、聴衆のためにもっと詳細なスライドがあった方がいいと思う。長いプレゼンで、聴衆が飽きたり迷ったりしないように、明確で流れの良い話をするのはすごく難しいからね。" userName="jampekka" createdAt="2025/06/01 12:30:39" color="">}}




{{<matomeQuote body="僕はいつもBeamer（LaTeXのプレゼン作成拡張機能）のプレゼン作成ガイドをみんなに勧めてるよ。これが参考になるからね。<br>https://texlive.mycozy.space/macros/latex/contrib/beamer/doc...<br>いくつか抜粋するね:<br>・目次だけで内容がわかるべき<br>・スライドの文字は20～40単語、最大約80単語<br>・聴衆全員が専門家ではない前提で<br>・スライドは50秒以下しか見られないからシンプルに<br>・箇条書きは2レベルまで<br>・脚注は使わない<br>・短い文章で<br>・可能な限りグラフィックを<br>・グラフィックも説明を<br>・注意を引くだけのアニメーションはダメ" userName="arkh" createdAt="2025/06/01 12:34:39" color="#ff5733">}}




{{<matomeQuote body="ちょっと待って。あなたのポイントがよくわからないんだけど。コピーを求めるのが不合理な負担だってこと？それとも、1時間かけないと有益な情報を消化できないってこと？<br>僕はこれまでたくさんの資料を配ったけど、そんなに大変じゃないよ。たくさんの人と簡単に共有できるしね。<br>あるいは、1時間以下じゃ有益な情報が全く頭に入らないってこと？それは明らかに変だよ。たった5分の記事だってすごく価値のある洞察を含んでるし、30秒の会話なんかはもっとそうだよ。" userName="lucumo" createdAt="2025/06/01 12:39:05" color="">}}




{{<matomeQuote body="Simon Willisonのannotated presentations（スライドの後にそれぞれのスライドのトランスクリプトが続く形式）は最高だよ！<br>https://simonwillison.net/2023/Aug/6/annotated-presentations..." userName="MattSayar" createdAt="2025/06/01 14:01:01" color="#38d3d3">}}




{{<matomeQuote body="（僕が思うに伝説的な）JobsがiPhoneを発表した時のプレゼンを思い出すな。ほとんどの人が見たことない機能や使い方を持つ全く新しい製品だったのに、詳細な箇条書きのスライドはほとんどなかったけど、あのプレゼンを見た後に「理解できなかった」って感じることはなかったでしょ？あれが良いプレゼンの基準だと思うよ。" userName="no_wizard" createdAt="2025/06/01 13:57:56" color="#45d325">}}




{{<matomeQuote body="分かったよ、新しいスマホを一般向けに紹介する時はJobsのやり方でやるさ。でも、技術的な詳細をしっかり伝えたいプレゼンには最適じゃないよね。聞いてる人はイライラするし、後で読む人はがっかりするよ。<br>一つのプレゼンスタイルが全ての聴衆、全ての製品、全ての状況に合うなんて考えは、正直言って変だよ。この地球上で、そんな風に全部がうまくいくものなんて他にないんだから、スライド資料だけそうあるべき理由はないだろ？" userName="CamperBob2" createdAt="2025/06/01 14:32:24" color="">}}




{{<matomeQuote body="大事なのはね、後で資料を使って作業する時に、細かい詳細部分が重要になるってこと。話とか録画は、全体像や流れを把握するのにはいいんだけど、詳細を知りたい時は、特定の言葉やフレーズを探してあちこち飛ばなきゃいけないから面倒なんだ。書かれたものとか、画像、図の方がじっくり調べるのには断然いいよね。<br>そしてスライドの問題点はそこにあるんだ。話してる間は内容をサポートするものなのに、後で配る資料としても悪用されがちなんだよ。" userName="johannes1234321" createdAt="2025/06/01 14:57:15" color="#45d325">}}




{{<matomeQuote body="後で共有するための詳細なバージョンと、話す時に使う情報を削ぎ落としたバージョンの、二種類必要だね。" userName="illwrks" createdAt="2025/06/01 11:32:36" color="">}}




{{<matomeQuote body="良いプレゼンのスライドは、プレゼン自体がなければ価値がないんだよ。もしスライドデッキだけで価値があるっていうなら、そもそも最初からメールかWordドキュメントで送れば済む話だったはずだよね。" userName="maccard" createdAt="2025/06/01 14:58:32" color="">}}




{{<matomeQuote body="そうそう、なんでダメなの？<br>リアルタイムで見られなかった人も、早送りしたり、興味ないところはスキップしたりして、時間を節約できるんだから、別にいいじゃん。" userName="esafak" createdAt="2025/06/01 16:34:36" color="">}}




{{<matomeQuote body="僕はプレゼン用のスライドと、後で読む用のスライドって分けて呼んでるんだ。後者は本当は別のドキュメントにするべきだけど、すごく一般的になってるよね。<br>プレゼン後にスライドを渡すのが当たり前になってるから、その中間点を探してるんだ。スライドには単語を5つ以上は入れるけど、多すぎないように。写真とかグラフがすごく役に立つよ。" userName="GLdRH" createdAt="2025/06/01 11:24:32" color="#ff33a1">}}




{{<matomeQuote body="たくさんの事がこの話に当てはまるよね。<br>音声って、同じ時間あたりに伝えられる情報密度がすごく低いんだよ。<br>幸い、今は音声認識とかAIによる要約技術があるのは助かるね。" userName="sneak" createdAt="2025/06/01 13:39:34" color="">}}




{{<matomeQuote body="これは正直、つまらない講演をする人向けのアドバイスだね。良い講演はパフォーマンスなんだから、面白くてためになるべき。Steve Jobsとか人気YouTuberとか最高の話し手を見てみれば、定型的なルールなんて守ってないことが多いよ。<br>これらの“ルール”は善意だけど平凡だ。多くの役には立つだろうけど、どうせなら素晴らしい講演を目指すべきじゃないかな。ただ周りより少しマシな講演じゃなくてさ。" userName="josephg" createdAt="2025/06/01 17:08:14" color="#ff5733">}}




{{<matomeQuote body="＞ * 理想的には、目次はそれだけで理解できるべきだ。特に、講演を聞く前に理解できるべき。<br>よくあるアジェンダスライドは、僕からしたら役に立たないどころかマイナスだと思うね。<br>録画があって、個別の話に飛べるならいいけど、99%のアジェンダスライドは意味ないのに、話してる側はそれに時間かけすぎてるよ。" userName="johannes1234321" createdAt="2025/06/01 15:07:36" color="#38d3d3">}}




{{<matomeQuote body="この言い方、なんか変だね。何が“情報”なのか、って話なのかな。<br>“白鯨”のあらすじを箇条書きで読めば、理解する時間は確かに短くなるだろうけど、文章の表現とか言い回しって、伝えたいことの一部なんじゃないの？" userName="waldothedog" createdAt="2025/06/01 14:25:54" color="">}}




{{<matomeQuote body="俺は「notes」セクションを詳しい内容のために使ってるよ。物理コピーをshareしなきゃいけない場合はダメだけど、file丸ごと渡すなら全然使えるね。" userName="alistairSH" createdAt="2025/06/01 11:42:28" color="">}}




{{<matomeQuote body="slide deckを2つ組み合わせるんだ。presentationで使うslideのすぐ後ろに、会社のstyle情報とか全部入ったhidden slideを入れる。そうすれば両方のいいとこ取りができるよ。presentationの時は人が関心を持ついい感じのdeckで、downloadする時は全部detailが見られるんだ。" userName="bombcar" createdAt="2025/06/01 12:48:36" color="#ff5733">}}




{{<matomeQuote body="本当にagree。こういう「rules」は、マジでひどいpresentationを避けるためのもので、いいpresentationの公式なやり方じゃないよ。「say what you’re going to say, say it and then say what you said」ruleとかworstだね。重要な文脈を落とさないためらしいけど、結局ただのboringな繰り返しになること多すぎ。<br>stand-up comedianの話、面白かったよ。俺がもらったbestなpresentation adviceは、会社が用意したstandup comedianのworkshopからなんだ。彼のmain messageは「hero’s tale」formatに従うこと。tech presentationには関係なさそうだけど、意外と当てはまるんだよ。" userName="IshKebab" createdAt="2025/06/01 18:52:46" color="#ff33a1">}}




{{<matomeQuote body="君はdetailedなdocumentationが欲しいみたいだね。それはいいけど、talkってそういうもんじゃないんだ。良いtalkはreferenceじゃないし、良いdocumentationはengagingなtalkじゃない。みんながそれを求めるなら、2つ作るべきだよ。talkをdocumentationに押し込めようとしない方がいい。それじゃあ悪いものになるだけだよ。" userName="josephg" createdAt="2025/06/01 16:51:12" color="#ff33a1">}}




{{<matomeQuote body="ほとんどのvideoの下にはsliderがあるから、好きな場所にclickしてdragできるよ /s<br>presentationのvideoは、slidesだけよりpretty much always betterだね。仮にslidesがあっても、探してるものを見つけるにはclickしなきゃいけない。君のargumentも「みんなそれに何をして欲しいの？clickしてslide全部読むの？」って簡単に言い換えられるよね？<br>そしてその言い換えも元のargumentと同じくらい意味不明（none）だよ。" userName="joshstrange" createdAt="2025/06/01 16:25:11" color="">}}




{{<matomeQuote body="SimonのblogはgeneralにLLMの最新情報を知るのにいいけど、これは全然presentationのやり方として良くないね。一つのfieldのexpertiseと別のabilityを混同しちゃダメだよ。" userName="kingkongjaffa" createdAt="2025/06/01 14:44:36" color="">}}




{{<matomeQuote body="この状況になったことあるよ。infoを見るのに1時間費やすけど、そのinefficiencyは嫌いだね。なんか失礼だと感じるんだ。" userName="Scene_Cast2" createdAt="2025/06/01 14:58:18" color="">}}




{{<matomeQuote body="俺の会社ではpresentation全部記録してるよ。slidesをshareするのと似てるけど、もっといい。だってpresentation全部見られるんだから。" userName="freeone3000" createdAt="2025/06/01 13:17:30" color="">}}




{{<matomeQuote body="まあ、俺が見たほとんどのslidesの現実とは違うけどね。ほとんどはtalkのpretty goodなsummaryになってるみたい。変な話、talkより情報が多いのもあるよ。俺が見たほとんどのpresentationはemailかarticleで済んだんじゃないかと思う。だから君にagreeってことかな？" userName="lucumo" createdAt="2025/06/01 17:59:51" color="">}}




{{<matomeQuote body="俺はノートを多めに使ってスライドを使ってて、ノートには詳細が書いてあるんだ。トランジションとかアニメーションも好きだよ（やりすぎないけど）。紹介されてるスライドショーには、再生しないと分からない「ステップ」が結構あるんだ。<br>だからスライドちょうだいって頼むのは価値があるし、自分のペースを保つのにも役立つんだ。<br>ノートをそのまま読むことはないけど、トピックには沿ってるよ。<br>例はこちら！ [0], [1], [2], [3], [4]<br>[0] https://github.com/ChrisMarshallNY/ITCB-master/tree/master/P... (Core BluetoothのKeynoteプレゼンいくつか)<br>[1] https://docs.google.com/presentation/d/1qQDAuhGvBvBlZVH2zn_V... (効果的なコミュニケーションについて語るGoogle Slides)<br>[2] https://docs.google.com/presentation/d/11ZvUjZogJ86-AIsAv1Q3... (Swift Programming Languageの基本で古い入門Google Slides)<br>[3] https://littlegreenviper.com/cruft/CommunicationBasics.pptx ([1]のPowerPointをダウンロード)<br>[4] https://littlegreenviper.com/a-quick-introduction-to-the-swi... ([2]のブログ記事)" userName="ChrisMarshallNY" createdAt="2025/06/01 12:11:44" color="#ff5c5c">}}




{{<matomeQuote body="Steve Jobsが亡くなって2011年。14年経ったんだな。彼のプレゼンは伝説だった。iPhoneは2007年に発表されて18年。世界は素晴らしいプレゼンとは何か、プレゼンソフトはどうあるべきかを学ぶべきだったんだ。<br>なのに20年近く経っても、MS Powerpoint含め、Keynoteの2007年レベルに達してるスライドやプレゼンソフトが一つもない。俺が学んだことの一つは、人にコピーを頼んでも、100％ exactなレプリカを作るだけでも難しいってことだ。<br>ほとんどの人はexactにコピーすることすらできず、細かいディテールを無視するんだ。彼らはコピーして物事を悪くする、まるで90年代と00年代のMicrosoftみたいにね。<br>そして結局、これはTasteの問題に行き着くかもしれない。Steve Jobsが言ったように、Microsoftの最大の問題はTasteがないことだ。彼らには素晴らしい製品かダメな製品かを判断するクラフトマンシップやプロダクト geniusがないんだ。代わりに素晴らしい製品とは、セールスやマーケティングの人々によって、売れるか売れないかに distilledされるんだ、今のAppleもね。" userName="ksec" createdAt="2025/06/01 09:40:41" color="#ff33a1">}}




{{<matomeQuote body="Steveみたいに業界でその役割を担える人がいなかったのは、本当に残念だよな。<br>新しくてエキサイティングなことを人々に効果的に伝える能力が欠けてて、それが全体のモラルに影響してる。<br>今はエンジニアチームを抱えたハイプマンがどんどんソリューションを押し付けてくる。<br>Steveがハイプに貢献してないとは言わないけど、どうにかしてそれを自然で歓迎されるように感じさせたんだよな。" userName="nixpulvis" createdAt="2025/06/01 11:09:00" color="#45d325">}}




{{<matomeQuote body="＞ The world should have learned what a great presentation is and what presentation software should be like.<br>根本的な違いはソフトウェアでは直せないんだ、だってソフトウェアは物事を気にかけるとか価値を置くようにできないからね。Jobsはプレゼンをパフォーマンスとして見ていたんだ。<br>軽蔑的に言ってるわけじゃないよ、Jobsはプレゼンを劇やミュージカルのように扱っていたってこと。何日もかけてプレゼンをリハーサルして微調整しようとする人は少ない（できる人はもっと少ない）。<br>現実世界の設定で、フィードバックや提案を得るために複数人の日を費やすなんて、さらに少ないね。" userName="masklinn" createdAt="2025/06/01 09:57:14" color="#45d325">}}




{{<matomeQuote body="他で数ヶ月前に出荷されたものを革命的として発表することもあって、たまにイライラしたけど、そこがまさに他の多くの会社/ブランドが見逃したポイントなんだ。<br>ユーザーベースに貢献して、可能な限り退屈な技術で製品を革命的にするんだ。<br>もちろんAppleという fantasticな資本力のある企業は技術R&Dに多額を費やしたけど、彼らは通常独自の非標準的なことをしたんだ（垂直統合、狭い焦点の結果、後に製品/ブランド差別化の利点）。<br>もちろん、これもまた、Mac/MacBooksの wildly successfulのおかげで可能だったんだ。" userName="pas" createdAt="2025/06/01 12:50:23" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="あの頃はMacとかMacBooksはそんなにめちゃくちゃ成功してたわけじゃないんだよ。iPodsはすごかったけどね。<br>2000年代のグラフは見つけられないけど、AppleのデスクトップとコンピュータはiPhoneが出てから（そしてMacBook Airが出てから）もっと使われるようになったんだ。<br>https://gs.statcounter.com/os-market-share/desktop/united-st..." userName="lotsofpulp" createdAt="2025/06/01 14:31:43" color="#45d325">}}




{{<matomeQuote body="それ、良い観察だね。そんな風に考えたことなかったけど、最近Jobsみたいな人って思いつかないな。<br>最近は何でも押し付けられてる感じだよね。例えばVR体験に世界を usheringする彼らのアジェンダの中で、俺たちはただの役割みたいに。<br>Steveは俺たちが待ってたもの、本当に欲しかったものを届ける術を知っていたんだ。<br>それが多分、プレゼン全体を助けたんだろうね。" userName="enos_feedler" createdAt="2025/06/01 11:18:24" color="#785bff">}}




{{<matomeQuote body="多分物議を醸す意見だと思うけど、ほとんどの人はSteve Jobsから役に立つことをあまり学べないし、彼のプレゼンを真似るのもムズいと思うんだ。<br>彼には研磨するための巨大なサポートチームがいたし、彼は非常に skilfulだったからね。<br>車を運転したことのない人がFormula 1を見て学ぼうとするようなものだよ。<br>確かに彼らのドライバーはdrivingが amazingだけど、配達員がF1のスピードを出せないことに文句を言うことはできないでしょ。" userName="CJefferson" createdAt="2025/06/01 11:37:21" color="#45d325">}}




{{<matomeQuote body="あと、スライドデッキはよく二重目的があるんだ。だいたいはOKなプレゼンであり、同時に、あなたにそれをparagraphsに分解して各paragraphを説明してほしい人向けの良いdocumentでもあるんだ。<br>そう、Tufteはこれが嫌いだったね、なぜならプレゼンはプレゼンであるべきで、人々はaccompanying technical reportを読むべきだって。<br>Tufteはこういう二重目的を嫌ってたんだよ。" userName="wisty" createdAt="2025/06/01 10:44:22" color="#ff5c5c">}}




{{<matomeQuote body="Jobsスタイルのプレゼンのために空けられたニッチはあるね。<br>＞ We lack the ability to effectivly communicate what’s new and exciting to people and it’s effecting the moral across the board.<br>この意見には、ちょっと賛成できないな。<br>最近心に残ったプレゼンはFrameworkの12 inch laptopだね [0]。<br>全然polishされてない、カメラも揺れてるし、彼らがrehearsedしたのかmultiple takesしたのかも分からない。<br>そして彼らは、もっと良いvideoを作るためにvideo producersに連絡してほしいと公に頼むほど consciousなようだ。<br>でも、あのプレゼンはviewerに伝えるべきことを全て伝えてるんだ、clearで、well explainedで、succinctで、その製品があなた向けなら今すぐbuyしたくなる。<br>私はSteve Jobsの再来とか、Y軸のないgraphsとかreality distortion fieldsなんていらないんだ。<br>私は製品がほとんど自分で語ってくれて、simpleでstraightなexplanationだけで十分だって自信を持ってる会社が欲しいんだ。<br>[0] https://youtu.be/Ejl-7X74tgc" userName="makeitdouble" createdAt="2025/06/01 12:30:13" color="#ff5733">}}




{{<matomeQuote body="プレゼンはたった2回練習するだけで、多くのcorporate presentersよりずっと上に行けるよ。大イベントでも、スライドを初めて見るみたいな人も多いから、練習するだけで違いがハッキリ出るんだ。" userName="bombcar" createdAt="2025/06/01 12:52:10" color="#45d325">}}




{{<matomeQuote body="彼が「革命的だ」って言ったものが他で何ヶ月も前に出てたって批判は、「一番乗り」より「正しくやる」を重視する特定のnerdだけが気にしたことだよ。今の時代にこれを言うのは、第二次世界大戦後の日本兵の残党みたい。" userName="albedoa" createdAt="2025/06/01 20:16:07" color="">}}




{{<matomeQuote body="SaaSの製品カンファレンスに行くと、みんなSteve Jobsみたいに新機能の広告みたいなスライドプレゼンしてる。中身より見た目ばかりで、詳しいことは担当営業任せ。これを社内発表でやったら、すぐPIP送りだよ。" userName="rchaud" createdAt="2025/06/01 22:07:38" color="#785bff">}}




{{<matomeQuote body="彼は普通なものを非凡に変えたんだ。出荷しない嘘の約束じゃなくて、実際に出荷したもので人々を熱狂させた。今のSilicon Valleyが彼を真似しようとして失敗してるのとは全然違うよ。" userName="thejazzman" createdAt="2025/06/01 11:14:56" color="">}}




{{<matomeQuote body="アカデミアでの経験だと、発表者の半分以上が登壇直前にスライドを作るよ。特に年配の教授は、手抜きで準備不足な話し方をすることが勲章みたいになってる。もう頑張らなくていいくらい偉いってことらしい。" userName="bowsamic" createdAt="2025/06/01 12:59:35" color="">}}




{{<matomeQuote body="プレゼンにはこういうのがある：聴衆が多いほど、メッセージは小さくしなきゃいけない。みんなこのポイントを全然理解してない。" userName="marcosdumay" createdAt="2025/06/01 13:44:17" color="#ff5c5c">}}




{{<matomeQuote body="「革新的」と言ってたけど、実は他でも先にあったんだって。でも、一番最初より「一番うまくやった」のが重要なんだよね。どんなにすごい技術でも、製品が売れなきゃ意味ないもん。" userName="cosmic_cheese" createdAt="2025/06/01 13:32:01" color="#38d3d3">}}




{{<matomeQuote body="プレゼンソフト開発してたけど、結構複雑だよ。パワポとか強いのはタダみたいなもんだし、みんな使い慣れてるから。有料ソフトは売上とか見る人が使うし、美しさより成果でしょ。それに、ほとんどのプレゼンは質が低いんだ。凝った機能あっても、みんな基本ので済ますか、変に飾り付けすぎて逆に見にくくする。結局、スライドより内容とか話し方の方が大事なんだよ。" userName="mrisoli" createdAt="2025/06/01 11:58:42" color="#785bff">}}




{{<matomeQuote body="プレゼンで一番大事なのは、誰が聞いてるか知ることだよ。技術的な話を詳しくしてもダメな相手もいるし、その逆も。細かい技術的なことは担当者が話すんだ。だって、それがその後の問い合わせにつなげるための狙いだからね。" userName="maccard" createdAt="2025/06/01 22:50:58" color="#ff5c5c">}}




{{<matomeQuote body="「大成功」って言うけど、何をもって？ iPodとかiPhoneとかiPad、最近のM Macは確かにすごい成功だと思う。周りのみんなが持ってたし。でも、2000年代初期のiMacはそこまでじゃなかった気がするな。" userName="lotsofpulp" createdAt="2025/06/02 11:29:51" color="">}}




{{<matomeQuote body="そうそう、利益率高くてたくさん売れたから「めっちゃ儲かった」って言いたかったんだよ。このリンク見てみて。<br>https://lowendmac.com/ed/fox/11ff/apple-decade.html<br>https://cdn.statcdn.com/Infographic/images/normal/8817.jpeg" userName="pas" createdAt="2025/06/01 23:08:19" color="">}}




{{<matomeQuote body="そうだね。みんなSteve Jobsのプレゼン真似しようとしすぎ。あれ何十年もかけて完成させた技だから、普通はそう簡単にできるもんじゃないのに、多くの人は逆に失敗してると思うよ。" userName="pcurve" createdAt="2025/06/01 17:33:36" color="#ff5c5c">}}




{{<matomeQuote body="今でもAppleのやり方は違うと思うよ。（UIとかまだおかしい。）ハードは最高だけどソフトはマジでサーカスみたい。Finderとか設定で簡単なことやろうとしてごらん。でも、昔は平均的なAndroidよりは全然キビキビ動いたし、見た目も一貫してたのは確か。" userName="pas" createdAt="2025/06/01 23:13:07" color="">}}




{{<matomeQuote body="あの動画（良いよね）見ててわかるのは、彼らは自分たちのストーリーを毎日話してるってこと。聴衆が知りたがってる詳細もわかってる。AppleのM1 Mac発表動画[0]を見ても、メモリ交換したい人には響かないけど、誰かが机の上で分解してる動画なら興味持つでしょ。<br>[0] https://www.youtube.com/watch?v=q_K2YUe1PN4" userName="maccard" createdAt="2025/06/01 22:53:12" color="#38d3d3">}}




{{<matomeQuote body="SteveがPC革命の時代にいたのは幸運だったよ。彼はその形成に大きく関わったけど、あの時代にあのポジションにいたのも大きかった。今はPCほど普及した技術がない。AIもまだ完全に機能するわけじゃないから、PCみたいに完璧な解決策とは感じないよね。最近は技術が自分自身で苦しんでる。誰かリーダーが出てきて、Usabilityをちゃんと見直してほしいな。クッキー同意みたいなごまかしじゃなくて、企業とユーザーの契約とかを根本的に変える必要があると思う。" userName="nixpulvis" createdAt="2025/06/01 12:14:37" color="#ff5733">}}




{{<matomeQuote body="あとグラフィックデザイナーじゃない人もね。カンファレンス発表のために練習したり、もっとお金かけたり（普通は自腹）、準備したりするべきかもしれないけど、現実的じゃないでしょ。50人以下の聴衆のために。だいたいみんなそこそこの発表してると思うけど、もっと良くできるかもね。でも、何事もトレードオフだよ。" userName="ghaff" createdAt="2025/06/01 10:07:34" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
