+++
date = '2025-11-27T00:00:00'
months = '2025/11'
draft = false
title = 'Zigリポジトリ、GitHubからCodebergへ移行！厳格なAIポリシー違反を減らすため？'
tags = ["Zig", "AI", "GitHub", "Codeberg", "開発プロセス"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> Zigリポジトリ、GitHubからCodebergへ移行！厳格なAIポリシー違反を減らすため？

引用元：[https://news.ycombinator.com/item?id=46064571](https://news.ycombinator.com/item?id=46064571)




{{<matomeQuote body="“AIポリシー違反”の犯人が、数日前に話題になったあの投稿[2]の犯人[1]と同じで笑えるぜ。そいつが厳格なAIポリシー違反（展示A, B, C）を減らすと期待してるなんてな。<br>[1] https://github.com/ziglang/zig/issues/25974<br>[2] https://news.ycombinator.com/item?id=46039274" userName="quirino" createdAt="2025/11/27 02:50:30" color="#ff33a1">}}




{{<matomeQuote body="なんてこった…そいつ、Juliaでも巨大なAI生成のPRを出してるじゃんか。見てみろよ！https://github.com/tshort/StaticCompiler.jl/pull/180" userName="mikelitoris" createdAt="2025/11/27 06:00:44" color="#785bff">}}




{{<matomeQuote body="俺の古いルールだと、コーディングは“動けばいい”で、ソフトウェアエンジニアリングはダメだった。新しいルールはこれだぜ: コーディングならAIでコード書いてもいいけど、ソフトウェアエンジニアリングじゃダメだ。" userName="dreamcompiler" createdAt="2025/11/27 12:55:56" color="#ff5c5c">}}




{{<matomeQuote body="俺はClaudeのクレジット1000ドル分使い倒したんだ。ああ、その過程でミスもしたけどな。" userName="joelreymont" createdAt="2025/11/27 07:26:44" color="">}}




{{<matomeQuote body="コードの生成方法は全く気にしないけど、レビューやマージするコードはすべて本人が責任を持つべきだ。AIが楽にするならいいが、コードの確認やテストもせず責任放棄する奴は無価値どころかマイナスだ。そんな奴はすぐにクビだぜ。" userName="epolanski" createdAt="2025/11/27 14:12:34" color="#785bff">}}




{{<matomeQuote body="全く同感だぜ。俺にとって難しいのは、ジュニアエンジニアのめちゃくちゃな、非効率的なソリューションが、AIのせいなのか、それとも単なる経験不足なのか見分けることだな。" userName="strix_varius" createdAt="2025/11/27 15:16:37" color="#45d325">}}




{{<matomeQuote body="あのプルリクはドキュメントが不十分で、俺のコードの問題だったかもな。代わりにこっちを勧めとくぜ。https://github.com/joelreymont/zig/pull/1" userName="joelreymont" createdAt="2025/11/27 07:25:09" color="">}}




{{<matomeQuote body="これについての詳しい議論はここで見れるぜ。https://discourse.julialang.org/t/ai-generated-enhancements-...(正直、ほとんどAI生成の返信によくここまで我慢できたな、あの人たちすごいわ。)" userName="sundarurfriend" createdAt="2025/11/27 07:35:05" color="#38d3d3">}}




{{<matomeQuote body="AIかどうか関係なく、1万行超えのPRを出すのが最大のミスだ。300～500LOCくらいが限度だろ。全ソースのフォーマットみたいな大規模なリファクタリングは、メンテナーが別のPRでやるべきだな。" userName="forgotpwd16" createdAt="2025/11/27 10:16:55" color="#38d3d3">}}




{{<matomeQuote body="彼を擁護するわけじゃないけど、俺たちってElectronアプリ、フレームワーク、ライブラリ、スクリプト言語で前からこうしてたじゃん。ほとんどのソフト開発で意味のあるコストって人件費だけで、そこを最適化すべきなんだよ。俺は良いソフトが欲しいけど、問題解決の価値を超える費用がかかるなら、無料のダメなソフトでいいわ。こういう議論はいつも戦術ばっかで、運営の話にならないんだよね。" userName="stocksinsmocks" createdAt="2025/11/27 16:02:35" color="#38d3d3">}}




{{<matomeQuote body="他でも見たことあるけど、ボトルネックはコーディングやPR作成じゃなくて、レビューなんだよな。" userName="VMG" createdAt="2025/11/27 12:47:52" color="#ff33a1">}}




{{<matomeQuote body="LLMがぶっ壊れたテストを書いたって言ったら、「LLMは分かってるけど…怠けがち」って言ったんだって。LLM好きだけど、この人は冗談だよ。LLMが生成したコードを何も理解してないし、「LLMが知ってる」とか言ってる。LLMのテストが正しいか確認もしてないのに、誰がPRをマージするんだよ。冗談にもほどがある。" userName="nake89" createdAt="2025/11/27 08:43:42" color="#ff33a1">}}




{{<matomeQuote body="これ、AIで自動化すべきだよね。まずPRがくだらないか判断して、レビューして、必要なら人間に回す。問題は、GitHubみたいなシステムがPRレビューのDDOS攻撃を防ぐべきってこと。AI使うとお金かかるしね。" userName="joelreymont" createdAt="2025/11/27 12:58:36" color="">}}




{{<matomeQuote body="OCamlへの投稿で、なんで提出ファイルに別人が著者として載ってるのか聞かれたら、「さあね。AIが決めたことだし、俺は疑問に思わなかった」って言ったんだって。<br>そういう態度、恐ろしいよね。<br>https://github.com/ocaml/ocaml/pull/14369#issuecomment-35573..." userName="Lyngbakr" createdAt="2025/11/27 11:29:28" color="#ff5733">}}




{{<matomeQuote body="公に指摘された後も、お前はPRでブログやAIの露骨な宣伝を続けてるよな。広告としか言いようがない。だからOCamlフォーラムでお前をブロックしたんだ。俺が子供の頃、クリスマスのおもちゃに夢中になりすぎて、興奮で気持ち悪くなったことがあるけど、お前はそれの大人版だよ。自己認識を失うほど、お前の頭はAIへの興奮でいっぱいだ。" userName="debugnik" createdAt="2025/11/27 10:53:04" color="#ff5c5c">}}




{{<matomeQuote body="もうこれは高度な荒らしなのかな、って感じ。" userName="carlmr" createdAt="2025/11/27 06:55:05" color="">}}




{{<matomeQuote body="「LLMは間違える、人間は間違えない」は違う。人間も常に間違えるし、LLMは退屈な作業や単体テスト、エッジケースも自動化できる。だからレビューに集中すればいい。みんなが他人のコードレビューより、ゼロから書くのを信用しすぎてるのが問題だね。NASAレベルのエンジニアは少数で、大半はエゴ持ち。俺は問題設計とレビューを高速化して、実装とテストはLLMに任せる。インターフェースが良ければテストも楽だし。手書きにこだわるより、アーキテクチャとレビューの速度を上げる方が合理的だと思うよ。" userName="rootlocus" createdAt="2025/11/27 15:33:24" color="#ff33a1">}}




{{<matomeQuote body="分かるけど、こんな現状を容認するのは人間として深く反する行為だよ。誰も見てない時の行動と似てて、仕事に誇りを持てば社会はもっと良くなるはずだ。もちろん例外はあるけど、粗悪品を許容すると社会のインセンティブが歪み、金持ち以外は高品質を得られなくなる。例えば、「粗末な食品は違法」とすれば、貧富に関わらず皆が健康食を得られ、そのコストは利益を出す金持ちが負担するべきだ。" userName="sidjxnbx" createdAt="2025/11/27 17:57:58" color="#45d325">}}




{{<matomeQuote body="偶然って面白いよね。でも、コミットしようとした変更内容は一体何だったの？少し興味深いぜ。特に638行目の変更が、テストを壊しも直しもしないってのが二重に面白いな。" userName="jeffbee" createdAt="2025/11/27 03:01:43" color="#ff33a1">}}




{{<matomeQuote body="ソ連とかキューバみたいな国は、こんなこと成功しなかっただろ？でも、同じハンマー（と鎌）で自分たちの頭をもう一回殴れば、今度はうまくいくかもな？" userName="stocksinsmocks" createdAt="2025/11/27 23:51:45" color="">}}




{{<matomeQuote body="＞無料でひどいソフトウェアを受け入れる<br>いや、俺がメンテするなら無理。コードは負債だよ。LLMが書いたPRは、システムを大きく、もろく、統合性を失わせて、エンドユーザーの品質とメンテナーの速度を低下させるから、だいたい負の価値しかもたらさないんだ。" userName="strix_varius" createdAt="2025/11/27 19:05:39" color="#ff5733">}}




{{<matomeQuote body="この人を見てみてよ: https://github.com/GhostKellz?tab=repositories<br>雰囲気で書いた、動かないZigやRustのプロジェクトを50個くらい持ってるんだ。それで明らかにみんなを混乱させてるぜ: https://github.com/GhostKellz/zquic/issues/2" userName="brodo" createdAt="2025/11/27 08:25:55" color="#45d325">}}




{{<matomeQuote body="＞これはAIを使って自動化すべきだ<br>世界中が“やめとけ”って言ってるんだから、ちょっと立ち止まって耳を傾けてみろよ。" userName="messe" createdAt="2025/11/27 13:33:25" color="">}}




{{<matomeQuote body="もしかしたら、こいつが世界で一番ダメなコーダーかもな。" userName="conartist6" createdAt="2025/11/27 11:30:07" color="">}}




{{<matomeQuote body="あいつのブログ、読むだけでムカつくわ。自分は積極的に貢献してるって思ってるだけじゃなく、評価されるべきだとまで思ってるんだ。" userName="Levitating" createdAt="2025/11/27 11:26:26" color="">}}




{{<matomeQuote body="数ヶ月前からOCamlフォーラムで投稿見てたから、善意だと思ってたんだよ。でも、このパターンが始まってから急に理不尽になって、意見を曲げようとしないんだ。うまく言えないし、あいつが一番ひどい反応を削除しちゃったから、完全に理解できないかもね。HN以外でもやり取りしたことあるし、OCamlコミュニティで問題になり始めた時に個人的に話したこともあるんだけどな。結局諦めて、あいつの広告をモデレーターに報告して数ヶ月ブロックしたけど、GitHubやHNでまたあいつの騒動に遭遇し続けてるよ。" userName="debugnik" createdAt="2025/11/27 13:51:31" color="#ff5c5c">}}




{{<matomeQuote body="マジで悪いけど、自分でやってみたらどう？<br>既存のプロジェクトは、無謀にLLMで全部自動操縦なんてできないって。<br>君が提案してるのは、全く違う開発スタイルだろ？<br>OcamlをOca-LLMに、JuliaをJul-AIにフォークして、どうなるか見てみろよ。" userName="VMG" createdAt="2025/11/27 13:26:52" color="#38d3d3">}}




{{<matomeQuote body="人間のプログラマーはバグだらけのソフト出すけど、水処理施設なら訴訟ものだろ？プログラマーはAIが嫌いでも、クライアントからしたら人間の方が最悪だよ。簡単なCRUDアプリに半年かかるし、問題も理解しない。1時間で15分しか働かず200ドル/時請求。ペアプロで請求額2倍、プロジェクト失敗のリスクも高い。<br>月20ドルでAI使う方がマシ。AIのおかげで消費者はいい世界だね。200ドル/時のStack Overflowコピペ野郎が消えるのは嬉しいよ。" userName="stocksinsmocks" createdAt="2025/11/27 23:46:07" color="#ff5c5c">}}




{{<matomeQuote body="彼の好きなツイートはこれだってさ。<br>「ClaudeがZigコンパイラのバグを発見して修正中！」→数分後→`https://github.com/ziglang/zig/pull/25974`<br>将来の面接で「あなたの最大のプロフェッショナルな功績は？」って聞かれて「ZigをGitHubから追い出す寸前までやったことです」って答えるシナリオが目に浮かぶよ。" userName="rdtsc" createdAt="2025/11/27 12:52:43" color="#785bff">}}




{{<matomeQuote body="「あと、LLM＼AIポリシー違反が減るのも楽しみだね。GitHubがCopilotの機能をゴリ押ししてるのが一因だと思うけど。」ってとこだけど、大きな問題の一つは、みんなGitHubプロフィールの見栄えを良くして、採用される確率を上げようとすることだね。主流じゃないプラットフォームじゃ、ソーシャルクレジット稼ぎにはあんまり魅力的じゃないんだよ。" userName="SoKamil" createdAt="2025/11/27 02:16:53" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「GitHubプロフィールの見栄えを良くして採用のチャンスを増やす」ってとこだけど、みんな本当にGitHubのランダムなリポジトリへのPRで採用されると思ってんの？それともそうだと信じたいだけ？俺の印象では、GitHubプロフィールって採用担当者にも面接官にも完全に無視されてるんだけど。" userName="lII1lIlI11ll" createdAt="2025/11/27 09:28:32" color="">}}




{{<matomeQuote body="GitHub（というかどんなリポジトリホストでも）は、応募者の評価で俺が唯一気にするものだったよ。だって、議論の余地のない現実と関係する唯一のものだからね。大学に行ったかどうかとか、どこで働いていたかとかは全然気にしないし、その会社の人を知らない限り、前職での在職期間も高く評価しないよ。" userName="59nadir" createdAt="2025/12/03 09:26:32" color="">}}




{{<matomeQuote body="それに、こういう行動は、GitHubプロフィールを実際に掘り下げて見る人、例えば採用プロセスの最終段階にいる技術系の人間からすると、赤信号だよ。" userName="brodo" createdAt="2025/11/27 10:28:48" color="">}}




{{<matomeQuote body="これって理想的な話？それとも個人的な経験？それともFAANGやテック系の技術職の人が実際にやってること？そうだといいけど、面接に関わるほとんどの技術者って、疲れすぎてて＼仕事が多すぎて、そんなことできないように思えるんだけど。" userName="throw10920" createdAt="2025/11/27 13:06:26" color="">}}




{{<matomeQuote body="俺もそう思う。採用に関わった技術者として、GitHubは見たことがないな。候補者の評価は、面接での質問への答え方と、「この人と毎日一緒に働けるか」っていう全体的な感覚に基づいてたよ。それ以上掘り下げる時間はなかったし。" userName="SoftTalker" createdAt="2025/11/27 14:50:52" color="">}}




{{<matomeQuote body="「この人と毎日一緒に働けるか」って点だけど、もしGitHubプロフィールを提供されたら、PRやIssueでのコミュニケーションスキル（またはその欠如）を見るようにしてるよ。日々の仕事の邪魔になるような大きなエゴの兆候を一番探してるんだけど、残念ながらそれは珍しくないんだよね。" userName="hobofan" createdAt="2025/11/27 18:35:17" color="">}}




{{<matomeQuote body="FAANG並みの給与水準の会社や超選抜的なスタートアップで働いた経験があるけど、GitHubを見ることはほとんどなかったし、それが採用に繋がったことも一度もないね。良いオープンソースへの貢献があれば、採用担当者の目に留まる可能性はあるだろうけど、それはめちゃくちゃ稀だし見つけにくいから、みんな最後に見る場所って感じ。良いGitHubプロフィールは損じゃないけど、ここではLinkedInがまだ王様だよ。" userName="CitrusFruits" createdAt="2025/11/28 02:32:16" color="#45d325">}}




{{<matomeQuote body="誰も俺のGitHubについて言及したことないな。でも、初めてのデベロッパーの仕事は、自分のプライベートなGitLabプロジェクトで手に入れたよ。" userName="giancarlostoro" createdAt="2025/11/27 13:13:35" color="">}}




{{<matomeQuote body="採用プロセスで、GitHubプロフィールと活動を見るけど評価できないHRと、発言力が低いエンジニアが組んでるのをよく見るね。そういう場合、GitHubプロフィールを飾り立てる奴が得する傾向にあるよ。" userName="hobofan" createdAt="2025/11/27 18:40:28" color="#ff33a1">}}




{{<matomeQuote body="IssuesやPull requestsはオプション機能でしかないんだよね。オープンソースプロジェクトは、torvalds/linuxみたいにGitHubを単なるGitホストやミラーとして使うこともできるよ。" userName="manquer" createdAt="2025/11/27 02:29:33" color="">}}




{{<matomeQuote body="PRsはオプションじゃないよ。GitHubで無効にする方法はないんだから。意図的かは不明だけど、このプラットフォームから移行しにくくする多くの特性の一つとして、彼らにとって都合がいいのは確かだね。" userName="mlugg" createdAt="2025/11/27 02:45:55" color="#ff5c5c">}}




{{<matomeQuote body="技術的には方法が1つあるけど、6ヶ月ごとにやらないといけないから良くないね。<br>https://docs.github.com/en/communities/moderating-comments-a..." userName="jamesnorden" createdAt="2025/11/27 02:59:46" color="#ff5733">}}




{{<matomeQuote body="うん、ZigのGitHubリポジトリでもそれやったよ。でも既存のPRsへのプッシュは止められないから理想的じゃないし、“再有効化するまでオフにする”オプションがないのは、意図的って結論を避けるのは難しいね。" userName="mlugg" createdAt="2025/11/27 03:08:08" color="#ff5c5c">}}




{{<matomeQuote body="PRsを閉じて、議論をコントリビューターに限定できるんじゃないかな？理想的じゃないけど、少なくともプルリクエストタブには表示されないよ。あとはボットやGitHub ActionでPRのタイトルや説明を“［PRsは許可されず自動的に削除されます］”みたいに自動変更するとか。でも、どれも完璧な解決策じゃないけどね…" userName="noname120" createdAt="2025/11/27 08:56:26" color="#38d3d3">}}




{{<matomeQuote body="それは完全に意図的だよ。GitHubが創業された時からそう。GitHubはコラボレーションのためのソフトウェア開発プラットフォームとして作られたんであって、“見てるだけ、触らないで”じゃないんだ。" userName="ACCount37" createdAt="2025/11/27 08:52:09" color="#785bff">}}




{{<matomeQuote body="他人とコラボレーションしたいなら、リポジトリをフォークすればいいんじゃないかな。プルリクエストのレビューやコミュニティとのやり取りは大変だし、法的な問題も絡む可能性がある。多くの場合、自分でやった方が早いしね。この理由で外部からの貢献を意図的に拒否するチームや会社もあるよ。" userName="noname120" createdAt="2025/11/27 08:58:23" color="#ff5c5c">}}




{{<matomeQuote body="うわ、LinuxリポジトリのPRsって結構ひどいね。少なくとも、正しい手続きを自動返信するボットがいるのは助かる。<br>https://github.com/torvalds/linux/pull/1370" userName="8organicbits" createdAt="2025/11/27 02:57:21" color="#785bff">}}




{{<matomeQuote body="GitHubでPRを受け付けないなら、ボットを作って開かれたPRを自動で閉じて、貢献ガイドへのリンクを貼ればいいんじゃない？" userName="chillfox" createdAt="2025/11/27 04:48:27" color="">}}




{{<matomeQuote body="この状況は詐欺臭い。ZigにはGitHubで約3,500件ものオープンイシューがあるけど、それらが無視されたり、解決されずに閉じられたり、公の場から消えたりしそうだ。<br>ZigのGitHubイシュー状況を調査すべきだね。Codebergでこれらのイシューがフォローされたり再投稿されたりする可能性は低いだろうし、これはZigが9年以上経ってもまだプロダクションレディで1.0に到達していない現状をごまかす印象操作かもしれないぞ。" userName="baranul" createdAt="2025/12/03 18:49:57" color="#785bff">}}




{{<matomeQuote body="GitHubではプルリクエストはオプションじゃないんだ。ユーザーたちは10年以上もリポジトリのプルリクエストを無効にするオプションを求めてるけど、GitHubはそれをずっと無視してるんだよな。" userName="p-e-w" createdAt="2025/11/27 02:46:32" color="">}}




{{<matomeQuote body="別の投稿者が言ってたように、全てのインタラクションを制限する（一度に6ヶ月間）ことでPRを無効にできるよ。理想的じゃないけど、PRには効果がある。その際、ユーザーがブランチにプッシュできないように、現在のPRも全て閉じるべきだね。" userName="manquer" createdAt="2025/11/27 06:15:29" color="#ff5733">}}




{{<matomeQuote body="PRは必須機能だけど、PRに対応するかどうかは明らかにオプションだよね。承認されたコントリビューターリストにいない人からのPRを無視したり、（自動的にでも）全て閉じたりするのを、誰も止められないはずさ。" userName="dragonwriter" createdAt="2025/11/27 03:01:53" color="">}}




{{<matomeQuote body="つい最近までみんなCODE_OF_CONDUCT.mdを真剣に受け止めるように促されてたよね。次に俺がオープンソースにするプロジェクトには、リポジトリに無駄なものを送らないことについて議論するファイルを含めるつもりだよ。" userName="technion" createdAt="2025/11/27 03:15:15" color="">}}




{{<matomeQuote body="メトリクスが目標になると、もうどうでもいい感じだね。2023年から2024年にかけて人を雇っていた俺からすると、GitHubプロファイルは全く意味ないよ。もしかしたら悪い候補者を追跡するアプリが必要かもね。彼らについて噂話でもできるし。特定のジェンダー（性別？）全体でそうしたんだから、ユニコーンでも作ろうぜ。" userName="port11" createdAt="2025/11/28 12:56:29" color="">}}




{{<matomeQuote body="ZigがGitHubからCodebergに移ったのは、GitHubがICEを顧客に持っているからだろ。でもCodebergはPayPalを使ってるし、PayPalはICEの”Virtual Global Taskforce”のメンバーだぜ。<br>URL: https://www.ice.gov/news/releases/top-story-industry-partner...<br>組織がこんなこと始めると、純粋性のスパイラルに陥って、結局ネットの片隅に追いやられることになるんだよ。Ciscoがほぼ全ての主要な兵器メーカーや国防省にインフラを提供してるんだから、完全に悪から切り離されるなんて無理なんだ。" userName="mmaunder" createdAt="2025/11/27 05:26:30" color="#785bff">}}




{{<matomeQuote body="それ、投稿からの変な受け取り方だよな。ICEが言及されてるのは「GitHubのICEとの関係はさておき」って部分だけで、記事の残りは技術的な理由を挙げてたじゃん。" userName="picafrost" createdAt="2025/11/27 06:47:54" color="">}}




{{<matomeQuote body="それがOPの論点全体だと思うよ。俺は全体的な投稿には賛成だけど、ICEとの関係に言及するのは主要な論点からずれてる気がする。「GitHubはX、Y、Z機能が悪いから嫌い」っていうのは移行する良い理由だろ。「GitHubの何千ものエンタープライズ顧客のうちの一つが自分の政治的見解と合わないから嫌い」っていうのは、俺の意見では違うね。念のため言っとくけど、俺はICEを支持しないよ。" userName="aadishv" createdAt="2025/11/27 07:52:43" color="#785bff">}}




{{<matomeQuote body="組織が純粋性スパイラルに陥るって言うけど、PayPalを使ってCodebergに言いがかりつけるお前がそれを呼んでるんだろ。プロジェクトはGitHubからCodebergへの移行で影響が少なかったから動けたし、新しいフォージも完璧じゃないけど、関連付けがましだと感じてる。倫理を考慮した実用的な選択で、純粋性スパイラルじゃないよ。" userName="pyrale" createdAt="2025/11/27 11:08:48" color="">}}




{{<matomeQuote body="返信読んでると純粋性スパイラルじゃないって思いかけたけど、結局倫理的なことだと認めてるじゃん。やっぱ純粋性スパイラルだよ。次はトランプと関わりたくないからUSAから離れるんじゃないの？" userName="simianwords" createdAt="2025/11/27 14:48:54" color="">}}




{{<matomeQuote body="ICEに抗議してる人たちは政治的な懸念からじゃなくて、人道的な懸念からだよ。これらは密接に絡み合ってるけど、この区別は重要だね。他者のために立ち上がることは卑劣でも自己中心的でもないし、その種の混同が誤った印象を与えかねないからね。" userName="MildlySerious" createdAt="2025/11/27 11:11:17" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ベンダーを変えたことに怒って、同じくらい悪いと思う別のベンダーに移行したって言う一方で、”避けられない純粋性スパイラル”を引き起こしてるって非難してるの？どっちなんだよ？" userName="sapphicsnail" createdAt="2025/11/27 06:05:59" color="">}}




{{<matomeQuote body="矛盾してないよ。彼らの表明した目標が達成されなかったから無意味だ、って指摘してるだけだからね。" userName="wilg" createdAt="2025/11/27 06:16:39" color="">}}




{{<matomeQuote body="アメリカの組織は、深く掘り下げれば何かしら妥協してるように見えるよね。確かに、どこの巨大テックでも理由は見つかるだろう。それでも、バランスは取るべきだよ。" userName="__loam" createdAt="2025/11/27 05:58:49" color="">}}




{{<matomeQuote body="これは単なる美徳シグナリングだよ。2017年頃の流行りでアイデンティティを築いた人たちは、イングループに属し続けることに宗教的に執着して手放せないんだ。それが必然的にこうやって噴出してるだけ。これを読むと、そのグループに共感する人たちはイラつくかもしれないけど、彼らはひどい社会病理の時代の哀れな残党だよ。" userName="andrew_" createdAt="2025/11/27 17:10:45" color="">}}




{{<matomeQuote body="記事を読んだらわかるけど、彼らが言ってたのはそれじゃないよ。コメントした人が勘違いしてるね。" userName="brendoelfrendo" createdAt="2025/11/27 07:18:48" color="#38d3d3">}}




{{<matomeQuote body="教えてよ、彼らってGitHubから移りたかった理由として具体的にICEを挙げてたっけ？" userName="wilg" createdAt="2025/11/27 07:51:17" color="">}}




{{<matomeQuote body="Simian、君は「企業がミッションに沿って倫理的に行動するのは間違い」って言うことで、倫理的判断をしてる。倫理の無意味さを倫理的に議論するって、面白いね。今日ネットやめて、自分の感性に合う倫理の本を読んでみたら？" userName="lkey" createdAt="2025/11/27 16:28:16" color="#38d3d3">}}




{{<matomeQuote body="実用性は大事だよ。虫を踏むのは避けられないけど、食べ物のために動物を殺さないとか、信念に沿ったことはたくさんできる。GitHubが唯一なら移らなかっただろうけど、そうじゃないし、彼らは受け入れられる代替で、よりマシなものを見つけた。全てに同意しなくても、より同意できるところを選んだんだね。できるところで立場を取るのが大切。" userName="latexr" createdAt="2025/11/27 15:18:41" color="#ff33a1">}}




{{<matomeQuote body="もし「dig」が、ダンスミュージック聴きながら玄関をダラダラ掃くことなら、僕も君に賛成だよ :)" userName="kruffalon" createdAt="2025/11/27 06:48:15" color="">}}




{{<matomeQuote body="事態がホントにヤバくなったら、低くて暗い隅っこで、クリーンな手で、豚とは似ても似つかないでいるのが一番だよ。" userName="sandmank" createdAt="2025/11/27 06:03:32" color="">}}




{{<matomeQuote body="間違いだとは言ってないけど、自分の美徳を示すためにAWSからビジネスを移すなんて絶対しないね。" userName="simianwords" createdAt="2025/11/27 18:05:47" color="">}}




{{<matomeQuote body="でもさ、同じ理由でAWS使うのやめる？" userName="simianwords" createdAt="2025/11/27 15:22:21" color="">}}




{{<matomeQuote body="彼らが「AIポリシー違反」について話してるのは、技術的な話を進める前の軽い言及だよ。あなたが示唆するように、それが唯一の理由とは言ってないけど、決定の一因になったのは間違いないね。" userName="input_sh" createdAt="2025/11/27 10:14:02" color="">}}




{{<matomeQuote body="そうだね、それはちょっとした問題に見えた。AIコードのPRが増えたことも小さい問題だったね。もっと大きな問題は、プラットフォームの質が長年劣化しているという認識と、他のプラットフォームへの移行が合理的な道だと感じたことみたいだね。" userName="gexla" createdAt="2025/11/27 23:37:43" color="#ff5733">}}




{{<matomeQuote body="あなたは真実を語ってるから低評価されてると思ってるだろうけど、私はあなたのコメントが複数のHNガイドラインに違反してるから低評価したんだよ。ガイドラインはここにあるから確認してね：https://news.ycombinator.com/newsguidelines.html<br>長年のコミュニティメンバーが無思慮な行動をするのは残念だね。ガイドラインにはフラグを立てて次へ進むべきだと書いてあるけど、それだとあなたの主張を強めるだけだから、この悪循環を断ち切りたいんだ。" userName="igor47" createdAt="2025/11/28 07:23:08" color="">}}




{{<matomeQuote body="最近のアメリカ政治は極端に二極化してるから、政治的な問題の動機を「友達がそう言ってるから、私たちのチームもそう感じる」って以上に割り当てるのは難しいと思う。それは根本的なことよりもずっと政治的な話だと私は主張したいな。" userName="oofbey" createdAt="2025/11/27 15:23:22" color="">}}




{{<matomeQuote body="いいね！Zigの人たちは、細かい理由で既存のツールを拒否して、独自の（本当に良い）ものを作る歴史があるみたいだからね。もしこれでGitHubが考え直して、もっと良いものを強制的に作ることになるなら、楽しみでしょうがないよ。" userName="0x000xca0xfe" createdAt="2025/11/27 15:23:56" color="">}}




{{<matomeQuote body="私はこう読んだよ。「これは僕らが気にする大きなニュースだった。知ってるかもしれないけど、それが主な理由じゃない。主な理由はこれだよ」ってね。" userName="etyp" createdAt="2025/11/27 12:47:50" color="">}}




{{<matomeQuote body="ZigやCodebergについて強い意見はないんだけど、Codebergのインフラの自己申告の状況[1]には懸念があるな。彼らはどうやら本番環境で故障したハードウェアを使ってて、冗長性も限定的みたいだし、コミュニティから品質や信頼性、出所が不明なハードウェアを積極的に募ってる。これは趣味のプロジェクトならクールだけど、「ポストGitHubの世界の安定したプラットフォーム」と（願望的に）言われるCodebergには見えないね。" userName="woodruffw" createdAt="2025/11/27 02:50:22" color="#785bff">}}




{{<matomeQuote body="投稿のインフラ部分を読んで思わずニヤッとしちゃったよ。週の一部をスポットインスタンスに費やしたけど、これはまさにリアルなスポット市場だね。準備できてようがいまいが、カオスモンキーは本番環境で動いてるんだ。<br>冗談はさておき、あのサーバーを動かすのに必要な技術的な深さは素晴らしいね。それがCodebergへの興味をなくすどころか、ますます深めたよ。でも、彼らがもっと良いハードウェアを手に入れるまでは、Zigのリポジトリは自分のミラーを持つつもりだけどね。" userName="MarkMarine" createdAt="2025/11/27 03:32:32" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
