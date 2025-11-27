+++
date = '2025-11-20T00:00:00'
months = '2025/11'
draft = false
title = 'ナノバナナプロ！Google AI Studioで支払い不能？ユーザーを悩ませるパーミッション拒否'
tags = ["AI", "Google Cloud", "API", "課金", "開発者体験"]
featureimage = 'thumbnails/color2.jpg'
+++

> ナノバナナプロ！Google AI Studioで支払い不能？ユーザーを悩ませるパーミッション拒否

引用元：[https://news.ycombinator.com/item?id=45993296](https://news.ycombinator.com/item?id=45993296)




{{<matomeQuote body="GoogleがGodzillaみたいに暴れてる中、初めてAI Studioにクレカ登録したんだけど、「支払い不可能」って話はマジだったわ。APIキーの設定は全部済んで「You’re using Paid API key [NanoBanano] as part of [NanoBanano]. All requests sent in this session will be charged.」って表示されてるのに、Promptで「permission denied」エラー。せっかくすごいモデルがあっても、金払うのがこんなに大変だと話になんないよな。" userName="ceroxylon" createdAt="2025/11/20 18:15:32" color="#ff5c5c">}}




{{<matomeQuote body="悪い印象を与えちゃってごめんね。チームはモデルを簡単に使えるようにめっちゃ頑張ってるよ。Permissionの問題は、どんな流れでそうなったのか詳しく教えてくれればデバッグするよ（Lkilpatrick@google.com）。支払いについては、AI Studioに直接クレカ追加できる新しい請求システムを1月にグローバル展開する予定だから、それまで待っててね。" userName="logankilpatrick" createdAt="2025/11/20 21:17:52" color="#45d325">}}




{{<matomeQuote body="チームは製品リリース後に頑張るんじゃなくて、リリース前にしっかり準備すべきだったんじゃない？" userName="everdev" createdAt="2025/11/20 21:56:19" color="">}}




{{<matomeQuote body="APIだけならFal.aiがNano-Banana-Proを生成と編集の両方で提供してるよ。彼らは色々なAIモデルのプロバイダーだから、Fal.aiに登録する方がずっと楽だよ。URL: https://fal.ai/models/fal-ai/nano-banana-pro" userName="vunderba" createdAt="2025/11/20 18:32:21" color="#ff33a1">}}




{{<matomeQuote body="でも、もしリリース前に完璧にしたら、今度はGoogleは「動きの遅いdinosaur」だって文句言うでしょ。「Move fast and break things」はどっちにも言えることなんだよ！(Google.comのホームページを2回落とした元Google tech leadより)" userName="asah" createdAt="2025/11/20 22:46:49" color="">}}




{{<matomeQuote body="Googleへの異動おめでとう！この件について何とかできる人に愚痴らせてほしいんだけど、Vertex AIでClaude Sonnetを使うまでの道のりが悪夢だったわ。APIキー取得、支払い設定、GCP連携、モデル名探し、リージョン、権限エラー、利用申請フォーム、クォータ0 TPM、クォータ申請拒否…って感じで、最終的に諦めたよ。AnthropicのサイトだとAPIキー取得、クレカ連携、Claude Code起動で成功したのにさ。" userName="ukuina" createdAt="2025/11/21 01:40:40" color="#ff5c5c">}}




{{<matomeQuote body="それってちょっと意地悪な見方じゃないかな。最近のローンチの規模と、それを動かすための計算リソースを考えたら、めちゃくちゃスムーズだと思うよ。edge caseは常にあるし、会社やチームにできるのはresponsiveであることだけ。そして、まさにそれが今起きてると思うな。" userName="harles" createdAt="2025/11/20 22:01:37" color="">}}




{{<matomeQuote body="話してるのはAIとは関係ない、一番基本的なbillingの問題だよ。それが機能してないってことは、このproductの将来とcompany cultureについて、色々物語ってるよね。(明らかにproduct-orientedじゃないってことだろ)" userName="risyachka" createdAt="2025/11/21 00:03:17" color="#ff33a1">}}




{{<matomeQuote body="Fal.aiに、ぼやけたビデオ映像を鮮明にするのに便利なモデルってある？いくつかウェブサイトを見つけたんだけど、どうやらほとんどがscammyなんだよね。" userName="SamBam" createdAt="2025/11/20 22:50:35" color="">}}




{{<matomeQuote body="HNのプロフィールがOpenAIのDeveloper Relationsになってるよ。" userName="brandon272" createdAt="2025/11/20 21:27:36" color="">}}




{{<matomeQuote body="Google APIってマジで使いづらいよね。他のサービスならAPIキーで終わりなのに、GoogleはCloudアカウント作って、アプリ作って、OAuth設定して、JSONファイル落として…って、どんだけめんどくさいんだよ。" userName="herval" createdAt="2025/11/20 23:04:50" color="#45d325">}}




{{<matomeQuote body="Google AIはまだ発展途上だけど、スタートアップみたいに急成長してる感じ。OpenAIとかを圧倒して、AI市場を独占しそうだよ。Google株に投資したくなっちゃうけど、一つの会社にこんなに力集中して、みんなの仕事なくなるんじゃないかって不安もあるな。" userName="echelon" createdAt="2025/11/20 20:52:37" color="#ff5c5c">}}




{{<matomeQuote body="新しい支払いシステムには、予期せぬ請求を避けるために、課金上限と前払い残高の機能をつけてほしいな。" userName="xmprt" createdAt="2025/11/20 21:26:43" color="#ff5733">}}




{{<matomeQuote body="課金って、全然簡単じゃないんだよね。" userName="thehappypm" createdAt="2025/11/21 03:29:10" color="">}}




{{<matomeQuote body="お金払わせてくれよ！Google CloudとかWorkspaceとかマジでいらないから、GeminiかNanoに直接サブスクさせてくれ。たった2クリックでできるはずだろ？" userName="rapind" createdAt="2025/11/21 07:07:28" color="#45d325">}}




{{<matomeQuote body="一番簡単なのは、https://aistudio.google.com/api-keys に行ってAPIキーを設定して、支払情報を追加することだよ。" userName="kennethologist" createdAt="2025/11/20 22:48:43" color="#785bff">}}




{{<matomeQuote body="モバイルユーザーの半分にサブスクを提供できる決済システム持ってる会社が、自分たちのサービスで支払いを受け付けられないとか、マジでヤバい失敗だろ。特に開発者とかインフルエンサー向けの市場でさ。" userName="tracker1" createdAt="2025/11/21 12:03:02" color="#38d3d3">}}




{{<matomeQuote body="最近のサービス連発が当たり前みたいになってるけど、なんで？誰がこんなリリーススケジュール求めてるの？" userName="recursive" createdAt="2025/11/20 22:40:48" color="">}}




{{<matomeQuote body="GoogleのAI Studio、マジでひどいね。GOOGLE_GENAI_USE_VERTEXAI=trueだとGemini CLIとAPIキーが全然動かないんだよ。エラーメッセージも意味不明だし、Vertex APIキーなのかそうじゃないのかもよく分かんない。なんとか動いたからもう触りたくないわ。<br>Googleでグローバルに展開するのは複雑なのは分かるけど、他社と比べると難しすぎる。Gemini自体は最高なのに残念だよ！" userName="vessenes" createdAt="2025/11/20 23:07:43" color="#ff33a1">}}




{{<matomeQuote body="ワロタ。GirlsGoneWildが自動更新サブスクを始めた時から、予期せぬ請求と解約しにくい課金は当たり前になったよね。最高の顧客ってさ、サービスを使わないのに払い続けて、登録時のメールアドレスも忘れちゃった人なんだよ。" userName="sandworm101" createdAt="2025/11/20 22:11:38" color="#ff5733">}}




{{<matomeQuote body="GCP、お前は俺より深く突っ込んだんだな。俺はサポートから何度もGoogleの営業チームに連絡しろって言われたよ。<br>GCPは俺みたいな個人ユーザーには向いてない気がする。企業向けクラウドで働いてる友達は、GCPの技術スタックをすごく高く評価してるみたいだけどね。" userName="leopoldj" createdAt="2025/11/21 02:49:00" color="#45d325">}}




{{<matomeQuote body="一般的に、もっと良い選択肢があるんだよ。AI動画の初期にGoogle AI Studioでゴールデンレトリバーの動画を作ろうとしたら、最高品質で4本生成されて36ドル請求されたんだ。大金じゃないけど、不意打ちだった。<br>Fal.aiは従量課金制で、料金が最初に明確に表示されるから安心だよ。" userName="LaurensBER" createdAt="2025/11/20 19:21:45" color="#38d3d3">}}




{{<matomeQuote body="全くその通り！俺、ClaudeもOpenAIもPro/Maxプラン使ってるんだけどさ。<br>Geminiも試してみたいのに、支払いがほぼ不可能に近いんだよ。Geminiをちょっと試すためだけに、本格的なGCPプロジェクトのリスクを負う必要があるって？<br>マジ勘弁してくれ。" userName="wheelerwj" createdAt="2025/11/20 18:22:36" color="#785bff">}}




{{<matomeQuote body="俺も市場については同じ意見だよ。2年前もGoogleが勝つと思ってたけどね。<br>Googleがみんなの仕事を奪って未来を独占するってどう？なんかそう感じてきたよ。<br>良くはないけど、もしAIでトップが出るなら、現状の他の選択肢はGoogleよりひどいと思う。OpenAI、Microsoft、Meta、Xは全部倫理的に問題がある。ロシア、中国もね。<br>ヨーロッパはまともそうだけど、AIで優位に立つ資本がないから無理だろうな。" userName="ants_everywhere" createdAt="2025/11/20 22:32:35" color="#785bff">}}




{{<matomeQuote body="これ、新しい問題じゃないし、課金だけじゃないんだよね。GeminiのUIってさ、AI Studioもチャットインターフェースも全体的にひどいんだ。<br>リクエスト中にタイムアウトして完全に動かなくなるような、イライラする失敗ケースもたくさんあるし。<br>Gemini 3よりずっと前からこんな感じだよ。それでも使ってるのは、俺の用途には最高の商用モデルだからなんだけどさ。<br>数十年前はウェブアプリのUXやインフラのゴールドスタンダードだったGoogleが、こんなに基本的な部分で下手になってるなんて信じられないよ。" userName="bayarearefugee" createdAt="2025/11/20 23:00:28" color="#785bff">}}




{{<matomeQuote body="残念だけど、これはかなり難しいタスクだよ。俺の経験だと、Nano BananaみたいなSOTAモデルでも、この種のリクエストだと画像にほとんど意味のある改善をしてくれないんだ。<br>専用のアップスケーラーを使った方がいいよ。特にGANベースのものは、細部を追加するときに自然にシャープな画像を生成してくれるからね。<br>より手間をかけないなら、Fal.aiがTopazアップスケーラーへのアクセスを提供してるみたいだよ。https://fal.ai/models/fal-ai/topaz/upscale/image" userName="vunderba" createdAt="2025/11/20 23:21:18" color="#ff33a1">}}




{{<matomeQuote body="うん、それがゴールだよ :)" userName="logankilpatrick" createdAt="2025/11/23 01:39:55" color="">}}




{{<matomeQuote body="支払画面が一番しっかりしてるべきなのに、真逆になってるって、どうしたら勝てるんだろね。" userName="lxgr" createdAt="2025/11/20 22:37:51" color="">}}




{{<matomeQuote body="正確さとか証拠の詳しさを気にするなら、AIツールでちゃんとやるのは超むずかしいよ。今のAIツールには向いてないかもね。" userName="brk" createdAt="2025/11/20 23:03:47" color="">}}




{{<matomeQuote body="結果が出たよ！Nano Banana Proで画像編集プロンプトを再実行したら、SHRDLUとかM&M Van HalenとかScorpio street testをクリアしたんだ。元のNBは全部ダメだったのにね。<br>1. Nano Banana Pro: 10 / 12<br>2. Seedream4: 9 / 12<br>3. Nano Banana: 7 / 12<br>4. Qwen Image Edit: 6 / 12<br>詳しい比較はここ見てね: https://genai-showdown.specr.net/image-editing<br>NBとNB Proの比較だけなら: https://genai-showdown.specr.net/image-editing?models=nb,nbp" userName="vunderba" createdAt="2025/11/20 19:51:13" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Nano Banana Proはキリンのテストを通るべきだったと思うな。そこまで良い結果じゃないけど、まさに要求通りじゃん。Seedreamの結果より悪くないと思うよ。" userName="sosodev" createdAt="2025/11/20 21:58:01" color="">}}




{{<matomeQuote body="Nano banana pro’sのキリン編集の回答、Seedreamより全然良いと思うんだけど、SeedreamはパスでNB proは失敗ってどういうこと？もしかして、あのテスト自体が良くないんじゃない？" userName="tylervigen" createdAt="2025/11/21 00:18:56" color="">}}




{{<matomeQuote body="ありがとう、君のウェブサイト大好きだよ。テキストから画像へのベンチマークでもNB Proをやる予定ある？" userName="Wyverald" createdAt="2025/11/20 20:22:14" color="">}}




{{<matomeQuote body="「通りと歩道からゴミを全部取り除いて、地面で寝てる人を緑のベンチにして、駐車メーターを植木に変えて。」ってプロンプトは、現代のビッグテックを完璧に表してるよね。新しいモデルは[デジタルで]ゴミを全部消すことさえできたんだ。" userName="rl3" createdAt="2025/11/21 01:57:58" color="#38d3d3">}}




{{<matomeQuote body="ピサの斜塔テストってマジ面白いよね。暗黙の知識が絡む厳しいプロンプトなのに、一部のモデルはパスする。なのに、斜めのものをまっすぐにするみたいな超簡単なことが、最新モデルでも難しいってどうなってんの？" userName="humamf" createdAt="2025/11/20 21:52:30" color="#45d325">}}




{{<matomeQuote body="元の返信を編集できる期間は過ぎちゃったけど、やっとText-to-Imageの部分をNB Proで再実行したよ。結果はね、<br>gpt-image-1: 10 / 12<br>Nano Banana Pro: 9 / 12<br>Nano Banana: 8 / 12<br>元のNBよりスコアは少ししか上がってないけど、画像の見た目はかなり良くなってるってことは言っておくね。詳しい比較はここ見て: https://genai-showdown.specr.net?models=nb,nbp" userName="vunderba" createdAt="2025/11/21 00:24:10" color="#ff5c5c">}}




{{<matomeQuote body="うん、それはもっともな批判だと思うよ。下手な切り貼りみたいに見えるもんね（ズームすると首の一部がないのがわかる）。もう何回か試して、もっとうまくできるか見てみるよ。<br>Seedreamのやつは、ただの遠近法のトリックかもしれないから、失敗と呼んで全然いいと思う。" userName="vunderba" createdAt="2025/11/20 22:07:13" color="#ff33a1">}}




{{<matomeQuote body="「skifter」って単語、AIに聞いたらノルウェー語で「スイッチ」だって！カードのイカサマにも関係あるのかな、気になるわ。" userName="noduerme" createdAt="2025/11/21 04:54:25" color="">}}




{{<matomeQuote body="実際の都市計画とかホームレスのこと、もう心配しなくていいんだね。政府や不動産屋が、もっと手軽にデカい嘘つけるようになるってことか！未来ってすげーな。" userName="andrepd" createdAt="2025/11/21 10:19:23" color="">}}




{{<matomeQuote body="「部分合格（partial pass）」って考えたことある？もし合否以外で選ぶなら、決定を楽にするいい手になるかもね。" userName="sefrost" createdAt="2025/11/20 23:18:39" color="">}}




{{<matomeQuote body="Seedreamの出力、質が低いっぽいのに、品質に点数つけてないみたいだね。これじゃ全然役に立たないよ。" userName="dyauspitr" createdAt="2025/11/21 00:51:58" color="">}}




{{<matomeQuote body="別のモノを回転させるのは多分大丈夫だと思うけど、この塔はトレーニングデータにめっちゃ出てくるからね。ピサの塔が傾いてるのって、もはや物理法則みたいなもんだよ。" userName="kridsdale3" createdAt="2025/11/20 22:12:56" color="">}}




{{<matomeQuote body="しかも、この塔って観光名所として残しつつ安定させるため、わざとまっすぐにしなかったって有名だよね。" userName="gridspy" createdAt="2025/11/20 22:50:07" color="">}}




{{<matomeQuote body="それ良い提案だね。数値スコアも考えたけど、当時はちょっと大変そうって思ったんだ。でも、Fail＝0点、Partial＝0.5点、Success＝1点って形なら再検討してもいいかも。いくつか、まるで眼科医で視力検査に落ちてるみたいな写真もあるしね（1か2、AかB、みたいな）。" userName="vunderba" createdAt="2025/11/21 00:19:23" color="#ff5c5c">}}




{{<matomeQuote body="アップデートありがとう！一つだけ補足なんだけど、d20テストで、NB Proは19だけじゃなく13と17も重複してたよ。" userName="Wyverald" createdAt="2025/11/21 00:41:07" color="#785bff">}}




{{<matomeQuote body="それはね、Star Warsのカードゲーム「サバック」で使うイカサマの技で、こっそりカードを入れ替えるやつなんだ。ティモシー・ザーンのThrawnシリーズで子供の頃に読んだはず。ノルウェー語の意味があるのは知らなかったから、TILだね！" userName="vunderba" createdAt="2025/11/21 05:29:00" color="#38d3d3">}}




{{<matomeQuote body="Seedreamがなんでそこで合格なの、全然わかんないな。首の長さは同じに見えるけど、角度が変わってるじゃん。" userName="aqme28" createdAt="2025/11/21 00:18:35" color="">}}




{{<matomeQuote body="よく見ると、NBPのキリンの首には大きな穴が空いてるぜ。" userName="strbean" createdAt="2025/11/21 02:36:22" color="">}}




{{<matomeQuote body="いつか、俺たちも同じような機能を持つメガネをかける日が来るんだろうな！そうすれば、どんな問題も解決（無視）できる！" userName="jamiek88" createdAt="2025/11/22 00:53:33" color="">}}




{{<matomeQuote body="それは、俺が最先端の画像生成モデルの比較とか、プロンプトへの忠実性を重視するタイプじゃないからだよ。『忠実性』の方が興味深い問題だと俺は思うね。品質問題はアップスケーラーやリファイナーモデル、LoRAとかで改善できるし、視覚的な忠実性にこだわるベンチマークはもう山ほどあるからさ。" userName="vunderba" createdAt="2025/11/21 05:31:41" color="#ff33a1">}}




{{<matomeQuote body="だって、人の頭に黒い斑点を入れるモデルと、本物そっくりに髪の毛で埋めるモデルじゃ、かなりの違いがあるだろ。だから、この方法論はあんまり役に立たないって言ってるんだよ。" userName="dyauspitr" createdAt="2025/11/21 08:22:44" color="#ff33a1">}}




{{<matomeQuote body="各テストで常にオリジナル画像を1つ（比較対象として）見えるようにしておいてくれないかな？そうすれば、最終的な画像とオリジナル画像を同時に見比べられるでしょ？もしそうするなら、もうあのクールなスライダーはいらないかもね？とにかく、この大変な作業、本当にありがとう！すごく面白い研究だったよ！" userName="Nifty3929" createdAt="2025/11/20 22:26:49" color="#ff33a1">}}




{{<matomeQuote body="クールなサイトだね、ありがとう！ところで、『Before』と『After』のボタンが逆になってるよ。" userName="tiagod" createdAt="2025/11/21 16:58:48" color="#ff5c5c">}}




{{<matomeQuote body="うん、俺もそう思うよ。プロンプトは『キリンの首の長さを短くする』であって、曲げることじゃないだろ。あの点ではGemini 3の方が良い結果を出してる気がするな。" userName="robertwt7" createdAt="2025/11/21 05:45:49" color="#38d3d3">}}




{{<matomeQuote body="テストの評価方法を変えてほしいな。合格/不合格じゃなくて、5点満点のスコアにしたらどう？今のやり方だと、Gemini 3みたいにすごく良くできてても、Qwenみたいな「まあギリOK」なのと変わらない評価になっちゃって、モデルの本当の実力が見えにくいんだよ。<br>カードのテストでも、使える結果とそうじゃないのにスコア差がないのはおかしいでしょ。" userName="handsclean" createdAt="2025/11/21 12:36:06" color="#ff33a1">}}




{{<matomeQuote body="Black Mirrorの世界が、少しずつ現実になってきてるって感じだね。" userName="andrepd" createdAt="2025/11/23 00:06:36" color="">}}




{{<matomeQuote body="よーし、敗北を認めなきゃな！Seedreamは「失敗」って評価になっちゃったよ。<br>キリンの首のテストには、最低合格基準を追加したんだ。<br>・首は元の画像より明らかに短く、自然に見えること。<br>・ただ首を切り抜いたり、遠近法を変えたりするだけじゃダメ、ってね。" userName="vunderba" createdAt="2025/11/21 03:40:28" color="#ff5733">}}




{{<matomeQuote body="短いプロンプトからインフォグラフィックを丸ごと作れるなんて、これ、マジですごいな！<br>Google検索も最初にできるのが特に良いよね。<br>「Datasetteオープンソースプロジェクトがどう機能するかを説明するインフォグラフィック」ってプロンプトを試してみたよ。結果はここ見てね: https://simonwillison.net/2025/Nov/20/nano-banana-pro/#creat..." userName="simonw" createdAt="2025/11/20 16:41:19" color="#45d325">}}




{{<matomeQuote body="これ、うちのSaaSでイベントチラシを顧客に作ってもらう機能にとって、マジでゲームチェンジャーだよ。<br>今まではNano Bananaで飾りの枠だけ作って、テキストはPillowとLLMで出してたんだけど、見た目がイマイチだったんだ。<br>でも、テキストって短いフレーズならいいけど、ちゃんとした文章でもきれいにレンダリングできるのかな？" userName="JLO64" createdAt="2025/11/20 23:12:01" color="#38d3d3">}}




{{<matomeQuote body="うん、ちゃんとした文章もレンダリングできるよ。" userName="danielbln" createdAt="2025/11/21 14:04:20" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ピアノの鍵盤でミドルCを見つけるのは、あんまり得意じゃなかったみたいだね。<br>黒鍵が正しく描かれた画像も一枚はあったけど、一貫性はなかったよ。<br>試した結果はここ: https://gemini.google.com/share/c9af8de05628" userName="skybrian" createdAt="2025/11/20 17:40:17" color="#785bff">}}




{{<matomeQuote body="俺も似たようなことを試してみたよ。「E、G#、BのキーでEmajトライアドを弾いてる、手を伸ばしたピアノを見せて」ってプロンプトでね。<br>結果はこれ: https://imgur.com/ogPnHcO<br>7オクターブある普通のピアノを矛盾なく作るのすら結構難しいんだ。<br>白鍵と黒鍵の色を反転させようとしたら、もうめちゃくちゃになっちゃったよ。" userName="vunderba" createdAt="2025/11/20 18:29:54" color="#ff33a1">}}




{{<matomeQuote body="反射もちょっと変な感じだね。" userName="Snuggly73" createdAt="2025/11/21 07:09:49" color="">}}




{{<matomeQuote body="局所的には合ってたから、騙されちゃったよ！" userName="gowld" createdAt="2025/11/20 19:38:39" color="">}}




{{<matomeQuote body="AIが、情報が少ない自作プロジェクトのインフォグラフィックをすごく上手に作ったんだって。さらにインスタ向けに1:1の正方形にもフォーマットを変えられたらしいよ。<br>「player.htmlがどう動くか説明するインフォグラフィック（Githubのplayer.htmlプロジェクトより） https://github.com/pseudosavant/player.html」" userName="pseudosavant" createdAt="2025/11/20 18:38:04" color="#45d325">}}




{{<matomeQuote body="インフォグラフィックって、Datasetteの動作に関して正確なの？" userName="bn-l" createdAt="2025/11/20 16:44:24" color="">}}




{{<matomeQuote body="ほとんど正確だよ。ただ、俺の投稿で唯一違うって言ったのが、「Data Ingestion (Read-Only)」がちょっとおかしいってことだけ。" userName="simonw" createdAt="2025/11/20 17:16:18" color="#785bff">}}




{{<matomeQuote body="微妙に不正確だよ。例えば、R/Wパーミッションがいくつかのノードで間違って説明されてるんだ。" userName="OtherShrezzing" createdAt="2025/11/20 17:07:54" color="">}}




{{<matomeQuote body="じゃあ、ターゲットを絞ったフィードバックを組み込めるのか、それとも一発勝負なのかな？俺の経験だと、ChatGPTはテキストの繰り返しは得意だけど、画像の繰り返しはかなり苦手なんだよね。小さな変更を組み込むのに苦労して、いつも最初からやり直しちゃうから、結果が全然違うんだ。" userName="mikepurvis" createdAt="2025/11/20 17:42:03" color="#785bff">}}




{{<matomeQuote body="Nano Bananaは画像の繰り返しが本当に得意だよ。Max Woolfから借りたパンケーキスカルの例でもそうだし、テスト付きスライドの繰り返しも得意みたいだね。<br>https://simonwillison.net/2025/Nov/20/nano-banana-pro/#tryin..." userName="simonw" createdAt="2025/11/20 18:03:38" color="#ff33a1">}}




{{<matomeQuote body="どうやって画像を生成するかによると思うよ。俺はClaudeを使ってiOSゲームのアイコンとか起動画像をSVGファイルで作ったんだけど、SVGはコードとして定義できるから、画像の特定の部分を変更するのが楽なんだよね。Nano Banana Proがどう動くかは知らないけど。" userName="spike021" createdAt="2025/11/20 17:55:49" color="#45d325">}}




{{<matomeQuote body="Claudeって驚くような方法で画像を生成するんだよね。画像生成と理解に関するいろんなフロンティアモデルの評価をしたんだけど、Claudeがダントツで一番驚きの結果だったよ。<br>[1] https://chat.vlm.run/showdown<br>[2] https://news.ycombinator.com/item?id=45996392" userName="fzysingularity" createdAt="2025/11/20 19:46:43" color="#ff33a1">}}




{{<matomeQuote body="ターゲットを絞ったフィードバックは使えるよ。でも、編集がちゃんとピンポイントだったかはユーザーが確認する必要があるんだ。俺の経験だと、NBは比較的、外科手術みたいな編集をするけど、気をつけないと他の細かい変更も入れちゃうことがあるんだよね。" userName="vunderba" createdAt="2025/11/20 18:23:51" color="#785bff">}}




{{<matomeQuote body="ひとつも正確じゃなかったんだよ。でもさ、とにかく美しかったね。" userName="gpmcadam" createdAt="2025/11/20 17:14:32" color="">}}




{{<matomeQuote body="Datasetteの作者自身が正確だって言ってるのに、こんなこと言うの面白いじゃん。" userName="Kiro" createdAt="2025/11/20 21:03:48" color="">}}




{{<matomeQuote body="GoogleがSynthIDをオープンに公開してくれたら、OpenAIとかも実装できていいよね。そしたらFacebookみたいなサイトやブラウザで”AI警告”を実装できるようになるのに。" userName="cubefox" createdAt="2025/11/21 07:49:09" color="#45d325">}}




{{<matomeQuote body="インフォグラフィック生成に超期待してるんだ。GoogleやOpenAIの前のモデルは、詳細や解像度が低すぎたからね。最初の生成は正確じゃないかもだけど、何回か試せばうまくいくスタイルやフォーマットが見つかって、改善できるはずだよ。" userName="fudged71" createdAt="2025/11/20 17:26:05" color="#ff5733">}}




{{<matomeQuote body="建築図面にとってはゲームチェンジャーだよ。" userName="nrhrjrjrjtntbt" createdAt="2025/11/20 21:40:00" color="">}}




{{<matomeQuote body="建築仕様（物理的な方ね）の指示に従うのが苦手だなって思ってる。どこに何って言っても無視して、今まで見たような平均的なのを作っちゃうんだよ。でも見た目はいい感じなんだよね。" userName="energy123" createdAt="2025/11/21 01:55:00" color="#ff33a1">}}




{{<matomeQuote body="SynthIDが、GrayScaleみたいなフィルターで写真を編集しても機能するか確認した？" userName="ndkap" createdAt="2025/11/20 18:56:17" color="">}}




{{<matomeQuote body="Nano Bananaのプロンプトエンジニアリング分析に数ヶ月かけたのに、Googleが新バージョン出しちゃったよ！Nano Banana Proは僕のgemimgパッケージ（https://github.com/minimaxir/gemimg）で動くはず。料金（https://ai.google.dev/gemini-api/docs/pricing#standard_1）見ると、Proをデフォルトにするのはきついな。ドキュメントに「モデルは最大2つの中間画像を生成する」ってあったよ（https://ai.google.dev/gemini-api/docs/image-generation#think）。これが高コストの理由かも？gemimgが中間画像を返しちゃう可能性もあるから確認しなきゃね。" userName="minimaxir" createdAt="2025/11/20 16:22:07" color="#785bff">}}




{{<matomeQuote body="「左の眼窩にイチゴ」「右の眼窩にブラックベリー」→全部正しくできたって？これこそAIが画像生成や手術で犯す（微妙じゃない）間違いのいい例だよ。AIは閲覧者視点の左右で配置したけど、普通はターゲットの視点だよね。医者も間違うけど、十分な監視なしでAIに意思決定を任せるのはもっと心配だ。https://minimaxir.com/2025/11/nano-banana-prompts/#hello-nan..." userName="skeeter2020" createdAt="2025/11/20 17:42:44" color="#ff33a1">}}




{{<matomeQuote body="「AIが画像生成や手術で犯す（微妙じゃない）間違いの素晴らしい例」って言うけど、それプロンプト（情報不足）の間違いだよ。AIはベストを尽くしたんだ。「一番大きな惑星は？」「木星」「宇宙で一番って言ったんだよ！」みたいなもんさ。" userName="CGMthrowaway" createdAt="2025/11/20 17:49:05" color="#45d325">}}




{{<matomeQuote body="それって間違いというより曖昧さじゃない？僕には、この場合の閲覧者視点って全然アリだと思うんだけど。「_患者の左目_にイチゴを置く」ってプロンプトで指定しても、まだ閲覧者視点なの？もしそうなら何かあるけど、そうでなきゃ全く同意できないな。" userName="Jabrov" createdAt="2025/11/20 17:47:39" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
