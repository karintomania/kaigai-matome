+++
date = '2025-05-02T00:00:00'
months = '2025/05'
draft = false
title = 'プログラミングは数学脳より言語脳が重要？'
tags = ["プログラミング", "数学", "言語", "能力", "脳"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> プログラミングは数学脳より言語脳が重要？

引用元：[https://news.ycombinator.com/item?id=43870969](https://news.ycombinator.com/item?id=43870969)




{{<matomeQuote body="これ、誰か元論文読んだ？<br>タイトルめっちゃ煽りすぎで、研究結果大げさに言ってるよ。研究自体も全然厳密じゃない（かなり甘く見てもね）。サンプル少なすぎ - 36人だけ。Numeracyの R^2 は．27、Languageは．31なのに、ステップワイズ回帰で分散への寄与調べたらNumeracyの寄与ほぼゼロになってる。これ相関してる変数あるからじゃん。測ってるもの全部めっちゃノイズ多いし、p値も全然有意じゃないよ。議論自体おかしいってば。" userName="john-h-k" createdAt="2025/05/03 11:49:36" color="#38d3d3">}}




{{<matomeQuote body="まあ公平に言うとさ、彼らのNumeracyの散布図は、なんかダーツの的みたいで実際のプロセスって感じしないね。回帰でなんとか右肩上がりの線が出たのは、外れ値の位置のおかげだよ。Languageの方の散布図は、目で見ても変数間の右肩上がりのつながりが確認できるけどね。" userName="hansvm" createdAt="2025/05/03 14:36:21" color="#ff33a1">}}




{{<matomeQuote body="同意。でも簡単な計算によると、その結果が偶然出る確率は40％くらいだよ。（つまり、研究で出した数字と同じ信号を二回サンプリングしたら、元のサンプルから0．04以上離れる確率が40％くらいだってこと。NumeracyがLanguageから離れてるみたいにね）" userName="john-h-k" createdAt="2025/05/03 14:56:52" color="">}}




{{<matomeQuote body="良いコードは問題解くだけじゃなく、読みやすく整理されてる必要があるよ。<br>問題解決は数学スキル、整理は言語スキルって感じ。整理スキルは問題解決にも影響する。汚いコードだとすぐ詰むからね。<br>数学の証明も整理は必要だけど、数学にはライティングだけじゃ得られない「ひらめき」みたいな「大きなステップ」がある気がする。<br>プログラミングは「小さなステップ」が多いから、根性あれば誰でもすごいもの書けるんじゃないかな。" userName="armchairhacker" createdAt="2025/05/02 16:39:54" color="#38d3d3">}}




{{<matomeQuote body="ほとんどのコーディングは、ブール論理とかごく基本的な集合演算以上の数学はそんなに必要ないんだよ。<br>俺なんか、数学的な細かい作業するより、DBとかインターフェースのスキーマ勉強してどう動くか理解するのに時間使うことの方が多いかな。<br>まあ、ゲームエンジンとか書く人もいるけど、3Dグラフィックスだって線形代数の前半より複雑なものはそんなに必要ないよ。" userName="QuercusMax" createdAt="2025/05/02 16:55:59" color="">}}




{{<matomeQuote body="＞コーディングは数学そのものだ<br>『コーディングは数学を使う』じゃなくて、数学そのものだよ。<br>数学者は物自体じゃなく、物と物の関係を扱うんだ。関係が変わらない限り、どんな物に置き換えても自由。内容はどうでもよくて、形にしか興味がないんだ。（ Poincare）<br>君がどうコード書いてるか知らないけど、オブジェクト間の関係を形成するものとして説明できないコードなんてないと思うな。プログラムをトレースできるってことは、これが必要だってことじゃん。" userName="godelski" createdAt="2025/05/02 17:43:13" color="">}}




{{<matomeQuote body="＞コーディングは数学そのものだ<br>いや、常にそうじゃないよ。高レベルなコードのかなり多くは、数学なんて全然必要としないんだ。<br> CRUD操作やるのに数学はいらないし、それはプログラミング作業の大部分を占めてるんだよ。<br>まあ、 underlying machine code は全部数学に基づいてるけど、 higher level programming は役に立つために数学の方程式一つも関わらせる必要ないんだよ。<br>さあ、ゴールポストがどう動くか見てみようか．．．" userName="leptons" createdAt="2025/05/02 20:39:16" color="">}}




{{<matomeQuote body="そのコード全部、論理的なステートメントと式の連続だよ。数学的論理だね。<br>でも CRUD の論理はあまりに基本でつまらなくて、あまりに当たり前だから、思考なんて全然いらないだけなんだよ。" userName="voidspark" createdAt="2025/05/02 21:08:02" color="">}}




{{<matomeQuote body="＞コーディングは数学そのものだ<br>プログラミングは論理の表現で、それは間違いなく数学だね。<br>でも同時に、変数やクラスの命名、他の開発者が読みやすいようにコードを構造化することとかも考えなきゃいけない。<br>それは形式論理というよりコミュニケーションに近い。<br>プログラミングにはエンジニアリング的な側面もあるよ（プロトタイピング、アーキテクチャ、最適化とか）。<br>数学とエンジニアリングの組み合わせだね。 Software Engineering だよ。" userName="voidspark" createdAt="2025/05/02 19:50:30" color="#ff5733">}}




{{<matomeQuote body="＞コードは全部論理的なステートメントとか表現とか言ってるけどさ。<br>数学的な論理？どのコードのこと言ってんの？根っこにある機械語か？それとも、数字とか論理文とか一切いらない簡単な高レベルのCRUDのこと？すべてのプログラミングが高レベルで数学的とか論理的である必要なんてないんだよ。40年もassembly language書いてる俺が言うんだから間違いない。" userName="leptons" createdAt="2025/05/03 00:44:24" color="#45d325">}}




{{<matomeQuote body="そのquoteって、codingとmathが同じってことをマジで裏付けてないと思うんだけど。俺的には、あのquoteはstructuralistな見方でmathを抽象化したものだね。Languageも同じ抽象化で見れるし。codingも抽象化は共有できるだろうけど、だからってこの３つが同じってことにはならないでしょ。" userName="potatoman22" createdAt="2025/05/02 18:33:21" color="">}}




{{<matomeQuote body="＞簡単な高レベルのCRUDが数字も論理文もいらないって？<br>いやいや、あのコードこそが数学的な論理ステートメントなんだよ。一行一行がコンピューターが実行する論理演算を定義してるんだから。高レベルだろうが低レベルだろうが同じ。全部logicなんだってば。" userName="voidspark" createdAt="2025/05/03 00:59:24" color="#38d3d3">}}




{{<matomeQuote body="stringをどっかの抽象的なとこに保存するのが数学的な操作なわけないじゃん。もうこのスレッド飽きたわ。話が脱線しすぎなんだって。<br>コンピューターを構成してる物質のquarksは純粋な”math”だぜ。ほら、これで俺がゴールポスト動かしたってわけ。" userName="leptons" createdAt="2025/05/03 04:30:17" color="">}}




{{<matomeQuote body="＞CRUD operationにmathは不要って？<br>いや、いるんだって。扱ってるobjectsがnumbersじゃないからってmathじゃないことにはならない。まさにそれが俺が言いたいことなんだよ。だから最初にPoincareを引用したんだ。彼は”numbers”なんて言ってない、”objects”って言ったんだぜ。" userName="godelski" createdAt="2025/05/02 21:36:52" color="#785bff">}}




{{<matomeQuote body="それはmathとcomputer scienceの狭い見方だよ。変数代入は数学的操作、logical state transitionだ。Programming Language Theoryで形式化されてるんだぜ。quarksの話じゃなく、コードの行は客観的にmathematical statement。主観的な見え方なんて関係ない。問題を解くためのlogical operationの正しい順序を見つけるのが君の仕事。君のprogramはmathematical structure。つまりmathematicsなんだ。<br>https://en.wikipedia.org/wiki/Semantics_(computer_science)" userName="voidspark" createdAt="2025/05/03 05:56:19" color="#ff5c5c">}}




{{<matomeQuote body="＞codingとmathがequivalentって？<br>lambda calculusってのを見てみなよ。Mathematicianがequivalentって言うのは、あるセットから別のセットへ全部をuniquely mapできるって意味なんだ。" userName="godelski" createdAt="2025/05/02 19:10:05" color="#785bff">}}




{{<matomeQuote body="悪いけど、君は間違ってるよ。”CREATE, READ, UPDATE, DELETE”のoperationsは、本質的にmathematicalなものじゃないんだ。どんなデータだろうが、どんだけ小難しく考えようが関係ない。簡単なCRUDなら、programmerにはmathなんて全然いらないんだよ。君はさ、pointlessなinternet argumentに勝ちたくて、ゴールポストを1800年代まで動かそうとしてるんだろ。" userName="leptons" createdAt="2025/05/03 00:42:13" color="">}}




{{<matomeQuote body="mapとterritoryを勘違いしてるんじゃない？それって、quarksはmathematicsだ、って言うのと同じlogicだよ。だって、quarksをmodel化するtheoryにはmathematicsが入ってるんだから。" userName="GoblinSlayer" createdAt="2025/05/03 18:23:54" color="">}}




{{<matomeQuote body="mathematicianだって、naming variablesとかstructuring proofsとか、考えなくていいとでも思ってんの？" userName="xigoi" createdAt="2025/05/02 19:56:12" color="">}}




{{<matomeQuote body="「コーディングは数学を使う」じゃなくて「数学そのものだ」って言ってるみたいだけど、それは無理筋だから前の主張から後退してるんじゃない？<br>コードを数学で記述できるってのは、重力とか選挙予測とか音波の伝わり方を記述するのと大差ないように見えるな。<br>数学の主要な目的って、周りの世界を記述することじゃないの？<br>だったら、プログラミングを記述できるって驚くことじゃないはずだよ。<br>でも、現実世界では、ソフトウェアエンジニアリングって時間の99％は数学的な抽象化とは全然関係ないんだよね。" userName="ghurtado" createdAt="2025/05/02 21:11:29" color="#ff5733">}}




{{<matomeQuote body="プログラミングは小さなステップが多いから誰でもできるって言うけど、僕の経験だと、コンポーネントを一つずつ書いて試すとか、問題を分析して分けられる部分を見つけるってのは、多くの人が苦労するスキルだと思うよ。<br>プログラミングを教えててイライラするのは、「絶対誰でもできる」って言われること。プログラミングを学ぶ人は、他のスキルを磨いた方がいい場合も多いんだ。（エリート主義じゃなくてね。）" userName="zahlman" createdAt="2025/05/02 16:59:52" color="#ff5c5c">}}




{{<matomeQuote body="これは確かにグレーゾーンだよね。<br>DAGトラバーサルアルゴリズムは”数学”？それとももっとコンピューターサイエンス寄り？SQLでやったらどうなる？<br>確かに、論理/数学が凝縮されてる部分と、つなぎのコードが混ざってるし、そのほとんどは自分がやってるドメインにすごく依存するよ。<br>開発の異なるコンポーネントで脳の違う部分を使えるって抽象的な区別は、僕には役に立つと思うな。<br>これも、よくできたDSLが適切なコンテキストですごく強力になる理由を説明してるんだろうね。" userName="switchbak" createdAt="2025/05/02 17:41:18" color="">}}




{{<matomeQuote body="君が強い意見なのはわかるけど、理由がわからないな。数学は構造と抽象化を気にするんだ。関数とか構造とか、PLと数学は共通の問いを持つよ。数学的な抽象化がわかってないんじゃない？だからPLの人はCategory Theoryとか大好きで数学的なんだ。<br>CRUD操作だって集合論で記述できるけど、普通のプログラマーは気にしないよね。でも設計者は考えてるよ。よく知らないことで強い意見を持つのは気をつけた方がいいね。CRUDを例に出すなんてひどいよ。リレーショナル代数はデータベースの授業で習うはずだけど？" userName="godelski" createdAt="2025/05/03 03:58:27" color="#ff5733">}}




{{<matomeQuote body="「DAGトラバーサルアルゴリズムは”数学”？それともコンピューターサイエンス寄り？」って？<br>まず、コンピューターサイエンスは数学だよ。<br>それに、大学で離散数学の授業でグラフを扱ったのを覚えてるよ。<br>「SQLでやったら？」って？<br>SQLは多かれ少なかれ、リレーショナル代数（つまり数学）のイケてない実装だよ。" userName="tbrownaw" createdAt="2025/05/03 02:19:59" color="">}}




{{<matomeQuote body="それは多少はそうかもしれないけど、君は論点を見失ってると思うな。<br>クォークは物理的な性質を持ってるけど、コードは論理的な性質を持ってるんだ。<br>プログラム自体が形式システムなんだよ。<br>コードは数学によってモデル化されるだけじゃなくて、数学によって定義されるんだ。<br>コードの場合、地図が領土そのものだって主張できるね。" userName="voidspark" createdAt="2025/05/03 18:39:24" color="">}}




{{<matomeQuote body="コンピューターサイエンスは数学だっていうのは、物理が哲学だっていうようなもんかな。歴史的には数学から始まったけど、もはや便利な分類じゃないよ。<br>ほとんどの数学知識が最小限でも、コンピューターサイエンスで成功できるからね。<br>グラフ理論は数学と重なるけど、CSで使う部分はアルゴリズムとして扱えるし、数学者には自然なやり方じゃないだろうね。" userName="vidarh" createdAt="2025/05/03 07:25:57" color="#ff5c5c">}}




{{<matomeQuote body="論理を一般的な広い意味での推論と定義するなら、コードは論理的だね。<br>それに物理環境で動くから、今は厄介な現実世界とやり取りしてるんだ。<br>コードはビジネス要求で定義されるけど、それには数学なんてないよ。" userName="GoblinSlayer" createdAt="2025/05/03 19:16:47" color="">}}




{{<matomeQuote body="僕のアルゴリズムの教科書（CLRS）を書いた、たぶん数学者たちは、アルゴリズムに出てくる変数に役に立つ名前を付けるなんて考えてないみたいだったな。<br>どこもかしこも i とか x とか使ってて、実際の名前を付けることすら考えてないんだ。<br>これだと、ほとんどの人がコードを書くみたいに扱ってくれたらもっと分かりやすかったのに、って思うよ。" userName="QuercusMax" createdAt="2025/05/02 20:45:27" color="">}}




{{<matomeQuote body="君が話してるのは、コードを書くっていう人間側の活動についてだよ。コードそのものじゃない。<br>そういうビジネス要求は、コードを書くプロセスの入力なんだ。<br>一度コードが実際に書かれたら、それは形式的な論理システムとして存在するんだ。<br>それはビジネス要求じゃなくて、数学によって定義されるものだよ。" userName="voidspark" createdAt="2025/05/03 19:25:17" color="">}}




{{<matomeQuote body="”forming relationships between objects”ってのは曖昧で意味不明だな。みんな”object”が何かってことすら合意できてないし、”object”なんて言葉が発明されるずっと前からプログラミングは行われてたんだ。<br>プログラミングってのは根本的に命令とデータなんだよ。全く違う二つの陰と陽。時々混ぜたり混同したりする人もいるけどね。" userName="CyberDildonics" createdAt="2025/05/03 00:47:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="うん、lambda calculusは数学だ。でもassemblyとか典型的な命令型C言語を数学と呼ぶのは、少なくとも同じ意味ではちょっと無理があるかな。" userName="dayvigo" createdAt="2025/05/02 19:19:43" color="">}}




{{<matomeQuote body="現実の数学モデル（つまりPhysics）は現実そのものじゃないんだよね。だから、同じ理屈で”quarks”は数学だけど、それは”cup”がEnglishであるのと同じようなもんだ。<br>Quarkは観測できなくて数学モデルだけに頼るから良い例だけど、bowling ballについても同じことが言えるよ。Physicsは現実の記述であって、現実そのものじゃない。現実の記述は数学の言語をすごく利用するんだ。その言語が一貫性のルールを強制するために開発されたからね。プログラミング言語を設計するのとよく似てるから、言語学者は典型的なCSの人よりずっと数学を勉強するんだ。<br>地図と領土を混同してるって誰かを非難するなら、自分が同じ間違いをしてないか確認しなきゃダメだね。" userName="godelski" createdAt="2025/05/03 19:44:25" color="#38d3d3">}}




{{<matomeQuote body="Category theoryはよく冗談でドットと矢印の研究って言われるんだ。ドットは？ 何でも。矢印は？ 関係性。<br>まさかこんなにたくさんの人の神経を逆撫でするとは驚いたよ。俺は偉大な数学者の一人とされてる人の言葉を引用してるんだけどね。もちろんみんなの背景は知らないけど、プログラマーは数学者が言ってることと違う、数学に対する強い意見を持ってるみたいだ。<br>https://en.wikipedia.org/wiki/Category_theory" userName="godelski" createdAt="2025/05/03 02:52:59" color="">}}




{{<matomeQuote body="もちろん彼ら（数学者）はそうするよ。でもその部分は”mathematics”じゃないんだ。それはコミュニケーションだね。証明を書くのにEnglish languageを使っても、Englishがmathematicsになるわけじゃないから。" userName="voidspark" createdAt="2025/05/02 20:02:46" color="">}}




{{<matomeQuote body="Prat et al. (2020) の研究はPython学習で言語能力が計算能力より良い予測因子だと示唆してるけど、注意して読むべきだよ。簡単に単純化されがちだからね。<br>まず、この研究はfunctional numeracyを測ってる。これは日常の数値問題を解く能力。これは、formal logic, symbolic abstraction, formal languages (denotational semanticsとかtype theoryみたいに) といったプログラミングによく関連付けられる高度な数学とは全然違うんだ。<br>recursion, type inference, algorithm designの理解には、基本的な算数じゃなくて、こういうもっと抽象的なスキルが不可欠なんだよ。functional numeracyの予測力が低いからといって、深い数学的推論がプログラミングに関係ないわけじゃない。<br>さらに、研究で使われたのはPythonで、これは読みやすく自然言語に近いように明確に設計されてる。これは言語スキルの高い人には有利かもしれないけど、C, Lisp, Haskellみたいに記号的・論理的密度が高い言語には結果が必ずしも当てはまらないだろうね。<br>結局、言語と数学は対立する領域じゃないんだ。working memory, executive attention, hierarchical structure processingみたいな認知基盤を共有してる。どっちが”勝つ”かじゃなくて、異なるプログラミングの文脈でどう相互作用して補い合うかが鍵なんだよ。" userName="albertoCaroM" createdAt="2025/05/03 08:19:13" color="#ff33a1">}}




{{<matomeQuote body="＞ これらのより抽象的なスキル―基本的な計算能力ではなく―は、recursion, type inference, algorithm designを理解するために不可欠だ。←そんなわけないだろ。<br>学術界は何十年もプログラミングの多くの側面を形式化しようとしてきて、comp sci卒業生と革新的なプログラマーの相関性の低さに混乱し続けてる。なんでドロップアウトした奴らがそんなに大成功してるんだ？<br>例えばrecursionなんて、俺たち現実世界の成功者のほとんどは、他の方法じゃ無理なプログラミングの壁にぶち当たった時に、”だからこれがあるのか”ってアハ体験で学ぶんだ。advanced math with symbolic abstraction, denotational semantics and type theoryなんて勉強したからじゃない。<br>不都合な真実ってのは、プロのプログラミングと革新的なプログラミング（今まで見たことない役立つものを作る）のほぼ全部で、どの学位プログラムでも必須になってる高度な数学スキルなんて全く使わないってことだよ。この件で感じる多くのサディズムは、”俺がやったんだからお前もやれ”とか学術的なゲートキーピングによって続いてるんだと思うね。<br>プログラミングが本当に上手くなって、人生で一番生産的な時期に入ると、それは言語みたいに感じるんだよ。ただそれを言える能力があるって感じ。" userName="mmaunder" createdAt="2025/05/03 11:15:37" color="#45d325">}}




{{<matomeQuote body="ドロップアウトが”succeeding wildly”なのは、Turing, Church, Hilbertみたいな人たちが、彼らが遊んでる砂場を発明したからだろ。<br>KnuthはLaTeXを作った。PandocはHaskellで書かれてる。Haskellなんて大学生を苦しめる以外に実質的な目的のない完全に役立たずの学術言語だって（ここに）書いてある。<br>効率的な検索アルゴリズムやデータ圧縮アルゴリズムは、深夜の趣味コーディングで適当に作られるもんじゃない。<br>Cryptography, digital signal processing for images, sound, and video, そしてML core algorithmsは全部数学的な発明だ。デジタル世界は文字通りそれらで動いてるんだよ。<br>”Real world achievers”は、もうちょっと視野を広く持って、自分が当たり前だと思ってる概念や環境の生みの親について、少し学んでみる努力をした方がいいかもしれないな。<br>Vibe codingで”Social AI chatbot network with ads = $$profit$$”とか”Cat videos as a service”なんてのは、この分野全体が数学の巨人の肩の上に立ってるからこそ可能なんだから。" userName="TheOtherHobbes" createdAt="2025/05/03 13:43:27" color="#ff5c5c">}}




{{<matomeQuote body="よく言ったね。今日のほとんどの”programming”がスクリプト言語でコードをくっつけるだけのものだって考えれば、こういう無知はそんなに驚くことじゃないかもな。これは実際、一種のconfigurationだよ。確かにドメイン知識とデジタル手続きへの耐性は必要だけど、数学はいつも必要じゃない。<br>学校が、西洋文明の全体構造が数学の上に成り立ってることをもっと上手く教えてくれたらいいのにとは思うよ。" userName="grumpyprole" createdAt="2025/05/03 16:43:57" color="">}}




{{<matomeQuote body="これらの高度なスキルは、ドロップアウトたちが上に構築するプラットフォームを作るのに必要かもしれないってことみたいだね。でも、州立大学の4年制経営学部卒で数学が弱かった（そして文章と語学の才能がある）20年のプログラマーとして、俺は日々の仕事で高度な数学が必要なことはほとんどないってことには同意するよ。" userName="pdntspa" createdAt="2025/05/03 16:49:33" color="#785bff">}}




{{<matomeQuote body="中退者に抽象数学スキルがないって決めつけは無理あるよ。再帰を乗り越えられるなら、もともと抽象数学の素質があったってことだと思うな。個人的には、数学の一番難しいところはその文法とか言葉なんだよね。自然言語とは全然違う。でもプログラミングはもっと近い。数学の問題も疑似コードにしたら、数学苦手なプログラマーにもずっと分かりやすくなる。プログラミングにはほとんどの大人にある程度の自然言語能力があれば十分。それ以上あっても大して変わらないと思う。" userName="notnullorvoid" createdAt="2025/05/03 13:47:18" color="#785bff">}}




{{<matomeQuote body="数学が得意になると、それも言葉みたいに感じてくるよ。数学者は|x-y|を見たら、「距離」って読むんだ。物理学者も大きな方程式の一部を「これは「effective」な質量みたいな働きをするな」とか言うしね。数学的なパターンにも一種の語彙があるんだ。意図的に勉強しなくてもスキルは身につくのはすごいけど、それでもスキルは学んでるんだよ。プログラミング言語は形式言語だしね。プロのプログラマーは普段、特定の高度な数学知識を直接使うことは多くないけど、そのスキル自体は日常的に使ってると思う。" userName="ndriscoll" createdAt="2025/05/03 11:47:47" color="#ff5c5c">}}




{{<matomeQuote body="この記事での数学の定義だけど、仮定から始めて論理で結果を証明できること。それが数学だと思う。アルゴリズムのほとんどは証明を含んでるから、数学なんだよ。これは「sadism」とかアカデミックな「gatekeeping」とは関係ない。成功してる中退者たちは、自分が数学をやってるって気づいてないだけなんだ。＞Why is it that the drop-outs are succeeding so wildly? これは「confirmation bias」について学んで、もっと知識をつけるといいよ。" userName="Shorel" createdAt="2025/05/03 17:38:04" color="#38d3d3">}}




{{<matomeQuote body="俺も言語スキルが高い方なんだ。速く読むのがすごく得意で、プログラミングのキャリアですっごく役に立ってる。SAT mathは710点だったけど、verbalは800点満点だったんだ（90年代後半ね）。修士のプロジェクトで「TinyOS」のソースコードを印刷して1週間かけて研究しろって言われたのがすごくためになった。それ以来、新しいプロジェクトに参加するときはコードを読む時間を必ず取るようにしてるよ。" userName="QuercusMax" createdAt="2025/05/02 16:08:41" color="#45d325">}}




{{<matomeQuote body="俺も言語スキル強い派として参加。子供の頃は数学マジで苦手で「trig」くらいで脱落したけど、英語とスペイン語とC言語は得意だった。今は「senior web dev」やってて、数学は日常生活に必要な基本しかできないけど（18年の飲食業経験で「percentages」の概算はめっちゃ速くなった）、やっていけてるよ。" userName="reverendsteveii" createdAt="2025/05/02 17:42:05" color="#45d325">}}




{{<matomeQuote body="俺がサーバーとかバーテンダーだったって言えば全部わかるっしょ？ あんたの推測も的外れじゃないけど，趣味でパン作り始めてからも役に立ってるスキルなんだよね．" userName="reverendsteveii" createdAt="2025/05/02 20:07:35" color="">}}




{{<matomeQuote body="これ俺のことだし，昔のCS学生に多かったタイプだわ．RTFMとかMUDsとかIRC時代の話ね．最高のプログラマーは言語脳が強い人が多いと思うんだ．多言語話者だったり，難しい文学読んでたり．ある種のウィットに富んでる感じ？今もそうだろうけど見えにくくなった．LeetCode偏重で数学脳有利になっちゃってるけどさ．" userName="photonthug" createdAt="2025/05/02 23:05:48" color="#ff5733">}}




{{<matomeQuote body="エコシステムが弱いって文句言ってるやつら覚えてる？それって，Electronでまた――今度こそマジで――IRCクローン作るんじゃなくて，ゼロから何か作る絶好の機会だろ．" userName="GoblinSlayer" createdAt="2025/05/04 21:52:24" color="">}}




{{<matomeQuote body="俺は読書速くて空間認識は得意だけど，数学は超苦手．特に数式の文章がダメでdyslexicみたいに感じる．でもプログラミングは簡単だったんだ．アルゴリズム主体だからね．数式とか証明はステップに分解（アルゴリズム化）しないと全く理解できない．数学の文章はPerlよりひどいと思うレベル．特にHaskellみたいに数式っぽい言語はダメ．概念自体は普通の言語なら簡単なのに，Haskellだとfizzbuzzですら理解に時間かかるんだ．" userName="alabastervlog" createdAt="2025/05/02 17:02:53" color="#38d3d3">}}




{{<matomeQuote body="興味深いね，俺はほとんど逆なんだ．空間認識は苦手だけど，幾何学は好きだったし証明も楽しかった．大学は英文学専攻でCS副専攻だったから，プログラミングへの入り口って色々あると思うな．俺にとって役に立ったのは速読かな．コードベースの理解とかバグ探しにめちゃ役立ってるよ．" userName="lubujackson" createdAt="2025/05/03 00:32:25" color="#45d325">}}




{{<matomeQuote body="俺も同じだけど，文字通り数学失読症（dyscalculia）って正式に診断されてるんだ．それが原因でCSの学位は取れなかった．数学の授業をクリアできなかったから．でも，実際のプログラミングとか”ソフトウェアエンジニアリング”（設計とか）に関しては，全然問題になったことないよ．ロジックは自分で考えて，計算はコンピューターにやらせてるから．編集：このコメント，マイナス評価食らってるんだけど．みんな何にそんなムカついてんの？" userName="tapoxi" createdAt="2025/05/02 17:06:43" color="#ff5733">}}




{{<matomeQuote body="ああ，はっきり言うと，俺は診断受けたわけじゃないよ．あくまで言語のdyslexicの例えで言っただけ．概念自体は簡単で，分数とかも大丈夫だったんだ．問題は表現形式ね．それが”本物の”数学を難しく感じさせるんだ．CS学位は取れなかったけど，数学ゴリゴリって言われるSTEM分野で長く成功してる．プログラミングが数学ヘビーだって言われる感覚，マジで全くわかんないんだよね．そういう経験一度もないし，多分これからもないと思う．" userName="alabastervlog" createdAt="2025/05/02 17:36:14" color="#45d325">}}




{{<matomeQuote body="多分ね，数学スキルがないと，遅いコーダーで抽象化が下手なコード書くって疑ってるんじゃない？数学スキルがソフトウェアエンジニアリングのやり方だって認識してるからさ．" userName="concordDance" createdAt="2025/05/03 07:53:22" color="">}}




{{<matomeQuote body="うわ，あんた俺かよーSATの経験，ほとんど同じだったわ．このスレッドの別の人と違って変な話だけど，俺は関数型プログラミングとかHaskellが好きなんだよね．dependent typesみたいなのをプログラミングの文脈で勉強したのが，”本物の数学”とか証明とか，俺のダメダメな理解を補うのに役立ったよ．" userName="_dwt" createdAt="2025/05/02 19:39:23" color="#38d3d3">}}




{{<matomeQuote body="俺も同じコメントしに来たんだ――80年代のSATスコアも喜んで教えるよ．俺も言語側がずっと高かったし，ここでみんなが知ってるような大企業の，大規模でプロフェッショナルなプロジェクトで，色々な言語（よく組み合わせて使ってた）を使って，最高のソフトウェアエンジニアリングキャリアを築いてきたんだ．" userName="ezekiel68" createdAt="2025/05/03 12:01:19" color="#785bff">}}




{{<matomeQuote body="「言語脳」とか「数学脳」なんて存在しないよ、実験で証明されてない限りね。数学だって人間の言葉を元にした形式言語だよ。熟練の数学者は、難しい記号だらけの定理を普通の英語みたいに読むんだから。頭の中で視覚的に捉えることもできるけどね。" userName="jll29" createdAt="2025/05/02 17:10:47" color="#45d325">}}




{{<matomeQuote body="計算障害とか書字障害、読字障害がそれぞれ独立して起こるってことは、数学、読み書きは別のプロセスが司ってるってことなんだよ。「言語脳」とか「数学脳」って言うのは分かりやすくするための便利な呼び方であって、実際に脳が別々の場所にあるかは関係ない話だね。" userName="reverendsteveii" createdAt="2025/05/02 17:16:33" color="#45d325">}}




{{<matomeQuote body="数学≠計算だよ。数学が何かも分かってない人にとっては、これはマジでバカげた思い込みだね。" userName="danielmarkbruce" createdAt="2025/05/02 17:53:10" color="">}}




{{<matomeQuote body="大学とかでやる高等数学って、計算はほとんどなくて、数学的なモノの関係性を研究する感じ。ソフト開発の「標準ライブラリ」を学ぶのに似てるんだ。Pythonを早く学べる人なら、ちゃんとした環境で学べば高等数学も早くマスターできるかもね。" userName="tylerhou" createdAt="2025/05/02 20:43:23" color="#ff5c5c">}}




{{<matomeQuote body="個人的にLeanを使って数学ノートを「リファクタリング」しながら書きたいんだ。数学のクラスみたいに。<br>量化子もプログラミングの型みたいに考えると分かりやすいかも。「全てのxについてP」はxを入れたらPを返す関数、「Pを満たすxが存在する」は(x, Pが成り立つ証拠)みたいなペアになる。証明を型と考えればIDEの補完も使えるかもね。" userName="ndriscoll" createdAt="2025/05/02 22:22:00" color="#38d3d3">}}




{{<matomeQuote body="初歩的な計算が数学のほんの一部だって分かってない人が、主張したり研究したりするのはマジで許せない。俺はそういう人を批判するよ。無知は仕方ないけど、それについて語ったり提案したりするべきじゃない。<br>下のコメントでもある程度説明されてるけど、大学よりずっと早くから教えるべきなんだ。数学の大部分、特に純粋数学は計算がほとんどない。今の教え方（と「数学脳」みたいなバカな主張）のせいで、計算の上位数％に入らない多くの子が、計算がそんなに重要じゃないクラスに進めないんだ。" userName="danielmarkbruce" createdAt="2025/05/02 21:35:03" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ほとんどの数学は、数字そのものよりも定義とか証明とか、構造や関係性の話なんだ。数学科の学生の間では、５より大きい数は実質的に無限大ってジョークがあるくらい、数字が計算で出てくるのは珍しいんだよ。" userName="owlbite" createdAt="2025/05/03 15:16:27" color="#ff33a1">}}




{{<matomeQuote body="これだよ、これ。多くの人が「数学苦手」とか「数学嫌い」って言うのは、学校で退屈な計算ばっかりやらされて、論理的でマジで面白い数学を見せてもらえなかったからなんだよね。俺も大学でFregeの算術の基礎を読むまで数学嫌いだったけど、そこで初めて「数学って面白いじゃん」って思ったんだ。" userName="voidhorse" createdAt="2025/05/03 01:06:41" color="">}}




{{<matomeQuote body="「言語脳」とか「数学脳」なんて、明らかに科学的じゃない言葉だよね。問題解決とか、言葉で考えを伝えるとか、数学で考えを伝えるとかって、全く違うスキルだっていうのはほとんどの人が同意するんじゃないかな。" userName="pier25" createdAt="2025/05/02 17:34:03" color="">}}




{{<matomeQuote body="この記事の『数学脳より言語脳が重要？』って捉え方、なんか違うと思うんだよね。暗黙のうちに偽の二分法になってる。俺が出会った最高のプログラマーって、たいてい言語スキルも数学スキルもどっちもすごいんだよ。Henri Poincaréは『詩は同じものに違う名前をつける芸術、数学は違うものに同じ名前をつける芸術だ』って言ってるけど、要するにプログラミングってのは、特に抽象的なものを『うまく名付ける』のが得意ってことなんだよね。" userName="karmakaze" createdAt="2025/05/02 17:22:28" color="#38d3d3">}}




{{<matomeQuote body="＞ 『詩は同じものに違う名前をつける芸術』ってとこ。Robert Frostが『全部の言葉は詩だ』みたいなこと言ってなかったっけ？ 椅子（chair）って言葉は、俺が今座ってこれを打ってるモノを指す言葉として覚えたんだ。ドイツ語だと’Stuhl’、フランス語だと’chaise’とか呼ぶけど、あのモノ自体は別にどれでもない。言葉ってのは、あのモノにシンボルとして対応してるだけなんだよ。" userName="hirvi74" createdAt="2025/05/02 19:32:29" color="">}}




{{<matomeQuote body="『名付けること』って、本当は『認識すること』とか『理解すること』なんだよ。単に言葉ができるってことより、ずっと深いんだ。" userName="pier25" createdAt="2025/05/02 17:35:59" color="#ff5733">}}




{{<matomeQuote body="そうそう、まさにそれだよ。赤ちゃん見てたらわかる。まだママとかパパとか言えないのに、何百って物や感情、状況を認識して、ちゃんと伝えてくるからね。" userName="FilosofumRex" createdAt="2025/05/02 20:07:51" color="">}}




{{<matomeQuote body="俺もこれと似たこと言いたかったんだけど、逆の方向から考えてたんだ。たぶん、抽象思考と具体思考の違いなんじゃない？でも、俺が経験したSATみたいなテスト（もう20年も前だけど）だと、言語セクション（類推とか）も数学セクションもどっちも抽象的な問題が多いんだよね。俺、SAT一発でどっちもほぼ同じ点数だったよ（言語660/数学650）。" userName="twodave" createdAt="2025/05/02 20:07:15" color="">}}




{{<matomeQuote body="＞ 『あの神経細胞の塊が、重ならない二つの領域に分けられるって実験的に示さない限り』って話だけど、脳の外傷後とか調べるといいかもね。奇妙な機能欠落してる人がいるから。Oliver Sacksが脳外傷の変な副作用について書いてるよ。数学者とか作家で、脳の違う部分にダメージ与えて実験するとか…あと、脳の特定領域を刺激したり麻酔したりする実験でも何か分かるかもね。" userName="robocat" createdAt="2025/05/03 00:48:27" color="#ff33a1">}}




{{<matomeQuote body="うん、脳ってSparse MoEみたいなもんだね。『言語脳』とか『数学脳』ってハードの部分は、結構重なってるんだよ。とはいえ、俺なんか外国語でソフトの概念は話せるのに、English以外だと簡単な計算も struggle しちゃうんだ。だから、ハードが同じでも、その上の仮想化レイヤーみたいなとこで区分けされてるのかもね。" userName="buffalobuffalo" createdAt="2025/05/02 17:24:54" color="#ff33a1">}}




{{<matomeQuote body="そうなんだけどさ、視覚・空間能力と、言語・数学能力ってのはあるんだ。で、数学ってのは視覚・空間能力でもできるし、言語・数学能力でもできるんだよ。それが思考とか問題解決のスタイルの違いにつながるんだよ。" userName="impossiblefork" createdAt="2025/05/02 17:32:49" color="#38d3d3">}}




{{<matomeQuote body="＞ 『言語脳』とか『数学脳』なんてないって？ それ、研究をデザインした人たち、承認した人たち、資金出した人たちに言ってみなよ。結局、研究ってのは特定のスキル評価の基準決めて、それで人分けてるわけだ。人間って、違うこととかスキルに対して、ある程度適性の違いがあるって考えに反論すんのは難しいと思うけどね。" userName="scripturial" createdAt="2025/05/02 17:24:52" color="">}}




{{<matomeQuote body="言っとくべきだと思うんだけど、これ研究自体が言ってるんじゃなくて、ニュース記事の見出しが言ってるんだよね。研究の筆者たちも”言語脳”とか”数学脳”って言葉はミスリーディングだって同意すると思うな。" userName="chrisfosterelli" createdAt="2025/05/02 17:33:28" color="#45d325">}}




{{<matomeQuote body="こういう系の実験やる人たちって、ほとんど数学をマジで理解してないんだよね。算数と数学をイコールだと思ってる。" userName="danielmarkbruce" createdAt="2025/05/02 17:55:29" color="">}}




{{<matomeQuote body="Wernicke’s area と Broca’s area はどうなの？損傷すると言語の使用や処理に直接的な変化が起きるよね。俺も単純な”言語脳”じゃないってのは同意だけど、脳には言語に直接関係する物理的な構造はあるんだよ。" userName="perrygeo" createdAt="2025/05/02 21:12:00" color="#ff5c5c">}}




{{<matomeQuote body="”言語脳”も”数学脳”もないって思う。多くの人は数学を計算だと思ってるけど、本質はパターンと抽象化だよ。日本の数学教育は計算に偏りすぎ。子供もわかる群論とか組み合わせ論とか、大学でしか教わらないけど超役立つ分野は多い。数学は抽象化が全てで、思考を加速させる。方程式書かなくてもマジ役に立つよ。<br>[0] https://www.youtube.com/watch?v=UwTQdOop-nU&list=PLwV-9DG53N..." userName="godelski" createdAt="2025/05/02 17:35:30" color="#ff5c5c">}}




{{<matomeQuote body="数学は形式に関するもので、伝統的には量の科学だね。だから形式科学って呼ばれる。言語も形式に関わる。文法も形式だし、概念も形式。数学は言語だよ。「全て」は言語だ。言語は現実のイメージ。初めにLogosがあった…だね。" userName="lo_zamoyski" createdAt="2025/05/02 17:59:26" color="">}}




{{<matomeQuote body="＞ 数学は言語。<br><br>事実。これに反対するのは難しいと思うし、高レベルな人たちに珍しい意見みたいだね。<br>＞ 言語は現実のイメージ。<br><br>イメージ？[0] ;)<br>[0] https://ncatlab.org/nlab/show/image" userName="godelski" createdAt="2025/05/02 18:08:27" color="">}}




{{<matomeQuote body="数学が抽象化で成り立ってるって気づくのにマジで時間かかったな。例えば、行列が線形方程式を表す便利な抽象化（省略形？）だって教えてもらえなかった。あるいは、虚数が特定の計算を簡単にするために発明された抽象化だってこととか。そういう抽象化がどう生まれたか、なんで役に立つかの視点から学べたらよかったのにね。" userName="vendiddy" createdAt="2025/05/02 17:52:42" color="">}}




{{<matomeQuote body="数学専攻だけどね。「is」は反射関係だ。数学が言語なら、言語も数学だ。明らかに言語は数学じゃないと思うから、数学は言語じゃない。数学は言語で記述されるもので、数学自体が言語じゃないんだよ。「has-a」関係であって、「is-a」関係じゃない。" userName="seadan83" createdAt="2025/05/02 18:47:17" color="">}}




{{<matomeQuote body="＞ 例えば、行列が線形方程式を表す便利な抽象化（省略形？）だって教えてもらえなかった。<br><br>君に線形代数の入門を教えた奴の（マジで変な）選択を乗り越えたこと、おめでとう。" userName="bee_rider" createdAt="2025/05/02 18:24:42" color="">}}




{{<matomeQuote body="この記事の要点を見失ってるんじゃないかな。引用されてる研究は「言語脳」とか「数学脳」の存在を確立しようとしてるんじゃなくて、それは見出しが結論を分かりやすくするために編集しただけだよ。研究の結論は、言語の適性が数学の適性よりプログラミングの適性と相関があるように見えたってことで、それは結構面白いし、脳のどの物理的な領域が関係してるかにはあまり関心がないみたいだね。" userName="NickM" createdAt="2025/05/02 18:07:38" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
