+++
date = '2025-03-28T00:00:00'
months = '2025/03'
draft = false
title = '速報！GeminiのPythonサンドボックスがハッキングされた！？一部ソースコード流出か'
tags = ["Gemini", "Python", "ハッキング", "ソースコード", "セキュリティ"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> 速報！GeminiのPythonサンドボックスがハッキングされた！？一部ソースコード流出か

引用元：[https://news.ycombinator.com/item?id=43508418](https://news.ycombinator.com/item?id=43508418)

{{<matomeQuote body="マジか、俺が担当してるシステムじゃん！なんか質問あったら気軽にどうぞ。あくまで個人的な意見で、会社の公式見解じゃないから。" userName="topsycatt" createdAt="2025-03-28T18:34:16" color="">}}

{{<matomeQuote body="サンドボックス環境って結構頻繁に作ったり壊したりするんじゃない？どれくらいの速さで作れるの？<br>必要な時に作るのか、それとも前もって用意してる？<br>もし必要な時に作るなら、ZFSスナップショットで高速化できるか試したことある？" userName="ryao" createdAt="2025-03-28T22:25:11" color="#ff33a1">}}

{{<matomeQuote body="返信遅れてごめん！<br>記事にも書いてある通り、gVisor使ってるんだよね。checkpoint_restoreって機能がマジ優秀で、サンドボックスの起動がめちゃくちゃ速いんだ。ファイルシステムはCoW overlayだし。" userName="topsycatt" createdAt="2025-04-01T14:26:49" color="#ff5733">}}

{{<matomeQuote body="返信ありがと。gVisorの説明を読み間違えてたわ。システムの保護じゃなくて、サンドボックスのファイルシステムを管理するツールだったんだね。面白いツールだ。" userName="ryao" createdAt="2025-04-02T05:11:47" color="#ff5733">}}

{{<matomeQuote body="ZFSって何？Googleのツールっぽくないけど。" userName="dullcrisp" createdAt="2025-03-29T14:43:24" color="">}}

{{<matomeQuote body="https://en.wikipedia.org/wiki/ZFS<br>簡単に言うとファイルシステムだよ。" userName="x-complexity" createdAt="2025-03-29T15:08:09" color="">}}

{{<matomeQuote body="うわー、ZFS信者が来るぞ。" userName="2OEH8eoCRo0" createdAt="2025-03-29T14:46:52" color="">}}

{{<matomeQuote body="ZFS使ってるけど、サンドボックスの状況とは全然違うんじゃない？なんでそれが最適なの？" userName="luke-stanley" createdAt="2025-03-29T09:02:34" color="">}}

{{<matomeQuote body="サンドボックス作る時って毎回ファイル配置するでしょ。ZFS clonesなら同じファイルを何度も参照できるから、環境を作るために必要なメモリ書き込み量が最小限になるんだ。例えばサンドボックスが1GBで、clone操作が1MB以下の書き込みで済むなら、環境を作るための書き込みが1000分の1以下になる。<br>ZFS ARCは同じファイルの読み込みを同じものとして扱うはず。でも普通の作り方だと、ファイルはユニークなものとして扱われる。ZFSならファイルのコピーを1つだけキャッシュすればOK。メモリ使用量が劇的に減る。<br>＞もしZFS clonesを使用すると、Pythonの実行環境を作るのに毎回tarballを展開するよりも明らかに有利。" userName="ryao" createdAt="2025-03-29T17:25:37" color="#ff5c5c">}}

{{<matomeQuote body="さらに下のレイヤーで見ると、LVMスナップショットはファイルシステムに依存しない。" userName="o11c" createdAt="2025-03-29T17:39:36" color="">}}

{{<matomeQuote body="GeminiのインタラクティブなPythonサンドボックスって、思考モデルと相性悪いのかな？2.0 flashだと使えるけど、2.0 flash thinkingとか2.5 proだと使えないみたいなんだよね。" userName="hnuser123456" createdAt="2025-03-28T18:50:30" color="">}}

{{<matomeQuote body="いい質問だね！相性が悪いわけじゃなくて、フローをうまく調整する必要があるんだ。そのプロセスについてはあんまり言えないけど、可能性にはワクワクしてるよ！" userName="topsycatt" createdAt="2025-03-28T18:53:11" color="">}}

{{<matomeQuote body="なるほど、Geminiは思考プロセスの一部としてコードを実行できるんだね。今回の研究のターゲットはそのサンドボックスだったんだ。Gemini Canvasでのコード編集はColabにエクスポートするボタンがあるだけみたいだし。研究のスクショだとチャットで生成されたコードに実行ボタンがあるけど、今はないんだね。でも、期待してるよ。" userName="hnuser123456" createdAt="2025-03-28T19:00:32" color="#45d325">}}

{{<matomeQuote body="Canvasには、このサンドボックス（コンテナは違うけど）と、完全にクライアントサイドのものが混ざってるんだ。「実行」オプションは利用率が低かったから削除されたけど、データ分析のワークフローとか、拡張機能の実行とかにはまだ使われてるよ。基本的には、信頼できないコードをサーバーサイドで実行するための汎用サンドボックスなんだ。" userName="topsycatt" createdAt="2025-03-28T19:14:40" color="#785bff">}}

{{<matomeQuote body="コード例の一般的なクエリに対して、実行ボタンを復活させるように働きかけることはできないかな？人間の言葉の説明が、奇妙なコンピュータコードに変わり、結果の出力になるのを見れるのは、史上最強の教育ツールだと思うんだ。安全にできるなら、キラー機能だよ。" userName="hnuser123456" createdAt="2025-03-29T04:24:05" color="#ff33a1">}}

{{<matomeQuote body="もしかして、この論文読んだことある？<br>https://agent-gen.github.io/" userName="TechDebtDevin" createdAt="2025-03-29T05:23:13" color="">}}

{{<matomeQuote body="へー、いいね。俺もGoogle Bardにデータ可視化が追加された頃、同じようなことやったよ。コード実行機能が導入された時だと思うんだけど。一つ疑問だったのは、ユーザーの”grte”って何の略なんだろう…。ちなみに、ファイルシステムをスクレイピングするために使ったトリックはこれだよ。<br>https://embracethered.com/blog/posts/2024/exploring-google-b..." userName="wunderwuzzi23" createdAt="2025-03-28T22:29:22" color="">}}

{{<matomeQuote body="”runtime”は、Googleの社内ディストリビューションのlibc + binutilsで、モノリシックリポジトリ”google3”内でバイナリをリンクするために使われるんだ。OSからシステムライブラリを分離する必要があるのは、”google3 binaries”がワークステーションと本番サーバーの両方で実行可能であることを保証するため。ワークステーションとサーバーはそれぞれ独自のLinuxディストリビューションを持ってて、時間とともに変化する必要もあるからね。" userName="waych" createdAt="2025-03-29T00:59:18" color="#45d325">}}

{{<matomeQuote body="つまり、一部のツールは2007年くらいの古いglibcで動かざるを得なかったってことだね。" userName="saagarjha" createdAt="2025-03-29T07:56:30" color="">}}

{{<matomeQuote body="IIRC、Googleには、すべてのgoogle3バイナリを6か月以内にリビルドする必要があるポリシーがあるんだ。これにより、チームは古いバージョンのもの（glibcを含む）のサポートを段階的に廃止できる。grteは、移行期間を可能にするために、複数のバージョンをサイドバイサイドでインストールすることをサポートしている（記事中の”v5”）。" userName="waych" createdAt="2025-04-01T00:36:30" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="「Geminiをハッキングしてソースコードをリークした」って、今回の件を正確に表してると思う？" userName="fragmede" createdAt="2025-03-28T18:53:09" color="">}}

{{<matomeQuote body="Google側の人間だけど、タイトルは大げさかな。でも、それは作者の自由だよね。" userName="topsycatt" createdAt="2025-03-28T18:54:33" color="">}}

{{<matomeQuote body="サンドボックス化されたPHPコードって、いつになったら実行できるようになるんだろ？" userName="devdudect" createdAt="2025-03-28T19:07:08" color="">}}

{{<matomeQuote body="できるけど、優先順位が低いんだよね。PHPを使いたい特別な理由でもあるの？" userName="topsycatt" createdAt="2025-03-28T19:20:55" color="">}}

{{<matomeQuote body="＞but that's the author’s prerogative<br>それ、あなたが投稿したんじゃないですか。" userName="koakuma-chan" createdAt="2025-03-28T19:16:33" color="">}}

{{<matomeQuote body="記事のタイトルと全く同じタイトルでHNに投稿したけど、記事のタイトルを書いたのは僕じゃないよ。HNの投稿はリンク先の記事のタイトルと一致させるべきだよね。" userName="topsycatt" createdAt="2025-03-28T19:19:06" color="">}}

{{<matomeQuote body="実際は、誤解を招くタイトルを修正できるようにルールがあるんだ。「誤解を招く場合や、釣りタイトルでない限り、元のタイトルを使用してください。編集しないでください。」<br>https://news.ycombinator.com/newsguidelines.html<br>修正しました。<br>https://news.ycombinator.com/item?id=43509103<br>良心の呵責に感謝します！Googleで働いているから、誤解を招くタイトルを修正すると、利益相反だって批判される可能性があったからね。" userName="dang" createdAt="2025-03-28T19:29:48" color="#45d325">}}

{{<matomeQuote body="ハッカー？それともGoogleの人？" userName="seydor" createdAt="2025-03-28T18:52:54" color="">}}

{{<matomeQuote body="Googleの人だよ。" userName="topsycatt" createdAt="2025-03-28T18:53:26" color="">}}

{{<matomeQuote body="質問：OpenAIにシェアを奪われてるGoogle内部の雰囲気ってどんな感じ？まだOpenAIが勝ったとは言えないけど、Googleは多くのブレークスルーと研究を持っていたのに、シェアで先行してるよね。Googleの製品ポリシーに不満とかある？答えにくいなら答えなくても大丈夫だよ。" userName="onemoresoop" createdAt="2025-03-28T21:08:19" color="#ff5733">}}

{{<matomeQuote body="業界じゃ珍しい意見だけど、消費者にはよくあるよね。GoogleのFlash 2は、企業がOCRとか分類器とか使うのに一番コスパいいんだって。Gemini 2.5も発表されたし、Gemma 3もなかなか。プロダクトはイマイチだけど、技術はマジすごいし、業界でも結構使われてるみたい。個人的にはOpenAIとかAnthropicからGoogleに乗り換えたワークロードも結構あるよ。ただ、すごいモデル出しても、実験モードで出し惜しみしすぎなのが不満かな。" userName="mediaman" createdAt="2025-03-28T22:15:35" color="#ff5c5c">}}

{{<matomeQuote body="GoogleってAI以外にも色々やってる超巨大企業じゃん？　ローンチが遅いって不満もあるけど、マジですげえこと色々仕込んでるって期待してる人もいるし、AI/LLMとかマジどうでもいいって人も結構いるって感じかな。" userName="MyelinatedT" createdAt="2025-03-28T21:51:15" color="">}}

{{<matomeQuote body="昔はGoogleで働きたかったけど、今はどうかなー。ロンドンのオフィスにめっちゃいい庭作ったけど、アプリとかサービスのUXがマジで落ちてる気がする。基本的なミスとか、ありえないくらいヒドイ設計とか、例を挙げればキリがない。" userName="fennecbutt" createdAt="2025-03-29T03:27:25" color="">}}

{{<matomeQuote body="＞基本的なミスとかヒドイ設計とかって､これから改善できる余地があるってことじゃん？<br>昔はFAANGみたいな大企業で働きたかったけど、今はもういいかな。小さい会社だけど'大物'マネジメントがいるようなとこで働いてみて思った。競争激しいし、汚い手も使うし。エンジニアは何をどう作るか全然コントロールできない。無能なマネージャーが決めることばっかり。Architectって肩書はマネージャーの別名で、スキルとかマジ関係ない。今は成果がちゃんと見えて評価される小さい会社とかスタートアップがいいな。" userName="MoonGhost" createdAt="2025-03-29T07:31:01" color="">}}

{{<matomeQuote body="誰もマジで信じてないでしょ。OpenAIは消費者の注目集めてるかもしれないけど、Googleは開発者向けに一番優秀で、コスパ最強で、最速のモデルを提供してるじゃん。" userName="nikcub" createdAt="2025-03-28T21:54:58" color="#ff33a1">}}

{{<matomeQuote body="Googleの人って、数か月後にAssistantをこれに置き換えようとしてるのに、タイマーすら設定できないの気にしてないの？（タイマー設定したって言うけど、ネイティブの時計アプリと連携してないから、ウィンドウから離れたらマジで何も起こらないんだけど。）" userName="Mindwipe" createdAt="2025-03-28T18:49:21" color="#ff5c5c">}}

{{<matomeQuote body="みんな文句言ってるけど、マジで意味わからん。Geminiは100%タイマー設定できるし、Assistantより全然さりげないヒントでできるし。マジで普通に動くよ？なんでみんなできないって言うの？音楽も再生できるし、スマートライトの色も変えられるし。特別な設定とかした覚えもないんだけどな。Pixel 9 pro" userName="iury-sza" createdAt="2025-03-28T19:06:51" color="#785bff">}}

{{<matomeQuote body="マジで何もできない。特にEUの一部の国じゃ、もっと何もできない。タイマーもリマインダーも、カレンダーのイベントも。マジで全部ダメ。もしAssistant殺すなら、Appleに乗り換えるわ。マジで嫌だけど。" userName="7bit" createdAt="2025-03-28T19:06:07" color="">}}

{{<matomeQuote body="試してみたけど、＂Gemini Apps＂を有効にする必要があるね。でも、インタラクションの保存期間が3日じゃなくて3か月、18か月、36か月になるんだ。" userName="GrayShade" createdAt="2025-03-30T10:57:04" color="">}}

{{<matomeQuote body="アシスタントの声が欲しい。Geminiの声マジで嫌い。" userName="nosrepa" createdAt="2025-03-28T23:57:43" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="似たようなこと、俺もやってるよ。ChatGPT Code Interpreterの内部ソースコードをGitHubにスクレイピングしてるんだ。→https://github.com/simonw/scrape-openai-code-interpreter　主にPythonのパッケージとかバージョンを確認するのに便利なんだよね。→https://github.com/simonw/scrape-openai-code-interpreter/blo…" userName="simonw" createdAt="2025-03-28T20:04:36" color="#45d325">}}

{{<matomeQuote body="普通にドキュメントにリスト公開して、自動更新するようにすればいいのにね。でも、秘密主義のためには秘密にしておくんだ。" userName="Zopieux" createdAt="2025-03-29T01:27:50" color="">}}

{{<matomeQuote body="秘密ってわけじゃないと思うけど。単に、誰も時間と労力をかけてやってないだけじゃないかな。" userName="aleksiy123" createdAt="2025-03-29T02:28:28" color="">}}

{{<matomeQuote body="それやるメリットって何？" userName="12345hn6789" createdAt="2025-03-29T12:46:24" color="">}}

{{<matomeQuote body="ドキュメントだよ。Code Interpreterでどんな問題が解決できるか、みんなが理解しやすくなる。現状、この機能の最高のドキュメントが、俺のハックで作ったGitHubリポジトリってのが笑える。" userName="simonw" createdAt="2025-03-29T22:57:56" color="#ff5c5c">}}

{{<matomeQuote body="それは良い指摘だね。担当者に話して、何かできるか確認してみるよ。" userName="topsycatt" createdAt="2025-04-01T14:30:11" color="">}}

{{<matomeQuote body="このパッケージリスト（とサンドボックスの制限）を使って、機能の分類を作ってみたよ。→https://gist.github.com/trbielec/a00a58fa97a232bef8984cc8d01…" userName="fudged71" createdAt="2025-03-29T17:58:17" color="#38d3d3">}}

{{<matomeQuote body="Geminiをハックしてソースコードをリークって言うけど、実際は“Googleのセキュリティチームの助けを借りてGeminiで遊んで、何もリークしなかった”ってことだよね。" userName="lqstuart" createdAt="2025-03-29T05:21:48" color="">}}

{{<matomeQuote body="この記事を読む前に、このコメントを読んでおけばよかった。" userName="worldsavior" createdAt="2025-04-02T14:22:59" color="">}}

{{<matomeQuote body="＞意図せず、機密性の高い内部プロトコルが流出した<br>GitHubにあるなら、そんなに機密じゃないんじゃない？→https://github.com/ezequielpereira/GAE-RCE/tree/master/proto…" userName="parliament32" createdAt="2025-03-28T21:48:01" color="">}}

{{<matomeQuote body="それも脆弱性を突いて公開されたんだよね。" userName="saagarjha" createdAt="2025-03-29T07:59:33" color="">}}

{{<matomeQuote body="でも、彼らがリーク/公開したわけじゃないってことじゃん。批判する意味ないよ。今回の脱出で機密写真がリークしたわけじゃないし。すでに公開されてたものを再公開しただけ。写真がAIに秘密で渡されたわけじゃないから、再公開しても秘密を侵害したことにはならないよね。Githubと変わらないじゃん。ちなみに俺はAI擁護派じゃないよ。AIは毎日何百万回も著作権侵害してると思ってる。" userName="Brian_K_White" createdAt="2025-03-29T15:16:06" color="#45d325">}}

{{<matomeQuote body="記事が批判してたんだよ。" userName="Brian_K_White" createdAt="2025-03-30T04:27:38" color="">}}

{{<matomeQuote body="記事が作者を批判してたってこと？よくわかんない。" userName="saagarjha" createdAt="2025-03-30T05:47:44" color="">}}

{{<matomeQuote body="記事かリークの作者が、リークによって極秘のプロトタイプが暴露されたって言ってたんだよ。<br>俺はそれを記事が間違ってるって言ってたんだけど、半分間違ってたわ。<br>AIが公開ソースから入手したものをAIが公開したと思ってたんだよね。そしたらAIが秘密を漏らしたことにはならないじゃん。でも、AIが内部情報を公開したのはリークだし、機密情報の公開になるわ。たとえ他の場所で同じものが公開されてたとしてもね。" userName="Brian_K_White" createdAt="2025-03-30T06:19:39" color="">}}

{{<matomeQuote body="ハッキングの定義が緩くなってるよね。これってsandboxが本来の役割を果たしてるだけで、機密情報が盗まれたわけじゃないじゃん…" userName="tgtweak" createdAt="2025-03-28T20:40:33" color="">}}

{{<matomeQuote body="クールな記事だね。でも、大きな脆弱性ってわけじゃないよね。Googleがセキュリティを意識してるってことなんだろうけど。(会社のポリシーで機密扱いになってるって言ってたから、カウントされるんだろうけど、明らかに脆弱性ってよりは「技術的に脆弱性」って感じがする。)" userName="bluelightning2k" createdAt="2025-03-28T21:23:35" color="">}}

{{<matomeQuote body="組み込みの”strings”コマンドでバイナリからファイル名を抽出するのって、ハッキング/クラッキングとは言えないよね。<br>皮肉なことにGeminiのソースコードを手に入れても価値はないかもね。でも、モデルの学習に使われたコーパスにアクセスできたら面白かったかも（多くの人が疑問に思ってるけど…）。" userName="jll29" createdAt="2025-03-28T20:38:26" color="#785bff">}}

{{<matomeQuote body="＞but if you had found/obtained access to the corpus that the model was pre-trained with, that would have been kind of interesting<br>＞定義上、その入力は重みに圧縮されるんだよね。LLMのトレーニングは基本的に一方通行の（非可逆な）圧縮だって証明があるはずだから、元に戻す方法はないんじゃないかな？" userName="dvt" createdAt="2025-03-28T22:17:14" color="">}}

{{<matomeQuote body="オリジナルじゃないけど、ほとんど何でもできるくらいのコピーって感じだな。LLMとか他のネットの歴史が示すように、そこまで劣化してないこと多いし。" userName="jdiff" createdAt="2025-03-29T00:29:14" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="こいつら、これらのproto descriptorとか、他の多くが7年前にgithubでリークされてたことに気づかなかったのかな？<br>＞https://github.com/ezequielpereira/GAE-RCE/tree/master/proto…”" userName="jeffbee" createdAt="2025-03-28T21:11:40" color="">}}

{{<matomeQuote body="Googleがかなりセキュアだってことがわかるのはマジでおもろい。ほとんどの会社はこんなにうまくいかないと思う。" userName="theLiminator" createdAt="2025-03-28T20:36:15" color="#ff5733">}}

{{<matomeQuote body="そうそう、記事にも”Google Security Teamの協力のもと”って書いてあるし、協力的な感じで、完全なブラックボックスハッキングってわけじゃないよね。" userName="kccqzy" createdAt="2025-03-28T21:02:42" color="#785bff">}}

{{<matomeQuote body="ラスベガスみたいな派手な場所でやってる”LLM bugSWAT”イベントは、積極的なセキュリティred teamingへのコミットメントの証だね。<br>なんでセキュリティカンファレンスはベガスに惹かれるんだろう。個人的にはカンファレンスやるにはマジで嫌な場所だと思う。" userName="commandersaki" createdAt="2025-03-29T00:47:05" color="">}}

{{<matomeQuote body="真面目すぎるやつらを排除するのはむしろ良いことじゃん。ベガスを嫌う人と、red teamingを嫌う人って結構被ってると思う（まともな人間が攻撃とか悪用のテクニックを知ってるわけない、みたいな）。" userName="lmm" createdAt="2025-03-29T07:28:34" color="">}}

{{<matomeQuote body="皮肉なことに、ベガスはゲーム会場で不正をするやつらに厳しい目を向けてるんだよね。運営側は攻撃に対してかなり攻撃的。<br>BSidesみたいなセキュリティカンファレンスは世界中で開催されてて、red teaming的な活動も受け入れられてる。ベガスから多様化して、ボルダーみたいな景色がいい場所がいいな。" userName="commandersaki" createdAt="2025-03-29T08:35:50" color="">}}

{{<matomeQuote body="イベントスペースとホテルが比較的安いからね。大規模なカンファレンスを開催できる都市を見つけるのは難しいんだよ。" userName="zem" createdAt="2025-03-29T01:03:50" color="#785bff">}}

{{<matomeQuote body="何がわからないの？ベガスは文字通りカンファレンスのために作られたんだよ。" userName="desmosxxx" createdAt="2025-03-29T01:15:41" color="#38d3d3">}}

{{<matomeQuote body="マジそれな。めっちゃわかる。" userName="hashstring" createdAt="2025-03-29T01:04:50" color="#ff5733">}}

{{<matomeQuote body="それ、自分で答えちゃってるじゃん。" userName="numbsafari" createdAt="2025-03-29T00:56:02" color="">}}

{{<matomeQuote body="reInventはベガスで開催中。" userName="scudsworth" createdAt="2025-03-29T01:28:44" color="">}}

{{<matomeQuote body="sandboxをハックしたけど、何もリークしてないってオチ。記事としては面白いけどね。" userName="ein0p" createdAt="2025-03-28T18:52:18" color="">}}

{{<matomeQuote body="sandboxにあった内部protoファイルをリークしたらしいよ。セキュリティチームはsandboxの中身を全部チェックして、機密情報はないって判断したんだけどね。どうやら、セキュリティレビューのプロセスがうまくいってなかったみたい。あとは、blaze build systemが優秀すぎて、手順を忘れちゃってたのかもね。" userName="kccqzy" createdAt="2025-03-28T18:56:18" color="#ff5c5c">}}

{{<matomeQuote body="＞that contained lots of internal proto files<br>Google Chromeにもあるけどね。" userName="charcircuit" createdAt="2025-03-28T19:52:25" color="">}}

{{<matomeQuote body="いやいや、レベルが違うって。Chromium固有のAPIエンドポイントのprotoファイルと、google3のprotoファイルがあるんだよ。後者はGoogleのサーバーサイドのアーキテクチャに関する秘密を暴露しかねないけど、前者はChromium関連のコンポーネントに関する情報だけ。" userName="kccqzy" createdAt="2025-03-28T21:05:37" color="#45d325">}}

{{<matomeQuote body="えー、リークされた情報を見たかったなー。まあいいか。ナイスな発見と分析！prompt injectionみたいな問題がLLMにとってどれだけ重要か、最近気づいたんだよね。ローカルLLMしか興味ないから関係ないと思ってたけど。AIエージェントがネットから情報を収集するときにハッキングされる可能性があるってことか。マジか、ヤバくね？" userName="fpgaminer" createdAt="2025-03-28T18:35:11" color="#45d325">}}

{{<matomeQuote body="＞reading the wrong thing from the wrong backalley of the internet, and suddenly they are taken over by a mind virus of sorts. What a wild future.<br>それ、もうすでにインターネットで起きてるじゃん。" userName="20after4" createdAt="2025-03-28T19:25:47" color="">}}

{{<matomeQuote body="ネットで人がおかしくなるのを見てると、スノウ・クラッシュを思い出すわ。" userName="tcoff91" createdAt="2025-03-28T19:54:44" color="">}}

{{<matomeQuote body="最近AI関連で見た最高の文章：<br>”””AIアシスタントとかが普及するにつれて、セキュリティがちゃんと確保されてるかって問題が出てくるよね。セキュリティの基本原則を忘れちゃったみたいで、新しい脆弱性が生まれてるんだよ。”””<br>今回の件とか、色々あるよね。コピー＆ペースト開発が心配だわ。" userName="Cymatickot" createdAt="2025-03-29T09:52:52" color="#785bff">}}

{{<matomeQuote body="めっちゃ面白い記事じゃん！<br>＞でもさ、これらのファイルってGoogleがユーザーデータを分類するために使ってる内部カテゴリーなんだよね。<br>どんな分類なのかマジで気になる。せめて一つ例を教えてよ。例えば、”自閉症を持ってる”とか、”ユーザーの電話番号”みたいな感じ？" userName="qwertox" createdAt="2025-03-28T21:52:53" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
