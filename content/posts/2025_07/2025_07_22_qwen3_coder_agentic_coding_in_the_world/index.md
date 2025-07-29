+++
date = '2025-07-22T00:00:00'
months = '2025/07'
draft = false
title = 'Qwen3-Coder：PCで実現！エージェント型AIコーディングの新境地'
tags = ["AI", "プログラミング", "機械学習", "モデル軽量化", "オンプレミスAI"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> Qwen3-Coder：PCで実現！エージェント型AIコーディングの新境地

引用元：[https://news.ycombinator.com/item?id=44653072](https://news.ycombinator.com/item?id=44653072)




{{<matomeQuote body="2bitから8bitのGGUFをローカル向けに作ってるよ！1時間くらいでHugging Faceに上がるはず。24GB GPUと128-256GB RAMでの動かし方は、ここのドキュメントを見てね: https://docs.unsloth.ai/basics/qwen3-coder" userName="danielhanchen" createdAt="2025/07/22 22:40:56" color="#38d3d3">}}




{{<matomeQuote body="2bit量子化って、マジでちゃんと動くの？俺が試したやつは全部ダメだったけど、4bit以上ならバッチリだったんだ。もし超巨大モデルで動くとしても、4bitや5bit量子化の少し小さいモデルより本当に良いのか、疑問だな。" userName="gnulinux" createdAt="2025/07/23 05:45:18" color="">}}




{{<matomeQuote body="Unslothのダイナミック量子化は純粋な2bitじゃないんだよ。2, 3, 4, 5, 6、時々8bitの混合なんだ。重要な層は8bitや6bitで、そうじゃない層は2bitって感じ！詳しいことはこのドキュメント見てね: https://docs.unsloth.ai/basics/unsloth-dynamic-2.0-ggufs" userName="danielhanchen" createdAt="2025/07/23 05:52:40" color="#785bff">}}




{{<matomeQuote body="どの層が重要かって、どうやって決めてるの？" userName="CMCDragonkai" createdAt="2025/07/23 06:02:55" color="">}}




{{<matomeQuote body="もし差し支えなければ、Qwen3-Coderをダイナミックに量子化するのに、どんなリソースと時間がかかったか教えてくれない？" userName="PeterStuer" createdAt="2025/07/23 08:58:55" color="">}}




{{<matomeQuote body="高品質データを100万〜300万トークン以上使うから、キャリブレーションデータセットでimatrixを計算するのに数時間かかるよ。それから、どの層をより高ビットで量子化するか決めるんだけど、これにも時間がかかるね。量子化の作成も数時間かかるし、アップロードにも時間がかかる！全体で最低8時間くらいかな。" userName="danielhanchen" createdAt="2025/07/23 09:24:07" color="#ff33a1">}}




{{<matomeQuote body="コーディング用のTransformerモデルはSaaSが強いから、自己ホスト型は諦めてたんだけど、これならまた挑戦してみようかな。llama.cppってPCIe4経由で複数のGPU（RTX 3090、NVLinkなし）をサポートしてる？俺のマシンは32CPUコア、256GB RAMなんだ。" userName="PeterStuer" createdAt="2025/07/23 08:48:47" color="">}}




{{<matomeQuote body="AI研究者じゃないから常識かもだけど、最近量子化の動画見て疑問に思ったんだ。重要なとこは精度上げて、そうじゃないとこは下げることでモデルを圧縮できるのかって。あと、どの部分が重要かどうやって決めるのかもね。これが既に実現されてるって知れて嬉しいし、モデル”圧縮”が次のホットトピックになるんじゃないかな。" userName="blensor" createdAt="2025/07/23 07:52:43" color="">}}




{{<matomeQuote body="量子化をするのに、どんなクラスターを使ってるの？まさかガレージの3090一枚のマシンじゃないよね。" userName="jychang" createdAt="2025/07/23 10:47:24" color="">}}




{{<matomeQuote body="Unslothの量子化は主要モデルのバグ修正に関わってるから使ってるってさ。説得力あるでしょw でもこのアプローチ、マジで動くなら仕組みをもっと知りたいね。" userName="menaerus" createdAt="2025/07/23 08:50:05" color="">}}




{{<matomeQuote body="そうそう、お前の考えは全く正しいぜ！モデルを単純に2bitとか4bitに量子化するんじゃなくて、賢くやるべきなんだよ！" userName="danielhanchen" createdAt="2025/07/23 09:24:52" color="">}}




{{<matomeQuote body="このモデルの実行速度はDDR4かDDR5 RAM次第だってさ。3090を2枚持っても1枚しか使わないし、MoEの重みを置いても速度アップは＜5%だって。Qwen3 Coder 480Bは261GBとか276GBで全部RAMに置くから、RAMの帯域幅がボトルネックになるぞ。デュアルCPUでDDR5 RAM 24チャンネルとかのワークステーションじゃないと厳しいかもね。" userName="jychang" createdAt="2025/07/23 10:24:24" color="#ff5733">}}




{{<matomeQuote body="ホントにバグを修正したんだぜ！Gemmaのバグをいくつか直したし、勾配蓄積バグ、PhiやLlamaのバグなんかもね！詳細はこっちのブログ記事を見てくれ！<br>https://unsloth.ai/blog/reintroducing" userName="danielhanchen" createdAt="2025/07/23 09:26:39" color="#ff33a1">}}




{{<matomeQuote body="いやいや、絶対違うって！俺はスポットクラウドインスタンスを使ってるからな！" userName="danielhanchen" createdAt="2025/07/23 13:28:21" color="">}}




{{<matomeQuote body="ダイナミックウェイトのアプローチが、バグ修正とどう関係するんだ？どれもその技術とは関係なさそうに見えるんだけど。" userName="menaerus" createdAt="2025/07/23 09:32:44" color="">}}




{{<matomeQuote body="でもさ、3090でこの量子化モデルをちゃんと動かせるの？もしできるなら、詳しいやり方教えてほしいな。前に投稿したガイドは俺には難しすぎたんだよ！" userName="sleight42" createdAt="2025/07/23 21:02:22" color="#ff5733">}}




{{<matomeQuote body="どれを2bitにして、どれを4bitにするか、どうやって選んでるの？それって秘密なの？それとも公開されてるの？" userName="qxfys" createdAt="2025/07/23 14:25:39" color="#45d325">}}




{{<matomeQuote body="ブログでざっくり書いたし、論文もいくつかリンクしてるよ！こっちにも書いたから見てくれ！<br>https://unsloth.ai/blog/dynamic-4bit<br>アクティベーションと重みの量子化誤差を検査する必要があるんだよ！" userName="danielhanchen" createdAt="2025/07/23 06:34:08" color="#ff33a1">}}




{{<matomeQuote body="確かにな！<br>あれ、ガイドって長すぎ？このセクション https://docs.unsloth.ai/basics/qwen3-coder-how-to-run-locall... を見ると、3090で動かす方法が載ってるよ。" userName="danielhanchen" createdAt="2025/07/23 23:27:43" color="#ff5c5c">}}




{{<matomeQuote body="あ、これについてここに書いたんだよね: https://docs.unsloth.ai/basics/unsloth-dynamic-2.0-ggufs <br>将来的に彼ら向けにスクリプトを提供するかも！" userName="danielhanchen" createdAt="2025/07/24 22:42:58" color="">}}




{{<matomeQuote body="ああ、ごめん、勘違いしてた。<br>ダイナミッククオンツを計算するときは、固定モデルでやらないといけないんだ！<br>例えばPhi 3だと文末トークンが間違ってたし、Llama 4だとRoPEの問題を修正したんだ（https://github.com/ggml-org/llama.cpp/pull/12889）。<br>まず修正しないとキャリブレーションが正しく行われないんだよ。" userName="danielhanchen" createdAt="2025/07/23 10:22:40" color="#785bff">}}




{{<matomeQuote body="256GB RAMと16GB VRAMで、かろうじてでも使えるパフォーマンスで動かす方法ってあるかな？" userName="jdright" createdAt="2025/07/23 02:36:36" color="">}}




{{<matomeQuote body="返信ありがとう！<br>ADHD持ちでさ、Koboldでしかローカル実行したことないんだ。DIY AIは素人だから、正直ちょっと迷子になってるよ。" userName="sleight42" createdAt="2025/07/24 22:06:51" color="">}}




{{<matomeQuote body="アップロードありがとう！<br>HNスレッド見つける前からQwen3-CoderのUnslothドキュメントを読んでたよ。<br>8x H200 DGXシステムで8ビットまたは16ビット版を動かしたら、どれくらいのスループットを期待できるかな？" userName="ashvardanian" createdAt="2025/07/24 10:33:09" color="#785bff">}}




{{<matomeQuote body="なるほど、あなたのやり方はバニラモデルに何かしら修正を加えないと機能しないってことだね。<br>俺が知りたいのは、そのアプローチそのものなんだ。なんで、どうやって機能するの？" userName="menaerus" createdAt="2025/07/23 11:29:44" color="">}}




{{<matomeQuote body="ドキュメントにタイプミスがあるみたいだよ。「推奨コンテキスト: 65,536トークン（増加可能）」ってなってるけど、公式ドキュメントでは「適切な出力長: ほとんどのクエリで65,536トークンの出力長を推奨します。これはInstructモデルに適しています。」ってなってるから、これは推奨トークン出力のことだね。" userName="mathrawka" createdAt="2025/07/22 22:53:51" color="#785bff">}}




{{<matomeQuote body="ダニエル、ありがとう。異なる量子化の違いについて、何か良い情報源を知らない？" userName="tomdekan" createdAt="2025/07/24 11:31:54" color="">}}




{{<matomeQuote body="そうだよ！3bitや4bitでもいけるかも！llama.cppにはMoEオフロードがあるから、GPUがアクティブなエキスパートと非MoEレイヤーを保持して、VRAMは16GBから24GBで済むんだ！やり方については、このセクションで書いたよ：https://docs.unsloth.ai/basics/qwen3-coder#improving-generat..." userName="danielhanchen" createdAt="2025/07/23 02:53:24" color="#ff5c5c">}}




{{<matomeQuote body="＞ Qwen3-Coderは複数のサイズで利用可能だけど、まずは最もパワフルなバリアントを紹介できて嬉しいよ。<br>僕は小さいサイズに一番興奮してるんだ。だって、時々そこそこ使えるコードを書ける、ローカルで動かせるモデルに興味があるし、もうすぐそこまで来てると思うからね。しばらくの間は、自分で現実的にホストできないような大きいモデルを”呼ぶ”必要が出てくるだろうけど、そのために高品質なオープンウェイトモデルの選択肢があるのは嬉しいよ。それから、小さいオープンウェイトモデルを遊ぶことで、その大きいバージョンへのアクセスをレンタルするってアイデアも好きだな。Qwenチーム、このリリースおめでとう！試すのが楽しみだよ。" userName="pxc" createdAt="2025/07/22 22:51:30" color="#38d3d3">}}




{{<matomeQuote body="小さいモデルが、大きいモデルに勝ることはないよ。大きいモデルの方がより多くのことを知っていて、より賢いんだ。小さいモデルも賢くなるけど、そうなると大きいモデルも賢くなるからね。HNは変だよ。一時期は最も技術的な人たちを見つけた場所だったのに、LLMに関してはRedditの方が詳しい人たちが多い気がする。たくさんの人が巨大なモデルを動かしてるし、調べてみれば、現実的に自分でホストできるってわかるよ。" userName="segmondy" createdAt="2025/07/23 00:06:15" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞ 小さいモデルは、大きいモデルに勝ることはないよ。だけど、大きいモデルに匹敵する必要はないんだ。特定のタスクに対して十分良いならそれでいいんだから！<br>これは、言語モデルが得意なこと、例えば翻訳を見ればもっと明らかだよ。翻訳には超巨大なモデルは必要ないし、実際、リアルタイムで何かをしたり、モバイルデバイスで動かせることが、精度が少し上がるよりも重要なアプリケーションもあるから、小さいモデルの方が好ましい場合もあるんだ。それから、幻覚の問題があるから、もっと首尾一貫してウェブ検索クエリで何を”知って”書くかという知識以上のものは、”知識豊富な”LLMをあまり価値あるものだとは思わないな。誰かのクラウドハードウェアでホストされているプロプライエタリなSOTAモデルでさえ、IMEが”即興で”答えることを望むことはまずないよ。ほとんどの場合、間違っているからね！（たぶん、仕事が最も人気のあるライブラリや言語に焦点を当てている他の人たちにとっては違うのかもしれないけど、わからないな。）もし使うLLMが実行時に常にドキュメントを参照するつもりなら、その知識の差はそれほど重要じゃないかもしれないね—要約は、コードを書くことや”推論”よりも、言語モデルにとってずっと簡単なことのように思えるよ。<br>つまり、こういうことだ：<br>もちろん、大きい方が良い！だけど、いくつかのタスクでは、僕のニーズはまだ小さいモデルの能力の天井以下だし、そこがローカル利用に焦点を当てている理由だよ。今のところ、それは主にコーディングとは全く別の言語中心のタスク（翻訳、文字起こし、TTS、たぶん要約）だ。今日のシンプルなコーディングタスク（例えば、気の利いたオートコンプリート、”ゴーストテキスト”スタイル）も含まれるかもしれないね。より洗練されたタスク（例えば”バイブコーディング”とか？）では、大きいモデルの方がまだ好ましいとしても、いつかはもっと実質的なプログラミングタスクが含まれるようになることを期待するのは妥当だと思うよ。<br>もしすごく楽しめたら、1年か2年後には、実際に大きいモデルを動かせるマシンを組んでみようかな。 :)" userName="pxc" createdAt="2025/07/23 00:42:11" color="#38d3d3">}}




{{<matomeQuote body="＞ 僕は小さいサイズに一番興奮してるんだ。だって、時々そこそこ使えるコードを書ける、ローカルで動かせるモデルに興味があるし、もうすぐそこまで来てると思うからね。<br>僕も同じく、通常のQwen3-30B-A3BはL4 GPUを2枚使うとかなりうまく動いたんだ（60トークン/秒、VRAM48GB）。これはクラウドの選択肢が許されないオンプレミスでの使用には十分だけど、似たようなコード特化モデルが欲しいね。RooCodeのようなツール呼び出しが、通常のモデルではうまく機能しなかったからさ。そういう状況では、クラウドとオンプレミスの比較じゃなくて、オンプレミスか、それとも何もないか、なんだ。" userName="KronisLV" createdAt="2025/07/23 06:34:03" color="#785bff">}}




{{<matomeQuote body="ggerganov’s llama vscodeプラグインを小さい2.5モデルでM3 Maxで使ってるんだけど、それがすごくいい感じに動くんだ。" userName="larodi" createdAt="2025/07/23 07:17:45" color="#785bff">}}




{{<matomeQuote body="現在、みんなの目標は、すべてを支配する一つのマスターモデルを作ることだから、あまり特化は進んでないね。もし言語特化モデルを作れたら、小さいモデルがどれだけ効率的になるかと思うと気になるな。32BのJava Coderが、汎用的な32B CoderよりもJavaのコーディングにはるかに優れるってのは、直感的に明らか（だから間違ってるかも？）な気がするんだけどね。" userName="LinXitoW" createdAt="2025/07/23 15:01:46" color="#ff5c5c">}}




{{<matomeQuote body="コーディングに関しては、みんなちょっとでも良いモデルのためなら、かなり高いお金を払う気があるみたいだね。" userName="conradkay" createdAt="2025/07/23 02:27:08" color="">}}




{{<matomeQuote body="devstralを試してみてよ。FP8ならVRAM48GBに収まるはずだよ。24Bのローカルモデルとしては驚くほど良かったし、clineやrooとも相性が良いんだ。あまり詰まったりすることもないし、ほとんどのことがうまくいく（サイズを考えればね）。" userName="NitpickLawyer" createdAt="2025/07/23 07:18:52" color="#45d325">}}




{{<matomeQuote body="LLMの情報ってRedditにめっちゃあるんだね。すごく面白いよ。おすすめのサブとかスレッドある？教えてほしいな、ありがとう。" userName="nico" createdAt="2025/07/23 00:10:28" color="">}}




{{<matomeQuote body="Mistralモデルは結構いいと思うけど、4-bit量子化版でも秒間16トークンくらいしか出なくて、MoEオプションに比べたらかなり遅いね。OllamaをvLLMに替えて、どうなるか試してみるべきかな。" userName="KronisLV" createdAt="2025/07/23 08:16:16" color="">}}




{{<matomeQuote body="Javaコーダーのアイデアには反論するよ！Javaコードは特定の書き方やビジネス領域に偏ってるから、そこから外れると学習データが足りなくて苦労するかもね。CやGoを入れるとIoTとかネットワーキングとか、もっと幅広いドメインのデータに触れられるから良いよ。言語特化よりドメイン特化のモデルの方が役立つかもね！" userName="californical" createdAt="2025/07/23 15:57:02" color="#45d325">}}




{{<matomeQuote body="ローカルとリモートの問題は、お金の問題だけじゃなくて、コンプライアンスとプライバシーの方が重要だよ。" userName="omeid2" createdAt="2025/07/23 02:44:12" color="">}}




{{<matomeQuote body="LLMが質問に対してすぐにWeb検索するの、マジで嫌いなんだよね。自分でできるし、それで解決しないからLLMに聞いてるのにさ。俺とモデルに聞く目的が全然違うんだろうね。俺は人間にも聞いても分からない超複雑なことを聞いてるから。" userName="saurik" createdAt="2025/07/23 04:44:23" color="">}}




{{<matomeQuote body="Qwen3-30B-A3Bは翻訳やASRの書き起こし修正にめちゃくちゃ役立つよ。ちょっと直訳っぽいけど、他のアプリの自動翻訳より全然良いし、ネットワーク遅延がないから超速いんだ！ローカルで使うと、中国の歴史とか文化の質問にも使えるから面白いよ。他の地域のモデルと答えを比較するのも楽しいね！" userName="pxc" createdAt="2025/07/23 15:50:50" color="#785bff">}}




{{<matomeQuote body="普段どんなプログラミング言語を使ってるの？書いたコードはどのくらい残してる？足場として使ってほとんど書き直してるの？それとも、ほとんどそのまま使ってる感じ？" userName="pxc" createdAt="2025/07/23 16:20:15" color="">}}




{{<matomeQuote body="モデルが単発のWeb検索しかしないのは、がっかりするよね。もっと色々検索して要約したり、検索ワードを調整したりしてほしいな。公式ドキュメントで分かることはLLMに聞かないし、基本RTFMだよ。LLMにコード書かせる時もWeb検索させるけど、結局スタイルにこだわりがあるからほとんど書き直してるね。" userName="pxc" createdAt="2025/07/23 17:05:23" color="#ff33a1">}}




{{<matomeQuote body="大きいLLMって、ツールとか関数を使って便利になってるじゃん？オープンソースもきっと、コーディング用の良いツールとか関数をそのうち提供するようになるよ。" userName="Eggpants" createdAt="2025/07/23 01:27:13" color="">}}




{{<matomeQuote body="M1 Maxで64GBのメモリ積んでるんだけど、このVSCodeプラグインは使ったことないな。試すべきかな？URLはhttps://github.com/ggml-org/llama.vscode。これ、エージェントモードっていうよりコード補完用っぽいんだけど。" userName="kimsia" createdAt="2025/07/26 12:35:18" color="">}}




{{<matomeQuote body="JetBrainsはMellumモデルでオートコンプリートを実現してるよ。https://ollama.com/JetBrainsfine tunedのやつは、ゼロから作ったんじゃなくて、微調整したモデルを使ってるんだ。" userName="1899-12-30" createdAt="2025/07/23 20:20:49" color="#ff5c5c">}}




{{<matomeQuote body="自然言語でも、単一言語の学習データだけに集中しても、ターゲット言語でより良い文章が書けないってこと、あるんじゃないかな？" userName="pxc" createdAt="2025/07/23 16:05:36" color="">}}




{{<matomeQuote body="「リアルタイムで動かせるとか、モバイルデバイスで動かせるとかの方が、ちょっとした精度向上より大事なアプリケーションもあるから、小さいモデルの方がいい場合もあるよ」ってのは、まさに「最高のカメラは君が持ってるカメラだ」って話に似てるね。大きいモデルはHTTPリクエスト一つで使えるけど、ローカルで動かしたい理由はたくさんある。ネットがなくても使えるってのが一番の理由じゃないかな。" userName="bredren" createdAt="2025/07/23 03:47:19" color="#ff33a1">}}




{{<matomeQuote body="これらのモデルって、みんな翻訳に適してるし、それが一番得意だよね。アーキテクチャがSeq2Seqを受け継いでるし、オリジナルのTransformerだってGoogle翻訳のために作られたんだから。" userName="larodi" createdAt="2025/07/23 07:19:06" color="#45d325">}}




{{<matomeQuote body="OllamaからvLLMに切り替えてみて、どうなるか試さないとね。それが原因かも。ggufは遅いし、4bitならAWQ、最高品質ならfp8がいいよ（特に君のGPUがAdaアーキテクチャなら）。vLLMはTensor Parallelにもバッチ推論にも優れてるし、エージェント型のやつだと並列で複数クエリを処理できるからね。うちは2x A6000（古いやつ、Adaじゃない）でdevstral fp8を動かしてるけど、Marlinカーネルでもセッションあたり生成は毎秒35～40トークン、入力は2～3kトークンくらい出るし、並列で6人くらいなら同時に使えるよ。L4が2枚ならその半分くらいだけど、Ada GPUだから生成はもっと速くなるはずだよ（fp8ネイティブサポートだしね）。" userName="NitpickLawyer" createdAt="2025/07/23 08:22:39" color="#45d325">}}




{{<matomeQuote body="俺にとっては、より高いレベルでの独立性と自由の感覚も大事なんだ。特にテック業界がAIのhypeでイカれてる今、なんか大きなプロプライエタリなモデルをいじってても、普通のいじり屋の喜びって感じられないんだよね。推論時にもっといじれて、使ってるツールをもっとコントロールできて、モデルがどう動くかをもっと学べて、真のオープンソースに近ければ近いほど、面白くて楽しい技術をいじる時の子供みたいな喜びを取り戻せるんだ。たとえその技術が根本的に欠陥があったり、限界があったり、過剰に宣伝されてたりしてもね。" userName="pxc" createdAt="2025/07/23 17:12:32" color="#785bff">}}




{{<matomeQuote body="「HNは変だよね。前は一番技術的な人たちを見つけた場所だったのに、LLMに関しては今Redditで見つけるんだ」って話、この意見を責めたいのかな？だって彼の視点は俺には納得できるもん。128GBのMacBookでそこそこ大きいモデルは動かせるけど、巨大なのは無理だし、2Bの量子化モデルでさえリソース食いすぎるしね。だから、コストとか情報の機密性、利便性、バッテリー残量とか、いろんな要素に応じてローカルとリモートを使い分けてるよ。大きいモデルの方が性能はいいけど、小さいのでも十分なことってよくあるんだ。" userName="mlyle" createdAt="2025/07/23 02:22:55" color="#ff33a1">}}




{{<matomeQuote body="言語はJS/TS、C/C++、Shader Code、それにESP Arduinoのコードをいくつか使ってるよ。定型句とかCSSはあんまり気にしてないけどね。なんだかIntelliSenseでタブ補完をステップバイステップでやってる感じにすごく似てるけど、もっと拡散的な感じだ。でも俺のツールセットはエージェント型とオートコンプリートの混合で、どっちか100%ってわけじゃない。アーキテクチャを明確に意識して、コードの大部分を読んで、コードの各部分を自分の好きなように保つことで、実際にコードを所有するようにしてるんだ。" userName="larodi" createdAt="2025/07/25 19:45:30" color="">}}




{{<matomeQuote body="もっと専門的で、学習コーパスが集中してる小さいモデルに興味あるな。bashスクリプト専用のモデルとか、Clojureモデル、Zigモデルとかね。" userName="y1n0" createdAt="2025/07/23 02:33:12" color="#38d3d3">}}




{{<matomeQuote body="みんなAI動かしてるけど、金持ちばかりじゃん。俺は100万～200万円もかけられないよ。480Bモデル動かすのにそれくらい必要で、しかもその値段だと古いハードで遅いし。いい環境はもっと高いしね。だから小さいモデルでいいや。大きいモデルはいいけど、進化早いから半年〜1年遅れるくらいなら200万円払う価値はないね。" userName="wkat4242" createdAt="2025/07/23 02:26:52" color="#ff33a1">}}




{{<matomeQuote body="小さいモデルは、将来の大きなモデルじゃなくて、今ある大きなモデルくらいの性能になればそれで十分なんだよ。" userName="BriggyDwiggs42" createdAt="2025/07/23 01:49:09" color="">}}




{{<matomeQuote body="小さくて安くて速いモデルって需要あるよね。AlphaEvolveの論文で驚いたんだけど、彼らはアイデア生成のスピードを最優先するために、めちゃくちゃFlashモデルに頼ってたんだ。" userName="ants_everywhere" createdAt="2025/07/23 03:15:26" color="#785bff">}}




{{<matomeQuote body="”qwen-code”アプリって、Gemini-CLIのフォークっぽいね。<br>https://github.com/QwenLM/qwen-code<br>https://github.com/QwenLM/qwen-code/blob/main/LICENSE<br>OSSのCCクローンがいつか統合されるといいな。記事にも”Qwen Code”はGemini Codeのフォークって書いてあったし。" userName="flakiness" createdAt="2025/07/22 22:36:09" color="#38d3d3">}}




{{<matomeQuote body="Gemini CLIチーム、オープンソースにしてくれてマジ感謝（Claudeと違ってさ）。しかもQwenみたいな新しいモデルに簡単に調整できるのもすごい。<br>他のモデルも最初からサポートしてくれたら最高だよね。そしたらみんなフォークしなくて済むし。" userName="mkagenius" createdAt="2025/07/23 07:26:13" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="最近よくあるのが、大企業が最初のツールをすごい急いで出すんだけど、質が悪くて（Gemini CLIもそう）、あとはOSSエコシステムにバグ直しを任せるってパターンだよね。バックエンドは非公開だから、アプリが彼らのベストショットなんだ。で、時間が経つと企業が手柄を独り占めして、貢献者みんなが評価されるわけじゃないんだよ。" userName="nicce" createdAt="2025/07/23 08:48:53" color="">}}




{{<matomeQuote body="最近Jetbrainsの公式Kotlin MCP SDKを使ってみたんだけどさ、デフォルトと違うURLだとMCPエンドポイントを動かせなかったんだよね…。めちゃくちゃハードコードされた仮定があったみたい。" userName="gavinray" createdAt="2025/07/23 10:32:25" color="#ff5c5c">}}




{{<matomeQuote body="”彼らはハードコードされた仮定をたくさん作っていた”って？いや、単にその方がずっと速いからだよ。設定オプションを追加するにはテストとか入力処理がもっといるし。後で本当に必要としてる人がPRくれたら受け入れればいいんだから、自分の時間を節約できるじゃん。" userName="nicce" createdAt="2025/07/23 12:38:20" color="">}}




{{<matomeQuote body="”あとはOSSエコシステムに問題を直させる”って？それってOSSのまさに半分の意味だし、俺はそれで全然OKだよ。" userName="mkagenius" createdAt="2025/07/23 20:07:25" color="">}}




{{<matomeQuote body="今は基本的にClaude-codeをメインに使ってるけど、重い思考処理はZen MCP経由でOpenAIとかGemini Proに任せてるよ。Zenがサポートしてるから、Gemini-CLIを使うこともできるな。Qwen-coderがGemini-CLIベースなら、サポート追加も簡単だろうし。" userName="rapind" createdAt="2025/07/22 22:41:36" color="#38d3d3">}}




{{<matomeQuote body="Zen経由でGeminiを使うのってどうだった？俺はZenじゃなくて、普通のチャットでGeminiを直接使ってたんだ。最初はClaudeより競争力のある大きなコンテキストを作って、それから詳細な計画やパッチをGeminiに持っていってフィードバックをもらってたんだけど、すごくいい結果が出たんだよね。MCP経由だと、Geminiを完全に制御した時みたいな集中した結果は得られないだろうって思ってたし、MCP経由でCCとインターフェースすると、そっち側でもコンテキストを使っちゃうだろうしね。" userName="bredren" createdAt="2025/07/23 00:33:51" color="#45d325">}}




{{<matomeQuote body="俺は主にアーキテクチャの計画に使うよ。もっと情報が欲しい時とか、Claudeに情報を与えたい時とかね。3つのAIの頭を使う方がいいような、もっと難しい問題に役立つよ。" userName="rapind" createdAt="2025/07/23 06:12:29" color="#ff5733">}}




{{<matomeQuote body="他のモデルに仕事を振り分けるメリットって何？何か目立った違いあるの？" userName="apwell23" createdAt="2025/07/23 02:07:23" color="">}}




{{<matomeQuote body="トップティアモデルが別のモデルの作業をレビューすると、すごいメリットがあるんだよ。例えば、一つのモデルを何ターンもかけていいとこまで持っていって、それから2つ目のモデルに最初の結果を“レッドチーム”として見てもらうんだ。それをコンテキストごと最初のモデルに戻すんだよね。これは特に複雑なシステムの大きな計画で役立つよ。詳細な計画があっても、Claudeのコードが“スタック”して、同じことを何度も繰り返すように見えるのは珍しくないんだ。そういう時は、すぐに止めてCCに現在の問題と試した解決策を“詳細な技術ブリーフィング”として要約させなよ。それからCCに問題に関連する全てのファイル（テストも含む）をリストアップさせて、そのブリーフィングと全ファイルを2つ目のLLMに提供するんだ。これは、Geminiに複数のターンでコンテキストを入れる必要があるような大きなコンテキストに特にいいね。コンサルティングしているモデルには、コンテキストの追加が終わったって言うまでフィードバックを待ってもらえばいいんだ。そしたら、CCが詰まってる細かいステップに直接集中しなくても、詳細な解決策がポンって出てくるんだ。君は高レベルに留まれるってわけ。大抵の場合、CCはすぐに治ってタスクを終えるよ。これは、計画モードに切り替えて計画の調整をする絶好の機会だね。Claudeに、既に達成したことを含めた詳細な計画の更新を出力させて、それをまたコンサルティングモデルに送るんだ。もし事前に詳細なシステム仕様書を作っていたら（CCも元々それに基づいて作業していたはず）、コンサルティングモデルにこれまでの作業と次の計画ステップをレビューしてもらうことができるよ。必然的にコンサルティングモデルはCCのこれまでの作業や計画を改善するための提案をしてくるだろうね。それを送り返せば、素晴らしい結果が得られるよ。" userName="bredren" createdAt="2025/07/23 03:54:11" color="#ff5c5c">}}




{{<matomeQuote body="俺たちは2024年後半にRA.Aidっていうエージェントツールを出荷したんだ。これはaiderが始めたもののエージェント的進化版だよ。主な焦点は、1) CLIファーストであること、そして2) 本当にオープンソースコミュニティであることだったんだ。うちにはフルコミットアクセスを持つ5人の独立したメンテナーがいるんだよ—彼らは同じ組織や団体出身じゃない（免責事項：一人は俺のスタートアップGobiiに入ってくれたけど、そこではウェブブラウジングエージェントに取り組んでるんだ）。誰かCCとの比較をしてくれると嬉しいな。でも、俺の経験では、CursorとかWindsurfとか他のエージェント型コーディングソリューションとは互角に戦えてるよ。でも、そうだな、特定の大きな会社やモデルに縛られない、正規のFOSSソリューションが本当に必要だよね。" userName="ai-christianson" createdAt="2025/07/22 23:24:32" color="#45d325">}}




{{<matomeQuote body="＞これらのOSS CCクローンがいつか収束したらいいな。俺の意見だと、カスタムCLIのポイントは、各モデルがツールコールを異なる方法で扱うようにトレーニングされているってことなんだよね。俺の経験では、ツールコールのパフォーマンスはめちゃくちゃ違うんだ（最近は収束し始めてるけど）。モデルと性能がコモディティ化されて、俺たちがその段階に達するまで、収束は意味がないと思うよ。" userName="chartered_stack" createdAt="2025/07/23 08:47:05" color="#45d325">}}




{{<matomeQuote body="Claude Codeもサポートしてるんだね。でも、俺の理解ではClaude CodeってクローズドソースでClaude APIエンドポイントしかサポートしないはずだけど、どうやって動かしてるの？" userName="mrbonner" createdAt="2025/07/22 22:54:42" color="">}}




{{<matomeQuote body="Claude CodeってクローズドソースでClaude APIエンドポイントしかサポートしないはずだけど、どうやって動かしてるの？<br> 環境変数`ANTHROPIC_BASE_URL`をOpenAI互換のエンドポイントに設定して、`ANTHROPIC_AUTH_TOKEN`にそのサービスのAPIトークンを設定するんだよ。俺はMoonshotのKimi-K2でClaude Codeを問題なく使ったよ[1]。<br> Claude Code Routerとか、CCをいろんなモデルにルーティングするための似たようなアプリもあるよ[2]。<br> [1]: https://platform.moonshot.ai/<br> [2]: https://github.com/musistudio/claude-code-router" userName="alwillis" createdAt="2025/07/22 23:23:51" color="#ff5c5c">}}




{{<matomeQuote body="なるほど。ありがとう！<br> これってAWS Bedrockでも動くの？それともプロキシを使わないとダメかな？" userName="mrbonner" createdAt="2025/07/23 01:31:30" color="">}}




{{<matomeQuote body="BedrockはClaude Codeで公式にサポートされてるよ。" userName="jimmydoe" createdAt="2025/07/23 03:34:45" color="#785bff">}}




{{<matomeQuote body="比較してどれくらい良いの？これは面白い、まさに”リンゴとリンゴ”の比較って感じだね。" userName="Zacharias030" createdAt="2025/07/23 02:00:01" color="">}}




{{<matomeQuote body="ClaudeはOpenAI互換のAPIを使ってるよ。Claude CodeはベースURLやトークンを変える環境変数に対応してるんだ。" userName="vtail" createdAt="2025/07/22 23:01:10" color="#ff33a1">}}




{{<matomeQuote body="いや、違うよ。ClaudeはAnthropic APIを使ってる。anthropic2openAPIプロキシを動かす必要があるんだ。" userName="segmondy" createdAt="2025/07/23 00:11:38" color="#45d325">}}




{{<matomeQuote body="ありがとう、修正するよ。<br>追記：o3がこのトピックについてどう考えてるかはこちらだよ: https://chatgpt.com/share/688030a9-8700-800b-8104-cca4cb1d0f..." userName="vtail" createdAt="2025/07/23 00:45:00" color="#45d325">}}




{{<matomeQuote body="openrouterのどのモデルでもCCで使えるよ。このGitHubリポジトリ経由でね: https://github.com/musistudio/claude-code-router" userName="Imanari" createdAt="2025/07/23 02:41:33" color="#45d325">}}




{{<matomeQuote body="自分のプロジェクトPlandex[1]も紹介しとくね。これはClaude Codeより前からあって、複数のプロバイダ（Anthropic、Google、OpenAI）のモデルを組み合わせてるんだ。オープンソースやローカルモデルも使えるよ。特に大規模なコンテキストや多くのステップがある長いタスクに焦点を当ててるんだ。<br>1 - https://github.com/plandex-ai/plandex" userName="danenania" createdAt="2025/07/23 02:03:54" color="#ff5733">}}




{{<matomeQuote body="自分のエージェントの効率や成功率を何かと比較して測定したことある？気になるんだ。たくさんのコーディングエージェントがあるから、それはみんなが選ぶのに役立つだろうね。" userName="esafak" createdAt="2025/07/23 04:00:06" color="#ff33a1">}}




{{<matomeQuote body="今それに取り組んでるよ。Plandexはすでに代替案と比べて長期間のタスクでうまく機能してるから、リリース時には比較結果も含む予定だよ。" userName="danenania" createdAt="2025/07/23 05:13:55" color="#45d325">}}




{{<matomeQuote body="Plandexにはサブエージェントやスウォームみたいな機能がある？CCだとサブエージェントに分散させるのがコンテキストを管理する唯一の方法だってわかったんだけど、別のモデルをサブエージェントとして他の作業をレビューさせたいんだ。" userName="carderne" createdAt="2025/07/23 10:54:26" color="#38d3d3">}}




{{<matomeQuote body="内蔵のブランチ機能があるよ。これで好きなだけ関連タスク間でコンテキストを共有できるんだ: https://docs.plandex.ai/core-concepts/branches" userName="danenania" createdAt="2025/07/25 16:13:15" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
