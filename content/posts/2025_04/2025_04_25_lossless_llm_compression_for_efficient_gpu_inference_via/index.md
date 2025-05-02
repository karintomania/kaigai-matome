+++
date = '2025-04-25T00:00:00'
months = '2025/04'
draft = false
title = 'マジ！？LLMをロスレス圧縮してGPU推論が爆速に！動的長浮動小数点フォーマット DFloat11 が効率化の鍵'
tags = ["LLM", "圧縮", "GPU", "推論", "最適化"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> マジ！？LLMをロスレス圧縮してGPU推論が爆速に！動的長浮動小数点フォーマット DFloat11 が効率化の鍵

引用元：[https://news.ycombinator.com/item?id=43796935](https://news.ycombinator.com/item?id=43796935)




{{<matomeQuote body="bfloat16ってダイナミックレンジが広いけど全部使われてないのが原因だよね。みんな0.01みたいなハイパーパラメータは好きだけど10^10は嫌がるし。\nもし全部（ハイパーパラメータとか重みとか学習データとか）を10^6倍しても、ネットワークは大体同じように動くんだよね。上限はほとんど使わないから。重みとかで使われるbfloat16の値のエントロピーって大体10-12ビットくらい。符号とか仮数部は圧縮できないノイズになりがち。\nMartin BurtscherのラボとかLLNLのfpzipとか、俺のdietgpu（https://github.com/facebookresearch/dietgpu）でも同じことやってて、GPUクラスタでの学習を10%くらい高速化できたよ。データをロスレス圧縮して送受信してたんだ。rANSはHuffman codingより効率的で実装も簡単だし。DFloat11でも性能向上に繋がると思う。" userName="jhj" createdAt="2025/04/25 20:45:23" color="#ff33a1">}}




{{<matomeQuote body="Jeffのプロフ見ればわかるけど、この人マジですごいんだよね。Meta/FAIRとかコミュニティも彼のコードにめっちゃ助けられてる。" userName="iandanforth" createdAt="2025/04/25 22:05:40" color="#ff5733">}}




{{<matomeQuote body="HNってマジ最高。ネットで一番頭いい人たちが集まってる。コメント欄がマジで有益な情報であふれてて、タイトルだけ見て脊髄反射で反応するバカいないし。" userName="VladVladikoff" createdAt="2025/04/26 00:13:39" color="">}}




{{<matomeQuote body="Jeffさん、rANSについて書かれたものって何かありますか？検索しても乱流モデルのことしか出てこなくて。\nローカルLLMを動かすには量子化が重要で、RAMがボトルネックになることが多いけど、他にBF16のロスレス圧縮で良い方法ってありますか？\nDFloat11は既存の量子化ワークフローに組み込みやすそうだけど、あなたは否定的みたいだし、俺の理解が足りないのかな。" userName="vessenes" createdAt="2025/04/26 00:33:57" color="">}}




{{<matomeQuote body="rANSはrange asymmetric numeral systemsのことだよ。残念ながら、良い資料は知らないんだ。" userName="zorgmonkey" createdAt="2025/04/26 00:43:40" color="">}}




{{<matomeQuote body="ANSに関する資料はたくさんあるよ。例えば、ここ（https://encode.su/threads/2078-List-of-Asymmetric-Numeral-Sy...）にまとまってる。" userName="eln1" createdAt="2025/04/27 06:29:17" color="">}}




{{<matomeQuote body="ハイパーパラメータとか重みとか学習データを全部10^6倍しても、ネットワークは大体同じように動くってのは怪しいと思うな。ニューラルネットワークの層では、入力に重みを掛けて足し合わせる処理が何度も繰り返されるから、最終的な出力層では10^6が何度も適用されて、10^600倍になっちゃう。" userName="bjornsing" createdAt="2025/04/26 04:47:26" color="">}}




{{<matomeQuote body="Deepseek v3の論文に、精度を向上させるためにmatmulの後にスケーリングする量子化方法が詳しく書かれてるよ。通常のGEMMとは違って、演算を最後まで残しておくんだ。3.3章に詳しいことが書いてあるから読んでみて（https://arxiv.org/html/2412.19437v2#S3）。" userName="ironbound" createdAt="2025/04/26 07:41:06" color="">}}




{{<matomeQuote body="追記：OP論文の最後の付録ページに、DFloat11を使うとLlama-3.1-8bとかQwen-2.5-14b/32bとかMistral-small-24bモデルでtokens/secが2-3倍遅くなるって書いてあるよ（他のモデルはスループットの低下は報告されてない）。\nDFloat11でtokens/secが向上するのは、一部の層をCPUにオフロードした場合だけ。スペースとスピードのトレードオフってやつだね。" userName="refibrillator" createdAt="2025/04/26 02:48:47" color="">}}




{{<matomeQuote body="bfloatって失敗だったのかな？ダイナミックレンジを広げるのが目的じゃなかったっけ？少なくとも、truncateしてゼロ埋めするコストは小さいけど。" userName="Dylan16807" createdAt="2025/04/27 03:54:18" color="">}}




{{<matomeQuote body="めっちゃいい説明ありがとー！モデルごととかレイヤーごとに平均を計算して、標準偏差だけをFP8とかもっと小さいので指定する方が効率的かな？" userName="brookst" createdAt="2025/04/26 03:49:28" color="">}}




{{<matomeQuote body="もし時間を巻き戻せるなら、半精度にもう1ビット（指数部6、仮数部9）割り当てて、BFloat16なんてやらなくてよかったんじゃないかって思っちゃうよね。" userName="liuliu" createdAt="2025/04/26 05:38:11" color="">}}




{{<matomeQuote body="もっと小さいfloat、例えば12bitとかを導入して、SIMDレジスタにもっとたくさんの値を詰め込めるようにするってのはどう思う？" userName="hinkley" createdAt="2025/04/26 00:57:41" color="">}}




{{<matomeQuote body="最近のGPUとTPUはFP8をサポートしてるんだよね。これが最新システムの効率アップの大きな要因。BlackwellはFP4もサポートしてるらしいよ。" userName="boulos" createdAt="2025/04/26 04:03:24" color="#45d325">}}




{{<matomeQuote body="一番すごいのは実用的な意味だよね。8×80GB GPUを積んだシングルノードで405Bパラメータのモデルをロスレス推論できるなんてマジヤバい。研究機関とかスタートアップが大規模なインフラコストなしで最先端モデルを実行できるようになるってのはデカい。" userName="badmonster" createdAt="2025/04/25 19:06:44" color="#785bff">}}




{{<matomeQuote body="今は…まあ使えるけど…モデルサイズとかGPUメモリサイズ、異なる精度サポートがどんどん変わっていく世界では、そこまで大きなブレイクスルーってわけじゃないかもね。" userName="danielmarkbruce" createdAt="2025/04/25 19:44:02" color="">}}




{{<matomeQuote body="研究機関とかスタートアップが大規模なインフラコストなしで最先端モデルを実行できるようになるってのはデカいって言うけど、ネオクラウドにインフラコストを負担させて、そこから借りればいいじゃん。ちなみに、俺がそのうちの一つを運営してる。" userName="latchkey" createdAt="2025/04/25 21:34:53" color="">}}




{{<matomeQuote body="GPUメモリサイズってそんなにすぐ変わる？そもそもモデルサイズは？" userName="striking" createdAt="2025/04/25 19:51:59" color="">}}




{{<matomeQuote body="AMDとNvidiaはどんどんGPUにメモリを積んでるよね。MI300xは192GB HMB3、MI325xは256 HMB3e、MI355xは288 HBM3eになるはず（で、FP4/6をサポート）。" userName="latchkey" createdAt="2025/04/25 21:25:34" color="#ff5733">}}




{{<matomeQuote body="それって一番デカくて高性能なオープンソースモデルのサイズじゃん。特にLlama 3.1は405Bパラメータだって。Deepseekの一番デカいモデルは671Bパラメータ。" userName="daveguy" createdAt="2025/04/25 21:18:58" color="">}}




{{<matomeQuote body="量子化とか次元削減、低ランク近似、蒸留とかと違って、ロスレス圧縮は常に正しいMLシステムへの追加だよね。だって前と同じ計算してるんだもん。問題は、ボトルネックにならないくらい速いかどうかと、使えるくらい圧縮率が高いかどうかだ。浮動小数点数はビットの無駄遣いだから（特にトレーニング中）。だから常に歓迎されるはず。極端な量子化（4ビット以下とか）は重みのエントロピーを上げちゃって、ロスレス圧縮の適用範囲を狭めるかも。だからロスレス圧縮と非可逆圧縮（量子化とか）は反発しあうこともあるんだよね。もし推論デバイスに何十億ドルも投資してるなら、ワークロードに必要なデバイス数を5%減らすだけでも超役に立つ。" userName="jhj" createdAt="2025/04/25 23:33:51" color="#785bff">}}




{{<matomeQuote body="それってインフラコストをクラウドの請求書に移すだけじゃん。" userName="saagarjha" createdAt="2025/04/26 01:11:01" color="">}}




{{<matomeQuote body="プロの現場ではそうかもね。でもコンシューマー向けのGPUは、ゲーム市場のトレンドとは裏腹に、ちょっと停滞気味。" userName="NBJack" createdAt="2025/04/25 21:58:22" color="">}}




{{<matomeQuote body="”常に正しい”か…。" userName="danielmarkbruce" createdAt="2025/04/27 01:04:54" color="">}}




{{<matomeQuote body="確かにクラウドの請求書以上の価値を提供してるから、それだけの価値はあると思う。単なるサーバーの設置とsshログインだけじゃないんだよ。HPCコミュニティ以外ではほとんど使われたことのない新しい機器だし。壊れたりバグったりもするから、業界との関係がないと管理できない。SMCIが直してくれないせいで、サーバーが1ヶ月以上ダウンしてる。25万ドル以上もする350ポンドの置物だよ。他の小規模企業がそんな交渉できるわけないじゃん。\n\n簡単にアクセスできるようにすることで、価値のあるサービスを提供してるんだ。rocev2と8x400Gをサーバーのクラスターで設定できる人がどれだけいると思う？そんな人材雇うの無理だよ。もう仕事あるもん。\n\nこのレベルの設備を導入するのに必要なcapex / opex / 複雑さはマジでヤバいし、業界がどんどん速くなってるから、どんどんデカくなってる（空冷はもう終わり）。動きが速すぎて、1年前に買った機材はもう時代遅れ（H100 -＞ H200がいい例）。自分で導入するなら、すごい減価償却モデルが必要になるよ。\n\nコストを移してるだけなんて思わないでほしい。" userName="latchkey" createdAt="2025/04/26 01:29:13" color="#ff5c5c">}}




{{<matomeQuote body="AMDとのNDAがあるから詳しくは言えないけど、未来は有望だって言える。" userName="latchkey" createdAt="2025/04/25 22:13:46" color="">}}




{{<matomeQuote body="ちょっと訂正。Llama 3.1はオープンソースモデルじゃなくて、Llama 3.1ライセンスモデルだって。DeepSeekもそうみたい。https://huggingface.co/deepseek-ai/DeepSeek-V3/blob/main/LIC... 勘違いしてたわ。使わないからライセンス確認してなかった。" userName="mhitza" createdAt="2025/04/25 21:42:28" color="#ff5733">}}




{{<matomeQuote body="え、おたくの競争優位性は「人間の摩擦が存在する」こと？…そんなシステムでどうやって自分を売り込むの？「この業界の人たちは仕事が大変。でもラッキーなことに、俺たちはほとんどの人と飲んだことがある」……" userName="zarathustreal" createdAt="2025/04/26 11:30:29" color="">}}




{{<matomeQuote body="うん。出力が変わらないから、正しい最適化だね。" userName="Dylan16807" createdAt="2025/04/29 07:39:45" color="">}}




{{<matomeQuote body="マジかよ、Nvidiaが288GBのBlackwell Ultra出すってよ。2018年頃は最大16GBだったのに。DeepSeekも最近670GBのモデル出したし。数年前はFalconの180GBでもデカいと思ったのに。" userName="danielmarkbruce" createdAt="2025/04/25 20:28:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="マジ頑張って！あんたみたいなプレイヤーもっと必要だわ。勝手なフィードバックだけど、ランディングページは顧客目線で作り直した方がいいよ。顧客は解決したい問題があるんだから。会社がどんだけ凄いかより、顧客の悩みを理解して、どう解決するか語る方が響くって。クイックスタートはインタラクティブなフォームにするとか。Backblazeのサイトとか参考になるかも。" userName="airstrike" createdAt="2025/04/25 21:45:09" color="#ff33a1">}}




{{<matomeQuote body="neocloudsってのはAI特化のクラウドのスタートアップのことらしい。NvidiaのGPUめっちゃ使ってAIのワークロードに特化したソリューションを提供してるんだってさ。へー。" userName="sundarurfriend" createdAt="2025/04/25 23:45:34" color="">}}




{{<matomeQuote body="LLMの推論だと、GPUはAmpere世代以降が重要になってくるよね。メモリの需要が爆上がりしたから。A100とかでかいLLM学習してたし。メモリの容量は帯域幅の世代交代のせいで制限されてるのかもね。" userName="spoaceman7777" createdAt="2025/04/25 21:19:20" color="">}}




{{<matomeQuote body="それだけじゃないでしょ。一部だけ取り上げてフォーカスしてるだけじゃん。" userName="latchkey" createdAt="2025/04/26 15:33:15" color="">}}




{{<matomeQuote body="著作権とか無視してモデル作ってるから。DeepSeekもOpenAIの続きを大量に使ってるって噂だし。誰も訴えたりしないよ。お互い様だから。" userName="Der_Einzige" createdAt="2025/04/26 02:24:26" color="">}}




{{<matomeQuote body="AMDに期待！CUDAの問題早く解決してくれ！" userName="DrillShopper" createdAt="2025/04/25 23:04:32" color="">}}




{{<matomeQuote body="正確性なんて重要じゃない場面で使われてるんだから、近い値で十分なのよ。むしろ、近似の方が汎用性高いまである。だから、それって的外れな意見。" userName="danielmarkbruce" createdAt="2025/04/29 21:29:55" color="">}}




{{<matomeQuote body="その言葉、SemiAnalysisの記事で初めて使われたんじゃないかな？　https://semianalysis.com/2024/10/03/ai-neocloud-playbook-and..." userName="latchkey" createdAt="2025/04/26 00:05:30" color="">}}




{{<matomeQuote body="deepseek R1とV3-0324はMITライセンスなんだね。" userName="gunalx" createdAt="2025/04/25 22:58:08" color="">}}




{{<matomeQuote body="急速に変化してるのは量子化アルゴリズムと、それをサポートするハードウェア機能だよね。例えば、Blackwell GPUはグループサイズ16で動的なFP4量子化をサポートしてる。そのグループサイズだと（精度指標的には）ほぼロスレスに近いんだって。" userName="kadushka" createdAt="2025/04/25 20:07:54" color="#ff5c5c">}}




{{<matomeQuote body="同じ結果を維持するのは安全策だね。BSじゃない。" userName="Dylan16807" createdAt="2025/04/30 02:24:37" color="">}}




{{<matomeQuote body="手厚いフィードバックありがとね！ウェブサイトは、ピッチ資料とか、意味のないスプラッシュ画面と問い合わせフォームだけのサイトじゃなくて、ドキュメントみたいにしたいんだ。Oxideみたいなサイトは嫌いで、スクロールして通り過ぎちゃうんだよね。もちろん、君の言う通り、これは俺のことばかりじゃなくて、もっと改善が必要だね。\n使いやすさも改善しないと。そこは今取り組んでるところだよ。完全にセルフサービスで、必要がなければ誰とも話さなくて済むようにしたいんだ。クレジットカード決済で終わり、みたいな。\n最近、価格を下げて、サービス内容を重視する人たちだけでなく、市場全体で競争できるようにしたんだ。誰よりも安くしようとしたわけじゃなくて、より良いサービスを提供しようとしたんだ。教訓にして、価格を調整したよ。Streisand効果で、他のプレイヤーのことはあまり言いたくないんだよね。\n重ねて、ありがとう！" userName="latchkey" createdAt="2025/04/25 22:11:26" color="">}}




{{<matomeQuote body="詳しく教えてほしいな。有能なコンピューターエンジニアで溢れてる市場で、他に競争優位性になりそうなものが見当たらないんだけど？" userName="zarathustreal" createdAt="2025/05/01 13:57:00" color="">}}




{{<matomeQuote body="こんなエキサイティングな時代に生きてて本当に感謝だわ。HNを開くたびに、ML/transformerモデルに関するエキサイティングなニュースが飛び込んでくるんだもん。もっとちゃんと読まなきゃいけないんだけど、llama.cppはcublasを使って、独自の”カスタムカーネル”を使ってるの？それとも、cublasカーネルをうまく使ってるだけなの？" userName="loufe" createdAt="2025/04/25 18:46:20" color="#ff5733">}}




{{<matomeQuote body="君の文章には時間軸がないのが面白いね。2週間？2ヶ月？2日？2分？\nどれも当てはまる時があるんだ！本当にエキサイティングな時代だね。" userName="jonplackett" createdAt="2025/04/25 19:15:25" color="">}}




{{<matomeQuote body="ご指摘ありがとう。2日に一度って言いたかったんだ！" userName="loufe" createdAt="2025/04/26 05:21:52" color="">}}




{{<matomeQuote body="この重みフォーマット戦争が落ち着いたら、ハードウェアがそれをサポートするように構築されるだろうね。おそらく、最適な重みフォーマットに合わせて最適化された行列乗算ハードウェアが必要になるだろう。" userName="Animats" createdAt="2025/04/25 21:35:29" color="#ff5c5c">}}




{{<matomeQuote body="最適化は事後的だよね。huffmanエンコードするには、まず学習させる必要があるから、純粋なフォーマットの問題じゃない。" userName="eoerl" createdAt="2025/04/25 22:53:33" color="">}}




{{<matomeQuote body="エージェントって品質・コスト・パフォーマンスのバランス取るのがマジ大変なのよ。この技術があれば、量子化で起こる予測不能な結果を避けつつコスト最適化できるかも。特にDFloat11使えば、もっと手頃なGPUに詰め込めるからコスト削減も期待できるかもね！xmad.aiの人っす。" userName="aseligman" createdAt="2025/04/25 22:06:53" color="">}}




{{<matomeQuote body="非圧縮モデルの一部をCPUにオフロードする代わりに、DFloat11だとトークン生成のスループットが1.9～38.8倍も向上するんだって。GPUメモリが限られてる場合、DFloat11は非圧縮モデルより5.3～13.17倍長いコンテキスト長を実現できるらしい。コンテキスト長だけでも試す価値ありそうだけど、GPU全部使ってもtokens/secは向上するのかな？LLMってメモリ帯域幅に制限されがちじゃない？" userName="yjftsjthsd-h" createdAt="2025/04/25 19:57:40" color="#ff5c5c">}}




{{<matomeQuote body="それは無いみたい。展開はメモリ間で行われ、一度に1テンソルずつ処理するから遅くなるらしい。A100で200 GB/s以下だって言ってるし、ベンチマークだとGPUとモデルによってはバッチサイズ1で1.5～4倍遅くなるみたい。バッチサイズ大きくすればこのオーバーヘッドは消えるみたいだけどね。他のロスレスコーデックなら同じハードウェアで600 GB/s出せるから、改善の余地はありそう。でもA100のメモリ帯域幅は1.6 TB/sだよ。" userName="brigade" createdAt="2025/04/26 06:18:41" color="">}}




{{<matomeQuote body="DOSのDoubleSpaceみたいに、遅いハードディスクからデータを読み込む速度が少し上がったみたいな感じかな？" userName="philjohn" createdAt="2025/04/25 20:20:27" color="">}}




{{<matomeQuote body="モデルのサイズが70%になったら、速度は1/0.7 = 1.43倍になるってことか。" userName="hnuser123456" createdAt="2025/04/25 20:58:26" color="">}}




{{<matomeQuote body="これって量子化されてないLLMのメモリ要件を30%も減らせるってこと？マジならすごい。" userName="wills_forward" createdAt="2025/04/25 19:01:34" color="#ff5733">}}




{{<matomeQuote body="Q8量子化が既にやりすぎって思われてて、50%削減できてる（しかも追加の計算なしに2倍の速度向上）ことを考えると、そこまで大きくないかも。よく使われるQ4KMだと30%くらい。既存の量子化に追加できるなら面白いけどね。K quantsは既にperplexityの影響に応じてレイヤーごとに異なる精度レベルを使ってるし。 calibrated imatrixはFFTに似た方法でさらに圧縮してる。" userName="moffkalast" createdAt="2025/04/25 19:28:30" color="">}}




{{<matomeQuote body="俺は気にする！クリエイティブなタスクのためにモデルのポストトレーニングにめっちゃ時間かけてるんだから。モデル量子化の影響は、強いlogit確率、temp 0、モデルが選ぶべき“正解”があるベンチマークタスクで評価されることが多い。perplexityみたいな、それ自体以外何も意味しない指標で測られることさえある。<br>Q8は強いと思うけど、量子化の影響は過小評価されてると思う。みんな1つのモデルの10以上のバリアントを使いながら、モデルがどう動作するか話してるんだ。<br>ビット/重みが分かっても、量子化がモデルにどう影響してるか分からない:" userName="BoorishBears" createdAt="2025/04/25 20:12:33" color="#ff5733">}}




{{<matomeQuote body="自分でモデルを学習させたことあるなら、量子化対応学習について知ってるよね？" userName="imtringued" createdAt="2025/04/26 09:35:02" color="">}}




{{<matomeQuote body="「厳密なロスレスの定義を満たすかどうか誰も気にしてない」≠「量子化はいい加減にやってもいい」" userName="danielmarkbruce" createdAt="2025/04/25 20:37:40" color="">}}




{{<matomeQuote body="Dynamic Quants 2.0の記事みたいにsnarkyに言ってるなら、彼らは世の中の99.99%の量子化手法と比較してるんだよ。問題は量子化を「いい加減」に作ることじゃなくて、LLMみたいな多次元のものに対して、いろんな量子化がどれくらいlossyか誰もわかってないのに「実質ロスレス」って言い続けてること。ちゃんとlossyさを測ろうとすると「ロスレスとは言えない」ってなる。Q4がMMLU 5-shotで1%以内の差でも、WikiTextみたいにMMLUに合うデータセットで調整してるからかも。自分のデータセットで調整しないと、性能に影響が出るかもね。" userName="BoorishBears" createdAt="2025/04/25 20:54:29" color="">}}




{{<matomeQuote body="それのことじゃないよ。量子化モデルをいい加減に使ったり、適当なこと言ったりしてるって言ってるんだ。作ることと使うことは違うけど、言いたいことは伝わったと思う。ここではそういう言葉を使うべきじゃない。役に立たない。結果が良ければいいし、悪ければ悪い。データセットdで追加学習するのと同じで、重みが変わってタスクYの性能がどれだけ良くなったか悪くなったかを見るだけ。" userName="danielmarkbruce" createdAt="2025/04/25 21:22:37" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="量子化戦略を選ぶには変数が多いから、この言葉は使えるよ。<br>・アプリの品質<br>・最初のトークンまでの時間<br>・トークン間の遅延<br>・メモリ使用量<br>・必要なハードウェア<br>一番測りにくいのは「アプリの品質」。測るのが大変だから、測るのを避けるために他の部分の性能を悪くしてる。だから405bパラメータのモデルをフル精度で動かすことになる(https://openrouter.ai/meta-llama/llama-3.1-405b-instruct/pro...)。問題を避けるためにお金を払ってるなら、問題を消せる言語や技術は有効だよ。" userName="BoorishBears" createdAt="2025/04/25 21:49:49" color="#ff5c5c">}}




{{<matomeQuote body="フル精度で動かすとき、みんながユースケースに対してそれらのことを知ってるかのように言うけど、フル精度と量子化の両方でできる人もいれば、できない人もいるよね。" userName="danielmarkbruce" createdAt="2025/04/25 21:58:26" color="">}}




{{<matomeQuote body="最終段階でサンプラーが確率をめちゃくちゃにしてランダムなことを選ぶから、lossy圧縮の許容度は高い。Q4モデルがfp16モデルより性能が良いこともある。top_k=1でベンチマークすると、Q4モデルの方がランダム性があって、ローカルな最大値を超えて正しい答えにたどり着くことがあるんだ。" userName="moffkalast" createdAt="2025/04/25 19:53:28" color="#38d3d3">}}




{{<matomeQuote body="ICLRでtop_pとかtop_kみたいなサンプラーがクソだって言ったら口頭発表になったよ。min_pを使おう！" userName="Der_Einzige" createdAt="2025/04/26 02:28:39" color="#ff33a1">}}




{{<matomeQuote body="わかる。もっと多くの人が代表的なサンプラー設定でモデルをベンチマークして、5回か10回レスポンスの平均を取ってほしい。" userName="moffkalast" createdAt="2025/04/26 07:13:41" color="">}}




{{<matomeQuote body="それは違うよ。測定可能な性能差があるならね。" userName="kridsdale3" createdAt="2025/04/25 19:57:27" color="">}}




{{<matomeQuote body="「strict」って言葉の意味ってあるよね。みんな、特にあんた自身も、性能に実質的な差があるかどうかしか気にしてないじゃん。「これはロスレスで、あれはロスレスじゃない」なんて、この分野じゃ全く役に立たない発言だよ。多くの分野で、非可逆圧縮は許容されないか、違法か、現実的じゃないんだよね。" userName="danielmarkbruce" createdAt="2025/04/25 20:33:54" color="">}}




{{<matomeQuote body="フル８ビットの精度で劣化が発生するなら、やり方が間違ってるんじゃない？" userName="kadushka" createdAt="2025/04/25 20:09:38" color="">}}




{{<matomeQuote body="もしくは、モデルの学習がイマイチだったのかもね(重みが尖りすぎてる)。" userName="omneity" createdAt="2025/04/25 21:27:07" color="">}}




{{<matomeQuote body="これってZipNNとは違うの？　https://arxiv.org/pdf/2411.05239I に書いてあるけど、ベースにしてるのか、それとも違う/より良いものなのかがわからん…" userName="thund" createdAt="2025/04/25 23:19:04" color="">}}




{{<matomeQuote body="見つけた。このニュースでこの論文を思い出した。https://proceedings.neurips.cc/paper/2020/file/747e32ab0fea7..." userName="thund" createdAt="2025/04/25 23:24:21" color="">}}




{{<matomeQuote body="いや、これはデータの転置（データワードから個々のバイトをまとめる）と、冗長なものを圧縮するためにLZ/辞書型コンプレッサーを使うオプションを追加してるだけだよ。でも、NNの重みに対してLZ型コンプレッサーは、テキストデータほど冗長じゃないし、辞書のオーバーヘッドを避けるために活用できる繰り返しがあんまりないから意味がないと思うな。LZ型コンプレッサーを追加して、推論のクリティカルパスに入れると、解凍がすごく遅くなる。解凍ルーチンを計算カーネル（例えば、算術演算の前に各タイルで解凍を実行するGEMM）と融合させるのがベストで、解凍ルーチンが単純であればあるほど、簡単になる。" userName="jhj" createdAt="2025/04/25 23:28:21" color="">}}




{{<matomeQuote body="この動きの速さ、マジでクールだねー。毎週新しいテクニックやハードウェアのアップグレードがある気がする。こういう効率の改善にマジでハマっちゃうわw" userName="gitroom" createdAt="2025/04/26 03:57:27" color="#ff33a1">}}




{{<matomeQuote body="これって新しいモデルでも動くのかな？　コードは推論専用みたいだけど、勘違いかな？" userName="mountainriver" createdAt="2025/04/25 19:32:35" color="">}}




{{<matomeQuote body="バイナリの代わりにターナリを使えば、さらに高い圧縮率につながると思う。" userName="jsemrau" createdAt="2025/04/26 01:03:22" color="">}}




{{<matomeQuote body="いやいや、別に新しくもないよ。最初の三進法コンピュータは1959年頃にはあったんだから！https://en.wikipedia.org/wiki/Setun" userName="buildbot" createdAt="2025/04/26 06:30:06" color="">}}




{{<matomeQuote body="誰かがLLMを使って画像をさらに圧縮する方法を見つけたらしい。去年からホワイトペーパーを公開するって言ってたけど：https://getproxyai.com/blog/this-image-is-4KB/s　じゃあ、お先に失礼するわ。" userName="firefoxd" createdAt="2025/04/26 03:35:13" color="">}}




{{<matomeQuote body="これってオンデバイス推論にとってマジででかい進歩じゃん。大きいモデルのダウンロード時間が長いせいで、ローカル推論が技術者以外には使い物にならなかったからね。" userName="aazo11" createdAt="2025/04/25 21:58:04" color="#38d3d3">}}




{{<matomeQuote body="興味深いけど、ローカルのLLMユーザーにはあんまり現実的じゃないかも。だってLLMはローカルだと4-bitで動かすのが普通だし。" userName="iamnotagenius" createdAt="2025/04/25 18:57:58" color="">}}




{{<matomeQuote body="確かにそうかもね。でも彼らの研究には5080ローカルでの実行も含まれてたよ。俺が思うに、重要なのはLUTとかのテクニックをlossy quantsにも応用できる可能性があるってこと。例えば、4bitのサイズで5bitの精度が出せるとか？分かんないけど、ありえるかも？あと、彼らの2段階設計が現在の量子化カーネルデザインを良くするかもしれない。" userName="sroussey" createdAt="2025/04/25 19:08:06" color="#45d325">}}




{{<matomeQuote body="そうそう、quantsに重ねて使える可能性があるよね。量子化されたアクティベーションは既に「高密度」だから、(16 -＞ ~11 bits)みたいに圧縮できないかもしれないけど、可能性は十分ある。" userName="spindump8930" createdAt="2025/04/25 20:13:51" color="">}}




{{<matomeQuote body="俺も同じように読んだわ。bfloat16の特定の属性だから、ローカルハードウェアでquantsを動かす人たちは同じ非効率性を利用できないってことだね。" userName="jasonjmcghee" createdAt="2025/04/25 22:15:58" color="">}}




{{<matomeQuote body="4-bit量子化の75%のlossynessよりも、この手法の70%の節約による忠実さを好む人もいるかもね。それに、最小の表現のために両方のコストをトレードしたい人のために、これらの手法を組み合わせることもできるかもしれない。" userName="gojomo" createdAt="2025/04/25 19:28:26" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
