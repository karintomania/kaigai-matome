+++
date = '2025-08-15T00:00:00'
months = '2025/08'
draft = false
title = 'PureGymの非公式Apple Wallet開発者、偶然にも私がなってしまった！'
tags = ["Apple Wallet", "セキュリティ", "ハッキング", "iOS開発", "エンジニアリング"]
featureimage = 'thumbnails/color4.jpg'
+++

> PureGymの非公式Apple Wallet開発者、偶然にも私がなってしまった！

引用元：[https://news.ycombinator.com/item?id=44910865](https://news.ycombinator.com/item?id=44910865)




{{<matomeQuote body="これ、すごい投稿だね！エンジニアの本質を捉えてる。面白くて、興味深くて、感動するよ。おめでとう！君は心底ハッカーだね。<br>アメリカでPureGymに入った時PINをもらったんだけど、その後退会したらChromeからPINが侵害されたって通知が来たんだ。2年後にまたアメリカに行って再入会したら、同じPINを受け取ったんだよ。これってとんでもないレッドフラグだよね。<br>アプリのトークンとPINにも興味津々で、ハイドロマッサージチェアを起動するシステムにセキュリティ上の欠陥を見つけたのを覚えてる。PINは何でも受け入れちゃう、まったくセキュリティがないんだ。" userName="pyman" createdAt="2025/08/15 23:35:47" color="#ff5733">}}




{{<matomeQuote body="＞ChromeがPureGymのPINが侵害されたって教えてくれた<br>これは`haveibeenpwned` APIを使ってるなら、誤検知の可能性が高いね。例えばPIN「87623103」は「558B4C37F6E3FF9A5E1115C66CEF0703E3F2ADEE」にハッシュ化されるんだ。<br>`HaveIBeenPwned`から範囲「558B4」を取得して、その中で「C37F6E3FF9A5E1115C66CEF0703E3F2ADEE」を探すと、それが”侵害済み”で3回見つかってるってわかるんだよ。URL: https://api.pwnedpasswords.com/range/558B4" userName="eterm" createdAt="2025/08/15 23:51:50" color="#45d325">}}




{{<matomeQuote body="もし誰かが気になってるなら、すべての8桁PINが”侵害済み”というわけじゃないけど、多くはそうだし、自動化されるシナリオでは8桁PINのセキュリティは当然限定的だよ。<br>`haveibeenpwned`データセットにすでにある例を見つけるために、簡単なスクリプトを書いたんだ。<br>```<br>  var httpClient = new System.Net.Http.HttpClient();<br>  httpClient.BaseAddress = new Uri(”https://api.pwnedpasswords.com/”);<br><br>  while (true)<br>  {<br>   var password = string.Join(””, Enumerable.Range(0, 8).Select(e =＞ Random.Shared.Next(0, 10)));<br><br>   var hash = Convert.ToHexString(System.Security.Cryptography.SHA1.HashData(Encoding.UTF8.GetBytes(password)));<br><br>   var passwordRange = await httpClient.GetAsync($”range/{hash.Substring(0, 5)}”);<br><br>   passwordRange.EnsureSuccessStatusCode();<br><br>   var allhashes = await passwordRange.Content.ReadAsStringAsync();<br><br>   var splitHashes = allhashes.Split(Environment.NewLine);<br>   <br>   var compromised = splitHashes.SingleOrDefault(h =＞ h.StartsWith(hash.Substring(5)));<br>   <br>   if (compromised != null)<br>   {<br>    Console.WriteLine($”Password {password} Compromised! Found {compromised.Split(’:’)[1]} time(s)”);<br>    Console.WriteLine($”Hash: {hash}”);<br>    return;<br>   }<br>   await System.Threading.Tasks.Task.Delay(1_000);<br>  }<br>```<br>これまでに見た中で”最も侵害された”PINは”17385382”で、DBに驚くべき119回も登録されてるんだ。すべてのPINを調べて統計を集めるのに数時間しかかからないだろうね。" userName="eterm" createdAt="2025/08/16 00:09:45" color="#ff5c5c">}}




{{<matomeQuote body="＞すべての8桁PINが”侵害済み”というわけじゃない<br>いや、それは違うよ。全部だよ。850MBのテキストファイルで全部送ってあげられるよ。かなり圧縮できると思うけどね。" userName="cornholio" createdAt="2025/08/16 07:01:06" color="">}}




{{<matomeQuote body="僕が”侵害済み”を引用符で囲んだのには理由があるんだ。それは、すべての8桁の数字がまだ`haveibeenpwned`でフラグ付けされているわけじゃないって意味だよ。もちろん、それらが実際に安全なパスワードになる世界なんてないし、だからそれをパスワードとして扱うのはちょっとおかしいと思うんだ。" userName="eterm" createdAt="2025/08/17 06:51:58" color="#ff33a1">}}




{{<matomeQuote body="＞17385382<br>それってUnixタイムスタンプの9桁PINを切り詰めたやつだよ。" userName="charcircuit" createdAt="2025/08/16 02:06:53" color="#ff33a1">}}




{{<matomeQuote body="うん、まあ、すべての8桁の数字を列挙したら、そりゃあより大きな数字の一部も見つかるのは当然だよね。" userName="nkrisc" createdAt="2025/08/16 09:22:51" color="">}}




{{<matomeQuote body="ちょっと無理があるんじゃない？その時間について何か特別なことでもあるの？" userName="londons_explore" createdAt="2025/08/16 06:15:08" color="">}}




{{<matomeQuote body="現在時刻を8桁に切り詰めても、2025年2月2日以降のすべてのタイムスタンプがこの結果（PIN「17385382」）を返すんだよ。" userName="echoangle" createdAt="2025/08/16 20:52:14" color="#ff5733">}}




{{<matomeQuote body="は？2025年2月2日のタイムスタンプしかないんだけど。<br>この日に何があったんだ？" userName="londons_explore" createdAt="2025/08/17 11:02:54" color="">}}




{{<matomeQuote body="最近こればっかり。ClaudeでUIモックアップ作ってたら、パスワードフィールドに1234とかasdfって入力してたんだ。そしたらChromeが「お前のパスワード、pwnedされてんぞ！」って騒ぎ出すんだよね。" userName="qingcharles" createdAt="2025/08/17 00:17:23" color="#38d3d3">}}




{{<matomeQuote body="私も全く別のジムチェーンだけど、同じドアシステム使ってるところで同じPINを受け取ったことあるよ。あんたが言う通り、エントロピー源が少ないっていう大きなレッドフラグだよね。" userName="yodelshady" createdAt="2025/08/16 08:47:41" color="#ff5733">}}




{{<matomeQuote body="一番心配なのは、もしACSが新しいPINを発行できないと交換できないってこと。もしPINが1つでも漏れたら、システム総入れ替えまで誰でも入り放題じゃん。PINリスト全体が漏れたら、もう終わりだよ。" userName="pyman" createdAt="2025/08/17 11:03:24" color="#45d325">}}




{{<matomeQuote body="それか、単に以前解約したアカウントを再有効化したら、まだPINが紐づいてたってことかもね。" userName="thefreeman" createdAt="2025/08/16 14:55:32" color="#ff5c5c">}}




{{<matomeQuote body="PureGymってアメリカのどこにあるの？UKにしか見当たらないんだけど。" userName="firesteelrain" createdAt="2025/08/16 17:15:45" color="">}}




{{<matomeQuote body="https://www.purefitness.com/" userName="pyman" createdAt="2025/08/16 20:03:49" color="">}}




{{<matomeQuote body="PureFitnessってPureGymと同じなの？正直わかんない。" userName="firesteelrain" createdAt="2025/08/16 20:41:59" color="">}}




{{<matomeQuote body="PureGymで”USA”をクリックするとPureFitnessに飛ぶよ。昔はそうじゃなかったのかもしれないけど。" userName="qingcharles" createdAt="2025/08/17 00:19:44" color="#ff5c5c">}}




{{<matomeQuote body="iOS版PureGymアプリのお気に入り（意味不明な）機能は、開くと聞いてるオーディオが止まるところだよ。まるで別のオーディオアプリを開いたみたいにね。でも音は一切鳴ってないんだ。マジおかしい。" userName="Roonerelli" createdAt="2025/08/16 09:08:14" color="">}}




{{<matomeQuote body="アプリが他のオーディオを止めるの、2つの可能性が考えられるね。一つはアプリが排他的オーディオコンテキストを要求してる場合。もう一つは、スクリーンショット防止技術で使われる動画がオーディオを乗っ取ってるのかも。" userName="urbandw311er" createdAt="2025/08/16 09:59:48" color="#ff33a1">}}




{{<matomeQuote body="AndroidのSubwayアプリでもこれあったな。たぶん動画のせいだと思うけど、セキュリティ目的じゃなくて、ただの派手なスプラッシュスクリーンアニメーションが、音なし設定を忘れてただけなんじゃないかな。" userName="figgyc" createdAt="2025/08/16 12:22:20" color="#ff5733">}}




{{<matomeQuote body="安っぽいアプリの共通点だよね。理由不明なバグだらけで、全然直そうとしないんだ。うちの銀行アプリも連絡先にアクセス許可しないと送金できないバグがあるし、こういうのがひどいアプリの見分け方だよね。" userName="bapak" createdAt="2025/08/16 11:57:23" color="#ff5733">}}




{{<matomeQuote body="Appleもこの問題、直さないんだよね。アプリがPodcastを何度も止めるのに、止められないのは困る。AirPods使ってないとアプリを開いたまま自分のオーディオを再開するのも無理だし、なんとかしてほしいよ。" userName="hombre_fatal" createdAt="2025/08/16 14:51:10" color="">}}




{{<matomeQuote body="オーディオアプリって、バックグラウンドで動くための権限がもっと大きいんだよね？それと関係あるんじゃないかなって、ちょっと思った。" userName="burnerthrow008" createdAt="2025/08/16 09:39:07" color="">}}




{{<matomeQuote body="AndroidのTechnogymアプリも同じだよ。新しいフィットネス機器に接続するたびにオーディオが止まるんだ。本当にイライラする！" userName="mattuk89" createdAt="2025/08/16 23:42:58" color="">}}




{{<matomeQuote body="「英国の天気とプロテインシェイクまみれのキーパッドは古いPINでOKなのに、デジタルQRコードはNSAがうらやむような暗号が必要」って記述、すごくいい文章だね！" userName="JSR_FDED" createdAt="2025/08/16 04:53:42" color="">}}




{{<matomeQuote body="この記事、LLMが書いたみたいに読める人いる？別に悪いことじゃないけど、ちょっと頑張りすぎてる感じがするんだよね。" userName="isubkhankulov" createdAt="2025/08/17 06:38:10" color="">}}




{{<matomeQuote body="写真のフィルターが受け入れられるのに何年もかかったみたいに、テキストも同じようになると思う。この記事は、LLMで編集されてようがそうでなかろうが、素晴らしいブログ記事だよ。" userName="pyman" createdAt="2025/08/17 12:24:01" color="">}}




{{<matomeQuote body="「Apple Walletを実装しない理由」だって？スクリーンショット見る限り、モバイル向けウェブサイトのラッパーかFlutterみたいな感じだから、AppleのAPIに詳しい開発者は社内にいないんじゃないかな。" userName="frankus" createdAt="2025/08/15 22:39:04" color="#38d3d3">}}




{{<matomeQuote body="GoogleとかStack Overflow、LLMとかあるのに、なんで企業は学べねーんだろ？UXなんて誰も気にしてないんだよ。前の開発チームはもういないし、残ってるのは一番安上がりなエンジニアだけってのが俺の皮肉な見方だね。" userName="cedws" createdAt="2025/08/16 02:02:15" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="フィットネス業界で働いてた時、通知機能の話になったんだけどさ。8つも部署があってさ、結局「ジムの清潔度を尋ねる通知」がいいってなったんだよ。「安全だから」ってアホか。委員会は技術わかんないし、政治的だし、会員を怖がらせるのをめちゃくちゃ恐れてるんだよな。" userName="withinboredom" createdAt="2025/08/16 09:32:27" color="#ff5c5c">}}




{{<matomeQuote body="「通知は必要」って懸念は合ってたのに、結局バカみたいな通知にしたってのがスゲーな。天気を聞く通知とかと一緒じゃん。だから俺はジムアプリは絶対使わねえって言ったんだよ。通知の明確な必要性がないなら、なんでそんなもん追加すんだ？" userName="ndriscoll" createdAt="2025/08/16 11:53:25" color="">}}




{{<matomeQuote body="元々はクラスのキャンセルとか変更の通知を考えてたんだけどさ、彼らは「キャンセルになったクラスでも、人がジムに来てくれる方が、全然来ないよりマシ」って考えたんだよ。" userName="withinboredom" createdAt="2025/08/16 11:56:33" color="">}}




{{<matomeQuote body="専門外のエンジニアが仕事しながら学ぶってやり方だと、マジで変なコードとひどいユーザーエクスペリエンスになるんだよ。俺も何回か経験あるけど、長期的に見ると最悪。最初に書いたコードがすぐレガシーになっちまって、それがずっと残るんだからな。" userName="spcebar" createdAt="2025/08/16 15:39:03" color="#ff5733">}}




{{<matomeQuote body="「彼ら」って誰のこと？ほとんどの会社はプログラマーなんて雇ってないよ。アプリは安いコンサルタントに外注されてるんだから。" userName="troupo" createdAt="2025/08/16 06:58:32" color="">}}




{{<matomeQuote body="ジムアプリなんて、記事にもあるようにそんなに変える必要ねーだろ。UXも実際「まあまあ」だし、モバイルサイトのラッパーだけど十分使えてるよ。" userName="extraisland" createdAt="2025/08/16 02:45:00" color="">}}




{{<matomeQuote body="PureGym使ってたけど、著者が言うようにアプリは最悪だよ。電波良くても30秒以上「ウォームアップ」とか意味不明。俺は今すぐQRコードが欲しいのに、ジムの外でアホみたいに待たされるんだから。" userName="cedws" createdAt="2025/08/16 03:09:38" color="#38d3d3">}}




{{<matomeQuote body="多分、彼らは気にしてないよ。「アプリがある」ってことが大事なんだろ。開発は1人か2人で、フルタイムじゃない奴がやってて、ユーザーが欲しいものより、次のプロモーションの機能作るのに時間使ってるんだ。" userName="MBCook" createdAt="2025/08/16 04:04:47" color="">}}




{{<matomeQuote body="アプリ開発は外部のスタジオがやってるんだろうな。ジムが自社でアプリ開発者を雇うことはほとんどないし。開発会社は金稼ぎと、クライアントを満足させることだけが大事なんだよ。アプリのユーザーは彼らの顧客じゃないし、せいぜい二の次だよ。" userName="stefs" createdAt="2025/08/16 16:51:20" color="#45d325">}}




{{<matomeQuote body="俺はもっとアプリ全体のデザインについて話してたんだけどね。まあ「普通」って感じかな。俺の住んでるところは北西部の田舎で電波がマジで悪くてさ。ジムの近くはほぼ圏外だったし、QRコードをスキャンしても全然認識されなくて、結局いつも8桁のコードを使ってたんだよ。iPhoneアプリでの話だけどね。<br>結局、歩いたり自転車に乗る方が好きだから解約しちゃったんだけど、今年の初めまでは使ってたよ。PureGymは安いし、設備もそこそこ良くて清潔（少なくとも俺が行ってたところはね）だから、アプリがちょっとクソなのは別にどうでもいい問題だったかな。" userName="extraisland" createdAt="2025/08/16 04:05:38" color="">}}




{{<matomeQuote body="まさにそれだよ！ジムアプリで一番大事なのは、ジムに入れることだろ！" userName="vendiddy" createdAt="2025/08/16 06:49:14" color="">}}




{{<matomeQuote body="アプリはPureGymのコアビジネスじゃないんだよ。俺ならアプリのUX改善に20万ポンド使うより、ジムにスクワットラックを増やすのに使ってほしいね。8桁の入館コードを覚えちゃえば、アプリなんて開かなくて済むし。" userName="OtherShrezzing" createdAt="2025/08/16 09:35:33" color="#45d325">}}




{{<matomeQuote body="OPはたった週末だけで、アプリの使い勝手を「ちょっとイライラする」状態から「めちゃくちゃ便利」に変えたんだろ。顧客体験を改善するために必要な予算はほぼゼロなのに、PureGymの誰も体験が本当に良くないって評価してないんだろうな。彼らにはそうする経験や専門知識がないんだと思うよ。" userName="jonathanlydall" createdAt="2025/08/16 10:44:16" color="#ff5733">}}




{{<matomeQuote body="たぶんインドかどっかの安い労働力を使ってるんだろ。一番安い入札額で契約が決まったんだろうな。" userName="sammy2255" createdAt="2025/08/16 03:35:42" color="">}}




{{<matomeQuote body="これだよな。有名なジムチェーンのコアビジネスは会員獲得と解約を難しくすることであって、開発じゃない。運が良ければ、数人の自社ウェブ開発者がウェブサイトとデータベースのメンテをしてて、アプリは業者に「アプリっぽく動くように作ってくれ」って頼んでる感じだろう。運が悪ければ、全部ウェブ運用を外部委託してて、H2をH3に変えたいって言うだけでも毎回金を巻き上げられてるんだよ。" userName="toyg" createdAt="2025/08/16 08:11:37" color="#ff5c5c">}}




{{<matomeQuote body="それが全部の問題だろ？自動車会社のコアビジネスはソフトウェアじゃないけど、ソフトウェア会社に叩きのめされてるじゃん。ソフトウェア会社に潰されるまでは、お前はソフトウェア会社じゃないんだよ。" userName="bapak" createdAt="2025/08/16 12:00:09" color="#ff5733">}}




{{<matomeQuote body="PureGymはどうやったらもっと解約しやすくなるんだ？俺、数ヶ月前にアプリで解約できた気がするんだけどな。" userName="aembleton" createdAt="2025/08/16 11:32:46" color="">}}




{{<matomeQuote body="Apple Walletに対応させたら、Android Walletも対応させなきゃいけないし、そうすると保守するコードが増えるじゃん。でも、自社アプリを起動した時に常にQRコードを表示するようにできるだろ。" userName="pastorhudson" createdAt="2025/08/16 00:13:37" color="#ff5733">}}




{{<matomeQuote body="俺もPureGymのアプリ使ってるけど、前はPINコード使ってたんだよな。アプリってさ、ウェブサイトのラッパーみたいに見えるんだよね。" userName="extraisland" createdAt="2025/08/16 02:20:20" color="">}}




{{<matomeQuote body="良い記事だったよ！俺もオランダのTrainMoreで似たような経験をしたんだ。NFCキーフォブが30秒ごとに変わるQRコードに置き換えられたんだよね。俺はWallet連携を使わないから、ネイティブアプリは作らなかったな。<br>これについてはここで書いたよ: https://blog.davidv.dev/posts/trainmore-re/" userName="deivid" createdAt="2025/08/16 09:47:16" color="#38d3d3">}}




{{<matomeQuote body="”もしその機能を開発したら、我々がそれを所有しなきゃいけなくなる。””その通りだ、2028年のロードマップに載せておこう。”<br>これが少なくとも、俺がTech業界で経験することかな。" userName="sb8244" createdAt="2025/08/15 22:36:44" color="">}}




{{<matomeQuote body="部門会議でロードマップや計画を話し合うときの経験だと、”それは俺たちに金をもたらすのか？だって、やることにはコストがかかるんだぞ。”って感じなんだよ（やることリストと欲しいものリストはホントに長いしね）。<br>PureGymが今できるベストなこと？そのアプリ作った奴に数千ドル払って、一生涯のメンバーシップを与えればいいんだよ。" userName="subscribed" createdAt="2025/08/16 02:41:29" color="#785bff">}}




{{<matomeQuote body="”とっておきの情報？8桁のジムのドアのPINコードがAPIパスワードで、多分自分で設定してないってこと。”<br>失敗回数にレート制限があるといいんだけどな。誰かのEメールアドレスを知っていたら、すぐにAPIアクセスできちゃうってこと？あと、要求できるスコープが適切に制限されていることを信じてるよ？" userName="eterm" createdAt="2025/08/15 23:36:28" color="#ff5733">}}




{{<matomeQuote body="もっとすごいのは、コードが予測可能で、間違った試行をしてもジムのドアにロックアウト機能がないってことだな。俺が登録した時は、コードの形式が「アカウント作成時の分][2桁の乱数][誕生日の日（または月）][誕生年」だったんだ。例えば、＜59341295＞は59分に登録して誕生日が1995年12月の人ってこと。もし誰かの誕生月を知ってたら、6000通りのコードをループで試せばアクセスコードがわかるんだぜ。俺のジムだと、PTコーチがクライアントの誕生日を大声で祝ったりしてたし、乱数がジムでの登録ごとに増えるただの整数だったとしても驚かないね。" userName="OtherShrezzing" createdAt="2025/08/16 09:13:48" color="#38d3d3">}}




{{<matomeQuote body="OPだよ！<br>＞その後すぐにAPIアクセスできるってこと？<br>そう、その通り。まだレート制限には当たってないけど、公式アプリやウェブサイトの経験からすると、失敗した試行にはかなり寛容なんだ。<br>記事中のスコープは公式アプリやGitHubの他の非公式クライアント[1][2]が使ってるものだから、それ以上の選択肢は疑わしいね。<br>[1] https://github.com/0wain/puregym-api-php-wrapper/blob/main/s...<br>[2] https://github.com/2t6h/puregym-attendance/blob/main/puregym..." userName="valzevul" createdAt="2025/08/16 06:15:04" color="#785bff">}}




{{<matomeQuote body="＞彼らに作ってくれと頼まれた回数: 23<br>＞著作権法を説明しなければならなかった回数: 23<br>Apple WalletにQRコードを入れるアプリを共有することが、なんで著作権法を侵害するのか、俺にははっきりしないんだよね。これって、アプリやその著作物コンテンツを再配布する必要はないはずだし。「不正な」API使用は利用規約違反かもしれないけど、それは違法じゃないでしょ。" userName="NoahZuniga" createdAt="2025/08/16 15:23:34" color="">}}




{{<matomeQuote body="アメリカならそうじゃないだろうけど、これはイギリスの話だろ。イギリスは、何が著作権の対象で何がそうじゃないかについて、アメリカと同じ見解を持ってないんだよ。（漠然とした意見に反して、アメリカはイギリスやEUよりも「いや、そんなことは止められない」って言うのが得意なんだ。）" userName="cxr" createdAt="2025/08/16 19:20:19" color="#ff5733">}}




{{<matomeQuote body="アメリカだと、Computer Fraud and Abuse Actがコンピュータシステムへの不正アクセスを違法にしてるんだ。「不正」ってのは、利用規約違反を含むって解釈されることもあるんだよ。だから、誰も読まないクリック同意契約で、公式アプリだけがサービスへのアクセスを許可されてるって書いてあったら、サードパーティのアプリを使ってアクセスするのは犯罪になる可能性もあるってことだね。" userName="wat10000" createdAt="2025/08/16 19:36:01" color="#45d325">}}




{{<matomeQuote body="これ、イギリスの話だよ。" userName="jt2190" createdAt="2025/08/16 22:18:42" color="">}}




{{<matomeQuote body="下のコメントでも似たこと書いたけど、PureGymアプリでAPI使うのがOKなら、なんで俺が同じAPIをサードパーティ製アプリで使っちゃダメなの？ もしアプリが8桁のPINをローカル保存するだけなら、何が問題なの？" userName="jt2190" createdAt="2025/08/16 15:35:17" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="OPだよ。‟著作権法”は適当な略称だったけど、‟不法行為法”よりはマシかな。PureGymの利用規約（T&Cs）には、PINを友達と共有するのを防ぐためのバカ長い‟PIN乱用ポリシー”があるんだ。PINを‟意図的に他人に提供”したら、会員資格取り消しや利用料の遡及請求だって。サードパーティアプリにPIN入力するのが‟意図的な提供”に当たるか、俺は弁護士じゃないからテストケースにはなりたくない。たぶんアカウントを大量にBANするだろうね。<br>でも今考えたら、スクワットラックはいつも混んでるから、同じ時間に行く人にアプリを配るのもアリかもね。<br>[1] https://www.puregym.com/membership-terms-conditions/" userName="valzevul" createdAt="2025/08/16 15:54:44" color="#ff33a1">}}




{{<matomeQuote body="＞サードパーティのサイトやアプリにPINを入力するのが‟意図的な提供”に当たるか、俺は弁護士じゃないからテストケースにはなりたくない。君のiOSアプリはPINをデバイスに保存し、共有しないように設計するだろうね。それで基本認証はできるはず。それでも‟サードパーティとの共有”と見なされる可能性はあるけど、(a)彼らはなかなか気づかないだろうし、(b)普通はC&D（中止・停止）命令から始めるだろう。莫大な弁護士費用をかけてすぐに訴訟を起こすなんて、よほど金持ちで何か得るものがないとしないよ。" userName="jt2190" createdAt="2025/08/16 16:02:54" color="#ff5733">}}




{{<matomeQuote body="こう考えてみて。店で現金払いをしたら、店員がお釣りくれるのはOKだよね。でも、自分でレジ開けて金を取ったら、警察呼ばれるよ。つまり、‟できる”ってことと、‟やっていい”ってことは違うんだ。" userName="AlienRobot" createdAt="2025/08/16 17:45:29" color="#45d325">}}




{{<matomeQuote body="えっと、レジから何も盗まず、店員を襲わない限りは違法行為じゃないよ（警察呼ばれてもね）。君の例えは失敗だね。" userName="NoahZuniga" createdAt="2025/08/16 18:39:26" color="">}}




{{<matomeQuote body="セキュリティシアターの話ね。俺のゴミ会社は、ログインして請求書を払うためだけに、メールとパスワードだけじゃなくてセキュリティの質問まで要求してくるんだ。たとえば‟好きな本”とか。しかも大文字小文字の区別ありでさ。誰かが、俺のパスワードを盗んで請求書を払うのを防ぐために、こんなの書いたんだろうな。" userName="x0x0" createdAt="2025/08/15 22:52:55" color="#785bff">}}




{{<matomeQuote body="昔はどの会社も、明日にはFacebookみたいにユーザーが百万人に増えると思って、複雑で超スケーラブルなアーキテクチャを築こうとしてたよね。でも今はみんなExperianみたいに、明日には百万人のハッカーに個人情報を盗まれるって思ってる。" userName="jerlam" createdAt="2025/08/15 23:16:38" color="#38d3d3">}}




{{<matomeQuote body="＞今はみんなExperianみたいに、明日には百万人のハッカーに個人情報を盗まれるって思ってる。でも、これは実際に今の話だよ…大きなデータ漏洩を聞かない週なんてない。数ヶ月前、俺の会社もハッキングされたんだ。CEOがGod-tierのグローバル管理者権限のOIDC/SSOログインに2FAを有効にしてなくて、誰かが社内ログインページを見つけて侵入、Twilioのアカウントキーを見つけてスパマーに売っぱらったんだ。そいつは顧客にスパムSMSを送った（幸い変更不能なアクセスログはそれ以上の侵入がないことを示してたけどね）。こんなつまらないSaaSの仕事でもこんなことが起きるんだから、普通のHNユーザーである俺に起こるなら、誰にでも起こるよ。昔のオフィスの近くの病院にだってね。<br>結論：俺たちは終わってる。<br>[1] https://therecord.media/seattle-fred-hutch-cancer-center-ran..." userName="DaiPlusPlus" createdAt="2025/08/15 23:58:57" color="#ff5733">}}




{{<matomeQuote body="実際のところ、俺が行ったほとんどのジムは、アカウント番号付きのキーホルダー型バーコードをくれるだけで、それで問題なく使えるんだ。スキャンすれば会員かどうかが確認されて、受付のPCに顔写真が表示されるくらい。複雑な暗号なんていらない。ジムがアプリ必須なんて、俺は絶対無理だな。特に技術者がなんでそんなの我慢できるのか、理解できないよ。" userName="ndriscoll" createdAt="2025/08/16 00:20:16" color="#ff5c5c">}}




{{<matomeQuote body="なぜ技術者でもあんなアプリに我慢するのかって？<br>それはね、他のジムへのアクセスがめっちゃ大変で、ただでさえ行くモチベーション保つの難しいからなんだ。俺の選択肢は「クソみたいなアプリ」か「ジムに行かない」しかない。全てが技術的に完璧なわけじゃないし、開発者やプロダクトマネージャーのバカげた判断に付き合うしかない時だってあるんだよ。" userName="kassner" createdAt="2025/08/17 08:38:24" color="#ff5733">}}




{{<matomeQuote body="それからね、こういう会社ってセキュリティもスケーリングと同じくらいひどいんだよ。Experianの件みたいに、サーバーが破られたのにユーザーのアカウントが盗まれたって勘違いしてる。組織的にすら理解できてないんだ。ユーザーに過剰な”セキュリティ”コントロールを押し付けるのは、規制すべきだよね。マジで情けない。" userName="throw10920" createdAt="2025/08/16 03:44:39" color="#785bff">}}




{{<matomeQuote body="「ゴミ企業がメールとパス、さらに秘密の質問まで要求するなんて」って言うけど、むしろ感謝すべきでしょ。だって俺、ゴミのパスワードと、Bitcoinウォレットや証券口座、不倫相手探しアプリのパスワード、全部同じにしてるんだからさ。" userName="m463" createdAt="2025/08/16 01:54:57" color="#ff5733">}}




{{<matomeQuote body="うちの電力会社、前は請求額をメールに書いてくれてたのに、アプリ作ってメールからは金額消しやがった！アプリ開いて金額見ろってことだろ。イラつくから、アプリでの支払い機能は無視して、ずっと使ってる銀行アプリで払い続けてるんだ。ほんと、バカバカしいよ。" userName="noisy_boy" createdAt="2025/08/16 04:01:08" color="#ff33a1">}}




{{<matomeQuote body="企業が毎回認証を求めるのは、デバイスIDやCookieを顧客記録と照合するためだよ。Cookieってすぐ期限切れるから、毎月やらせたがるんだよね。<br>もっと詳しく知りたければ、このブログを読んでみて。https://hightouch.com/blog/what-is-identity-resolution" userName="t0mas88" createdAt="2025/08/16 07:54:45" color="#38d3d3">}}




{{<matomeQuote body="うちのスーパーの食料品配送、メール2FAが毎回強制されるんだ。だから妻と俺のどっちかが買い物する時、必ずアカウントの持ち主が横にいて二次コードを確認しなきゃいけない。もう、そのメールを自分に自動転送するように設定しちゃおうかな…っていつも思ってる。" userName="maccard" createdAt="2025/08/16 10:35:31" color="#38d3d3">}}




{{<matomeQuote body="最近、Russianハッカーが他人のゴミの請求書を払うのが流行ってるらしいぞ。だから会社がそれを止めるために好きな本を聞いてくるのは正しいんだよ、「ホビット」じゃなくて「hobbit」がね、ハハ。" userName="stavros" createdAt="2025/08/16 07:44:45" color="">}}




{{<matomeQuote body="きっとパスワードも6ヶ月ごとに期限切れになるんだろうな。" userName="bapak" createdAt="2025/08/16 12:04:04" color="">}}




{{<matomeQuote body="投稿者の文章、AIで調整したの？「2000年にダイヤルアップでJPEGダウンロードしてるみたい」とか、やたら気の利いた比喩表現が多いし。AIレーダーが反応しちゃったんだけど、こういう書き方って自然なのかな？俺はブログとか書いてないから、こんな凝った書き方はしないけどさ。" userName="GolDDranks" createdAt="2025/08/16 16:06:01" color="#ff5733">}}




{{<matomeQuote body="俺も同じように、テキストに奇妙な不気味の谷感があったよ。でも記事はすごく良かった。文章スキルが低い人がAIを使って書くのは全然アリだと思うし、むしろそうすべきだ。書くのが嫌とか苦手ってだけで、せっかくの素晴らしいプロジェクトが世に出ないのはもったいないからね。" userName="qingcharles" createdAt="2025/08/17 00:30:38" color="#ff5c5c">}}




{{<matomeQuote body="俺も同じ気持ちだったから、一人じゃないってわかって嬉しいぜ！" userName="GolDDranks" createdAt="2025/08/17 20:24:06" color="">}}




{{<matomeQuote body="このコメント探してたんだよね。記事自体はすごく良かったよ！" userName="bstsb" createdAt="2025/08/16 21:29:13" color="">}}




{{<matomeQuote body="あんたのコメント、AIで手直しした？HNのコメントにしてはかしこまりすぎだし、変な言葉使ってるし、それがLLM以前からの常套句って知らないだろ？AIレーダー壊れてるから直せって！" userName="CrispinS" createdAt="2025/08/16 17:21:00" color="">}}




{{<matomeQuote body="へぇ、そうなのか。なんか妙な気分なんだよ。俺が単に被害妄想なだけかもな。でも、あのgreentextsって結局AIが作ったんかね？中身は偽物っぽいけど。" userName="GolDDranks" createdAt="2025/08/16 19:04:44" color="">}}




{{<matomeQuote body="実のところ、PureGymがApple Walletを導入しないのは、ちゃんとした理由があるはず。優先順位が低いとか、利用者が0.3%しかいないってデータがあるとかね。あと、アプリのエンゲージメントが誰かのボーナスに繋がってるから、毎回オンラインクラス見せてるのかもよ。" userName="kentbrew" createdAt="2025/08/16 19:02:27" color="#ff5733">}}




{{<matomeQuote body="Apple Wallet対応って、ちゃんとやると数週間かかる大仕事なんだ。QRコードの生成とか、新サービスの監視、ダッシュボード作成とか色々。チームで設計レビューして、ドキュメントも必要だ。証明書管理も長期的な視点で見なきゃいけないし、iOSとAndroidの機能差も埋めなきゃダメ。それに、アプリの利用頻度が減るから、それが誰かのボーナスに響くってのもあるだろうな。" userName="rblatz" createdAt="2025/08/16 19:14:55" color="#ff33a1">}}




{{<matomeQuote body="元の開発者が抱える問題点は、QRコードを毎分全ユーザー分作ること。でも、QRコードの有効期限を1週間に延ばせば解決するよ。オンライン認証を使えば、負荷調整のためにQRコードを動的に変えられるし、一時的にオフラインになっても大丈夫。あと、8桁のPINコードみたいに、変わらない固定のQRコードにすればもっと楽だぜ。" userName="crote" createdAt="2025/08/16 20:37:28" color="#38d3d3">}}




{{<matomeQuote body="俺、いつも物理PINコードでジム入ってるんだよね。アプリの読み込みが安定しないの、なんか信用できなくて。今回の話で、俺の考えが正しかったって再認識できたよ！" userName="poisonwomb" createdAt="2025/08/15 22:42:22" color="">}}




{{<matomeQuote body="PINもアプリもダメなアイデアに感じるな。俺のジムはNFCリストバンドを使ってるんだ。改札だけじゃなくてロッカーもこれで開くんだぜ。" userName="grishka" createdAt="2025/08/16 03:04:47" color="#45d325">}}




{{<matomeQuote body="実はこれ、キーフォブとしても使えるんだけど、ジムの自販機で買わなきゃいけないんだ。PINを覚える方が簡単だぜ。" userName="account-5" createdAt="2025/08/16 22:13:47" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
