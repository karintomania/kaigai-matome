+++
date = '2025-08-21T00:00:00'
months = '2025/08'
draft = false
title = 'DeepSeek-v3.1がローカルで動く！？GGUF版登場もメモリ要求は尋常じゃない'
tags = ["AI", "LLM", "GGUF", "ローカルAI", "機械学習"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> DeepSeek-v3.1がローカルで動く！？GGUF版登場もメモリ要求は尋常じゃない

引用元：[https://news.ycombinator.com/item?id=44976764](https://news.ycombinator.com/item?id=44976764)




{{<matomeQuote body="ローカルで動かすDeepSeek-v3.1のGGUF版を作ったんだ！ダイナミック2bitで良いパフォーマンスを出すにはRAM + VRAMで250GBくらい必要だよ。SSDオフロードもできるけど遅くなるね。llama.cppでの実行コマンドはこれだよ: `/llama.cpp/llama-cli -hf unsloth/DeepSeek-V3.1-GGUF:UD-Q2_K_XL -ngl 99 --jinja -ot ”.ffn_.*_exps.=CPU”`。詳しい実行方法や最適なパラメーターはここで確認してね: https://docs.unsloth.ai/basics/deepseek-v3.1" userName="danielhanchen" createdAt="2025/08/21 22:21:19" color="#ff33a1">}}




{{<matomeQuote body="unslothっていうPythonライブラリが、なんで`sudo apt-get`を実行しようとするんだろう？NixOSだと失敗するんだけど、どうやって使えばいいの？理解できないな。" userName="pshirshov" createdAt="2025/08/22 00:31:44" color="">}}




{{<matomeQuote body="ああ、これはファインチューン後のGGUF変換用かな？GGUF Q4_K_Mに量子化するにはllama.cppのコンパイルが必要だから、Pythonシェル内で`apt-get`を使ってるんだ。`FastModel`を使えばllama.cppをコンパイルせずにQ8_0、BF16、F16に変換する方法もあるよ。基本的には`sudo apt-get`を試して、失敗したら`apt-get`、それでもダメなら失敗するって感じだね。`build-essential cmake curl libcurl4-openssl-dev`が必要だよ。詳細はここで確認してね: https://github.com/unslothai/unsloth-zoo/blob/main/unsloth_z..." userName="danielhanchen" createdAt="2025/08/22 01:09:37" color="#ff33a1">}}




{{<matomeQuote body="おい、これは絶対ダメだよ！なんでサードパーティのライブラリが`sudo`コマンドを実行するんだ？正気じゃないよ。失敗して、ユーザーに必要なこと、例えば正確な`apt`コマンドとかを教えて、エラーメッセージを出すべきだよ。" userName="elteto" createdAt="2025/08/22 02:52:19" color="">}}




{{<matomeQuote body="Unslothは人気で役立つみたいだね。協力したいし、Nix向けにパッケージ化も手伝いたいな。ビルド時にllama.cppのフォークに依存するのがベストだと思うけど、それが無理なら、llama.cppがPATHにあるか確認したり、ディストロを判別したりして、最終的にはユーザーに問題と解決策をわかりやすく伝えるべきだよ。この改善案、検討してもらえるかな？" userName="pxc" createdAt="2025/08/22 03:11:00" color="#ff5733">}}




{{<matomeQuote body="うん、最初はそうしてたんだけど、みんなターミナルコマンドの実行方法がわからないって文句を言うから、ショートカットとして導入したんだよ。`pip install`時か`setup.py`で`apt-get`を実行できないか考えてるんだ。とりあえず、シェル実行は削除してユーザーに警告するだけにするつもりだよ。" userName="danielhanchen" createdAt="2025/08/22 03:12:41" color="#ff5c5c">}}




{{<matomeQuote body="提案ありがとう！パッケージングが苦手で今の設定になっちゃってごめんね。1. `check_llama_cpp`を追加して、llama.cppがあればそれを使うようにしたよ: https://github.com/unslothai/unsloth-zoo/blob/main/unsloth_z... 2. ディストロ判定のアイデアはいいね！ 3. 終了するのも同意。ユーザーに`apt-get`（`sudo`なし）の許可をPythonの`input()`で30秒待って、なければエラーにするのはどうかな？ 4. `sudo`はすぐ削除して、一時的に(3)をやるよ。早く直したいし、またごめんね。" userName="danielhanchen" createdAt="2025/08/22 03:29:23" color="#ff5c5c">}}




{{<matomeQuote body="パッケージは自動でインストールするべきじゃないよ。不足しているパッケージと、それをインストールすると思われるコマンドを表示して終了するだけにするべきだね。そうすれば、ユーザーは自分でそのコマンドを実行したり、コンテナビルドに追加したりできるから。色々な環境設定があるから、自動インストールは混乱を招くよ。" userName="mkl" createdAt="2025/08/22 09:49:14" color="#785bff">}}




{{<matomeQuote body="ユーザーを満足させつつ健全なのは、llama.cppをシステムでビルドしないことだよ。代わりに、unslothと一緒にポータブルなllama.cppバイナリをバンドルして、`pip`や`uv`でunslothをインストールするときにそれも手に入るようにするべきだね。PATHにあるllama.cppを使う選択肢もあってもいいけど、古いバージョンで混乱する初心者もいるかも。unslothのwheelがプラットフォーム依存になるのが負担なら、llama.cppバイナリをPyPIでパッケージ化して、Scipyの`cmake`みたいに依存させることもできるよ: https://pypi.org/project/cmake/" userName="rfoo" createdAt="2025/08/22 08:44:33" color="#785bff">}}




{{<matomeQuote body="こういうダイナミック2bitって、元のモデルと比べてどれくらい性能が落ちるのか、ベンチマークの結果とかある？教えてほしいな。" userName="tw1984" createdAt="2025/08/22 02:20:15" color="#ff33a1">}}




{{<matomeQuote body="うーん、じゃあ許可を求めるメッセージって無くすべきかな？" userName="danielhanchen" createdAt="2025/08/22 10:14:39" color="">}}




{{<matomeQuote body="更新情報だよ。このコミット（https://github.com/unslothai/unsloth-zoo/commit/ae675a0a2d20）をプッシュしたんだ。<br>(1) sudoを削除して無効にしたよ。<br>(2) apt-getでインストールする時はユーザーに許可を求めるようにしたんだ。<br>(3) llama.cppが失敗したらエラーを出して、手動でコンパイルする指示も追加したよ。" userName="danielhanchen" createdAt="2025/08/22 03:43:45" color="#785bff">}}




{{<matomeQuote body="そうそう、pipと一緒にバイナリを提供しようとしてたんだ。今はpyproject.tomlに頼ってるけど、setup.pyを使うようになれば（たぶん）、バイナリの利用がもっと簡単になるはずなんだ。<br>まだ作業中なんだけど、悲しいことに僕はパッケージングの専門家じゃないから、進捗はほとんどゼロなんだ :(" userName="danielhanchen" createdAt="2025/08/22 09:12:56" color="">}}




{{<matomeQuote body="個人的な好みかもしれないけど、外部プログラムにはパッケージマネージャーに触ってほしくないんだ、たとえ許可があったとしてもね。それに、apt-getを使わないシステムだとエラーになるだろうし。<br>ユーザーにはパッケージを自分でインストールするように頼むか、もしかしたらインストールコマンドを見せるくらいで、実行はしない方がいいと思うよ。" userName="mFixman" createdAt="2025/08/22 07:14:58" color="#45d325">}}




{{<matomeQuote body="うん、だって実際に許可はいらないだろうからね。" userName="mkl" createdAt="2025/08/22 10:20:32" color="">}}




{{<matomeQuote body="Unslothを使った多くの人がllama.cppのコンパイル方法を知らないから追加したんだ。Python側からは<br>(1) Pythonシェル内でapt-getでインストールするか、<br>(2) エラーを出して、ユーザーにまずインストールするように伝えてから再開するか、<br>のどちらかだったんだ。ユーザーの使いやすさを考えて(1)を選んだけど、良くないアイデアだったね、ごめん！:( 手動コンパイルのセクションもここ（https://docs.unsloth.ai/basics/troubleshooting-and-faqs#how-...）に追加したよ。apt-getは削除するべきだね、すぐにやるよ！提案ありがとう :)" userName="danielhanchen" createdAt="2025/08/22 03:10:39" color="#ff5c5c">}}




{{<matomeQuote body="うーん、みんなインストール方法やコンパイル、ターミナルの使い方を本当に理解できないんじゃないかなって心配なんだ。だから許可を求めるのは妥協案だと思ってたんだけどなあ。" userName="danielhanchen" createdAt="2025/08/22 10:49:27" color="">}}




{{<matomeQuote body="Ubuntu+CUDA以外の組み合わせだと、うまく動かないだろうね。ちゃんとしたエラーメッセージを出して失敗する方がマシだよ。" userName="pshirshov" createdAt="2025/08/22 10:05:45" color="#ff5c5c">}}




{{<matomeQuote body="2bit量子化は性能を落とすんじゃなくて、元々動かせない人が動かせるようになるから100%の性能アップだよ。僕はQ3_K_Lとか使うけど、それがないと動かないからね。実際、僕のローカルQ3はパブリックなやつより良かったよ。モデルプロバイダーは利益のために手抜きするかもね。" userName="segmondy" createdAt="2025/08/22 13:04:24" color="#38d3d3">}}




{{<matomeQuote body="今はドキュメント https://docs.unsloth.ai/basics/troubleshooting-and-faqs#how-... に誘導してるけど、もっといろんなプラットフォームで使えるドキュメントも作る予定だよ！" userName="danielhanchen" createdAt="2025/08/22 10:13:57" color="">}}




{{<matomeQuote body="うん、賛成。最初はいいハックだと思ったけど、セキュリティ的にヤバいから本当にごめん。今の解決策は中間くらいで、sudoは消えたし、apt-getもユーザーがEnter押してから動くよ。失敗したらllama.cppのインストール方法のドキュメント見てって伝えるから。" userName="danielhanchen" createdAt="2025/08/22 05:10:21" color="#45d325">}}




{{<matomeQuote body="ドキュメント https://docs.unsloth.ai/basics/deepseek-v3.1 はほとんどLLMが書いたの？昨晩見たら間違いだらけだったよ。Ollamaの項目でllama.cppのコマンドが載ってたのは人間がやらかすミスじゃないよね。これって人間とLLMの分担を開示する予定ある？<br>でも、quantsとweightsのリリースは続けてくれてありがとうね！" userName="diggan" createdAt="2025/08/22 13:14:34" color="#785bff">}}




{{<matomeQuote body="技術者層の意見は聞かなくていいよ。普通の人たちはそんなのわかんないから。llama.cppが足りない場合、自動でインストールするオプションか、自分で手動で設定するオプションを用意してあげなよ。まあ、僕はやらないけどね。" userName="segmondy" createdAt="2025/08/22 11:53:45" color="">}}




{{<matomeQuote body="やあ、クレイジーな仲間！ちょっと話それるけど、LLMがNixOSで動かそうとしてめちゃくちゃ苦戦してるのを見ると、『LLMはただの丸暗記じゃない』って思うんだよね。NixOSは、コードがやっちゃいけないことしてるのを暴くのにマジで最高だよ！" userName="exe34" createdAt="2025/08/22 06:54:31" color="">}}




{{<matomeQuote body="君がsudoの件で丁寧に対応してるの見てたよ。sudo消したみたいで良かったね。僕の意見もpxcと似てて、ディストロごとに対応するべきってこと。いつかLinuxに普遍的なパッケージマネージャーができるかな？FlatpakがCLIにも良さそうだけど、CLI用じゃないし、SnapはCLIとGUI両方いけるけどプロプライエタリなんだよね。" userName="Imustaskforhelp" createdAt="2025/08/22 04:33:10" color="#ff5c5c">}}




{{<matomeQuote body="これは個人の好みじゃなくて、標準であるべきだと思うよ。最近の変更は良い方向への大きな一歩だね。<br>理想的には、(1) エンドユーザーツールは自己完結型かシステムパッケージで、(2) 開発ツールはシステムに一切触れるべきじゃない。CPPならConan Profilesで解決済みだけど、メンテが大変かも。Dockerも一つの手だけど、コンテナエンジンは必要だね。" userName="lucideer" createdAt="2025/08/22 09:41:22" color="#45d325">}}




{{<matomeQuote body="僕の今のやり方は、llama.cppをカスタムのNixフォーミュラとしてパックして動かすこと。nixpkgsのやつは変換スクリプトが壊れてるんだ。UnslothはROCMで推論も変換も動かせなかったから、今はPEFTを使ってるけど、また再パッケージングに挑戦するつもりだよ。" userName="pshirshov" createdAt="2025/08/22 10:38:53" color="#ff5733">}}




{{<matomeQuote body="心配するな。ここで騒いでるバカどもに気を取られないで。俺は自動化されて嬉しいし、それがなくなるのは悲しいよ。人はいつも不平を言うもんだ。合理的なフィードバックなら対応する価値があるけど、彼らの口調に惑わされるな。一日中怒ってるだけの奴もいるからさ。" userName="rat9988" createdAt="2025/08/22 11:08:37" color="">}}




{{<matomeQuote body="自分のモデルをファインチューニングするような奴は、きっとどこかにllama.cppをもう入れてるか、必要ならインストールできるだろ。頼むから、勝手に俺のマシンの状態を変えようとしないでくれ。それは全然良い習慣じゃないし、お前のマシンの設定なんか知る由もないんだから、助けになることよりも壊すことの方が多いぞ。" userName="Balinares" createdAt="2025/08/22 11:01:41" color="#ff33a1">}}




{{<matomeQuote body="参考までに、terminal-benchのリーダーボードはこれな。https://www.tbench.ai/leaderboard<br>GPT-5、Claude 4、GLM-4.5には及ばないみたいだけど、他のオープンウェイトモデルと比べたらそこそこ良い成績だね。ベンチマークってのは滅多に全てを語るわけじゃないから、実際に使ってみてどうなのかはこれからだよ。" userName="hodgehog11" createdAt="2025/08/21 20:01:27" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="このベンチマークはゴミだよ。”Agent tools”とモデルがごちゃ混ぜで一貫性がない。意味のあるベンチマークを提示したいなら、Agent toolsは同じにして、その上でモデルを比較するべきだね。これらに同意しないベンチマークもたくさんあるし、俺の経験上、ほとんどのベンチマークはクソだよ。自分でモデルを使って、自分の問題セットを当てはめて、どれだけうまくいくか試すのが一番だ。" userName="segmondy" createdAt="2025/08/21 21:37:42" color="#785bff">}}




{{<matomeQuote body="おい。お前のベンチマークに対する批判、好きだよ。俺も自分で新しいモデルの評価（自分で作ったコーディングタスクをツールなしで、人間が評価基準で採点してる）を公開してるんだ。ぜひ見て感想を聞かせてほしいな。最近のGPT-5の評価例：https://eval.16x.engineer/blog/gpt-5-coding-evaluation-under...<br>全ての評価結果：https://eval.16x.engineer/evals/coding" userName="paradite" createdAt="2025/08/22 05:00:28" color="#ff33a1">}}




{{<matomeQuote body="どのベンチマークならゴミじゃないんだ？俺は別に自分が超特別だとは思ってないけど、新しいモデルを全部自分でテストするより、俺を打ち負かすようなベンチマークを作れたら最高なのにな。" userName="jstummbillig" createdAt="2025/08/22 18:56:11" color="">}}




{{<matomeQuote body="正直、AnthropicとかOpenAIみたいな企業は特定のベンチマーク用にカスタムエージェントを作ってるよ。" userName="guluarte" createdAt="2025/08/21 20:53:25" color="#ff33a1">}}




{{<matomeQuote body="それって情報源あるの？気になるな。" userName="bazmattaz" createdAt="2025/08/21 21:07:30" color="">}}




{{<matomeQuote body="https://www-cdn.anthropic.com/07b2a3f9902ee19fe39a36ca638e5a...<br>”we iteratively refine prompting by analyzing failure cases and developing prompts to address them.”って書いてあるよ。" userName="guluarte" createdAt="2025/08/21 21:21:14" color="#38d3d3">}}




{{<matomeQuote body="良いベンチマークって、秘密にされるべきなんじゃないの？" userName="amelius" createdAt="2025/08/21 23:24:31" color="">}}




{{<matomeQuote body="この業界、マジで毎月何十億も燃やしてるんだぜ。こんな大金が動いてたら、秘密なんてありえないっしょ。" userName="wkat4242" createdAt="2025/08/21 23:57:59" color="">}}




{{<matomeQuote body="ベンチマークをAPIに送ってモデルをテストしたら、もう秘密じゃないじゃん。「データは使わないよ」なんて信用できないしね。ちゃんとやるならGPT5とかClaudeとか、サードパーティのモデルは使っちゃダメ。でも誰もそれをやりたがらないから、結局ベンチマークは秘密じゃないんだよ。" userName="noodletheworld" createdAt="2025/08/22 09:20:34" color="#ff33a1">}}




{{<matomeQuote body="どうやってそんな仕組みが動くって言うんだ？クエリとレスポンスをパイプラインに通して、低品質なレスポンスをさらに学習に使うって？それだと、前のモデルのレスポンスがイマイチだってわかるくらい、もう賢いモデルが必要なんじゃない？まさに鶏と卵の問題だよな。" userName="dmos62" createdAt="2025/08/22 10:47:55" color="#45d325">}}




{{<matomeQuote body="要するに、テスト用の質問をモデルAPIに送っちゃうと、その会社はもうテスト内容を知ってるってこと。だから「プライベート」なベンチマークって言っても、会社がそのリクエストを見て、モデルやプロンプトをチューニングして不正しないってことを、ただ信じてるだけなんだよな。" userName="irthomasthomas" createdAt="2025/08/22 11:28:01" color="#ff33a1">}}




{{<matomeQuote body="ちょっと早合点じゃない？確かに彼らは「針」（テスト）を持ってるけど、それを「干し草の山」（大量のデータ）の中から効率的に見つける方法も必要なんだぜ。" userName="dmos62" createdAt="2025/08/22 12:30:00" color="">}}




{{<matomeQuote body="彼らは莫大な資金を持ってるし、そんなにコスト効率を気にしなくてもいいんじゃない？それにすごく優秀な人たちもいるんだから、そこそこ効率的な方法くらい見つけられるでしょ。彼らにとっては、すごく大事なことなんだからさ。" userName="lucianbr" createdAt="2025/08/22 16:59:34" color="#38d3d3">}}




{{<matomeQuote body="曖昧さによるセキュリティなんて、セキュリティじゃないんだよ。APIキーはクレジットカード、ひいては自分の身元と繋がってるんだからさ。…でもまあ、君の言う通りだよね。彼らが不正しないって信じようぜ。いいね。" userName="noodletheworld" createdAt="2025/08/22 13:53:01" color="#785bff">}}




{{<matomeQuote body="モデルの持ち主はさ、他のたくさんの似たようなリクエストの中から、ベンチマークのセッションだってわかるのかな？" userName="merelysounds" createdAt="2025/08/22 14:24:38" color="">}}




{{<matomeQuote body="それはエージェントによるね。ARC-AGIみたいな決まったフォーマットなら簡単かも。それに、ベンチマークを走らせる人の利用パターンって、普通のユーザーとはかなり違うだろうから、わざと紛れ込もうとしない限り、特定されやすいと思うよ。" userName="irthomasthomas" createdAt="2025/08/22 14:47:43" color="#785bff">}}




{{<matomeQuote body="それはエージェント次第だよ。ランク5と15はClaude 4 Sonnetで、この記事のDeepSeek-v3.1は15位に近い位置にいるんだ。" userName="YetAnotherNick" createdAt="2025/08/21 20:37:07" color="">}}




{{<matomeQuote body="個人的な経験だけど、DeepSeekは高品質な結果を出すよ。" userName="coliveira" createdAt="2025/08/21 20:28:14" color="">}}




{{<matomeQuote body="この発言を裏付ける例とかプロンプトある？教えてほしいな。" userName="amrrs" createdAt="2025/08/21 20:32:50" color="">}}




{{<matomeQuote body="昔、南アメリカのスペインによる征服に関する名言を尋ねたら、GPTは幻覚を起こしたんだ。でもDeepSeekは『その名言は知らないけど、これのことかな？』と正直に言って、関連する別の本物の名言を引用してくれたよ。コーディングには使わないけど、ユニークなタスクではDeepSeekの方が正確だと感じるね。" userName="imachine1980_" createdAt="2025/08/21 20:49:45" color="#ff5c5c">}}




{{<matomeQuote body="DeepSeekの回答に見られる地域的な訓練データによる概念バイアスって、コンウェイの法則が関係してるのかな？似たような構造が結果に影響してるんじゃないかって思うんだけど。" userName="mycall" createdAt="2025/08/21 22:14:24" color="#785bff">}}




{{<matomeQuote body="GPT-5でもそうなの？GPT-5は幻覚を起こしにくくなったって言われてるけど、どうなんだろうね？" userName="valtism" createdAt="2025/08/22 02:33:13" color="">}}




{{<matomeQuote body="私は共参照解決をしてるんだけど、このモデルは思考なしでもGemini 2.5-Proレベルの性能を出すよ。しかも、はるかに安く利用できるんだ。" userName="sync" createdAt="2025/08/21 23:10:16" color="#38d3d3">}}




{{<matomeQuote body="良い情報だね。共参照解決のテストはどうやったの？具体的なプロンプトやデータセットを使ったのか教えてほしいな。" userName="antman" createdAt="2025/08/22 11:33:35" color="">}}




{{<matomeQuote body="Vineだけが本物のベンチマークだと思うよ。客観的なシステムが主観的な答えを出すんだから、客観的なテストで評価できると誰が思うんだろうね？" userName="SV_BubbleTime" createdAt="2025/08/22 03:28:36" color="#ff5733">}}




{{<matomeQuote body="リストにあるDeepSeek R1は、もう古いモデルで置き換えられてるよ。<br>追記: 了解した。" userName="seunosewa" createdAt="2025/08/21 20:08:31" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、DeepSeek-v3.1の性能は発表だと31.3%で、これだと16位になっちゃうんだよね。" userName="yorwba" createdAt="2025/08/21 20:33:52" color="#785bff">}}




{{<matomeQuote body="そうなんだけど、価格設定がヤバいよ。懐が痛むなら、SOTAとかどうでもいいって感じ。" userName="tonyhart7" createdAt="2025/08/21 21:55:30" color="">}}




{{<matomeQuote body="gpt-oss-120Bとインテリジェンスは同じくらいに見えるけど、10倍くらい遅くて3倍くらい高いってこと？<br>https://artificialanalysis.ai/models/deepseek-v3-1-reasoning" userName="rsanek" createdAt="2025/08/22 03:30:35" color="#ff5733">}}




{{<matomeQuote body="他のベンチマークだと、GPT-OSS-120Bはあまり良くない評価みたいだよ。<br>https://arxiv.org/abs/2508.12461" userName="easygenes" createdAt="2025/08/22 07:16:45" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まぁ、こういうのは結局自分の評価スイート次第だよね。俺の評価だとgpt-oss-120Bはo4-miniと同じくらい使えるし、OpenRouter経由でCerebrasで動かすとめっちゃ速いし、o4-miniの1/5くらいの価格なんだ。" userName="petesergeant" createdAt="2025/08/22 09:29:28" color="#38d3d3">}}




{{<matomeQuote body="コーディング用途だと、gpt-oss-120Bを、Qwen3-Coder-480B-A35B-Instruct、GLM4.5 Air、Kimi K2、DeepSeek V3 0324 / R1 0528、GPT-5 Miniとどう比較する？フィードバックよろしく！" userName="indigodaddy" createdAt="2025/08/22 12:27:50" color="#ff33a1">}}




{{<matomeQuote body="ごめん、俺はコーディングでそれらのモデルは使ってないんだ。" userName="petesergeant" createdAt="2025/08/22 13:40:28" color="">}}




{{<matomeQuote body="もったいないね。俺の経験だとGLM 4.5 AirとQwen3 A3Bは、どちらもOSS 120Bを圧倒するくらいだよ。" userName="bigyabai" createdAt="2025/08/22 18:04:25" color="#ff5c5c">}}




{{<matomeQuote body="へぇ、それは良いこと聞いた！<br>Qwen3-Coder-480B-A35B-Instructはどう？たしかOpenRouterで使える無料のQwen3-coderモデルだよね？" userName="indigodaddy" createdAt="2025/08/22 18:13:22" color="">}}




{{<matomeQuote body="俺の経験だとgpt-ossはニッチな話題にはあんまり詳しくないんだ。だからパズルとか人気言語でのコーディング以外で使うなら、他の大きなモデルほどはうまくいかないよ。gpt3と比べても知識が足りない感じ。<br>これをどうベンチマークするかは分からないけどね。" userName="okasaki" createdAt="2025/08/22 07:05:32" color="#ff5c5c">}}




{{<matomeQuote body="「gpt-ossはニッチなトピックをあまり知らない」って話だけど、小さいモデルはそれが狙いだよ。ニッチな情報はRAGで補って、推論の骨格だけ残すんだ。" userName="xadhominemx" createdAt="2025/08/22 13:08:28" color="#ff33a1">}}




{{<matomeQuote body="うーん、そうかもね。でも、モデルのサイズが大きいのは、それだけ多くの知識を知ってるからって説明もできると思うんだ。知識が最初から入ってた方が、ユーザーとしては使いやすいんじゃないかな。" userName="okasaki" createdAt="2025/08/22 13:46:03" color="">}}




{{<matomeQuote body="個人的な経験なんだけど、世界中の小さな都市やあまり知られてない観光地について聞くと、大きいモデルの方がずっと詳しいし、知識も豊富なんだよね。" userName="easygenes" createdAt="2025/08/22 07:13:17" color="">}}




{{<matomeQuote body="知識をぜんぜん持たず、どこを見れば情報があるかを知ってるモデルとか、賢いデータベースを持ってるモデルが出てきてほしいな。常にそんなトリビアを頭に入れてるなんて、AIだろうと人間だろうと「狂った心」の証拠だよ。" userName="scotty79" createdAt="2025/08/22 11:31:25" color="#ff33a1">}}




{{<matomeQuote body="問題は、これらのモデルが自分が何を知ってるか、知らないかを推論できないことだよ。だから今は、<br>1) 常に全てのトリビアを検索させるか、<br>2) 「複雑そうだ」と思ったら時々検索させるか、のどっちかにチューニングするしかないんだ。" userName="bigmadshoe" createdAt="2025/08/22 15:34:49" color="#ff33a1">}}




{{<matomeQuote body="それって本当にうまくいくのかな？例えば「シェイクスピアみたいに書け」って言ったら、大きなモデルは直感的に書き方を知ってる。もし、それをいちいち調べなきゃいけないとしたら、良い仕事はできないんじゃないかな。" userName="okasaki" createdAt="2025/08/22 12:07:47" color="">}}




{{<matomeQuote body="君の言うことは必ずしも間違ってないと思うけど、情報源が今のところ一つしかないよね。<br>https://openrouter.ai/openai/gpt-oss-120b と https://openrouter.ai/deepseek/deepseek-chat-v3.1 で同じプロバイダーを比較する方が、たぶん良いよ。gpt-oss-120bはかなり前からあるから、プロバイダーも慣れて最適化してるだろうしね。" userName="petesergeant" createdAt="2025/08/22 05:09:27" color="#ff33a1">}}




{{<matomeQuote body="「gpt-oss-120Bと同じ知能」なんてことにならなければいいんだけど、だってgpt-oss-120Bはとんでもなくバカな時があるんだもん。MoEにはすごく頭の悪いサブネットが含まれてるんじゃないかな。ベンチマークはあくまで出発点であって、実際にどう使えるかを見ないとね。" userName="mdp2021" createdAt="2025/08/22 08:34:17" color="#45d325">}}




{{<matomeQuote body="Qwen3 235B 2507 Reasoning（これは結構好きだよ）やgpt-oss-120Bより劣ってるみたいだね。<br>https://artificialanalysis.ai/models/deepseek-v3-1-reasoning<br>料金はここを見て：https://openrouter.ai/deepseek/deepseek-chat-v3.1" userName="esafak" createdAt="2025/08/21 20:12:10" color="#ff33a1">}}




{{<matomeQuote body="Qwen3 2507モデルは、今ローカルLLMの中で最高の部類に入るよ。もしGPUと32GBくらいのRAMがあるなら、A3Bモデルはペアプログラミングのタスクにすごく役立つぞ。" userName="bigyabai" createdAt="2025/08/21 20:18:49" color="#45d325">}}




{{<matomeQuote body="eGPUエンクロージャーにRTX 5090とか入れて、Linuxで動かせたりするのか知ってる？最近Linuxワークステーションを買おうか迷ってて、全部AMDで揃えたいんだけど、もしLLMのためにNVIDIAカードをeGPUで挿せるなら最高だなって思ってさ。" userName="pdimitar" createdAt="2025/08/21 20:32:27" color="">}}




{{<matomeQuote body="俺はThunderbolt経由で2つのeGPUでOllamaを動かしてるけど、問題なく動いてるよ。もちろん、NVIDIAデバイスであることには変わりないから、その辺の面倒は接続タイプじゃ変わらないけどね。" userName="oktoberpaard" createdAt="2025/08/21 21:07:35" color="#785bff">}}




{{<matomeQuote body="検証ありがとう！LinuxでのNVIDIAのしがらみは嫌なんだけど、ローカルLLMが使えるのはすごく魅力的だから、自分のイデオロギー的な問題は一旦置いとくかも。ところで、なんでeGPUが2つなの？LLMのソフトウェアって、どんな組み合わせのGPUでも賢く使えるようにできてるの？" userName="pdimitar" createdAt="2025/08/21 21:10:56" color="">}}




{{<matomeQuote body="うん、OllamaはマルチGPUに関してすごくプラグアンドプレイだよ。llama.cppも多分そうだと思うけど、俺はまだ大きなモデルで試したことがないんだ。" userName="arcanemachiner" createdAt="2025/08/21 22:21:13" color="#38d3d3">}}




{{<matomeQuote body="今日でも、複数のGPUでWAN動画生成を並列化する進歩がリリースされたばかりだよ。LLMはもっと簡単に分割できるんだ。" userName="SV_BubbleTime" createdAt="2025/08/22 03:31:37" color="">}}




{{<matomeQuote body="そうだな、システムメモリとdGPUメモリの間でデータをやり取りするなら、インターコネクトの速度がボトルネックになるだろうね。30Bモデルなら問題ないけど、480Bクラスのモデルだと確実に問題になるはずだよ。" userName="bigyabai" createdAt="2025/08/21 20:49:40" color="#ff5c5c">}}




{{<matomeQuote body="eGPUでもLinuxでNVIDIA関連のドライバーの面倒はやっぱり残るよ。（必ずしも最悪ってわけじゃないけど、最適ではないね。）それよりも、ワークステーションにもう一つGPUを追加するか、LLMをAMD GPUで動かす方がいいんじゃない？" userName="gunalx" createdAt="2025/08/21 20:48:17" color="#ff33a1">}}




{{<matomeQuote body="え、AMD GPUでもLLMが効率よく動かせるようになったの？全然知らなかった、超クールじゃん、教えてくれてありがとう。" userName="pdimitar" createdAt="2025/08/21 20:49:55" color="">}}




{{<matomeQuote body="俺はRadeon 7600 XT 16GBで、過去2〜3ヶ月間llama.cppを使ってLLMモデルを動かしてるよ（Windows 11）。AMD HIP SDK（インストーラーはすごく簡単だった）と最新のRadeonドライバーを入れただけで、GitHubのリリースページからhip-radeonって名前のzipファイルを解凍したら、`llama-server.exe -ngl 99 -m Qwen3-14B-Q6_K.gguf`ってコマンドを実行するだけ。あとはlocalhost:8080のWebUIにブラウザで接続すればいいんだ。llama.cppはOpenAI互換APIも持ってるから、もっと高度なインターフェースとも連携できるぞ。" userName="DarkFuture" createdAt="2025/08/21 21:42:43" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
