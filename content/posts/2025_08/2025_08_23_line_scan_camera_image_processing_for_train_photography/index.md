+++
date = '2025-08-23T00:00:00'
months = '2025/08'
draft = false
title = 'ラインスキャンカメラで鉄道写真がもっと面白くなる！驚きの画像処理技術'
tags = ["鉄道写真", "ラインスキャンカメラ", "画像処理", "写真技術", "特殊撮影"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> ラインスキャンカメラで鉄道写真がもっと面白くなる！驚きの画像処理技術

引用元：[https://news.ycombinator.com/item?id=44996938](https://news.ycombinator.com/item?id=44996938)




{{<matomeQuote body="これ、めっちゃいいね！私も同じアイデアで、New Englandで一番高い木をドローンでスキャンしてみたんだ。うまくはなかったけど、今度また挑戦してみようかな。結果はこちら：https://www.daviddegner.com/wp-content/uploads/2023/09/Tree-...この話の一部だったんだ：https://www.daviddegner.com/photography/discovering-old-grow..." userName="thekid314" createdAt="2025/08/24 02:47:43" color="#ff5c5c">}}




{{<matomeQuote body="相変わらず魅惑的な視点だね！" userName="cenamus" createdAt="2025/08/24 06:57:19" color="">}}




{{<matomeQuote body="私、普通のカメラと手動でフレームをつなぎ合わせる方法で、似たようなプロセスでアニメーションを作ってるんだ。[1,2,3]被写体に焦点を合わせ、背景を抽象的なパターンにする効果がすごく面白いよ。各’線’は約15px幅。<br>東京のスカイラインのタイムラプスも撮って、似たプロセスを適用し[4]、時間がフレームの左から右へ移動するようにモーション追跡したんだ[5]。各線は4ピクセル幅で、元の動画は8Kだよ。<br>[1] https://youtube.com/shorts/VQuI1wW8hAw <br>[2] https://youtube.com/shorts/vE6kLolf57w <br>[3] https://youtube.com/shorts/QxvFyasQYAY <br>[4] https://youtu.be/wTma28gwSk0 <br>[5] https://youtu.be/v5HLX5wFEGk" userName="decae" createdAt="2025/08/24 05:10:59" color="#38d3d3">}}




{{<matomeQuote body="わー、そのスカイラインの夕焼けタイムラプス、美しいね。本当にいいアイデアだよ。" userName="Cloudef" createdAt="2025/08/24 11:05:57" color="">}}




{{<matomeQuote body="わー、素晴らしい記事だね。ケーブルカーの写真 https://upload.wikimedia.org/wikipedia/commons/e/e0/Strip_ph... がすごく好きだよ。背景のコンテンツをどうするか決めるのも、ちょっと面白いだろうね。" userName="bkettle" createdAt="2025/08/23 23:11:39" color="#ff5733">}}




{{<matomeQuote body="これ、初期のフラットベッドスキャナーをデジタルバックとして使う実験を思い出すな。一つ例を挙げるね：https://www.sentex.net/~mwandel/tech/scanner.html" userName="JKCalhoun" createdAt="2025/08/23 21:20:45" color="#ff33a1">}}




{{<matomeQuote body="確か、前回のオリンピックで、Omegaがフィニッシュラインのストリップカメラに高周波リニアディスプレイを組み合わせたんだよね。普通のカメラだと点滅する線が見えるんだけど、フォトフィニッシュの背景はOmegaのロゴだった。すごくさりげないけど、実現するのはすごいことだよね。" userName="ortusdux" createdAt="2025/08/24 00:11:52" color="#38d3d3">}}




{{<matomeQuote body="点滅する垂直バーを見てみて：https://youtube.com/shorts/TSSCfnBBDR0" userName="meindnoch" createdAt="2025/08/24 09:09:08" color="#ff5c5c">}}




{{<matomeQuote body="ほとんど全てのカメラをラインスキャンカメラに変えられるってのは注目すべき点だね。センサーのレジスタにコマンドを書き込むソフトがあればの話だけど。最大と最小の読み取り行を1つ離すだけで、’フレーム’レートが60,000 FPSに跳ね上がり、各フレームは1ピクセルの高さになるんだ。高速化のためには、上下の’ポーチ’領域をいじる必要があるかもね。ラインは画像の長辺に沿ってないとダメだよ。ハードウェアには短辺でやる機能はないから。" userName="londons_explore" createdAt="2025/08/24 17:23:06" color="#ff5733">}}




{{<matomeQuote body="これってどうやって実現したの？どんなカメラならできるの？" userName="decae" createdAt="2025/08/24 22:00:50" color="">}}




{{<matomeQuote body="ほぼどんなカメラでもできるよ。例えばOV2640とか。でも、レジスタへの低レベルアクセスが必要で、i2c（SCCB）で設定するんだ。Linuxならドライバにパッチを当てる必要があるだろうね。" userName="londons_explore" createdAt="2025/08/25 07:24:20" color="#785bff">}}




{{<matomeQuote body="それ、色々いじってみるのめっちゃ楽しそう！ありがとうね！" userName="decae" createdAt="2025/08/25 08:34:05" color="">}}




{{<matomeQuote body="ノイズ除去は不自然で、特にフリンジが目立つからオフの方がいいかもね。デモザイクについては、今のやり方だとアーティファクトが出るみたいだけど、RCD [1]みたいに、もっと解像度を上げてアーティファクトが出ないようにできないかな？<br>[1] https://github.com/LuisSR/RCD-Demosaicing" userName="bscphil" createdAt="2025/08/23 20:39:05" color="#ff5733">}}




{{<matomeQuote body="うん、実際デノイズはデフォルトで無効にしてるよ。水平ストライプが目立つし、めっちゃ遅いんだ。垂直ストライプ補正も完璧じゃなくて、かえってストライプを増やしちゃうこともあるし、まだまだ課題だらけ。<br>RCDデモザイクは次のステップだね。今のカラーフリンジは単純な線形補間が原因だから、RCDみたいに緑チャンネルをガイドにすればもっと良くなるはず。" userName="dllu" createdAt="2025/08/23 23:18:49" color="#45d325">}}




{{<matomeQuote body="デモザイクとかの工程で、x位置やスプラインパラメータを推定する潜在変数にすることを検討した？<br>カラーヒストグラムで考えると、ロゴの色が揺らいでると分布が広くなるけど、正しくマッピングされてれば細くて強いピークになるはずだよね。色空間のエントロピーって、RMADを使った最適化の損失関数として強力な要素になりそうじゃない？" userName="DoctorOetker" createdAt="2025/08/24 00:44:49" color="#785bff">}}




{{<matomeQuote body="元の生データってどこかで共有してるの？" userName="DoctorOetker" createdAt="2025/08/24 01:13:42" color="">}}




{{<matomeQuote body="うん、僕もノイズ除去した結果はそんなに良くないと思うな。" userName="Cloudef" createdAt="2025/08/23 22:37:31" color="">}}




{{<matomeQuote body="ラインスキャンカメラで走ってる車や電車から景色を撮ったらどうなるか、誰か知らない？視差（パララックス）で面白い歪みが出そうだけど。" userName="fleventynine" createdAt="2025/08/24 01:59:17" color="">}}




{{<matomeQuote body="動いてる電車から何枚か撮ってみたよ…<br>南海6000系、大阪：https://i.dllu.net/nankai_19b8df3e827215a2.jpg<br>フランスの風景：https://i.dllu.net/preview_l_b01915cc69f35644.png<br>マルセイユ、フランス：https://i.dllu.net/preview_raw_7292be4e58de5cd0.png<br>カリフォルニア：https://i.dllu.net/preview_raw_d5ec50534991d1a4.png<br>https://i.dllu.net/preview_raw_e06b551444359536.png<br>木の紫色はごめんね。カメラが近赤外線に敏感で、IRカットフィルターを買う前に撮ったんだ。フレーム落ちとか、他にもアーティファクトがあるよ。" userName="dllu" createdAt="2025/08/24 03:34:34" color="#ff5733">}}




{{<matomeQuote body="まさに知りたかったことだよ。1時間の電車旅くらいの全風景をスキャンするのって、技術的に可能なの？" userName="dddw" createdAt="2025/08/24 06:23:00" color="#45d325">}}




{{<matomeQuote body="これってただのブレでしょ。記事の写真の背景みたいにさ。超低速なら面白い歪みは得られるけど、車や電車くらいのスピードだと何も見えないよ。" userName="notatoad" createdAt="2025/08/24 02:39:02" color="">}}




{{<matomeQuote body="記事の背景は”ブレ”じゃないよ。" userName="account42" createdAt="2025/08/25 14:12:35" color="">}}




{{<matomeQuote body="興味を持って”ラインスキャンビジョンシステム”の基本を調べたんだ。産業用途では、コンベアの速度が一定じゃないから、エンコーダーを使って現在の速度に基づいてスキャン速度をリアルタイムで制御する必要があるらしいね。この記事の大部分は、電車の速度を数学的に推定してスキャンを正しく解釈することについてなんだと分かったよ。[1]このカメラベンダーがエンコーダーの必要性を4:15あたりで説明する動画があるよ。<br>https://m.youtube.com/watch?v=E_I9kxHEYYM&t=35s&pp=2AEjkAIB" userName="ripe" createdAt="2025/08/24 17:57:14" color="#45d325">}}




{{<matomeQuote body="地下鉄の影も捉えられてるのがすごいね！列車本体より少し早く到達した影が、スリットが向いてた線路と壁の断面形状を持つチューブに対して、バーチャルな影として映し出されてる感じだね。" userName="card_zero" createdAt="2025/08/23 21:52:08" color="#ff33a1">}}




{{<matomeQuote body="こういうのが好きなら、https://www.magyaradam.com/wp/ も見てみてよ。彼の作品もラインスキャンカメラを使ってるのが多いんだ。" userName="GlibMonkeyDeath" createdAt="2025/08/23 20:43:00" color="#ff5c5c">}}




{{<matomeQuote body="あの動画（https://www.magyaradam.com/wp/?page_id=806）にぶっ飛んだよ。たぶん、彼はまず1フレーム分のスリットを再構成して、それを1列ずつずらして次のスリットデータを追加していく形で動画を作ったんだと思う。" userName="JKCalhoun" createdAt="2025/08/23 21:11:23" color="#38d3d3">}}




{{<matomeQuote body="あの動画のショットはどれもSlit Scan技術を使ってないよ。”Mean Stack Mode”って呼ばれる技術を使ってるんだ。それは、入力動画のローリング選択で、複数フレームにわたる平均ピクセル値を得るためのテクニックなんだよ。" userName="fudged71" createdAt="2025/08/24 00:56:39" color="#785bff">}}




{{<matomeQuote body="みんなスマホカメラでこれ試せるし、試すべきだよ！パノラマモードにして、いつもと違う動き方でカメラを動かしてみて。通過する電車とか、電車や車の窓からでもできるよ。たまに混乱してパノラマの一部が”圧縮”されちゃうけどね。縦にもできるよ。高い木を下から上にスキャンしたり、頭の上から後ろ向きに撮影したり、地面を見ながら歩いて庭の小道とかを撮るのも面白いよ。わざと足を入れて”足跡”をパノラマにするのも楽しいよ:)" userName="m463" createdAt="2025/08/25 21:17:18" color="#ff33a1">}}




{{<matomeQuote body="Stani Michielsの”Jakarta Megalopolis”を思い出すね。ジャカルタの街の長い（ものすごく長い）写真を作ってるんだ。<br>https://anagrambooks.com/jakarta-megalopolis<br>https://anagrambooks.com/sites/default/files/styles/slide/pu..." userName="SteveAlexander" createdAt="2025/08/25 15:56:24" color="#ff5c5c">}}




{{<matomeQuote body="スリットスキャン写真マジでかっこいい！電車がテーマってのがまたいいよね。昔知り合いがフラットベッドスキャナーをスリットアパーチャに使って写真作ってたの、すげープロジェクトだったな。" userName="julik" createdAt="2025/08/24 12:25:55" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="同じ話題でこんな記事も見つけたよ: https://news.ycombinator.com/item?id=35738987<br>あと、人がごった返す通りのラインスキャン画像ってどんな感じか見てみたいんだよね。" userName="amelius" createdAt="2025/08/24 10:36:16" color="">}}




{{<matomeQuote body="読んでて面白かった！昔センサーキャリブレーションの仕事してたんだけど、みんなスマホが綺麗な写真撮れるのを当たり前だと思ってるよね。今のスマホカメラには、すごい量の数学とComputational Photographyが詰まってるんだよ。" userName="syntaxing" createdAt="2025/08/24 00:01:36" color="#38d3d3">}}




{{<matomeQuote body="他にもラインスキャンで撮られた電車があるよ: https://news.ycombinator.com/item?id=35738987" userName="amenghra" createdAt="2025/08/24 06:10:34" color="">}}




{{<matomeQuote body="プロジェクトでラインカメラを調べたことあるんだ。主な用途はコンベヤーベルトで流れる食品の品質管理だね。自動選別システムだとボトルネックになることも多いし。僕が見積もったユニットの一つは、8kピクセルラインを毎秒4万フレームで記録できたよ。https://youtu.be/E_I9kxHEYYM" userName="ortusdux" createdAt="2025/08/24 01:01:00" color="#785bff">}}




{{<matomeQuote body="OCT（Optical Coherence Tomography）でも使われてるよ。OCTはIR光で組織を”透過”させる技術で、近赤外線を使うんだ。戻ってきた光はInterferometerとDiffraction Gratingを通って、ラインカメラで広がりを見る。FFTなどの信号処理の後、深さの強度が得られるよ。ミラーでビームを振ってX,Yスキャンすれば、MRIやSonogramみたいな体積画像が得られるんだ。眼、特に網膜の血管を撮るのにすごく役立つよ。" userName="SJC_Hacker" createdAt="2025/08/24 02:27:14" color="#ff5c5c">}}




{{<matomeQuote body="うん、Spectroscopyにはいろんなラインスキャンカメラの応用があるね。基本的にGratingを使うどんな用途でも。950nmだとSi CCDの感度が落ち始めるから、OCTで使うにはギリギリかな。さらにNIRではInGaAs検出器が使われるよ。" userName="s0rce" createdAt="2025/08/24 03:13:42" color="#ff5c5c">}}




{{<matomeQuote body="衛星でもよく使われてるよ。" userName="tcpekin" createdAt="2025/08/24 06:07:59" color="">}}




{{<matomeQuote body="僕が関わってた衛星のいくつかは単一点カメラだったんだ。衛星が進行方向の主軸を中心に回転して、カメラも一緒に回る。地球にカメラが向くたびに、一連の点データがストレージのラインに書き込まれるんだ。衛星が動いてカメラが地球から離れるとデータ記録は止まって、また地球にカメラが向いたら再開する。ちょっと細かい違いかもしれないけど、”ラインスキャンカメラ”は静止してて内部ミラーが回転したりするけど、衛星のカメラは動く部分がなくて、衛星自体が回転して動くんだ。" userName="defrost" createdAt="2025/08/24 06:41:52" color="#38d3d3">}}




{{<matomeQuote body="電車が完璧な色の縞模様の間にピシッと静止してるの、すごいスピード感があってかっこいいよね。" userName="Waterluvian" createdAt="2025/08/24 04:42:42" color="#ff33a1">}}




{{<matomeQuote body="この写真、古い宇宙写真みたいでめっちゃ綺麗！なんでこんなに似てるんだろうね？画像処理からはわかんないから、ラインスキャンカメラのセンサーの仕組みが関係してるのかも？" userName="owenversteeg" createdAt="2025/08/25 03:58:52" color="#ff5c5c">}}




{{<matomeQuote body="多くの衛星カメラもラインスキャンセンサー、またはプッシュブルームセンサー（https://en.wikipedia.org/wiki/Push_broom_scanner）を使ってるんだ。軌道上で動く時に画像を生成する仕組みだよ。" userName="iamleppert" createdAt="2025/08/25 19:47:18" color="#ff33a1">}}




{{<matomeQuote body="HNユーザーのjo-m（https://news.ycombinator.com/user?id=jo-m）がやってる、このプロジェクト（https://trains.jo-m.ch/#/trains/list）も絶対チェックしてほしい！" userName="srean" createdAt="2025/08/24 18:40:38" color="#38d3d3">}}




{{<matomeQuote body="ラインスキャン画像が好きなのは、画像の認識モデルを壊してくれるからだよ。これって電車の画像じゃなくて、空間のすごく小さい領域を何が占めてたかの時系列グラフなんだよね。" userName="ca_tech" createdAt="2025/08/25 17:59:42" color="#785bff">}}




{{<matomeQuote body="こんなに知りたくなるなんて思わなかったよ。完全に「おたく心」をくすぐられちゃった！めっちゃ良い記事だね。" userName="ncruces" createdAt="2025/08/23 21:45:27" color="">}}




{{<matomeQuote body="すごい絵画みたいな質感があるね。俺、そんなに鉄道ファンじゃないけど、この写真なら何枚か壁に飾りたいくらいだよ。" userName="lttlrck" createdAt="2025/08/23 22:32:45" color="">}}




{{<matomeQuote body="めっちゃクール！普通の2次元CMOSデジタルカメラセンサーでも同じ効果が出せるかと思ったけど、センサーが1次元で95khzのサンプリングレートなんだね。4Kセンサーだとデータ量が多すぎで、ほとんど捨てなきゃいけないって分かったよ。" userName="anonu" createdAt="2025/08/23 23:25:39" color="#38d3d3">}}




{{<matomeQuote body="確かにできると思うけど、めっちゃ高くなるよ。超高速ADCがもっとたくさん必要だからね。カメラが5000ドルだとして、フルフィールドで同じ露光時間を得るには、ハードウェアを800回とか複製しないと。一つのカメラにすごい金額がかかるんだ。" userName="SJC_Hacker" createdAt="2025/08/24 02:30:10" color="#45d325">}}




{{<matomeQuote body="一般のカメラでもいけると思うけど、物理的な動き合わせが大変だね。例えばSony a7R IVは1/20秒の読み出しで、電子シャッターだと上から下にスキャンする。動画には良くないけど、6336ピクセルの水平解像度で10fpsのフルフレーム圧縮RAW写真が撮れるから、63khzの取得レートになるんだ。問題は、カメラを1/10秒ごとに1センサー幅分、正確にシフトする必要があること。悲観的に見ると30khzくらいかな。動画圧縮を許容するなら、4K@30fpsで64khzくらいになるし、高性能なビデオカメラならもっと良いね。" userName="gruntwork" createdAt="2025/08/24 09:03:31" color="#ff5c5c">}}




{{<matomeQuote body="元の質問を誤解してたかも。95kHzでフルフィールドにするって話なら、めっちゃ高くなるか、解像度がひどくなるか、その両方だね。フルフィールドカメラをラインスキャンカメラみたいに使うのは、配線変更か特殊ソフトがいるから、普通のラインスキャンカメラが良いかも。でも、めちゃ高価じゃなく超高フレームレートでフルフィールドを出す方法もあるよ。持続的じゃないけど、コンデンサバンクとかで「サンプル＆ホールド」を使えば、デジタル読み出しをゆっくりできるみたい。" userName="SJC_Hacker" createdAt="2025/08/25 16:47:48" color="#45d325">}}




{{<matomeQuote body="競馬場のフォトフィニッシュカメラの動画、面白いよ！たぶん他の人も楽しめるんじゃないかな。<br>https://www.youtube.com/watch?v=Ut0nKdLCAEo" userName="djmips" createdAt="2025/08/24 05:15:15" color="#45d325">}}




{{<matomeQuote body="久しぶりに読んだ中で最高の投稿だよ。こんな素敵な記事をありがとう！" userName="motorest" createdAt="2025/08/24 07:28:29" color="">}}




{{<matomeQuote body="同じ方法で蒸気機関車を撮影した例を知ってる人いる？ピストンや蒸気の雲みたいな垂直に動く部分が、ほぼ静止してる本体と合わさってどう見えるのか興味あるな。" userName="stubish" createdAt="2025/08/24 04:28:32" color="#ff33a1">}}




{{<matomeQuote body="いつかRoaring Campに自分の機材を持って行って、Shay式ギア機関車をスキャンするモチベーションを出したいな。でも、動く部分はやっぱり奇妙に歪んで見えるんだろうね。" userName="dllu" createdAt="2025/08/24 22:47:00" color="#38d3d3">}}




{{<matomeQuote body="ピストンが規則的な正弦波みたいに動くことで、その歪みが動きや躍動感を捉えるのかどうか、すごく気になるんだ。蒸気の雲がどう写るかも全然想像つかないな。普通のカメラや目で見るのと、僕たちの頭の中で動く部分を想像するのとは違うよね。" userName="stubish" createdAt="2025/08/25 02:11:36" color="#ff5c5c">}}




{{<matomeQuote body="それらの部分は、フォトフィニッシュで写ったアスリートの歪んだ手足みたいに、変な形に見えるだろうね。" userName="sverhagen" createdAt="2025/08/24 12:10:35" color="#ff5733">}}




{{<matomeQuote body="＞うーん、僕の速度推定はまだ完璧じゃないと思うんだ。10%くらいずれてるかもね。これについては電車の運転士さんに、「スムーズな線路で一定速度の場所はどこ？」みたいに聞いてみる価値があるんじゃないかな。" userName="its-summertime" createdAt="2025/08/23 22:10:48" color="#38d3d3">}}




{{<matomeQuote body="リアルタイムで速度を推定するのに、オプティカルフローセンサーを使うのはどうかな？" userName="tecleandor" createdAt="2025/08/23 23:05:25" color="#ff5c5c">}}




{{<matomeQuote body="それか、レーダーガンで測るとか。" userName="jebarker" createdAt="2025/08/24 15:09:55" color="#ff33a1">}}




{{<matomeQuote body="これがどう動くのか説明されてないみたいで、ずっとわからなかったんだ。でも、センサーアレイの長軸は電車が走る方向に対して垂直になってるってことかな？" userName="jeffbee" createdAt="2025/08/23 20:10:12" color="#785bff">}}




{{<matomeQuote body="アナログのスリットスキャンカメラだと、もっと分かりやすいと思うよ。<br>https://www.lomography.com/magazine/283280-making-a-slit-sca...<br>https://petapixel.com/2017/10/18/role-slit-scan-image-scienc...<br>ソフトウェアでもできるよ。お店の横を歩く動画を撮って、FFmpegでフレームに分解。各フレームの0列目を抽出して結合すると、結果は劣るけど面白いよ。映画のシーンも試すといいかも。時間と空間の面白いマッピングだね。" userName="flir" createdAt="2025/08/23 22:43:53" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ありがとう！「Principle of operation」っていうセクションを追加して、どうやって動くか説明したよ。" userName="dllu" createdAt="2025/08/23 20:20:13" color="">}}




{{<matomeQuote body="このセットアップでのFPS/LPSってどれくらい？普通のカメラで似たようなことやったけど、LPSがボトルネックだったんだよね。ラインスキャンカメラは50k+ LPSとかすごい数値出せるって知ってるけど。" userName="ansgri" createdAt="2025/08/23 20:51:23" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ面白いね！数学的な説明やプロセスを詳しく追加してくれて本当にありがとう！ずっとどうやって動くのか気になってたけど、今日まで調べなかったんだ。あなたのページを読んで、ただの好奇心じゃなくなったよ。ありがとう！HNもいつも面白い記事を紹介してくれて感謝！" userName="blooalien" createdAt="2025/08/23 21:08:07" color="#45d325">}}




{{<matomeQuote body="垂直なセンサーの列を一本使って「連続的」にリサンプルするんだよ。フィルムを使う場合は、絞りが垂直なスリットになってて、露光中にフィルムをずっと動かし続けるんだ。<br>「finish line」カメラだと、スリットはゴールラインにあって、馬が近づいてきたらフィルムを引っ張り始める。露光が連続だから、ゴールの瞬間を絶対見逃さないんだよ。" userName="eschneider" createdAt="2025/08/23 20:26:40" color="#ff33a1">}}




{{<matomeQuote body="ラインスキャンセンサーって、基本的にはただのスキャナーだよ。実際、スキャナーから作る人もいるくらい。普通は静止してる被写体が必要なんだけど、この場合はセンサーがスキャンするんじゃなくて、被写体が通り過ぎるのを撮るから、背景のピクセルは動かないんだ。" userName="miladyincontrol" createdAt="2025/08/23 20:19:06" color="#ff5733">}}




{{<matomeQuote body="これって列車にしか使えないのは、t+1の列車画像が、tの列車画像をただ数ピクセルずらしただけだからでしょ？人間を撮るのには向いてなさそう。人間って空間をカチコチに動くわけじゃないからね。" userName="krackers" createdAt="2025/08/23 22:27:31" color="">}}




{{<matomeQuote body="何を目指すかによるんだよね。<br>https://en.wikipedia.org/wiki/Slit-scan_photography#/media/F..." userName="flir" createdAt="2025/08/23 22:45:10" color="#38d3d3">}}




{{<matomeQuote body="人間が走ってて、そんなに激しく動かなければけっこう上手くいくよ。記事にも競馬のゴールライン写真のサンプルがあるけど、俺的にはかなり良く見える。被写体が止まってたり、被写体全体が動く速度より手足の動きが速かったりするとダメになっちゃう（例えば、ゆっくり歩きながら拳を合わせたりすると台無し）。" userName="makeitdouble" createdAt="2025/08/23 22:40:55" color="#785bff">}}




{{<matomeQuote body="https://www.youtube.com/watch?v=Ut0nKdLCAEo" userName="djmips" createdAt="2025/08/24 05:16:53" color="#ff5c5c">}}




{{<matomeQuote body="ノイズ問題は絞りの大きなレンズで解決できるかもね。フォトフィニッシュ用レンズって昔はめっちゃ高くて、ワンオフ品もあったんだよ。" userName="fooker" createdAt="2025/08/24 07:10:55" color="">}}




{{<matomeQuote body="300mm f/2.0レンズとかあるよね！俺もSamyang 135mm f/2とかVoigtländer Apo Lanthar 125mm f/2.5とか使ってるよ。でも、絞りがデカいとピント合わせが大変なんだ。" userName="dllu" createdAt="2025/08/24 22:45:02" color="">}}




{{<matomeQuote body="ベイヤーパターンが使われてるって意外！1Dカラーセンサーだと一般的なのかな？" userName="account42" createdAt="2025/08/25 14:19:58" color="">}}




{{<matomeQuote body="なんて美しい画像処理の例だろうね。すごい記事だ！" userName="j_bum" createdAt="2025/08/23 19:48:45" color="">}}




{{<matomeQuote body="これ、すごい画像だね。何が起きてるか分かんないけど、画像はめっちゃ好き！" userName="whartung" createdAt="2025/08/23 20:35:28" color="">}}




{{<matomeQuote body="カメラが1ピクセル幅しか撮れないって想像して。それを1秒に60回とか撮って、1ピクセル幅の画像を順番につなげるんだ。これがこの仕組み。時間順に並んだ1ピクセル幅の画像の集まりなんだよ。背景は静止して線になるけど、動くものは時間軸で広がって正しく見えるってわけ。うまく説明できてるかな？ごめんね。" userName="Etheryte" createdAt="2025/08/23 20:58:02" color="#ff33a1">}}




{{<matomeQuote body="いや、ありがとう！完璧な説明だったよ。電車と線の理由が完全に分かった。電球が点灯した感じ！「分かった！」って最高だね！" userName="whartung" createdAt="2025/08/23 21:33:15" color="#ff5733">}}




{{<matomeQuote body="うん、ドアがちょっと開いてて、オフィスの中が細い隙間から見える感じだね。その動く隙間からオフィス全体を再構築するみたい。めっちゃクール！" userName="JKCalhoun" createdAt="2025/08/23 21:09:38" color="#785bff">}}




{{<matomeQuote body="俺にはちゃんと分かったよ！" userName="kiddico" createdAt="2025/08/23 21:03:57" color="">}}




{{<matomeQuote body="使ってるカメラ、いくらするの？<br>…あと、もっと安い選択肢ってある？" userName="_giorgio_" createdAt="2025/08/25 10:09:41" color="">}}




{{<matomeQuote body="90年代のアーケードゲーム、Final Fightを思い出すなあ。" userName="sans_souse" createdAt="2025/08/24 09:57:28" color="">}}




{{<matomeQuote body="この記事を読むと、まるでChatGPTになった気分だよ。" userName="Retr0id" createdAt="2025/08/23 23:16:06" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
