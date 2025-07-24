+++
date = '2025-07-17T00:00:00'
months = '2025/07'
draft = false
title = 'ついに誰でも作れる！オープンソースのロボットハンドが公開されたぞ'
tags = ["ロボット", "オープンソース", "DIY", "3Dプリンター", "ハードウェア"]
featureimage = 'thumbnails/red1.jpg'
+++

> ついに誰でも作れる！オープンソースのロボットハンドが公開されたぞ

引用元：[https://news.ycombinator.com/item?id=44592413](https://news.ycombinator.com/item?id=44592413)




{{<matomeQuote body="135ドルの部品代ってところが一番驚いたな。良い時代になったもんだ！" userName="breakpointalpha" createdAt="2025/07/17 15:35:54" color="">}}




{{<matomeQuote body="手作業系の仕事って30分で100ドル以上もするんだよ。もしこのロボットハンドがそれらの仕事をこなせたら、一部の産業は大打撃を受けるかもね。" userName="jjangkke" createdAt="2025/07/17 16:43:55" color="#785bff">}}




{{<matomeQuote body="みんな昔からホビー用サーボでエンドエフェクター作ってるよ。これらはRC飛行機用で軽くて安い。産業用は重さより能力や信頼性が大事だから、これはホビー向けだね。なんでこのスレッド、漠然としたポジティブコメントばかりで、何の役に立つか真剣に考えてないの？" userName="0_____0" createdAt="2025/07/17 17:05:26" color="#ff5c5c">}}




{{<matomeQuote body="Feetechのサーボは双方向インターフェース付きで17ドルと安いけど、Dynamixelはもっと高価だね。部品リストの「強度が必要」な部分がPLAプラなので、これはコンセプトモデルだ。もし需要があれば、射出成形でもっと良い素材で作れるはず。ホビー用射出成形はあまり使われてないけど、TechShopとか大学のメイカースペースには機械があるよ。<br>https://www.feetechrc.com/<br>https://www.robotis.us/dynamixel/<br>https://makerspace.engineering.nyu.edu/machines/pim/" userName="Animats" createdAt="2025/07/17 18:10:35" color="#45d325">}}




{{<matomeQuote body="部品が単純じゃないと金型設計って難しいんだ。ソフトも単純なのはOKだけど、複雑になると素材やプレス機に合わせて部品と金型両方を設計する知識が必要だね。金属から良い金型を加工するのも表面仕上げとか精度とかで大変だよ。まだホビーレベルでやるには無理があるけど、遠くない未来には実現してほしいな。" userName="mionhe" createdAt="2025/07/17 19:04:27" color="#ff5733">}}




{{<matomeQuote body="それは2020年の話だよ。今や汎用ロボットが実用化に近づいてるんだ。これからのロボットは工場で同じ動きを繰り返すんじゃなくて、汎用的な動きを学習して状況に合わせて行動するようになる。だから、エンドエフェクターに求められるものも全然違うし、再現性なんてどうでもよくなるんだよ。" userName="ACCount36" createdAt="2025/07/17 17:51:58" color="#785bff">}}




{{<matomeQuote body="あれらはほとんど平らな小さなリンク部品だよ。穴の一部はベアリングだね。作るの自体は難しくないけど、強度は必要だよ。CNC加工や射出成形、スタンピングで作れる。3DプリントのPLAじゃ弱すぎるから、実用するには強度アップが必要だけど、それは解決できる問題だね。流行ったら、誰かが強化パーツのアップグレードキットを売るかも。設計者もサーボのアップグレードを検討中みたいだよ。<br>https://github.com/pollen-robotics/AmazingHand/blob/main/ass..." userName="Animats" createdAt="2025/07/17 19:19:06" color="#785bff">}}




{{<matomeQuote body="詳しく見てないけど、「強度が必要」な部品は、安価なホビー用CNC（例えば3020）でアルミの板や棒からCNC加工できるんじゃないかな。" userName="bigiain" createdAt="2025/07/17 23:29:25" color="#ff5733">}}




{{<matomeQuote body="僕もそう思ってたよ。部品のほとんどはフラットな板から簡単に削り出せるね。ヨークエンドは少し難しいけど、既製品がありそう。使われてるボールジョイントも標準的なRCカーパーツだから、ナイロンに真鍮ボールみたいな強いやつに0.53ユーロでアップグレードできるよ。この設計を強化して実用的にするのは難しくないだろうね。<br>https://toni-clark-shop.com/Ball-Joint-for-M2-and-M3" userName="Animats" createdAt="2025/07/18 04:46:47" color="#ff5733">}}




{{<matomeQuote body="デザインは最高だけど、この値段じゃモーターの外付けアブソリュートエンコーダや、信頼できる力覚センサー（イチゴを掴むイメージ）、腱（下のスレッド）は無理だよ。残念ながら、研究や実世界のプロジェクトにはちょっと限界があるかもね。" userName="stefanka" createdAt="2025/07/17 20:07:57" color="#45d325">}}




{{<matomeQuote body="ジョークの示唆に富んだスレッドにマジレスしてるから、話が噛み合ってないんじゃない？" userName="johnmaguire" createdAt="2025/07/17 17:46:20" color="">}}




{{<matomeQuote body="＞…って2020年にはそうだったけど<br>ヒューマノイドロボットの研究は、2000年代初めからすでに人気で、ビデオだけじゃなく、ちゃんと再現できる成果も出てたよ。今はメディアで取り上げられることが増えただけだね。" userName="stefanka" createdAt="2025/07/17 20:16:01" color="#ff5c5c">}}




{{<matomeQuote body="繰り返し精度がないと、ロボットを信頼できるレベルに調整するのは絶対無理だよ。" userName="lukan" createdAt="2025/07/17 17:54:18" color="#ff5733">}}




{{<matomeQuote body="指先にAnySkin（https://any-skin.github.io）を追加したらどうかな？" userName="aaronblohowiak" createdAt="2025/07/17 21:39:34" color="#785bff">}}




{{<matomeQuote body="デトロイトからだよ。この部品、プレス成形にするのがいいんじゃないかな。接触面が凸だし、深さが違う部品もいらないでしょ？共通のパンチとダイで、レーザーから取り出して、全部並行してプレスして、後でバラせばいい。射出成形より安いし、サイクル速いし、材料も強くなるし、金型は一つでいいし、アンロードも楽じゃない？" userName="contingencies" createdAt="2025/07/18 14:38:16" color="#ff5733">}}




{{<matomeQuote body="https://m.youtube.com/watch?v=6pbgOmaBx34" userName="delijati" createdAt="2025/07/17 16:58:22" color="">}}




{{<matomeQuote body="現実世界って「信頼性」なんてないんだよ。ロボットがエラーを自分で直せないと、外では使い物にならないよね。" userName="ACCount36" createdAt="2025/07/17 18:35:00" color="">}}




{{<matomeQuote body="はい。パンチプレスで生産されたすごく似た部品がここにあるよ。[1] シリコンバレーや中国製もあるんだ。[2] この手のものは、最初の部品が約40,000ドルで、追加分は1個0.05ドルくらいだね。カスタム金型の設計と製造は高いけど、部品を大量生産するのは安いよ。大量生産ってすごいね。<br>[1] https://www.petersenprecision.com/fine-blanking<br>[2] https://yonglihaomachinery.com/" userName="Animats" createdAt="2025/07/18 18:23:03" color="#38d3d3">}}




{{<matomeQuote body="おおっ。その用途なら、十分な弾力性か、信頼できるフォース／トルクセンサーと良い制御システムが必要だよ。" userName="stefanka" createdAt="2025/07/17 20:10:22" color="#ff5c5c">}}




{{<matomeQuote body="＞30分で100ドル以上ね。<br>だから俺は自営業なんだよ。" userName="MisterTea" createdAt="2025/07/17 20:28:25" color="">}}




{{<matomeQuote body="汎用ロボットのボトルネックは、ずっとAIだよ。2022年からAIは継続的にブレイクスルーしてるしね。2000年にはこんなものは存在しなかったんだから。" userName="ACCount36" createdAt="2025/07/18 08:44:16" color="">}}




{{<matomeQuote body="みんな『ビッグバン★セオリー』のハワードとロボットハンドのエピソードをまだ見てないんじゃない？<br>https://www.youtube.com/watch?v=OYryogNE8Ys" userName="trhway" createdAt="2025/07/17 20:04:46" color="">}}




{{<matomeQuote body="＞ここではすごく一般的なポジティブなコメントが多いけど、これが実際に何に役立つのかって視点が少ないね。<br>レスしてる相手が、まさにそれの役に立つことについて話してるのに、よくそんなこと言えるね？" userName="stronglikedan" createdAt="2025/07/17 19:09:54" color="">}}




{{<matomeQuote body="アプリケーション次第だね。でも、このアプローチならもっと先に進めるのは確かだよ。ただ、ケーブル管理やメンテナンスが複雑になるし、重量も増えるね。でも重力補償は回避できるだろうな。個人的には、産業用途以外で使えるくらいの器用さを得るには、もっとセンサーと複雑なセンサーフュージョンが必要で、それはコストがかかると思うよ。" userName="stefanka" createdAt="2025/07/18 07:26:26" color="#ff33a1">}}




{{<matomeQuote body="これ、近々出るK-Scaleロボットのアドオンオプションになるかもね？彼らは5本指のエンドエフェクターハンドに1000ドルを求めてるんだ。<br>https://www.kscale.dev/" userName="proee" createdAt="2025/07/17 22:04:56" color="#ff5733">}}




{{<matomeQuote body="このロボットハンド、背の高いルンバに付けてキッチンを掃除してくれるのが待ちきれないな。" userName="echelon" createdAt="2025/07/17 17:00:26" color="#45d325">}}




{{<matomeQuote body="まだ3Dプリンターのこと考えてないだろ。" userName="mrbonner" createdAt="2025/07/17 18:35:31" color="">}}




{{<matomeQuote body="みんなが期待する人型ロボットじゃなくて、壁掛けや床置きの多腕キッチンアシスタントが欲しいな。アームは必要に応じて増やしたり減らしたりできて、消火器や温度計、食器も持てるようにしてほしい。あと「塩はひとつまみだよ、5グラム入れるかい？」みたいにアドバイスもしてくれたら最高。ガレージやDIYテーブルにも応用できそう。腕だけでいいんだ。" userName="Brajeshwar" createdAt="2025/07/17 15:20:04" color="#ff5c5c">}}




{{<matomeQuote body="正直、車輪付きだろうと壁固定だろうと、コンピューター制御のナイフを振り回すアームは家に置きたくないな。" userName="thrance" createdAt="2025/07/17 15:31:55" color="#ff5c5c">}}




{{<matomeQuote body="うちのオウム、くちばしが十分鋭いんだけど、ナイフブロックからナイフを掴んで振り回すのが大好きなんだ。タオルを被せてるんだけど、今日、タオルを剥がしてまたナイフを掴んで持ち上げてたよ。" userName="sroussey" createdAt="2025/07/17 16:04:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="まるで翼のあるいたずらっ子だな…" userName="0_____0" createdAt="2025/07/17 17:06:13" color="">}}




{{<matomeQuote body="キッチンにアームはまだいらないけど、誰かがベータテストするなら喜んで任せるよ。でも、汚れた服から洗濯機→乾燥機→きれいな服のバスケットへと洗濯物を動かすアームはどう？比較的定義されてて、繰り返しの動作だし、最悪服が壊れるくらいなら安全なスタート地点だね。" userName="_carbyau_" createdAt="2025/07/18 00:32:21" color="#45d325">}}




{{<matomeQuote body="洗濯乾燥一体型ユニットなら、最初の部分は服を動かさずに済むと思うよ。乾燥した服をバスケットに放り込む機能を追加すれば完璧だね！" userName="jagged-chisel" createdAt="2025/07/18 01:42:33" color="">}}




{{<matomeQuote body="切れるし、刻めるし…冗談はさておき。Vassar Robotics（YCカンパニー）がアームキットを販売中だよ。カメラのスペックアップで出荷が延期になったけどね。ナイフは持てないと思うけど、君が望む壁掛けアームを実現しようとしてる会社は他にもあるよ。" userName="bredren" createdAt="2025/07/17 20:21:27" color="#785bff">}}




{{<matomeQuote body="ロボットハンドって、いつもキッチンの吊り戸棚の下のレールを滑りながら動くのを想像してたんだよね。" userName="scotty79" createdAt="2025/07/17 16:50:03" color="">}}




{{<matomeQuote body="もしかしたら、触手の方がお好みかな？" userName="goopypoop" createdAt="2025/07/17 18:41:30" color="">}}




{{<matomeQuote body="Pollen RoboticsとHuggingFaceが今、ロボット工学の分野ですごく頑張ってるみたいだね！" userName="mclau157" createdAt="2025/07/17 13:51:10" color="#785bff">}}




{{<matomeQuote body="HuggingFaceのロボットが普及するか気になるな。スリープモードだと目やカメラが首の後ろに隠れるのは気づいたよ。" userName="ge96" createdAt="2025/07/17 15:19:54" color="#ff33a1">}}




{{<matomeQuote body="この製品、AmazingHandって名前らしいけど、”hand”って単語が多すぎるから検索しづらいかもね。タイトルは改善の余地がありそうだ。" userName="ImPostingOnHN" createdAt="2025/07/17 12:54:52" color="#785bff">}}




{{<matomeQuote body="これを作る時間があるかな。ハロウィンにアダムス・ファミリーの「Thing」みたいに飾れたら面白いだろうな！" userName="ortusdux" createdAt="2025/07/17 15:11:46" color="">}}




{{<matomeQuote body="ロボットの腕に腱を通して、手の重さを減らすことって可能なのかな？" userName="amelius" createdAt="2025/07/17 12:58:11" color="#38d3d3">}}




{{<matomeQuote body="ほとんどの腱の素材は弾力性があるんだ。だから、キャリブレーションの問題が起きたり、手の固有受容センサーが必要になったりするんだよ。" userName="stefanka" createdAt="2025/07/17 13:37:46" color="#785bff">}}




{{<matomeQuote body="実際、把握においては、固有受容よりも力覚センサーの方が役立つことが多いよ。掴もうとする物体の寸法は、使ってる手の形ほど正確には分からないから、ある程度の不完全駆動の柔軟性があると、作業がすごく楽になるんだ。" userName="Symmetry" createdAt="2025/07/17 17:56:30" color="#45d325">}}




{{<matomeQuote body="同感だよ。でも、すごく繊細な物を扱う場合は、その場合でも弾力性（そして重力も）を考慮に入れる必要があるね。" userName="stefanka" createdAt="2025/07/17 20:18:24" color="#ff33a1">}}




{{<matomeQuote body="UHMWPEみたいな素材で、非弾性で強度と直径の比率が高い腱を企業が試してるのかなって思った。Dyneemaを固定点に溶接する必要があるのかは分からないけど。" userName="fusslo" createdAt="2025/07/17 14:09:24" color="">}}




{{<matomeQuote body="RoboyはDyneema腱を使ってたと思う。流体アクチュエータも選択肢だね。個人的にはセンサー追加とセンサーフュージョンが必要だけど、コストと制御ソフトの要求は高まる。人型ロボットの研究は数十年やってるけど、自動運転みたいに問題は軽く見られがち。すぐには家庭で見かけないだろうな。" userName="stefanka" createdAt="2025/07/17 14:24:05" color="#ff5733">}}




{{<matomeQuote body="問題は、これらの問題が過小評価されがちなんじゃなくて、研究者たちが同じ間違いを何度も繰り返すのがすごく得意ってことだよ。" userName="fusionadvocate" createdAt="2025/07/17 16:31:04" color="">}}




{{<matomeQuote body="問題の本質を誤解してると思う。腱を使うなら、ロープの伸びや摩耗による摩擦の変化を補償するために、制御ループに継続的に学習できるニューラルネットワークが必要になるよ。ロボティクスの多くの問題は継続的学習に帰着するんだ。自己学習システムがあればシステム同定タスクは不要になるのに、AI業界はAGIがすぐそこって説いてる。" userName="imtringued" createdAt="2025/07/17 14:19:57" color="#ff5c5c">}}




{{<matomeQuote body="それに、腱は簡単に壊れて、交換がめちゃくちゃ面倒なんだよ（研究室でそういう”手術”に何度も立ち会わされたからね）。" userName="stefanka" createdAt="2025/07/17 14:29:17" color="#785bff">}}




{{<matomeQuote body="そのために必ずしもニューラルネットワークが必要ってわけじゃないよ。もっと特化した関数近似もあるんだ。それらはNNよりも速く学習できて、運動学や動力学のライフタイム学習を可能にし、より汎用的なNNよりも優れた外挿性を持つんだよ。" userName="stefanka" createdAt="2025/07/17 14:32:51" color="#ff5733">}}




{{<matomeQuote body="腱に縞模様みたいなエンコーダーパターンを付けて、マウスセンサーみたいなので追跡できるよ。これはサーボよりずっと軽い。もう一つのアイデアは、外部カメラを1つか2つ使ってディープラーニングモデルで指を追跡すること。でも、他の物が映ると面倒になるし、単純なセンサーより制御ループの遅延が増えるかもね。" userName="amelius" createdAt="2025/07/17 14:32:50" color="#45d325">}}




{{<matomeQuote body="スペースが許せば、関節に絶対エンコーダーを追加すべきだね。指だと難しいだろうけど、腕なら簡単だよ。" userName="stefanka" createdAt="2025/07/17 19:46:17" color="">}}




{{<matomeQuote body="圧力センサーと角度センサーをPIDループに繋げば十分だと思うんだけど、僕ロボット工学者じゃないからな。" userName="spauldo" createdAt="2025/07/17 17:55:25" color="">}}




{{<matomeQuote body="各関節でフィードバックループが得られれば、これで十分かもね。でも腕（このハンドじゃなくて）の場合、チェーンの末端しか観測できないことがよくあるから、そっちはもっと複雑だよ。" userName="stefanka" createdAt="2025/07/17 19:44:43" color="#ff5c5c">}}




{{<matomeQuote body="Will Cogleyが腱を使ったハンドのデザインをいくつか発表してるよ。こんなデザインもあるんだね！<br>https://www.youtube.com/@WillCogley<br>https://willcogley.notion.site/" userName="atrus" createdAt="2025/07/17 14:19:56" color="#38d3d3">}}




{{<matomeQuote body="世界は人間向けにデザインされてるから、ロボットがその利点を活かす方向に進化してるのを見るのは素晴らしいね！" userName="binsquare" createdAt="2025/07/17 15:30:22" color="">}}




{{<matomeQuote body="文字通り、最近公開されてるロボット会社の株価が上がってる理由がこれだよ。" userName="baq" createdAt="2025/07/17 16:35:00" color="">}}




{{<matomeQuote body="誰か、外骨格とか補助装置に関する似たプロジェクト知らない？" userName="agumonkey" createdAt="2025/07/17 16:42:39" color="">}}




{{<matomeQuote body="https://theopenexo.nau.edu/" userName="lucidrains" createdAt="2025/07/17 17:20:47" color="#ff33a1">}}




{{<matomeQuote body="うん、これは元々宇宙服で宇宙飛行士の手や手首、前腕の疲労を軽減するための技術なんだ。最後に確認した時は、2020年にいろんな理由でプロジェクトは中止になったみたいだけどね。=3" userName="Joel_Mckay" createdAt="2025/07/17 20:54:29" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="一番重要なのは、どれくらいの重さを持ち上げられるかってことだよね？もし0.5ポンドしか持ち上げられないとしたら、10、20、30ポンドとかを持ち上げられるようにするにはどんな変更が必要になるのかな？" userName="mandeepj" createdAt="2025/07/17 14:26:00" color="#ff33a1">}}




{{<matomeQuote body="ロボットハンドだけじゃなくて、腕がないと力がでないってばよ。腕とセットじゃないと意味ないんじゃない？" userName="micromacrofoot" createdAt="2025/07/17 15:05:28" color="">}}




{{<matomeQuote body="これは「腕は各自で用意してね」ってスタンスだよ。だから、指が壊れる力、掴む力、保持力、閉じる力、あとどれくらい物を持てるか（ペイロード容量）みたいな情報がもっとほしいな。" userName="horsawlarway" createdAt="2025/07/17 16:34:09" color="#45d325">}}




{{<matomeQuote body="3Dプリントもできるし、人間みたいなロボットハンドは面白いね。でもさ、人間の手って本当にロボットにとって最適なデザインなのかな？人間が進化してできた形であって、金属とかモーターで作るなら、もっと効率いい形があるんじゃないかって思うんだ。" userName="mft_" createdAt="2025/07/17 14:01:25" color="#785bff">}}




{{<matomeQuote body="人間が使うもの掴むなら、人間の手が一番！でも、ドアノブとか特定の物を掴むだけなら、もっとシンプルで安い専用のロボットハンドがいっぱいあるよ。産業用では普通だしね。多目的なら人間型がいいけど、特定の作業だけなら専用のが効率的。あと、人間ってロボットを擬人化しちゃうし、手は威圧感も少ないから、共同作業には向いてるね。" userName="LeifCarrotson" createdAt="2025/07/17 14:49:56" color="#ff5733">}}




{{<matomeQuote body="特定の物掴むロボットアーム作るなら、その物のデザインを変えちゃえばもっと簡単になるかもね。まるでネジとドライバーが一緒に進化するみたいにさ。" userName="Someone" createdAt="2025/07/17 15:19:05" color="#ff5c5c">}}




{{<matomeQuote body="そういえば、最近HNで『SpiRobs: Logarithmic Spiral-shaped Robots for Versatile Grasping Across Scales』っていう『ロボット触手』の論文が話題になってたよ。ケーブル数本でいろんな物を掴めて、すごそうじゃない？見てみてよ！<br>https://arxiv.org/pdf/2303.09861" userName="turtledragonfly" createdAt="2025/07/17 15:59:09" color="#ff5c5c">}}




{{<matomeQuote body="ネクロボティクスなんてどうだい？！死んだクモ使うやつ！人間の手そのものがロボットに使われるのはいつになるんだろうね？<br>https://www.smithsonianmag.com/smart-news/scientists-use-dead-spiders-as-robot-grippers-180980314/" userName="TechDebtDevin" createdAt="2025/07/17 14:38:42" color="">}}




{{<matomeQuote body="君の疑問は奥が深いね。ロボットが増える中で、人間の能力に合わせるか、機械の能力に合わせるか、って話だよな。俺は倫理的に人間の能力に合わせるべきだと思う。最低限に合わせた結果はもう見てるし、アクセシビリティの規制があるのもそのためさ。もし人間と違う能力のロボットを放置したら、人間の役割が減って、人間軽視につながるかもよ。" userName="ygjb" createdAt="2025/07/17 17:02:01" color="#785bff">}}




{{<matomeQuote body="特に、人間の動きを真似するだけでタスクの事前学習ができるのは、かなり強力だよね。" userName="hansvm" createdAt="2025/07/17 15:03:54" color="#ff5c5c">}}




{{<matomeQuote body="「最高」ってどういう意味かによるよ。だって人間の世界は人間のために作られてるから、既存の物の多くは人間の手に自然に互換性があるんだ。あと柔軟性も考慮して。一つの仕事には最高じゃないかもしれないけど、多くの仕事にはすごく使えるよ。" userName="atrus" createdAt="2025/07/17 14:21:54" color="#45d325">}}




{{<matomeQuote body="もっと良いデザインってあるのかな？真剣に聞きたいんだけど、正直分からないんだ。でも人間の手って、いろんなタスクにプログラムできるくらい多用途だって思うんだよね。" userName="magicmicah85" createdAt="2025/07/17 14:21:59" color="">}}




{{<matomeQuote body="人間の手は、人間のスケールにおける汎用グリッパーとしては間違いなく最高峰だね。進化が数億年かけて解明したことだし。でももし掴む物の範囲を限定できるなら、例えば紙切れとか、ひよこ、100x100mmの角型鋼材とかなら、間違いなくもっと良いデザインがあるはずだよ。" userName="beAbU" createdAt="2025/07/17 16:39:43" color="#ff33a1">}}




{{<matomeQuote body="そうとは限らないよ。人間の手は”損傷した部品を勝手に交換できない”という制約の中で本当に進化したんだ。もし交換用の指を入れ替えられるなら、指が3本でも十分だし、モデリングや把持計算もずっと簡単になるよ。" userName="eichin" createdAt="2025/07/17 20:07:11" color="#ff5733">}}




{{<matomeQuote body="人間が人間の手を訓練するのは簡単だよ。" userName="bigmadshoe" createdAt="2025/07/17 14:03:02" color="">}}




{{<matomeQuote body="現代社会は手を持つ者のために作られたから、現代社会と一般的にやり取りするために手を持つ者を作るんだ。この悪循環は終わるだろうけど、新しい技術の混乱期にはある程度の慣性的な不格好さは避けられないよ。特に第二次産業革命のような壮大な瞬間にね。" userName="a_wild_dandan" createdAt="2025/07/17 14:29:41" color="#38d3d3">}}




{{<matomeQuote body="僕はロボットのデザインで不必要に人間の手足を模倣してるのがあるって意見には同意するよ。例えば頭とか、車輪の代わりに足を使ったりするやつね。でも手に関しては、たくさんの製造物がその目的のために作られてるから、使えるんだ。" userName="espadrine" createdAt="2025/07/17 15:14:29" color="#ff5733">}}




{{<matomeQuote body="足が使われるのは、人間の手に似たものが好まれるのとほぼ同じ理由だよ。人間が設計した空間は、車輪移動に完璧には対応してないんだ。階段を乗り越える能力は家庭用ロボットにとって必須の条件だね。Roombaみたいなのが小さな段差で動けなくなるのはもううんざりだもん。" userName="swiftcoder" createdAt="2025/07/17 16:00:59" color="#ff5733">}}




{{<matomeQuote body="まあ、僕ら全員が脆弱な人間のデザインを改善するためにメカクローを装着してるわけじゃないからね。" userName="jjk166" createdAt="2025/07/17 16:39:32" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
