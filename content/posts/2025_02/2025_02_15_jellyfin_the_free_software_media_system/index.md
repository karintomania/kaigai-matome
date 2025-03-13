+++
date = '2025-02-15T00:00:00'
months = '2025/02'
draft = false
title = '無料で使えるメディアシステム「Jellyfin」とは？あなたの映画鑑賞ライフを変える！'
tags = ["メディアプレーヤー", "オープンソース", "無料ソフトウェア", "ストリーミング", "デジタルライブラリ"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> 無料で使えるメディアシステム「Jellyfin」とは？あなたの映画鑑賞ライフを変える！

引用元：[https://news.ycombinator.com/item?id=43063167](https://news.ycombinator.com/item?id=43063167)

{{<matomeQuote body="ここで批判が多いけど、Jellyfin大好き！数年前にPlexから移行した理由は、ログインサーバーがダウンしてローカルのメディアにアクセスできなかったから。設定は、Debian機でDocker上のJellyfin。Synology NASにNFS接続してる。メインクライアントはNVIDIA ShieldのAndroid TV。全体的に快適だけど、iOSアプリの読み込みがもう少し速かったらなあ。でも何より、外部と繋がることなく映画やテレビを観られるのが素晴らしい。新機能もどんどん増えてるし、コミュニティも強い。更に良くなると期待してるけど、変わらなくても数年使える！" userName="loughnane" createdAt="2025-02-16T00:05:56" color="#ff33a1">}}

{{<matomeQuote body="Jellyfin好きなんだけど、Chromecastのサポートが不安定で、Androidからキャストするとアプリが再生中のことを「忘れちゃう」ことが多い。成功するかどうかも微妙だし、NUCみたいな箱にJellyfinをインストールして直接テレビにつないでる。Jellyfinのクライアントとサーバーが同じマシンにあっても、JMPが接続を失うことがあって、たいていはSSHで再起動しないといけない。4kコンテンツ視聴中に音声が途切れたり映像がカクつくこともあって、使用してるのにストレス感じてる。それでもやっぱり、PlexやEmbyのようなクローズドなものは使いたくないから、Jellyfinの取引は正しいと感じてる！" userName="kelnos" createdAt="2025-02-16T00:33:03" color="">}}

{{<matomeQuote body="＞ Chromecastのサポートが不安定。Androidからキャストすると、アプリが再生中のことを「忘れちゃう」。これ、Plexでも似た体験があったから、Chromecastの問題かもしれない。" userName="thedanbob" createdAt="2025-02-16T02:16:46" color="">}}

{{<matomeQuote body="jellyfin-mpv-shimを試してみて！これ、mpvをJellyfinのキャストシステムに繋げるもので、自分のNUCでうまく動いてるよ。" userName="robhlt" createdAt="2025-02-16T03:22:50" color="#45d325">}}

{{<matomeQuote body="Jellyfin大好きだけど、ウェブモデルが変だよね。192.168.whatever:8096に行くと、どのサーバーに接続するか聞かれるのが謎。Tailscale越しに接続したら、サーバー追加って出るし、正しいURLも受け付けない。" userName="foobiekr" createdAt="2025-02-16T00:44:31" color="">}}

{{<matomeQuote body="Jellyfinの一般的な配信はサーバーとweb UIが一体だけど、web UIは別のプロジェクトで、複数のバックエンドに接続できるから、その機能がある。自分の経験では、webクライアントがサーバーを自動検出すべきなのに、ミスコンフィギュレーションのせいでうまく行かないことがあった。" userName="bhaney" createdAt="2025-02-16T01:01:01" color="">}}

{{<matomeQuote body="＞ なんで192.168.whatever:8096で、接続するサーバーを聞いてくるの？これで友達のJellyfinに簡単に繋がれるけど、初回接続時にはサーバーのURL確認が不要な方がいいよね。" userName="RiverCrochet" createdAt="2025-02-16T01:02:14" color="">}}

{{<matomeQuote body="友達のJellyfinに繋がるなら、友達のサーバーからUIパッケージを受け取れる。別々で接続する必要があるのは普通だけど、設定を簡単にするボタンがUIにあればいいのに。ってか、この設計は新しいクライアントから接続する時にイライラする。" userName="foobiekr" createdAt="2025-02-16T06:55:23" color="">}}

{{<matomeQuote body="自分のJellyfinのインスタンスでは、その画面が出たことない。公式OCIイメージ使ってるけど、基本的にはそんなには起きないはず。" userName="jchw" createdAt="2025-02-16T01:21:54" color="">}}

{{<matomeQuote body="初回ログイン時にはその画面が出るかも。サーバーを自動検出して、選べるはずなんだけど。" userName="behringer" createdAt="2025-02-16T02:08:44" color="">}}

{{<matomeQuote body="Podmanで試してみて、Jellyfinのウェルカムページが出て言語設定やユーザー作成ができた。OCIイメージで一般的にはそのサーバー選択画面は期待されないと思う。ちょっとした手がかりかも、ホスト名が変わるとサーバー選択画面が出ることがある。" userName="jchw" createdAt="2025-02-16T03:03:48" color="">}}

{{<matomeQuote body="合ってる。たいていプロキシの問題かな。Jellyfinがダウンしてる時も、プロキシは上がってるからそうなる。" userName="behringer" createdAt="2025-02-16T05:55:46" color="">}}

{{<matomeQuote body="＞”192.168.whatever:8096に行くと、どのサーバーに接続するか聞かれるって何でだろう？”<br>答えは分からないけど、systemdの設定を強化しようとして遭遇した。以下にオーバーライドをリンクするから、誰か具体的な答えやオーバーライドの提案をくれたら嬉しい。RestrictAddressFamiliesをいじった時にこの問題が起きた。他のファイルを移動した時も同じで、再生成されたのを見たから、設定ファイルが保存される場所にアクセスできないのが原因かも。tailscaleとはうまくいってる。" userName="stevenwalton" createdAt="2025-02-16T05:05:31" color="">}}

{{<matomeQuote body="クライアントとサーバーを分けているからだよ。現在のアドレスで提供されているやつだけじゃなくて、他のローカルのJellyfinインスタンスにも接続できる。" userName="ekianjo" createdAt="2025-02-16T05:00:17" color="#38d3d3">}}

{{<matomeQuote body="ただのブラウザでサーバーに接続する典型的な使い方には合わないし、デフォルトの挙動としてはおかしいと思うよ。" userName="foobiekr" createdAt="2025-02-16T06:50:49" color="">}}

{{<matomeQuote body="この画面、実際に見たのは一度きりで、それ以降はすっかり忘れた。そんなに大騒ぎすることでもないと思うけど。" userName="phito" createdAt="2025-02-16T11:45:30" color="">}}

{{<matomeQuote body="そのコメント者は、Jellyfinに対する唯一の不満としてこれを選んだみたいだね。" userName="__float" createdAt="2025-02-16T13:59:14" color="">}}

{{<matomeQuote body="必要に応じて、tailscaleに接続しながら192.168.x.yのマシンにも接続できるし、そのサブネットを広告することもできるよ。" userName="dagi3d" createdAt="2025-02-16T09:57:46" color="">}}

{{<matomeQuote body="設定オプションかもしれないけど、デフォルトの挙動で、ほんとに意味が分からない。" userName="foobiekr" createdAt="2025-02-16T00:53:09" color="">}}

{{<matomeQuote body="自分も全く同じ設定で、tailscaleを使えばどこでもメディアを楽しめる。おすすめだし、批判されてる理由がまったく分からない。" userName="ews" createdAt="2025-02-16T02:28:36" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="たまにPlexからJellyfinに移行しようかなって考えるけど、友達とライブラリを共有するのが面倒だった。でも今はPS5アプリがないのが唯一の障害。もし出たら、友人グループではPlexは終わりだね。" userName="ryanmcbride" createdAt="2025-02-16T00:13:29" color="">}}

{{<matomeQuote body="あんまり一気に”移行”する必要はないからね。PlexとJellyfinを同じメディアライブラリに向けて運営して、特定のプラットフォームでクライアントの良い方を使うのも全然問題ない。" userName="bhaney" createdAt="2025-02-16T00:20:06" color="">}}

{{<matomeQuote body="これ試したけど、サーバーを二つ使うと視聴履歴が消えたり分かれたりしちゃう。シリーズの進捗を自分で思い出さなきゃいけないなら、VLCでいいや。" userName="walthamstow" createdAt="2025-02-16T01:21:15" color="">}}

{{<matomeQuote body="JellyPlexWatchってのがあって、JellyfinとPlexのデータベースを同期できるんだ。そいつを使ってWatch Historyを同期しながら両方使ってる。でも、Skip Introの統合を巡るゴタゴタの影響でJellyfinにはまだ移行できてないんだよね。これから良くなるといいな。" userName="theossuary" createdAt="2025-02-16T01:26:33" color="#38d3d3">}}

{{<matomeQuote body="＞ドラマに関しては？<br>何を指してるの？" userName="jillyboel" createdAt="2025-02-16T03:03:32" color="">}}

{{<matomeQuote body="オートスキップ用の「メディアセグメント」を追加するプロジェクトがあったんだ。機能は動いてたけど、コアチームはスリムなコアに集中することに決めたみたい。" userName="defrost" createdAt="2025-02-16T03:31:28" color="">}}

{{<matomeQuote body="この機能は大したことないと思うけど、Star Trek: Enterpriseを観るときはほんとに便利。それじゃないと開幕の歌が耐えられない。" userName="shiroiushi" createdAt="2025-02-17T07:58:14" color="">}}

{{<matomeQuote body="いいポイントだね。完全に移行する前は6ヶ月くらいこれやってた。" userName="loughnane" createdAt="2025-02-16T00:21:41" color="">}}

{{<matomeQuote body="Sonyにアプリ作成の要望を出したけど、要約すると「こっちから連絡するから、連絡しないで」って言われた。オープンソースには興味ないみたい。" userName="crobibero" createdAt="2025-02-16T01:36:57" color="">}}

{{<matomeQuote body="ほんとに？ゲーム制作のようにSDKをライセンスするだけでしょ？特定のアプリしか許可されてないの？" userName="ryanmcbride" createdAt="2025-02-16T03:39:10" color="">}}

{{<matomeQuote body="PS5のWebブラウザでブックマーク？<br>でも、コンソールサポートは開発ルールとコストの関係で遅れるから分かる。" userName="dbetteridge" createdAt="2025-02-16T00:17:39" color="">}}

{{<matomeQuote body="2025年だって教えたら、彼にはテレビでPlexを使う方法が700通りあるって言えるけど、なんか面白いから続けちゃってる。" userName="ryanmcbride" createdAt="2025-02-16T15:55:23" color="">}}

{{<matomeQuote body="Kodiから移行したけど、Jellyfinは素晴らしい。UbuntuをMini PCで動かして、外付けハードディスクで使ってる。nvidia shieldでTVにストリームしてるよ。" userName="s0rce" createdAt="2025-02-16T00:35:40" color="#38d3d3">}}

{{<matomeQuote body="私は逆に移行したんだ。Emby、Jellyfin、最後にPlexを試したけど、Plexが一番良かった。Plex Passがあればアプリもどこでも使えるし、スムーズに動く。Jellyfinのアプリは訳が悪くてバグも多く、プラットフォームも限られてる。" userName="mmcnl" createdAt="2025-02-16T15:14:14" color="#ff5c5c">}}

{{<matomeQuote body="Plexを長いこと使ってたけど、遅いし不安定で、ライブラリがスキャンできなかったり、メディアが接続できなかったりしたのが不満だった。でもJellyfinに切り替えたら、すぐに再生できるし、字幕のダウンロードもうまくいくようになった。ただ、Jellyfinのマッチングがいまいちで、エピソードがショーに属してるのを理解してないことが多くて、InfuseのUIもあまり好みじゃない。" userName="atombender" createdAt="2025-02-16T21:33:49" color="#45d325">}}

{{<matomeQuote body="値段の違いも触れてほしかったな。" userName="crtasm" createdAt="2025-02-16T16:51:04" color="">}}

{{<matomeQuote body="無料でオープンソースのプロジェクトに文句言ってる人が多いのに驚いた。少人数で維持してるプロジェクトで、ボランティアが自分の時間を使ってやってるんだから。改善が必要ならPR提出すればいいのに。" userName="fastily" createdAt="2025-02-16T00:06:28" color="">}}

{{<matomeQuote body="JellyfinはPRは受け入れるけど、特定のデバイスのためのハックやワークアラウンドは簡単には受け入れない。長期的な維持のためには正しい方法で進めたいんだ。だからSkip Introの機能追加も遅れてるんだ。" userName="xbmcuser" createdAt="2025-02-16T01:58:20" color="#ff33a1">}}

{{<matomeQuote body="開発者たちの持ってる健康的なアプローチを批判してるように聞こえるけど、短期的な利益のために長期の持続可能性を犠牲にするのはどうかと思う。" userName="integricho" createdAt="2025-02-16T07:21:09" color="">}}

{{<matomeQuote body="開発者を支持してるよ。メンテイナーと相談せずにコードを提出して、後から受け入れられないと文句言うのは不要な摩擦を生むだけだ。そういうのが続くと、開発者が熱意を失ってプロジェクトが終わっちゃう。" userName="xbmcuser" createdAt="2025-02-16T08:34:29" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これは良いことだよ。特にボランティアが維持してるオープンソースプロジェクトにおいては、200種類のデバイスのために100個のハックを維持するのは無理なんだから。" userName="squigz" createdAt="2025-02-16T04:21:13" color="">}}

{{<matomeQuote body="プロジェクトやメンテイナーとやりとりしてきたけど、そのアプローチに賛同してる。" userName="heavyset_go" createdAt="2025-02-17T01:30:01" color="#ff5733">}}

{{<matomeQuote body="無料でオープンソースなのはいいけど、実はお金を払ってでもJellyfinが良くなるのなら喜んで払うよ。Apple TVで使えるInfuseにはお金払ってるし、必要なら資金提供して改善してほしい。" userName="lukevp" createdAt="2025-02-16T01:49:29" color="#ff5733">}}

{{<matomeQuote body="Jellyfinにお金を寄付したいなら、寄付の方法があるよ。寄付は期待や義務なしで行うべきだから、道筋を決めるためのベストな方法ではないかも。企業がスポンサーになってるから、それを利用してフィードバックを送るのもいいね。" userName="devsda" createdAt="2025-02-16T03:10:33" color="">}}

{{<matomeQuote body="Jellyfinを使ってるけど、FOSSとしての品質は本当に素晴らしいと思う。" userName="PessimalDecimal" createdAt="2025-02-16T00:25:25" color="#ff33a1">}}

{{<matomeQuote body="FOSSが最も高品質なソフトウェアだってのが最近15年の証拠だよね。" userName="chgs" createdAt="2025-02-16T09:22:52" color="">}}

{{<matomeQuote body="JellyfinのFOSSメディアホスティングは、GoogleやAmazonと対抗できる実力を持つのが素晴らしいんだ。" userName="PessimalDecimal" createdAt="2025-02-16T15:10:33" color="#ff5c5c">}}

{{<matomeQuote body="FOSSにありがちなUIデザインの悪さは認めるけど、基本的には信頼性が高いソフトなんだよね。" userName="shiroiushi" createdAt="2025-02-17T08:00:37" color="">}}

{{<matomeQuote body="無料のプロジェクトでも批判はOK。ただ、使いにくいって意見を言ってるだけだよ。" userName="patmorgan23" createdAt="2025-02-16T00:12:58" color="">}}

{{<matomeQuote body="それに同意するけど、文句を言う時間があったらプロジェクトを改善する手伝いをすればいいのに。" userName="fastily" createdAt="2025-02-16T00:21:57" color="">}}

{{<matomeQuote body="批判してから他のプロジェクトに取り組むのに何が悪いの？開発者がどうするかは彼らの自由だし。" userName="Larrikin" createdAt="2025-02-16T01:35:32" color="">}}

{{<matomeQuote body="使用中の問題点を指摘するのは理解できるけど、実装するのはまた別の話だよね。" userName="kyawzazaw" createdAt="2025-02-16T23:07:44" color="">}}

{{<matomeQuote body="酷い無料プロジェクトもあるけど、Jellyfinは違うと思うんだ。批判は好みやスキルの問題が多い気がする。" userName="atoav" createdAt="2025-02-16T12:24:35" color="#45d325">}}

{{<matomeQuote body="その批判が何の役に立つの？" userName="scns" createdAt="2025-02-16T00:20:30" color="">}}

{{<matomeQuote body="批判には賛美と同じ効果があるから、欠点も話し合う場があってもいいと思うよ。" userName="bigstrat2003" createdAt="2025-02-16T00:42:12" color="">}}

{{<matomeQuote body="我々の時間にも価値があるから、FOSSアプリについて警告するのは全然アリだよ。" userName="gosub100" createdAt="2025-02-16T00:44:23" color="">}}

{{<matomeQuote body="Jellyfinは素晴らしいOSSプロジェクトで、寄付もしたくらい。このプロジェクトに批判的な人はPlexにこだわってる気がする。" userName="Cyph0n" createdAt="2025-02-16T00:36:44" color="#785bff">}}

{{<matomeQuote body="Jellyfinに切り替えてみたけど、Plexと比べると機能が全然足りてないって感じ。最近の話じゃないけど、5.1サラウンドとDolby Atmos環境で、Blu-rayのリッピングがPlexでは問題なく再生できるのに、Jellyfinでは音が出なかったり、スタッタリングしたり、2.0にダウンスケールされたりすることがあった。Kodiメディアクライアントを使えばDTSやDdol+には対応できるけど、手間が多くてPlexの方が楽だと思った。1080pのテレビとスピーカーだけならJellyfinでも問題無く動くと思うけど、ちょっと複雑な環境にするとやっぱり問題が出てくるね。オープンソースプロジェクトだから基本機能は作れるけど、複雑な使い方はやっぱり手間がかかるし、誰もがその手間をかけようとは思わないから。" userName="SamuelAdams" createdAt="2025-02-16T01:19:37" color="">}}

{{<matomeQuote body="俺は2019年製のTubeでJellyfinを5.1.2のシステムで使ってるけど、DTSやAtmos、HDR10も問題なく動いてる。Kodiから切り替えたんだけど、Shieldの設定でDolbyプロセッシングと2.0のアップミックスをオフにすると、スタッタリングがなくなって動きがスムーズになったよ。" userName="zeagle" createdAt="2025-02-16T16:51:49" color="#45d325">}}

{{<matomeQuote body="クライアントの状況は確かに不足してるけど、今は優先しているみたい。OSSのEmbyフォークとしての進展はすごいと思う。Apple TVでは、Infuseがクライアントの穴を埋めてるし、個人的にはサードパーティーのクライアントにお金を使うのが好き。メディアサーバーがトランスコーディングを有料にしていると、プライベートサーバーが遠隔地サービスに縛られちゃうからね。" userName="Cyph0n" createdAt="2025-02-16T01:42:49" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="うん、r/selfhostedやr/plexでよく見るよ。" userName="Cyph0n" createdAt="2025-02-16T02:45:31" color="">}}

{{<matomeQuote body="/r/selfhostedのどのスレッドで文句言われてるの？最近の投稿はJellyfinに好意的なのが多いけど。" userName="speff" createdAt="2025-02-16T03:31:42" color="">}}

{{<matomeQuote body="＞”感じるなぁとは思うけど、証拠がない”って全然説得力ないよね。Plexユーザーはセルフホスティングで問題を抱えてるわけだし、PlexのLifetime Pass holdersは75ドルも払って投資してるからね。誰もがすぐに乗り換えられるわけじゃないよ。AdGuardやPiHoleを使ってる人も多いし、Plexを使うと広告やトラッキングが煩わしいこともある。" userName="Larrikin" createdAt="2025-02-16T04:49:13" color="">}}

{{<matomeQuote body="PlexからJellyfin/Infuseに切り替えた理由は3つある。<br>1) トーンマッピングが良いから、HDR映画をSDRでもヘンにならずに見れる。2) Plexは色んなクライアントで音声がずれることが多かった。俺は音声の同期に敏感で、Jellyfinでは問題なし。3) JellyfinはTailscale経由でアクセスしやすいけど、Plexは結構ややこしい。全体的に見ればPlexのクライアントUIはすごく良いし、機能も豊富で安定してる。今もPlexを使っていて、DVR機能はやっぱり手放せないな。" userName="thedougd" createdAt="2025-02-16T00:38:58" color="#38d3d3">}}

{{<matomeQuote body="＞”自動HDRからSDRへの変換って、どうしてそんなに魅力的なのか分からない。”って言うけど、HDR専用コンテンツっていい曲がり方してるよね。" userName="LiamPowell" createdAt="2025-02-16T04:42:28" color="">}}

{{<matomeQuote body="みんな複数のスクリーン持ってるけど、同じ動画を何個もコピーしたくないってことだよね？" userName="dullcrisp" createdAt="2025-02-16T06:48:43" color="">}}

{{<matomeQuote body="状況によっては、HDRバージョンよりSDRバージョンを選ぶ人が多いと思う。やっぱりHDRはSDRに変換するとひどいからね。どっちの画像が正しくトーンマップされてるかは文脈によるし、アルゴリズムじゃ判断できないよ。" userName="LiamPowell" createdAt="2025-02-16T08:57:48" color="#ff5733">}}

{{<matomeQuote body="俺はHDRと非HDRのデバイス両方持ってるから、複数のコピーは作りたくない。一つのファイルでメインのHDRデバイスで最適に見えるのが理想だな。" userName="SomeoneOnTheWeb" createdAt="2025-02-16T10:49:32" color="#785bff">}}

{{<matomeQuote body="Jellyfinがそのあたりをうまく扱ってくれればいいけど、時々面倒になることもあるからね。" userName="LiamPowell" createdAt="2025-02-16T10:55:58" color="">}}

{{<matomeQuote body="他人の好みを常に決めようとするのはどういうこと？" userName="izacus" createdAt="2025-02-16T10:00:32" color="">}}

{{<matomeQuote body="結局、個人の好みだよね。1つのデバイスで最高画質を求める人は少ないと思う。" userName="LiamPowell" createdAt="2025-02-16T10:50:07" color="">}}

{{<matomeQuote body="その通り。リビングはホームシアターじゃないから、ホームシアターでは最高画質が欲しいし、他の部屋では十分な画質があればいい。複数のファイルを管理するのは手間だし、どれが合ってるのか他の人に聞くのも面倒。" userName="thedougd" createdAt="2025-02-16T18:26:11" color="#ff33a1">}}

{{<matomeQuote body="オーディオの同期問題、Apple TVでHomePods使ってるときにJellyfinでよく見かける。実験設定の”ネイティブプレイヤー”を有効にしないと音が合わないんだ。開発者に報告したけど、解決されてない。" userName="codys" createdAt="2025-02-16T02:47:39" color="">}}

{{<matomeQuote body="JellyfinとInfuseは字幕がすごく相性いいよ。" userName="ninth_ant" createdAt="2025-02-16T01:46:33" color="#45d325">}}

{{<matomeQuote body="InfuseはAppleデバイス向けのいいクライアントで、Plexより遥かに好き。" userName="anon7000" createdAt="2025-02-16T02:34:20" color="">}}

{{<matomeQuote body="PlexやJellyfinみたいなソフトは不要で、SMBシェアを公開してInfuseに指定するだけでいいのが好き。" userName="inversetelecine" createdAt="2025-02-16T04:33:33" color="#785bff">}}

{{<matomeQuote body="その通り、Infuseは何でも再生できる。AppleデバイスやAndroidのNovaがあるのに、JellyfinやPlexの意味って何？" userName="vladgur" createdAt="2025-02-16T18:41:24" color="#45d325">}}

{{<matomeQuote body="自宅のNASから旅行のドキュメンタリーをストリーミングできるのが超楽しい！Jellyfinとかtailscaleを組み合わせれば、集まりで誰かに見せることもできるし、最高だね！" userName="amatecha" createdAt="2025-02-16T01:57:53" color="#785bff">}}

{{<matomeQuote body="たまに音声がずれることがあるけど、ほとんどは動画を止めて考え直せば解決するよ。古いフォーマットの動画ファイルだとたまにそうなる。" userName="BLKNSLVR" createdAt="2025-02-16T01:41:18" color="">}}

{{<matomeQuote body="Jellyfinが大好き！IPv6のJellyfinサーバにCloudflareのドメインを割り当てれば、どこからでも個人メディアにアクセスできる。ただ、MACアドレスでのデバイス制限が見つからなくて、大企業に訴えられたくないからもっと安全を求めてる。" userName="austin-cheney" createdAt="2025-02-16T02:01:47" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
