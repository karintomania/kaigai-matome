+++
date = '2025-07-26T00:00:00'
months = '2025/07'
draft = false
title = 'Copilotをroot化！開発環境の脆弱性を突いた手法とは？'
tags = ["AI", "セキュリティ", "脆弱性", "ハッキング", "コンテナ"]
featureimage = 'thumbnails/purple5.jpg'
+++

> Copilotをroot化！開発環境の脆弱性を突いた手法とは？

引用元：[https://news.ycombinator.com/item?id=44695098](https://news.ycombinator.com/item?id=44695098)




{{<matomeQuote body="Microsoftが修正した脆弱性は、コンテナ内で非rootユーザーとしてコードを実行するように設計されてたのに、root権限で自分のコードを実行できるってトリックがあったことだね。でも、コンテナ自体は安全でネットワークリクエストも脱出もできなかったから、結局root権限でできるのは自分だけがアクセスできるコンテナをめちゃくちゃにするくらいだったって話。" userName="simonw" createdAt="2025/07/26 16:36:46" color="#785bff">}}




{{<matomeQuote body="Microsoftはちゃんと脆弱性対策をしたから評価するべきだね。ほとんどの企業はそこまでしっかり対策しないけど、Microsoftは徹底してたってわけだ。" userName="0xbadcafebee" createdAt="2025/07/26 20:33:59" color="">}}




{{<matomeQuote body="今の時代、脆弱性は積み重なってるよね。「コンテナ自体は安全だった」ってのは、攻撃者が見つけられなかったってだけ。コンテナやVMからの脱出は既知の事実で、設定ミスや virtio ドライバーのバグがあれば起こり得る。だから、今回の結果はマジで重要なんだよ。" userName="ajross" createdAt="2025/07/26 16:51:06" color="#785bff">}}




{{<matomeQuote body="もし彼らがコンテナ脱出を見つけて報告してたら、バグ報奨金をもらってたはずだよ！<br>今、Microsoftが使ってそうなシステムに、まだ未修正のコンテナ脱出脆弱性って何か知られてるの？" userName="simonw" createdAt="2025/07/26 16:54:59" color="#45d325">}}




{{<matomeQuote body="僕はMicrosoftじゃなくて、改善した個々のエンジニアを評価したいな。Microsoft全体のセキュリティ文化はひどいからね。CISAのレポートを見てみればわかるよ。" userName="stogot" createdAt="2025/07/26 22:37:04" color="#ff5733">}}




{{<matomeQuote body="悪意のある奴は、きっとroot権限の脆弱性を保持したまま、コンテナ脱出のバグが出てくるのを待ってるんだろうね。" userName="VBprogrammer" createdAt="2025/07/26 17:19:29" color="#38d3d3">}}




{{<matomeQuote body="でも、5ドルのスパナが、いつか誰かが適切な人物にそれを使って重要な認証情報を引き出すかもしれないからって、重大なセキュリティ脆弱性になるわけじゃないでしょ。" userName="thfuran" createdAt="2025/07/26 17:24:27" color="">}}




{{<matomeQuote body="Copilotがコードの実行を拒否したり、許可したりするのって変だよね。一体何を目指してるんだろう？" userName="stevage" createdAt="2025/07/26 22:53:15" color="">}}




{{<matomeQuote body="彼らは目標なんて持ってないよ。Copilotは、あるプログラムがコマンド実行結果を挿入するために勝手に乗っ取ってる、テキスト補完システムとの共同物語作成セッションって考えた方がいい。<br>予測テキストモデルが「はい、そして」となることもあれば、「いいえ、なぜなら」となることもある。記事にもあったように、「はい、そして」が多いと次もそうなるし、特定の要求から始まると拒否が続くみたいだね。" userName="wizzwizz4" createdAt="2025/07/26 23:56:32" color="#45d325">}}




{{<matomeQuote body="適切な比喩じゃないね。<br>5ドルのレンチは脆弱性じゃない。誰でも使えるツールは脅威モデルの一部で、排除できない。<br>今回の手口は斬新だ。<br>開かない箱を守るカルトがあって、レンチが発明されたら、それは明確なセキュリティ脆弱性だろ？" userName="ajross" createdAt="2025/07/26 22:06:14" color="">}}




{{<matomeQuote body="人が働くのと逆なのが面白いな。<br>何度も「ノー」って言われると最終的に折れるし、何度も「イエス」って言われると、全部やるのにうんざりするだろうし。" userName="stevage" createdAt="2025/07/27 01:37:52" color="">}}




{{<matomeQuote body="このチームはすごいね。<br>親会社がこれを機に、機能より品質とセキュリティにもっと投資することに価値があると気づいてくれるといいな。" userName="0xbadcafebee" createdAt="2025/07/27 01:51:32" color="#ff5733">}}




{{<matomeQuote body="レンチで手に入るのが、誰も開けられない箱が入った部屋へのアクセスだけなら、深刻な脆弱性じゃない。<br>それが実際に起こったことに近い比喩だよ。" userName="thfuran" createdAt="2025/07/26 22:51:39" color="">}}




{{<matomeQuote body="プロダクトマネージャーに全ての功績をあげるべきだな。<br>だって、彼がエンジニアに「セキュアにしろ」って言ったんだから。" userName="dudeinjapan" createdAt="2025/07/27 06:07:06" color="">}}




{{<matomeQuote body="コンテナも隔離されたVMの中にあったんだろうな。" userName="bravesoul2" createdAt="2025/07/27 08:55:21" color="">}}




{{<matomeQuote body="＞彼らはバグバウンティをもらえただろう！<br>なんで訴えられないと思うの？気になるな。" userName="worik" createdAt="2025/07/26 21:48:49" color="">}}




{{<matomeQuote body="まただよ。比喩を無視すれば、コンテナやVMのエスケープは日常的な脆弱性だろ。<br>セキュリティ分析は脆弱性がない前提でやるもんじゃない。<br>現代のセキュリティは多層防御だ。<br>AIのプリプロンプトは最初の層で突破された。コンテナ内のUID分離も破られた。次はコンテナだ。<br>他にもネットワークファイアウォールやイングレス、イーグレスルールがあるだろうけど、それらも過去には破られてるんだ。" userName="ajross" createdAt="2025/07/26 23:33:13" color="#ff5c5c">}}




{{<matomeQuote body="営業担当者は、相手に「はい」と言わせる質問をすることで、人を操作するよう訓練されてるんだって。一度「はい」と言い始めると、人はそのまま言い続ける傾向があるからね。" userName="dangero" createdAt="2025/07/27 05:37:43" color="">}}




{{<matomeQuote body="俺が今まで関わったインフラは全部、ある程度このパターンを使ってたよ。Kubernetesクラスター内にProxmoxのVMがたくさんあったりね。" userName="j-krieger" createdAt="2025/07/27 10:20:08" color="">}}




{{<matomeQuote body="問題は、Microsoftが報奨金を出さないせいで、開発者が脆弱性を自分で抱え込んで悪用して稼ごうとしちゃうことだよ。Microsoftは今すぐ報告してほしいはずなのにね。Microsoftが考えるべきなのは、攻撃者がコンテナのroot権限を持つのって大事なこと？って質問だよ。もし重要なら、rootアクセスに関するバグバウンティは何か支払うべきだし、重要じゃないなら、これは脆弱性ってマークされるべきじゃなかったってことだね。" userName="DSMan195276" createdAt="2025/07/26 17:20:59" color="#38d3d3">}}




{{<matomeQuote body="コンテナのroot権限奪取って、めちゃくちゃヤバいセキュリティ脆弱性ってわけじゃないよね。moderate（中程度）って評価は妥当だと思うけど、次の段階への足がかりにはなるってことだね。" userName="VBprogrammer" createdAt="2025/07/26 17:31:16" color="">}}




{{<matomeQuote body="まさにその通りだよ。適切な多層防御ってのは、信頼できる人がシステムを裏切っても、被害が最小限に抑えられるってことだね。" userName="worik" createdAt="2025/07/26 21:50:33" color="">}}




{{<matomeQuote body="このコンテナがどう実装されてるかは知らないけど、MicrosoftはPythonサンドボックスを隔離する標準的な方法を持ってるよ。<br>https://learn.microsoft.com/en-us/azure/container-apps/sessi...<br>この機能がこれか、似たようなものを使っているといいんだけどね。" userName="pamelafox" createdAt="2025/07/26 17:16:41" color="#ff5c5c">}}




{{<matomeQuote body="https://news.ycombinator.com/item?id=39922066<br>このリンク見てみて。" userName="homarp" createdAt="2025/07/27 14:55:12" color="">}}




{{<matomeQuote body="OP（オリジナルポスター）じゃないけど、多分このリンクを言ってるんだと思うよ。https://www.cisa.gov/resources-tools/resources/CSRB-Review-S..." userName="NemosDemos" createdAt="2025/07/27 03:26:17" color="">}}




{{<matomeQuote body="まあ、そうかもしれないけど、もし任意のコンテナエスケープを前提にするなら、Copilot以外にも壊れるものはたくさんあるってことだよね。（俺はそう思ってる！）" userName="tptacek" createdAt="2025/07/27 03:44:09" color="#45d325">}}




{{<matomeQuote body="サンドボックスを破るエクスプロイトでも、root権限が必要なら大したことないよね…だからもしハッカーがその両方を持っていたとしても、Microsoftはそれらを売っても気にしないだろうね、だってどっちも深刻じゃないからさ。ほら、完璧なセキュリティだよ、しかもタダでね。" userName="pbhjpbhj" createdAt="2025/07/27 00:24:14" color="#38d3d3">}}




{{<matomeQuote body="ほぼ間違いなくそうだね。その段階ではLinux kernel LPEを探してるだけだから。" userName="tptacek" createdAt="2025/07/26 19:06:24" color="#ff5733">}}




{{<matomeQuote body="これだよ：https://www.cisa.gov/sites/default/files/2025-03/CSRBReviewO..." userName="stogot" createdAt="2025/07/27 12:05:41" color="#ff33a1">}}




{{<matomeQuote body="“Copilotをroot化”って記事を書けるなんて信じられないよ。実際は、何もできないほど厳重にロックダウンされた一時的なPython sandboxコンテナでroot権限を取っただけじゃん。<br>俺は“Copilotをroot化”って読んだ時、CopilotのコアとなるVMでroot権限を取ったんだと思ったよ。<br>もっと正確なタイトルは“Copilot Python Sandboxをroot化する方法”だね。" userName="afro88" createdAt="2025/07/26 21:04:44" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="“完全にロックされたsandboxで、一般ユーザーからrootユーザーへの特権を昇格させた方法”ってのが、ほぼすべてを物語ってるね。<br>これは大したことないし、むしろdepth defenseにおけるsandboxingがいかに効果的かを示してるよ。" userName="stingraycharles" createdAt="2025/07/27 04:48:25" color="#ff33a1">}}




{{<matomeQuote body="LLMが防御にどれだけ役立たないかを示してるね。LLMは積極的にexploit探しを助けるんだから。<br>LLMはまるで狂ったクアドラプルエージェントみたいで、誰の味方かわからないよ。" userName="bravesoul2" createdAt="2025/07/27 08:59:04" color="#ff5733">}}




{{<matomeQuote body="LLMが“味方”につくのは、本が味方につくのと同じだよ。全然違うね。ツールにはエージェンシーなんてないんだから。" userName="brookst" createdAt="2025/07/27 13:52:45" color="">}}




{{<matomeQuote body="カオス・ニュートラルだね。" userName="arccy" createdAt="2025/07/27 10:07:07" color="">}}




{{<matomeQuote body="俺は、Python sandboxからcontainerに脱出したって読んだよ。それなら、Microsoftがこれを“moderate”なseverityだと採点したこととも一致するね。" userName="tptacek" createdAt="2025/07/26 16:32:16" color="#ff5c5c">}}




{{<matomeQuote body="彼がその応答がただのhallucinationsじゃないって、どうやってわかるんだ？<br>俺はそこで働いてるから言えるんだけど、あそこに挙げられてるプロセスはどれも見たことないんだよね。<br>実際、keepAliveJupyterSvc.shっていうスクリプトをパブリックリポジトリで見つけたよ：https://github.com/shivamkm07/code-interpreter/blob/load-tes..." userName="blastonico" createdAt="2025/07/26 19:35:57" color="#ff33a1">}}




{{<matomeQuote body="そのリポジトリと貢献者はMicrosoft/Azureの社員みたいだね。Pythonコードをコンテナで動かすサービスを作ってるらしいけど、なんで個人のアカウントなんだろう？Officeのリポジトリからフォークしたって書いてあるのに見つからないのは変だな。" userName="eddythompson80" createdAt="2025/07/26 20:57:34" color="#ff33a1">}}




{{<matomeQuote body="どうやってMicrosoft/Azureの社員って判断したの？俺には何もそう思わせるものが見当たらないんだけど。" userName="what" createdAt="2025/07/27 03:54:26" color="">}}




{{<matomeQuote body="リポジトリのオーナーのプロフィールに雇用主が載ってるよ？<br>それと、GitHubのコミットURLに`.patch`を追加するとgitパッチファイルが取れるんだ。<br>https://github.com/shivamkm07/code-interpreter/commit/5e282c..." userName="eddythompson80" createdAt="2025/07/27 07:06:48" color="#38d3d3">}}




{{<matomeQuote body="ハルシネーションじゃないのかもな。CopilotのコードはGitHubのトレーニングセットから作られたんじゃないかな？" userName="jon_adler" createdAt="2025/07/26 21:14:32" color="">}}




{{<matomeQuote body="あー、これは本当にハルシネーションっぽいな。<br>みんな、チャットボットってほとんどトークンジェネレーターで、プログラムを実行して返事してるわけじゃないんだよ...単純なシェルプログラムじゃなくて、GPUで計算してトークンを返して、それが日本語に翻訳されてるだけだからね。" userName="blastonico" createdAt="2025/07/26 19:48:30" color="">}}




{{<matomeQuote body="それはかなり時代遅れだよ。<br>今は、よくツールを動かしてその結果を返してるんだ。" userName="MattGaiser" createdAt="2025/07/26 21:16:39" color="">}}




{{<matomeQuote body="そうでもないよ。<br>エージェントのこと言ってるんだろうけど、モデルがいつもエージェントを使うわけじゃないし、公開されてるチャットボットが勝手にコマンドを実行できるシェルに繋がってるわけじゃないんだ。" userName="blastonico" createdAt="2025/07/26 23:22:42" color="">}}




{{<matomeQuote body="それは違うよ。<br>最近のチャットボットはLLMが使えるツールのリストが与えられるツールオーケストレーションを使ってて、ウェブ検索とかコード実行とかが含まれるんだ。<br>LLMがPythonとかのコードを生成して、それを実行するツールを呼び出して結果を受け取るんだよ。<br>ツールはPythonの入力を受け取って、コンテナとかで動かして出力するから、LLMがそれをさらに処理できるってわけ。" userName="brookst" createdAt="2025/07/27 13:56:58" color="#ff5733">}}




{{<matomeQuote body="＞そして、公開されているチャットボットは、任意のコマンドを自由に評価するシェルに接続されているわけではない。<br>って言ってるけど、根拠は？" userName="blincoln" createdAt="2025/07/27 12:39:03" color="">}}




{{<matomeQuote body="じゃあ、何か見落としてるのかな？<br>それとも、どうにかして「外部」にネットワーク接続を作れるってこと？<br>例えばローカルネットワークを迂回して、ルーターのエンドポイントにファジングを始めたりさ。<br>Microsoftは、顧客がrootアクセスできるコンテナを、データ流出や悪用のリスクなしに提供できるってことなの？" userName="ChuckMcM" createdAt="2025/07/26 18:15:45" color="#785bff">}}




{{<matomeQuote body="記事がエグレス（送信）トラフィックのブロックに言及してるから、コンテナをホストしてるマシンやVMに、それを強制するためのiptablesルールがあったんだろうね。" userName="aurelien_gasser" createdAt="2025/07/27 09:32:35" color="">}}




{{<matomeQuote body="OpenAIがPython解釈機能を出した時、オープンなネットワークアクセスなしで開発者のプログラミング手法や内部設定ファイルが見れたんだ。今回も似たようなもんさ。" userName="pinoy420" createdAt="2025/07/26 18:38:19" color="">}}




{{<matomeQuote body="脆弱性には見えないね。コードがコンテナ内で動くのがシステムの安全性を保ってるんだから。" userName="reliablereason" createdAt="2025/07/26 18:28:47" color="">}}




{{<matomeQuote body="昔のLLMは、公開しちゃいけない文書を学習して会社の秘密の宝庫だったんだよ。今は消されてるっぽいけどね。" userName="varispeed" createdAt="2025/07/26 16:28:45" color="">}}




{{<matomeQuote body="＞以前のLLMは、会社の秘密の宝庫だったんだ（公開されるべきでない文書を学習した時ね）。<br>それ嘘じゃない？LLMはトレーニングセットの情報をそんなに覚えないし、非公開データの誤学習なんて聞いたことないよ。LLMの幻覚でそう見えるのはわかるけどね。" userName="furyofantares" createdAt="2025/07/26 17:49:06" color="#45d325">}}




{{<matomeQuote body="俺の経験だと、会社の秘密って他の会社にはほとんど役に立たないもんだよ。" userName="baxtr" createdAt="2025/07/26 16:34:31" color="">}}




{{<matomeQuote body="昔、会社でIP訴訟の件でフロントエンド書き直しをさせられたのを思い出したよ。人は攻撃探しでソーシャルメディアやSlackを見るんだ。会社の秘密は自社には無用でも他社には超有用！だからコミュニケーションは短期保持ポリシーにすべきだし、安易に公開しちゃダメだね。" userName="dataviz1000" createdAt="2025/07/26 18:27:37" color="#785bff">}}




{{<matomeQuote body="もっと大きな問題は株の「重要非公開情報」、例えば未発表の売上だね。それを取引に使うのも、承認されたルート以外で漏らすのも違法なんだ。" userName="simonw" createdAt="2025/07/26 16:54:05" color="#ff33a1">}}




{{<matomeQuote body="いや、そうじゃない時もあるよ。多層防御やゼロトラスト、短期有効期限で、情報の有用性はかなり下がる。スタートアップはインフラに自己流のやり方（全IPからのSSH開放とか）を使いがちだから、一番危ないんじゃないかな。" userName="bravesoul2" createdAt="2025/07/27 09:01:53" color="#38d3d3">}}




{{<matomeQuote body="企業に大きな経済的影響を与えた、漏洩した秘密の例を教えてくれる？" userName="baxtr" createdAt="2025/07/27 12:13:15" color="">}}




{{<matomeQuote body="パナマ文書で会社が潰れたり、何億も損害が出た例があるよ。Uberハックとか、Cambridge Analyticaもそうだった。" userName="brookst" createdAt="2025/07/27 14:01:53" color="#ff33a1">}}




{{<matomeQuote body="あー、鍵とかの秘密について話してるんだと思ってたわ。" userName="bravesoul2" createdAt="2025/07/28 06:36:05" color="">}}




{{<matomeQuote body="本当に機密な部分を定義するのが難しいからだよ。みんな文書を分類するけど、制限がないから公開を選びがち。アクセスリストも面倒がるし。クレジットカード番号みたいな自動検出も不完全だし、新製品の情報とか3Dモデル、コード、戦略メールなんかはただのテキストだしね。<br>全部漁られたら文脈無視されるし、些細な内部連絡でも公開されたら波紋を呼ぶことも。多国籍企業には情報が山ほどあるから、正しい情報を見つけるのが大変で、そのためにCopilotを使ってる。OutlookとかSharePointの検索がひどいからCopilotが必要なんだ。" userName="wkat4242" createdAt="2025/07/26 19:31:42" color="#38d3d3">}}




{{<matomeQuote body="ほとんどの会社で、下っ端のマネージャーが秘密をため込みたがるんだ。それが彼らを力強く感じさせるのさ。「新しいこと知ってるんだぜ！」ってね。義母も親戚のゴシップを知ってることで想像上の力を得てるのと同じ。人間の本性なんだろうな。" userName="reaperducer" createdAt="2025/07/26 16:40:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="なんで下っ端のマネージャーだけに限るの？システム管理者とかプログラマーでも全く同じ振る舞いをするやつを知ってるよ。彼らは君に権限をくれたり、必要なことをするスクリプトを渡したりできるのに、君に彼らのところに来て頼ませたがるんだ。それが彼らに存在意義を与えてるんだろうな。" userName="SoftTalker" createdAt="2025/07/26 17:06:52" color="#785bff">}}




{{<matomeQuote body="他人のためにたくさん直してる者としては、俺のしてることは秘密じゃないけど、それを学ぶのはほとんどの人には難しすぎるみたいだ。俺は学びたいやつを見つけたら、仕事を任せるようにしてるよ。もし誰かが何か得意なことを見せたら、もっと厄介な問題が回ってくるのを覚悟しなきゃな。たまに秘密にしてるように見えるかもしれないけど、ただ機嫌が悪いだけかもね。" userName="pastage" createdAt="2025/07/26 18:30:37" color="">}}




{{<matomeQuote body="それは「そのこと」が何なのかに大きく依存するよ。「ただ重要感を味わうため」にやってるやつもいるだろうけど、アクセスを拒否するのには正当な理由があることが多い。そもそもひどいアイデアか、信頼できないか、上司からの明確な要求がない限りね。君の経験とは違うかもしれないけど、俺も未経験の同僚に危険な認証情報を共有するのを拒否したとき、同じようなこと言われたことある。「やっても地獄、やらなくても地獄」ってやつさ。" userName="dns_snek" createdAt="2025/07/26 19:12:51" color="#45d325">}}




{{<matomeQuote body="スクリプトの目的とか使ってるシステムにもよるかもね。職務分掌は不正、無駄、エラーを減らすためのISO 27001のリスク軽減原則だよ。" userName="jon_adler" createdAt="2025/07/26 21:20:34" color="">}}




{{<matomeQuote body="システム管理者の気持ち、すげぇわかるわ。開発者に権限あげたら、SOとかLLMからテキトーにコピペしてシステムをメチャクチャにしやがる。だから、悪いけど権限制限するしかねーんだよな。" userName="arccy" createdAt="2025/07/27 10:11:11" color="#785bff">}}




{{<matomeQuote body="「ほとんど」って言葉が、その文ではかなり効いてるんだよな。会社ってのはさ、軍隊みたいに、公開しても大丈夫な情報でも大量に秘密にしてるんだ。だって、どれがマジでヤバい情報なのか分かんねーからな。" userName="kingofmen" createdAt="2025/07/26 16:40:10" color="">}}




{{<matomeQuote body="偏執症と、どれが「ほとんど」のカテゴリに入るか分からないからだよ :)" userName="samastur" createdAt="2025/07/26 16:40:43" color="">}}




{{<matomeQuote body="だから企業の諜報活動ってマジで儲かる業界なのかね？もちろん、どんな秘密かによるけど。99%は社内プロセスのくだらないこととか部署間の揉め事だろうけど、中にはマジで重要なものもあるからな。" userName="wkat4242" createdAt="2025/07/26 19:28:22" color="">}}




{{<matomeQuote body="これに関する具体的な例とかあんの？俺はまだ見たことないんだけどさ。" userName="simonw" createdAt="2025/07/26 16:37:41" color="">}}




{{<matomeQuote body="LLMがメール署名を再現したって言われる事例を探したけど、正確なものは見つからなかったな。それに、たくさんのメール署名は長年ニュースグループなんかで公開されてきたわけだし。もしかしたらWebのコメントが、ChatGPTがユーザーが入力したメールで学習してるって思い込んだ、陰謀論的な考え方だったのかもね、実際そんな必要ないし。<br>ただ、このトップのスクリーンショットみたいなのはあるよ: https://www.zdnet.com/article/chatgpt-can-leak-source-data-v...<br>まあ、要するにないってことだ。" userName="Barbing" createdAt="2025/07/26 20:31:59" color="#38d3d3">}}




{{<matomeQuote body="「テック」じゃない会社がLLMを導入し始めた頃、それらの製品の意図とは違うコンテンツへの「ガードレール」（標準的な用語かは分からんけど）がなかったんだよな。ChatGPTの無料版が始まる前、登録不要の無料LLM持ってるタピオカ屋があって、俺それ使ってちょっとbashスクリプト生成したことあるわ。" userName="nyarlathotep_" createdAt="2025/07/26 17:47:27" color="#45d325">}}




{{<matomeQuote body="出力がハッキリ存在してるのに、自分がroot化されたことに気づいてないってことは、そいつは賢くないってことだな。" userName="1970-01-01" createdAt="2025/07/27 14:48:09" color="#785bff">}}




{{<matomeQuote body="Copilotにsudoバイナリをbase64形式で渡してショートカットできたんじゃないか？" userName="ratg13" createdAt="2025/07/26 17:00:47" color="#ff5733">}}




{{<matomeQuote body="ファイルの所有者をrootに変更する必要があるってさ。" userName="jfyi" createdAt="2025/07/26 18:42:02" color="">}}




{{<matomeQuote body="Base64はただのエンコード方式で、ファイルの所有者とかSUIDビットみたいなメタデータは運べないんだぜ。sudoバイナリは、その中身だけじゃ特別な力はないんだからな。<br>https://en.wikipedia.org/wiki/Setuid<br>https://en.wikipedia.org/wiki/Base64<br>https://xkcd.com/1053/" userName="yencabulator" createdAt="2025/07/29 17:39:39" color="#38d3d3">}}




{{<matomeQuote body="コマンドをたくさん実行すると、Copilotがファイルをダウンロードしたり、フォルダをtarで固めて提供したりするようになるってさ。これは最初のコマンドじゃやっちゃダメだぞ！LLMのセーフガードなんて機能しないって、いつものことじゃん？せいぜいツール呼び出しのセキュリティ境界について、ましなメッセージを出すくらいだよ。" userName="yencabulator" createdAt="2025/07/29 17:27:12" color="">}}




{{<matomeQuote body="Microsoftに脆弱性を報告したけど、バウンティはもらえなかったってさ。重要度“Moderate”だからだって。Microsoftみたいな小さなインディー企業だと、バグバウンティは払えないってことなんだろうな。これで何か悪いことが起きるなんて、まさかな？" userName="bramhaag" createdAt="2025/07/26 16:32:51" color="">}}




{{<matomeQuote body="なんでみんな、何兆ドルも稼ぐ多国籍企業のためにタダ働きするのか、俺にはさっぱり理解できねえな。" userName="citizenpaul" createdAt="2025/07/26 17:12:43" color="">}}




{{<matomeQuote body="それって、オープンソースソフトウェアについても同じことが言えるよな。" userName="hombre_fatal" createdAt="2025/07/26 17:29:29" color="">}}




{{<matomeQuote body="だから俺は“オープンソース”を信じる意味が分からん。“フリーソフトウェア”は、人類全体のために仲間へ無償で開発貢献することだと信じてるんだ。何十億ドルも稼ぐ企業に無償貢献なんてするか？" userName="blendergeek" createdAt="2025/07/26 17:44:31" color="">}}




{{<matomeQuote body="大事なのはここ！コンテナへのrootアクセスで何を得たか？<br>何も得てねえ！<br>これで今までアクセスできなかったコンテナの場所を探れたけど、/rootにファイルはなかったし、ログも面白くないし、既知のコンテナブレイクアウトは全部パッチ済みだったから無理だったってさ。root権限を得る方法は他にもあるだろうし、Microsoftが一つに報酬払ったら全部に払うことになるだろうから、危険じゃないことに対して払うのは馬鹿げてるってわけだな。" userName="n2d4" createdAt="2025/07/26 16:39:33" color="#ff33a1">}}




{{<matomeQuote body="それは誤解かもしれないな。“フリーソフトウェア”（例: Linux）も大企業に利益をもたらすし、“オープンソース”も人類全体に恩恵をもたらすんだぜ。" userName="CharlesW" createdAt="2025/07/26 17:57:42" color="">}}




{{<matomeQuote body="フリーソフトウェアとオープンソースは同じことに対する二つのイデオロギーだ。フリーソフトウェアは人類のために開発するって思想（倫理的なスタンスだな）。オープンソースは、開発者にお金払わないで企業がコスト削減するための思想だ。オープンソースも人類に貢献はするけど、金のために企業向けソフトウェアを開発するだけだろ。俺は自分の時間で開発するなら、自分や一般の人々に利益をもたらすソフトウェアに集中するぜ。" userName="blendergeek" createdAt="2025/07/26 18:01:42" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
