+++
date = '2025-05-27T00:00:00'
months = '2025/05'
draft = false
title = 'LLM CLIツールがツールを実行可能に！Pythonやプラグインで連携'
tags = ["AI", "CLI", "プログラミング", "ツール", "Python"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> LLM CLIツールがツールを実行可能に！Pythonやプラグインで連携

引用元：[https://news.ycombinator.com/item?id=44110584](https://news.ycombinator.com/item?id=44110584)




{{<matomeQuote body="これのために作った<br>Streamdownっていうストリーミングmarkdownレンダラーも見てみてね：<br>https://github.com/day50-dev/StreamdownMore背景：<br>https://github.com/simonw/llm/issues/12<br>（あとSimonのllmの上に作ったllmehelpっていうtmuxツールもチェックしてみて．毎日使ってるんだ．本当に．手放せないんだよね）" userName="kristopolous" createdAt="2025/05/27 23:19:42" color="#45d325">}}




{{<matomeQuote body="あともう一つllmで作ったの忘れてた！<br>これはZSHプラグインで、zleを使って英語をシェルコマンドに変換してくれるやつ．キーボード一発なんだ．<br>https://github.com/day50-dev/Zummoner<br>マジで人生変わったよ．今日書いた例ね：＄ git find out if abcdefg is a descendent of hijklmnop<br>実はこのコメントでも使ったんだ．具体的なコマンド例も載せてるよ．<br>ctrl-x xでバッファを送ったら、openrouter通して一秒以内に正しい構文に入れ替わったんだ．" userName="kristopolous" createdAt="2025/05/28 02:14:32" color="#45d325">}}




{{<matomeQuote body="BashとかZshのブレース展開なら｛1..6｝って感じで外部コマンド呼ばなくて済むよ．<br>オプション言わなくても｛001..995｝みたいにゼロ埋めも賢く推測してくれるしね．" userName="kazinator" createdAt="2025/05/28 02:23:46" color="">}}




{{<matomeQuote body="これ最高じゃん！ありがとう！<br>俺fish使ってるんだけど、言語設定の変更はこれで見れば簡単そうだね<br>https://github.com/viktomas/dotfiles/blob/master/fish/.confi...<br>これ毎日使うわ" userName="vicek22" createdAt="2025/05/28 09:56:32" color="">}}




{{<matomeQuote body="俺も似たやつ作ったんだよね：https://github.com/CGamesPlay/llm-cmd-comp<br>デモ見る限り、俺のやつよりちょっと自動じゃなくて、対話的に使う感じみたいだね．" userName="CGamesPlay" createdAt="2025/05/28 04:26:25" color="#38d3d3">}}




{{<matomeQuote body="これ面白いね！好きだわ！<br>会話のコンテキストが良いね．継続的なコマンド構築も便利だし、＃構文の引き継ぎもすごく理にかなってる！<br>今後のアイデアとして、LLMを使った新しいプログラミングやインフラ管理の方法論を考えてるよ．コンテキストに応じた処理や、再帰・合成可能性、LLMをコンパイルターゲットとするメタ言語みたいな話だよ．これがあれば、複雑なタスクもシンプルに扱えるんじゃないかな．GCCのRTLみたいなもんだね．" userName="kristopolous" createdAt="2025/05/28 05:16:35" color="#ff33a1">}}




{{<matomeQuote body="始まったよ！これ見て：https://github.com/day50-dev/ono" userName="kristopolous" createdAt="2025/05/29 23:04:08" color="">}}




{{<matomeQuote body="これいいね！superwhisperみたいなのと組み合わせると、長い問い合わせも音声でいけるね．" userName="rglynn" createdAt="2025/05/28 09:45:14" color="">}}




{{<matomeQuote body="うん、これマジでクールだね．" userName="rcarmo" createdAt="2025/05/28 13:15:48" color="">}}




{{<matomeQuote body="うわ、このライブラリめっちゃ良さそうだね！<br>表示方法をプラグインでカスタマイズできるフックが欲しいかも．今issue立てたよ：https://github.com/simonw/llm/issues/1112<br>いくつか設計案入れたけど、どれもしっくりこないんだよね．フィードバックくれると嬉しいな．" userName="simonw" createdAt="2025/05/27 23:29:26" color="#ff33a1">}}




{{<matomeQuote body="マジな解決策はセマンティックルーティングだよ。mdastみたいなのに基づいてルーティングルールを定義したい感じ。俺もハックしたバージョンをいくつか作ったことあるんだ。<br>これはターミナル表示とかだけじゃなく、Tool Callingにも超いい感じに補完するよ。cerebrasみたいな速度が普通になる将来に向けて、入力を吸い上げて多重化できると、動的に設定できるストリームルーティングがもっと多くのユースケースを開拓するはず。<br>コスト、レイテンシ、コンテキストウィンドウ、モデルルーティングはあるけど、まだセマンティックなのは見てないな。誰かがやるんだろうけど、俺がやっちゃうかもね。" userName="kristopolous" createdAt="2025/05/27 23:37:08" color="#ff33a1">}}




{{<matomeQuote body="すごいね！俺もストリーミングMarkdownレンダラーを速く表示するために、いくつかの言語で書いたことあるんだ。俺だけじゃないってわかって嬉しいよ！ニコニコマーク" userName="rpeden" createdAt="2025/05/28 00:00:16" color="">}}




{{<matomeQuote body="前にだけ進んでバッファを最小限にするのは、めちゃくちゃ難しい問題だよ。Streamdownを書いたのは、マジで必要なツールがなかったから。<br>モデルによってMarkdownの解釈が違うし、CommonMarkだけじゃダメ。ワードラップのために文字幅チェックとかも必要で、tmuxやalacrittyでバグも見た。<br>sdとglowを比較してみて。glowはEOF待ちが遅いよ。sdは色設定が簡単でいい感じなんだ。" userName="kristopolous" createdAt="2025/05/28 00:07:24" color="#38d3d3">}}




{{<matomeQuote body="そうそう、これって nontrivial problem で、俺もgtk-llm-chatでマジで苦労したんだ！streaming markdown-it-pyライブラリを使って解決したよ。" userName="icarito" createdAt="2025/05/28 04:08:07" color="#45d325">}}




{{<matomeQuote body="興味深いね。これ絶対チェックしてみるよ。俺はllmとbatをsyntax highlighting付きで使ってたんだ。" userName="hanatanaka1984" createdAt="2025/05/28 00:58:22" color="">}}




{{<matomeQuote body="ただ「｜ bat --language=markdown --force-colorization ？」ってやるだけ？" userName="kristopolous" createdAt="2025/05/28 01:00:23" color="">}}




{{<matomeQuote body="シンプルなbashスクリプトで、ツールに素早くコマンドラインアクセスできるよ。出力はページ分けされたsyntax highlighted markdownになるんだ。<br>こんな感じで起動するんだよ： llmquick ”why is the sky blue?”" userName="hanatanaka1984" createdAt="2025/05/28 01:21:43" color="#ff5c5c">}}




{{<matomeQuote body="いい感じのツールもあるよ。<br> day50-dev/llmehelp/blob/main/Snoopers/wtf<br>作り直そうと思ってて、俺が必要なのは「＄ ls ｜ wtf」みたいにLLMに複雑な情報を引き出してもらうことなんだ。<br>最終的にはast-grep.github.ioの上に”ai-grep”として構築したい。これが欲しかった「概念的なgrep」だよ。<br>セマンティックルーティングがあれば、トークン数が増えるにつれて結果が良くなるように段階的に動かせると思うよ。" userName="kristopolous" createdAt="2025/05/28 01:35:29" color="#ff5733">}}




{{<matomeQuote body="＞ファイル名を含めないでください。もう一度、ファイル名を含めないでください。」笑<br>これ、うまくいくのかな？（一般的に）繰り返さないといけないのがマジで嫌なんだよね。ChatGPTは俺の指示なんか全然気にしてくれないっぽいけど、API経由ならうまくいくかな？" userName="johnisgood" createdAt="2025/05/28 06:28:43" color="">}}




{{<matomeQuote body="｜ bat −p −l mdsimple を使ってみたけど，うまく動くよ．" userName="hanatanaka1984" createdAt="2025/05/28 01:17:30" color="">}}




{{<matomeQuote body="これ，めっちゃフットガンのリスクを開けるね．ドキュメント ［1］ はプロンプトインジェクションについて警告してるけど，もっとありえそうなのは自分で自分を傷つけることだと思うな．例えば，自動取引のために証券口座アクセスをツールに与えたりとか．プロンプトインジェクションがなくても，ボットがバカな取引をするのを防ぐものはないんだ．［1］ https://llm.datasette.io/en/stable/tools.html" userName="tantalor" createdAt="2025/05/27 22:53:23" color="#ff33a1">}}




{{<matomeQuote body="＞ これ，めっちゃフットガンのリスクを開けるね．＜br＞うん，本当にそうなんだよ．LLMにツールを繋ぐと，特に認証されてて代理で動けるならヤバくなる可能性があるんだ．MCPの世界はこれを爆速でやってる．GitHub MCPの話も見てみて：https://news.ycombinator.com/item?id=44097390＜br＞ドキュメントに警告載せたし，ダメージを与えるプラグインは出さないよう気をつけた．QuickJSやSQLiteは読み取り専用．危険な領域．（めっちゃ楽しいけどね！）" userName="simonw" createdAt="2025/05/27 23:05:03" color="#785bff">}}




{{<matomeQuote body="「シニアリーダーシップ／取締役会」がAIで”お金を節約”したり”もっと速く安く成長”することを全力で考えてないと思う？これは絶対に大規模に起こるだろうし，そしたら「教訓話」とか「コンプライアンス」規則がたくさん出てくるだろうね．" userName="isaacremuant" createdAt="2025/05/27 23:49:20" color="">}}




{{<matomeQuote body="起こらせればいいじゃん．ただ，また税金使って彼らを救済しないでくれ．" userName="zaik" createdAt="2025/05/28 02:32:34" color="">}}




{{<matomeQuote body="うん，サンドボックスはマジで重要になるね．macOSだとそんな難しくないけど，今すぐ使える良いツールがないんだよね．Claude CodeはUX最適化のためにちょっとSeatbeltを使い始めてるみたい．" userName="mike_hearn" createdAt="2025/05/28 10:33:13" color="#38d3d3">}}




{{<matomeQuote body="フットガン議論全体が見当違いだと思うな．自分を撃つ可能性はあるけど，可能性を評価しないのもリスクだよ．一般人はフットガンを過小評価（FOMO），技術者は新可能性を学ばないリスクを過小評価しがち．僕なんて1年前にLLMにローカルコマンド実行させてたけど無害だった．何をプロンプトするかが重要．「天気調べて」でrm −rf ／はまずない．でも，LLM判断不明なまま株取引はリスク高すぎ；）＜br＞" userName="arendtio" createdAt="2025/05/28 11:21:54" color="#ff5733">}}




{{<matomeQuote body="どんなツールだって悪用されうるよね。" userName="shepherdjerred" createdAt="2025/05/28 01:37:50" color="">}}




{{<matomeQuote body="これは悪用じゃないよ。これはドリルが使う人の手をたまに傷つけちゃうのと同じだよ。" userName="yard2010" createdAt="2025/05/28 06:51:33" color="">}}




{{<matomeQuote body="帯鋸はスプーンより危ないさ。" userName="theptip" createdAt="2025/05/28 15:21:52" color="">}}




{{<matomeQuote body="あんた、わかってないな。たいていのツールは人間が使うんだよ。悪いことしても人間のせいだし、予測できる。でもLLMにツールを勝手に使わせるのは全く別。LLMの判断は予測不能だし、なんでそう決めたか理由もわからない。LLMがツールを使うのは全く新しいことだから、新しいヤバい問題（FUBAR）が起きる可能性があるんだぜ。" userName="tantalor" createdAt="2025/05/28 02:18:37" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="でもさ、なんでLLMの場合に人間が責任取れないの？LLMにやらせるには色々設定しなきゃいけないし、それは人間がやってるじゃん。LLMに代わりに行動する許可を与えてるのも人間だよ。人間は絶対に責任取れるはずだよ。問題は：そうするかってことさ。" userName="johnisgood" createdAt="2025/05/28 06:31:24" color="#38d3d3">}}




{{<matomeQuote body="俺は意図が大事だと思うんだ。例えばAI放射線治療機を作るとして、慎重にシステム作ったのに患者を死なせちゃったとする。ベストプラクティス守ってミスしてないなら、あんたが悪かったわけじゃないだろ？LLMがたまに人を殺すんだよ。でもそれは意図してない。差別発言とかジェノサイドを推進する今のボットも同じ。開発者は意図してないし、一生懸命防ごうとしてる。彼らを責めるのは不公平だと思うぜ。" userName="tantalor" createdAt="2025/05/28 12:10:42" color="#ff5733">}}




{{<matomeQuote body="＞でもなんか悪いことした？別に。ベストプラクティス守ってミスしてない。LLMがたまに人を殺すだけ。あんたは全然意図してない。＜<br>LLMを作ったか、あるいは悪用した奴は、意図に関わらず責任取らなきゃダメだろ。俺が意図せず誰かを撃っちゃったとしても、それで許されるか？そんなわけないだろ。" userName="johnisgood" createdAt="2025/05/31 14:27:28" color="#ff5c5c">}}




{{<matomeQuote body="あんたが悪いことしたんだよ。重要なシステムなのに、結果が非決定的で検証できないプロセスを使っちゃったんだから。" userName="cauefcr" createdAt="2025/05/28 15:49:40" color="">}}




{{<matomeQuote body="俺が言いたいのはさ：人間は間違いなく責任取れるってことだよ。これは反対意見ある？" userName="johnisgood" createdAt="2025/05/28 15:35:14" color="">}}




{{<matomeQuote body="＞でもなんか悪いことした？＜<br>そうだよ、あんたは倫理的な盲点があったんだぜ。リスクとか結果への責任を考える努力を怠ったんだ。良い意図があれば大丈夫って考えが、かえって悪い結果を生むこともある。それに、システムは一度作って終わりじゃない。ジェノサイドを推進するLLMだって、問題がわかったら止めて直せばいい。どうすれば同じ間違いを繰り返さないか、システムのレベルで考えるべきなんだ。意図が良ければ免責とか、ちょっと関わっただけで全責任とか、現実の倫理観はそんな単純じゃないんだよ。" userName="kelseyfrog" createdAt="2025/05/29 02:22:11" color="#ff5733">}}




{{<matomeQuote body="「善意が責任を免罪する」って言われてもさ、クソくらえって感じだよ。うっかり誰かを撃っちゃったとしても、わざとじゃなくても責任は問われるでしょ。" userName="johnisgood" createdAt="2025/05/31 14:29:09" color="">}}




{{<matomeQuote body="いいね、完璧なタイミングだよ！<br>Warpみたいなターミナルベースのエージェントのアイデアは好きなんだけど、Cursorみたいな”全部お任せで金取る”ってモデルは嫌なんだ。<br>だから、自分のシェルスキル不足を補うシンプルでCLIベースのエージェントを探してたんだ。<br>これが危険なのは分かってるけど、ターミナルツールとLLMの組み合わせは良さそうじゃん。<br>他のエージェントみたいに、LLMがツールを呼ぶたびに許可を取る方法ってないのかな？（「LLMが｀rm -rf ./*｀を呼び出そうとしています。Yで確認...」みたいに）<br>こうすれば、LLMが勝手にターミナルで暴走するのを防げると思うんだ。" userName="nlh" createdAt="2025/05/28 00:36:58" color="#ff5733">}}




{{<matomeQuote body="＞ Cursorみたいな”俺らに任せろ、いいプロンプトとLLM呼び出しを作ってやるから”ってモデルは好きじゃない（しかも金取るし）へぇ、なんでターミナルがあちこちで広告出して、変なプロジェクトのスポンサーになってるんだろうって思ってたんだ。<br>完全に無料じゃないって知らなかったよ。" userName="johntash" createdAt="2025/05/31 01:30:54" color="">}}




{{<matomeQuote body="Codex CLIのデフォルトの実行方法ってそうじゃないの？<br>つまり、—full-autoを付けない場合。" userName="andresnds" createdAt="2025/05/28 01:02:52" color="#785bff">}}




{{<matomeQuote body="”llm”使ってるみんなに見てほしいんだ〜、[Gtk-llm-chat](https://github.com/icarito/gtk-llm-chat)ってやつ。結構頑張って作ったんだよ。”llm” CLIツールとデスクトップをトレイアイコンとか便利なチャットウィンドウで連携できるんだ。最近3.0.0を出したんだけど、3つの主要なデスクトップOS全部のパッケージがあるよ。" userName="icarito" createdAt="2025/05/28 04:13:23" color="#ff5c5c">}}




{{<matomeQuote body="面白いね。普通のチャット以外にどんな使い方してるの？" userName="kristopolous" createdAt="2025/05/28 04:20:07" color="">}}




{{<matomeQuote body="俺はたまにコマンドラインから”llm”を使うことがあるよ。例えばフラグメントとか、”curl”でWebリソースをパイプしたりね。そのあと”llm” ”gtk-chat” --cid MYCIDでcidを取得して使う感じ。" userName="icarito" createdAt="2025/05/28 04:33:26" color="#38d3d3">}}




{{<matomeQuote body="実はそろそろSimonのインフラから離れたいんだ。マルチストリームでルーティングベースの、もっと現代的なAPI進化に合ったソリューションが欲しいんだよね。Unix shellはプログラム間の糊としては優秀だけど、LLMで次元が増えたから。名前付きパイプみたいな消費者と生産者がいるポートシステムかな。gRPCとかNATS（https://github.com/nats-io）、MQTTもいけるかも。ネットワーク透過が最高だね。" userName="kristopolous" createdAt="2025/05/28 06:13:00" color="#38d3d3">}}




{{<matomeQuote body="今回のリリースありがとう。君のライブラリは既存クライアントの制限なしにLLMの可能性を開く鍵だと思うよ。バージョン0.26アルファが出てからMCPサーバーと連携するプラグインを作ろうとしてるんだけど、ちょっと難しすぎるかな。これまでのところ、接続して動的にツールを取得・使用することはできたんだけど、まだパラメータを渡せてないんだ。" userName="oliviergg" createdAt="2025/05/27 21:27:49" color="#ff33a1">}}




{{<matomeQuote body="うん、今朝MCPでちょっと実験してみたんだけど、手っ取り早くプラグインのデモを出せるか見てみたんだ。ちょっとややこしいね！公式のmcp Pythonライブラリは本当にasyncioを動かしてサーバーに接続して利用可能なツールを内省（イントロスペクト）してほしいみたいだ。" userName="simonw" createdAt="2025/05/27 21:41:10" color="#ff33a1">}}




{{<matomeQuote body="やあSimon！llmヘビーユーザーなんだ。投稿見てすぐMCPをいじり始め、stdioベースのMCPサーバー（@modelcontextprotocol/server-filesystemでテスト）と連携できるアルファ版を公開したよ - https://github.com/Virtuslab/llm-tools-mcp。初期段階だから必ず—taオプションで。mcp.jsonの保存場所や-Tでのツール指定が不便で、—all-toolsフラグや-T name-prefix*のようなglobパターンサポートはどうか質問させて。" userName="mihau" createdAt="2025/05/28 12:32:18" color="#45d325">}}




{{<matomeQuote body="OK、これはすごく有望なスタートだね！君は今ファンクションベースのツールを使ってるから一つずつ登録が必要なんだ。Toolboxを使うと、一つのクラスで複数ツールを扱え、設定も受け取れるんだ。これでllm -T ’MCP（”path/to/mcp.json”）’ のように使えるかも。mcp.jsonも不要にできるかもね。一つ注意点は、クラスを動的に作成するのが少し面倒なこと。それを改善するissue #1111があるよ。" userName="simonw" createdAt="2025/05/28 14:52:21" color="#ff5733">}}




{{<matomeQuote body="フィードバックありがとう！あー、”llm.Toolbox”は見たんだけど、プラグイン開発者にとっての便利機能かと思ってたよ。君が投稿したissue（#1111）見てみるね。もしかしたら何か貢献できるかも。" userName="mihau" createdAt="2025/05/28 15:30:32" color="">}}




{{<matomeQuote body="LLM CLIのzsh/omzプラグインでタブ補完機能作ってるんだけど、機能追加のペースが速すぎて追いつくの大変なんだ！<br>幸いこのコマンドでほぼ完成形になったよ。<br>llm -f README.md -f llm.plugin.zsh -f completions/_llm -f https://simonwillison.net/2025/May/27/llm-tools/ ”implement tab completions for the new tool plugins feature”<br>自分のリポジトリはここね。<br>https://github.com/eliyastein/llm-zsh-plugin<br>オプションやフラグを網羅しようとしてて、ちょっとゴチャゴチャしてるんだ。誰かフィードバックくれると嬉しいな。" userName="prettyblocks" createdAt="2025/05/28 02:39:38" color="#ff5c5c">}}




{{<matomeQuote body="これがSFじゃなくて現実なんてヤバいね。今のコーディングってこうやるんだ。アセンブリ時代にどうやってたんだろうって不思議に思うのと同じように、未来の世代も「どうやってあんなんで作業してたんだ？」って思うんだろうな。" userName="sillysaurusx" createdAt="2025/05/28 02:52:33" color="">}}




{{<matomeQuote body="アセンブリからCへの移行は、同じ決定論的な計算の枠組みでの抽象化の話。でもプログラミングからLLMへの移行は全く違うんだ。非決定論的だし、デバッグもできない。だからアセンブリとの比較は筋違いだよ。" userName="xk_id" createdAt="2025/05/28 03:56:22" color="#38d3d3">}}




{{<matomeQuote body="結局は、決められた時間内に機能を作れるかどうかが大事なんだ。その点では、アセンブリからC、そして決定論的プログラミングからLLMへの変化って、同じくらいインパクトがあると思うよ。" userName="sillysaurusx" createdAt="2025/05/28 12:48:32" color="">}}




{{<matomeQuote body="Common LispとかPrologでも同じような試みがあったけど、全部に使えるわけじゃなかった。今回もまた無理だと思うよ。" userName="anthk" createdAt="2025/05/28 13:13:46" color="">}}




{{<matomeQuote body="毎日シェルスクリプト書いてるのに、変数どう使うかLLMに聞かなきゃいけないのはなんで？毎日英語使ってるのに、翻訳ツールあるからって英語勉強しないのと一緒じゃないか？" userName="therouwboat" createdAt="2025/05/28 18:44:59" color="">}}




{{<matomeQuote body="すごい！Claude Codeがツールをどう使ってるか疑問だったんだ。LLMにツールを教えてハーネスで管理できるのはわかるけど、特定のAPIに強く期待してるんだろうね。あなたの3rdパーティのツール連携は不利にならない？<br>別の話だけど、GitHubのMCP攻撃の話で、LLMがクレデンシャルを全部使っちゃうように騙される可能性があるって言ったんだ。細かい認証情報を作るプロトコルをハーネスが使えたらいいな。LLMがアクションの許可を求めて、ユーザーがOKしたら一時的なクレデンシャルが発行されて、LLMがそれを使う仕組み。" userName="losvedir" createdAt="2025/05/28 14:35:31" color="#45d325">}}




{{<matomeQuote body="そのクレデンシャルのアイデア、LLMのツール機能で今すぐできるよ。結構凝ったツール設定が必要だけど、「もっと認証情報欲しい」ってツールを用意して、それが呼ばれたらユーザーに聞くんだ。ツール自体が認証情報を管理して、LLMには渡さないで、「creds1」みたいなシンボルを渡して、次にそのシンボルを使ってってLLMに教える感じ。" userName="simonw" createdAt="2025/05/28 14:57:43" color="#38d3d3">}}




{{<matomeQuote body="やあ Simon、ここで聞くのちょっと話それるんだけど、この論文見た？（https://arxiv.org/abs/2502.05167）見た目通り重要？この指標って全部のシステムカードに載せるべきかな？＞ LLM12個調べたら短いコンテキスト（1K以下）はいいけど長くなると性能ガタ落ち。32Kで10個のモデルはベースラインの50パーセント以下になっちゃう。GPT-4oも99.3パーセントから69.7パーセントに落ちたって。" userName="consumer451" createdAt="2025/05/28 21:55:28" color="#ff33a1">}}




{{<matomeQuote body="へえ、それ見てなかった！それマジ面白いね。Gemini 2.5 ProとGemini 2.5 Flashでもそれやってるところ見たいな。俺の理解だと、最近のneedle in a haystackテストだと他のモデルより全然進んでるみたいだし。" userName="simonw" createdAt="2025/05/28 22:57:08" color="">}}




{{<matomeQuote body="これ作ってくれてありがとう！先週これ（0.26a0）使って自社データ使った顧客向けチャットボットのデモ作ったんだ。書いたのはシステムプロンプトとか外部データ・計算ツール。君のライブラリのおかげでコア機能はめっちゃ簡単だったよ。<br>大変だったのはUI部分（会話維持、更新対応、新規セッション開始できる見栄えいいやつ）だったな。<br>`after_call=print`知らなかったから、この記事読んでマジ良かった！" userName="rahimnathwani" createdAt="2025/05/28 10:04:42" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Simonすごいね！君のツール毎日使ってるよ。パイプとかローカル（Ollama）とリモートでのモデル切り替えが簡単だから、マジで使いやすいね。" userName="hanatanaka1984" createdAt="2025/05/28 01:02:32" color="#ff33a1">}}




{{<matomeQuote body="GPT-4.1って、特に構造化出力とかツール呼び出しに強いモデルだよ。俺はもう2年間LLMを日々の単純作業に使ってるんだけど、安くて有能っていう最高の組み合わせだから、これが俺の頼りになるモデルだね。" userName="ttul" createdAt="2025/05/27 22:46:04" color="">}}




{{<matomeQuote body="正直GPT-4.1 miniにはマジ感心してるよ。APIで使ってるんだけど、信じられないくらい安くてほとんどのことでマジで有能。コード書きはo4-miniだけどね。<br>今日の面白い例だと： llm -f https://raw.githubusercontent.com/BenjaminAster/CSS-Minecraft/refs/heads/main/main.css <br> -s ’explain all the tricks used by this CSS’<br>これ、あのすごいCSS Minecraftデモ（https://news.ycombinator.com/item?id=44100148）のCSS（https://github.com/BenjaminAster/CSS-Minecraft/blob/main/mai...）をGPT-4.1 miniにパイプして解説頼んでるんだ。コードはきれいに書かれてるけどコメント全くない。<br>解説（https://gist.github.com/simonw/cafd612b3982e3ad463788dd50287...）、マジで素晴らしかったよ！”このCSSは現代的なCSS機能をエキスパートレベルで使って、JavaScriptを最小限かゼロにして3DインタラクティブなボクセルスタイルのUIを作ってる”って特定して、俺がわからなかったテクニックを沢山説明してくれたんだ。<br>んで、使ったのは入力3813トークン、出力1291トークン（https://www.llm-prices.com/#it=3813&ot=1291&ic=0.4&oc=1.6）で、たったの0.3591セント（1セントの3分の1くらい）だったよ。" userName="simonw" createdAt="2025/05/27 22:56:01" color="#45d325">}}




{{<matomeQuote body="これ、ありがとうね。ChatGPT plusのサブスクやめて、APIキーでllmツールみたいなの使おうと思ってるんだ。普通の会話で、文脈ってどうやって扱うの？例えばUIだと、質問してその後に続けて聞くと、文脈がなんか自動で扱われるじゃん。" userName="yangikan" createdAt="2025/05/28 13:58:36" color="">}}




{{<matomeQuote body="RTFMするべきだったね https://llm.datasette.io/en/stable/usage.html#starting-an-in...<br>UIでChatGPTの機能をちょっとだけ使えるようにしたユーザーインターフェースで、内部でllm使ってるのとか知ってる？これは俺の技術詳しくない妻のためにね。" userName="yangikan" createdAt="2025/05/28 14:30:06" color="">}}




{{<matomeQuote body="これがあるよ：https://github.com/icarito/gtk-llm-chat<br>俺もずっとWeb UIを作りたいと思ってたんだ。ツールが出た今、それが次の大きなプロジェクトになると思う。<br>これはLLMは使ってないんだけど、今一番いいUIの選択肢の一つはhttps://openwebui.com/だよ。Ollama（とか他のOpenAI互換のエンドポイント）とマジでうまく動くんだ。" userName="simonw" createdAt="2025/05/28 14:54:44" color="#ff33a1">}}




{{<matomeQuote body="JavaScriptを最小化か排除できるかもって？<br>なんで断言できないの？" userName="puttycat" createdAt="2025/05/27 23:04:29" color="">}}




{{<matomeQuote body="CSSしか見せてないからだよ！<br>HTMLもないし、コメントなしのCSSコードだけで全部推測したんだ。<br>でも、CSS Minecraftは3年前に出たから、学習データにヒントがあった可能性はあるね。<br>これは厳密な実験じゃないんだ。<br>（でも、調べた限りだと、そのコードの詳しい解説は昨日ブログに出したのが一番だったよ。<br>たぶん、コードだけから理解したんだと思うな。）" userName="simonw" createdAt="2025/05/27 23:07:51" color="#785bff">}}




{{<matomeQuote body="なるほどね。<br>CSSを見たらJSはいらない/関係ないってわかるべきじゃないかなと思ったんだよ。" userName="puttycat" createdAt="2025/05/27 23:24:12" color="">}}




{{<matomeQuote body="いいね Simon！<br>これって、みんな同じツールに集まってきてるって君が言ってたのと関係ある？<br>https://x.com/simonw/status/1927378768873550310" userName="swyx" createdAt="2025/05/27 22:16:40" color="">}}




{{<matomeQuote body="いや、全然偶然だよ！<br>これ、何週間も前からリリースしようと頑張ってたんだ。" userName="simonw" createdAt="2025/05/27 22:22:37" color="">}}




{{<matomeQuote body="@simonw、Claude codeってどれくらい使ってる？<br>Claude codeをメインで使って、Claudeに特化したllmベースのツールを使わせるのってあり？<br>llmだけ使えたら最高だけど、Claude codeの機能多すぎで、llmで全部できるのは無理だろうね。<br>あと、llmは範囲が狭いのがいいなって思ってるよ。" userName="jasonriddle" createdAt="2025/05/29 13:03:47" color="#ff5c5c">}}




{{<matomeQuote body="すごくいいんだけど、トークン消費が早くてちょっと怖いかな！<br>llmがいつか適切なツールプラグインと洗練されたプロンプトで同じことできるようになる可能性はあるけど、今は目指してないよ。<br>Claude Codeはめっちゃ複雑だからね！" userName="simonw" createdAt="2025/05/29 14:30:28" color="#ff5733">}}




{{<matomeQuote body="これは最高だね、ずっと待ってた機能だよ。<br>mcpとかopenapiベースが来るかなと思ってたけど、こっちの方がシンプルで使いやすそう。<br>プラグインで作るのも難しくなさそうだし。" userName="samuel" createdAt="2025/05/28 04:54:48" color="">}}




{{<matomeQuote body="llmアップデートするたびに、geminiとかollamaみたいなプラグイン全部入れ直さないといけないんだ。<br>Geminiキーとかollamaのエイリアスは残ってるのに、なんでプラグイン消えるんだろ？<br>わかんないや。" userName="sorenjan" createdAt="2025/05/27 21:28:38" color="#38d3d3">}}




{{<matomeQuote body="ごめんね！<br>Homebrewでアップデートしてる？<br>それだと環境が消えちゃうからプラグインも全部なくなるんだよ。<br>直すために、plugins.txtってファイルにインストールしたプラグインを書いておいて、消えたら入れ直すってのを考えてるんだ。<br>対応のIssueはここだよ：https://github.com/simonw/llm/issues/575" userName="simonw" createdAt="2025/05/27 21:34:39" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
