+++
date = '2025-05-19T00:00:00'
months = '2025/05'
draft = false
title = '勝手に言語を決めないで！多言語サイトの困った仕様'
tags = ["Web開発", "国際化", "ローカライゼーション", "UI/UX", "言語設定"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> 勝手に言語を決めないで！多言語サイトの困った仕様

引用元：[https://news.ycombinator.com/item?id=44028153](https://news.ycombinator.com/item?id=44028153)




{{<matomeQuote body="Accept-Languageを無視するのはマジ勘弁。さらに最悪なのは、多言語サイトの言語切り替えボタンやリストが現言語に翻訳されてること…マジで意味不明だし目的を果たしてないよ。Wikipediaはそこんところちゃんとしてる。アイコン分かりやすいし、リストは自称でアルファベット順、たぶんGeoIPで候補言語が先頭。<br>勝手に言語決めつけられるとマジ困る。アホになるな。Wikipediaを見習えよ。" userName="elric" createdAt="2025/05/19 11:29:42" color="#ff33a1">}}




{{<matomeQuote body="＞in alphabetical order<br>まあ順番はあるけどアルファベット順かな？今日の英語版記事で言語リスト見たら、「中文」、「Italiano」が「suggested」で、残りは地域別。アルファベット順じゃないしグループ内も違うみたい。キリル文字とかも変な並び。中国語も画数順じゃないっぽい。自言語の名前でアルファベット順なんて無理っしょ。<br>Wikipediaはローカライズすごいけど、ちょっと細けーこと言うとね。" userName="CGamesPlay" createdAt="2025/05/19 12:52:57" color="#45d325">}}




{{<matomeQuote body="そうなんだよ、あれ分かりにくいし良いバランス取るの難しそう。ギリシャ語話す人やチェコ語話す人はEとかCの辺りで見つけたいだろうけど、WikiだとZの後ろとかにあるし。" userName="euazOn" createdAt="2025/05/19 13:15:12" color="">}}




{{<matomeQuote body="特殊文字っていつもラテンアルファベットの後ろに行かない？結構普通だと思うし、まあ予想通りじゃん。完璧じゃないけどWikipediaのやり方は一貫してると思うな。" userName="nis251413" createdAt="2025/05/19 13:22:43" color="">}}




{{<matomeQuote body="＞自言語の名前でアルファベット順なんて無理<br>そんなことないって。ソート順はUnicodeで標準化されてるんだよ。`ucsort`みたいなツールを使えばできる。変な並びになるのはアルゴリズムが間違ってるだけ。<br>＞K for Korean alphabetizes after C for Chinese<br>それ違うってば。" userName="bmn__" createdAt="2025/05/19 13:40:00" color="#ff5733">}}




{{<matomeQuote body="ソートのルールってロケールで違うんだよね。" userName="adastra22" createdAt="2025/05/19 15:06:28" color="">}}




{{<matomeQuote body="チェコ語のアルファベットは違うんだ。a, á, b, c, č, d, ď, e, é, ě, ... って感じ。<br>あと「Ch」を一つの文字として扱うんだよ。だからまあ、アルファベット順に並べてみてよ。待ってるから。" userName="e-topy" createdAt="2025/05/19 13:35:30" color="#ff5c5c">}}




{{<matomeQuote body="循環参照だよ。ユーザーのロケール分かんないのに、どうやって言語リストを並べるか？結局、推測（IP geoとかブラウザヘッダーとか）か、ロケールに依存しないソートにするしかないんだけど、どっちもダメなケースがあるんだよね。" userName="vikingerik" createdAt="2025/05/19 15:47:57" color="#38d3d3">}}




{{<matomeQuote body="＞The Chinese languages don’t seem to be in stroke order (no expert here)<br>俺の場合はそうだよ。アジアのセクションでは、中文（4画）、吴语（7画）、粤语（12画）って並び。画数順は最初が画数、次にもっと細かい基準があるんだけど、それは俺も分かんないし、中国に住んでる中国人も知らないこと多いらしい。画数が多い順なのは確かだよ。日本語が吴语と粤语の間にある理由は不明。" userName="thaumasiotes" createdAt="2025/05/19 16:12:34" color="#45d325">}}




{{<matomeQuote body="最悪な例を一つ。iPhoneのYoutubeアプリが何故かAmharicに変わったんだ。Googleサポート記事は英語で操作方法書いてるけど、俺Amharic分かんないしiPhoneの翻訳も認識しなくてマジ困った。ユニバーサルな多言語アイコンがあればこんなことにならなかったのに。" userName="TheJoeMan" createdAt="2025/05/19 13:33:33" color="#ff5c5c">}}




{{<matomeQuote body="漢字のソートは最初に部首、次に画数だよ。<br>Basic Multilingual PlaneならUnicodeのコードポイント順とだいたい同じ感じ。<br>文言が呉語の後に来るのは、純粋な画数順だと違うんだよね。<br>中文 - 中 = 丨 + 3画<br>呉語 - 呉 = 口 + 4画<br>文言 - 文 = 文 + 0画<br>日本語 - 日 = 日 + 0画<br>粵語 - 粵 = 米 + 7画" userName="matvore" createdAt="2025/05/19 16:43:54" color="#785bff">}}




{{<matomeQuote body="私がお気に入りのサイトは、Accept-Languagesをちゃんと見てくれるんだけど、リストの最初のじゃなくて最後のを選んじゃうところ。<br>私は自分の得意な順に並べてるから、一番できる言語が対応されてても、一番できない言語になっちゃうんだ。<br>こうなると見るたびにちょっとウケるんだよね、どうしてこうなったか想像できるから。<br>「まぁ、努力したんだね。」って感じ。" userName="derf_" createdAt="2025/05/19 13:45:17" color="">}}




{{<matomeQuote body="辞書を引くときは部首が最初で、次に画数だよ。並べ替え（Collation）は違う。<br>画数が最初。<br>例えば、成語の本を持ってるんだけど、目次がアルファベット順じゃないんだ。（誰も伝統的な並べ方理解してないから、アルファベット順のも何冊か持ってるけど。）<br>この本の並び順はこれ:<br>一 七 八 入 九 人 口 千 小 三 亡 大 不 专 天 井 见 毛 月 文 风 为 心 水 四 ...<br>三の部首は一、康熙部首の一番目だから最初に載ってるって言うけど、あなたの説は間違ってるよ。<br>三は3画の文字の中でも最初じゃないし（この中だと口が最初）。<br>なんでこの質問に嘘の答えを作ったの？" userName="thaumasiotes" createdAt="2025/05/19 17:47:34" color="#45d325">}}




{{<matomeQuote body="これに関連してマジでムカつくのが、検索結果からページに飛んだ後、モーダルポップアップが出てきて出身国を選ばされて、そのまま地域のウェブサイトのトップページにリダイレクトされちゃう時。<br>閉じるXボタンがあるサイトもあるけど、多くはなくて、それがマジでイライラする。" userName="magicalhippo" createdAt="2025/05/19 15:15:37" color="">}}




{{<matomeQuote body="言語のエントリを置く場所と、その言語での本来の位置との間の合計距離が最小になるソート順を見つけられる。<br>もし言語AとÄのペアがあって、片方ではA ＞ Äなのに、もう片方ではÄ ＞ Aみたいにならないなら、（多分？？？）この合計距離はゼロになる。" userName="notpushkin" createdAt="2025/05/19 16:04:19" color="">}}




{{<matomeQuote body="ここでサーバーを責めるのは違うよ。<br>コンテンツネゴシエーションでより良い結果を得るには、ユーザーエージェントがリストだけじゃなく（同じレベルの優先度を意味する）、数値的な重み付けを割り当てられるようにするべき。<br>例: Accept-Language: en;q=0.7,pt;q=0.3<br>もし既にこういうのを送ってるのにサーバーが間違えるなら、それは明らかなバグで、ソフトウェアかオペレーターがHTTPに準拠してないってこと。" userName="bmn__" createdAt="2025/05/19 13:59:24" color="#ff33a1">}}




{{<matomeQuote body="Chみたいな二重音字（Digraphs）は多くの言語で一般的だよ。<br>Wikipediaはカテゴリページでそれをうまくサポートしてる。<br>例: https://cs.wikipedia.org/wiki/Kategorie:CHKO_%C5%A0umava<br>変わったソート規則を見たいなら、フランス語がアクセント付き文字をどう並べるか調べてみて。" userName="bawolff" createdAt="2025/05/19 15:35:37" color="#38d3d3">}}




{{<matomeQuote body="Wikipediaの言語ソートはさっき言った通り、Literary Chineseと日本語がWu ChineseとYue Chineseの間にあるよ。<br>なんでそうソートされるか説明したでしょ、部首が最初に考慮されるから。<br>あなたは日本語がなんでWuとYueの間にあるか説明できなかったよね、部首は使われてないって言い張ってるから。<br>ソートが画数だけでやられないとは言ってないよ。<br>でも、私は部首+残りの画数の方が画数だけよりもずっとよく見てる。<br>多分、見てるコンテンツの結果だと思う。<br>ほとんど日本語で子供向けじゃないし。<br>あなたが言ってる辞書と非辞書のソートの区別は本当のことには聞こえないな。<br>読者層とか国とか並べる項目の数の方が大きな要因だよ。<br>でも、画数だけが使われることがあるっていう点は間違ってない。" userName="matvore" createdAt="2025/05/19 18:16:46" color="#ff5c5c">}}




{{<matomeQuote body="99％同意なんだけど、モバイルだと問題があるんだ。<br>検索のために虫眼鏡アイコンをクリックした時、スペイン語から英語に切り替える時ね。<br>リストに「English」って表示されてるのに、「Ing」（「Inglés」の最初の文字）って入力しないといけないんだ。<br>「Ing」か「Eng」どっちでも入力できたらもっといいのに。" userName="gus_massa" createdAt="2025/05/19 13:45:51" color="">}}




{{<matomeQuote body="＞ A and Ä<br>偶然だけど、「Ä」の期待される位置は言語によって大きく変わるんだよね。<br>ウムラウト付きのAで、AEと正規化されるのか、それともZの後に来る別の文字なのか？" userName="baobun" createdAt="2025/05/20 04:02:00" color="">}}




{{<matomeQuote body="それがEnglish hegemonyってやつだよ．言語にはそれぞれの期待する並び順があるのに，他の言語にルールを押し付けるのは違うんじゃない？ もちろんいつかはUnicodeも並び順を決める必要があるだろうけど，English式を世界中に強制するのはダメ．そこでgeo-ipの推測が重要になるんだよ．一番可能性の高い言語をリストのトップに表示すればいい．" userName="philistine" createdAt="2025/05/19 13:52:11" color="#785bff">}}




{{<matomeQuote body="このパラメータ，最初見た感じだと，デフォルトで表示される自動翻訳の数値的な重み付けに使われてるみたいだね．それがブラウジングをすごく不快にしてるんだよ（変な翻訳とか，文章が歪んだり）．例えばGoogle，Youtube，Redditとか．<br>自動翻訳は絶対デフォルトで出すべきじゃないよ．ユーザーがリクエストした場合だけ読み込むべき．「翻訳しますか？」っていうクラシックなやつね．" userName="drtgh" createdAt="2025/05/19 16:24:27" color="#ff5c5c">}}




{{<matomeQuote body="perl -E’Unicode::Collate::Locale-＞new(locale =＞ ’cs’)-＞sort … … …’<br><br>うまくいくよ．テストケースは https://prirucka.ujc.cas.cz/?action=view&id=900 ここにあるよ．" userName="bmn__" createdAt="2025/05/19 13:50:53" color="">}}




{{<matomeQuote body="これには二つのレベルがあるね．ヨーロッパ系の言語なら，Englishの単語がわかれば切り替えは簡単．でも，Bengaliとか知らない文字だと完全にアウト．<br>だから，どの”choose language”メニューにも，EnglishとChineseを現地語じゃない表記で入れとくべきだよ．ほとんどのネットユーザーは，そのどっちかを見ればメニュー操作して自分の言語を見つけられるからね．脱出ハッチとして．" userName="tlb" createdAt="2025/05/19 13:57:05" color="#ff5733">}}




{{<matomeQuote body="全部intとしてソートしちゃダメ？ codepageは大体ざっくりソートされてるし，檎か橙のどっちが先かは誰も知らないけど，適当なアプリがどっちに並べても，ほとんどの人はそんなに気にしないと思うな．" userName="numpad0" createdAt="2025/05/19 18:43:20" color="">}}




{{<matomeQuote body="フランス語のアクセント文字の変なソートルールについて調べてみたけど，情報源が全くないんだよね．フランス語のStack Exchangeでも同じ質問があったけど，公式ルールはないってコメントしてる人もいたよ．どうやって調べろと思ったの？" userName="thaumasiotes" createdAt="2025/05/19 17:38:43" color="">}}




{{<matomeQuote body="”日本語がWuとYueの間にあるのはradicalを使ってないからだ”って言ってたけど，違うよ．日本語は別のグループで，ChineseやKoreanと並列だよ†．”Wikipediaの言語ソートは俺が言った通りだ”って？ 文字順かと思ったらWikipediaの順だったのか．でもWikipediaもその通りじゃないよ．Jiangsuのページを見ると，他の言語はLatin alphabet系より前なのに，閩南語と閩東語は後ろに来てる†．あと，wikipediaが吴语って書いてるのに粵語とか違う書き方してるのも謎だな．" userName="thaumasiotes" createdAt="2025/05/19 23:14:08" color="#785bff">}}




{{<matomeQuote body="それ（手で翻訳されたテキスト）は，手で翻訳されたテキストとか，他のことにも使われてたし，今も使われてるよ．これで全体のイメージ掴めた？" userName="bmn__" createdAt="2025/05/19 17:29:08" color="">}}




{{<matomeQuote body="しかも，前に選んだやつを覚えてて，リストの一番上に出してくれるんだよね．<br>それがUXだよ．実際に役に立つってことで，クソうざくない．" userName="e-topy" createdAt="2025/05/19 11:35:43" color="#ff5733">}}




{{<matomeQuote body="「＞all of the languages mentioned so far appear before the ”Latin alphabet” ＜<br>　＞ style languages, but 閩南語 and 閩東語 appear after them．」<br>Minnan and Mindong Chinese articlesが，言語名がChinese characters and Latin letters両方でshowingなのに，Latin scriptでwritten inのと関係あるのかな？" userName="matvore" createdAt="2025/05/21 01:27:10" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Youtubeの”feature”ってのがマジ嫌いなんだよね．videoのtitlesを自分の設定languageにtranslateするやつ．これマジso annoying．Englishわかるしthese automatic translationsとかいらないし．" userName="tapia" createdAt="2025/05/19 11:11:01" color="">}}




{{<matomeQuote body="俺のcomputerはGermanだけどEnglishに設定してるんだけど，たまにYoutubeがsome German video or advertをauto-translatedして，really uncanny machine voice with really weird phrasesになるんだよね．<br>Lidl is worth it，ja！" userName="avhception" createdAt="2025/05/19 11:17:45" color="">}}




{{<matomeQuote body="きっとYouTubeのalgorithmは，このfeature使って”content accessible”にする人にrewards与えてるんだろうけど，もしugly machine translated Norwegian titleじゃなくてEnglish oneのタイトル出されたら普通に読めるのに，ああいうの出されると，俺の経験上，そのYouTube channelはlow quality algorithm-chasing garbageのsignalなんだよね．だから”never recommend this channel”ってclickしちゃう．" userName="vintermann" createdAt="2025/05/19 13:15:19" color="">}}




{{<matomeQuote body="最近，Reddit resultsがGoogle，Kagiでもtranslatedされるんだよ．自分のlanguageでrelevant response見つけたってthinkしても，ただのmachine translation from an English postなんだ．" userName="sph" createdAt="2025/05/19 11:23:30" color="">}}




{{<matomeQuote body="それって最悪だよ．罰する相手が違うし，channel ownerは気づかない．ほとんどのEnglish content ownerはawareじゃない．ownerにemailでproblem説明してmanually disable auto-translation頼む方がいい．Systematicに無くしたいなら，Youtubeにfeedbackしろ．" userName="bmn__" createdAt="2025/05/19 14:07:26" color="#ff5733">}}




{{<matomeQuote body="マジそれな．US silicon valleyには複数言語話すって発想ないんじゃないか？そうじゃなきゃYoutubeが言語一つしか設定できない理由わからん．Googleアカウントで全部設定できるのに，Youtubeは無視して独自のsettingsなんだ．" userName="littlecranky67" createdAt="2025/05/19 11:18:17" color="">}}




{{<matomeQuote body="これマジで嫌い．全く同じ状況．技術が良くても，両方の言語話せるからオリジナル見たい．設定で追加するだけで，強制しないのはなんでそんなhardなの？" userName="FinnLobsien" createdAt="2025/05/19 11:40:19" color="">}}




{{<matomeQuote body="あのさ，俺はYoutubeのゴミ推薦channelを排除するのに，あのautomatic translationをfeatureとして使ってるんだよね．Youtubeには何も言えないし，俺はsubtitlesなしで見たいのにChromecastだと勝手にオンになるし．Englishは母国語じゃないからsubtitlesには慣れてるんだけど，machine translated subtitlesはマジヤバいんだよ．音声より先に読んで混乱するし．English onlyの皆，Translationはhardなんだ．Poor translationはmessage歪めるからworse．AIはまだ全然ダメ．" userName="troupo" createdAt="2025/05/19 11:22:28" color="#785bff">}}




{{<matomeQuote body="マジそれな．US silicon valleyには複数言語話すって発想ないんじゃないか？そうじゃなきゃYoutubeが言語一つしか設定できない理由わからん．Googleアカウントで全部設定できるのに，Youtubeは無視して独自のsettingsなんだ．" userName="clan" createdAt="2025/05/19 14:53:30" color="">}}




{{<matomeQuote body="あれってさ、”もしX語を話すなら、なんでシステム言語をY語にしてるの？ Y語がいいならシステム言語をY語に設定すればいいじゃん！”ってことだと思うんだよね。ユーザーがあることに対して好みを持ってるとして、それがいつでもどこでも当てはまるって考え方なんだよ、たとえ適用できない場面でもね。" userName="genocidicbunny" createdAt="2025/05/19 11:43:38" color="">}}




{{<matomeQuote body="それ、全然意味わかんないんだけど。もしタイトルの翻訳が必要なら、どうせ動画は見れないじゃん。ひどい自動翻訳の動画だったら少しはわかる気もするけど、動画は元の言語のままで、タイトルだけ翻訳されてた時期が長かったよね。" userName="echoangle" createdAt="2025/05/19 11:26:52" color="">}}




{{<matomeQuote body="duckduckgoもそうみたいだね。" userName="qiine" createdAt="2025/05/19 11:43:46" color="">}}




{{<matomeQuote body="僕が伝えたかったのは、無実のチャンネルオーナーを攻撃するのは良くないってこと。もっと優しい方法があるのに、大げさなやり方で相手の評判を下げ、収入を減らしちゃうのはひどいと思うんだ。自分の行動がどういう結果になるか、考えるべきだよ。スパムじゃないものをスパム報告するのと同じくらい嫌な行動だね。" userName="bmn__" createdAt="2025/05/19 15:52:26" color="">}}




{{<matomeQuote body="うん、これReddit自体からきてるよ。違うURLを使ってて、たぶんそういう翻訳版をSEOで上位表示させようとしてるみたいだね。" userName="whstl" createdAt="2025/05/19 13:38:47" color="">}}




{{<matomeQuote body="これを直すブラウザ拡張機能いくつかあるよ、俺はこれ使ってる： https://addons.mozilla.org/en-US/firefox/addon/youtube-no-tr..." userName="sebtron" createdAt="2025/05/19 11:20:33" color="#ff33a1">}}




{{<matomeQuote body="しかもオフにできないんだよね。この機能じゃない機能、マジ嫌い。" userName="Freak_NL" createdAt="2025/05/19 11:14:31" color="">}}




{{<matomeQuote body="なるほどね、それ考えもしなかったわ。だって外国語の動画を自動翻訳字幕で見るなんて絶対しないし。" userName="echoangle" createdAt="2025/05/19 11:51:19" color="">}}




{{<matomeQuote body="俺も同じことに気づいてたよ、これ完全にRedditの検索結果が壊れるんだ。" userName="fifnir" createdAt="2025/05/19 11:31:16" color="">}}




{{<matomeQuote body="「おすすめしないで」って言うのは攻撃じゃなくて、アルゴリズムのために質を落とすやつより他の人にチャンスあげたいだけだよって話。Googleは機械翻訳みたいな「アクセシブル」なコンテンツを推してくるけど、俺の「おすすめしないで」クリックじゃ全然止められないんだよね。" userName="vintermann" createdAt="2025/05/19 21:29:55" color="#ff33a1">}}




{{<matomeQuote body="自分の考えばっかり押し付けて、ちゃんと相手と話そうとしないと、理解なんて絶対無理だよ。" userName="bmn__" createdAt="2025/05/20 08:29:06" color="">}}




{{<matomeQuote body="Youtubeってタイトルが自動翻訳されてるって、全然分かりにくかったんだね。そういえば前にもテレビとPCでタイトルが違う動画見たことあったけど、今まではテレビのせいかと思ってたよ。このこと知っててもさ、動画見ずに自動翻訳なのか、それともネイティブ言語でAIが作ったひどいコンテンツなのか、どうやって見分けるの？" userName="SpicyLemonZest" createdAt="2025/05/19 14:31:58" color="#ff5733">}}




{{<matomeQuote body="＞ なんで設定や機能として追加して、ユーザーに強制しないで選ばせてくれないの？<br>Office politicsだよ。Googleは”パフォーマンス重視”で有名だから、その機能担当のマネージャーは自分の出世のために高い使用率が必要なんだ。（もちろん、これは推測だけどね。）" userName="bunderbunder" createdAt="2025/05/19 14:33:51" color="#ff33a1">}}




{{<matomeQuote body="絶対にハッキリさせるべきだよ。俺がEnglishとGerman話せるなら、それらの言語のビデオタイトルを互いに自動翻訳しないでほしいんだ。翻訳がいかにひどくて、ユーザー（俺）がいかに望んでないか、信じられないと思うけど。3つ目とか4つ目の言語を話してて、動画をよく見るならもっとひどくなるよ。ぐちゃぐちゃになる。" userName="littlecranky67" createdAt="2025/05/19 13:50:31" color="#ff33a1">}}




{{<matomeQuote body="全くもってそうだよ。俺の言語設定は全部Englishなのに、いまだに母国語で自動翻訳されたクソみたいなのがしょっちゅう出てくるんだ。" userName="Denvercoder9" createdAt="2025/05/19 14:46:40" color="#45d325">}}




{{<matomeQuote body="これ、映画にも言えるよね :D <br>俺、German話せるのに、Naziの動画で強制的に字幕つけられる必要ないんだ。" userName="preisschild" createdAt="2025/05/19 14:12:19" color="">}}




{{<matomeQuote body="en-USかen-GBを予備の低優先言語で設定してる？<br>もしEnglishのバリエーションがAccept-Lang:ヘッダーにあるなら、YTはEnglishのタイトルを自動翻訳しないと思うけどな。<br>Googleがちゃんと使うかもしれない他の設定は、アカウントごとの言語設定だね。でも GeoIPを使ってるみたいなら、それは間違ってるって俺も同意だよ。" userName="harshreality" createdAt="2025/05/19 15:28:28" color="#38d3d3">}}




{{<matomeQuote body="俺も全く同じだよ。母国語はGermanでSwitzerlandに住んでるけど、設定は全部Englishにしてる。そうする方が何でも検索しやすいからだよ。技術的なことなんて、ほとんどGermanでどう言うか知らないもん。だから自動翻訳がもし良くても、これは意味ない機能だよ。ブラウザが俺の希望言語を伝えてるんだから、それを使ってくれよ。" userName="dgb23" createdAt="2025/05/19 14:48:42" color="#ff5733">}}




{{<matomeQuote body="「公式」の吹き替えがある動画だとさらにひどいよ。MrBeastとかMark RoberとかNick DiGiovanniとか、最近急にGermanやFrenchの吹き替えでびっくりさせられたんだ。言語設定はEnglish、地域はUS（worldwide）にしてるのに、Youtubeがなんで勝手にこれらの吹き替えを選んだのか全然分からない。ほとんどEnglish以外の動画なんて見たことないのにさ。" userName="captainpiggies" createdAt="2025/05/19 13:36:46" color="#45d325">}}




{{<matomeQuote body="へぇ，品質低いんだね．今の時代，結構安いLMでも色んな言語でかなり良い翻訳できるのに，何でか知らないけど（コストかな？）自動翻訳はまだだいたいGoogle Translateレベルみたいだね．" userName="int_19h" createdAt="2025/05/20 20:29:39" color="#ff5733">}}




{{<matomeQuote body="＞Englishわかるし，こういう自動翻訳いらないんだよね．＜<br>それどころか，もっとひどいと思うよ：<br>1．言語がわからなくても，多分その動画は自分向けじゃないし．国際的な視聴者向けはEnglishが多いでしょ．<br>2．タイトルは短い文で文脈がない．”Vamos assistir uma conexão com o passado”（Portugueseで”Let’s watch a connection to the past”）ってタイトル，元が”Let’s play A Link to the Past”って理解するのに戻す必要あったし．<br>3．オンラインは第二言語練習に良いのに原文読ませてくれない．翻訳が必要ならGoogle Translateとか使えるし．<br>アクセスを民主的にするのは良いけど，無効化させて．体験が悪くなるから．" userName="lucasoshiro" createdAt="2025/05/19 13:50:20" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まさにそれ！複数言語理解するのに，一つしかわからない前提のデザイン嫌い．僕は4ヶ国語読めるから元の言語が好き．IPで言語推測するのはまず間違ってる．ブラウザ設定見てよ．<br>YouTubeのAI吹き替えデフォルトオンも最悪．動画の半分くらいで，開いて設定でオフにして，最初に戻す手間が信じられないくらいイライラする．" userName="bunderbunder" createdAt="2025/05/19 14:28:34" color="#785bff">}}




{{<matomeQuote body="YouTubeのAI吹き替えは本当にひどい．聞こえてる音声が動画自体から来てて，別のタブの変な広告じゃないって気づくのに5分かかったよ．<br>あと，動画タイトルが翻訳されて表示されるのも好きじゃない．Englishで話してる動画見てるのに，タイトルが別の言語になってるのってすごく変だよね．" userName="danhau" createdAt="2025/05/19 14:55:34" color="#45d325">}}




{{<matomeQuote body="全ての字幕が翻訳されないのが特に辛いんだよね．<br>僕はFrenchだけどブラウザはEnglishに設定してる．Englishタイトルの一部がFrenchに，Frenchタイトルの一部がEnglishに翻訳される．これが原因で登録チャンネルのアップロードをいくつか見逃した．タイトルの言語が自分のフィルタリングの一部だから．" userName="tuetuopay" createdAt="2025/05/19 15:14:51" color="#ff33a1">}}




{{<matomeQuote body="Googleで知ってる言語の一つにSpanishを設定してるのに，YouTubeではまだ全部Englishに自動翻訳されちゃうんだよね．Spanishは流暢じゃないけど，習得する良い方法の一つにネイティブコンテンツを消費することが知られてるのに，YouTubeがそれを難しくしてる．" userName="bluGill" createdAt="2025/05/19 15:38:06" color="#45d325">}}




{{<matomeQuote body="本当にそうなんだよね．Googleは僕が誰か知ってるし，旅行中だって知ってるし，言語設定（English）も知ってるのに，特定のページではまだ場所に基づいて言語が表示される．<br>トラッキングさせてるんだから，Googleさん，広告だけじゃなくて良いUXのためにそれ使ってよ．" userName="doix" createdAt="2025/05/19 11:01:24" color="#ff5733">}}




{{<matomeQuote body="全くその通り．Catalan話者は，Googleアカウントにもブラウザ設定にもSpanishが関連付けられてないのにSpanishを無理強いされてる．<br>United Statesに住んでる僕もCatalan関連検索でもSpanishの結果表示される（Spanish Wikipedia優先など）．<br>Spanishが理解できない子供やスペイン以外のCatalan語圏（Andorra含む）にとって大きな問題．<br>僕の経験ではGeminiはCatalanコンテンツを危険と判断しがち．<br>Googleはかつて多様性に敏感だったけど，今はこれが優先じゃない．" userName="kiliancs" createdAt="2025/05/19 13:31:13" color="#ff33a1">}}




{{<matomeQuote body="本当に，何でかGoogleがこの件で一番ひどい加害者なんだよね．<br>最近，Mapsレビューで現地語をEnglishに自動翻訳しないとか，検索で現地語Wikipedia優先とか，”好みを全部推測しなきゃ”ってやり方が失敗してる．<br>現地語検索はそこで探すのに必要だからで好みとは限らないのに．<br>失敗してるのにGoogleが粘り続けるのか理解できない．的外れな企業の自尊心以外理由が．" userName="dkjaudyeqooe" createdAt="2025/05/19 11:40:27" color="#ff33a1">}}




{{<matomeQuote body="Googleの開発者とこのことで議論したことあるんだ。彼は効率のためにコンテンツレンダリングの段階が違ってて、メインページ構造にはまだユーザー情報がないって言ってた。でも俺からしたらそれはゴミだね、だってaccept language headerはその段階で使えるはずじゃん。" userName="edarchis" createdAt="2025/05/19 11:54:18" color="#785bff">}}




{{<matomeQuote body="他の大組織でも似たような機能不全見たことあるよ。featureやbugfixがteam boundariesをcrossする必要があって、outcomeがvaguely defined responsibilityのzonesにinhabitするんだ。君が議論したguyは、典型的な”noogler”のrose colored glassesでこれをsemi-justifyingしてたみたいだね。" userName="MoreQARespect" createdAt="2025/05/19 13:16:31" color="">}}




{{<matomeQuote body="＞効率のために彼らは（壊れた製品を作る）<br>それ、premature optimizationって言うんだよ。" userName="Zak" createdAt="2025/05/19 13:45:31" color="">}}




{{<matomeQuote body="最悪の経験は、新しい国に着いてからPlay storeでlocal appsが表示されなかったこと。Google accountがold countryにassignedされてたから。countryを変えるのもeasyじゃなくて、abandoning the old countryとit’s appsを意味したんだ。Since I travel a bit back and forthだからended up buying a second phoneとcreating an account for the new country。" userName="scotty79" createdAt="2025/05/19 13:50:23" color="#ff33a1">}}




{{<matomeQuote body="これ本当にめちゃくちゃannoyingだし、なんでこんなにmany appsがconfigured to only be available in specific countriesなのか全然わかんない。Like what at all do they stand to gain doing this？<br>Googleはshady sourcesからAPKsをinstallするusersについてcomplainするけど、this practice pushes users to do so. I’m sure a decent amount of users ended up with malware on their phones just because they wanted to install an app that wasn’t available in their listed country。" userName="tamirzb" createdAt="2025/05/19 18:55:51" color="#ff5c5c">}}




{{<matomeQuote body="You solve it the best way to fit your case I guess. On androidでI created a set of alternative accounts that each belong to a different country.<br>All accounts can be active at the same time on the same phone, there is a dropdown to switch in the Store app, and that works even with a work profile on the side. I’ve yet to see real downsides, except for course remembering which account is on which country and manually switching。" userName="makeitdouble" createdAt="2025/05/19 14:29:17" color="#38d3d3">}}




{{<matomeQuote body="It’s strange that Google knows I live in the UK and speak English. When I’m signed in to a TV in a hotel room in Spain watching English YouTube videos it then shows me a Spanish advert. Just feels really silly when I don’t understand it and they know full well that I don’t understand it - still they can charge the advertisers。" userName="aembleton" createdAt="2025/05/19 16:06:15" color="">}}




{{<matomeQuote body="When I was in Romania for my IELTS, I could not use Google Maps. Despite my Google account specifying my preferred languages as English, Ukrainian, Russian in that order and my Accept Language header set only to English, that was not enough to not discount those preferences as a configuration error and serve me Romanian.<br>Using Google search, which luckily did not decide to show me ”local” results to an English query like it often does home, I found a support thread suggesting I set my Accept Language to have something other than English as a second language. Lo and behold, the page decided to now respect it。" userName="pona-a" createdAt="2025/05/19 13:17:12" color="#38d3d3">}}




{{<matomeQuote body="About a decade ago Google decided that all maps in Finland should have the street names in Swedish.<br>Which is kinda valid, in the southern and south-western parts this is done because there is a significant Swedish-speaking minority so most cities and streets have names in both languages.But at the time I lived in central Finland, where the streets DIDN’T have official Swedish names, they just ... translated them. Which was super fun for navigating。" userName="theshrike79" createdAt="2025/05/21 06:22:23" color="#45d325">}}




{{<matomeQuote body="ほんと、Googleが一番ひどいってのがびっくりだよね。<br>これってGoogleの半分くらいの社員がキャリアずっとカリフォルニアで過ごすから、他の言語とか単位とかタイムゾーンとか全然知らないんじゃないかな。<br>あんなに外国人雇ってカリフォルニアに連れてきてるのに変だよ。でも、到着した途端、ベイエリア以外の存在についてみんな記憶喪失になるみたいだね。<br>他の会社はちゃんとやってるよ。Googleはユーザーに敵対的だね。<br>だめだ。変なアメリカだけの単位で、自転車とか徒歩とか公共交通機関で案内されるなんて絶対いやだ。" userName="knorker" createdAt="2025/05/19 12:24:18" color="#ff5733">}}




{{<matomeQuote body="それ超うざいんだよね。新しいデバイスとかブラウザ使うたびに、GoogleとかGoogleの全サービスがHebrewで始まるんだ。ログインしてるのに、英語に何百万回も変えてるのにさ。読めないわけじゃないけど、翻訳されたのより普遍的な言語がいいんだよね、全部。" userName="yonatan8070" createdAt="2025/05/19 18:10:23" color="#45d325">}}




{{<matomeQuote body="Googleがこういう風にUXを改善する動機って何があるんだろうね？そうあるべきだってのは全面的に同意だけど、それが重要だと思う人たちは（1）全ユーザーベースから見ると全く取るに足らないし、（2）ほとんどがトラッキング気にしててそれを回避しようとしてる人たちだからね。" userName="lblume" createdAt="2025/05/19 11:08:17" color="">}}




{{<matomeQuote body="ヨーロッパには7億人以上の人が住んでるんだよ。国はちっちゃくて、ほとんどの国にたくさんの公用語がある。直すなら、ユーザーが選択した言語を使うべきで、場所に基づいてコロコロ変えるのはやめるべきだよ。IPベースの位置情報推測は、ここじゃ正しい国すら分からないんだから。" userName="plastic3169" createdAt="2025/05/19 11:29:41" color="#785bff">}}




{{<matomeQuote body="それは動機にならないね。Googleには何もないんだ。もちろん、その7億人以上にとっては役に立つけど、彼らはGoogleの顧客じゃなくて、ユーザーであり/商品なんだよ。君たちが（大量に）他の場所に行かない限り、君たちは重要じゃないってこと。" userName="bluGill" createdAt="2025/05/19 15:51:30" color="">}}




{{<matomeQuote body="最初にローカライズを追加したのと同じ動機があるはずだよ。" userName="account42" createdAt="2025/05/26 08:37:16" color="">}}




{{<matomeQuote body="” (1) 全ユーザーベースから見ると全く取るに足らない” に対してね。常にGoogleにアクセスしてる人の中で、旅行者でその国の主要言語を知らない人が何千万人っているはずだよ。たとえこの人数がGoogleの全ユーザーベースと比べたら取るに足らなくても、2000〜3000万人に機能を提供するためのコストは、その人数からの年間広告収入より低いんじゃないかな。" userName="OtherShrezzing" createdAt="2025/05/19 11:13:38" color="">}}




{{<matomeQuote body="悲しい事実だけど、ほとんどの人はどこにも行かないんだ。私たちみたいな人はエッジケースなんだよ。" userName="sneak" createdAt="2025/05/19 11:46:37" color="">}}




{{<matomeQuote body="多言語になるのに旅行する必要はないんだよ。たくさんのEU諸国が複数の公用語を持ってるし。ほとんどの旧植民地はバイリンガルだよ。" userName="j16sdiz" createdAt="2025/05/19 12:08:37" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
