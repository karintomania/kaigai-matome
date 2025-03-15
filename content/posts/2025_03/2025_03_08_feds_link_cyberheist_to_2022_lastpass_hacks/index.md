+++
date = '2025-03-08T00:00:00'
months = '2025/03'
draft = false
title = '2022年のLastPassハッキングとサイバー強盗の関連が明らかに！'
tags = ["セキュリティ", "LastPass", "ハッキング", "パスワード管理", "サイバー攻撃"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> 2022年のLastPassハッキングとサイバー強盗の関連が明らかに！

引用元：[https://news.ycombinator.com/item?id=43296656](https://news.ycombinator.com/item?id=43296656)

{{<matomeQuote body="1Passwordは、全てのボールトを高いエントロピーの秘密鍵で暗号化する選択肢がマジで評価されてないよね。UXやサポートの負担はかかるけど、これがあればこんな breach はほぼ無意味になる。" userName="FiloSottile" createdAt="2025-03-08T01:52:37" color="#45d325">}}

{{<matomeQuote body="Bitwardenは完全にオープンソースで、サーバーコードの独立した実装(Vaultwarden)があることがもっと評価されるべきだよね。デスクの下のサーバーで動かせるのは便利。50年後、どの会社が残ってるか分からないけど、孫が私のパスワードを含むgpg暗号化されたgzippedファイルを開けるようにするつもり。" userName="aryonoco" createdAt="2025-03-08T02:08:17" color="#ff5733">}}

{{<matomeQuote body="50年後にデジタル考古学をやるなんて面白そうだよね。今はデジタルで多くのアウトプットが保存されてるけど、今までの経験から、仕事や楽しみで作るものはほぼ儚いと思ってる。" userName="ehnto" createdAt="2025-03-08T09:47:51" color="#785bff">}}

{{<matomeQuote body="今のファイルフォーマットのいくつかは長持ちすると思うな。PDFやzip、jpegなどは100年後も普通に開けると思うよ。" userName="fauigerzigerk" createdAt="2025-03-08T10:26:32" color="">}}

{{<matomeQuote body="ファイルはまだ残ってると思う？長い目で見れば、紙よりも人に焦点を当てたシステムになる気がする。" userName="317070" createdAt="2025-03-08T11:13:52" color="">}}

{{<matomeQuote body="＞ Bitwardenは完全にオープンソースで評価されるべきだよね。<br>それが彼らの一番の売りポイントだよ。<br> > 50年後に残るかは分からないけど、1Passwordはローカルクライアントがあるから、パスワードがあればローカルでボールトを開けられるよ。" userName="JumpCrisscross" createdAt="2025-03-08T04:01:52" color="#45d325">}}

{{<matomeQuote body="これをどうやってやるの？airgappedのLinuxマシンに「1password-cli」をインストールしたけど、’op vault list’を実行すると、アカウントを追加しろって言われる。’op account add’ではネットに接続しないとダメで、進めない。ローカルクライアントが機能しないのはどういうこと？" userName="TheDong" createdAt="2025-03-08T04:44:01" color="">}}

{{<matomeQuote body="一度認証すればいいよ。そうすればローカルにボールトを取得して、インターネットなしでアクセスできるから。" userName="mercurial" createdAt="2025-03-08T06:27:27" color="#ff5c5c">}}

{{<matomeQuote body="「ローカルにボールトを取得する」とはどういう意味？ファイルをエクスポートして、USBキーやCD-ROM、未来のisolinerチップに保存して、新しく作ったPCでインターネットに接続せずにスタンドアロンのビューワーで開くことは可能？" userName="rkagerer" createdAt="2025-03-08T07:57:41" color="">}}

{{<matomeQuote body="1Passwordは昔はそうやって動いてたんだ。今はどれだけ残ってるか分からないけど、元々はリモートコンポーネントがないアプリだった。ボールトは自分で管理するもので、ほとんどの人はDropboxに置いてどこでもアクセスできるようにしてた。ボールトには暗号化された秘密を読むためのhtmlファイルも入ってた。" userName="aidos" createdAt="2025-03-08T08:17:37" color="">}}

{{<matomeQuote body="自分の解決策を試してみて！ほんとにローカルファーストでオフラインでも大丈夫だし、セルフホスティングも可能だよ。オープンソースだし、APIのドキュメントも整ってるよ。" userName="tmpfs" createdAt="2025-03-08T11:20:19" color="#ff5733">}}

{{<matomeQuote body="50年後に誰かがこれをできる可能性はほぼゼロじゃない？パスワードやSSHキーはただの平文だし、特別なSDKやCLIが必要なのが良いアーキテクチャだとは思えないよ。" userName="aryonoco" createdAt="2025-03-08T11:52:21" color="">}}

{{<matomeQuote body="重要な暗号データの長期保存についてだけど、50年後に1Passwordが無くなった場合、孫たちがローカルの1Passwordを使ってデータを復号できる可能性はどう思う？gpgは残ってるだろうし、gzippedやCSVファイルは開けるだろうけど。" userName="aryonoco" createdAt="2025-03-08T12:01:12" color="">}}

{{<matomeQuote body="＞でも、孫たちがgpgで暗号化されたgzippedファイルを開けると思う。あなたは、孫が技術に詳しい前提？99%の人は「gpg」で止まると思うけど、今だけじゃなくて60年後にも。" userName="serf" createdAt="2025-03-08T02:10:37" color="">}}

{{<matomeQuote body="自分の家族の中で「Netflixのパスワードはこれ、gpgで復号すればいいよ」って言ったら、誰が「じゃあ`man gpg`読むよ」ってなると思う？" userName="OJFord" createdAt="2025-03-08T06:08:22" color="">}}

{{<matomeQuote body="多分、ゼロだね。非SWEの人たちにとってgpgって使いにくいんだから。" userName="tex0" createdAt="2025-03-08T06:49:43" color="">}}

{{<matomeQuote body="AIに聞けばどうにかなるって思わない？今のLLMでも手順を教えてくれるよ。" userName="darkwater" createdAt="2025-03-08T09:36:13" color="">}}

{{<matomeQuote body="もし大金がかかってたら、みんな結構リソースフルになるんじゃない？Netflixのパスワードじゃなくてさ、証券会社や銀行のアカウントの情報の話だから。" userName="stockboss" createdAt="2025-03-08T09:31:22" color="">}}

{{<matomeQuote body="彼らはAIに復号してもらうだろうし、gpgを使う必要はないよ。" userName="harikb" createdAt="2025-03-08T04:15:32" color="">}}

{{<matomeQuote body="AIにセキュリティアドバイスを求めるなって。家族や友達に”AIに聞いてみて”って言うのは、彼らが重要な情報を失ったり盗まれたりする危険があるから、ちゃんと理解させる必要があるよ。" userName="soraminazuki" createdAt="2025-03-08T09:39:51" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="「Hey llm、どうやってこのファイルを開くの？」って考えるのはナンセンスだよ。そんな簡単なことをできなくなるとは思えない。" userName="wraptile" createdAt="2025-03-08T04:39:29" color="">}}

{{<matomeQuote body="マジで、簡単にtarコマンドを探せた日々が懐かしい。これからはllmに聞くことになるのかな。" userName="er4hn" createdAt="2025-03-08T05:27:42" color="">}}

{{<matomeQuote body="＞「99％の人は’gpg’で立ち止まると思う」<br>gpgを馬鹿にしないで。25年間使ってるけど、ちゃんと暗号化も復号化もできる。新しい工具も確かに安全だけど、使い勝手が良いとは限らない。長く使えるものの重要性を理解してほしい。" userName="jwr" createdAt="2025-03-08T04:03:40" color="#ff33a1">}}

{{<matomeQuote body="でも子供たちはgpgやpgpのことを理解できるかどうか怪しいな。テクニカルな知識が身につかないかも。" userName="tharkun__" createdAt="2025-03-08T04:11:57" color="">}}

{{<matomeQuote body="bitwardenのクライアントがオフラインで使えないのは残念だな。すぐに1Passwordから乗り換えたいのに。" userName="nicolas_t" createdAt="2025-03-08T02:12:33" color="#45d325">}}

{{<matomeQuote body="KeePassをsyncthingのフォルダに入れて、開いたら自動で同期する仕組み使ってる。デスクトップアプリが一時ファイルコピーで開ければ、もっと簡単にできるかも。" userName="XorNot" createdAt="2025-03-08T02:14:42" color="">}}

{{<matomeQuote body="bitwardenの独自性はオープンソースで自己ホスティングできることだけなのかな？他のサービスも見てるけど、1Passwordから乗り換える理由がまだ見つからない。" userName="notesinthefield" createdAt="2025-03-08T03:27:29" color="">}}

{{<matomeQuote body="それに、機能や仕上がりの面でもLastPassよりも優れてるよ。1Passwordは使ったことないけど、BitWardenをLastPassよりおすすめする。" userName="MyOutfitIsVague" createdAt="2025-03-08T04:01:15" color="#ff5733">}}

{{<matomeQuote body="それだけじゃなくて、安いし全プラットフォームで動作も良いよ。" userName="behringer" createdAt="2025-03-08T03:45:23" color="#38d3d3">}}

{{<matomeQuote body="OPじゃないけどUXって超大事だよね。オープンソースで自ホストできる選択肢がほしいけど、過去にBitwardenを評価した時は1Passwordに比べて大幅に劣ってて切り替える気になれなかった。もし体験がもっとシームレスになったら乗り換えるつもり。" userName="haswell" createdAt="2025-03-08T04:00:07" color="#ff33a1">}}

{{<matomeQuote body="これな。1Passwordは洗練されてて使いやすい。Bitwardenも機能面では1Pに劣らないけど、なんか動作がぎこちない。" userName="eknkc" createdAt="2025-03-08T05:57:42" color="#ff33a1">}}

{{<matomeQuote body="1Passwordのファミリー共有やCLIも使いやすい。たまにBitwardenを見るけど、UI的にはいつも1Pほど洗練されてない。1PがElectronに移行したことへの不満もあったけど、UXはやっぱり最強だよね。" userName="matwood" createdAt="2025-03-08T06:57:13" color="#ff5c5c">}}

{{<matomeQuote body="＞ファミリー共有<br>なんでこんな機能を作るのか分からん。AmazonやSteamもファミリーフィーチャーを強制するけど、ユーザーやその家族の実際の使い方に合ってなくて、何かと限定的に感じる。実際、SteamやAmazonの“ファミリー共有”に家族がいる人ってどれくらい？" userName="TeMPOraL" createdAt="2025-03-08T11:26:16" color="">}}

{{<matomeQuote body="私はAmazonやSteam使ったことないから、どういう風になるのか分からないけど、パスワード管理ではファミリー共有がすごく便利。Bitwardenには“組織”って機能があって、無限に作れるし、ユーザーを招待して参加させることができる。例えば、妻と一緒にスーパーのアカウントで買い物できたり、電力会社のウェブポータルに両方でログインできたりして、パスワードをお互いに送り合う手間が省けるんだ。" userName="aryonoco" createdAt="2025-03-08T12:34:45" color="#ff33a1">}}

{{<matomeQuote body="ファミリー共有自体は悪くないけど、「ファミリー」って言葉が気に入らない。あなたのケースには合ってるかもしれないけど、周りの人たちはそうじゃない。NetflixやSteam、Kindleの共有、いろんなWebサービスのパスワード共有を考えると、完全に「ファミリー」や「家庭」と一致しない人々もいるよ。" userName="TeMPOraL" createdAt="2025-03-08T21:03:42" color="">}}

{{<matomeQuote body="「ファミリー」ってのはこの文脈では人間的でユーザーフレンドリーな、企業っぽくない「グループ」ってことじゃない？" userName="quesera" createdAt="2025-03-08T15:03:22" color="">}}

{{<matomeQuote body="Proton Passは完全にオープンソースで、とても使いやすく、アメリカ外でホスティングされてるのが評価されるべきだと思う。こんな感じで自分の保管庫を失いたくないもん。" userName="MartijnHols" createdAt="2025-03-08T08:53:26" color="#ff33a1">}}

{{<matomeQuote body="Proton Passを自ホストするにはどうすればいいの？サーバーのソースコードを探してるけど、見つからない。完全オープンソースなら利用可能なはずじゃない？" userName="shaky-carrousel" createdAt="2025-03-08T09:20:48" color="">}}

{{<matomeQuote body="それって、復旧のシナリオで全部失うことになるんじゃない？コンピュータが火事や洪水でダメになったら、リカバリーキーも失うし、パスワードがあってもデータベースを復旧するのには不十分。自分はkeepassxcを使ってて、長めのパスワードと高いPBKDFの反復回数を設定してるから、デバイスが失われても問題ない。" userName="alwayslikethis" createdAt="2025-03-08T11:21:57" color="#ff5733">}}

{{<matomeQuote body="LastPassは侵害を軽視してたけど、データの暗号化が不十分で失敗してた。責任を取らずに逃げてるのは許せない。今後LastPassを使ってるなら、1PasswordやBitwarden、Keepassに移るべきだよ。大事なパスワードをすぐに変更してね。" userName="taikahessu" createdAt="2025-03-08T11:24:35" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="彼らは本当に訴えられてるから知っておいて。クラスアクションで、この件に関して15回も訴えられている。" userName="mlissner" createdAt="2025-03-08T15:46:42" color="#ff5c5c">}}

{{<matomeQuote body="数年前にBitWardenに移行したけど、ほとんどストレスなかったよ。LastPassからのエクスポートも簡単で、UIの小さな癖に慣れればすぐに使える。" userName="mock-possum" createdAt="2025-03-08T11:51:03" color="">}}

{{<matomeQuote body="1Passwordを数年間使ってて満足だけど、バージョン7以降からは無料のiCloudストレージよりも有料のクラウドサービスを強制されたのが残念。" userName="serkanh" createdAt="2025-03-08T12:30:21" color="">}}

{{<matomeQuote body="Strongboxを強くおすすめする。KeePass DBを使っていて、UIは1Passwordよりも優れたところもあるし、自分のデータを所有できる。唯一の欠点は、DB全体を検索する機能がないところ。" userName="jonpurdy" createdAt="2025-03-08T13:02:39" color="#ff5733">}}

{{<matomeQuote body="彼らはApplauseに買収されたこと注意してね。" userName="DavideNL" createdAt="2025-03-15T05:57:47" color="">}}

{{<matomeQuote body="＞“基本的にクラウド提供を強制されたってこと”そこが1Passwordをやめた理由。自分と家族のために膨大なライセンスを購入してたから、残念だった。" userName="pier25" createdAt="2025-03-08T15:02:17" color="">}}

{{<matomeQuote body="Bitwardenは1Passwordのデータをインポートする際に、すべてのデータタイプに対応してるの？" userName="savolai" createdAt="2025-03-08T15:36:04" color="">}}

{{<matomeQuote body="それはないよ。LastPassから移行した時に両方使ったけど、Bitwardenは4、5タイプのエントリしかサポートしてなくて、Rich entry typesはほぼNotesに変わった。" userName="packtreefly" createdAt="2025-03-08T16:30:36" color="">}}

{{<matomeQuote body="今のAppleのUKでのやり方だと、1Passwordに任せた方が安心。彼らの目的はパスワードを守ることだから、裏切ることはないだろうし、機能も増えてる。" userName="jorvi" createdAt="2025-03-08T13:01:09" color="">}}

{{<matomeQuote body="＞Appleの今のUKでの対応がどうなるか気になるな。政府の命令に逆らうべきだったのか？それとも完全に閉鎖すべきだったのか。今は裁判で戦ってるし。" userName="gruez" createdAt="2025-03-08T13:52:44" color="">}}

{{<matomeQuote body="Appleを批判するわけではなく、UKの要求があるから鍵を預けるのは信用できないってことだよね。" userName="johnmaguire" createdAt="2025-03-08T14:34:16" color="">}}

{{<matomeQuote body="まあイライラするけど、それによって収益が増えて新機能に投資できるから文句なし。バージョン6以降の提供される機能には満足してるし。月数百円払うのはお得な気がする。" userName="bognition" createdAt="2025-03-08T12:53:41" color="#ff5733">}}

{{<matomeQuote body="新機能を無理に使わせようとする感じが嫌でBitWardenに乗り換えた。もう元には戻れない。" userName="rmellow" createdAt="2025-03-08T12:58:19" color="">}}

{{<matomeQuote body="1Passwordは良い選択だと思う。" userName="aborsy" createdAt="2025-03-08T12:18:44" color="#45d325">}}

{{<matomeQuote body="LastPassのハックでパスワードが流出した理由が分からない。1Passwordはユーザーのパスワードと秘密鍵の2つがないと解除できないはず。LastPassはどう違うの？" userName="creddit" createdAt="2025-03-08T01:56:26" color="#38d3d3">}}

{{<matomeQuote body="LastPassは1Passwordの秘密鍵の概念を使ってなくて、ユーザーのパスワードから生成された鍵だけを使ってるから、ハッキング後に手遅れでハッシュ反復回数を増やした。" userName="dathery" createdAt="2025-03-08T02:01:13" color="#ff5c5c">}}

{{<matomeQuote body="なるほど、ありがとう！" userName="creddit" createdAt="2025-03-08T02:12:17" color="">}}

{{<matomeQuote body="他の人が言っているように、LastPassは暗号化されてないメタデータも保存していて、これが攻撃者のターゲットを絞るのに役立った。" userName="semicolon_storm" createdAt="2025-03-08T02:26:14" color="#ff5c5c">}}

{{<matomeQuote body="LastPassはパスワードを知ってたけど、1Passwordは知らなかったってこと？それなら1Passwordの方が安全？" userName="colechristensen" createdAt="2025-03-08T02:03:06" color="">}}

{{<matomeQuote body="LastPassはパスワードを推測できれば暗号化されたボールトを解読できる情報を持ってるってことだね。1Passwordはパスワードに加えて、個人の秘密の鍵も推測する必要があって、鍵生成がちゃんとしてればかなり無理ゲーなんだよ。だからユーザーがその秘密鍵を管理しないといけないんだ。" userName="dathery" createdAt="2025-03-08T02:10:28" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="デバイス間でボールトを共有する場合、どうなるの？" userName="Everdred2dx" createdAt="2025-03-08T04:53:34" color="">}}

{{<matomeQuote body="初期設定時に各デバイスに秘密鍵を渡さなきゃいけないんだ。その後はパスワードだけで大丈夫。" userName="pigbearpig" createdAt="2025-03-08T05:06:57" color="">}}

{{<matomeQuote body="もし海外でデバイスが全部盗まれたり失くなったらどうするの？" userName="HeatrayEnjoyer" createdAt="2025-03-08T07:13:29" color="#ff5733">}}

{{<matomeQuote body="＞あなたは1Passの緊急キットから秘密鍵を取って誰かに連絡しないといけないんだよね。どこに保管したかにもよるけど。長い数字の列を暗記できるなら別だけど。" userName="9x39" createdAt="2025-03-08T07:56:37" color="">}}

{{<matomeQuote body="それはもっと大きな問題を抱えてるってことだね。" userName="soraminazuki" createdAt="2025-03-08T09:54:19" color="">}}

{{<matomeQuote body="それってどういう意味？今この瞬間にも旅行者がその状況に陥ってるかもよ。" userName="HeatrayEnjoyer" createdAt="2025-03-08T14:31:53" color="">}}

{{<matomeQuote body="これが1Passwordの緊急キットの理由だよ。秘密鍵を記録して安全に保管できるようにしてる。どうやって保管するかは個人の好みと“脅威レベル”次第だね。銀行の金庫に保管したり、複数のコピーを作って枕の下に置いたり、写真を撮ったり、メールに保存するなど色々ある。" userName="swat535" createdAt="2025-03-08T18:34:26" color="#ff5733">}}

{{<matomeQuote body="そうでもないよ。この状況で一番重大で緊急な問題はパスワードにアクセスできなくなること、それによって銀行や電子コミュニケーションが使えなくなるってことなんだ。" userName="TeMPOraL" createdAt="2025-03-08T12:00:45" color="#38d3d3">}}

{{<matomeQuote body="LastPassで2FAがある場合はどうなるの？" userName="panick21_" createdAt="2025-03-08T03:00:40" color="">}}

{{<matomeQuote body="2FAは、もしデータが漏れた場合、暗号化とは関係ないんだよね。" userName="TingPing" createdAt="2025-03-08T03:35:14" color="">}}

{{<matomeQuote body="俺の理解だと、鍵の強度が低すぎたのかな。2FAが鍵の強度を上げるなら、影響があるはずじゃない？" userName="panick21_" createdAt="2025-03-08T04:01:30" color="">}}

{{<matomeQuote body="2FAは鍵の強度を上げない。鍵はパスワードからだけ導き出されるし、2FAはパスワードを知ってる人のアクセスを制限するだけ。LastPassの漏洩はバックアップのものだったから、2FAには意味がないね。" userName="MyOutfitIsVague" createdAt="2025-03-08T04:16:45" color="#45d325">}}

{{<matomeQuote body="俺は2013年ごろの2回目の大きなセキュリティ侵害の後、LastPassから離れたんだ。Wikipediaには3件しか載ってないけど、少なくとも5回は見たことがある。それでも企業では使われ続けていて、毎回驚いてるんだよね。5回も騙されたって感じ？" userName="JadoJodo" createdAt="2025-03-08T03:24:06" color="">}}

{{<matomeQuote body="なんでこれが合法なの？今やビジネス慣行みたいになってるじゃん。政府は食中毒でレストランを閉店させるのに、ここでは何もしないの？お金は悪い国に流れてるのに。" userName="yard2010" createdAt="2025-03-08T08:39:52" color="#ff5c5c">}}

{{<matomeQuote body="仕事が下手なのは違法じゃないと思うけど（情報セキュリティのこと）、LastPassが繰り返し無能であることに対して公然と非難されないのは悲劇だね。" userName="JadoJodo" createdAt="2025-03-09T14:35:09" color="">}}

{{<matomeQuote body="LastPassは二つを結びつける証拠がないって言ってるけど、正直信じがたいのは、何百万ドルも持ってる人たちが年に一回もパスワードを変えないってことだよね。パスワードのローテーションはもうベストプラクティスじゃないけど、このケースではまだ賢明な気がする。" userName="CaffeineLD50" createdAt="2025-03-08T02:05:15" color="#785bff">}}

{{<matomeQuote body="派生ウォレットのシードフレーズは変更できないよ。新しいのを作って資産を移す必要がある。" userName="koolba" createdAt="2025-03-08T02:11:15" color="">}}

{{<matomeQuote body="うん、シードフレーズを保存してる会社がハッキングされたら、絶対に新しいのを作るべきだよ。" userName="allset_" createdAt="2025-03-08T03:54:01" color="#38d3d3">}}

{{<matomeQuote body="ここでの暗号についての議論がより深く技術的になってきて嬉しいな" userName="yieldcrv" createdAt="2025-03-08T03:15:58" color="#45d325">}}

{{<matomeQuote body="私、ローカルのKeepassXCを見つめながら落ち着いてそれを使い続けてる。" userName="chinathrow" createdAt="2025-03-08T01:36:41" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
