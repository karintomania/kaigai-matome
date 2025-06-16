+++
date = '2025-06-09T00:00:00'
months = '2025/06'
draft = false
title = 'AppleがFoundation Modelsとコンテナ化フレームワークなどを発表 オンデバイスAIやXcodeへのAI統合で開発環境に変化？'
tags = ["Apple", "AI", "開発", "プログラミング", "Xcode"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> AppleがFoundation Modelsとコンテナ化フレームワークなどを発表 オンデバイスAIやXcodeへのAI統合で開発環境に変化？

引用元：[https://news.ycombinator.com/item?id=44226978](https://news.ycombinator.com/item?id=44226978)




{{<matomeQuote body="Fluid Glassとかについて語りたければ別のスレッドがあるけど、Xcode 26にはApple Developersにとってマジで面白い改善点があるね。生成言語モデル周りの新しいFoundationフレームワークはSwiftっぽくてAppleの開発者にはすごく良さそう。しかもローカルでオンデバイスで動くんだ。WWDCのセッションで旅行アプリで行程を生成する面白いサンプルアプリを見せてたよ。もう一つ大きいのは、ChatGPT（や他のモデル）統合でXcodeにネイティブに来るvibe-codingだね。これが開発体験を良くしそうだって思うのは、モデルとのやり取りを追跡できて簡単にロールバックできる点と、コードベースにコンテキストを与えてくれる点かな。前のすごく限定的なGPT統合より大幅に改善されてるみたいで、Apple Developersが人気のvibe-codingツールをネイティブで使える初めての機会だね。’ナプキンの落書きをXcodeにドラッグして動くプロトタイプにする’って機能は、Objective-Cで[myObject retain]って書いて育った身としてはマジでワイルドだわ。これらが完全に画期的な機能か？って言うと、Appleが歴史的にやってきたこと、つまり最初に乗り込まないけどUXをしっかり仕上げるって感じに近いと思うな。少なくとも、それは約束されてることだけど—これらのツールがどう機能するかはこれから見ないとね！<br>1: https://news.ycombinator.com/item?id=44226612" userName="gdubs" createdAt="2025/06/09 21:24:20" color="#ff5c5c">}}




{{<matomeQuote body="この”vibe coding”とかいう方向性にソフトウェアエンジニアリングが進んでいくの、マジで気が滅入るわ。コンピューターに魅了されてこの業界に入ったんだよ。コードの書き方を学んだ時は、このすごいマシンをどう制御するかだった。実験して何かを見つけ出す喜びが、ただ”生成”ツールに叩き込むってことにどんどん置き換わってる。これからどうなるか全く分からないけど、手書きでコードを書くクラフトマンシップがまだ価値を持つ世界が残ってくれたらいいな。俺はできるだけ長く”vibe coding”の流れには抵抗するつもりだよ。" userName="rubicon33" createdAt="2025/06/10 17:50:56" color="">}}




{{<matomeQuote body="それって、百科事典を優先してGoogle使うのを拒否してる年配の人みたいに聞こえるね。Vibe codingは、使う人がどうしたいかでどうとでもなるよ。具体的な指示を出して、すごい自動補完みたいに使いたければそうすればいい。ハイレベルな視点から使うこともできる。どっちにしても、AIコードはPRみたいにコードレビューしないとダメだよ。" userName="tansan" createdAt="2025/06/10 17:58:47" color="">}}




{{<matomeQuote body="＞ Foundation Modelsが正確に扱うトークンを気にする必要はない、APIがきれいにそれを抽象化してくれる [1]<br>俺も同じ質問があるんだ。Foundation Modelsフレームワークのディープダイブ動画は新しいFoundationModelsライブラリを使ったコードを見るのにいいけど、”ディープダイブ”としては、トークン化についてもっと知りたいな。誰か知ってる人いないなら、いつか詳細が開示されるといいな？<br>[1] https://developer.apple.com/videos/play/wwdc2025/301/?time=1..." userName="hbcondo714" createdAt="2025/06/09 22:37:32" color="">}}




{{<matomeQuote body="デベロッパーの視点からすると、トークンなんて気にする必要はまったくない、と俺なら言うかな—もし自分の推論フレームワークがそれを抽象化してないなら、最初にやるべきタスクはそれを修正することだよ。親コメントに対しては、そう、これはローカルモデル向けだから、トークンを気にするのが金銭的なコストを意味する限りでは、そうだね。" userName="refulgentis" createdAt="2025/06/10 03:16:17" color="">}}




{{<matomeQuote body="間違ってるかもしれないけど、これってiPhone 16のデバイスとiPhone 15 Proでしか動かないんじゃないかな？そうなるとユーザーベースがすごく限られちゃうし、ほとんどのアプリでは結局オンラインAPIを使わないといけなくなるだろうね。他のデバイス向けにも、小規模なモデルでもいいからAppleがプライベートクラウドで無料のAI APIを提供してくれたらと思ってたんだけど。" userName="pzo" createdAt="2025/06/10 07:43:47" color="">}}




{{<matomeQuote body="まあ、どれだけ深く入り込むかによるけどね。トークン化はパフォーマンス、速度と結果の両方に影響するから、詳細が重要になることはあるよ。" userName="IanCal" createdAt="2025/06/10 11:54:37" color="">}}




{{<matomeQuote body="俺はllama.cppのラッパーをウェブからAndroidまでメンテナンスしてるんだけど、APIから個別のトークンIDを得ることが、ウォールクロック時間とか語彙チェックから得られる情報以上のどんな情報になるのか、正直ピンとこないんだ。" userName="refulgentis" createdAt="2025/06/10 13:34:49" color="">}}




{{<matomeQuote body="もし今アプリ開発を始めたとしても、リリースできるくらい洗練される頃には、iPhone 16なんてすでに一年落ちのスマホになってるだろうし、十分な数の潜在顧客がいるだろうね。もし君のアプリが価値があって、数年後に人気が出たら、その頃にはiPhone 16は古いスマホになってて、妥当な最低ターゲットになるよ。パックが行くところへスケートするんだ（未来を見据えろ）。" userName="jjcob" createdAt="2025/06/10 13:46:37" color="">}}




{{<matomeQuote body="トークンIDだけだと必要性がよく分からないけど、constrained decodingするなら、トークンごとのlogprob vectorsは絶対いるよ。" userName="lqstuart" createdAt="2025/06/10 14:17:18" color="">}}




{{<matomeQuote body="いや、それがvibecodingと単なる高機能オートコンプリートを分けてるんだよ。本来の定義では、vibecodingには生成コードの最終レビューは含まれない。ざっと見て次に行くだけ。" userName="fragmede" createdAt="2025/06/10 18:29:34" color="">}}




{{<matomeQuote body="面白い指摘だね。最初は”なんでlogprobsが必要なの？ tool calls用のconstrained decodingで使わないけど…”って思ったんだけど、それは間違いだったわ！logprobsを捨ててから、制約を満たすトークンの中で一番高いlogprobを探す必要があったんだ。" userName="refulgentis" createdAt="2025/06/10 16:19:21" color="">}}




{{<matomeQuote body="メタな話だけど、”generatively”（生成的に）考えること自体が一つの技能だと思うんだ。問題空間全体をトップダウンでコントロールするんじゃなくて、仕事が成長するための条件を設定してるんだよね。<br>面白くなるのは、自分でやろうと思ってた作業を早めるんじゃなくて、自分が思いつかなかった方向に押し出されるところ。<br>エンジニアのことは分からないけど、うちの組織ではそう位置づけてるよ。GenAIはコード書いたりプロトタイプ作ったりするデザイン分野ではそこまで実用的じゃないけど、リサーチや発見作業にはめちゃくちゃ役立つって感じかな。<br>LLMはリサーチへのアプローチを完全に変えたし、製品を研究してユーザーから学ぶ方法に新たな技能をもたらしたと言えるね。" userName="spagoop" createdAt="2025/06/10 18:09:12" color="#38d3d3">}}




{{<matomeQuote body="AIアシストコーディングは全部Vibe Codingになったの？<br>AIとのコーディングは何でもあり得るけど、vibecodingがオートコンプリートとどう関係するのか分からないな。オートコンプリートはコードをちょっと書いてプログラムに補完させるけど、VCではエディタとほとんどやり取りしない。コピーペーストとか修正くらい。<br>Simon Willinsonの定義[0]だと手動修正も含まれないか怪しいけど、異論があれば読みたいね。<br>0 ＞ LLMが全部コード書いても、レビュー、テスト、理解してればそれはvibecodingじゃなくて、LLMをタイピング補助として使ってるだけ。<br>https://arstechnica.com/ai/2025/03/is-vibe-coding-with-ai-gn..." userName="aziaziazi" createdAt="2025/06/10 18:41:45" color="#ff5733">}}




{{<matomeQuote body="新しいFoundation modelsがオンデバイスってことは、学習済みの情報に限定されるのかな？<br>それとも、最新情報のためにネットにアクセスできる能力があるの？" userName="charliebwrites" createdAt="2025/06/10 16:32:19" color="">}}




{{<matomeQuote body="僕が理解してたKarpathyのvibecodingの定義は、実行中のアプリから感じた”vibe”に基づいて、コード自体は見ずにエージェントに口頭で指示するってやつだったな。" userName="msgodel" createdAt="2025/06/10 22:08:58" color="">}}




{{<matomeQuote body="定義は広くてテストも含むよ。洗練させるにはコードを見直して繰り返しが必要。<br>Vibe coding（またはvibecoding）はAIを使うソフトウェア開発手法で、人がLLMに問題を自然言語で指示し、LLMがコードを生成する。プログラマーは手動コーディングからAI生成コードのガイド、テスト、洗練に役割が変わるんだ。<br>https://en.wikipedia.org/wiki/Vibe_coding" userName="tansan" createdAt="2025/06/12 05:39:53" color="#ff5c5c">}}




{{<matomeQuote body="コーディングは楽しいけど、それで作ったものができるようになるのがもっと好きだな。手段であって目的じゃないんだ。10年以上やってると作業自体は飽きるときもあるしね。料理も好きだけど、食べる方が好き。手段だし、常に料理の過程を楽しむ必要はないんだよ。" userName="tansan" createdAt="2025/06/12 05:37:53" color="">}}




{{<matomeQuote body="Vibe codingのWikipediaへのリンクとその定義だよ。<br>Vibe coding（またはvibecoding）はAIを使うソフトウェア開発手法で、人がLLMに問題を自然言語で指示し、LLMがコードを生成する。プログラマーは手動コーディングからAI生成コードのガイド、テスト、洗練に役割が変わるんだ。<br>https://en.wikipedia.org/wiki/Vibe_coding" userName="tansan" createdAt="2025/06/12 05:34:18" color="#ff5733">}}




{{<matomeQuote body="拡張アプローチというか、能力融合みたいなやり方もあるし、動くまでひたすら再生成連打する方法もあるよね。" userName="hooverd" createdAt="2025/06/10 18:21:21" color="">}}




{{<matomeQuote body="Vibe codingはかなり広義でスペクトラムだよ。<br>Vibe coding（またはvibecoding）はAIを使うソフトウェア開発手法で、人がLLMに問題を自然言語で指示し、LLMがコードを生成する。LLMがコードを生成し、プログラマーは手動コーディングからAI生成コードのガイド、テスト、洗練に役割が変わるんだ。<br>https://en.wikipedia.org/wiki/Vibe_coding" userName="tansan" createdAt="2025/06/12 05:35:24" color="">}}




{{<matomeQuote body="そのイライラ分かるよ。でも良くも悪くも、コンピュータ言語はいずれ人間の言語に取って代わられると思う。避けられないね :(" userName="pyman" createdAt="2025/06/13 11:26:43" color="">}}




{{<matomeQuote body="ああ、違うよ。俺はマネージャーになりたくない一介のIC（Individual Contributor）だよ。単にコーディングが好きな人もいるんだ。" userName="swsieber" createdAt="2025/06/13 15:24:48" color="">}}




{{<matomeQuote body="個人的にはソフトウェア開発のクラフト（職人技）はまだ好きだよ。でも定型的な部分は本当に楽しくなくなる時もある。例えば今週体調崩して、いつものやり方でやる元気なかった時にChatGPTに頭の中のプロトタイプ作らせるのは楽しかったな。イケアの家具の世界にいるけど、手作りの家具を欲しがる人はいるし、作ることに深い満足感を感じる人もいる。がっかりする気持ちは分かるよ。僕らが経験してるのはかなり衝撃的な進歩だし、これにたまに不安を感じたり、昔を懐かしく思ったりしないなら、それは見て見ぬふりをしてるってことだよ。" userName="gdubs" createdAt="2025/06/12 16:47:06" color="#ff5733">}}




{{<matomeQuote body="この投稿読んでると、バズワードビンゴやってるみたい！" userName="alt227" createdAt="2025/06/10 18:27:23" color="">}}




{{<matomeQuote body="LLM機能を既存アプリに追加するのはすぐできそうだけど、AppleのオンデバイスAIは古いiPhoneとかAndroid/Webユーザーも考えなきゃいけないのが大変だよ。iPhone 16だけの機能は開発の助けにならないし、質もまだ不明だしね。" userName="rs186" createdAt="2025/06/10 17:24:59" color="#38d3d3">}}




{{<matomeQuote body="Containerization FrameworkがmacOSネイティブコンテナだったらよかったのにな！ Linux VMはOrbStackとかで楽に動かせるけど、macOSネイティブコンテナがないのが本当にキツイんだ。Appleの協力ないと難しくて、既存の試みもダメか限界がある。これがあればギャップを埋められたのに、OrbStackをSherlock’dしただけっぽいね。<br>1: https://macoscontainers.org/<br>2: https://github.com/macOScontainers<br>3: https://github.com/Okerew/osxiec" userName="pxc" createdAt="2025/06/09 19:45:00" color="#ff5733">}}




{{<matomeQuote body="macOSにネイティブコンテナがないって言うけど、.appバンドルもコンテナっぽい機能結構あると思うんだ。Linuxみたいにホストカーネルで動くし、バンドルは共有しやすい。署名やApp Storeで改変防げるし、Swift ABIで将来も動きそう。サンドボックスでファイルやネットワークも制限できる。完全に同じじゃないけど、似た機能は持ってるよ。" userName="emadda" createdAt="2025/06/10 11:17:39" color="#38d3d3">}}




{{<matomeQuote body="ある意味正しいけど、全然違うよ。Linuxコンテナの凄さは、まるでrootでOS全部使えるみたいに思えること。macOSじゃできないんだ。サンドボックスじゃなくてジェイル（牢屋）に近い。アプリからHomebrew入れてpostgres動かす、みたいなことがユーザー環境に影響なくできない。これが“macOSネイティブコンテナがない”って言われる理由だと思うな。" userName="xyzzy_plugh" createdAt="2025/06/10 14:13:42" color="#ff5733">}}




{{<matomeQuote body="いい指摘だね、Dockerみたいなレイヤードファイルシステムがないと、コンテナのファイル書き込みを分離できないのが.appの欠点だね。" userName="emadda" createdAt="2025/06/11 09:19:27" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="macoscontainersのサイトは空じゃなくて、https://darwin-containers.github.io に移ったんだよ。<br>詳細は https://github.com/darwin-containers を見て。開発者はすごく反応いいよ。Appleの強みの一つは環境の整合性だから、コンテナ化や自動化はAndroidとかに比べて弱いのかもね。" userName="doctorpangloss" createdAt="2025/06/09 20:30:05" color="#ff33a1">}}




{{<matomeQuote body="ああ、それいいね！ 移転したの忘れてて見つけられなかったんだ。" userName="pxc" createdAt="2025/06/09 20:42:55" color="">}}




{{<matomeQuote body="全く同感！ このFrameworkがWSL2みたいにLinuxマイクロVMでcontainerd動かす既存プロジェクトと違うことできるのかな？ keyなのはRPCフレームワーク、OrbStackのmacctlみたいに。GRPCとかサンドボックス、コンテナの言及は期待できるかも。<br>https://github.com/apple/containerization/blob/d1a8fae1aff6f..." userName="griels" createdAt="2025/06/10 17:24:00" color="#ff5c5c">}}




{{<matomeQuote body="これって何に使えるの？" userName="NewJazz" createdAt="2025/06/09 20:02:28" color="">}}




{{<matomeQuote body="CIマシンとかビルド環境の分離に役立つよ！<br>ネイティブコンテナのサンドボックス機能が公開APIになれば、開発ツールにも使えるかも。DockerやBuildKitがWindowsコンテナサポートしてるみたいに、macOSもできたらVMなしで孤立ビルドしやすくなる。Daggerみたいなツールも再現性高いビルドをサポートできるね。devcontainersも良くなるかも。<br>Nixも使えるけど、macOSでのサンドボックスは変で不完全。でもNix自体もこのネイティブコンテナから恩恵を受けるかも！" userName="pxc" createdAt="2025/06/09 23:09:42" color="#785bff">}}




{{<matomeQuote body="CICDでたくさんのプロジェクトをビルドしたりデプロイしたりするなら、クリーンなビルド環境って超重要だよね。<br>特にMacを単体のビルドマシンとして管理するのって、2025年になってもマジで頭痛い問題だよ。" userName="raydev" createdAt="2025/06/09 22:05:21" color="#ff33a1">}}




{{<matomeQuote body="AppleのVirtualization.frameworkで作られたCirrus CLIとかTartじゃダメなの？<br>何が問題なの？<br>ここ見てみてよ。<br>https://tart.run<br>https://github.com/cirruslabs/cirrus-cli" userName="BrandonSmith" createdAt="2025/06/09 23:00:02" color="#45d325">}}




{{<matomeQuote body="Tartって素晴らしいよね！<br>現状ではたぶんこれが一番良いんだけど、AppleがVMに課してるいくつかの制限にぶつかるんだ。<br>（その制限は、たぶんAppleがMacをたくさんのスライスに分割して貸し出すのをあまり望んでないってことのヒントかも。）<br>Tartが実はクールで、この議論にもちょっと関係してるのは、OSイメージを配るのにOCIフォーマットを使ってること！<br>（あと、Tartはプロプライエタリだってことも注意しとこう。オープンソースだったり、組み込みだったり、両方だったりする方が好きなユーザーもいるかもね。）" userName="pxc" createdAt="2025/06/09 23:12:34" color="#ff33a1">}}




{{<matomeQuote body="これって、Linuxとか*BSDでコンテナ＼jailsが役に立つのと一緒だね。<br>VMみたいに完全に別のカーネルを立ち上げて処理する必要がないのが良いとこ。" userName="wpm" createdAt="2025/06/09 20:09:50" color="">}}




{{<matomeQuote body="macOSのアプリって、もうサンドボックス化されてるじゃん。<br>実際、Mac App Storeに公開するには必須だしね。<br>これがユーザーランドのバイナリにも広がったら良いな、ってのは同意だよ。" userName="tensor" createdAt="2025/06/09 20:14:00" color="">}}




{{<matomeQuote body="開発で使う依存関係って、マジで意味のあるサンドボックス化が難しいんだよね。<br>特定のバージョンのPythonとかNodeとかPerlとか、そういうのをグローバルとか名前空間とかじゃなくて、プロジェクトごとにコンテナに全部ぶち込みたいの。<br>今はVMくらいしか良い解決策ないかもね。" userName="Etheryte" createdAt="2025/06/09 20:25:52" color="#ff5c5c">}}




{{<matomeQuote body="うーん、devenv試したことある？<br>https://devenv.sh/<br>PythonならUVも結構良いよ。" userName="NewJazz" createdAt="2025/06/09 20:34:25" color="#ff5733">}}




{{<matomeQuote body="UVって、そんなに強力な隔離はしてくれないんだよね。<br>例えば、UVでインストールしたパッケージをimportする時に、ホームフォルダの変なファイルを消そうとしたりすることもあるらしいよ。" userName="haiku2077" createdAt="2025/06/09 21:09:23" color="#45d325">}}




{{<matomeQuote body="コンテナって、Linuxの世界だとほとんどサーバーサイドで使うよね。<br>一部デスクトップアプリ（Flatpakは基本的にコンテナランタイム）もあるけど、やっぱり本命はサーバーコード。<br>macOSのコンテナを使って、エンドユーザー向けのアプリを開発したり配ったりすると思う？" userName="NewJazz" createdAt="2025/06/09 20:15:26" color="">}}




{{<matomeQuote body="このプロジェクトのこと、もしかしたら勘違いしてるかもだけど、GitHubにあるプロジェクトを安全に実行できる方法があったら良いなって思うんだ。<br>最近のOSでもファイルのアクセス制限とかはできるようになったけど、ディスクとかネットワークに全くアクセスできない「安全に実行できるバージョン」みたいなのがマジで欲しい。<br>今のファイアウォールツールって、使いにくいし（個人的には信頼できないし）。" userName="itake" createdAt="2025/06/10 03:36:09" color="#38d3d3">}}




{{<matomeQuote body="XcodeみたいなmacOSだけ動くソフトとか、Environment integrityが大事なブラウザとかをうまく連携させる話かな。" userName="doctorpangloss" createdAt="2025/06/09 20:25:14" color="">}}




{{<matomeQuote body="LinuxからmacOSのアプリを作りたい時に、今はいろいろ大変だけど、macOSをコンテナ化できたら、コンテナの中で簡単にビルドできるかもってことね。" userName="csomar" createdAt="2025/06/10 05:02:21" color="">}}




{{<matomeQuote body="いやいや、それは全然違うよ。LinuxカーネルでmacOSアプリをネイティブに作れるわけじゃないんだから。" userName="nixosbestos" createdAt="2025/06/10 05:07:01" color="">}}




{{<matomeQuote body="AIもいいけど、コンテナ化フレームワークって話すごくない？ MacでLinuxコンテナがネイティブで動くなら、作業がめっちゃ楽になりそうだし、Dockerも使いやすくなるかも。" userName="dedicate" createdAt="2025/06/09 18:02:18" color="">}}




{{<matomeQuote body="macOSでLinuxコンテナのネイティブサポートは無理だよ、Linuxカーネル頼りだから。きっとAppleがWSLみたいなLinux仮想化レイヤー出すんだ。今よりマシだろうけど、LXCだけでDocker対応しないなら、みんなDocker Desktop使うことになるね。" userName="paxys" createdAt="2025/06/09 18:13:20" color="#ff5c5c">}}




{{<matomeQuote body="Appleって前からネイティブのハイパーバイザー持ってるんだ。きっと、https://mac.getutm.app/ みたいにハイパーバイザーの上で動くソフトの、組み込み版みたいなもんじゃないかな。" userName="tensor" createdAt="2025/06/09 18:25:29" color="#785bff">}}




{{<matomeQuote body="参考までに、CLIツールとバックエンドのGitHubリポジトリはこれだよ[1][2]。WSLv1と違って、やっぱりVMベースのコンテナみたいだね。APIでLinuxカーネル作ったり、VM起動したり、管理したりできるみたい。<br>[1] https://github.com/apple/container<br>[2] https://github.com/apple/containerization" userName="12_throw_away" createdAt="2025/06/09 20:55:11" color="#ff5733">}}




{{<matomeQuote body="macOSってBSDベースだよね？ コンテナってBSDのjailが元じゃないの？ コンテナはほぼLinux向けだけど、その辺どう思う？ みんなの意見が聞きたいな。" userName="bandoti" createdAt="2025/06/09 18:41:21" color="">}}




{{<matomeQuote body="ハイパーバイザー使うってことは、WindowsでWSL2みたいにLinuxのVMを動かすだけだよ。ネイティブとは違う。本当のネイティブLinux（やDocker）サポートは、WSL1みたいにmacOSカーネルがLinuxのシステムコールを動かす感じになるね。" userName="watermelon0" createdAt="2025/06/09 19:00:25" color="#ff33a1">}}




{{<matomeQuote body="うんうん、”オープンソース基盤”で作られてるって見た！ これって何かのプロジェクトかな？ 知ってる？" userName="marviel" createdAt="2025/06/09 18:09:04" color="">}}




{{<matomeQuote body="Linux VMのメモリ管理についてよく知らないんだけど、VMの最大の不満はOSカーネルがハードウェアの全RAMにアクセスできるって思い込んでることなんだよね。プロセスみたいにメモリを予約/コミットする仕組みじゃないんだ。<br>VM内で動いてることをLinuxが認識して、使ったメモリをホストOSに返せるようなVM技術ってあるのかな？それか、Appleがカーネルをパッチしてそれができるようにするかも？<br>MacでDockerをVMで動かすのは、使うメモリ量が多すぎるせいでいつも結構大変だったんだよ、MacってそんなにRAM積んでないしね。" userName="torginus" createdAt="2025/06/10 08:06:21" color="#ff33a1">}}




{{<matomeQuote body="もしWindowsカーネルがそういうsyscallに応答するようにできるなら、XNU（macOSカーネル）でもっと簡単に教えられるはずだよね。でも、OS/2を統合しようとしてた頃からWindowsカーネルには「personalities」の概念があったらしいから、XNUでゼロからやるのはsyscalls自体じゃなくて全体としてすごい大変な作業かもね。" userName="mdaniel" createdAt="2025/06/09 19:27:29" color="">}}




{{<matomeQuote body="彼ら（Apple）はOrbStackをSherlockedしたんだね。" userName="wmf" createdAt="2025/06/09 18:54:18" color="">}}




{{<matomeQuote body="Docker Inc.にとって地面がどんどん狭くなってるね。<br>Docker Desktop for Macを売ってるけど、それはだんだん重要じゃなくなってライセンスも減り始めるかも。<br>Linuxにはcliだけしかないけど、それは人々が離れていくだけだから閉鎖できない。<br>Docker Hubは他の全てのクラウドプロバイダーに組み込まれたレジストリには多分勝てないだろうね。" userName="WhyNotHugo" createdAt="2025/06/09 20:40:06" color="#38d3d3">}}




{{<matomeQuote body="最近「コンテナ」は「OCI互換コンテナ」とほぼ同義語で、OCI自体は基本的にはDockerの標準（ランタイム、イメージなど）を後付けしたものなんだ。<br>だからその観点からすると、全ての「コンテナシステム」は必然的に「Dockerライク」になるし、それはLinuxのnamespacesとcgroupsを使うってことだね。" userName="formerly_proven" createdAt="2025/06/09 19:17:33" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="もし彼ら（Apple）がカーネルにLinux syscallインターフェースを実装すれば、それは絶対に可能だよ。" userName="msgodel" createdAt="2025/06/09 19:38:54" color="">}}




{{<matomeQuote body="BSD jailsはDockerみたいなものが提供するものとは全く違う設計だよ。<br>Jailsはファーストクラスシチズンで、システムに深く組み込まれてるんだ。<br>Dockerのようなツールは、隔離を作るために複数のLinux機能/ツールを組み立てて利用してる。<br>さらに、僕の記憶が正しければ、FreeBSD jailsのロジックはDarwinカーネルには入らなかったはず。誰か訂正してくれたら嬉しいな。" userName="McAlpine5892" createdAt="2025/06/09 19:06:52" color="#38d3d3">}}




{{<matomeQuote body="WSLv1ってネイティブのDockerサポートしてなかった気がするんだよね（違ったらゴメン）。でも、Apple OSはWindowsよりLinuxに近いから、Appleの方がWSL1みたいなやり方に向いてるんじゃない？って思うな。" userName="cogman10" createdAt="2025/06/09 22:32:09" color="">}}




{{<matomeQuote body="＞ VMがホストOSにメモリ返せるかっていうのはVM技術であるか？<br>それってゲストOSじゃなくてハイパーバイザーの問題じゃない？ゲストOSには「メモリがXだけ使えるよ」って伝えられるだけで、実際にそのメモリがあるかどうか（だからVMにメモリを過剰に割り当てられるわけ）や、ハイパーバイザーがその全量を割り当てるか、ゲストOSが実際に使ってる分だけ割り当てるかは、ハイパーバイザー自体によるべきだと思うな。" userName="HighGoldstein" createdAt="2025/06/10 09:31:26" color="">}}




{{<matomeQuote body="これはクールだけど、君が言ってるほど革命的でもないかも。だってPodmanとかOrbstackとかColimaって既にインストールできるじゃん？Appleがどのオープンソースフレームワークを使ってるか知らないけど、これってそれらのツールをOSレベルで統合した感じだよね。確かに開発者にはかなり大きなメリットだし、便利になるだろうけど、ゲームチェンジャーかって言われるとどうかな。" userName="mmcnl" createdAt="2025/06/09 19:31:18" color="">}}




{{<matomeQuote body="WSLのスループットはファイル集約型の操作には全然足りないよ。Windowsを削除してLinuxを使う方がずっと簡単で手っ取り早い。" userName="enceladus06" createdAt="2025/06/09 20:40:13" color="">}}




{{<matomeQuote body="＞ コンテナ化フレームワークを使えば、開発者はMac上で直接Linuxコンテナイメージを作成、ダウンロード、または実行できるようになる。これはApple Silicon向けに最適化されたオープンソースフレームワークに基づいて構築されており、コンテナイメージ間のセキュアな分離を提供する<br>これが彼らの言い回しだけど、私には単なる仮想化システムを示唆してるように思えるな。Linuxコンテナイメージは一般的にカーネルを含んでるし。" userName="tensor" createdAt="2025/06/09 20:06:16" color="">}}




{{<matomeQuote body="＞ Linuxコンテナイメージは一般的にカーネルを含んでいる。<br>いや、コンテナがVMと違うのは、まさにホストカーネルへの依存が必要な点なんだ。だから、カーネルは含まないよ。" userName="hackyhacky" createdAt="2025/06/09 20:34:09" color="#ff5c5c">}}




{{<matomeQuote body="Docker Desktopを使わなくて済むのは最高だね。今MacOSでPodmanをいくつかで使ってるけど、あれも結局別のツールだし。MacOSとLinuxで同じツールを使えたら嬉しいな。" userName="cmiles74" createdAt="2025/06/09 18:52:48" color="">}}




{{<matomeQuote body="そうだね。NTっていう素晴らしい技術をみんな一貫して過小評価してるよ。本当に時代を先取りしてたんだ。そして、Microsoftが今やってることが残念でならないね。" userName="9dev" createdAt="2025/06/09 21:41:56" color="">}}




{{<matomeQuote body="TFA（本記事）のスクリーンショットには、Dockerライクなワークフローでイメージを取得したり、タグやダイジェストを表示したり、公式のDockerライブラリ版のPostgresを実行したりしてるのがかなりハッキリと写ってるね。" userName="jzelinskie" createdAt="2025/06/09 18:16:40" color="">}}




{{<matomeQuote body="WSL2はVMだからLinuxファイルシステム使うのに性能ペナルティほぼないんだって。Windowsファイルはちょっと遅いけど、それは最適化されてないから。WSL2はWindowsの完璧なドライバとLinux環境の両方を使えるのが強みだよ。Hybrid GPUとかも設定いらないし、バッテリーも持つ。PhotoshopもLinuxアプリもどっちも動くんだ。" userName="okanat" createdAt="2025/06/10 02:19:10" color="#ff5733">}}




{{<matomeQuote body="ゲストOSが使ってるメモリをハイパーバイザーが知る方法ってどうなの？ 過去に使ったけど今は不要なメモリとか、ハイパーバイザーには区別つかないかも。これはハイパーバイザーとゲストOS間の連携の問題だね。物理メモリはハイパーバイザー任せだけど、使う量はゲストOSしか知らないんだから。" userName="SkiFire13" createdAt="2025/06/10 12:08:29" color="">}}




{{<matomeQuote body="15年前、友達がAppleはOSXとiOSをiPadで統合するって言ってたんだ。WWDC見るたびにそうなりそうだったし、今やiPadはタッチスクリーンのMacBook Airみたいだよね。ビデオ編集とかプログラミングとか3Dアートとか、重い作業しないならiPadで十分じゃない？" userName="chakintosh" createdAt="2025/06/09 18:37:31" color="#45d325">}}




{{<matomeQuote body="ほとんどの人はラップトップの方がいいと思うな。iPadはペンシル使うアーティストとか動画見るのには最高だけど、それ以外だとMacbookの方が断然パワフルで使いやすいよ。" userName="burntalmonds" createdAt="2025/06/09 19:02:50" color="">}}




{{<matomeQuote body="15年もやってないんだから、AppleはOS統合する気ないってことだよ。同じ期間にMacbookは全部作り直されたでしょ。ハードウェアもソフトも統合の障壁じゃない。エコシステムが合わないんだよ。プロ向けデバイスはフルコントロール必要だけど、Appleはi-Deviceでそれはさせない。30%の手数料が大きすぎるからね。" userName="paxys" createdAt="2025/06/09 18:51:23" color="#ff33a1">}}




{{<matomeQuote body="Apple Silicon Macがどれだけオープンか知りたいなら、ここ見てよ：https://asahilinux.org/docs/platform/security/#per-container...<br>他のSecure Bootは全部かゼロだけど、Appleは必要な分だけセキュリティを緩められる自由をMacユーザーに与えてるんだ。だから信頼できるmacOSの隣にAsahi Linuxみたいなのを入れることもできる。MicrosoftやGoogleみたいに全部ロックインか自分で何とかするかのどっちかじゃないんだよ。" userName="LoganDark" createdAt="2025/06/09 19:28:55" color="#45d325">}}




{{<matomeQuote body="あなたはたぶん多くの人がPCに求める能力を過大評価してるよ。キーボード付きケースを使えば、iPadは色々便利な点があって、良いラップトップにもなるんだ。" userName="poulsbohemian" createdAt="2025/06/09 19:47:36" color="">}}




{{<matomeQuote body="「完全にロックされるか、完全に自力でやるか」ってのが何を意味するか分からないな。Pixelをroot化するのは簡単だし。機能制限で罰するとかって話なら、Appleも（少しだけど）やってるよ。https://github.com/cormiertyshawn895/RecordingIndicatorUtili..." userName="NotPractical" createdAt="2025/06/09 23:40:50" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
