+++
date = '2025-06-02T00:00:00'
months = '2025/06'
draft = false
title = '2025年にロボット工学を学ぶには？何から始めればいい？'
tags = ["ロボット工学", "学習方法", "プログラミング", "ハードウェア", "ROS"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> 2025年にロボット工学を学ぶには？何から始めればいい？

引用元：[https://news.ycombinator.com/item?id=44158353](https://news.ycombinator.com/item?id=44158353)




{{<matomeQuote body="このコースをやってみたら？<br>https://github.com/henki-robotics/robotics_essentials_ros2<br>完全に無料だし、PCがあれば他に何もいらないよ。<br>俺は大手企業で4年間ロボットの電気ハードウェアを設計してきたけど、面白くてお金になるのは software の方だと思う。でも別のスキルがあるのも最高だね。Robotics はいろんな分野が集まるところだから、いいチームを見つければ成長できるよ。<br>このコースの次は Embedded が隣接分野かな。Zephyr project みたいなのがいいかも。<br>mechanical に挑戦したいなら、A1 mini を買って onshape (www.onshape.com) で最初のパーツ、モーターや基板のサポート、 gripper を自分で設計してみるといいよ。<br>electrical engineering は一番落とし穴が多くてお金もかかる。電圧を間違えると魔法の煙が出て、基板がまた30$かかる。慎重にね。RP2040 とか RP2350 から始めるといい。安くて資料も豊富だよ。このスキルは Embedded の coding と一緒に伸びていくよ。小さく始めよう。bigboys や brushless で FOC control に飛ぶ前に、H-bridge と brushed motors を学ぶんだ。安い soldering iron を手に入れよう。できれば JBC C245 tips のクローンがいいね。一番使いやすくて、alie xpress とかで45か50$で見つかるよ。現場にあるツールに近いのを安く手に入れられる。<br>ROS meetups を探してみるといい。どこにいるか教えてくれればいくつか紹介できるけど。<br>そして何よりも、長い旅になるからね。諦めないで、自分のペースでやればいいけど、目標は忘れずにね。" userName="borjah" createdAt="2025/06/02 14:23:22" color="#ff33a1">}}




{{<matomeQuote body="この分野にいるけど、この記事の最初の方向には同意できないな。オンラインの ROS2 コースでチェックボックスを埋めるだけじゃ、意味のある形で Robotics を学べないよ。<br>Robotics は mechanical engineering や electrical engineering の知識に mathematics と software development が組み合わさった複合的な分野だ。これらの分野全てで意味のある練習をするには、ロボット掃除機を’イチから’作り直すことをお勧めするね。<br>実際の掃除機部分は必須じゃない。本当にやろうとしてるのは有名な’turtle’ロボットを実装して、設計の全ステップ、妥協、課題を実体験することだからね。目標としては、安物のロボット掃除機と同等に家の中を自律ナビゲーションできるように目指すといいよ。<br>周りには Robotics がたくさんあることを忘れずにね。ほとんどの乗用車、 consumer drones、 micro-mobility devices、 modern construction equipment は’ disguised ’された Robotics の度合いが違うだけだ。これらのシステムの実際的な知識は、どこに応用すればいいか分かっていれば、すごく役に立つんだ。" userName="korse" createdAt="2025/06/02 17:34:21" color="#ff5733">}}




{{<matomeQuote body="これ、’How to Draw an Owl’ の meme みたいに感じるな。自律ナビゲーションロボットをイチから作るだけでしょ…" userName="nightski" createdAt="2025/06/02 22:37:03" color="">}}




{{<matomeQuote body="似てるけど、このアドバイスは software professional には役立つはずだよ。実行可能で、しっかりdocumented な目標だし、きっと気にするであろう基本を網羅してる。もしどのステップか extra な説明が必要でも、 project の選択肢のおかげで、その特定のステップについて何百もの役立つ resources が見つかる保証がある。その基本 background があれば、次のステップも見つけやすく、理解しやすくなるよ。" userName="hansvm" createdAt="2025/06/02 23:18:23" color="">}}




{{<matomeQuote body="’look it up’ 以外にアドバイスがなかったね。この分野が初めてで、たくさんの resources と approaches に overwhelmed されてる人にはあまり helpful じゃないな。もし ’documentation’ を知ってるなら、 just getting started の人のためにそういう resources への links を提供する方が useful だよ。<br>僕が getting started する上で solid な resource だったのは、Probabilistic Robotics って textbook だ。 state of the art じゃないかもしれないけど、この topic については great な resource だと感じるね。<br>[1] https://robots.stanford.edu/probabilistic-robotics/" userName="nightski" createdAt="2025/06/03 16:04:34" color="#45d325">}}




{{<matomeQuote body="＞ You aren’t going to ’learn robotics’ in a meaningful manner by checking the boxes in a online ROS2 course.<br>これが一番いい答えだよ。他の答えは全部 ’Run this simulation of a robot’ って言ってるけど、 simulation は robot じゃない。<br> simple な lego tupe robot kit ですら、現実世界の moving parts がどれだけ fiddly で complex かを見せてくれるんだ。" userName="shantnutiwari" createdAt="2025/06/03 09:43:20" color="">}}




{{<matomeQuote body="これの super basic 版をやってみたけど、すごく fun だったよ。 online で chassis を買ったんだけど、 tank treads がついてて、それぞれに motor があったんだ。 Arduino を使ってそれぞれの tread に動く signal を送って、 distance sensor で object に近づいてるか分かるようにしたんだ。もし目の前に何かを sense したら、 just 90 degrees 回転して keep going したんだ。<br>Super simple だったけど、ここまでできたのは big accomplishment って感じたね。" userName="signaleleven" createdAt="2025/06/04 16:25:01" color="#785bff">}}




{{<matomeQuote body="もっと data-sciencey な background の人にはどこから始めるのがおすすめ？ VSLAM みたいな algorithms は mess around with するのに面白そうだけど、 whole robot を build するのは just daunting に感じるな。" userName="morkalork" createdAt="2025/06/02 20:12:18" color="">}}




{{<matomeQuote body="In that case は Robotics を学びたいんじゃなくて、 VSLAM を学びたい sounds like だね。<br> car manufacturing をどう学ぶか聞いてるけど、 really は just rubber tyres を try to make したいだけって感じ。" userName="exe34" createdAt="2025/06/03 17:59:52" color="">}}




{{<matomeQuote body="ロボット開発って目標が見えにくいんだよね。かっこいいロボットも結局おもちゃみたいに感じちゃう。大学でメカトロニクスを学んだけど、事業としてやるのは信頼性とかコストとか、ソロ開発者にはすごく難しいよ。" userName="drekipus" createdAt="2025/06/02 20:58:39" color="">}}




{{<matomeQuote body="そうそう、ソロ開発で信頼できて手頃なロボットは難しいって同意。もし簡単ならもっと普及してる。プロダクト開発のトレードオフ（速い・安い・良いから二つ）みたいに、ロボットは「安い・信頼できる・多機能」の一つを選びがち。「かっこいい」じゃなく制約を決めるのが大事。信頼性は時間と労力がかかるQA次第。" userName="pixl97" createdAt="2025/06/02 21:56:57" color="#38d3d3">}}




{{<matomeQuote body="電気工学は落とし穴が多くて高くつくっていうけど、電圧間違えるとボードがダメになるよね。Derek Molloyの「Exploring Beaglebone」（ISBN 978-1-118-93512-5）は面白かったよ。「Beagleboneを破壊する方法」とか「電子機器との接続方法」の章も。サイトは壊れてるけど、1.8Vアナログ入力への電圧クランプ回路とかボードを救うヒントがある。" userName="hommelix" createdAt="2025/06/02 18:59:11" color="#ff5733">}}




{{<matomeQuote body="ロボット開発の面白いところは、自分の作ったものが現実世界で動くのを見れることだよね。そこがより満足感につながるかも。" userName="sabareesh" createdAt="2025/06/02 17:17:33" color="">}}




{{<matomeQuote body="それマジでそう！<br>ロボットが動くのを見る時の達成感とか喜びは、もう言葉にできない最高な気分だよ！" userName="borjah" createdAt="2025/06/02 19:34:54" color="">}}




{{<matomeQuote body="RP2040とかRP2350のプログラミングスキルって、Siemens SIMATICみたいな商業用プラットフォームにどう活かせるんだろう？" userName="varispeed" createdAt="2025/06/02 15:00:56" color="">}}




{{<matomeQuote body="マイコンとPLCは元々違うけど最近は重なる。PLCはリレーロジックから来てて、産業機械制御ならラダーロジックと安いAutomation Direct PLCがいいかも。RPi系マイコンは組み込み電子工作、サーボ制御、リアルタイムOS向け。コンピュターエンジニアリングと制御システムは別だけどスキルは重なる。僕はコンピュターエンジニアリング卒でPLC未経験だけど、信頼性いる単発案件でよくPLCに出会うよ。" userName="schlauerfox" createdAt="2025/06/02 16:13:50" color="#ff33a1">}}




{{<matomeQuote body="PLCは工場アーム向けでスペースが必要。Anybotics AnymalやBoston Dynamics Spotはスペース不足で使わない。省エネ性も◎。マイコンはFOCモーター制御でも1W以下。HP SitePrintでの経験だとPelican Caseに収めるのが大変で最小PLCでも体積取るほど。だから家で実験できて安くドキュメント豊富なマイコンを勧めた。ヨーロッパではSTM32が主流だけどドキュメントがごちゃごちゃで難しい。" userName="borjah" createdAt="2025/06/02 17:09:28" color="#38d3d3">}}




{{<matomeQuote body="もし何か良いドキュメント集めてたら、リンクとか教えてくれると嬉しいな！<br>もし気が向いたら、PDFとかでも（Gmailのユーザー名はHNと同じだよ）。ありがとう！" userName="dotancohen" createdAt="2025/06/02 21:05:33" color="">}}




{{<matomeQuote body="STM32かRP2040について？どっちのマイコンについて知りたいの？" userName="borjah" createdAt="2025/06/04 07:11:26" color="">}}




{{<matomeQuote body="ESP32のことだよ。教えてくれてありがとう！<br>偶然だけど、工場のダッシュボードを管理してる古いRaspberry Piをいっぱい引き継ぐことになりそう。でも低スペックなDebianサーバーって感じで、普通のサーバー管理と変わらなそうだね。" userName="dotancohen" createdAt="2025/06/04 08:22:07" color="">}}




{{<matomeQuote body="＞楽しさもお金もソフトウェアにある<br>これ、AIのブレークスルーがあったら変わるかもね。今後数年で起こりそうだし。どう思う？" userName="amelius" createdAt="2025/06/02 15:54:37" color="#ff5733">}}




{{<matomeQuote body="うーん、確かにそうだけど、優秀なコーダーは代替されないと思うな。<br>うちのソフトウェアチームもAIを試してるけど、PoCをサクッと作るのには役立つけど、めっちゃ特定のカスタム作業をしようとするとすぐダメになるんだよね。<br>今後数年だと、パス計画とか逆運動学とか物体認識は確実にできるようになると思う。AIはあくまで学ぶべき”ツール”だよ。でも、ソフトウェア担当全体を置き換えるってのは正直考えられないな。<br>小説”Beyond the Blue Event Horizon”みたいに、AIエージェントは今のジュニアエンジニアがシニアに対してそうであるように、チーム全体の置き換えじゃなくて補佐的な感じになるんじゃないかな。" userName="borjah" createdAt="2025/06/02 17:21:17" color="#45d325">}}




{{<matomeQuote body="ロボットAI革命に本当に必要なのは、うまく作られてて安くて信頼できるロボットを何万台も展開して利益を出し、顧客から大量のデータをプライバシー守りつつ集めて、H200数千台でそのデータでモデルを学習、数週間ごとにそのモデルをロボットにデプロイするサイクルだよ。それ以外は簡単。" userName="beau_g" createdAt="2025/06/02 19:29:16" color="#ff5c5c">}}




{{<matomeQuote body="AIはコーディングを単純化するけど、ロボットソフトウェアの複雑さと範囲は増えるだろうね。<br>ロボティクス向けMLは今のロボット設計問題を単純化するから、ロボティクスエンジニアの需要は増えるけど、日常業務は面白くなくなるかも。<br>両方起こるって？それってもうAGIなんじゃないの？" userName="lpzimm" createdAt="2025/06/02 18:04:00" color="#45d325">}}




{{<matomeQuote body="ロボット工学、間違いなく始めやすくなってるね！でも従来のウェブやデスクトップ開発とは全く違う世界だから、学習曲線が急でも驚かないで。頑張って続けてみて！<br>・Amazonとかで小さいロボットキット買ってみて。YahboomとかHugging FaceのSO-ARM101とか良いよ。良いキットだとJetson Nano込みで250ドルくらいから、センサー増やせば1000ドルくらいまで。<br>・本物のロボット買えないなら、Isaac SimやMujocoみたいなシミュレーターで遊ぶのもアリ。<br>・Hugging FaceのMLロボティクス向け素晴らしいフレームワーク、LeRobotもチェック！<br>・ROSの基本（pubsubとか）を学んでおこう。使わなくても業界用語やデザインパターンはROSから来てるから理解に役立つよ。ROSはRuby on Railsみたいに意見が多い全部入りフレームワークって考えて。<br>・ROSには古典的な方法で操作（MoveIt）やナビゲーション（Nav2）をする良いライブラリもあるよ。<br>・詰まったらChatGPTやCursorみたいなAIツールを活用してみて。最初は用語すら分からない時にググるよりずっと早い。<br>・（宣伝）僕が作ってる2つのツールも見てね：ログ記録のmcap.devと可視化のfoxglove.devだよ。" userName="amacneil" createdAt="2025/06/02 14:49:23" color="#ff5733">}}




{{<matomeQuote body="SO-ARM101とLeRobotのチュートリアルから始めるのを強く勧めるよ。超安いし、めちゃくちゃ早く始められるし、https://partabot.com みたいなとこで完成品キットも買える。これ、今やロボティクスの”Hello World”だと思うな。<br>Jetson Nanoは気にしなくていいよ。始めるのに必要ないし、必要になる頃にはもうたくさん学んでるから。ラップトップからロボットを動かせばいいだけ！<br>自分でVLAモデルをファインチューニングするのも超早くて簡単なんだ。他の人がチュートリアルを完了して学習／評価データをアップロードした例がここ（これも宣伝ごめんね）で見れるよ：https://app.destroyrobots.com<br>最初はROSはあんまり気にしなくていいと思う。重くてつまづくし、スタートアップはもっと開発者フレンドリーなRustベースの組み込みとか他のアプローチに移ってる。<br>USB接続のロボットでもかなり色々できるからね！" userName="carlosdp" createdAt="2025/06/02 21:03:47" color="#785bff">}}




{{<matomeQuote body="たぶんROSはロボティクスを始めるのに良い方法だし、AGVなら学ぶべきことの中でも最もリソースが豊富なものだろうね。<br>でもそれはAGVだけだよ。空中に行くと全部Mavlink（昔からそう）、ASVやAUVは今でもMOOSで動いてるし、ロボットアームはMoveItよりABB studioを使う可能性の方がずっと高いし、研究は古典的な方法じゃなくてLeRobotを使ったend-to-end制御に向かってる。IoTシステムはほとんどHome Assistantで、中にはMQTTを直接使うのもある。<br>ROSはおそらく私たちROS開発者が信じたいほど遍在してるわけじゃないよ。何を学ぶべきかは、入りたい分野によるってことだね。" userName="moffkalast" createdAt="2025/06/02 19:24:00" color="#38d3d3">}}




{{<matomeQuote body="まさにその通り！あなたの言ったことに全部同意だよ。<br>ROSは産業界で今でもすごく使われてるし、絶対的な数も増えてるけど、新しいフレームワークや研究のほとんどはe2e手法に向かってるね。<br>でもROSを使わないとしても、pubsubとかログ記録＋再生、transformsみたいなROSのアプローチ方法の基本的な知識があるとすごく役立つよ。" userName="amacneil" createdAt="2025/06/02 23:09:41" color="#ff5c5c">}}




{{<matomeQuote body="個人的には、学ぶにはこれが一番いい方法の一つだなと思うよ。https://store.steampowered.com/app/573090/Stormworks_Build_a...<br>このゲームの目的は、災害救助とか自然災害に対応するための乗り物を作ることなんだ。キャリアモードもあるけど、ほとんどの人はサンドボックスモードで遊んでるね。そこで、特定の目的のための乗り物を design して、ゲームが生成する mission を選ぶように設定できるんだ。例えば、 land rescue mission だけに対応するとか、敵の AI だけと戦うとかね。<br>building system はマジで in depth だよ。構造的な強さは気にしなくていいけど、部品の配置とか CG location、船の buoyancy のための internal volume なんかは考慮しないといけない。それから推進システムだね。これは部品から組み立てる必要があって、ゲームにはかなり in depth な internal combustion engine simulator があるんだ。 custom engine を作って、適切な fuel と air を供給して、ちゃんと冷やす必要がある。 jet engine も作れるし、 nuclear も electric も全部できるよ。<br>次に mission のためのシステムを組むんだ。例えば、 container を運ぶには、持ち上げるための crane を作る必要がある。<br>最後に、このゲームには microcontroller system があって、これが cool なことするための bread and butter だね。データ（GPS、 laser distance、 pitch、 roll、 heading、 radar とか）を読み取れるセンサーがたくさんあって、それを microcontroller に送って、 logic blocks か Lua code で計算できるんだ。それが automation を作る方法さ。 PID controller tuning とか、 trigonometry math（ distance sensing 用とかね）、 state machine coding practices とか、 real world に全部応用できることにすごく慣れるよ。" userName="ActorNightly" createdAt="2025/06/02 18:07:41" color="#38d3d3">}}




{{<matomeQuote body="まず、目的を決めなよ。そうすれば形が決まってくるから。電気 engineering の知識があれば、俺みたいにミスをたくさんしないで済む。機械 engineering を知ってれば、 component の design に俺がかかったほど時間はかからない。有能な programmer なら、 hardware を cohesive whole に統合するのも俺ほど遅くない。 The Design of Everyday Things を読んでいれば、 accessible にするという点で一歩先に行けるぜ。" userName="r2_pilot" createdAt="2025/06/02 13:37:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="動画を見たりネットで読んだりするより、 hands dirty にするのが価値があると思うな。<br>始めるなら、 Arduino（またはそれより安い equivalent）付きの RC car をいつも勧めるよ。<br>以下のものは $100 未満で手に入るはず：<br>SG90 servo motor<br>28BYJ-48 stepper motor<br>ULN2003 driver board<br>UNO R3 Controller Board（Elegoo）<br>RC car chasis ／3D printed chasis<br>いじり倒して、センサーとかカメラとか追加してみなよ。次には robotic arm を作るのがいいかな。" userName="_tqr3" createdAt="2025/06/02 16:26:39" color="#ff5733">}}




{{<matomeQuote body="冗談じゃなく、あの Lego robotics kit も入門には全然使えるぞ。子供向けでも全然いいんだ。<br>俺が始めたときは、マイクロコントローラーとか breadboards、センサー、 actuators だった。大学の時だったけど、もうちょっと high-level なもので先に遊んでおけばよかったな、って思うんだ。" userName="TrackerFF" createdAt="2025/06/02 13:54:11" color="#ff5c5c">}}




{{<matomeQuote body="lego mindstorms kit はマジで良かったね。 hardware が nice and modular で、全く同じ motor でも同じように動かないことがある、みたいな real な教訓も学べるんだ。" userName="datadrivenangel" createdAt="2025/06/02 14:07:27" color="#ff5733">}}




{{<matomeQuote body="Mindstorms シリーズはもう discontinued だけど、今は Lego SPIKE Prime があるよ（ classroom 向けに marketed されてるけどね）。 Mindstorms EV3 と同じで、 visual block language か MicroPython で program できるんだ。" userName="neuronexmachina" createdAt="2025/06/02 16:11:41" color="#ff5733">}}




{{<matomeQuote body="あと https://pybricks.com も見てみな。これを使うと、もっと多くの LEGO set で MicroPython の support が得られるんだ。個人的には https://pybricks.com/project/saving-lego-mindstorms/ は特に interesting だと思う。" userName="aivarannamaa" createdAt="2025/06/06 07:22:58" color="#ff5733">}}




{{<matomeQuote body="みんなの response は、 great なのが多いけど、 software に focus しすぎてるね。わかるけど、この分野には hardware の世界がまるまるあるんだよ。ちゃんと動いて、しかも長持ちする mechanism の design とか、 custom motor、 controller、 actuator、 hardware を学ぶこと。<br>そのためには、今は great な entry point がいくつかある。 pololu robotics、 Adafruit、 sparkfun とか、どれも相変わらず良くて、 building や eventually design hardware に飛び込むのに最高の starting point だよ。" userName="iancmceachern" createdAt="2025/06/02 17:13:28" color="#ff33a1">}}




{{<matomeQuote body="Robotics はこれまでになく accessible になってるよ。欲しいものはほとんど何でも作れる技術がある。でっかく夢見ろ！ Cameras も数ドルで買えるし、 microphone arrays、 sensors、 motors and drivers。 3D printer も everywhere だし、 stock component も手に入る。<br>または ’ manage your expectations ’して、 ROS を download して、 mediocre な turtle bot を作って、 abstract の勉強に一年かけるかだな（もし Nvidia の Teraflop chip が sdk を boot させてくれるなら、だけど）。" userName="fusionadvocate" createdAt="2025/06/02 14:06:19" color="">}}




{{<matomeQuote body="Inspiring ではあるけど、どこかに到達するためには、 learning curve をもっと緩やかにする必要があるみたいだな。 Small incremental steps がすべてだよ。" userName="worldsayshi" createdAt="2025/06/02 15:06:38" color="">}}




{{<matomeQuote body="何か作りたいならLerobotをチェックしてみて！ハードウェアならSO-ARM100も参考になるよ。2週間後にはハッカソンもあるし、参加して人脈作るのもいいね！<br>https://huggingface.co/lerobot<br>https://github.com/TheRobotStudio/SO-ARM100<br>https://huggingface.co/LeRobot-worldwide-hackathon" userName="beklein" createdAt="2025/06/02 13:36:20" color="#785bff">}}




{{<matomeQuote body="もしNYCにいるなら、Betaworksオフィスで6/14-6/15のハッカソンに参加できるよ！<br>https://lu.ma/z3z9ipke" userName="deepinsand" createdAt="2025/06/02 17:23:54" color="">}}




{{<matomeQuote body="古いRoombaを買って、部品取りにして自分のプロジェクトに使うのも一つの方法だよ。これがその例ね！<br>https://youtu.be/mTpkV7xZln0" userName="GaggiX" createdAt="2025/06/02 14:45:08" color="#ff5c5c">}}




{{<matomeQuote body="エンジニアのあなたなら、First Roboticsのチームでボランティアとして高校生に専門知識を教えてあげるのもいいよ！" userName="jmpman" createdAt="2025/06/02 15:53:30" color="#ff5733">}}




{{<matomeQuote body="高校生なら、First Roboticsのチームに参加してみて！大きなロボットを作って、競技みたいに競わせるんだ。プログラミングからメカニカルエンジニアリングまで、いろんなスキルが学べるよ！" userName="kens" createdAt="2025/06/02 18:55:55" color="#ff5c5c">}}




{{<matomeQuote body="初心者なら、First Robotics Lego Leagueの方が取り組みやすいと思うな。小さいレゴのロボットを作るし、シーズンも秋から始まるんだ。私は長年コーチをしてるけど、技術的に複雑なロボットよりシンプルでエレガントなデザインが問題をうまく解決することもあるって学んだよ。ロボット作りはいろんなスキルが必要で、チームでやるのが普通だよ。" userName="johnrgrace" createdAt="2025/06/02 20:14:02" color="#45d325">}}




{{<matomeQuote body="息子が大きくなったら、私もコーチをやってみたいなって思ってるんだ。初めてコーチをする人へのアドバイスがあれば教えて！" userName="elteto" createdAt="2025/06/02 20:39:49" color="">}}




{{<matomeQuote body="FIRSTやそのチームは、初心者にもすごく協力的だよ。近くのチームに連絡したり、イベントにボランティア参加してみるのがおすすめ！特に競技会場のピットでチームの人と話すと、いい情報がたくさん得られるよ。SourceはFRCのボランティアジャッジだよ。" userName="mikegreenberg" createdAt="2025/06/03 01:48:25" color="#785bff">}}




{{<matomeQuote body="本当に同感！FIRSTは素晴らしい組織だよ。ボランティアやチーム立ち上げについていくつかポイントを。FRCのチームを始めるのは大変で、時間とお金がかかる。FLLは大人には少し物足りないかも。中間的なFTCが、より実践的なロボティクスに触れるのに良いし、やる気のある大人なら一人でも始めやすいよ。チームに関わるのが難しければ、近くのイベントでボランティアするのも手だよ。" userName="mikegreenberg" createdAt="2025/06/03 01:43:52" color="#ff5c5c">}}




{{<matomeQuote body="僕の提案はこれ！<br>1. MujocoやIsaac Simみたいなシミュレーションツールを学ぶことから始めよう。<br>2. Optimal ControlとReinforcement Learningの基礎を学んで、論文のアイデアをシミュレーションで再現してみる。<br>3. Unitree Go1/Go2みたいな安いロボットで実際に試してみて、訓練したモデルを動かしてみるんだ。" userName="breakds" createdAt="2025/06/02 18:32:01" color="#45d325">}}




{{<matomeQuote body="アドバイスが2つあるよ<br>1．とにかく飛び込んでみよう<br>2．現実的な目標を立てよう<br>Roboticsは複雑で、プロのレベルは長年の積み重ねだけど、みんな最初はゼロからだよ。君も始められるさ。今は既成の部品（ODriveとか）を買えば、面倒な部分をスキップできる。ただ、Softwareと違って現実世界は予測不能で、失敗が多いから、大変かも。でも、それが面白いんだ！どうしてうまくいかないか考えて改善しよう。高すぎる目標は挫折のもとだから気をつけてね。" userName="scottbez1" createdAt="2025/06/02 23:22:18" color="#38d3d3">}}




{{<matomeQuote body="始めるステップはこれ！<br>1．3D printerを手に入れよう（または使える場所を見つけて）。材料なら手芸店やホームセンターでもいい。<br>2．Electronics starter kitを買おう（AdafruitとかSparkFunが良い）。<br>3．”Practical Electronics for Inventors”って本を買うか借りる。全部読まなくていいけど便利。LLMも使える。<br>4．キットの部品でtoy robotを作ってみよう。<br>5．作ったら、もっと大きいものを作るか改良しよう！<br>6．（オプション）作ったのを誰かに売って次の資金にするのもいいね。" userName="hugs" createdAt="2025/06/02 22:24:58" color="#785bff">}}




{{<matomeQuote body="これを読んでるんだけど、4つ目のステップでちょっと困ってるんだ。3D printerは持ってるけど、3D designerじゃないし。SparkFunのElectronicsに合う部品の3D modelsって、どうやって手に入れるんだろう？" userName="rkuodys" createdAt="2025/06/03 08:43:50" color="">}}




{{<matomeQuote body="Electronicsを始めるなら、Arduinoとhobby servos3個、breadboardとwiresがあれば十分だよ。俺が最初に売ったRobotも基本はそれだけ。物理部品はLego-Technic互換のレーザーカット材（後に3D printed）だったんだ。自分で”lego”みたいなのを作ることから始めるといいよ（例: https://bitbeam.cc/en/）。このアイデアは結構使えるんだよね。<br>俺が10年以上やってるRobotics company（Tapster）の基盤もこれだったんだ（写真: https://www.flickr.com/photos/68386867@N05/7855484076/）。" userName="hugs" createdAt="2025/06/03 10:52:41" color="#38d3d3">}}




{{<matomeQuote body="Adafruitは頼りになるよ。Featherボードとか、IMU breakout、Motor controllerを手に入れて、Amazonで簡単なrobot chassisとmotorsを買ってみな。CodingはCircuitPythonがオススメ。昔ながらのembedded programmingの面倒なビルドやデバッグから解放される。CircuitPythonやMicroPythonは使いやすくて良いから信じて。<br>別のアプローチとして、ardupilotみたいなのを手に入れてrover modeで使うのもあり。徹底的に使いこなすのを目標に。lua scriptingもできる。" userName="chasd00" createdAt="2025/06/02 17:05:58" color="#ff33a1">}}




{{<matomeQuote body="かつてないほどAccessibilityが高いわけじゃないよ。Roboticsで成功したいなら、Research papersを読む必要があるし、大学でRobotics関連のCourseをできるだけ多く取るのが望ましいね。hobbyistの世界は大きいけど、ほとんどはfancy toysみたいなもんで、simpleなPIDを超えることはまずない。Roboticsはindustrial robotsとacademiaに集中していて、間に何もない。必要なBackgroundがないと、たぶん表面をなぞるだけで終わっちゃう。最新の開発状況を知らないからね。" userName="imtringued" createdAt="2025/06/02 20:42:06" color="#45d325">}}




{{<matomeQuote body="どうやって動くか理解したいなら、まずStanfordのCS223A、次にMITの6.832 Underactuated RoboticsのCourseを取ると良いよ。オンラインでも講義がある。その2つが終わったら、UdacityのSelf-driving Car Nanodegreeも良いかもね。" userName="storus" createdAt="2025/06/02 15:10:01" color="#ff5c5c">}}




{{<matomeQuote body="Electronics側から見ると、Control theoryへの道は数学（信号処理、伝達関数とか）が大変。これをどう”Accessibility”高くするかは難しい。SensorをMotor制御のfeedbackに統合するには数学とElectronicsが必要。Servoを使えばEEが解決済みのfeedbackに乗っかれるけど、自分でSensor+Motorを組むなら数学がないと無理。<br>Feedback sensorを使わない簡単な制御もできる。ただ、修士レベルの問題は避けたい。PID controller theoryを学ぶのがいいかも。設定が適当になりがちだけど、何もしないよりマシ。" userName="dragontamer" createdAt="2025/06/02 20:01:50" color="#38d3d3">}}




{{<matomeQuote body="俺もこの旅を始めたばかりだよ。ElectronicsとRoboticsはずっとやりたかったんだけど、Softwareの道に進んじゃってさ。Arduinoとかmicrobitも手に入れたのに、ずっと埃かぶってたんだ。<br>馬鹿らしいって思うかもしれないけど、Geminiに学習プランをrecommendしてもらったら、月単位の時間見積もり付きの詳細な計画が出てきたんだ。最初のステップは、Make Electronics（第三版）を読んで、全部のExerciseをやってみること。すごく実践的なんだ。" userName="nogridbag" createdAt="2025/06/02 17:29:36" color="">}}




{{<matomeQuote body="大学院でRoboticsのCourseを取ったとき、逆運動学とか複雑な数学にすごく時間を費やしたんだ。あれはかなり大変で、Roboticsってかなり難しいんだなって印象を持ったね。でも、今じゃrc servosとArduinoをいくつか使って、simple robotを簡単に作る人がいる。Simpleなrobotic toysを作りたいだけなら、なぜかKinematicsはそんなに必須じゃないんだよね。RoboticsのCourseのpedagogyは、もっと良いやり方があったんじゃないかと思うよ…。" userName="bsoles" createdAt="2025/06/02 18:38:57" color="">}}




{{<matomeQuote body="ロボット工学って、6軸アームとかMLとか、別にみんなが必要なわけじゃないんだよね。大学院は難しいシステムをやる場所かな。エンジニアリング側には難しい問題がいっぱいあるし、簡単なシステムでもラボから出るとすぐダメになる。同じロボットでも個体差があるんだ。でも、独学や趣味なら、簡単なロボットをちゃんと動かすだけでも大変で、学ぶことはいっぱい。複雑なアームじゃなくても、エンジニアリングの問題を解決する知識が得られるから、理論を学ぶ上でもすごい助けになるよ。" userName="okanat" createdAt="2025/06/02 22:31:59" color="#45d325">}}




{{<matomeQuote body="俺みたいに学位をいくつも取ったりするなよ。とにかく物を作れ！3Dプリンターと電子部品を手に入れて、ひたすら何か作るんだ。最初に必要な数学は基本的な制御（PID Loops）とかforward/inverse kinematics、Extended Kalman Filteringくらい。他はV=IRとか、そんなもんだよ。それ以外は教授のエゴを満たすだけさ。" userName="AdobiWanKenobi" createdAt="2025/06/03 00:16:22" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="始めるのはそんなに難しくないよ！俺はこんな感じでロボット作ってる（これは配線段階だけどね）↓。alu extrusion beams、3D printing、off-the-shelf servosとSBCsを使ってるんだ。https://i.imgur.com/9YIHT9P.jpeg<br>最近のSBCsは結構パワフルで、標準のdrone LiPo packでも結構長く動くから、自分でしっかりしたプラットフォームを組んで、いろんな制御アプローチを学ぶ実験台にしやすいよ。Stereo camsとかLiDAR modulesも手頃な価格で良い品質のが手に入る。より高度なアプローチを製品レベルにするのは大変だけど、原理を学ぶための”ミニBoston Dynamics”くらいなら趣味レベルでも十分いける。プログラミング自体は結構シンプルだよ。基本的な実装はアーキテクチャも複雑じゃないし、コード量もそんなにない。それよりも、control theoryを学んだり、machine learningに入門することになるって気づくと思うよ。" userName="sho_hn" createdAt="2025/06/02 15:51:57" color="#45d325">}}




{{<matomeQuote body="初心者の定番プロジェクトはライントレーサーを作ることだね。Electronics、microcontroller programming、sensors、actuatorsなんかをちょっとずつ学べるよ。例えばこれとかね→https://projecthub.arduino.cc/lee_curiosity/building-a-line-..." userName="olalonde" createdAt="2025/06/02 16:53:22" color="">}}




{{<matomeQuote body="良い出発点になるのはROSを学ぶことだよ https://ros.org/。ROSを学べば、すごく幅広いロボットと連携できるようになる。ロボティクスは結構学際的な分野だから、どんな分野に興味があるかでやることは変わってくるけどね。" userName="lukeinator42" createdAt="2025/06/02 13:46:11" color="#45d325">}}




{{<matomeQuote body="ロボティクスって広い学際分野で、ME、EE、CSの要素が含まれてる。特定の道に進む前に、自分が本当に何を楽しめるか立ち止まって考えてみるのが良いかもね。流行りとかTech GiantsとかAIとか、人から言われたことじゃなくてさ。トップのコメントがモバイルロボットのコースに触れてるけど、それをやってみたり、自転車を自分でバランス取って100ヤード走らせるようなのを作ってみるとか。それってME、EE、CS全部使うだろうしね！それがどこに繋がるかは分からないけど。" userName="CommenterPerson" createdAt="2025/06/03 01:35:28" color="#ff5c5c">}}




{{<matomeQuote body="信じられないくらい簡単なんだけど、なぜか難しく見えるんだよね。でも、物理的なロボットは絶対必要！数百ドルとか数千ドルとか、ちゃんとしたロボットにお金をかけずにロボティクスに進んだ人を見たことない。その値段で高性能なロボットは今なら手に入るよ。<br>1.ロボットに何をやらせたいか決める。これが一番難しい、だってやりたいことを相当絞り込まないといけないからね。<br>2.それをどう実現するか決める。deterministicなロボットが良い？それともinferenceを使うロボット？<br>3.そしたら、物理的なアクションができるロボットを買う。食料品を車から家まで運ぶタスクなら、static switchを切り替えるlinear actuatorとは要求が全然違うよね。<br>4.ロボットのactuation pathを選ぶ：Dedicated embedded controller（FPGA、PLC）、他のスイッチと組み合わせたcontroller、autopilotなど。<br>テスト、改善、テスト…だね。" userName="AndrewKemendo" createdAt="2025/06/02 20:34:23" color="#ff5c5c">}}




{{<matomeQuote body="主な部分は3つだよ：Electronics、Robotic hardware、Software。まずElectronicsから学ぶのが良いかな。必要ならそこから始めると良いよ。目標次第でhardwareとsoftwareは変わるね。シンプルなDIYプロジェクトならArduinoとか互換ボードを手に入れて、sensors、LEDs、motorsなんかで色々作って遊んでみるのが良いんじゃないかな。簡単なArduinoプロジェクトのキットとか情報はネットにいっぱいあるよ。もっと複雑なプロジェクトは多分Linuxベースになるだろうね（AI、machine visionとか）。そういう場合は、mini PCとかRaspberry Pi、NVIDIA Jetsonあたりで何か作るのを検討すると良いかも。最近はロボティクスはすごく始めやすくなったけど、やりたいこと次第でお金は結構かかるかな…でも、たいていの場合、アイデアを検証するためのPOCsを安く作る方法も見つかると思うよ。" userName="kypro" createdAt="2025/06/02 14:55:04" color="#45d325">}}




{{<matomeQuote body="正直、まずはソフトウェアで2Dの3リンクアームをモデリングして、順運動学とか逆運動学をやるのがいいと思うな。それから各バーの慣性やDCモーターをモデリングして、PIDコントローラーでアームをスムーズに動かすんだ。その後に3Dに進めばいいよ。物理をモデリングできれば、モーター選定とかSolidworks、モータードライバー、MCUなんかのハードウェアは、電子工作の基本があれば割と簡単だよ。<br>ロボット工学の基礎は数学、つまり制御理論にある。ROSとかArduino、レゴキットみたいな表面的なものにこだわりすぎない方がいい。あれは実装の詳細にすぎないんだ。" userName="glouwbug" createdAt="2025/06/02 19:13:43" color="#ff5733">}}




{{<matomeQuote body="これはハンズオンでやりたい人にはつまらないだろうね。Arduinoキットなら50ドルくらいで手に入るし、C++を50行も書けば、10インチくらいのロボットアームで基本の順運動学をリアルに動かして遊べるんだから。" userName="leetrout" createdAt="2025/06/03 02:42:46" color="">}}




{{<matomeQuote body="おもちゃのロボットとVisionモデルで少し遊んでるんだけど、高FPSカメラを使えば制御がもっと簡単になるんじゃないかっていう感覚が拭えないんだよね。なんでモーター制御とか位置決めのシステムがいっぱいあるの？アームに付けたカメラが、ちゃんとモーターがアームを正しい位置に動かせたか調べて修正すればいいんじゃないの？<br>これは明らかにナイーブで計算コストも高いけど、Vision firstでほとんどの制御・フィードバックシステムを再構築するのを見てみたいんだ。" userName="rao-v" createdAt="2025/06/03 03:37:49" color="">}}




{{<matomeQuote body="生物の例えはちょっと怪しいけど、生物はそれがそんなにうまくいかないってヒントをくれるよ。視覚は経路計画には重要だけど、安定性にはプロプリオセプション（自己受容感覚）や触覚の即時フィードバックの方が大事なんだ。足がしびれた時に普通に歩くのがどれだけ難しいか考えてみて。視覚情報は変わらないのに、足からの即時フィードバックループを失うと、歩き方がすごく不自然で非効率になるだろ？" userName="antognini" createdAt="2025/06/03 05:17:16" color="#ff5733">}}




{{<matomeQuote body="一番いい学び方は、小さな実験を繰り返して、この分野に好奇心を持つことだよ。<br>たった数週間前だけど、僕とパートナーはソフトウェアエンジニアとして、ロボット工学を学びながら作るっていう日曜実験を始めたんだ。<br>Orin Nvidia GPU搭載の片腕ロボットアームを注文して、実験を始めたところだよ。<br>習慣にするために、学びや経験を記録し始めたんだ…もし興味があったら、ここからチェックしてみて！<br>https://youtu.be/pAwkl6zd0ws" userName="agcat" createdAt="2025/06/02 16:41:46" color="#ff5733">}}




{{<matomeQuote body="みんな早まりすぎだよ。情報が少なすぎる。<br>どれくらい時間があるの？ハードウェアとソフトウェアはどれくらい知ってる？何をしたいの？どれくらいお金をかけたい？何を学びたいの？<br>これらの質問への答えで、進むべき道は全く変わるんだ。" userName="light_hue_1" createdAt="2025/06/02 15:25:03" color="">}}




{{<matomeQuote body="ちょうどRaspberry Piとカメラで改造したこのRoombaを引っ張り出してきたところだよ。このセットアップの費用は40ドルくらいだったかな。子供にロボット工学をやらせようと思ったんだけど、興味を失っちゃって…だからこのクールなプラットフォームはまだ置きっぱなしなんだ…" userName="YZF" createdAt="2025/06/03 02:23:40" color="">}}




{{<matomeQuote body="Crunch Lab’s HackPackって試したことある人いる？この目的にかなり向いてるみたいだよ。キットを超えて進むのも簡単だって謳ってるし、その方向でいくつか良いステップを踏んでるのは確かだよ。" userName="bryanlarsen" createdAt="2025/06/02 14:23:11" color="">}}




{{<matomeQuote body="試したよ。最初のキットは安物の部品でスペックされてて、全然動かなかった。交換キットをもらったけど、それも同じだった。全体的にすごく残念な経験だったね。キャンセルして3Dプリンターを買ったんだけど、そっちはすごく楽しいよ。" userName="jsperson" createdAt="2025/06/02 15:38:03" color="">}}




{{<matomeQuote body="ロボットエンジニアは機械、電気、ソフト（いくつか）のジェネラリストになりつつ、一つか二つを深く専門にするのがトップレベルだよ。まずは広く触れて、それから専門を決めるのがいい。簡単なキットでROSを使ってプログラミングから始めてみな。ROSノードを自分で作ってみて、なんで既存のSTL ROSオプションが優れてるか知るんだ。ジェネラリストは長期的に見て強いよ。友達の例みたいに、専門だけだと基本的なことが分からず困ることもある。今は稼げても、ニッチな専門は将来どうなるかわからない。広く学んでおく方が将来性があるってことだよ。" userName="aiwejrlaiwj" createdAt="2025/06/02 15:52:40" color="#ff33a1">}}




{{<matomeQuote body="そうそう、3Dプリンターが少しでも使えると、アイデアから形にするまでのハードルがめっちゃ下がるんだ。試作品なら丈夫さとか見た目とかどうでもいいし、安く手に入るからマジでアイデアを形にできる。ソフトのパッケージ使うのと似てるね。完璧じゃないけど、とりあえず動くものを作れる。後で洗練すればいいんだよ。アイデアと実装のギャップが劇的に縮まるから、絶対やるべき。" userName="steve_adams_86" createdAt="2025/06/02 18:42:05" color="">}}




{{<matomeQuote body="え、ロボットの基礎とか学ぶ代わりに、時間と金かけて3Dプリンター買って、使い方覚えて…何のために？" userName="spiralcoaster" createdAt="2025/06/02 19:33:42" color="">}}




{{<matomeQuote body="この人、面白いもん作っててソースコードも公開してるよ。https://www.youtube.com/@jamesbruton" userName="TheDudeMan" createdAt="2025/06/03 00:35:39" color="">}}




{{<matomeQuote body="業界人だけど、Mark RoberのhackpackとかLEGO Mindstormsみたいな簡単な「子供向けキット」が超おすすめだよ。https://www.crunchlabs.com/<br>最初のうちは、ハードが意図通り動くか確認するのが一番大変だから、メカ・電気を簡略化したキットはマジでモチベーションにつながる。基礎とメカ、センサー、アルゴリズムが分かったら次へ進もう。ロボットはシステム思考が大事だし、ソフトと違って現実世界は毎回同じ動きしないってこと、覚えとけよ。" userName="aerophilic" createdAt="2025/06/02 16:29:43" color="#785bff">}}




{{<matomeQuote body="目標によるけど、Micromouseもいい出発点かもね。Veritasiumの動画を見るとインスパイアされるかも。" userName="artofcode" createdAt="2025/06/02 14:08:12" color="">}}




{{<matomeQuote body="ロボット工学の学び方は色々あるけど、まずDIYで「もの」を作り始めるのが一番。機械、電気、ソフト全部触れて、問題が出たらググって解決する。Onshape、bambu A1 mini (3Dプリンター)でメカを作り、www.adafruit.comかwww.sparkfun.comでセンサーとArduino Uno等を買う。ソフトはc++が多いけどライブラリがあるから大丈夫。難しく考えず、とにかく何か作ってみてSEND IT！やってみな。" userName="csullivan107" createdAt="2025/06/02 14:52:31" color="#45d325">}}




{{<matomeQuote body="自分で（小さい、DIYの）ロボットを作ってみな。実践的な応用が一番の学習方法だと思うよ。" userName="datameta" createdAt="2025/06/02 19:50:49" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
