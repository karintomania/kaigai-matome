+++
date = '2025-11-18T00:00:00'
months = '2025/11'
draft = false
title = 'Blender 5.0はCADを変えるのか？オープンソース3Dの進化に注目！'
tags = ["Blender", "3Dモデリング", "CAD", "オープンソース", "ソフトウェア"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Blender 5.0はCADを変えるのか？オープンソース3Dの進化に注目！

引用元：[https://news.ycombinator.com/item?id=45972519](https://news.ycombinator.com/item?id=45972519)




{{<matomeQuote body="Blenderみたいなのが3D CAD業界にも来たら良いのにね。AutoDeskだけが損するだろうけど、オープンソースのカーネルとツールがあれば、大企業は自由にカスタマイズできるし、小さい企業や趣味の人も無料で始められるから最高だよ！" userName="gehsty" createdAt="2025/11/18 22:52:06" color="#ff5c5c">}}




{{<matomeQuote body="プロのCADツールとどう比較されるか分からないけど、FreeCADとOpenSCADは評判良いみたいだね。BlenderをCADに使う人もいて拡張機能もあるけど、Blenderのメッシュ表現がCADアプリに合ってるかは疑わしいと思うな。" userName="1220512064" createdAt="2025/11/18 22:55:08" color="">}}




{{<matomeQuote body="「一流のオープンソースカーネル」って言うけど、3Dカーネルは金でどうにかなる問題じゃないんだよね。ACISやParasolidを買うか、OpenCascadeを使えばいいし。カーネルと資金があっても、次の戦略は何？どの業界を狙って、既存ツールよりどう解決するの？価格以外の価値は何？ってことが重要なんだ。プログラマーは汎用CADを作ろうとするけど、産業ユーザーは特定のワークフローを持つツールが欲しいんだよ。「作れば来る」なんて甘い考えで、各分野でマーケットシェアを築く必要があるってことだね。" userName="fsloth" createdAt="2025/11/19 15:26:24" color="#ff33a1">}}




{{<matomeQuote body="僕の経験だと、Blenderは3Dプリンティング用の簡単な3Dモデリングにはまずまずの選択肢だよ。" userName="daedrdev" createdAt="2025/11/18 22:55:36" color="">}}




{{<matomeQuote body="先週FreeCADを試したんだけど、10分でアンインストールしたよ。一番基本的な操作でもエラーが出まくってさ。ユーザーエラーかもしれないけど、最初の印象は最悪だったね。" userName="al_borland" createdAt="2025/11/18 23:45:06" color="">}}




{{<matomeQuote body="FreeCADは僕にとっての最有力候補だね。7～8年前のKiCADもECADのFOSS代替としてイマイチだったけど、今や普通のECADデザインでは断トツの選択肢だよ。FreeCADも2030年までにはそこまでいけると思うな。" userName="k1musab1" createdAt="2025/11/18 22:55:56" color="#785bff">}}




{{<matomeQuote body="FreeCADは今まで使ったソフトウェアの中で一番イライラして、直感的じゃないね。Fusion360を15分やっただけで2日間FreeCADを試すより進んだから、開発者へのヘイトメールを書きかけたよ。多くの機能があるみたいだけど、基本的なことすら「モニターをぶん殴りたくなる」レベルの難しさだよ。" userName="Workaccount2" createdAt="2025/11/18 23:10:50" color="">}}




{{<matomeQuote body="FreeCADや他のオープンソースMCADプロジェクトの問題は、Open Cascadeカーネルがベースになっていることだよ。Open Cascadeは成熟してるけど、フィレットがうまくいかなかったり、円筒面や球面がシームでブーリアン演算に問題を起こしたり、ヘリックスが不安定だったり、いくつかの致命的な問題があるんだ。" userName="jwagenet" createdAt="2025/11/18 23:31:26" color="#38d3d3">}}




{{<matomeQuote body="何をしようとしていたか教えてくれる？FreeCAD大好きだから、もしもう一度試してくれるなら、手伝ってあげるよ。" userName="mitthrowaway2" createdAt="2025/11/19 00:02:08" color="#ff5733">}}




{{<matomeQuote body="家の間取りを再現して、家具のベストな配置を決めたいんだ。<br>Blender 5.0がCADを変えるかって話だけど、まずはこんな身近なところから使ってみたいよね。" userName="al_borland" createdAt="2025/11/19 00:12:20" color="">}}




{{<matomeQuote body="全く同感だね。でも、無料の幾何モデリングカーネルへの大規模な継続投資がないと、難しいと思うよ。<br>Parasolidは1986年から開発されてて、今も活発に開発されてる。これほど膨大な努力が必要なものを、プロボノで片手間にやるのは無理じゃないかな。<br>Blenderより3D CADの方がずっと難しくて、オープンソースでの開発には向かないと思う。" userName="dgroshev" createdAt="2025/11/18 23:04:06" color="#ff33a1">}}




{{<matomeQuote body="普遍的なFOSS CADツールやフレームワークについて、何か面白い開発パスやビジョンはないかな？<br>もし資金のあるチームを率いるとしたら、どんな目標を設定して、どう達成する？<br>Blender 5.0がCADを変えるかって話だけど、オープンソースでどこまでできるか、具体的なアイデアが聞きたいな。" userName="nirv" createdAt="2025/11/20 13:32:40" color="">}}




{{<matomeQuote body="まず、普遍的なCADは無理だよ。編集可能なモデルはほとんどがドメイン固有だからね。<br>普遍的なフォーマットにエクスポートできるべきだけど、それは普遍的な設計空間を持つこととは違うんだ。<br>機械エンジニアと構造エンジニア、それに手術を計画する医師じゃ、必要な機能が全然違う。<br>共通の最小機能はあるけど、ドメイン固有の機能は驚くほどバラバラだよ。<br>だから”ユニバーサル”な設計ソフトウェアは、開発も使うのも維持するのも大変になる。<br>「全てを支配する一つのアプリ」を目指すより、コレクションとして”普遍的なスコープ”を目指す方がいいよ。<br>FOSSミッションは、”共通の最小”コア、相互運用性、そしてドメイン固有のUIとツールの開発に集中すべきだね。" userName="fsloth" createdAt="2025/11/20 19:46:23" color="#ff33a1">}}




{{<matomeQuote body="Open Cascadeのこれらの問題を直すには、「かなり大きな作業」から「完全に書き直す」まで、どれくらいの労力がかかるんだろうね？<br>Blender 5.0がどれだけ進化しても、基盤となるCADカーネルの課題は大きそうだよね。" userName="JoshTriplett" createdAt="2025/11/19 00:09:38" color="">}}




{{<matomeQuote body="COVID中にBlenderを覚えて、今も一番使ってるよ。<br>メッシュエディタだって文句を言う人もいるけど、俺にはこれで十分なんだ。Blenderのツールの豊富さと柔軟性は本当にすごいし、アドオンの世界はさらにやばい。<br>Geometry nodesとオブジェクト生成を学びたいな。これが「パラメトリック」って言われる人たちの不満を解決してくれると思うんだ。<br>バージョン5は、この辺の使いやすさで大きく進歩するはずだよね。<br>オンラインの「パラメトリック」モデルの欠陥が全部見えるようになったのか、俺が細かすぎるのか分からないけど、すごくイライラするんだよ。「どうやったら円を台無しにできるんだ！」って叫んだこともあるよ。" userName="_carbyau_" createdAt="2025/11/18 23:27:14" color="#38d3d3">}}




{{<matomeQuote body="「大幅なアーキテクチャの見直し」と「部分的な書き換え」の間くらいになるんじゃないかな。<br>シームエッジをなくすために、トポロジー表現を再設計する必要があるからね。<br>こういう問題って長年の課題で、解決するのが本当に難しいんだ。<br>「シームエッジをなくすためのトポロジー表現の再設計」なんてテーマで博士論文を書けるレベルだけど、実用的な進展はあまり見込めないだろうね。" userName="throwup238" createdAt="2025/11/19 11:39:22" color="#ff5733">}}




{{<matomeQuote body="Onshapeのブラウザインターフェースにはマジで驚いたよ。読み込みもめちゃくちゃ速いんだ。<br>プロジェクトが公開されてる限りは無料だし、これは使えるサービスだね。<br>Blender 5.0がCADを変えるかって話だけど、こういうクラウドベースのCADも注目だよね。" userName="polishdude20" createdAt="2025/11/18 23:04:41" color="">}}




{{<matomeQuote body="スコープの話は理解できるから、「フレームワーク」って言ったんだ。<br>それなら、FOSSで実用的なフレームワークの実装ってどんな感じになると思う？<br>例えばFusion 360のFOSS版みたいなやつ。<br>既存のジオメトリカーネルを使う？それともOpenCASCADEみたいなのを改善する？あるいはゼロから？<br>既存の標準フォーマットに合わせる？それとも新しいフォーマット？<br>FreeCADをベースにする？それとも他のソフトウェアからインスピレーションを得る？それとも全部最初から？<br>もっと実用的な議論がしたかったんだ。" userName="nirv" createdAt="2025/11/21 02:56:00" color="#38d3d3">}}




{{<matomeQuote body="目標が芸術的なのか、それとも実用的なのかによるね。<br>Blenderはキャラクターモデルなんかを作るのにはすごくいいよ。でも、現実世界で何かにはめ込む部品を作る時には、あんまり良くないんだ。<br>例えば、印刷してから途中のステップが1mm短いって気付いた時とかね。機能的な設計にはまだ課題があると思うよ。" userName="SchemaLoad" createdAt="2025/11/18 23:47:16" color="#ff5c5c">}}




{{<matomeQuote body="PGAベースの新しいCSGカーネルは、従来の線形代数よりはるかに高性能で堅牢。空間と時間の補間や高次元の極値探索も可能で、数十年ぶりの技術革新になるかも、って夢見てるんだ。<br>PGA、ヤバいよ。" userName="jiggawatts" createdAt="2025/11/18 23:58:16" color="#45d325">}}




{{<matomeQuote body="同感！<br>Plasticity.xyzを見てみて。オープンソースじゃないけど、Solidworksカーネルをベースにしてるからめちゃくちゃ堅牢だよ。あと、solverspace、caligula、FreeCADなんかもチェックしてみてね。" userName="gcr" createdAt="2025/11/19 00:16:53" color="#ff33a1">}}




{{<matomeQuote body="Parasolidみたいな他のカーネルって、シームエッジなしでどうやって動いてるんだろう？<br>シームがないと、2Dのパラメトリック境界が閉じないはずなんだけど、どうなってるの？" userName="loftsy" createdAt="2025/11/19 12:37:57" color="">}}




{{<matomeQuote body="まず「誰のためのプログラム？」から考えるべきだね。専門ユーザーは誰で、何を作ってる？ upstream/downstreamのアプリは？<br>CADは、エンジニアの頭の中や組織のワークフローに沿って進化する、Excelシートに近いものだよ。<br>Fusion 360は素晴らしいけど、FOSSで同じパッケージは難しいかも。STEP出力ならOpenCASCADE、AMならManifold libraryを使うといいよ。ユーザーのニーズを分析し、産業界に貢献するなら、何十年ものプロジェクトデータをどう移行させるか考える必要がある。趣味用ならもっと簡単で楽しいだろうけどね。" userName="fsloth" createdAt="2025/11/21 06:37:17" color="#ff5c5c">}}




{{<matomeQuote body="いつ頃試したの？<br>最近のFreeCADの進化はすごいよ。初めて試した時と比べて、趣味で使うにはマジで「信者」になったくらいだから、もう一度チェックしてみてほしいな。" userName="nickthegreek" createdAt="2025/11/18 23:41:18" color="">}}




{{<matomeQuote body="「ワークベンチ」が多すぎたり、重複してたり、古かったりするのが問題だね。<br>「Part」と「Part Design」みたいに、互換性があるか分からなかったりするし。<br>あと、オブジェクトの面にスケッチを作ろうとして、「どのオブジェクトにも属してない」って文句言われるとか、マジで意味不明だよ。手動でツリービューにドラッグしなきゃいけないとか、アホかと。<br>それでも、Autodeskに1円も払いたくないから、この不器用なFreeCADと格闘してるよ。これで何とかやってるし、開発してる人たちにはマジで感謝してるね。" userName="VerifiedReports" createdAt="2025/11/18 23:31:39" color="#ff5c5c">}}




{{<matomeQuote body="KicadやBlenderみたいに、誰かがスポンサーになって開発者や資金を投入すれば、FreeCADも一気にブレイクスルーできるんじゃないかな。<br>CERNがKicadを大きく押し上げたみたいにね。<br>あの二つのプロジェクトは30年以上かかったけど、FreeCADはまだ23年だし。<br>短期的な利益ばかり追う経営陣や、FOSSから恩恵を受けながら何も返さない産業界の体質が問題だね。政府、NGO、科学界あたりが動かなきゃ難しいかも。" userName="shirro" createdAt="2025/11/18 23:19:04" color="#ff33a1">}}




{{<matomeQuote body="Fornjot.appを追ってる？<br>Hacker Newsで過去に議論されてたよ。<br>https://news.ycombinator.com/item?id=30597061<br>https://news.ycombinator.com/item?id=30825429<br>https://news.ycombinator.com/item?id=32295690" userName="WillAdams" createdAt="2025/11/19 04:35:56" color="#ff5733">}}




{{<matomeQuote body="2Dじゃなくて、3Dの曲面におけるシームの話だよ。<br>OpenCASCADEのカーネルは、トポロジーで周期性を処理するから、0から2πにシームができて、それがトポロジー上の実体になっちゃうんだ。だからアルゴリズムで毎回処理が必要になる。<br>でもParasolidは、ジオメトリで周期性を処理するから、U=2.1πの点でも、U=0.1πと同じって勝手に分かるんだよ。シームは表面の数学的な特性であって、形状構造じゃない。<br>FreeCADでブーリアン演算がよく失敗するのは、存在しないはずの人工的なエッジと交差させようとするからだよ。Parasolidは最初から賢い表面評価コードが必要だけど、その後は全てうまくいくんだ。" userName="throwup238" createdAt="2025/11/19 16:15:42" color="#ff5733">}}




{{<matomeQuote body="もし大手の防衛請負業者や自動車産業なんかが、Autodeskのライセンス料を払うのと同じくらいオープンなCADカーネルやツールの開発に投資すれば、彼ら独自の超特化型CADソリューションを構築できるはずだよ。そして、俺たちはACISやParasolidみたいな初期費用なしで「さあ始めようぜ」ってなるんだ。" userName="gehsty" createdAt="2025/11/19 23:25:25" color="#ff5733">}}




{{<matomeQuote body="問題は、業界が何を望んでいるのか、本当にわかってないことだね。汎用ツールから専門化された「訓練可能」なツールに近づくほど、品質は目に見えて低下する。ひどいソフトの話だよ、ボタン一つでクラッシュしたり、30回クリックしても動かなかったり。しかも、エンジニアの給料の0.25～1.25倍もかかるなんて！<br>頼れるオープンソースのフレームワークがあれば、サプライチェーン全体にポジティブな外部効果が生まれるのに。GNU/LinuxがなければAWSもなかったようにね。" userName="ok123456" createdAt="2025/11/20 00:35:10" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Blenderがアップデートするたびにスクロールして、その内容の多さに驚かされるよ。まだ半分しかスクロールしてないのにって気づくんだ。<br>愛しのRadial tiling、そしてはるかに分かりやすくなったArray modifier＜3 非均質ボリュームのより速いボリューム散乱。みんなが「AIはどこ？」って思ってるなら、新しいConvolve Nodeがそれかもね！<br>新しいシーケンサーもすごくいいね。いつもDaVinci Resolveに行ってたけど、Blenderだけで完結できるかも。シーケンサー内のコンポジターモディファイアも大歓迎だ。これは俺にとって信じられないくらいすごいことだよ。" userName="lynndotpy" createdAt="2025/11/19 00:06:01" color="#785bff">}}




{{<matomeQuote body="Blenderは本当にオープンソースソフトウェアの素晴らしい成功事例だね。LinuxカーネルやWebブラウザ/ツール以外では、そのニッチで商用ソフトウェアを全て打ち負かした唯一のオープンソースソフトウェアかもしれない。Mayaはほぼ時代遅れにしたからね。<br>一方、他の分野では、Microsoft OfficeがLibreOfficeのようなオープンソースのオフィススイートをまだ圧倒してるし、PhotoshopはGIMPに王座を譲る気配もない。LightroomもDarktableに負けてないし、FreeCADはSolidworksの足元にも及ばない。<br>次にオープンソースが抜きん出るカテゴリは何だろうね？Unityが崩壊しつつある中、Godotは急速にユーザーと認知度を獲得してるけど、ゲームエンジンではまだUnrealが王様だ。Kritaはデジタルペインティングの有力な選択肢になってきてるね。" userName="porphyra" createdAt="2025/11/19 00:20:12" color="#45d325">}}




{{<matomeQuote body="調子に乗るのはやめようよ。Blenderはほとんどのオープンソースソフトウェアよりずっと進歩してるけど、Mayaはまだ業界標準なんだから。BlenderがPixarやWetaみたいな最も要求の厳しい実際の制作ワークロードで、同じくらい実戦で証明されるまでは、Mayaを打ち負かしたとは現実的に言えないと思うな。今のところ、まだそこまでにはなってない。" userName="jsheard" createdAt="2025/11/19 00:37:05" color="">}}




{{<matomeQuote body="エヴァンゲリオンを作っているスタジオが、3ds MaxからBlenderをメインの3Dソフトウェアに移行したって記事があるよ。<br>https://www.blender.org/user-stories/japanese-anime-studio-k..." userName="manifoldgeo" createdAt="2025/11/19 00:41:29" color="#ff33a1">}}




{{<matomeQuote body="「一方、他のニッチでは、Microsoft OfficeがLibreOfficeのようなオープンソースのオフィススイートをまだ圧倒してる」<br>ぶっちゃけ、全てはどこかから始まるし、君が挙げたプロプライエタリなアプリも全てがすぐに市場リーダーになったわけじゃないよね。俺は趣味でも仕事でも、挙がってるFOSSツールを問題なく使ってるし、ニーズは満たされてるよ。他の人はそうじゃないかもしれないけど、新しいワークフローを試すのを単に嫌がってるだけな気がするな。" userName="btreecat" createdAt="2025/11/19 00:55:13" color="">}}




{{<matomeQuote body="あれはそんなに大規模なスタジオでも、大規模な制作でもないよ。Blenderはパイプライン部門でつまずくんだ。常に変更されるAPIは、大規模なプロジェクトを完了させるために必要な拡張性を許さない。Python APIしか提供されていないという事実だけでも、大量のデータを扱う大規模なシーンで働いたことのあるほとんどの人にとっては、使う気にならない理由になるよ。" userName="MichaelEstes" createdAt="2025/11/19 00:53:12" color="#45d325">}}




{{<matomeQuote body="「LinuxカーネルやWebブラウザ/ツール以外では、そのニッチで商用ソフトウェアを全て打ち負かした唯一のオープンソースソフトウェアかもしれない。」<br>いくつか他にも思いつくよ。Gitは、まるで一夜にして商業ソフトウェアのカテゴリ全体を時代遅れにしたし、VSCodeはダントツで最も広く使われるIDEになった（完全にオープンソースではないけどね）。TeXは数学的な組版を今でも支配してるし（コンピューターが使われ始めて以来ずっとね）、(lib)ffmpegはビデオ/オーディオのトランスコーディングでどこでも使われてる。nginxとApacheを合わせれば、Webサーバーの過半数を占めてるしね。最も人気のあるプログラミング言語のコンパイラ/インタプリタ/ランタイムも、もちろんオープンソースだよ。" userName="omnicognate" createdAt="2025/11/19 01:47:31" color="#38d3d3">}}




{{<matomeQuote body="次にオープンソースがリードするカテゴリは何だろうね？<br>PCB設計のKiCadだね。ここ数年で massive な改善を続けてるし、プロプライエタリなソリューションが消えたり（Eagle）、手の届かない価格になったり（Altium）してるから、KiCadは今やホビイストにも中小企業にも断然最高の選択肢だよ。<br>2018年のKiCad 5のリリースで、「使いづらいけど技術的には十分」なものから、要求の少ないプロにとっては真の選択肢になったんだ。それ以来、毎年メジャーリリースがあり、大量の品質改善が行われてて、全部を追いきれないくらいだ。新しい機能の種類から見ても、多くのプロユーザーがこのアプリに興味を示してるのは明らかだし、Blenderで見たように、プロの採用が少しずつ増えれば、あっという間に市場全体を席巻する洪水になる可能性があるね。<br>KiCadはまだ複雑な高速ボード（例えばEPYCマザーボードの設計にこれを使う気には誰もならないだろう）に関しては長い道のりがあるけど、ありふれた2/4/6層PCBの日常的な消費者製品に関しては、間違いなく競合を圧倒するだろうね。" userName="crote" createdAt="2025/11/19 01:20:50" color="#45d325">}}




{{<matomeQuote body="FOSSツールは俺のニーズを満たさないんだ。GIMPはまだマシだけどFreeCADはマジでジョークだよ。プロじゃなくて愛好家が開発してるから、機能の寄せ集めでプロ用途には全然足りない。バグも多いし複雑すぎる。FreeCADがひどすぎてLinuxユーザーの俺の3Dプリンターは埃かぶってるわ。Ondselも期待外れだったし。" userName="crote" createdAt="2025/11/19 01:37:41" color="#785bff">}}




{{<matomeQuote body="FreeCADはSolidworksには全然敵わないって言うけど、もうSolidworksのバックミラーにFreeCADの影が見え始めてるかもよ？もう一回よく見てみろって！" userName="Cadthrowaway" createdAt="2025/11/19 01:30:31" color="">}}




{{<matomeQuote body="Blenderは俺みたいな駆け出しアーティストや開発者の頼りになるツールさ。Blender 2.93.18でも十分仕事になる。良いハードもMayaのライセンスも買えないからね。Blenderが実戦で鍛えられてないって言うけど、大手スタジオがMayaを使うのは企業がMicrosoft Windows使うのと同じだよ。Linuxは実戦で鍛えられてるだろ？" userName="underscoremark" createdAt="2025/11/19 01:01:28" color="#ff5c5c">}}




{{<matomeQuote body="Adobeはビデオ編集で自滅してるね。みんな代替品を求めてるし。Davinci ResolveはPremiereのライバルになりそうだけど、無料でもオープンソースじゃないんだ。でも、競合が現れたり、Davinciがコードを公開すれば、状況は一気に変わるかもね。" userName="Aerolfos" createdAt="2025/11/19 00:40:47" color="#45d325">}}




{{<matomeQuote body="Microsoft Officeはもう死んでるよ。うちに来る新卒はほとんどGoogle Docsしか使わないし、Officeは避ける。ドキュメントもほとんどWikiかメールで済ませてるしね。" userName="rr808" createdAt="2025/11/19 02:54:12" color="">}}




{{<matomeQuote body="FreeCADを毎日使ってるけど、マジでめちゃくちゃだよ。かろうじて動くけど、唯一のオープンソースCADだから使い続けてる。Realthunderの toponaming heuristic solverの統合は良かったんだけどね。その後、開発者たちがUXやショートカットを意味もなく壊し続けてるし、根本的なバグは直らない。誰にも勧めないけど、俺はFreeCADなしではいられない。本当に messだよ。" userName="bombela" createdAt="2025/11/19 04:25:01" color="#38d3d3">}}




{{<matomeQuote body="TeXは、他のものと違って唯一「アプリケーション」って言えるんじゃないかな、ツールよりは（異論もあるだろうけど）。OSSはツール分野では強いけど、成功したエンドユーザー向けオープンソースアプリは少ないよね。" userName="jl6" createdAt="2025/11/19 07:37:37" color="">}}




{{<matomeQuote body="LibreOffice, GIMP, FreeCAD, Inkscapeはどれも癖やバグがあるけど、コアユーザーにとってはそれが「機能」なんだろうね。だから、多分これからも変わらないだろうな。" userName="HKH2" createdAt="2025/11/19 01:25:14" color="">}}




{{<matomeQuote body="MayaのAPIはBlenderより断然優れてるよ。MayaのOSに金を払う価値はある。APIはオープンソースのどれよりも良いね。PostgresがDBのOSみたいなもんさ。Blenderはまだそこまでじゃない。ノード一つ変えるのにBlender全体をコンパイルしないといけないって聞いたけど？" userName="qwertox" createdAt="2025/11/19 07:09:40" color="#ff5733">}}




{{<matomeQuote body="スポンサーがたくさんついてて良い感じだね！<br>https://www.kicad.org/sponsors/sponsors/" userName="tommica" createdAt="2025/11/19 06:58:00" color="">}}




{{<matomeQuote body="エヴァンゲリオンが日本でいかに巨大なシリーズか知ってる？30年間トップクラスで、知らない人はいないくらい。グッズもいつもどこにでもあるから、逃れられないんだ。そんな日本で一番大きなシリーズがBlenderを使うってことは、業界で一番リスクを嫌う国でも「Blenderは使える」っていう大きなサインだよ。" userName="forgotoldacc" createdAt="2025/11/19 03:32:25" color="#45d325">}}




{{<matomeQuote body="FreeCADはよく知らないけど、Gimp、Inkscape、LibreOfficeは個人プロジェクトでかなり使ってるよ。時間を使う価値は絶対にあるね！" userName="legends2k" createdAt="2025/11/19 02:21:31" color="">}}




{{<matomeQuote body="ツールとアプリケーションの線引きってどこにあると思う？「エンドユーザー」アプリケーションって言葉もあいまいだよね。Photoshopはアーティストのためのツール？それともエンドユーザーアプリ？" userName="wongarsu" createdAt="2025/11/19 09:13:47" color="">}}




{{<matomeQuote body="個人的にはResolve StudioがPremiereより断然良いと思うな。300ドルで買い切りなんて、迷う必要ないよね。" userName="Forgeties79" createdAt="2025/11/19 01:46:02" color="">}}




{{<matomeQuote body="大手スタジオがMayaを使ってるのは、Fortune 500企業がMicrosoft Windowsを使ってるのと同じ感じだよね。Linuxが実証済みでも、企業環境からWindowsを追い出すのはAppleですらできてない。BlenderとMayaって全く同じ分野を埋めてるのかな？それともBlenderは（たぶん小さい）違うタイプの企業に採用されてるのかな？" userName="oblio" createdAt="2025/11/19 08:28:45" color="#45d325">}}




{{<matomeQuote body="他のオープンソースCADツールだとDune 3Dも見てみてよ。https://dune3d.org/ 過去にもここで議論されてるね。<br>https://news.ycombinator.com/item?id=37979758<br>https://news.ycombinator.com/item?id=40228068<br>https://news.ycombinator.com/item?id=41975958<br>パラメーターやスクリプト機能があったらもっと可能性あるのにね。" userName="WillAdams" createdAt="2025/11/19 04:32:25" color="#ff5c5c">}}




{{<matomeQuote body="「絶えず変わるAPIが拡張性を許さない」って言うけど、安定版を使えばAPIは変わらないでしょ。もし本当にメジャープロジェクトなら、常に”最新版”にアップグレードするのはご法度（のはず）！それにPython APIを怖がる「ほとんどの人」って弱いな！低レベルなC APIであるべきだったんだよ！" userName="underscoremark" createdAt="2025/11/19 07:33:54" color="">}}




{{<matomeQuote body="ゲーム開発者として、オープンソースのゲームエンジンを本当に応援してるよ。UnityやUnrealは縮小するコンソール市場を狙った恐竜だね。Godotは彼らを踏襲してるけど、Bevyみたいにもっと汎用的なものがRobloxの次世代と競えるようになればいいな。" userName="mortoc" createdAt="2025/11/19 01:40:09" color="#38d3d3">}}




{{<matomeQuote body="キラーな瞬間は、開発チームが奇抜なことを望む「うるさい人たち」の声を聞くのをやめて、より合理的なワークフローを望む「プロ」の声を聞き始めたときだった。業界が似たようなやり方をするのは、慣性だけじゃない何か理由があるはずだ。結果、ユーザー採用は劇的に増えたよ。<br>V8で多くの機能がコアに含まれ、V9ではさらなる改善があったけど退行も。V10でコアが固まれば、高速設計に本当に集中できるだろうね。KiCADみたいに、FreeCAD、GIMP、Inkscapeもここ2年で「うるさいメンバー」から「役立つメンバー」の声を聞くようになって、ゆっくりだけど着実に進歩してるよ。GIMPは大変だろうけど、多くのタスクでは完璧に使える。グラフィックデザイナーはAdobeがなければ文句言うけどね。俺はGIMPとInkscapeで簡単なグラフィック修正をやってるよ。" userName="monegator" createdAt="2025/11/19 10:35:58" color="#785bff">}}




{{<matomeQuote body="「主要プロジェクト」は主観的なラベルかもしれないけど、Flowは今年アカデミー賞（Best Animated Feature）とゴールデングローブ賞（Best Animated Feature Film）を受賞して話題になったんだ。Blenderのユーザー事例としても紹介されてるよ！<br>https://flow.movie/<br>https://www.youtube.com/watch?v=ZgZccxuj2RY<br>https://www.blender.org/user-stories/making-flow-an-intervie..." userName="wlesieutre" createdAt="2025/11/19 01:01:11" color="#ff5c5c">}}




{{<matomeQuote body="Blenderを拡張するには、a) フォークして変更を直接アプリに重ねるか、b) Blender Python APIでプラグインを作るかの2つの方法があるよ。ベンダーにとっては前者は無理だし、後者はPythonに制限されるから、計算負荷の高いタスクは外部ライブラリやアプリと連携するシムを作る必要があるんだ。ほとんどのDCCはC++ SDKにPythonバインディングを用意してるからね。" userName="mroche" createdAt="2025/11/19 08:01:51" color="#ff5733">}}




{{<matomeQuote body="議論の余地はあるけどね。すべては層になってるし、ある層のアプリケーションや製品は、上位層のツールやプラットフォームになるんだ。OSSがなぜ支配的か理解する文脈では、それがソフトウェア問題を解決するのか、ビジネス問題を解決するのかで、ツールとアプリの区別ができると思う。そう考えると、Photoshopはアプリケーションで、VSCodeはツールだね。" userName="jl6" createdAt="2025/11/19 11:31:39" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「Mayaをほぼ時代遅れにした」って、それはすごいニュースだね。じゃあPixar USDのサポートもMayaやHoudiniと同じくらい優れてるってことかな？そうなら、大手スタジオもBlenderにやっと乗り換えられるってことだね。" userName="flipthefrog" createdAt="2025/11/19 02:49:59" color="#ff33a1">}}




{{<matomeQuote body="Blenderって、どうしてこんなにオープンソース製品として成功したんだろうね？パワフルで使いやすいし、リリースのマーケティングページも美しいし、よくできてる。僕はオープンソースが好きだけど、開発ツール以外でBlenderみたいに実用的でUXがいいものってほとんどないよ。資金？特定の個人？PMやデザイナーがいるのかな？何にせよ、うまくいってるよね！" userName="bigyikes" createdAt="2025/11/19 01:02:11" color="#45d325">}}




{{<matomeQuote body="Blender Instituteが作った素晴らしい映画を通して、自社のソフトウェアを「ドッグフーディング」してるのが、すごく大きい役割を果たしてると思うな。ユーザーからの個別の寄付に頼ってるから、Blenderは実際のユーザーの利益に沿ってるし、少数の企業スポンサーがすべてをコントロールすることもない。それに、GPLライセンスがユーザーの自由を守ってるのも大きいね。" userName="cardanome" createdAt="2025/11/19 02:03:26" color="#38d3d3">}}




{{<matomeQuote body="少なくとも、コードも書けてマネジメントもできる、すごく珍しい人たちを見つけたってことが大きいと思うな。多くのオープンソースプロジェクトのリーダーって、その分野では世界で一番知識があるかもしれないけど、オープンソースの設定でどうコミュニケーションを取ってコラボレーションすればいいか、特にプロジェクトが人気になって有害な（必ずしも悪意があるわけじゃないけど）人たちが集まってくると、全然分かってないからね。" userName="GZGavinZhao" createdAt="2025/11/19 01:23:27" color="#785bff">}}




{{<matomeQuote body="Blenderが最高のオープンソースソフトウェアだと僕が挙げる一番の理由は、その素晴らしいUI/UXだよ。他の（これだけは譲れない）オープンソースソフトウェアに良いUXなんてないし、それが一般の人が使ってくれない最大の理由なんだ。" userName="the_lucifer" createdAt="2025/11/20 17:23:30" color="#ff5733">}}




{{<matomeQuote body="うん、これは本当に良い質問だね。もっと知りたいな。ウェブサイトに良い歴史が載ってるよ [1]。開発者は1998年にフリーミアムソフトウェアとして販売してたんだけど、バブルが弾けて2002年に会社が閉鎖したんだ。でも、開発者がBlender Foundationっていう非営利団体を立ち上げて、「Free Blenderキャンペーン」[2]（フォーラムの投稿はまだ残ってるよ！）でユーザーからお金を集めて、投資家からソフトウェアの権利を買い戻したんだって。<br>[1] https://www.blender.org/about/history/<br>[2] https://blenderartists.org/t/free-blender-campaign-launched/..." userName="zaptheimpaler" createdAt="2025/11/19 01:29:32" color="#ff5c5c">}}




{{<matomeQuote body="オープンソースは、独自路線を行くんじゃなくて業界標準のオプションに従うべきだよね。GIMPとKritaも似たような話で、GIMPは彼らが目指したPhotoshopの代替には決してなれないと思うな。" userName="haunter" createdAt="2025/11/19 10:50:41" color="#38d3d3">}}




{{<matomeQuote body="2010年からBlenderを使ってるけど、その進化に驚いてるよ！特にノードにstructsやclosure、高階関数が追加されるのが嬉しいな。グラフィカルな言語でのPL機能実装に興奮するね。Blenderを知らない人やAIで置き換わると思う人も、ぜひ一度調べてみてほしいな。" userName="1220512064" createdAt="2025/11/18 22:48:28" color="#ff5c5c">}}




{{<matomeQuote body="1999年からBlenderを使ってて、一番好きなオープンソースソフトだよ。本当にすごいね！" userName="mempko" createdAt="2025/11/18 23:16:48" color="">}}




{{<matomeQuote body="今回のリリースで一番クールなのはノード周りの変更だと思う！Closures（ラムダみたいなやつ！）、Bundles（タプル/structsみたいなやつかな？）、Repeat（ループ！）が追加されたんだ（Shader Nodesにも来たね）。<br>この10年でBlenderノードはすごい進化したし、その丁寧な開発には感動するよ。Blenderのノードエディタは本当に最高！v2.75からずっと使ってるよ。これからも楽しみだな。みんなBlenderに寄付してね！ https://fund.blender.org" userName="mkaic" createdAt="2025/11/19 06:14:49" color="#ff5733">}}




{{<matomeQuote body="テキストベースで表現できたら良いのにな。画面でボックスをドラッグするのはちょっと苦手なんだ。" userName="andybak" createdAt="2025/11/19 11:28:18" color="">}}




{{<matomeQuote body="ノードシステムじゃなくてWASMモジュールを使えたら、もっと強力なプログラミング環境になるはずだよ。今の”repeat”ゾーンは”break”機能がないから、イテレーション数が多くて遅いんだ。スコープアクセスが限定的だったり、ノード評価が全体的に遅いといった問題もあって、シーケンシャルなアルゴリズムは扱いにくいね。" userName="Etherlord87" createdAt="2025/11/19 18:03:28" color="#ff33a1">}}




{{<matomeQuote body="たぶんPythonでスクリプトが書けるんじゃないかな。" userName="mixmastamyk" createdAt="2025/11/19 19:47:23" color="">}}




{{<matomeQuote body="リリースノートにはあまり載ってなかったけど、Geometry NodesのSDFグリッドには特にワクワクしてるよ。この理由からね: https://passivestar.xyz/posts/instance-scattering-in-blender..." userName="bodge5000" createdAt="2025/11/19 15:16:15" color="#ff5c5c">}}




{{<matomeQuote body="ボリュームが多様体メッシュで定義されてたら、点の散布も、normal.z ＜ 0になる点を削除するのも、すでに簡単だったよ。記事が言うようなノードスパゲッティにはならなかったはずだね。" userName="Etherlord87" createdAt="2025/11/19 18:07:49" color="">}}




{{<matomeQuote body="Reaperの変更履歴を思い出すね。地味なQoL改善が少しずつ積み重なって、最終的にソフトウェア全体を大きく良くしていくんだ。派手な新機能発表より、こういうのが大切だよね。" userName="Kye" createdAt="2025/11/19 03:34:32" color="">}}




{{<matomeQuote body="でもBlender 5.0は大規模な機能リリースもたくさんあるよ。特にビデオエディタの完全なオーバーホールが目玉かな。前のコメントの人がBlender 5.0がQoL改善だけだと思わないように言っておくね。" userName="embedding-shape" createdAt="2025/11/19 11:40:09" color="#ff5c5c">}}




{{<matomeQuote body="Reaperが大量の変更リストの中に、通常ならDAW用$300もする楽譜エディタをこっそり追加したことがあったんだ。Blenderの進化もそうだけど、こういうサプライズは面白いよね。" userName="Kye" createdAt="2025/11/19 14:31:25" color="#785bff">}}




{{<matomeQuote body="SDFジオメトリノードは、とんでもない数の新しい選択肢を開いてくれるよ。それがノードクロージャと合わせて、特に複雑なスキャッタリングでたくさんの難しい問題を解決してくれるんだ。まだ確認してないなら、ボリュームグリッドに関する情報がここにあるから見てみてね: https://code.blender.org/2025/10/volume-grids-in-geometry-no..." userName="boriskourt" createdAt="2025/11/19 01:04:45" color="#ff5733">}}




{{<matomeQuote body="彼らに寄付することを忘れないでね！彼らは素晴らしいんだから。無料のソフトウェアで、素晴らしいコミュニティ、そして彼らはたくさんのことをやってくれてるよ。" userName="ibaikov" createdAt="2025/11/19 15:43:46" color="#ff33a1">}}




{{<matomeQuote body="それで……ROCmと一部のAMDドライバー、そしてCyclesにおけるあのしつこい非互換性の問題は解決したのかな？ほとんどのBlenderのバージョンでレンダリングできなくしてたやつ。EEVEE以外ではGPUを検出してくれなかったんだよ。" userName="anon_cow1111" createdAt="2025/11/19 00:34:32" color="">}}




{{<matomeQuote body="アダプティブサブディビジョンがBlenderの機能として宣伝されてるけど、残念ながらそれはCyclesの機能なんだよね。でも、こういうアップデートはいつも嬉しいよ。Blenderは本当にここまでよく来たもんだ。" userName="thot_experiment" createdAt="2025/11/18 22:48:52" color="#785bff">}}




{{<matomeQuote body="EEVEEでジオメトリノードを使えば同じ効果を再現できるかもね。自動レベルオブディテール作業でそうした人もいるって知ってるし。そうは言っても、サブサーフがジオメトリノードとして非定数の反復回数を取るかは分からないけどね。" userName="1220512064" createdAt="2025/11/18 22:52:48" color="#785bff">}}




{{<matomeQuote body="Blenderで作れるものはかなりクールだけど、昔使った時はすごく複雑だったのを覚えてるよ。Wings 3Dの方がずっと生産的だったな。Blenderに比べると機能は少ないけど、使うのはずっと簡単だったからね。最近は手動のアニメーションやメッシュ作成で手間をかけたくないな。コンピューターが全部やってくれるべきだよ。" userName="shevy-java" createdAt="2025/11/19 07:12:40" color="">}}




{{<matomeQuote body="Blender 2.80で大規模なインターフェース刷新があったし、iPadみたいなプラットフォームへの移植への関心が高まれば、今後のバージョンも改善し続けると思うよ。ショートカットを学ぶのが本当に一番だよ。最初は大変だけど、長期的には生産性が100倍になるし、Blender本来の使い方でもあるんだ。正直、基本的なチュートリアルを1つやればすぐに全部覚えられるよ。" userName="kasool" createdAt="2025/11/19 07:16:28" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
