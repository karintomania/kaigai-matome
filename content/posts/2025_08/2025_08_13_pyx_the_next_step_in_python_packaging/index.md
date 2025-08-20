+++
date = '2025-08-13T00:00:00'
months = '2025/08'
draft = false
title = 'PYX: Pythonパッケージングの常識が変わる？課題を解決する次の一歩に注目'
tags = ["Python", "パッケージ管理", "開発ツール", "OSS", "新技術"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> PYX: Pythonパッケージングの常識が変わる？課題を解決する次の一歩に注目

引用元：[https://news.ycombinator.com/item?id=44892209](https://news.ycombinator.com/item?id=44892209)




{{<matomeQuote body="こういうオープンソース製品には何度も裏切られてきたんだよ。前にもこういう約束は聞かされてきたけど、結局買収されて、何年ものドキュメントやイシュー、プルリクエストがほぼ無通知で削除されるんだ。新しい会社からは、元々頼ってた機能がなぜかごっそり抜け落ちた、完全に商用版の代替品が出てくることになる。" userName="monster_truck" createdAt="2025/08/13 19:07:59" color="">}}




{{<matomeQuote body="この懸念は理解できるよ。でも、pyxはAstralのツールとは意図的に別物だって強調したいんだ。発表ポストにもあるように「製品自体を超えて、pyxは僕らの戦略の具体化でもあるんだ。僕らのツールは永遠に無料で、オープンソースで、許容ライセンスで提供され続ける。そこは何も変わらないよ。」と。その代わり、有料のホスト型サービス『Astral platform』を提供するんだ。これは、ツールを使ってる人が「次に自然に必要になるもの」なんだよね。つまり、オープンソースツールを収益化するんじゃなくて、別の持続可能な商業製品を作ることで、この懸念に対処したいってことだよ。" userName="woodruffw" createdAt="2025/08/13 19:30:02" color="#38d3d3">}}




{{<matomeQuote body="同意だね。もしこの手のものが本当に追求する価値があるなら、それはpipにマージされるべきだよ。" userName="ActorNightly" createdAt="2025/08/13 20:36:06" color="">}}




{{<matomeQuote body="みんなが”許容ライセンス”を選ぶのは、それが「永久に続く」わけじゃないからだよ。せいぜいコミュニティが古いバージョンをフォークできるだけで、将来の機能は得られない。永久に続くのは”ウイルス性ライセンス”だけなんだ。" userName="o11c" createdAt="2025/08/13 19:44:09" color="#ff5733">}}




{{<matomeQuote body="Pyxはサーバーサイドで、クライアントサイドじゃないんだ。既存のPythonの世界だと、PyPIがこれに相当するね。最近のpipのバージョンに、uvがやってきたことに触発されたアイデアがたくさん追加されてるし、uvで可能なことの多くは、pipにも恩恵をもたらすコミュニティ全体の標準開発のおかげなんだ。でも、pipは本当に厄介な内部インフラを持ってて、uvの優れたアイデア（全てがオリジナルじゃないけど）をたくさん活用できないんだ。それが僕がPAPERを作ってる大きな理由だよ。<br>例えば、uvはキャッシュからファイルをハードリンクすることで、以前インストールしたパッケージを素早くインストールできる。pipがこれに追随するには、キャッシング戦略を根本からやり直す必要があるんだ。なぜなら、今のキャッシュはダウンロードの手間だけを節約する設計で、インストールプロセスについては何も考えてないからね。Wheel全体は覚えてるけど、キャッシュからそれを見つけるにはダウンロード元のURLを知る必要があるんだ。PyPIは独自のURLスキームでパッケージを整理してるから、pipはPyPIにインターネット経由でアクセスして、どこに自分のダウンロードを置いたかを知る必要があるんだよ！" userName="zahlman" createdAt="2025/08/13 20:56:31" color="#ff33a1">}}




{{<matomeQuote body="Pipは壊れてるし、何年も前からそうだよ。検索機能を直す気もなければ、検索を削除したりパッケージインデックスへのメッセージ＼リンクに置き換えたりすることすら考えてない。個人的には、pipが壊れた機能をそのまま出すことを好むなら、pipに何が搭載されてるかなんて意味ないね。" userName="nilamo" createdAt="2025/08/13 21:28:31" color="">}}




{{<matomeQuote body="それは違うと思うよ。ライセンスの”ウイルス性”があるからといって、その著作権者が将来のバージョンをプロプライエタリライセンスに切り替えられないわけじゃないんだ。過去のライセンス付与は、将来の作業にもオープンソースライセンスを付与することを意味しないからね。" userName="woodruffw" createdAt="2025/08/13 19:52:16" color="#ff5c5c">}}




{{<matomeQuote body="pyxは、他の人が実装できるサーバープロトコルを記述するのかな？それとも、他の人が自分のサーバーをホストするために使えるソフトウェアも提供するの？（PyPIが提供するサービスを改善するために使えるとか？）つまり、「pyxのような有料ホスト型サービス」を使う時、pyxソフトウェア自体を使う能力にお金を払うの？それとも単に、Astralが運用する特定のサーバーへのアクセスにお金を払うだけなのかな？" userName="zahlman" createdAt="2025/08/13 20:44:44" color="#45d325">}}




{{<matomeQuote body="その通り。ただし、CLAがない状態で外部の貢献者がいると仮定すると、既存コードのライセンス変更は、完全に不可能ではないにしても、かなり骨が折れるだろうね。" userName="notpushkin" createdAt="2025/08/13 20:06:34" color="#ff33a1">}}




{{<matomeQuote body="これは的外れな解釈じゃないかな。もっと好意的に見れば、検索機能を直すのは簡単じゃないし、pipのボランティアのメンテナーが引き受けられないような相互に関連する事情があるってことさ。(ちなみにpipのせいじゃないよ。`pip search`が動かないのはPyPIが検索APIを削除したから。PyPIがAPIを削除したのはすごくちゃんとした理由があるんだからね。)理由はこちら：https://github.com/pypa/pip/issues/5216" userName="woodruffw" createdAt="2025/08/13 21:32:57" color="#38d3d3">}}




{{<matomeQuote body="僕がよく分かってないだけかな。そのプロトコルってどんな感じになるの？pyxは他のPythonインデックスと同じPEP 503/691インターフェースを使ってるよ。でも、それってPyPI自体にはすぐには役に立たないだろうね。＞それとも、Astralの特定のサーバーへのアクセスにお金を払うだけなの？pyxは今Astralが提供してるサービスだよ。だから、自分でホストはできないんだ、もしそういう意味ならね。" userName="woodruffw" createdAt="2025/08/13 20:54:02" color="#38d3d3">}}




{{<matomeQuote body="とはいえ、pipにはuvの素晴らしいアイデア（すべてがオリジナルってわけじゃないけど）を活かせない厄介な内部インフラがあるよね。僕pipのメンテナーだけど、この意見には強く同意しないな。もしpipがuvと同じくらいフルタイムの従業員リソースを去年から享受できてたら、多くの問題は解決できたと思うよ。pipに厄介な内部があるのは否定しないけど、一番の足かせはメンテナーのリソース不足なんだ。＞例えば、uvはキャッシュからファイルをハードリンクして、以前インストールしたパッケージを素早くインストールできる。pipがそうするには、キャッシュ戦略を根本から見直す必要があるんだ。なぜなら今のキャッシュはダウンロードの手間を省くためだけで、インストールプロセスについては何も保存しないからね。これは良い例じゃないと思うよ。uvにはダウンロードやホイールコマンドがないことからもわかるように、それらはuvのキャッシュ戦略と合わないんだ。でも、uvがパッケージメタデータをプリフェッチできるとか、他の良い例はあると思うよ。pipでそれを実装するのは、おそらくレゾルバーの完全なオーバーホールが必要だから、すぐには無理だと思うな。" userName="notatallshaw" createdAt="2025/08/13 21:16:43" color="#38d3d3">}}




{{<matomeQuote body="これはもっともな懸念だけど、Astralは本当に素晴らしい実績を持ってるよ。HNのコミュニティがこんなに慎重な反応なのには驚いたな。Pythonを10年くらい開発してるけど、Astralが何かするたびにワクワクするんだ！" userName="mnazzaro" createdAt="2025/08/13 22:16:12" color="">}}




{{<matomeQuote body="それは感染型ライセンスの環境で、もっと大変になるってことだよね？もしそうなら同意するよ。でも、金銭的なインセンティブがある企業がその苦痛を受け入れる長い実績があると思うんだ。MongoDBのAGPL移行が頭に浮かぶね。でも、今回のケースに焦点を戻すと、Astralのツールは貢献者にCLAへの署名を求めてないんだ。僕はここでの疑惑は理解できるし同情的だけど、もっと大きな話は、Astralがツールをオープンソースの性質を損なわずにサービスとして作りたいってことだよ。だから、今回の発表は二つを明確に区別しようとしてるんだね。" userName="woodruffw" createdAt="2025/08/13 20:25:50" color="#ff5c5c">}}




{{<matomeQuote body="あれは7年前の話だよ。もし戻ってこないなら、CLIは一時的な「接続できません」ってメッセージじゃなくて、明確にそう伝えるべきだよね。待てば動くって思わせるメッセージは良くないよ。" userName="nilamo" createdAt="2025/08/13 21:37:44" color="#785bff">}}




{{<matomeQuote body="＞pyxは他のPythonインデックスと同じPEP 503/691インターフェースを使ってる…それなら、PyPIにはできないパッケージリクエストの決定をどうやってるの？uvがクライアントシステムについてもっと詳しく伝えられるプロトコル拡張があるのかな？" userName="zahlman" createdAt="2025/08/13 21:05:15" color="#ff33a1">}}




{{<matomeQuote body="それは3年前の話だよ。2018年はコマンドを削除することを検討した時で、実際にPyPIから検索APIが削除された時じゃないんだ。それに、XML-RPC APIを提供しているプライベートインデックスもあるから、それらを壊すのは正当化できないんだよね。詳しくはここを見てね：https://github.com/pypa/pip/issues/5216#issuecomment-1235329..." userName="woodruffw" createdAt="2025/08/13 21:44:39" color="#ff5733">}}




{{<matomeQuote body="リポジトリAPIはサーバー主導のコンテンツネゴシエーションを許可してるんだ。だからpyxは、通常の503/691リクエストにも対応しながら、特殊なリクエストも処理できるんだよ。詳しくはここ見てね：https://packaging.python.org/en/latest/specifications/simple-repository-api/#content-negotiation" userName="woodruffw" createdAt="2025/08/13 21:20:13" color="#45d325">}}




{{<matomeQuote body="君は良い点を指摘してると思うけど、古いスティーブ・バルマーのFUD用語、「viral」は使わないでほしいな。「Copyleft」の方がより適切な用語だよ。" userName="krupan" createdAt="2025/08/13 19:58:05" color="">}}




{{<matomeQuote body="pipメンテナーがリソース不足って言うけど、それは違うね。ほとんどのOSSはリソースじゃなくて優先順位付けの問題を抱えてる。ユーザーが毎日困るバグを無視したり、簡単な修正も”不純”って拒否したりするんだ。<br>realthunderやAstralのuvみたいに、進歩を妨げる奴らを避けてこそ、前進できる。もう言い訳はいいよ。" userName="imtringued" createdAt="2025/08/14 09:17:39" color="#ff5733">}}




{{<matomeQuote body="それって本当に解決策なの？全く動かない操作を、もし何とかすれば動くかも、みたいに見せるのが許されるの？未定義のハードルをクリアしないと動かないなんてさ。ユーザーフレンドリーな更新に、こんなに多くの人が反対してるのが信じられないよ。全体的にPEP 8にすごく反してるように感じるね。" userName="nilamo" createdAt="2025/08/13 22:48:25" color="#45d325">}}




{{<matomeQuote body="何て言えばいいか分からないけど、一部のユーザーには動く例を挙げたんだ。PyPIで動かないからって、その人たちの利用を壊すべきじゃない。誰もユーザーに不親切にしたいわけじゃないよ。Pythonのパッケージングを狭い視点から見て、動機まで決めつけるのはやめてくれ。リソース不足こそが一番の課題なんだ。" userName="woodruffw" createdAt="2025/08/13 22:52:14" color="#45d325">}}




{{<matomeQuote body="正直、変だよね。このビジネスモデル、オープンソース界隈じゃよくあるのに、なぜかAstralだけが突出して批判されてる。彼らは間違いなく素晴らしい貢献者で、全く悪いことしてないように見えるのにさ。MicrosoftがNPM持ってるけど、NPMの話になるたびに批判されてるの見たことないし。Astralって言うと、Redditとかで「いつか裏切るぞ」って言われる。なんでこんなに差があるんだろうね？" userName="JimDabell" createdAt="2025/08/14 06:45:19" color="#ff5733">}}




{{<matomeQuote body="ああ、＞普通の503/691を尊重しつつ、pyxが特殊なリクエストに対応できるって？Embrace<br>＞pyx can service specialized requestsExtend... ;) ってこと？" userName="happymellon" createdAt="2025/08/13 22:17:38" color="">}}




{{<matomeQuote body="ユーザーがその一部じゃないときに、「これ動きません」って検知するコードって、そんなにめちゃくちゃ難しいのかな？大多数のユーザーにとってデフォルトで動かないなら、もっと役立つエラーメッセージを出すのって、そこまで大変じゃないと思うんだけど。" userName="fragmede" createdAt="2025/08/14 04:00:02" color="">}}




{{<matomeQuote body="NPMはずっと商用で、GitHubが買収したからGitHubが問題なければ”安全”って感じだね。でもAstralは既存のOSSをRustで書き直してるから、どうやって資金調達してるのかって疑問が常にあるんだ。PYX（pyrex/cythonのファイル名と被るけど、面白い名前だね）もPyPIと競合してて、彼らのクライアントuvを使わせようとしてるみたいだし。Anacondaも同じように疑われたしね。Astralだけじゃなくて、PythonエコシステムでコミュニティベースのOSSを締め出しやすい分野で活動してるから、警戒されるんだと思うよ。" userName="aragilar" createdAt="2025/08/14 09:21:18" color="#ff5c5c">}}




{{<matomeQuote body="皮肉は置いといてさ、pyxはPyPIと競合してないって部分を見落としてるよ。あれはプライベートなサービスだからね。" userName="woodruffw" createdAt="2025/08/13 22:46:34" color="#785bff">}}




{{<matomeQuote body="＞彼らは優先順位の問題を抱えてる<br>っていうなら、フォークすればいいんじゃないかな。あとはお金があれば解決するかもね。他人に自分の優先順位を押し付けるのはちょっと失礼だよ。大規模プロジェクトは優先順位を見失うこともあるけど、それも結局はリソース問題だね。管理する人もいないし。<br>＞不純だから<br>って言われる件だけど、長期的なメンテへの影響は開発者の方がユーザーよりよく分かるはずさ。" userName="zahlman" createdAt="2025/08/14 12:49:27" color="#ff5733">}}




{{<matomeQuote body="「left」っていう言葉も今じゃすごく感情的な意味合いを持つようになったね、”viral”よりもっとかも。" userName="Muromec" createdAt="2025/08/13 20:14:57" color="">}}




{{<matomeQuote body="利益を求める会社は苦労をいとわないって実績が結構あると思うよ。MongoDBのAGPL移行が良い例だね。MongoDBって最初からCLAがあったんじゃないかな？Astralのツールは貢献者にCLAの署名を求めないってのは、かなり重要な違いだね！" userName="pxc" createdAt="2025/08/14 00:39:06" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="あなたが誠実で正直なのは信じてるよ。でも残念ながら、従業員の誠実さは投資家の貪欲さには勝てないんだ。来年には投資家がCEOや経営陣を総入れ替えして、オープンソースツールを収益化し始める可能性も否定できない。どうなるかなんて分からないけど、歴史はそれが起こる可能性が十分あるって教えてくれるよ。" userName="abdullahkhalids" createdAt="2025/08/13 21:54:31" color="#ff5c5c">}}




{{<matomeQuote body="正直言って、これは時間の問題だったよ。長年Python開発者として、こういうツールの欠如が信じられなかったね。GitHubもPythonのホストパッケージを出す予定だったけど、『戦略目標と合わずリソース再配分のため』中止になったみたい[1]。Astralは素晴らしい会社だし、彼らがPythonコミュニティに成し遂げてくれたことは疑う余地がないね。`uv`はゲームチェンジャーで、高速で信頼性もあって使いやすい統一ツールを提供することで、Pythonの核心問題を解決したよ。実際、初めて`uv`を使ってみて（`pyenv` + `poetry`から移行したんだけど）、もう元には戻りたくないって、周りのみんなも同じ体験をしてる。Astralがこれをやってくれて嬉しいし、もちろん彼らは何らかの方法でお金を稼がないといけない（それは全然問題ないし、実際の価値を提供してるなら、このフォーラムの誰も反対しないと思う）けど、この件に関する停滞には正直うんざりしてたんだ。僕はレジストリ（pyhub.net）を作ろうとしたけど、一人でリソースもほとんどなく、他にフルタイムの仕事もあって不可能だったよ。とにかく、チームの努力に感謝する！[1] https://github.com/orgs/community/discussions/8542" userName="rmonvfer" createdAt="2025/08/14 08:24:19" color="#785bff">}}




{{<matomeQuote body="この問題って、すでにSLSA準拠のTUF署名をサポートしてるOCIコンテナイメージレジストリにソフトウェア成果物を保存することでも解決できる？" userName="westurner" createdAt="2025/08/14 12:29:04" color="#ff5733">}}




{{<matomeQuote body="Anacondaが同じ問題をもう10年以上も前に解決済みだよ。" userName="miraculixx" createdAt="2025/08/14 15:03:46" color="">}}




{{<matomeQuote body="ハハハ、Anacondaがいかにひどいか語らせないでくれよ。インストーラーとインタプリタが遅すぎ、通常のpipワークフローから外れてて、環境は肥大化してるし、クロスプラットフォームで一貫性ないし、依存関係の解決はめちゃくちゃ遅いんだよ…" userName="in9" createdAt="2025/08/14 21:26:31" color="#45d325">}}




{{<matomeQuote body="それに、既存の（そこそこ大きい）プロジェクトの名前を流用したんだよね。" userName="bandrami" createdAt="2025/08/16 16:37:42" color="">}}




{{<matomeQuote body="Positも彼らのPackage Managerで似た問題を解決してるよ。オンプレミスでホストできるのが利点だけど、pypiにないならユーザーが希望のアーキテクチャ用にホイールをビルドする必要があるね。" userName="tylfin" createdAt="2025/08/14 15:49:19" color="#ff5733">}}




{{<matomeQuote body="正直言って、俺は絶対`uv`は使わないね。PythonのエコシステムツールはPython製であるべきだろ。" userName="hexo" createdAt="2025/08/14 11:14:40" color="">}}




{{<matomeQuote body="それはすごく閉鎖的な考え方だよ。そういう発言は避けた方がいい。Python環境を管理するのに、動くPython環境が必要なのは変だと感じるんだ。" userName="jpambrun" createdAt="2025/08/14 12:15:51" color="">}}




{{<matomeQuote body="PythonはOSの必須要素だから常に環境があるし、pipなんてプロジェクト中に数回しか使わないから速度は気にならないな。パッケージが既にディストリビューションに入ってたら全然使わないし。その使い方なら速度は十分速いし、何を見逃してるのかよくわかんないわ。" userName="hexo" createdAt="2025/08/16 21:44:37" color="">}}




{{<matomeQuote body="これって炎上狙い？Pythonエコシステムのほとんどは、Python言語自体も含めてCでコアが作られてるじゃん。" userName="gryn" createdAt="2025/08/14 15:22:23" color="">}}




{{<matomeQuote body="確実にuvを見たことも使ったこともないだろ。" userName="Kevcmk" createdAt="2025/08/14 14:53:55" color="">}}




{{<matomeQuote body="Pythonがどの言語で書かれているか知った方がいいよ。" userName="cma256" createdAt="2025/08/14 11:29:34" color="">}}




{{<matomeQuote body="僕が最後に見たときはCで書かれてたけど。" userName="hexo" createdAt="2025/08/16 21:15:10" color="">}}




{{<matomeQuote body="uvがもたらす改善を考えたら、これはかなり残念な自己制限だよ。良いものを見逃してるね。" userName="ljm" createdAt="2025/08/14 12:51:41" color="#785bff">}}




{{<matomeQuote body="そうは思わないな。ネイティブツールを直すのが一番だよ。" userName="hexo" createdAt="2025/08/16 21:13:18" color="">}}




{{<matomeQuote body="Pythonのパッケージング問題はもう解決済み。そこから学んだのは、すべての問題に単一の解決策はないってこと。VC（ベンチャーキャピタル）が出資する企業と関わって、そのインフラに頼るのはFOSS（フリーアンドオープンソースソフトウェア）コミュニティにとって高リスクだよ。" userName="runningmike" createdAt="2025/08/13 21:27:04" color="#ff5c5c">}}




{{<matomeQuote body="pipからvirtualenv、conda、pipenv、poetryと渡り歩いてきたけど、どれも問題だらけだった。今はuvを使ってるけど、必要な依存関係がOSやGPUで違って、同僚がインストールできないんだ。Pythonのパッケージング問題が”解決済み”だなんて、本当に最高だね！<br>" userName="bastawhiz" createdAt="2025/08/14 00:48:04" color="#ff5733">}}




{{<matomeQuote body="LinuxにPythonを入れるのに、sudo apt installからPython 2/3の切り替え、バージョン管理（3.4から3.8へ）、deadsnakes PPA、そしてpyenvの導入まで、長年の苦労があったよ。pyenv、pyvenv、venv、virtualenvの違いを理解するのに週末を費やしたよ。Windowsでのインストールも、公式インストーラからNuGet、winget、Microsoft Store、WSL、conda系、WinPythonまで、もうめちゃくちゃだったね。" userName="Eduard" createdAt="2025/08/14 02:16:40" color="#ff33a1">}}




{{<matomeQuote body="pipがグローバルインストールを警告し始めてから、Pythonパッケージングがダメになった気がする。同じMLやプロットライブラリ、依存関係のために何十億ものvenvを作るなんて嫌だ。requirements.txtにも入れたくないし。もうパッケージングなんて放っておいてほしい。変更はいつも悪いよ。" userName="anothernewdude" createdAt="2025/08/14 01:06:14" color="#ff5733">}}




{{<matomeQuote body="DebianでPythonを扱うのに3時間も格闘して、このエコシステムにマジでキレてる。全然解決してないよ。Debianはvenvを推奨してるけど、venvに入れるとcmakeがパッケージを見つけられない。apt-getのパッケージ名も inconsistent。pipxもダメだし、Python 2/3問題もまだ残ってる。もうPythonなんてビルドツリーから排除して、歴史のゴミ箱に捨ててやりたい気分だ。" userName="JonChesterfield" createdAt="2025/08/13 23:32:21" color="#785bff">}}




{{<matomeQuote body="uvが「解決策」で、手動でvenvを使うのはもう古いやり方だって聞いたよ。" userName="nemomarx" createdAt="2025/08/14 00:04:43" color="">}}




{{<matomeQuote body="あなたの懸念はわかるけど、uvでめちゃくちゃ時間節約できたんだ。だから、VC（ベンチャーキャピタル）のせいでuvがダメになるまで使い続けるつもり。コミュニティがもっとまとまって、一つの方向に向かえるといいんだけどね。" userName="tempest_" createdAt="2025/08/13 22:38:23" color="">}}




{{<matomeQuote body="うん、俺もuv使ってて何も気にしない。ディスクは結構食うけど安いし、起動が爆速になったおかげでPython開発がまた楽しくなったよ。" userName="anitil" createdAt="2025/08/13 23:27:17" color="">}}




{{<matomeQuote body="これ冗談だとは思うけど、ローカル開発にはmiseとかasdfみたいなツールが本当に手放せないね。コンテナなら、バージョン管理されたDockerイメージを使うか、自分でコンパイルするしかないよ。" userName="ilvez" createdAt="2025/08/14 04:29:08" color="">}}




{{<matomeQuote body="uvはvenvと超速いpipが合体した感じ。5ヶ月以上毎日使ってるけど、使うたびにその速さに驚かされるよ。これまで使ってきた技術の中で一番感動してるかもしれないね。" userName="ghshephard" createdAt="2025/08/14 01:01:52" color="#785bff">}}




{{<matomeQuote body="virtualenvで事足りるし、特に不満ないな。派手さはないけど、ちゃんと動くからこれでいいじゃん。" userName="integralid" createdAt="2025/08/14 04:35:41" color="">}}




{{<matomeQuote body="Python特有の問題って感じ。npmとかcomposer、rubygemsではこんなことないのに。Pythonだと依存関係の更新とか新しいマシンにインストールする時、大体うまくいかないんだよな。" userName="bastawhiz" createdAt="2025/08/14 01:30:07" color="#ff5c5c">}}




{{<matomeQuote body="Python専門じゃないと、既存のスクリプト動かすのがマジで困る。プロジェクトごとにPythonのバージョンもパッケージマネージャーもバラバラだし、設定ファイルも違うんだよ。たった1つの.pyファイルでも、どう実行すればいいか、依存関係どうするか分かんない。Python自体は嫌いじゃないけど、この経験は最悪だよ。" userName="mavamaarten" createdAt="2025/08/14 06:53:40" color="#785bff">}}




{{<matomeQuote body="pipがグローバルインストールできねぇって警告出すようになったの、俺も仕事用PCで経験したわ。venv作って.bashrcに設定したら解決したよ。" userName="fragmede" createdAt="2025/08/14 03:48:11" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これらのツールじゃ問題のごく一部しか解決しないんだよ。CやC++ライブラリとの連携、異なるハードウェアやOSの対応、GPU/CUDAのバージョン管理がマジで複雑で笑えないレベル。異なるC++ライブラリやカーネルモジュール、CUDAドライバーの設定も絡む。同じABIでC++ライブラリをリンクできる標準的な方法があれば嬉しいな。Pythonはまだ全然解決してねぇよ…。" userName="pama" createdAt="2025/08/14 02:51:19" color="#38d3d3">}}




{{<matomeQuote body="最近仕事でpipをuv pipに移行したら、venvとrequirements.txtのワークフローはそのままに、めっちゃ速くなったわ。これは当然の選択だね。でも、リソース使用量が増えるのはマジでやばい。ビルドの約10%がuvのメモリ食いすぎでOOMキルされるんだ。手動で再実行してるけど、pipより断然速いからそれだけの価値はあるな。" userName="alisonatwork" createdAt="2025/08/14 02:02:18" color="#38d3d3">}}




{{<matomeQuote body="pipは初期に設計ミスがあったと思うんだけど、それが長く使われちゃったんだよね。そりゃ状況は悪化して、uvが出てくるまで新しいパッケージ管理ツールが乱立したんだ。Pythonのことあまり知らないけど、みんなよくこんな状況に我慢できたなと。" userName="rs186" createdAt="2025/08/14 03:47:32" color="#45d325">}}




{{<matomeQuote body="グローバルインストールできないって警告は、設定でオフにしてまたできるようにできるよ。OSのパッケージマネージャーを使うとか、似たような方法もあるしね。" userName="tayo42" createdAt="2025/08/14 01:17:18" color="">}}




{{<matomeQuote body="最近のソフトウェア品質、ヤバすぎない？RustやMesaまで、とにかく速攻で作って壊すスタイルだろ？<br>マジで開発者の環境と全く同じじゃないとビルドすら通らないとか、もううんざりだよ。" userName="hulitu" createdAt="2025/08/14 04:40:39" color="">}}




{{<matomeQuote body="メモリ使用量について詳しく教えてくれたら、issueを開いてくれると嬉しいな。<br>調査してフィードバックするよ。プロダクションでの動作状況はいつも参考になるからさ。（俺、uv開発者だよ）" userName="zanie" createdAt="2025/08/14 03:58:07" color="#38d3d3">}}




{{<matomeQuote body="PHPの世界から来ると、こんなパッケージマネージャーの問題は信じられないよ。<br>PythonやJavaScriptの人たちも、Composer使ってみたらどうかな？" userName="arkh" createdAt="2025/08/14 06:55:52" color="">}}




{{<matomeQuote body="ハハハ、それってpipへの最高の”中指”だね（笑）" userName="efitz" createdAt="2025/08/14 04:32:48" color="">}}




{{<matomeQuote body="長年Pythonをたまにしか使ってないけどさ、いつもパッケージマネージャーの変更にはマジで悩まされてきたよ。<br>JavaScriptのバンドル問題より酷いんじゃないかって思うくらい。" userName="aledalgrande" createdAt="2025/08/14 04:02:09" color="">}}




{{<matomeQuote body="アプリの配布方法が足りてないと思うんだよね。<br>C++のソースコードでも似たような問題に直面するけど、コンパイル済みのプログラムなら、大抵はzipして配布できるじゃん？" userName="pletnes" createdAt="2025/08/14 07:12:29" color="#785bff">}}




{{<matomeQuote body="いやいや。<br>Pythonのパッケージに十分苦しんでないだけだろ、この変化のありがたみが分からないなんて。" userName="imp0cat" createdAt="2025/08/14 04:49:31" color="">}}




{{<matomeQuote body="お前が使ってるOSのパッケージマネージャーに、俺が使いたいライブラリのパッケージがあるって前提で話してるだろ？" userName="x3n0ph3n3" createdAt="2025/08/14 02:51:56" color="">}}




{{<matomeQuote body="なんでpixi使わないの？" userName="northzen" createdAt="2025/08/14 06:08:56" color="">}}




{{<matomeQuote body="ソフトウェアの品質が悪いってのは、頻繁にアップデートするからだろ？<br>それより、想像できる限り最も時代遅れのソフトウェアプラットフォームの共通部分を選び続けるべきなんだよ。<br>何十年もメンテされてないOSがあるなら、それが俺たちが目指すべき基準だ。<br>古いライブラリや言語ランタイムのOSを使うのは、古いソフトウェアバージョンに縛られる個人的な好みなんかじゃない。それは命令であり、疑っちゃいけないんだ。" userName="imtringued" createdAt="2025/08/14 09:41:06" color="#ff5733">}}




{{<matomeQuote body="全く同感！`uv run executable.sh`がshebangやimportを含んでいて、Pythonを動かすのが本当に魔法みたいだよ。" userName="nemosaltat" createdAt="2025/08/14 01:05:31" color="#38d3d3">}}




{{<matomeQuote body="PyTorchやCUDA、FlashAttentionみたいなライブラリのインストールがめちゃくちゃ大変って話、マジでそう！WindowsやWSLだと、古いVisual Studioのコンパイラが必要で、ダウンロードパスも手動で探さないといけないのがさらに厄介。早く開発体験が良くなってほしいな。" userName="m_kos" createdAt="2025/08/13 20:10:22" color="#45d325">}}




{{<matomeQuote body="こういうのが原因で、Ruby（Rails）から完全に離れちゃったんだ。みんな楽しそうにRuby使ってるの見るから残念だけど、Railsの環境構築がDigitalOceanのドロップレット使う以外無理だったんだよね。いつもコンパイルで失敗してた。2012年のRailsブームに乗っかりたかったけど、セットアップがずっと悪夢だったよ。<br>Pythonを選んだのは、今までこういう問題なかったから。でも今AIやCUDA系だと、pipじゃなくて誰かのシェルスクリプト使うほど大変になっちゃった。" userName="giancarlostoro" createdAt="2025/08/13 20:16:15" color="#38d3d3">}}




{{<matomeQuote body="昔はAnacondaを使う主な理由がまさにこれだったね。" userName="morkalork" createdAt="2025/08/13 20:40:23" color="">}}




{{<matomeQuote body="JRubyは試したことある？ドロップレットには少し大きいかもしれないけど、ほとんどのgemのJavaバージョンがあるし、warblerを使えばクロスプラットフォームのjarファイルを作れるよ。" userName="nurettin" createdAt="2025/08/13 20:29:02" color="">}}




{{<matomeQuote body="正直に言うと、依存関係管理システムってどれも（少なくとも半分は）壊れてるみたいだね。Goをよく使うけど、これまでの遍歴は依存管理なし→Glide→Depmod→VGo→Modulesだった。プロキシやベンダー、バージョン問題はまだあるよ。<br>PythonはVirtualEnv、RustはCargo、JavaはMavenとGradle、RubyはGems。OSの依存管理も大変だ。依存関係管理は本当に頭痛の種だよ。" userName="awesome_dude" createdAt="2025/08/13 20:50:52" color="#38d3d3">}}




{{<matomeQuote body="Anacondaは良かったんだけど、Ubuntuでaptを壊して仕事が余計に大変になったから、俺の中では使わない理由になったよ。venvで問題は消え始めたし、今ではuvとNixがそのループを閉じてくれたんだ。" userName="IHLayman" createdAt="2025/08/13 21:47:38" color="#ff5733">}}




{{<matomeQuote body="この問題ってWindows特有なの？Linuxで作業してて、あなたが言ってるような問題は聞いたことないな。MacOSだとbrewのライブラリのバージョン違いとか、Rubyのセルフコンパイルで少し苦労してる人は見たことあるけど。" userName="ilvez" createdAt="2025/08/13 20:53:38" color="">}}




{{<matomeQuote body="それを聞いて驚いたな。Rubyは人生で初めて、依存関係管理とパッケージングの解決策が良いと感じた言語だったよ。初心者でも、明らかに自分のせいじゃない問題にぶつかった記憶がないもん。<br>一方、PythonはPipenvが登場するまでパッケージ管理の最低限にも達してないと思ってた。Poetryが（2019年か2020年？）出てくるまで、Rubyが2010年か2011年にbundlerが安定した頃のレベルに達したとは感じなかったな。" userName="chao-" createdAt="2025/08/13 21:29:32" color="#ff33a1">}}




{{<matomeQuote body="Rubyの速さにJavaのメモリ管理、最高じゃない？<br>…てか、今君には問題が2つあるね。" userName="nickserv" createdAt="2025/08/13 20:39:13" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
