+++
date = '2025-03-12T00:00:00'
months = '2025/03'
draft = false
title = 'Gemma 3がついに登場！128Kのコンテキストをサポートする最強モデルがオープンリリース'
tags = ["AI", "機械学習", "オープンソース", "技術ニュース", "Gemma"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Gemma 3がついに登場！128Kのコンテキストをサポートする最強モデルがオープンリリース

引用元：[https://news.ycombinator.com/item?id=43340491](https://news.ycombinator.com/item?id=43340491)

{{<matomeQuote body="Gemma 3がついに出たよ！マルチモーダル（画像＋テキスト）、128Kコンテキスト、140以上の言語をサポートし、1B、4B、12B、27Bサイズでオープンウェイトと商用利用も可能だ。Gemma 3のモデル概要はコチラだよ：<br>https://ai.google.dev/gemma/docs/core<br>Huggingfaceのコレクションはここ：<br>https://huggingface.co/collections/google/gemma-3-release-67...<br>ollamaもあるよ：<br>https://ollama.com/library/gemma3" userName="meetpateltech" createdAt="2025-03-12T06:59:01" color="#38d3d3">}}

{{<matomeQuote body="ちょっと関係ないかもしれないけど、プレゼンテーションとドキュメントがめちゃくちゃ迷走してるのが衝撃だわ。親リンクはstorage.googleapis.comだし、ドキュメントはai.google.devにあって、公告はこっちだよ：<br>https://blog.google/technology/developers/gemma-3/<br>試すのはここ：<br>https://aistudio.google.com/<br>こういうまとめてくれるポストがあるのは助かるけど、PMさん、これをai.google.com/geminiとかにまとめてくれないかな。" userName="setgree" createdAt="2025-03-12T18:30:25" color="#38d3d3">}}

{{<matomeQuote body="どうやらai.google.comは今はai.googleにリダイレクトされてて、実際のGeminiの情報はai.google.devにあるみたいだね。" userName="matteocontrini" createdAt="2025-03-13T09:27:16" color="">}}

{{<matomeQuote body="コードはここで見れるよ：<br>https://github.com/google-deepmind/gemma<br>ウェイトはここからダウンロードできるよ：<br>https://www.kaggle.com/models/google/gemma-3/" userName="bigdict" createdAt="2025-03-13T02:38:21" color="#ff5733">}}

{{<matomeQuote body="関係ある理由は二つあるんだな：<br>1) 発見しやすさ<br>2) “システムの構造は組織を映す”ってことで、バラバラな構造っていうのは、統一感のある製品結果を生むのが難しくなるってことだよ。" userName="jhayward" createdAt="2025-03-12T23:55:34" color="">}}

{{<matomeQuote body="＞システムの構造は組織を映す<br>君が挙げたのは：<br>- CDNに保存された静的PDFファイル一つ<br>- 会社のブログ静的ウェブサイト一つ<br>- 開発者ドキュメント静的ウェブサイト一つ<br>- インタラクティブな製品のURL一つだね。<br>Googleのバラバラさを指摘するのは好きだが、これがそんなにいい例とは思わないな。一緒のベースホストから運営したら、小さなスタートアップ以外は怖いわ。" userName="mtrovo" createdAt="2025-03-13T12:00:59" color="">}}

{{<matomeQuote body="いくつものドメインがあるのは問題だね、多くのチームが関わってることを示唆してるから。料理する人が多いほど、Gemini 1のローンチみたいな混乱が繰り返される可能性が高いからさ。Googleが製品を見つけて理解するユーザー体験を真剣に考えているのか知りたいんだよ。重要な使用情報がネット中に散らばってるのは良い印象じゃないね。簡単な問題が気づかれない、または解決できないというのは、もっと深いプロセスの問題を示唆しているよ。" userName="setgree" createdAt="2025-03-13T15:38:27" color="#38d3d3">}}

{{<matomeQuote body="＞システムの構造は組織を映す<br>Conwayの法則がこの概念の一般的な用語だよ。<br>https://en.wikipedia.org/wiki/Conway%27s_law" userName="rodiger" createdAt="2025-03-13T16:55:42" color="">}}

{{<matomeQuote body="ollamaのページによれば、Gemma 27BがDeepseek v3とo3-miniをlmarenaで打ち負かしてるんだ。すごく楽しみだよ！" userName="derbaum" createdAt="2025-03-12T07:26:58" color="#ff33a1">}}

{{<matomeQuote body="同感！" userName="Hiskias" createdAt="2025-03-14T07:30:20" color="">}}

{{<matomeQuote body="LM Studioでまだ動かない。モデル読み込み時にエラーが出るんだよね（エラー6、なんだそれ。最初の5は見逃してよかった）。" userName="LeoPanthera" createdAt="2025-03-12T07:40:39" color="">}}

{{<matomeQuote body="最新版のllama.cppが必要だよ。それにAMDカード持ってて最近ドライバ更新したなら、戻してみて。文句言う人はROCm使ってることが多いみたい。Gemma 3はLM studioで問題なく動くから、GGUFやMLxも手に入るよ。" userName="genewitch" createdAt="2025-03-13T11:01:07" color="#45d325">}}

{{<matomeQuote body="＞モデルを読み込む時にエラーが出るって言ってるけど、公式モデルじゃないから、どのモデル使ってるの？頼りにしてるサードパーティが何かやらかしたかもよ。" userName="diggan" createdAt="2025-03-12T14:20:09" color="">}}

{{<matomeQuote body="最新版のllama.cppにアップデートしてね。" userName="osanseviero" createdAt="2025-03-12T15:23:13" color="">}}

{{<matomeQuote body="＞ollama: https://ollama.com/library/gemma3<br>0.5.11より新しいollamaが必要。多分最近リリースされたv0.6.0だね。<br>＞新モデル:<br>＞* Gemma 3: Google Gemma 3モデルが1B, 4B, 12B, 27Bのサイズで利用可能。" userName="genpfault" createdAt="2025-03-12T17:07:36" color="#45d325">}}

{{<matomeQuote body="0.5.13では動かなかった。0.6.0にアップグレードしたよ。" userName="starik36" createdAt="2025-03-12T18:13:31" color="">}}

{{<matomeQuote body="＞オープンウェイトってどういう意味なの？重みをダウンロードするだけで済むの？HuggingFaceのリポジトリ開くと条件に同意しろって言われるんだけど、これって他のプロプライエタリなバイナリと何が違うの？1Passwordみたいなのもオープンソフトってことなの？" userName="diggan" createdAt="2025-03-12T14:19:28" color="">}}

{{<matomeQuote body="ブラウザのアドレスバーで”google”を”unsloth”に置き換えれば、hfにサインアップせずにダウンロードできるよ。" userName="idonotknowwhy" createdAt="2025-03-12T14:35:53" color="">}}

{{<matomeQuote body="どこで重みを入手しても、Googleはモデル/重みの条件を守る必要があると言ってるよ。<br>＞Gemmaの使用、再生、変更、配布、実行、表示の各部分または要素を使用することにより、あなたはこの合意に縛られることに同意します。<br>利用する予定があるならビジネスで使う時に知っておくといいよ。これを考えると「オープンウェイト」って何がオープンなのか全然わからないね。" userName="diggan" createdAt="2025-03-12T15:56:50" color="#ff33a1">}}

{{<matomeQuote body="Linuxにもライセンスの利用条件があって、詳しく見る必要があるよね。Gemmaのライセンスは他のモデルより厳しめで、そのせいでコミュニティの調整をする人が少ないのは確かだね。" userName="staticman2" createdAt="2025-03-12T16:53:44" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="OSIのオープンソースの定義によると、使用に関して制限をかけることはできないって。Linuxのライセンスはどんな領域で使われても制限がないからいいよね。Metaのllamaのライセンスは制限があるから問題になったんだ。" userName="keheliya" createdAt="2025-03-12T17:59:32" color="#ff5733">}}

{{<matomeQuote body="Linuxの利用条件のリンクを貼ってくれる？検索しても何も出てこなかったんだ。" userName="homarp" createdAt="2025-03-12T19:38:38" color="">}}

{{<matomeQuote body="あ、コメント間違ったかも。Linuxには”複製、配布、改変のための条件”があって、利用条件ではないんだよ。" userName="staticman2" createdAt="2025-03-12T20:22:35" color="">}}

{{<matomeQuote body="ここにLinuxのライセンスルールのリンクがあるよ：<br>https://www.kernel.org/doc/html/latest/process/license-rules...<br>https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html" userName="balnaphone" createdAt="2025-03-12T20:03:10" color="">}}

{{<matomeQuote body="こういう会社は明らかな反論を恐れて、実際に規約を強制しようとしないと思うよ。" userName="whimsicalism" createdAt="2025-03-12T15:59:44" color="">}}

{{<matomeQuote body="そうだね、でもいつかそうなるかも。Googleの弁護士が大胆になることに賭けられる？自分は賭けないし、仮のビジネスにもリスクをかけたくないな。" userName="diggan" createdAt="2025-03-12T16:05:57" color="">}}

{{<matomeQuote body="”オープンウェイト”っていうのはモデルファイル（重み）を自由にコピーできるライセンスのことだね。訓練データから作れる”オープンソース”モデルはほとんど存在しない。" userName="svachalek" createdAt="2025-03-13T00:04:29" color="#ff5c5c">}}

{{<matomeQuote body="Gemma-22bの大ファンだよ！これも楽しみにしてる！" userName="upghost" createdAt="2025-03-12T12:18:18" color="">}}

{{<matomeQuote body="Gemmaチームからこんにちは！Gemma 3をリリースしたばかりで、みんなに見てもらうのが楽しみ！質問があればここに書いてね。すぐに答えるから。私たちの意見で、Google DeepMindの意見じゃないよ。<br>PS: 私たちは採用中だよ：<br>https://boards.greenhouse.io/deepmind/jobs/6590957" userName="alekandreev" createdAt="2025-03-12T07:59:29" color="#38d3d3">}}

{{<matomeQuote body="Gemma3 12B（https://ollama.com/library/gemma3; 自分の3060 12GBでフル稼働中）とMistral Small 3 24B（https://ollama.com/library/mistral-small; CPUに10%オフロード）の比較中だが、Gemma3のモデルが2倍小さいのに、このプロンプト評価（プレフィル）が何でこんなに遅いのか知ってる？<br>Gemma3 12Bはプロンプト評価が約100t/s、評価が15t/s。<br>MistralSmall3 24Bはプロンプト評価が約500t/s、評価が10t/s。" userName="heinrichf" createdAt="2025-03-12T10:14:02" color="#ff5c5c">}}

{{<matomeQuote body="レポートありがとう！Ollamaチームと直接連携して、これを調査するから。" userName="alekandreev" createdAt="2025-03-12T10:33:10" color="">}}

{{<matomeQuote body="コンテキストサイズはどれくらいで試したの？RTX3080でopenwebui使ったけど、2048（デフォルト）だと推論がほぼ倍速で、4096にすると遅くなるんだ。ただ、GPUの使用率が50%しかないし、理由がわからないのが謎。" userName="remuskaos" createdAt="2025-03-13T16:47:56" color="">}}

{{<matomeQuote body="Gemma2は家でよく使ってるけど、まだまだ強力だし、9B版は2080Tiで動いてる。プロンプトに従う点と全体的な能力が良いから使いやすい。Gemma3も試すのが楽しみ。で、教えてほしいんだけど、モデルサイズはどう決めてるの？トレーニングは独立してやってるの？それとも関係してる？" userName="magicalhippo" createdAt="2025-03-12T08:31:49" color="#ff5733">}}

{{<matomeQuote body="モデルサイズを決めるのは簡単じゃないよ。デバイス（低〜高エンドのスマホ、ラップトップ、16GB GPU、大きなGPU/TPU）に合わせた量子化に合うサイズを探してる。同時に幅と深さ（層数）の比率も約90に保つのがコツ。モデルは大きな先生モデルからのディスティレーションで独立して訓練してて、v3では4B〜27Bのレシピを統一して、モデルサイズのスケールアップやスケールダウンを予測しやすくしてる。" userName="alekandreev" createdAt="2025-03-12T08:42:07" color="#45d325">}}

{{<matomeQuote body="またありがとう！面白い話があって、ネットがない時にLinuxの設定問題を解決するためにローカルLLMを使ったんだ。Windowsの自分には難しいが、Gemma2 9Bみたいな小さいモデルが役立った。こうゆう小型モデル、インターネットが無いまたは使うのが高価なところでゲームチェンジャーになるかも。電源さえあればネットの一部が箱に入ってるみたいだ。" userName="magicalhippo" createdAt="2025-03-12T09:08:04" color="#ff33a1">}}

{{<matomeQuote body="フィードバックありがとう！だから私たちは低エンドから高エンドのスマホ向けに、小型モデルをどんどん進めていくことにワクワクしてるんだ。" userName="alekandreev" createdAt="2025-03-12T09:52:53" color="">}}

{{<matomeQuote body="その「大きな先生モデル」についてもっと教えてもらえる？" userName="bguberfain" createdAt="2025-03-12T16:44:57" color="">}}

{{<matomeQuote body="Gemmaは構造化出力生成、JSONスキーマ適合、ツール使用にどれくらい得意なの？特に小さいモデルや外国語でどうかな。社内評価はするけど、チームが考慮して訓練しているユースケースなのかが気になって聞いてみた。" userName="miki123211" createdAt="2025-03-12T08:54:14" color="#ff5733">}}

{{<matomeQuote body="Gemmaチームから来たよ。君の質問にはいくつかの視点がある。プロンプトされた指示にこだわっていて、JSONスキーマみたいなものも評価してる。試してみて！Gemma2の例もあるよ。https://www.youtube.com/watch?v=YxhzozLH1Dk<br>Gemma3は多言語対応も重視しているから、試してみるといいよ。構造化出力も多くのライブラリでうまくやれるから、必要な機能はあると思う！" userName="canyon289" createdAt="2025-03-12T09:03:38" color="#ff33a1">}}

{{<matomeQuote body="ちょっと試してみたけど、数を言葉で表現するのが苦手な感じ。JSONオブジェクトに寄せた数字を入れたら、例えば、「五千五十六」と言っても「556」とか「5560」になっちゃう。まるで数字を一つずつ移してるだけのようで、少し面白くて自分も同じミスをしそうだなって思った。チャットだと、数字の解釈は割と正確。たぶん、チャットの「イントロテキスト」が推論っぽくなってるのか、数字の区切りがヒントになってるのかな。他のアプリでは、JSONフォーマットに思考の流れを含めるのがいいかも！それ以外はGemma3を楽しんでるよ！" userName="eternityforest" createdAt="2025-03-14T08:57:16" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Ollamaは古いllama.cppを使ってトークン出力を制限してる。1Bモデルでも出力を得られるし、すごいけど、Phi-4のネイティブツールコールの品質とは大違い。Gemma 3がネイティブでツールコールのトレーニングを受けてるなら、Berekley Function Callingのリーダーボードで評価されてるのか気になるな。もしまだ連絡取ってなかったら、Ollamaのllama.cppを改良したGooglerのochafikに連絡するのもいいかも！" userName="refulgentis" createdAt="2025-03-13T00:33:46" color="#785bff">}}

{{<matomeQuote body="gemma3:4bを使ったけど、構造化出力で変なエラーが出た。Ollamaは最新だけど、Gemma3:12bでは同じAPIリクエストが問題なく動いた。これがOllamaの問題かGemma3:4bの問題かはわからない。" userName="seektable" createdAt="2025-03-12T13:43:22" color="">}}

{{<matomeQuote body="Ollamaの問題っぽいよ：" userName="seektable" createdAt="2025-03-12T14:09:28" color="">}}

{{<matomeQuote body="Gemma 3 Thinkingは出るのかな？Flash ThinkingのアプローチはGemmaシリーズにどれくらい流用できるのか知りたいな。" userName="swyx" createdAt="2025-03-12T08:43:19" color="">}}

{{<matomeQuote body="それは面白い分野だけど、今日は発表できる内容はないんだ。" userName="alekandreev" createdAt="2025-03-12T13:03:00" color="">}}

{{<matomeQuote body="ありがと！モデルは140言語に対応してるけど、コンパクトさと効率を重視してるなら、特定の言語に絞った方が良くない？例えば、文化的に重要な西洋の言語4つとか。効率が大事な場面もあるから、そのトレードオフについて疑問がある。" userName="mdp2021" createdAt="2025-03-12T08:45:49" color="">}}

{{<matomeQuote body="そのアイデアは考えたことがあるよ。ただ、オープンソースコミュニティが言語や地域特化のファインチューニングをすでに作ってて、各言語には文化やニュアンスのコンテキストが多いから、十分にカバーできないと考えたんだ。だから、v3では最良の基盤多言語モデルの構築に注力したよ。" userName="alekandreev" createdAt="2025-03-12T09:33:16" color="#ff33a1">}}

{{<matomeQuote body="Gemini 1.5-Proは特定の言語においてまだSOTAの基盤モデルなのが残念。9月に削除されるってメールが来たから、質が下がるのが心配。その代わりにより良いモデルが出ればいいけど、テストしたどの大きなモデルも同じレベルではないよ。連絡があれば詳しく話すので、チームがこれに気付いてないならお知らせしてほしい。" userName="jjani" createdAt="2025-03-13T03:44:05" color="#ff5c5c">}}

{{<matomeQuote body="多くの言語に対応することでトレードオフを計測したことはあるのかな？質が犠牲になっているのか、それが微妙なのか、もしくは逆に質が向上するのかが面白いところだね。" userName="mdp2021" createdAt="2025-03-12T09:51:52" color="">}}

{{<matomeQuote body="多言語導入しても英語のパープレキシティはあまり変わらないし、英語特化の評価で若干の低下（約1％）が見られただけ。" userName="alekandreev" createdAt="2025-03-12T14:56:30" color="">}}

{{<matomeQuote body="小さいモデルチームがたくさん競っているから、誰かが英語特化で大きな改善を試みると思う。他のチームもそれに従わざるを得ないかも。ただ、非英語話者にはちょっと残念な結果になるかもね。" userName="Workaccount2" createdAt="2025-03-12T14:00:51" color="#ff33a1">}}

{{<matomeQuote body="Gemma3は256k語彙を使っていて、最小の1Bバージョンは約300M埋め込みパラメータ、最大の27Bは約5倍の埋め込みパラメータを持つらしい。140言語の対応は凄いけど、多言語は埋め込み空間を複雑にするかもね。" userName="mdp2021" createdAt="2025-03-12T15:00:51" color="">}}

{{<matomeQuote body="技術報告によると、5層ごとにグローバルアテンション層があって、その層はトレーニング中に最大128kのコンテキスト長を持つことができるらしい。128kでトレーニングする場合、アテンションは密かそれとも疎なのか？" userName="sidkshatriya" createdAt="2025-03-12T14:32:32" color="#785bff">}}

{{<matomeQuote body="実際には128kでトレーニングしておらず、32kで調整してる。フィンチューニングのための長コンテキストレシピを作りたかったから、128kはやりたくなかったんだ。個々のアテンション層は常に密。" userName="alekandreev" createdAt="2025-03-12T14:55:07" color="#ff33a1">}}

{{<matomeQuote body="32kグローバル層では、各トークンが他の32kトークンにアテンションを持つの？　（編集：個々のアテンション層が常に密ってことで答えたね。）" userName="sidkshatriya" createdAt="2025-03-12T15:18:45" color="">}}

{{<matomeQuote body="システムプロンプトについての公式な見解は？技術報告には言及がないけど、公式のQAT GGUFにはユーザーメッセージの前にそれを追加する形式が含まれているみたい。ツールコール付きのシステムターンでトレーニングされているのか？" userName="moffkalast" createdAt="2025-03-12T13:17:17" color="">}}

{{<matomeQuote body="システムプロンプトにも<start_of_turn>userを使うことを推奨してるよ。" userName="alekandreev" createdAt="2025-03-12T14:17:12" color="">}}

{{<matomeQuote body="”システム”プロンプトの目的は、注入リスクを減らすために境界を明示的にエンコードすることだと思ってたんだけど、何か安全対策を施してるの？命令に従わない場合を罰するような敵対的デモは含まれてるの？" userName="tucnak" createdAt="2025-03-12T14:51:27" color="#ff5c5c">}}

{{<matomeQuote body="1/4/12/27BのGemma 3バリアントでの投機的デコーディングが可能かどうか。LM Studioはまだそれを許可してないけど、サポートするにはソフトウェアの調整が必要かも。" userName="werediver" createdAt="2025-03-13T12:23:44" color="">}}

{{<matomeQuote body="素晴らしい仕事だね。どのオプティマイザー使ったの？AdamWかな？リストには見当たらなかったけど。" userName="Herring" createdAt="2025-03-12T16:57:39" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Googleが今、ATSにはGreenhouse使ってるの？" userName="saagarjha" createdAt="2025-03-12T15:58:44" color="">}}

{{<matomeQuote body="これってGeminiの動力源なの？" userName="nothrowaways" createdAt="2025-03-12T19:58:35" color="">}}

{{<matomeQuote body="ここにはワクワクすることがたくさんあるね。特に長いコンテキストに対するサブ二次元スケーリングを実現する新しいアーキテクチャには期待。128k以上のコンテキストがローカルモデルで公式に利用可能になったみたい。チャートを見ると、もしRAMがあればモデルは350kまでかなり良さそうだし！RoPEを使ってるとのことだし。チャットアリーナでのテストも良好で、昨日のベストオープンモデルであるQwen 2.5 72bよりもELOが大幅に上回っているという興味深い特性があって、あまり記憶に頼ってない印象がある。思考や概念に重きを置いていることが望ましいね。ビジョンと140言語への対応もすごい。これはダウンロードして保存しておかないと！Gemmaモデルは時折ベンチマークを下回ることもあったけど、今回のは長期的に使える強力なローカルモデルになるんじゃないかな。コーディング能力やツールの追従性、微調整のしやすさについても気になるね。オープンソースにしてくれてありがとう、DeepMindのチーム！見た目も素晴らしい。" userName="vessenes" createdAt="2025-03-12T09:03:18" color="#ff33a1">}}

{{<matomeQuote body="Gemmaに関する求人情報はDeepMindでロンドンにあるよ：<br>https://boards.greenhouse.io/deepmind/jobs/6590957" userName="newfocogi" createdAt="2025-03-12T14:52:11" color="">}}

{{<matomeQuote body="あはは、気にしないで。あなたのコメント読んだ時、「どうしてdeepseekとGoogleを混同したんだろう？」って思ったよ。その後、編集を見て納得した。" userName="vessenes" createdAt="2025-03-12T17:46:16" color="">}}

{{<matomeQuote body="どうやってファインチューニングするかリンクを教えて。LoRAを作るの？" userName="genewitch" createdAt="2025-03-13T12:37:04" color="">}}

{{<matomeQuote body="彼のPDFにリンクされているアナウンスリンクを紹介する方がもっと有用だと思う。Gemma 3の紹介：単一のGPUまたはTPUで動かせる最も能力のあるモデル。<br>https://blog.google/technology/developers/gemma-3/" userName="xnx" createdAt="2025-03-12T08:04:38" color="">}}

{{<matomeQuote body="めっちゃ面白いオープンリリースだね。27bモデルが大きいモデルたちと同じくらいすごいってのが印象的だ。ただ、例の画像見るとこのモデルはまだアホみたいなミスしてて、正しい情報を読めてるのに常識がないみたい。" userName="tomthe" createdAt="2025-03-12T07:43:11" color="">}}

{{<matomeQuote body="LMArena向けにかなりチューニングされてるっぽい。自分の実験では、同じくらいのサイズのMistral Small 3と比べても情報知識では似たような結果だったけど、STEM問題や論理ではMistral Small 3やPhi-4より悪かった。順位が逆でも、実際にはLlama 3.3 70bやMistral Large 2411に比べたら知識や知能では全然劣ってる。" userName="wizee" createdAt="2025-03-12T18:23:28" color="">}}

{{<matomeQuote body="他のベンチマーク見ると、昨年の大きいモデル（Claude 3.0、Gemini 1.5、GPT 4.0）に比べてかなり劣ってる感じ。Googleはこのモデルのスコアを上げるためにLMArena重視のRLHFチューニングをかなりやってるんじゃないかな。" userName="aoeusnth1" createdAt="2025-03-12T15:42:23" color="#785bff">}}

{{<matomeQuote body="レシート計算について同じこと考えてた。スイスで観光客だけが18%チップを渡すって警告があったら良かったのにな。" userName="vessenes" createdAt="2025-03-12T08:56:35" color="">}}

{{<matomeQuote body="＞ We also change the architecture of<br> the model to reduce the KV-cache memory that tends to ex plo de with long context<br>「長いコンテキストで爆発するKVキャッシュメモリを減らすために、モデルのアーキテクチャも変更した」 ってところが重要だね。これをローカルで動かすのは簡単だけど、長いコンテキストが必要な時は全然違う話。M3 UltraはQ4 DeepSeek r1をURAMにフィットできるけど、使えるコンテキストが64kを超えると、t/sとPPがすぐに高くつく。M3 Ultraについて言えば、もっとバンド幅があれば良いのに。大きな”エネルギー”を持ってるけど、実際にそのエネルギーを使う力が少ない。" userName="behnamoh" createdAt="2025-03-12T07:01:47" color="">}}

{{<matomeQuote body="2年ぶりにローカルLLMトレインに乗り直す人間として、RTX3080のLinuxサーバーで自分用にホストするための今のベストなローカルウェブサーバーソリューションは何かな。マルチモーダル画像入力と出力のLaTeXレンダリングに対応してると嬉しいんだけど。" userName="l33tman" createdAt="2025-03-12T16:05:00" color="">}}

{{<matomeQuote body="Ollama + open web-uiをコンテナで使うのがいいと思うよ！<br>https://ollama.com/<br>https://github.com/open-webui/open-webui" userName="flipflipper" createdAt="2025-03-12T16:12:07" color="">}}

{{<matomeQuote body="AMDユーザー向けに言っとくけど、Ollamaをrocmで動かすのはかなり簡単だよ。もしカードが6800xt以下のモデルだったら、コミュニティパッチを使うと動かせるよ！<br>https://github.com/likelovewant/ollama-for-amd/wiki#demo-rel...<br>特に技術には詳しいけどソースからのビルドがまだ得意じゃない自分としては、パッチされたrocblas.dllを自分のカード用に取り替える方法を推奨するよ。" userName="lastLinkedList" createdAt="2025-03-12T22:05:22" color="#ff5c5c">}}

{{<matomeQuote body="コンテナの利点って何だろう。uvツールでインストールする方が、GPUで動かすのに手間がかからないように思えるし、Macで使うならコンテナだとモデルが遅くなるよ。" userName="dunb" createdAt="2025-03-12T22:32:44" color="">}}

{{<matomeQuote body="そのGPUで動かせるGemma 3モデルは、4ビット量子化した12bパラメータモデルがベストだよ：<br>https://ollama.com/library/gemma3:12b<br>レイヤーの一部でCPU使えば、4ビットの27bモデルも使えるけど、推論はかなり遅くなる。" userName="rahimnathwani" createdAt="2025-03-12T17:43:39" color="">}}

{{<matomeQuote body="LM studioをAPIモードで使えば、OpenAI APIを話せるフロントエンドならなんでもオッケーだね。それか、LM studioのフロントエンドを使うとデスクトップ使用にはマジで優れてるよ。俺は3090で35t/sのgemma 15b Q8を使ってるから、もっと小さいgemma 3 15b q4k_lが必要だろうね。" userName="genewitch" createdAt="2025-03-13T12:42:34" color="#785bff">}}

{{<matomeQuote body="Librechatとollamaの組み合わせが一番良かった。yaml設定が理解できれば、比較的簡単にセットアップできるよ。" userName="mfro" createdAt="2025-03-12T18:03:48" color="#ff5c5c">}}

{{<matomeQuote body="めっちゃ良さそう！このことにワクワクしてる！gemma 1.0から使ってるけど、彼らは本当に先を行ってるね！" userName="atarus" createdAt="2025-03-12T07:10:00" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
