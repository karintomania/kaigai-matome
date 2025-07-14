+++
date = '2025-07-07T00:00:00'
months = '2025/07'
draft = false
title = 'Pocketに保存したリンクで自分をプロファイリング！o3を使ったらここまで分かった'
tags = ["AI", "データ活用", "プロファイリング", "パーソナルデータ", "自己分析"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Pocketに保存したリンクで自分をプロファイリング！o3を使ったらここまで分かった

引用元：[https://news.ycombinator.com/item?id=44489803](https://news.ycombinator.com/item?id=44489803)




{{<matomeQuote body="これ読んで、自分のPocketにもアーカイブ（4200件！）あるじゃんって思って、o3、gemini 2.5 pro、opus 4で同じプロファイリングを試してみたんだ。<br>chatgpt UIは入力サイズ大きすぎてダメだったよ。80kトークンくらいだったけど、o3の200kコンテキストサイズより小さいのにね。<br>gemini 2.5 pro：性格とか興味のプロファイルはうまくいったけど、年齢層、仕事、場所、親かどうかは全然ダメ。間違った予測だった。<br>opus 4：これは完璧だったよ！ベースとなる都市（amsterdam）、年齢層、関係の状況まで正確に予測。親かどうかは何も言わなかったけど。<br>geminiもopusも、僕の役割については失敗したね。まあ、これは仕方ないかも。僕はデータサイエンティストなんだけど、ソフトエンジニアリングの実践についてたくさん読んでるんだ。ソフトウェア書くのが好きで、仕事ではできないから個人プロジェクトでコード書いてるんだよね。だからシステム設計とか色々学ぶ必要があるんだ。両モデルとも僕をソフトウェアエンジニアだと思ったみたい。<br>全体的に面白い実験だったよ。一つ気づいたのは、両モデルとも趣味は写真だって言ったんだけど、もしYouTubeの視聴履歴も見れたら、自信持ってテニスだって言ったはずだ。普段記事を読むより動画見るようなトピックや興味については、YouTubeの視聴履歴とPocketのアーカイブデータを組み合わせたら面白そうだね（データ取得は大変だろうけど）。" userName="saeedesmaili" createdAt="2025/07/07 14:09:40" color="#785bff">}}




{{<matomeQuote body="これはサインだと思って、SWE（ソフトウェアエンジニア）の仕事目指してみたら？興味あるみたいだし。<br>今の仕事が何だからって、関連する分野に転職できないわけじゃないよ。" userName="tehlike" createdAt="2025/07/07 14:52:54" color="">}}




{{<matomeQuote body="趣味は趣味のままで良い時もあるよね。" userName="justusthane" createdAt="2025/07/07 15:53:32" color="">}}




{{<matomeQuote body="Google Takeoutを使えば、YouTubeのデータ全部、視聴履歴も含めて取得できるはずだよ。<br>この記事が良い例だよ：<br>’When I downloaded all my YouTube data, I’ve noticed an interesting file included. That file was named watch-history and it contained a list of all the videos I’ve ever watched.’<br>https://blog.viktomas.com/posts/youtube-usage/<br>もちろんヨーロッパ人としては、企業がデータにアクセス権を与えるのは法的な義務だけど、Google Takeoutは世界中で使えるんじゃないかな？" userName="juliendorra" createdAt="2025/07/07 14:53:57" color="#45d325">}}




{{<matomeQuote body="これ信じてたから、大学でコンピューターサイエンス避けたんだ。大好きな趣味を台無しにしたくなかったから。<br>卒業して数年、何したいか分からずキャリアに迷走した後、ソフト開発を試してみることにしたんだ。大好きな趣味を台無しにするリスクを冒してね。<br>間違いなく最高の決断だったよ。今じゃ、一番大好きなことしてお金たくさんもらえるんだ…これほど良いことってある？20年経っても、まだ一番の趣味だし、お金払い続けてくれるんだ。" userName="cortesoft" createdAt="2025/07/07 22:43:29" color="">}}




{{<matomeQuote body="これは、Google（Alphabet）が実際に君についてどれだけ知ってるかについて、間違った印象を与える可能性があるよ。これはGoogleが「OK、ログイン中のYouTube活動から分かってるのはこれね！」っていうゲームをやってるだけだ。<br>でもGoogleや他の”広告”（監視の婉曲表現）業界は、IP/MACアドレスから手持ちの他のあらゆる手口まで、様々なデータポイントの集合に基づいて追跡して「プロファイル」を作ってるんだ。" userName="yubblegum" createdAt="2025/07/08 12:43:11" color="">}}




{{<matomeQuote body="Googleの社内では、自分の個人的な広告プロファイルをちょっと覗けるおもちゃツールがリリースされたんだけど、気持ち悪いくらい詳しいから一週間か二週間で取り下げられたらしいよ。" userName="dietr1ch" createdAt="2025/07/08 15:17:57" color="">}}




{{<matomeQuote body="100%。僕はプロのサーファーとして通用するキャリアは絶対に無いって確信してる…それが事実じゃないとどんなに願ってもね。" userName="abrookewood" createdAt="2025/07/08 07:12:56" color="">}}




{{<matomeQuote body="まさにこれだね。何かでお金を稼ぐ必要が出てくると、そこから得られる価値が失われるかもしれないし、ストレスとかのマイナス要素まで加わることもあるよね。" userName="formerphotoj" createdAt="2025/07/07 19:36:11" color="">}}




{{<matomeQuote body="o3についてなんだけど、ファイルをzipしてアップロードすれば、Pythonとかgrep、シェルを使って調べられるよ。SQLite DBで使うのはまだ試してないけど、ローカルではエージェントでそうやってるんだ。" userName="larve" createdAt="2025/07/07 18:01:35" color="#45d325">}}




{{<matomeQuote body="これUSAでやったことあるんだ、結構すごいよ。TODOリストには、3回以上見た音楽動画を全部解析してアーカイブすることを入れてるんだ。" userName="jazzyjackson" createdAt="2025/07/07 15:19:17" color="">}}




{{<matomeQuote body="色んなデータをまとめて繋ぎ合わせるなら、Agenticなモデルより推論とか思考に強いモデルの方がいいと思うな。o3がコンテキストを要約したらどうなるか、見てみたいね。" userName="tgtweak" createdAt="2025/07/07 14:37:14" color="">}}




{{<matomeQuote body="働く相手に大きく依存すると思う。やりたいことを好きにやらせてくれるなら、自分にも相手にも良い結果が出るよ。歯車みたいに扱われて、無理やりやらせられる感じだと、最悪だろうね。" userName="p1necone" createdAt="2025/07/07 23:21:50" color="">}}




{{<matomeQuote body="そうだね、もちろん。情熱を仕事にするとうまくいくこともあるよ。でも、それが『いつも』やるべきことだって考え方には反対なんだ。" userName="justusthane" createdAt="2025/07/07 23:31:10" color="">}}




{{<matomeQuote body="最初のソフトウェアの仕事は楽しかったな。2番目の今の仕事は、実際の作業以外は楽しいよ。官僚主義が多すぎ！でも、まだ自分の技術への愛は失ってない。他のスキルも身についてるしね。" userName="8n4vidtmkvmk" createdAt="2025/07/07 23:53:59" color="">}}




{{<matomeQuote body="あれは趣味だったんだ。それからComputer Scienceを勉強して、今FAANGで働いてる。多分、親が生涯で稼ぐより一年で多く稼いでるよ。" userName="tehlike" createdAt="2025/07/09 17:18:49" color="">}}




{{<matomeQuote body="Google TakeoutからYouTubeの履歴をエクスポートすれば、今まで見た全ての動画にこれを試せたよ！<br>https://takeout.google.com/settings/takeout/custom/youtube?p...<br>そしてpupとjqを組み合わせてHTMLファイルから動画タイトルをパースしたんだ。<br>cat watch-history.html \＼<br>    | pup ’.outer-cell .mdl-grid .content-cell:nth-child(2) json{}’ \＼<br>    | jq -r ’.[] .children[0] | select(.tag != ”br”) | select(.text | startswith(”https://www.youtube.com/watch?v=”) | not) | .text’ \＼<br>    ＞ videos.txt" userName="alexnorton" createdAt="2025/07/08 13:33:22" color="#ff5c5c">}}




{{<matomeQuote body="別に。ソフトウェア開発は趣味としてもキャリアとしてもやってるよ。" userName="tehlike" createdAt="2025/07/09 17:08:14" color="">}}




{{<matomeQuote body="データは手に入るし、びっくりするくらいデカくなることあるよ。YouTubeだけで何ギガも溜まっちゃった。無駄もいっぱいありそうだけどね。" userName="viraptor" createdAt="2025/07/08 08:59:13" color="">}}




{{<matomeQuote body="18年のキャリアでいろんなとこで働いたけど、どの仕事もプログラミングは楽しかったな。どんな問題でもいいんだ、ただコンピューターで解決するのが好きなんだよね。" userName="cortesoft" createdAt="2025/07/08 20:00:48" color="">}}




{{<matomeQuote body="プロンプトを反復的に改良するピラミッドを使うといいよ。安いモデルで生のデータを塊ごとにまとめて、次に塊のまとまりを大きくしながら、高価なモデルを使ってほしい要約レベルにする感じ。" userName="greenavocado" createdAt="2025/07/07 14:36:18" color="#45d325">}}




{{<matomeQuote body="＞ 両方のモデルが「私はソフトウェアエンジニアだ」って思ったみたいね。<br>キャリアじゃなくても、きっとまだそうだよ :)" userName="LoganDark" createdAt="2025/07/07 17:38:48" color="#45d325">}}




{{<matomeQuote body="https://archive.zhimingwang.org/blog/2014-11-05-list-youtube... と https://github.com/yt-dlp/yt-dlp が役立つかもね。YouTubeは古くなると見れなくなったりするから、全部ダウンロードして後で整理する方がいいかも。" userName="toomuchtodo" createdAt="2025/07/07 16:27:45" color="#38d3d3">}}




{{<matomeQuote body="著者は、そうやっても高品質な応答は得られなかったって言ってるよ。テキストをモデルのコンテキストに入れれば、モデルが使える情報が全部使えるようになるんだ。" userName="saeedesmaili" createdAt="2025/07/07 18:33:39" color="#ff33a1">}}




{{<matomeQuote body="同意。だから推論モデル（gemini 2.5 proと拡張思考ができるopus 4）を使ったんだよ。" userName="saeedesmaili" createdAt="2025/07/07 18:21:58" color="#38d3d3">}}




{{<matomeQuote body="80kトークンを読むのにオーバーヘッドのせいで80kトークン以上かかるらしいよ。" userName="datpuz" createdAt="2025/07/07 22:20:13" color="">}}




{{<matomeQuote body="俺のPocketデータも99％未読だったよ。「やばいリンクリスト狂」ってこと以外、自分について何か分かるのかな？（笑）" userName="elcapitan" createdAt="2025/07/07 18:05:40" color="#ff33a1">}}




{{<matomeQuote body="長年Pocketを「後で読む」ってことで、とりあえず仕事に戻る言い訳にしてたわ。" userName="gavmor" createdAt="2025/07/07 20:20:06" color="">}}




{{<matomeQuote body="分かる！いっそ終了するって知らずに、ボタン押したら＼dev＼nullに保存されるだけにして欲しかったな。" userName="internet_points" createdAt="2025/07/08 07:06:51" color="">}}




{{<matomeQuote body="Wallabag.itがPocketからのインポートうまくいったよ。月4ドルだったかな。" userName="alsetmusic" createdAt="2025/07/10 01:10:03" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それは”3ヶ月で4ユーロ”の間違いだよ ;-) (wallabag.itのニコラより)<br>ようこそ！" userName="nicosomb" createdAt="2025/07/12 05:12:38" color="">}}




{{<matomeQuote body="既読と未読を比べたら、建前と本音の好みが見えるかもね。未読リストってだいたい「こうなりたい」っていう願望だと思うんだ。Amazonの欲しいものリストと買ったものの違いみたいなさ。" userName="sandspar" createdAt="2025/07/07 18:38:30" color="#45d325">}}




{{<matomeQuote body="まあ、いくらでも見てれば好きなパターンは見つけられるし、その逆もそうだよね ;)" userName="elcapitan" createdAt="2025/07/07 18:41:39" color="">}}




{{<matomeQuote body="まあ、読んでても読んでなくても、それらのリンクを保存したのには何か理由があったんでしょ。" userName="bryancoxwell" createdAt="2025/07/07 18:22:59" color="">}}




{{<matomeQuote body="AIで自分のデータ分析するのが流行りだね。企業がやってるみたいにさ。俺もブラウザ履歴とかChatGPT＼Claude、Redditコメントで試したけど、長いコンテキストとかデータ連携が課題。知識グラフを使う方法もあるみたい。最近のAIスタートアップはLLMにvector DBと知識グラフ繋げるのが定番だよ。個人向けAIシステム、出てほしいなぁ。企業のエンゲージメント優先じゃなくて、ユーザーに役立つやつ。RSSリーダー時代みたいに、興味を深掘りできるやつ。https:＼＼www.dimensional.me＼ ってアプリもあるけど、性格テストより、デジタル行動全部から知識グラフ作る方が厳密かも。" userName="jackdawed" createdAt="2025/07/07 17:45:40" color="#785bff">}}




{{<matomeQuote body="RSSリーダー時代は、キュレーションされた技術やデザインのコンテンツにたくさん触れられて、この分野のセンスと知識がめっちゃ磨かれたんだよね。いやー、RSS時代がどれだけ自分を助けてくれたか再認識したわ。いろんなソースの記事をフォローして、興味に合わせて優先順位をつけてた。高校生の時に何千記事も読んで、テクノロジーの仕組みに関するメンタルモデルがどんどん良くなっていったのは本当に役に立ったよ。ずいぶん変わったけど、そのメンタルモデルは今でもかなり正確だし、興味のあるところを掘り下げるのに便利。" userName="DavidPeiffer" createdAt="2025/07/08 04:02:51" color="#38d3d3">}}




{{<matomeQuote body="＞Instead of optimizing for engagement and ad revenue, these systems are optimized for user utility.<br>ユーザーのために最適化されてるって言うけどさ、それって結局コンフォートケージに閉じ込めてるだけじゃない？コンフォートケージはエンゲージメントケージよりはマシだけど、たまにはそこから出た方が良いでしょ。<br>＞During the RSS reader era, I was exposed to a lot of curated tech and design content and it helped me really develop taste and knowledge in these areas.<br>RSS時代のキュレーションって、人間の手によるものだから、必ずしも君が同意できたわけじゃないでしょ？" userName="nottorp" createdAt="2025/07/07 17:52:18" color="#ff5733">}}




{{<matomeQuote body="＞Are they, or instead they will help keeping you in your comfort cage?<br>コンフォートケージの話だけど、YouTube shortsとかtiktokがどうしてるか注意深く見てるんだ。同じジャンルやトピックだけじゃなくて、常にexplore-exploitのパターンなんだよ。次に君の注意を引くものを絶えず探して、そのコンテンツをたくさん見せて、そしたら次に行く。それぞれの興味のまとまりはピークに向かって、それから衰退していくんだ。<br>だから、ベーキング動画を見たからって、そのコンフォートゾーンにずっと閉じ込められるわけじゃないんだよ。" userName="janalsncm" createdAt="2025/07/08 00:17:24" color="#ff5c5c">}}




{{<matomeQuote body="でも君はエンゲージメントケージの話をしてるけど、俺はただ、そこから抜け出してもコンフォートケージに捕まらないように気をつけろって指摘してるだけだよ。" userName="nottorp" createdAt="2025/07/08 16:59:18" color="">}}




{{<matomeQuote body="エンゲージメントケージにちゃんとした定義はあるの？それとも単にHNでウケそうな言葉？（笑）<br>結局、コンテンツを見つけることって常にexplore-exploitの繰り返しだよ。このループを何でチューニングするかで、その用途にとって役立つかどうかが決まるんだ。" userName="Karrot_Kream" createdAt="2025/07/08 20:39:13" color="#ff5c5c">}}




{{<matomeQuote body="ん？コンテンツ発見って常にexplore-exploitループなの？それとも金儲けのためにやるときだけ？" userName="nottorp" createdAt="2025/07/10 13:08:22" color="">}}




{{<matomeQuote body="はあ？exploreってのはユーザーに新しいコンテンツを見せることだよ。exploitは同じコンテンツをもっとたくさん見せること。HNのアルゴリズムも両方やってるって言えるね。トップページはいろんなトピックを見せてexploreさせて、高評価がページランキングを上げることで、みんなの共通の関心（exploit）を利用してるんだ。" userName="Karrot_Kream" createdAt="2025/07/11 18:16:21" color="#38d3d3">}}




{{<matomeQuote body="YT Musicは音楽をexploreするのに良いアルゴリズムだね。ある曲をクリックすると、その後のプレイリストは似た曲と君が好きそうな曲が混ざってる。好みに基づいて違う音楽を探すか、もっと新鮮なものにするか決められるボタンもあるし。<br>Twitterは完全にコンフォートケージにいる例だよ。君と意見が合う人と繋がせて、わざわざそういうバブルを作り出す。<br>Metaは結局rage cageになりがちだね。例えば、億万長者になる方法の動画を批判したりすると、もっとそういう動画を見せたりする。<br>HNは以前はデフォルトって感じだった。みんな同じケージにいるフォーラム。HNの文化や考え方を批判する人もいるけど、たまにそれは単に普段見慣れてない世界を見せられてるだけってこともあるんだ。" userName="muzani" createdAt="2025/07/08 01:28:41" color="#ff5c5c">}}




{{<matomeQuote body="これ系システムの設計における一番の課題はそれだね。エコーチェンバーやコンフォートケージは推薦アルゴリズムから生まれるし、その前は手抜きなキュレーションから生まれてた。<br>推薦システムを自分でコントロールできるなら、わざと異論や多様なソースをフィードしたり、逆にすごく制限したりできる。RSS時代も、手抜きしてたら他人のキュレーションやバイアスに依存することになった。<br>進歩って結局トレンドを通じて起こるんだよね。例えば2010年代は、もうやたらとRailsのコンテンツがあった。フラットデザインもそう。あれってグループでそうしようとしたんじゃなくて、集合的な注目と必要性から生まれたように見えた。みんながそれについて話したりやったりしてたから、参加したかったらその言葉を話す必要があったんだ。<br>Google Readerを使っていた時の自分の元の原則は、技術やデザインについて強い意見を持つほど十分に分かってなかったから、強い意見を持ってるように見える人をフォローしようってことだった。時間が経つにつれて、たとえ自分が好きじゃなくても、良いデザインってものが分かってくるようになった。デザインのセンスが身につく速度は、コードや文章を読むより画像をさっとスキャンできる視覚的なデザインの方が速かったな。<br>Last.fmのデータで面白いことしたことがある。2009年から音楽を追跡してるんだけど、自分の好みに基づいておすすめをもらうんじゃなくて、今のライブラリとほとんど、あるいは全く重複しないアーティストのリストを生成できたんだ。それは純粋なexplore対exploitの音楽推薦だった。問題は、好みが十分多様になると、重複を避けるのが難しくなることだったけどね。" userName="jackdawed" createdAt="2025/07/07 18:33:14" color="#ff33a1">}}




{{<matomeQuote body="似たようなツールを俺も作ったよ。君のHNアカウントをプロファイルしたりイジったりするやつ。<br>https://hn-wrapped.kadoa.com/<br>面白いし、たまにゾッとする（笑）。<br>Edit：注意して、ユーザー名は大文字小文字を区別するから。" userName="hubraumhugo" createdAt="2025/07/07 14:29:59" color="#ff5733">}}




{{<matomeQuote body="コメント分析は最初のページだけじゃなくて、もっとたくさん見たら超面白いだろうね！でも、指摘はバッチリ当たってるよ。予測の部分、笑った。「Magnetic Tape Master 3000」とかいう磁気テープシミュレーターの予測、ナイスすぎる。レトロ好きにはたまらないね！" userName="cluckindan" createdAt="2025/07/07 19:27:40" color="#ff5733">}}




{{<matomeQuote body="「詳しい技術解説とか訂正ばっかで、技術オタクか、ただ俺様すげーって思われたいだけかだな。たぶん両方！」←これ、マジで辛辣で最高！このツール、すっごい面白いよ、ありがとう！" userName="mh-" createdAt="2025/07/07 17:15:09" color="#38d3d3">}}




{{<matomeQuote body="うわ、なんか見透かされてるわ～！「プロフが『Hacker Newsビンゴ』みたいだな: NASA、PhD、Python、チートのAsk HN、Redditへの辛辣な意見。足りないのはスペースシャトル部品製のキーボード投稿だけ！」って言われた。まさにそれ！" userName="thearn4" createdAt="2025/07/07 15:44:52" color="#ff5733">}}




{{<matomeQuote body="「足りないのはスペースシャトル部品製のキーボード投稿だけ」って言われたやつね。<br>何をすべきか分かってるだろ？フフフ。" userName="mywittyname" createdAt="2025/07/07 22:14:28" color="">}}




{{<matomeQuote body="予測さ：「経済の話とか真面目に書いても全然評価されないのに、『Show HN: RustでToDoリスト作ったぜ！』って書くと500点もらえるぞ」だって。これひどいけど、的確すぎて最高！よくやった！" userName="Avicebron" createdAt="2025/07/07 16:48:00" color="#ff5c5c">}}




{{<matomeQuote body="ウチの会社でも似たようなのでユーザー分析してるよ。LLMって普通は超丁寧すぎるんだけど、あえてユーザーを「ロースト」（辛口批評）させると、重要なことや面白い矛盾が浮き彫りになるんだ。それに、普通にウケるしね。" userName="mywittyname" createdAt="2025/07/07 22:13:09" color="#ff5c5c">}}




{{<matomeQuote body="俺のお気に入りのユーザーでもやってみたよ！結果はここ:<br>https://hn-wrapped.kadoa.com/pjmlp<br>https://hn-wrapped.kadoa.com/pclmulqdq<br>https://hn-wrapped.kadoa.com/jandrewrogers" userName="gavinray" createdAt="2025/07/07 16:32:38" color="">}}




{{<matomeQuote body="要約、すごいね！良いツールだ！ただ、予測パートはいくつかテキトーに投稿を選んで、その投稿だけ見て予測立ててる感じがするなー。" userName="nottorp" createdAt="2025/07/07 17:56:57" color="">}}




{{<matomeQuote body="これ超いいね。こういう分類とか感情分析に面白いテキストつけるの、LLMが本領発揮する使い方だわ。なんか俺のアカウント名で試すとエラー出るんだけど。投稿じゃなくてコメントしかしてないせい？でも他のコメントだけの人はいけてるみたいなんだよなー。" userName="Mossly" createdAt="2025/07/07 14:55:57" color="#785bff">}}




{{<matomeQuote body="それね、大文字小文字区別するんだよ。<br>https://hn-wrapped.kadoa.com/Mossly?share<br>これが正しいリンクね！" userName="hubraumhugo" createdAt="2025/07/07 15:14:36" color="#45d325">}}




{{<matomeQuote body="HNの不機嫌だけど洞察力のある真実を語る人だって？ 痛い！<br>Roastはめっちゃ面白くて当たってるね。<br>好きな技術トップ3は間違ってると思う。<br>LLMってあんな皮肉も言えるんだ、賢いね！すごい！" userName="insane_dreamer" createdAt="2025/07/08 14:41:17" color="#ff5c5c">}}




{{<matomeQuote body="クロスプラットフォームUIフレームワークへのコメントがまるで出会い系プロフィールのようだってさ。<br>「ネイティブかどうかは気にしない、GTK+じゃなくてプログラマーアートに見えなければ」。LLM、一本取られたよ！" userName="rafaelmn" createdAt="2025/07/07 15:32:28" color="#ff5c5c">}}




{{<matomeQuote body="「傲慢さによる失敗」担当のresident historical consultantで、物事は良くならないって皆に思い出させようとしてるんだってさ。<br>やっと理解されたよ！" userName="panzagl" createdAt="2025/07/07 21:45:35" color="#785bff">}}




{{<matomeQuote body="僕の場合動かないんだよね。<br>エラーメッセージは「Server Components renderでエラーが発生。詳細は省略されてるよ」だって。" userName="gavinray" createdAt="2025/07/07 14:42:26" color="">}}




{{<matomeQuote body="皮肉だね、君のusernameだと僕の環境で動くけど、自分のusernameだと動かないんだ。<br>今なら見れるかな？ URLだよ: https://hn-wrapped.kadoa.com/gavinray?share" userName="Mossly" createdAt="2025/07/07 14:57:25" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="めっちゃ面白いね、これ好き！<br>ただデータが最近のposts/commentsとsubmissionsに偏ってるみたいかな。" userName="gavinray" createdAt="2025/07/07 16:25:40" color="">}}




{{<matomeQuote body="ゲームエンジンと資本主義の絶望について1年考えた後、ついに2Dゲームを作るってさ。<br>ミニマルなpixel art RPGで、main questは’afford insulin’、final bossは’the federal minimum wage’だって。<br>すごいね。ありがとう！" userName="qualeed" createdAt="2025/07/07 15:35:16" color="#45d325">}}




{{<matomeQuote body="これって褒め言葉なの？" userName="thanatropism" createdAt="2025/07/08 14:08:27" color="">}}




{{<matomeQuote body="ハハ、結構面白いし的を得た点もあるね...<br>作ってシェアしてくれてありがとう！" userName="chrisweekly" createdAt="2025/07/07 17:21:18" color="">}}




{{<matomeQuote body="本当に面白いね！" userName="flerchin" createdAt="2025/07/08 12:01:59" color="">}}




{{<matomeQuote body="ありがとう！これすごく面白いね" userName="coderatlarge" createdAt="2025/07/07 15:13:10" color="">}}




{{<matomeQuote body="”車のGPSと議論するような趣味を持つな”ってコメント、きついけど超正確で最高！" userName="Ambroos" createdAt="2025/07/08 14:26:29" color="">}}




{{<matomeQuote body="Pocket以外にAIチャット履歴分析にも興味あるんだ。<br>RSSで読まないけど関連高いフィードがあるって分かった。<br>次は「世界モデル」を生成して、ニュースとかをローカルでフィルタリングしたいな。" userName="fudged71" createdAt="2025/07/07 16:05:19" color="#38d3d3">}}




{{<matomeQuote body="前にHNの投稿・コメント履歴からプロフィール（場所、政治傾向とか）を推測するスクリプト作ったよ。<br>変なコメントの背景が知りたくて。精度は分からないけど、LLMのこういう実験面白いね。" userName="nsypteras" createdAt="2025/07/07 13:56:05" color="#ff5733">}}




{{<matomeQuote body="最近、記事とユーザープロフィールでHNフロントページに載るか予測した人がいたらしいよ。" userName="morkalork" createdAt="2025/07/07 13:59:00" color="">}}




{{<matomeQuote body="これいいね！投稿前にどれくらいバズるか予測して、アドバイスくれるツールとかできそう！" userName="nsypteras" createdAt="2025/07/07 14:06:56" color="">}}




{{<matomeQuote body="これ見ると、お金かけずに簡単にアストロターフィング（サクラ行為）できちゃうって分かるね。" userName="tencentshill" createdAt="2025/07/07 18:01:55" color="#ff33a1">}}




{{<matomeQuote body="SamAは問題を指摘するだけじゃなくて、変な眼球ブロックチェーンみたいな認証方法で解決策（？）でも儲けようとしてるのがすごいね。" userName="morkalork" createdAt="2025/07/07 18:22:16" color="">}}




{{<matomeQuote body="リンクはこれだよ。 https://news.ycombinator.com/item?id=44302355" userName="morkalork" createdAt="2025/07/08 18:12:44" color="#45d325">}}




{{<matomeQuote body="コメント欄でびっくりするような意見を見て、それがどこから来たのか気になったのが一番の動機なんだってさ。自分でやってみて、どれくらい正確か見るのは面白そうだね。" userName="nozzlegear" createdAt="2025/07/07 16:06:49" color="">}}




{{<matomeQuote body="これ覚えてるよ。私の場合、かなり正確だったんだけど、ちょっと甘すぎる感じだったな（世界を救うことになる、みたいなこと言われたんだ）。" userName="mywittyname" createdAt="2025/07/07 22:09:47" color="">}}




{{<matomeQuote body="左派寄りなカトリック（アメリカ北東部に多いと思う）の家族を持つ者として、カトリックだからって保守的だって判断されたのが興味深いね。" userName="asveikau" createdAt="2025/07/07 15:57:38" color="#ff5733">}}




{{<matomeQuote body="全体的に見て、カトリックもプロテスタントも、北東部や西海岸ではリベラルになる傾向があって、中西部や南部では保守的になる傾向があると思うな。これは2025年における宗教の平均的な重要性について何かを示してるってことだね。" userName="CGMthrowaway" createdAt="2025/07/07 16:48:32" color="#785bff">}}




{{<matomeQuote body="これは2025年より古い話で、カトリックに特有の部分が絶対あると思う。北東部のアメリカのカトリックは、イタリア人、アイルランド人、東ヨーロッパ人みたいな大きな移民の波から考えることが多いんだ。移民としてのアイデンティティが経済的に左派寄りになって、貧しい人を助けるっていうキリスト教の部分が強調されたんだよ。" userName="asveikau" createdAt="2025/07/07 17:28:29" color="#ff33a1">}}




{{<matomeQuote body="北東部以外のカトリックについてどれくらい知ってるか分からないけど、俺は言ってた地域全部である程度経験あるよ。イタリア人、アイルランド人、東ヨーロッパ人、ヒスパニックのどれかに支配されてないアメリカのカトリック教会なんて実際見つけられないね。アメリカのカトリック教会って、ほとんどが”移民”なんだ、つまり1850年より前にアメリカにいなかった祖先を持つ人たちのことだよ。" userName="CGMthrowaway" createdAt="2025/07/07 19:19:44" color="#38d3d3">}}




{{<matomeQuote body="つまり、慈善的なカトリックなの？それとも堅苦しいカトリックなの？ってことだね。" userName="KoolKat23" createdAt="2025/07/07 17:58:23" color="">}}




{{<matomeQuote body="ピッツバーグ生まれ、カトリック育ちで、かなりリベラルだったよ。90年代には侍女もいたし、教会で式を挙げたオープンリーゲイのメンバーもいたんだ。今はカトリックじゃないけど、80年代と90年代はいい教会だったな。" userName="burnte" createdAt="2025/07/07 16:12:40" color="#ff5c5c">}}




{{<matomeQuote body="カトリックってほんと興味深いね！私の経験も似てるかな。一方ではかなり保守的で、中絶には超反対だし、昔ながらの家族観（つまり母親は家にいるべきとかね）だった。でもその一方で、国内外の貧しい人々を助ける奉仕活動にすごく力を入れてたんだ。宣教活動とかじゃなくて、ただひたすら見返りなしに助ける感じ。それに、オープンな心で教育にもすごく関心があった。だから、左とか右とか、一つの価値観で語るよりちょっと複雑なんだよね。" userName="roland35" createdAt="2025/07/08 12:01:17" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
