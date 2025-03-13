+++
date = '2025-02-15T00:00:00'
months = '2025/02'
draft = false
title = 'NASAが明かす！ソフトウェア開発のための10のルールとは？'
tags = ["NASA", "ソフトウェア開発", "プログラミング", "技術", "ルール"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> NASAが明かす！ソフトウェア開発のための10のルールとは？

引用元：[https://news.ycombinator.com/item?id=43061977](https://news.ycombinator.com/item?id=43061977)

{{<matomeQuote body="元の文書を読むと、それぞれの項目の目的が説明されているよ。<br>元はC言語向けで、重要なアプリケーションの信頼性をもっとチェックしやすくすることを目指しているんだ。著者はしっかりした知識があるし、Cコードを確認するための方法も色々教えてくれてる。私がCを学んだのは小さなシステムだったからか、原則がすごく理解できる。" userName="jph" createdAt="2025-02-16T00:02:21" color="#45d325">}}

{{<matomeQuote body="このPDFは、「安全に重要なコードを書く方法」の初版みたいなもので、DO-178やLOR1、DAL-A、882などの基準に影響を与えたんだろうね。<br>安全が求められるシステムのCコードを書く経験は、本当に勉強になった。748MBのRAMを使ってブラウザでコードを書く仲間より、もっと高いことをしなきゃと思ったよ。" userName="dgfitz" createdAt="2025-02-16T01:25:34" color="#ff5c5c">}}

{{<matomeQuote body="私も同感だよ。TFAは、私が初めて出会った意味のあるコーディング基準だと思う。ただ「関数につき2回以上のアサーション」のルールは疑問だな。2は恣意的だし、課題が発生したらまずシステムが生き延びることが優先だと思う。特にミッションクリティカルな組込みコードではね。" userName="astrobe_" createdAt="2025-02-16T08:55:58" color="">}}

{{<matomeQuote body="“2回以上のアサーション”っていうのは、「前提条件、後続条件、ループ不変条件」って読んでもいいかも。<br>基準はアサーションの前提と後続についてもう少し明確にすべきだと思うけど、自然な最低基準ではあると思うね。" userName="pdpi" createdAt="2025-02-16T15:44:27" color="">}}

{{<matomeQuote body="全部をZigに置き換えちゃえばいいかもね。" userName="revskill" createdAt="2025-02-16T06:29:42" color="">}}

{{<matomeQuote body="AirbusはすべてのフライトコントロールソフトをCで書いてるって知ってた？でもそれは、普通のC言語じゃなくて、特別なコンパイラやツールチェーンを使った、厳しく管理されたCのサブセットに近いんだ。" userName="rwmj" createdAt="2025-02-16T14:51:06" color="">}}

{{<matomeQuote body="AirbusはいくつかのプロジェクトでAdaも使ってるみたいだよ。<br>例えば、無人航空システムの開発にGNAT Pro Adaを選んだみたい。" userName="MaxBarraclough" createdAt="2025-02-16T15:50:29" color="">}}

{{<matomeQuote body="確かにAdaを選ぶのは理にかなってると思う。<br>でも私の理解では、Airbusのフライトコントロールシステムは何百万行ものCで書かれていて、すぐに書き直すことはないだろうね。形式的なソフトウェア検証にはたくさん投資してるみたい。" userName="rwmj" createdAt="2025-02-16T16:14:59" color="#ff5733">}}

{{<matomeQuote body="AirbusはCompCertを使ってるのかな？" userName="DrNosferatu" createdAt="2025-02-16T18:34:17" color="">}}

{{<matomeQuote body="たぶんそうだと思うけど、上流のバージョンではなくて、商業パートナーを通じて使ってるみたいだね。" userName="rwmj" createdAt="2025-02-16T19:11:13" color="">}}

{{<matomeQuote body="Zigの安全性はObject PascalやModula-2と同じレベルで、普通のCよりもずっといいんだ。ただ、弱点もあるし、AT&TのCycloneプロジェクトからもたくさん学んでるよ。" userName="pjmlp" createdAt="2025-02-16T07:26:30" color="">}}

{{<matomeQuote body="安定したリリースがまだのソフトウェアで安全重視のコードを書くのは避けた方がいいと思う。" userName="SkiFire13" createdAt="2025-02-16T11:57:12" color="">}}

{{<matomeQuote body="そうだね。安全性の高いコードを書くならCよりAdaが最適だよね。この記事でもAdaが言及されているし。" userName="MaxBarraclough" createdAt="2025-02-16T12:15:01" color="#ff5733">}}

{{<matomeQuote body="AdaでRESTサービスを作るにはフレームワークやツールにお金がかからない方法ってあるのかな？" userName="lenkite" createdAt="2025-02-16T15:51:50" color="">}}

{{<matomeQuote body="確かにAdaでモダンなWeb APIを実装することはできるけど、Adaの得意分野とは言えないよ。Ada Web Serverはフリーでオープンソースだけど、あまり使われていないみたい。" userName="MaxBarraclough" createdAt="2025-02-16T16:41:48" color="">}}

{{<matomeQuote body="小規模なプロジェクトでAdaを効率的に使うにはお金がかかりすぎるよ。" userName="nicce" createdAt="2025-02-16T13:50:12" color="">}}

{{<matomeQuote body="安全性が求められるソフトウェア開発について話しているけど、CやAdaに利点欠点がある一方でZigは選択肢にもならないよ。" userName="MaxBarraclough" createdAt="2025-02-16T15:42:54" color="#ff5c5c">}}

{{<matomeQuote body="全世界のソフトウェアを未検証の言語で書き換えるのが安全で信頼性のあるソフト作りに繋がるとは思えないけどな。" userName="otabdeveloper4" createdAt="2025-02-16T08:00:30" color="">}}

{{<matomeQuote body="＞元の文書ではコーディングルールは主にCを対象としているって説明してるね。宇宙工学のエンジニアたちはガーベジコレクタみたいな予測できないものが好きじゃないし、Cなら100%静的メモリ使用で詳細に時間を管理できるから。" userName="simne" createdAt="2025-02-16T20:19:10" color="#ff5733">}}

{{<matomeQuote body="＞こちらはP10の文書のリンクだね。元々IEEE Computerジャーナルに公開されたものだよ。" userName="throw0101d" createdAt="2025-02-17T15:08:24" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="物事の本質を理解してないから変な話が出てくるんだよね。" userName="cratermoon" createdAt="2025-02-16T14:41:19" color="">}}

{{<matomeQuote body="Cはあまり適した言語じゃないけど、NASAは静的チェックを助けるためのルールを考えたんだ。もしAdaやModula-2がもっと広く使われていたら、そんなルールは必要なかったかもね。" userName="nine_k" createdAt="2025-02-16T16:33:32" color="#ff33a1">}}

{{<matomeQuote body="ここのコメントでPower of 10を引用しに来た。JPLの高信頼性ソフトウェア開発プロセスについてDr. HolzmannのトークがYouTubeにあるけど、特に”Mars Code”が面白いと思うよ。" userName="RossBencina" createdAt="2025-02-16T06:23:47" color="#38d3d3">}}

{{<matomeQuote body="最後の段落は素晴らしいね：＞”もしルールが最初は厳しいと感じても、あなたの命がその正確さに依存するコードをチェック可能にするためのものだからということを忘れないで。あなたが乗る飛行機を制御するコード、あなたの近くにある原子力発電所、宇宙に宇宙飛行士を運ぶための宇宙船のコードがそれにあたる。ルールは車のシートベルトのようなもので、最初はちょっと不快でも、しばらくすると当たり前のようになり、使わないことは想像できなくなる。”" userName="throwaway2037" createdAt="2025-02-16T01:21:20" color="#785bff">}}

{{<matomeQuote body="電子機器に詳しいけど、完璧にコードを書いても、仮定が間違っているとシステムは失敗することもあるんだ。USBケーブルをちょうどいいタイミングで外したら、サーボがPWMパルスのカットを位置情報として解釈したことがあった。要するに、よく書かれたコードでも全てを保証するわけじゃないし、サーボの電源を外す終端スイッチみたいな物理的なバックアップが必要だよ。" userName="atoav" createdAt="2025-02-16T03:22:00" color="#ff5c5c">}}

{{<matomeQuote body="宇宙用のハードウェアのソフトを書くときは、実現不可能なコードパスを管理することが重要で、宇宙線や放射線の影響でどんなコードパスも完全に実現不可能ではないからね。" userName="colechristensen" createdAt="2025-02-16T05:11:46" color="">}}

{{<matomeQuote body="放射線耐性コンピューティングは全く別の、魅力的な問題で、それがどれだけ難しいか想像できないな。" userName="atoav" createdAt="2025-02-16T16:55:36" color="">}}

{{<matomeQuote body="デジタルサーボが問題を軽減できるんじゃない？" userName="arijo" createdAt="2025-02-16T04:27:54" color="">}}

{{<matomeQuote body="いや、デジタルサーボだったよ。アナログとデジタルのサーボの違いは、受信信号の処理方法だと思うけど、信号自体はあまり変わらない。デジタルがチェックサム付きのデータとして必要な仮想サーボを指しているなら、それは効果的だと思う。ただし、電源喪失時に優雅にシャットダウンできることが前提だけど。そんなサーボが存在するかは知らないけどね。" userName="atoav" createdAt="2025-02-16T12:00:28" color="">}}

{{<matomeQuote body="シートベルトのコメントがこの文章が書かれた時代を物語ってるよね。シートベルトは私の人生の中でずっと必要だったし、私や知り合いはそのことを気にしない。でもここでは、著者が皆が経験する痛みのポイントとして使っているんだ。" userName="pests" createdAt="2025-02-16T03:20:04" color="">}}

{{<matomeQuote body="面白い事実だけど、ボルボは今日使われている三点式シートベルトを長年の研究とテストの末に作り出して特許を取ったけど、すぐに他の自動車メーカーに無料で提供したんだ。今、企業がそれをするかは疑問だし、例えばVC支援の企業がそれをするイメージはできないな。" userName="danielscrubs" createdAt="2025-02-16T05:58:52" color="">}}

{{<matomeQuote body="同じように、ボルボの工場の外にある博物館は義務付けられたもので、古い有名モデルを展示しているわけじゃない。博物館は完全に車の安全性とボルボの取り組みに焦点を当てている。企業が長年にわたりコアバリューにこだわってきたのは興味深いね。" userName="mingusrude" createdAt="2025-02-16T08:26:31" color="#45d325">}}

{{<matomeQuote body="ボルボの車って、衝突の衝撃を乗客に直接伝えすぎるほど剛性がある（またはあった）車だっけ？" userName="euroderf" createdAt="2025-02-16T08:51:27" color="">}}

{{<matomeQuote body="確かに、現代のエネルギー吸収クレッパゾーンが開発される前の多くの車に、そういう問題があったと思う。前の部分は、エンジンブロックがコックピットに入り込んで運転手や乗客を押し潰すのを防ぐために剛性があったけど、あまりにも剛性過ぎるのも良くなかったみたいだね。" userName="Sharlin" createdAt="2025-02-16T10:41:16" color="">}}

{{<matomeQuote body="もしSVがシートベルトを開発したら：SaaS - シートベルトをサービスとして、３つのプランがある：- スターター：１日４回締め付け、月額２．９９ドル - スタンダード：１日６回締め付け、月額５．９９ドル - プレミアム：無制限の締め付け、月額９．９９ドル - *超過するとベルトは緩んだまま。地元の法律を確認してください。弊社は責任を負いません - **公正使用方針に従う。ポリシーはいつでも変更される可能性があります。運転前に確認してください。全プランは最大２人の乗員をサポートします。追加の乗員には別プランを申し込んでください。" userName="switch007" createdAt="2025-02-16T16:23:33" color="#38d3d3">}}

{{<matomeQuote body="確か、Teslaは充電システム関連の特許を無料で使えるようにしたよね。標準的な充電システムはどの車にも良いことだし。" userName="mjevans" createdAt="2025-02-16T09:22:53" color="">}}

{{<matomeQuote body="これって「補完財をコモディティ化する」に該当するんじゃないの？Teslaにとっては良いビジネスだし。" userName="WhyNotHugo" createdAt="2025-02-16T10:40:18" color="#785bff">}}

{{<matomeQuote body="バカな質問だけど、特許を「特許フリー」にするにはどうすればいいの？特許を取得して他の人にトロールされないようにするの？それとも法的な責任を果たさない約束が必要？" userName="throwaway2037" createdAt="2025-02-17T03:23:15" color="">}}

{{<matomeQuote body="彼らはかつてCEOの妻がナースということを広告して、彼女が安全を優先するようにロビー活動をしていた。" userName="fmajid" createdAt="2025-02-16T11:07:52" color="">}}

{{<matomeQuote body="今の例で言うと、MetaみたいにLLMをオープンソースにしてる企業もあるよね。あまり“公共の精神”とは言えない気がするけど、戦略的に考えられてると思う。でもVolvoも同じだったのかも。" userName="edanm" createdAt="2025-02-16T06:33:50" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="時代の遺物だね。昔の年配の人たちはシートベルトの法律を未だに恨んでいるし、「政府が俺に何をするか決めるな」って態度が根強い。" userName="ryandrake" createdAt="2025-02-16T05:59:55" color="">}}

{{<matomeQuote body="友達がスカイダイビングしてたけど、自分は運転が上手いと思ってて、意見が分かれるところ。でもスカイダイビングで命を救ったバックアップチューンの効果で、今は安全装備を重視してる。次の安全装置が来ると、人々はまた信じない傾向がある。" userName="technofiend" createdAt="2025-02-16T17:57:59" color="#ff5c5c">}}

{{<matomeQuote body="歳上だけじゃなくて、俺の友達もシートベルトをしないやつが多いし、俺が命令しないと着用しないよ。" userName="yellowapple" createdAt="2025-02-16T06:15:55" color="">}}

{{<matomeQuote body="俺の州では後部座席のベルト着用は義務じゃないけど、自分は着けてるし、他の人にも勧めてる。後ろの窓から投げ出された友達の話を知ってる。" userName="pests" createdAt="2025-02-16T06:33:38" color="">}}

{{<matomeQuote body="自分の車の後ろにいるやつがシートベルトをしてないなら、旅を始めたり続けたりしない。イギリスの古い安全ビデオもあるし。" userName="Symbiote" createdAt="2025-02-16T11:48:08" color="">}}

{{<matomeQuote body="ニュージーランドでは運転手が全ての乗客がシートベルトをしているか確認する責任があって、してない人がいたら法的責任を問われることもあると思う。" userName="PlunderBunny" createdAt="2025-02-16T22:50:42" color="#38d3d3">}}

{{<matomeQuote body="動画で何が起こったのか全然理解できないんだけど。後ろの客が前のシートを押して、運転手の頭をステアリングに押し付けるほどの力が加わるなんて信じられない。それなら運転席の設計の問題じゃないの？" userName="fingerlocks" createdAt="2025-02-16T12:56:29" color="">}}

{{<matomeQuote body="この1998年のBBCの記事によると、後部座席のシートベルトを全て締めてれば、毎年120件の死亡と1,000件の重大事故を防げるって。後部座席の乗客はシートベルトを締めてないと事故で死亡する確率が3倍なんだって。>「毎年50人以上が後部座席の人に当たってフロントシートで死亡する」" userName="MaxBarraclough" createdAt="2025-02-16T13:14:42" color="#785bff">}}

{{<matomeQuote body="運動エネルギーは速度の二乗に比例するから、正面衝突だと後部座席のシートベルトを締めてない物がミサイルになる。ノートPCの入ったバッグでも危険だから、足元に置いとくべき。人間は約70kgだからそれがどんだけ危ないか分かるだろ。" userName="cesnja" createdAt="2025-02-16T14:01:51" color="">}}

{{<matomeQuote body="前の人もシートベルトを締めてないとダメだよ。俺のいとこは正面衝突でフロントガラスを突き破って死んじゃった。" userName="yellowapple" createdAt="2025-02-17T02:33:24" color="#38d3d3">}}

{{<matomeQuote body="俺はシートベルトを常に締めてるし、友達や大切な人にも締めるように言ってる。でもシートベルトの法律には反対。国家の暴力が無くてもいいことにまで干渉するなんて。" userName="sneak" createdAt="2025-02-16T16:30:54" color="">}}

{{<matomeQuote body="君のウェブサイトも重要なミッションかもよ。ISSで動いてるコードに関わってるかもしれないからね。while true; do wget $NetOpWibby_website || sudo shutdown; done" userName="callc" createdAt="2025-02-16T03:27:49" color="">}}

{{<matomeQuote body="確かに、アホが重要なコードをデーティングサイトに依存させるリスクは考えないといけない。" userName="FpUser" createdAt="2025-02-16T05:20:09" color="">}}

{{<matomeQuote body="将来、科学者は微小重力での人間の繁殖を研究したいだろうから、実際に「デーティングサイト」に依存するミッションクリティカルなコードが必要になるかもね。" userName="yellowapple" createdAt="2025-02-16T06:28:55" color="#38d3d3">}}

{{<matomeQuote body="２つの例を挙げられるよ。<br>＞「Perez v. Sharp」のリンク<br>＞「Loving v. Virginia」のリンク" userName="yellowapple" createdAt="2025-02-17T23:27:13" color="">}}

{{<matomeQuote body="これらのルールについて自分が批判するなら、OPとは全然違う意見になると思う。setjmp/longjmpを擁護する記事は本当に信じられなかったし、その議論がおかしいと思う。関数の長さが理解しやすさと関係ないと思うし、アサーションも２つに限る必要はないと思う。" userName="AndyKelley" createdAt="2025-02-15T22:39:41" color="">}}

{{<matomeQuote body="ハードウェアが常に信頼できない環境では、ループの上限をハードコーディングする必要がある。NASAの経験を信じたい。" userName="kevin_thibedeau" createdAt="2025-02-15T23:15:37" color="#ff33a1">}}

{{<matomeQuote body="上限が必要な理由は、宇宙放射線やハードウェアの信頼性ではない。ネイティブドキュメントにはそう書いてあるよ。" userName="olalonde" createdAt="2025-02-16T01:31:54" color="">}}

{{<matomeQuote body="放射線による信頼性の問題は、この上限に対して無関係だと思う。ハードコードされた値が逆に影響を受けるかもしれない。" userName="AnimalMuppet" createdAt="2025-02-16T00:28:08" color="">}}

{{<matomeQuote body="ループが安全な状態に早く戻ることを保証するために必要だよ。" userName="kevin_thibedeau" createdAt="2025-02-16T00:46:59" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="そのシステムではコードはROMから実行されるの？もしRAMに読み込まれるなら、上限値も放射線によって変わる可能性がある。言葉使いには注意が必要だよ。" userName="AnimalMuppet" createdAt="2025-02-16T01:00:02" color="">}}

{{<matomeQuote body="RAMやROMはECCで保護されてることが多い。このような信頼性の低い環境でソフトウェアが正常に動作することを考慮しなければ！" userName="kevin_thibedeau" createdAt="2025-02-16T01:26:46" color="#ff5c5c">}}

{{<matomeQuote body="投票型CPUってあるよね？それを使えば同期が取れなくなったものは廃棄して再起動できるし、それがハードコードされても変わらないと思う。" userName="cjbgkagh" createdAt="2025-02-15T23:22:16" color="">}}

{{<matomeQuote body="JPLのミッションでは独立した2台のコンピュータを使っていて、片方がアクティブな時、もう片方はスタンバイ状態だね。Marsの着陸時には、主ソフトに問題があった時に備えて、別の簡易版EDLコードを走らせるって話も聞いたことあるよ。" userName="pauldino" createdAt="2025-02-16T03:44:35" color="#38d3d3">}}

{{<matomeQuote body="投票式のCPUは打ち上げ時に使われる話は聞いたことあるけど、他の宇宙船では冗長性のレベルはバラバラみたいだね。" userName="mr_toad" createdAt="2025-02-16T00:05:10" color="">}}

{{<matomeQuote body="ここで説明されている障害モードについて詳しく教えてもらえる？レジスタやメモリがビットフリップするモデルを考えると、全ての信頼性が揺らぎそうなんだ。" userName="dooglius" createdAt="2025-02-16T01:22:34" color="">}}

{{<matomeQuote body="高エネルギー放射線がデジタル回路に影響を与えることがあるよね。特に状態を保持している部分やデータを送信している部分が影響を受けると、問題が起きることも。冗長性を使う設計アプローチがあるけど、実際には必ずしも実用的じゃないこともある。" userName="kevin_thibedeau" createdAt="2025-02-16T01:39:14" color="#38d3d3">}}

{{<matomeQuote body="これは高い信頼性のコンピュータでよく見られる脅威モデルの一部だよね。プロセッサをロックステップで動かして、状態がずれたらエラーを出すのが一般的な対策。" userName="AlotOfReading" createdAt="2025-02-16T01:50:27" color="">}}

{{<matomeQuote body="非自明なコードでの例外処理は、エラーを処理するためのif-elseより高速なんだ。ただし、それが言語に依存しちゃうけどね。" userName="bluGill" createdAt="2025-02-15T23:14:51" color="">}}

{{<matomeQuote body="非自明なコードが多いって部分が重要だね。少なくとも.NETやJavaでは、例外を投げるのはエラーコードを返すのの100倍も時間がかかる場合があるよ。" userName="throw-qqqqq" createdAt="2025-02-15T23:39:14" color="#ff33a1">}}

{{<matomeQuote body="”.NETやJavaでの例外は、スローするときよりもスタックトレースを構築する際に重くなっちゃうんだ。スタックトレースを無効にするコンストラクタもあるから、もっと効率的にできるよ。" userName="mkleczek" createdAt="2025-02-16T09:53:26" color="">}}

{{<matomeQuote body="”例外を投げるのはエラーコードを返すのの100倍かかるって言われてるけど、チェックを毎回実行するのが前提なら、少し違う話かもね。" userName="jayd16" createdAt="2025-02-16T00:21:04" color="">}}

{{<matomeQuote body="”ブランチがホットパスに近いと、命令キャッシュに影響を与えやすいけど、例外の方がこの影響は少ないかもしれないね。" userName="rocqua" createdAt="2025-02-16T00:32:36" color="">}}

{{<matomeQuote body="”.NETやJavaを宇宙船のMCUで使うことなんか考えられないよ。Cのsetjmp/longjmpだと例外処理が一番軽いっていうしね。" userName="tempodox" createdAt="2025-02-16T00:01:47" color="">}}

{{<matomeQuote body="例外が発生した時にだけコストがかかるから、実行時チェックの1％以上で例外が発生してるならおかしいかも。" userName="elygre" createdAt="2025-02-16T09:38:30" color="">}}

{{<matomeQuote body="リアルタイムプログラミングは、静的な期限保証のためにスループット（パフォーマンス）を妥協することが多い。例外処理は特にバランスを取るのが難しいよ。" userName="AlotOfReading" createdAt="2025-02-15T23:57:14" color="">}}

{{<matomeQuote body="コードはどうやって例外を投げるの？OSからシグナルが送られてきたら？ビジネスロジックはどうやって投げる値を決めるのか。" userName="eptcyka" createdAt="2025-02-16T11:00:47" color="">}}

{{<matomeQuote body="＞時には2つのアサートできるものがないこともある<br>1つのアサート可能なものがあれば反対条件もアサート可能じゃない？無視するのは簡単だけど、ランダムなビット反転とか放射線の影響でロジックが予想通りに動かないかもしれない。" userName="cratermoon" createdAt="2025-02-16T14:51:27" color="#45d325">}}

{{<matomeQuote body="久しぶり！Zigがうまくいってるのを見て嬉しいよ！例外処理については詳しく書かれてないね。個人的には、例外処理は良い悪いではなく、使う文脈が大事だと思ってる。Cはチェックがないから厳密なアサートやフラグ確認が必要で面倒。Rustは境界チェックがあるから便利。ただ、Rustのパニックからの復帰は例外処理と見なすか微妙だね。多くのプログラミング言語は例外処理を提供していて、いつどこで例外を処理するかが問題に。普段はアプリコードでは例外処理が役立つけど、システムレベルでは慎重に使うべき。" userName="caspper69" createdAt="2025-02-16T00:18:46" color="#785bff">}}

{{<matomeQuote body="＞Ada、Pascal（Delphi）、JavaScript、関数型言語を使っている人は、関数をできるだけローカルに宣言すべき。<br>個人的にはJavaScriptで、特に外のスコープから値をキャッチしたい時以外はネストした関数を定義しない。古い考えが残ってるけど、もう現代のJavaScriptは最適化されてると思う。NASAのルールが伝えたい注意深さには賛同するよ。" userName="zoogeny" createdAt="2025-02-15T21:53:15" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
