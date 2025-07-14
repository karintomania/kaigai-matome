+++
date = '2025-07-07T00:00:00'
months = '2025/07'
draft = false
title = '超高速言語モデル「Mercury」登場！拡散モデルベースで開発スピードが桁違いに？'
tags = ["AI", "機械学習", "拡散モデル", "言語モデル", "高速化"]
featureimage = 'thumbnails/green1.jpg'
+++

> 超高速言語モデル「Mercury」登場！拡散モデルベースで開発スピードが桁違いに？

引用元：[https://news.ycombinator.com/item?id=44489690](https://news.ycombinator.com/item?id=44489690)




{{<matomeQuote body="超速LLMのMercuryが出てきても、テストが遅いと意味なくない？今のCIって、CPUやI/Oでボトルネックになるし、ワーカー足りない、フレークする、キャッシュ効かない、クラウドVM遅い…って問題山積みで、ずっと進歩してない気がするんだ。<br>このままだと、LLMがコード書くようになってもテスト待ちで詰まるだけだよ。どうやってテスト実行を速くするんだろ？" userName="mike_hearn" createdAt="2025/07/07 13:46:50" color="#ff33a1">}}




{{<matomeQuote body="＞ Maybe I’ve just got unlucky in the past、but in most projects I worked on a lot of developer time was wasted on waiting for PRs to go green。<br>これがわかんない。開発者の時間ってマシンよりずっと高いんだから、CIワーカー増やせばいいだけじゃん？Googleにいた時なんて、テストを10000台で回して5分で終わらせてたよ。Hermetic buildとキャッシュは両立するんだし。" userName="kccqzy" createdAt="2025/07/07 14:20:17" color="#ff5733">}}




{{<matomeQuote body="開発者の時間は高いけど、ほとんどの会社でGoogleみたいに10000倍もじゃないって。Googleは例外だよ。ライセンス料とか、全部が並列化できないAmdahl’s lawもあるし、環境気にする人もいるしね。タイプミス修正のPRですら200CPU時間使ってた会社もあったんだから（Bazel使わないとか正気の沙汰じゃなかったけど）。" userName="IshKebab" createdAt="2025/07/07 14:59:56" color="">}}




{{<matomeQuote body="LLMに100行以下のちょい直しとか、rubber-duckしてもらうのはいい。でもCIに統合するのは、大規模PJだと何百時間も生産性失うことになるよ。複雑なシステムは全然ダメ。重要なリポジトリで supervision 無しでLLM使うなんて絶対無理。結局手直しする羽目になるなら、自分でやった方が早いんだってば。" userName="TechDebtDevin" createdAt="2025/07/07 13:55:09" color="">}}




{{<matomeQuote body="CIの待ち時間は、モダンなクラウドで解決できるよ。スポットインスタンスを数分だけプロビジョニングして、終わったらシャットダウンすればいい。クラウドプロバイダーに任せちゃえ。<br>でも、本質的な問題は、開発者がPR待ちで休憩してるなら、これを最適化しても休憩時間を削るだけで、大して価値ないんじゃないかってことだと思う。" userName="underdeserver" createdAt="2025/07/07 16:19:09" color="">}}




{{<matomeQuote body="最近働いた2社は、IPのことで神経質になりすぎてクラウドCI使ってなかったんだ。それに、クラウドを使っても、コストは多少変わるかもしれないけど、他の問題は解決しないんじゃないかな？クラウドって高いし。" userName="IshKebab" createdAt="2025/07/07 18:25:53" color="">}}




{{<matomeQuote body="俺もGoogleに何年かいたけど、あそこは全然普通じゃないよ。リソース投げ放題だし、エンジニアにも金払える。普通の会社はCI予算決まってるし、10000台でテストなんて無理。CIってSWE数人分の給料分くらい簡単に消えるんだ。普通の会社はキャッシュ不安定だから確実性優先で遅くなるんだよ。" userName="mike_hearn" createdAt="2025/07/07 14:30:15" color="#ff5c5c">}}




{{<matomeQuote body="IPのことでクラウド使わないって、心配しすぎだよ。Azureにはメモリ内容まで暗号化するConfidential Computeって機能があるし、AzureやAWSが顧客のコード盗むなんて、ビジネス的に絶対ないって。そんなことしたらすぐ訴えられて顧客失う。Microsoftですら、OSS見ないようにしてるくらいだから。" userName="jiggawatts" createdAt="2025/07/07 22:04:49" color="">}}




{{<matomeQuote body="この議論、何回見んだろって思うんだけどさ、いつになったらLLMが使えるって受け入れるの？たくさんの人が「生産性上がる」って言ってるのに、あと何人そう言えば考え方変えるわけ？" userName="kraftman" createdAt="2025/07/07 14:20:13" color="">}}




{{<matomeQuote body="今Googleにいるんだけど、リソース全部あるのに、一番ボトルネックになってるのはPresubmit TAPと人間のレビューなんだよね。エディタでCLs作るのに数時間、システムに入れるのに何日、時には何週間もかかることあるよ。" userName="kridsdale1" createdAt="2025/07/07 17:41:57" color="">}}




{{<matomeQuote body="Azureの機密コンピュートは知らないけど、GCPのはAMD SEV-SVPベースで、過去に脆弱性で機密性がヤバくなったことあるらしいよ。" userName="kccqzy" createdAt="2025/07/07 22:48:20" color="">}}




{{<matomeQuote body="大規模コードでClaude使ったら結構使えたよ。全部じゃなくても色々。MercuryはコーディングだとClaudeに劣るかもだけど、LLMでできる簡単なタスク（テスト追加、バグ修正、UIアニメ）はたくさんある。ダメならPR閉じればいいし。RenovateみたいなボットでもCI時間食うけど役に立つよ。" userName="mike_hearn" createdAt="2025/07/07 14:08:34" color="#ff33a1">}}




{{<matomeQuote body="マストなXKCD（https://xkcd.com/538/）。コードってそこまで秘密じゃないし、特にMicrosoftみたいなとこからはね。エアギャップ環境じゃない限り、開発環境はPackageManager(NuGet, NPM)、IDE(VS Code)、GitHub Enterprise、CI/CD、WindowsとかMicrosoft含むサードパーティソフトから常に漏洩リスクに晒されてるんだよ。USBで地下施設に運び込むとかじゃない限り、コードは常に「晒されてる」。セキュアなクラウドVMの脆弱性心配するより、開発者が自宅ゲーミングPCで仕事してる（これマジである）現実見た方がいいよ。完璧求めすぎて現状を見落としてるんだ。" userName="jiggawatts" createdAt="2025/07/07 23:44:37" color="#38d3d3">}}




{{<matomeQuote body="CIが遅いのは、高いクラウドVMとかフルハーメチックビルドのせい。俺の経験だと、ベアメタルレンタルマシンでセルフホストすれば、コスト半分で性能2-5倍になると思うんだ。みんな外部サービス使いたがるけど、ベアメタル扱うスキルも役に立つし、安く速くなるのにこういう移行がタブー視されるのが謎。いつも「ロックインされるけど別のサービスへ」ってなるのがおかしいよ。" userName="rafaelmn" createdAt="2025/07/07 16:38:26" color="#45d325">}}




{{<matomeQuote body="俺的には、LLMはテストカバレッジ苦手なんだよね。テストがある理由やアサーションの概念を理解できないから、テスト通すためだけに値をハードコードしがち。" userName="airstrike" createdAt="2025/07/07 14:29:45" color="">}}




{{<matomeQuote body="うーん、Claudeは依存関係を全部モックして、元のコードの鏡像みたいな、全く役に立たないユニットテスト書くのは得意だよ。カバレッジ100％だけど、何もテストされてないやつ。" userName="wrs" createdAt="2025/07/07 15:27:45" color="">}}




{{<matomeQuote body="「LLMが役立つこといつ認めるの？」って議論よく見るけど、あのコメント最初からLLMはコーディングの特定の役割で役立つって認めてるし。「何人が生産性上がったって言えば変わるの？」って？たくさんの人が信じてるから正しいって論証は、単にその信念が人気ってこと以上の事実を証明しないんだよ。" userName="dragonwriter" createdAt="2025/07/07 14:51:17" color="">}}




{{<matomeQuote body="多くの会社は開発者用のハードウェアにお金かけるの変に渋るよね。従業員の半日でかかる費用と同じ1000ドルの高性能ノートPCを3年間使わせるのを拒んだりする。" userName="wat10000" createdAt="2025/07/07 16:25:43" color="">}}




{{<matomeQuote body="PythonアプリのCI、astral.shのツールチェーン（uvでインストールとキャッシュ）でかなり速くなったよ。mypyの代わりにそこの型チェッカー使えばもっと速くなるはず。フロントエンドあるとPlaywrightテストが一番遅くなるかな。（あ、Mike、Google Mapsで一緒だった？あなたSREで一番好きだったから、この意見信じるね！）" userName="pamelafox" createdAt="2025/07/07 21:55:57" color="#ff33a1">}}




{{<matomeQuote body="「PR待つのに時間無駄」ってよくある話。devsがdependency inversion分かってないせい。新人流入で今後も続くかも。遅くする方法を教えるね：常に「DB」使う（ただのオブジェクト保存じゃなく）。式じゃなく文で（「残高は取引合計」じゃなくDBに書いて結果読む）。これでテストは順番にしかできなくなる（同時だと競合）、セットアップとか状態リセット増える。状態変わるの待つ必要出るからthread sleep使う。不安定ならsleep増やして、通ればコミット。" userName="mrkeen" createdAt="2025/07/07 19:00:02" color="#45d325">}}




{{<matomeQuote body="これって揚げ足取りみたいだな。GPUは1秒間に100京命令もできるのに、1秒以内で終わるテストが書けないってのは、根本的な限界じゃなくてテストが超非効率ってことじゃないの？" userName="gdiamos" createdAt="2025/07/07 18:59:26" color="#ff33a1">}}




{{<matomeQuote body="やっほー！:)Astralの仕事はすごいけど、どうやって続けていくんだろうね。VC任せなのかな？たいていのアプリはCIでCPU以外がボトルネックになってるんだよ。JITやDB、ブラウザとか。だから言語だけじゃ変わらないかもね。桁違いの改善には新しいアイデアが必要だよ。" userName="mike_hearn" createdAt="2025/07/08 08:03:12" color="#ff33a1">}}




{{<matomeQuote body="前の会社では、ちっちゃいスタートアップだったんだけど、オフィスのサーバーワークステーションの方がクラウドで借りるより安くて性能も良かったんだ。ベアメタルはテストやCIにすごく効くよ。この手の用途でまともなGPUが付いたクラウドマシン、安く見つけるの難しいんだよね。" userName="azeirah" createdAt="2025/07/07 17:24:29" color="#45d325">}}




{{<matomeQuote body="...そして、私のコメントはそれについて話してるんじゃなくて、LLMでコード書くと50%書き直すから役に立たないって意見に対してだよ。みんなと違う意見でもすぐ変えないけど、違いの原因は調べるようにしてる。LLMが使える派とそうじゃない派の二極化は、自動テストが使える派とそうじゃない派の二極化に似てて、同じ理由がある気がするな。" userName="kraftman" createdAt="2025/07/07 18:55:40" color="">}}




{{<matomeQuote body="スループットとレイテンシを勘違いしてるよ。長いCIは開発者の待ち時間を増やすけど、開発者は他の作業に切り替えられるから全体の生産性（スループット）はそんなに落ちないんだ。CIのコストはゼロじゃないけど、実行時間ほどじゃないよ。それに、ほとんどの開発作業はCIがボトルネックじゃなくて、コードレビューとかデプロイなんだ。" userName="wavemode" createdAt="2025/07/07 22:14:46" color="#38d3d3">}}




{{<matomeQuote body="主にJavaで並行コードを書く経験だと、中途半端なのを信頼できるExecutorsとかDBトランザクションみたいな簡単で良いやつで書き直すことが多かったよ。synchronizedとかactorsみたいなのを使うと大変な目に合うんだ。レースコンディション探る3000スレッドのテストはちょっと誇りだけど、毎回実行するのはホント嫌だったなぁ。" userName="PaulHoule" createdAt="2025/07/07 15:06:55" color="">}}




{{<matomeQuote body="＞会社はみんな文句言ってるの聞いてCIの作業者（ワーカー）を倍にしないの？<br>しないよ。マネジメントのせいか知らないけど、こういう議論はいつも長引くんだ。もっとリソース欲しいって頼んでも、承認されるか、ひどい場合は却下されるまでに、頼んだリソースの値段より人間の人件費の方がよっぽどかかっちゃうんだよ。" userName="ronbenton" createdAt="2025/07/07 14:55:17" color="#785bff">}}




{{<matomeQuote body="＞開発者が、会社から支給されたクソPCより10倍速いからって自宅のゲーミングPCを仕事に使ってる<br>＞うん、これよくあるよ。会社が完璧を求めすぎて良いものを台無しにしたからだけど、君は知らないだけだろ。<br>そんなのはセキュリティ意識低いスタートアップだけだよ。セキュリティが大事な場所（例えばフィンテックとか）だと、PCはロックダウンされて（管理者権限なし）、ストレージは暗号化、VPN認証情報の一部もアクセスできないとこにあるんだ。" userName="oldsecondhand" createdAt="2025/07/08 03:51:43" color="">}}




{{<matomeQuote body="playgroundを試したら変な応答が来たんだ。正規表現パターンを頼んだら、まずモデル自身が計画を立てて、パターンを書いて、それからテストを書き始めたんだよ。でもテストが止まらないんだ。どんどんサイズが増えて、多分コンテキスト限界に達して回答がキャンセルされたんだと思う。<br>あと、テストを書くたびにそのテストが通るか失敗するかコメントしてたんだけど、30個目くらいからそれも間違え始めてさ。正しいはずのテストを失敗するって言ったり。<br>120個目くらいからはテスト自体も意味不明になって、ただの変な文字になってたよ。パターンも間違ってたけど、無限テストの方が面白いね。" userName="true_blue" createdAt="2025/07/07 15:02:44" color="#38d3d3">}}




{{<matomeQuote body="そういえば、普通モデルでもちょっと前までこういうことよくあったよ。無限ループみたいに、前の出力と少しだけ違うものを延々と出し続けるんだよね。" userName="ianbicking" createdAt="2025/07/07 19:06:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ほとんどのモデルでコンテキストウィンドウを小さくすると、こういう振る舞いになるんだよ。小さすぎると、Gemini 2.5みたいな最新モデルでもほぼ意味不明になるね。<br>Mercuryは論文によると32kのコンテキストウィンドウがあるらしいから、それが原因かもね。" userName="data-ottawa" createdAt="2025/07/07 21:16:20" color="#ff33a1">}}




{{<matomeQuote body="2.5 Proの最近の100万コンテキスト長でも経験したことあるよ。いくつかの失敗したアプローチを何度も試して、失敗に気づいて、思考を終えずにループしてたんだ。トークンを無理やり止めなきゃいけなかった。<br>劇的に良くなって稀になったとはいえ、これはこの技術に根本的な失敗モードの一つだと思うな。" userName="jdiff" createdAt="2025/07/08 15:21:55" color="#ff5c5c">}}




{{<matomeQuote body="これって、トークン予測だけじゃ正確さには全然足りないってことの典型的な例だね。絶対に無理。LLMはコードについて推論するようには設計されてないんだ。" userName="beders" createdAt="2025/07/07 18:42:04" color="">}}




{{<matomeQuote body="Claude Sonnetでこれになったことあるわ。私のプロンプトと全く関係ない大量のソースコードを吐き出し始めて、学習データから来てるみたいだった。時々コードベースを切り替えたり…例えば、数千行のCプログラムが出て、そのあと別のJavaScriptのコードに変わったり。狂ってたよ！" userName="_kidlike" createdAt="2025/07/08 06:19:19" color="#ff33a1">}}




{{<matomeQuote body="solidgoldmagikarp[0]に似てるね。たぶんプロンプトの中に、学習データ内で異常に多く含まれてる何かがあったんだろう。[0] https://www.lesswrong.com/posts/jbi9kxhb4iCQyWG9Y/explaining..." userName="CSSer" createdAt="2025/07/08 06:44:24" color="#ff5c5c">}}




{{<matomeQuote body="これは小さめのLLMならどれでもよくあることだよ。" userName="throwaway314155" createdAt="2025/07/08 20:54:13" color="">}}




{{<matomeQuote body="面白すぎて本当だとは思えないんだけど。" userName="fiatjaf" createdAt="2025/07/07 15:20:00" color="">}}




{{<matomeQuote body="テックレポートによると、このモデルはSEDDモデルっていう[28]を拡張したものらしいよ（SEDDの論文はこちら→https://arxiv.org/abs/2310.16834 ）。<br>俺はSEDDのPython実装をゼロから作った（見て→https://github.com/mstarodub/dllm ）。一番クリーンで読みやすいのを目指したんだ。<br>論文にはあったけど実装されてなかった複雑なノイズ除去方法も実装したよ。<br>おもちゃのデータセットなら、GPU1枚で数時間で動かせた。" userName="mxs_" createdAt="2025/07/07 20:54:16" color="#ff33a1">}}




{{<matomeQuote body="ちなみに、DeepMindも拡散モデルベースのGeminiモデルを出してるんだ（これね→https://deepmind.google/models/gemini-diffusion/ ）。<br>ちょっと試したんだけど、このMercuryみたいに速さはすごいものの、応答の質は他のGeminiモデルより全然イマイチだったな、俺のテストでは。" userName="fastball" createdAt="2025/07/07 13:50:45" color="">}}




{{<matomeQuote body="俺もアクセスできるまで数週間かかったよ。<br>それまで待てないなら、Simonさんのここで良いデモが見れるよ→ https://simonwillison.net/2025/May/21/gemini-diffusion/" userName="MattSayar" createdAt="2025/07/08 17:19:30" color="">}}




{{<matomeQuote body="ちょっと使ってみた感じ、すっごい速いけど正確じゃないって意見に同意するよ。" userName="Powdering7082" createdAt="2025/07/07 17:26:11" color="">}}




{{<matomeQuote body="今ってGPU関係のコードには性能アップの伸びしろが山ほどあるよね。<br>でもさー、これってarXivの使い方としてどうなの？研究論文ってより、マーケティングのリンク集みたいに見えるんだけど。<br>俺が間違ってるか無知なら教えてほしいな。" userName="mtillman" createdAt="2025/07/07 15:55:20" color="">}}




{{<matomeQuote body="間違ってはないと思うけど、こういうの（arXivの使い道）は今に始まったことじゃないよ。" userName="ricopags" createdAt="2025/07/07 20:53:19" color="">}}




{{<matomeQuote body="無料のプレイグラウンドリンク使ってるんだけど、マジで超速いね！<br>「diffusion mode」の切り替えも視覚化として結構いい感じ。正確かは分かんないけど。<br>線ノイズから始まってだんだんクリアになるのって、実際は状態空間の曖昧なベクトルからトークンが出てきて、それが段々ハッキリして最終的に単語になるってことなのかな？" userName="chc4" createdAt="2025/07/07 13:19:16" color="#45d325">}}




{{<matomeQuote body="テキスト拡散モデルって、連続した潜在空間を使うのもあるけど、昔はあんまうまくいかなかったんだ。<br>今よく見るやつは、実際のトークン出力そのものを予測して、それを次のステップに使う感じ。<br>タイムステップを修正しながら最終結果に近づいていくのが「拡散」っぽいとこかな。<br>Mercuryの仕組みに似てそうなアーキテクチャの解説を俺が書いたから、読んでみて→ https://pierce.dev/notes/how-text-diffusion-works/" userName="icyfox" createdAt="2025/07/07 16:30:08" color="#785bff">}}




{{<matomeQuote body="へー、いいね、ありがとう！元の記事は実際の動作について詳しくなくて、ほとんどベンチマークばっかりだから、これはマジ助かるわ :)" userName="chc4" createdAt="2025/07/07 22:34:06" color="">}}




{{<matomeQuote body="リンクはこちらだよ：https://chat.inceptionlabs.ai/" userName="maelito" createdAt="2025/07/07 13:30:58" color="#45d325">}}




{{<matomeQuote body="残念ながら、まだあのstRawbeRRyとかSally’s 1 sisterみたいなテストはクリアできないみたい…" userName="sexy_seedbox" createdAt="2025/07/07 23:43:13" color="">}}




{{<matomeQuote body="マジで信じられないくらい速いな、あれ！" userName="PaulHoule" createdAt="2025/07/07 13:23:03" color="">}}




{{<matomeQuote body="料金はこれね：<br>出力トークンあたりUS$0.000001 ($1/M トークン)<br>入力トークンあたりUS$0.00000025 ($0.25/M トークン)<br>詳細はこちら：https://platform.inceptionlabs.ai/docs#models" userName="JimDabell" createdAt="2025/07/07 13:53:39" color="#785bff">}}




{{<matomeQuote body="料金はちょっと高めかな。パフォーマンス重視のアプリ開発でMercuryとGroq（Llama 3.1 8bとかLlama 4 Scout）を試したけど、速度は互角なのにGroqの方がずっと安かった。でも、拡散モデルはこれからも注視していくつもりだよ。早く良いオープンソース版が出てほしいな。可能性にワクワクしてる。" userName="asaddhamani" createdAt="2025/07/07 14:20:36" color="#45d325">}}




{{<matomeQuote body="へー、知らなかったよ。Groqの料金がそんなに良いなんて思わなかったな！" userName="tripplyons" createdAt="2025/07/07 17:25:40" color="">}}




{{<matomeQuote body="もし料金重視なら、DeepInfra.comをチェックしてみて。ここは100万トークンあたり数セント台のモデルが色々あるよ。ただし、速度はMercuryやGroq、Samba Novaほどじゃないけどね。(この会社とは顧客として数年使ってるだけで、特に関係はないから安心して)" userName="tlack" createdAt="2025/07/07 18:55:30" color="#ff5733">}}




{{<matomeQuote body="DeepInfraはマジで価格が凄いよ。例えばQwen3 embeddingモデルは100万トークンあたりUS$0.002とかだからね。ベンチマークスコアが良い他の選択肢より一桁安いレベル。でも、P99のパフォーマンスは遅いし、ばらつきも大きいのが難点。レイテンシが重要な作業には向かないかな。そこが改善されれば、もう迷うことなく使うんだけどね。まあ、DeepInfraはAPIプロバイダーの中で一番価格が低い傾向にあるのは間違いない。" userName="asaddhamani" createdAt="2025/07/08 08:21:27" color="#ff5c5c">}}




{{<matomeQuote body="Are you confusing the AI company Groq with xAI, Elon Musk’s AI company that has a model called Grok?" userName="JimDabell" createdAt="2025/07/08 08:23:21" color="">}}




{{<matomeQuote body="arxivには何でも上げられるの？これマーケティングページをPDFにしただけでしょ。Facebookの出品リストみたいなのをPDFにしてアップするのもOKなの？" userName="cavisne" createdAt="2025/07/08 03:11:23" color="">}}




{{<matomeQuote body="いや、arxivは科学研究の投稿が必要だよ。既存ユーザーの推薦もいるし。ただ、商業目的だったり、質が低くてもフィルタリングはされないんだ。" userName="wavemode" createdAt="2025/07/08 06:02:04" color="#45d325">}}




{{<matomeQuote body="この開発はマジで楽しみ！ゲーム開発でAIコード書いてたら、AI待ちで時間かかりすぎたんだ。1～2分が10秒になるだけで、アイデアを試す回数が段違いになる。今はまだって感じだけど、Claude 3.0も昔はそうだったし、絶対良くなる。マジで未来が楽しみだね！" userName="M4v3R" createdAt="2025/07/07 19:02:07" color="#38d3d3">}}




{{<matomeQuote body="LLM開発コミュニティは、こういうモデルを過小評価してると思うな。既存のフレームワークも対応してないし。拡散モデルは相互エントロピーが高いけど、後学習とかで差は縮まる。GPUベンダーにDRAM増やさせたり、ユーザーに大量バッチ処理させるより、後学習やデータ投資の方が簡単だし、これはLLM提供者ができることだよ。" userName="gdiamos" createdAt="2025/07/07 16:28:05" color="#ff5c5c">}}




{{<matomeQuote body="因果的なLLMだってチューニングできるよ。そもそもGPTの初期アイデアは、使う前にチューニングしないとダメって話だったんだから。" userName="mathiaspoint" createdAt="2025/07/07 17:25:13" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そうだね、自己回帰LLMはチューニングできるし、拡散モデルLLMもできるよ。そしたら、拡散モデルLLMはもっと高速に（たくさんトークンを）生成できるようになるんだ。" userName="gdiamos" createdAt="2025/07/07 19:23:06" color="">}}




{{<matomeQuote body="うわー、マジ速いね。でも、読む速度より速いから、その速さを品質上げてくれる方に使ってほしいな。正直、今のLLMより実用的なメリットが分かんないんだよね。100Hzで十分なのに、200Hzのテレビみたい。" userName="amelius" createdAt="2025/07/07 14:36:57" color="">}}




{{<matomeQuote body="LLMって人間が読まない使い方もいっぱいあるんだよ。例えば、unstructured textをJSONみたいにparseしたり、言語翻訳、agentシステムのreasoning stepとか。だから「速すぎて読めない」って時でも、その速度は役に立つんだ。" userName="pmxi" createdAt="2025/07/07 14:55:20" color="#45d325">}}




{{<matomeQuote body="もう一つ大事なメリットを見落としてるよ、コストだ。例えば、2ドル/時間のH100で1000tok/s出せるなら、同じハードで60tok/sの時より、同じ利益率でも価格は1/40にできるんだ。" userName="martinald" createdAt="2025/07/07 21:58:20" color="#ff33a1">}}




{{<matomeQuote body="ハードウェアの速度を落とせば、すごい省電力になるらしいよ。組み込み用途で面白そうだね。" userName="sweetjuly" createdAt="2025/07/08 04:02:29" color="">}}




{{<matomeQuote body="ちょっと興味あるんだけど、組み込みでAI使ってる人で経験談を共有してくれる人いないかな？NPUとか見るけど、ドキュメントとかサンプルが全然ないんだよね。" userName="kldg" createdAt="2025/07/08 11:43:41" color="">}}




{{<matomeQuote body="これのおかげで、答える前にもっと（たぶんすごくいっぱい）推論ステップとかツール呼び出しができるようになるんだね。" userName="Legend2440" createdAt="2025/07/07 15:47:31" color="#ff5c5c">}}




{{<matomeQuote body="出力は超速いんだけど、個人的ベンチマークではかなり色々ダメなんだよね。60パーセント以上幻覚見せるんじゃ実運用は無理だよ。技術はすごいけど。" userName="ceroxylon" createdAt="2025/07/07 17:20:01" color="#785bff">}}




{{<matomeQuote body="それはモデルサイズとか学習にかけたお金次第かもね？アーキテクチャ自体はいけるんだから、追いつくかは開発の努力次第じゃないかな。" userName="mike_hearn" createdAt="2025/07/07 18:46:07" color="#ff5c5c">}}




{{<matomeQuote body="すごそうだけどさ、利用規約ヤバくない？＞ユーザー投稿をAIモデル学習に使うって書いてあるじゃん。OpenRouter経由は別だけど。（原文の改行は削除）" userName="mseri" createdAt="2025/07/07 21:34:24" color="#785bff">}}




{{<matomeQuote body="チャットプレイグラウンドのコード見たんだけど、`gpt-3.5-turbo`とかAPIレスポンスに`”openai”: true`ってあるよ？これってOpenAI使ってんの？あと「Diffusion Effect」ってただのアニメーションだよね？https://chat.inceptionlabs.ai/" userName="armcat" createdAt="2025/07/07 20:45:26" color="#45d325">}}




{{<matomeQuote body="バックエンドにOpenAI使ってるには速すぎるでしょ、ほぼ一瞬だよ！" userName="Alifatisk" createdAt="2025/07/07 20:51:09" color="#ff5c5c">}}




{{<matomeQuote body="変わった質問すると2秒以上かかるし、ChatGPTより遅いなー。呼び出しログ見るとOpenAI関連がいっぱい。OpenAI API互換にしてるだけかも？" userName="armcat" createdAt="2025/07/07 21:08:07" color="#ff33a1">}}




{{<matomeQuote body="あ、わかった。なんか色々なものが組み合わさってて、ollamaとか他のAPIとも繋がるみたいだよ。" userName="armcat" createdAt="2025/07/07 22:49:24" color="">}}




{{<matomeQuote body="拡散モデルを使った言語モデルのnanogptみたいなのないかな？もっとちゃんと知りたいんだけど。" userName="mynti" createdAt="2025/07/07 12:41:38" color="">}}




{{<matomeQuote body="この動画、マスクを使った拡散生成を実装するライブコーディング部分があるんだ。見てみて！<br>https://www.youtube.com/watch?v=oot4O9wMohw" userName="nvtop" createdAt="2025/07/07 13:51:45" color="#38d3d3">}}




{{<matomeQuote body="拡散は、広い空間を探すのに論理的に一番いいやり方なんだって。でも言語モデルだけじゃなくて、創薬とか他のことにも使うべきだよ。<br>良い拡散モデルと化学の法則があればヤバそう！<br>AI界隈は今LLMばっかで、他の分野への応用を見落としてる気がするなー。" userName="EigenLord" createdAt="2025/07/08 05:36:18" color="#ff5c5c">}}




{{<matomeQuote body="科学でDL使う時、「自然の法則」をルールとして入れると、かえってダメになることが多いんだって。<br>例えば、天気予報のモデルは流体力学ほぼ使ってないらしい。<br>物理を組み込むのが間違いな理由はよくわかんないけど、制約がない方が最適化しやすいのかもね。" userName="dawnofdusk" createdAt="2025/07/08 05:41:02" color="#ff5733">}}




{{<matomeQuote body="まあ、拡散モデルは生物学の分野には前から入ってるよ。<br>Esm3もAlphaFold 3も拡散モデルを使ってるらしいしね。" userName="anotherpaul" createdAt="2025/07/08 05:46:36" color="#ff5733">}}




{{<matomeQuote body="コーディングじゃなくて、自分のゲームでMercuryを使ってみたよ。<br>https://www.playintra.win/ （ゲーム内で選べる）<br>最初は速くて賢そうだったけど、文脈が長くなると全然ダメになっちゃったみたい。<br>このゲームではイベントの順番とか状況を理解しないといけないんだけど、これは結構難しくて、他の小さいモデルはできたりするんだ。<br>まあ、まだ最初のバージョンだし、新しいアーキテクチャだしね。<br>これから良くなるか、他のLLMとは使い方が違うのかもしれないなー。" userName="ianbicking" createdAt="2025/07/07 19:18:06" color="#38d3d3">}}




{{<matomeQuote body="「Copilot Arenaで質が2位」っていう話が気になるなら、これがリンクっぽいよ。<br>もしホントならすごい結果だね！<br>https://lmarena.ai/leaderboard/copilot" userName="flockonus" createdAt="2025/07/08 02:18:08" color="#38d3d3">}}




{{<matomeQuote body="パラメータ数って公開されてるの？<br>専門家じゃないけど、なんか失敗するパターンが中国の1Bくらいのモデルに似てる気がするんだよね。" userName="numpad0" createdAt="2025/07/08 00:47:12" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
