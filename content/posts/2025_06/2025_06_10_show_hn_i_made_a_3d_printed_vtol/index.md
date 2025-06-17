+++
date = '2025-06-10T00:00:00'
months = '2025/06'
draft = false
title = '初心者がたった90日で開発！3Dプリンター製のVTOLドローンが航続200km超え＆3時間飛行を達成！'
tags = ["3Dプリンター", "ドローン", "VTOL", "DIY", "飛行"]
featureimage = 'thumbnails/purple7.jpg'
+++

> 初心者がたった90日で開発！3Dプリンター製のVTOLドローンが航続200km超え＆3時間飛行を達成！

引用元：[https://news.ycombinator.com/item?id=44241278](https://news.ycombinator.com/item?id=44241278)




{{<matomeQuote body="これ、たった90日で自分で作ったんだ！航続200km以上、3時間も飛ぶなんて、多分3Dプリンター製VTOLじゃ世界トップクラスだと思うよ。<br>元々CADとか3Dプリント、空力モデリングも全くの初心者だったんだけど、これが今までで一番の力作！<br>スペックは翼幅1.2m、長さ0.77m、重さ2.55kgだよ。機体はFoaming PLAとかPETG、CFRPを使って、バッテリーはAmprius SA08、モーターは2807。フライトコントローラーはSpeedybee F405 Wing、GPSはM10で、Ardupilot 4.6.0で動かしてる。<br>初のYouTube動画で結構編集頑張ったんだけど、思ったより短くなっちゃった。ナレーションとか編集とか、作業量見誤ったなー。" userName="tsungxu" createdAt="2025/06/10 20:47:11" color="#ff5c5c">}}




{{<matomeQuote body="これ、フォーム材のフレーム設計と比べてどうなんだろ？<br>カスタマイズしやすいのは明らかに良い点だし、3Dプリントの中身スカスカなのも良いよね。でも剛性は、クワッドコプターだとカーボンファイバーには敵わないと思うな。固定翼ならフォーム材の良い代替になりそうだけど。クワッドで剛性が気になるのは、レーシングドローンみたいにキビキビ動くときで、この機体の離着陸モードなら大丈夫だろうね。<br>もし真似したい人がいたら、使ってる部品はほとんど標準的な市販品で、Amazonとかで買えるよ。<br>使ってるArduPilotファームウェアは超多機能で頑丈なんだけど、設定がマジで最悪。商用UASはほとんどPX4使ってるよね。" userName="the__alchemist" createdAt="2025/06/10 21:17:26" color="#ff5733">}}




{{<matomeQuote body="そうなんだ、シングルウォールのFoaming PLAは、どんなフォーム材（安いフォームコアやEPP、EPOよりも）と比べても、衝撃に弱くて脆いんだよね。これは墜落して修理するときに本当に困ったよ。<br>でも、初めて作ったフォームコアのReadyboard製のVTOLは、3.6mの高さからアスファルトに落ちても、胴体がちょっと凹んだだけで済んだんだ。交換の必要もなかった。<br>もしまた3Dプリントで作るなら、分割部分に鳩の尾とか他のクリップ式構造を取り入れたいね。<br>そう、アビオニクスとか動力系の部品は開発スピード重視で市販品だよ。Ampriusのバッテリーパックはアメリカ製だけど、他は全部中国製。<br>最近は商用でもArdupilotを見かけるようになったけど、確かにUIは使いにくくて直感的じゃないよね。" userName="tsungxu" createdAt="2025/06/10 21:31:14" color="#38d3d3">}}




{{<matomeQuote body="もう完成形になったみたいだし、設計や調整してた頃みたいに、衝撃で壊れる心配は減ると良いね！" userName="the__alchemist" createdAt="2025/06/10 21:37:27" color="">}}




{{<matomeQuote body="ありがとう！<br>実はまた落としちゃって、だから動画の最後で壁に立てかけてたんだよね。<br>うん、Foaming PLAは本当に柔らかくて、丈夫な薄い紙みたいな手触りなんだ。" userName="tsungxu" createdAt="2025/06/10 21:38:51" color="">}}




{{<matomeQuote body="商用システムの場合、使いにくい設定はメーカーが組み込みをやってくれるから、ユーザーにとって大きな問題にはならないんだよ。<br>商用UASでPX4がよく使われるのは、ライセンス（BSD対GPLv3）と、PX4の開発チームが商用利用に友好的だからだと思うな。<br>メーカーは、付加価値を加えた改変版ファームウェアのソースコードを公開したくない（GPLv3の場合、公開義務が生じる可能性）んだ。" userName="Karliss" createdAt="2025/06/11 11:33:43" color="#ff5733">}}




{{<matomeQuote body="PLAは、飛行機に使うには結構重くて脆いから、フォーム材と比べるとあまり向いてないんだよね。ちょっと強めに着陸しただけで部品が折れることがある。<br>でも、壊れてもすぐにまたプリントできるのが、PLAを使う一番のメリットかも。だからこそ使う価値がある。<br>ABSの方が耐久性があって軽いかもしれないけど、それでもフォーム材よりは重いし、ABSをプリントするのは結構大変なんだ。" userName="stavros" createdAt="2025/06/10 23:23:54" color="#ff5c5c">}}




{{<matomeQuote body="僕はシングルウォールのFoaming PLAを使ったんだけど、フィラメント密度が250℃のノズル温度で約0.45g＼cm³なんだ。これは普通のPLAより約64％低い計算になるね。でも衝撃耐性は、普通のPLAよりもさらに悪いんだ。<br>この機体では、とにかく軽くするのが最優先課題だったんだよ。" userName="tsungxu" createdAt="2025/06/11 00:17:32" color="#ff5733">}}




{{<matomeQuote body="そうだね、君が言うように、あれは衝撃にすごく弱いんだよね。重量と耐久性のバランスが良いのは、ABSかASAあたりかもしれないね。" userName="stavros" createdAt="2025/06/11 00:43:18" color="">}}




{{<matomeQuote body="うん、Foaming ASAってのもあって、Foaming PLAとほとんど同じくらい軽いんだよ。<br>でも、僕のA1プリンターだとASAがうまくプリントできなくてさ。それに、飛行時間を稼ぐっていうミッションの目的を考えると、少しでも重くなるのは避けたかったから試さなかったんだ。" userName="tsungxu" createdAt="2025/06/11 01:09:28" color="">}}




{{<matomeQuote body="マジで発泡TPUとかあんの？知らなかった！TPU自体めっちゃ頑丈だから、これ使えたらヤバそう！" userName="sandos" createdAt="2025/06/11 08:39:05" color="">}}




{{<matomeQuote body="Colorfabb Varioshoreとかがあるよ。他にもいくつかあるし、マジで面白い素材だよ。" userName="regularfry" createdAt="2025/06/11 17:18:22" color="">}}




{{<matomeQuote body="最近のホビー用3Dプリンター（QidiとかBambuとか）ならABSの印刷マジで進化してるね。俺のQidi Plus 4はABSもPLAみたいに簡単に綺麗にプリントできるよ。換気だけはしっかりね。" userName="alvah" createdAt="2025/06/11 15:19:08" color="#ff33a1">}}




{{<matomeQuote body="ごめん、換気のことね、うんうん。俺のBambuもどんな素材でも完璧にプリントできるけど、やっぱABSとかの煙が嫌なんだよね。" userName="stavros" createdAt="2025/06/11 15:45:36" color="">}}




{{<matomeQuote body="200エーカーくらいの土地測量ミッションで、今DJIドローンとDronelink使ってるんだけど、バッテリーが35分くらいしか持たないんだよね。3時間かかるから、充電が全然追いつかない。VTOL固定翼機ならもっと長く飛べると思うんだけど、自作は難しそうだし、DJIでバッテリー買い増すのが結局コスパ良いのかな？地形も複雑だし、マジ悩む。筆者さんか誰か、固定翼機を追求する価値あると思う？" userName="energywut" createdAt="2025/06/10 23:27:16" color="#ff33a1">}}




{{<matomeQuote body="200エーカーで4時間！？それおかしいよ。Mavic 3とかで120m飛ばして重複率を65～75％に調整すれば、20～25分でカバーできるはず。飛行計画の重複率とか高さ、最適化見直してみなよ。" userName="abrbhat" createdAt="2025/06/11 11:03:02" color="#ff33a1">}}




{{<matomeQuote body="WHISPRっていう小さいドローン買ったんだけど、そこでOPみたいなVTOLドローンも見たよ。理論上は安いはず。<br>URL: https://www.uavmodel.com/products/makeflyeasy-hero-2180mm-ua...<br>これは最大上昇角が3度だから、ルートを計画する時にずっと上昇しなきゃいけないとか、タッキングが必要になる。<br>飛行計画はMission Planning (URL: https://ardupilot.org/planner/) とか、MavLinkプロトコル (URL: https://ardupilot.org/dev/docs/mavlink-routing-in-ardupilot....) でカスタマイズする感じ。<br>オープンソースのフライトコントローラーはここ (URL: https://ardupilot.org/copter/docs/common-autopilots.html#ope...) が良いスタート地点。完全に統合されたシステムを売ってる会社もあるけど、やっぱり高いよね。<br>君のユースケースはまさにVTOLか普通の固定翼機向きだよ。クアッドコプターじゃ全然カバーできない。カメラもDJIのはイマイチだけど、Sony ILX-LR1 (URL: https://www.bhphotovideo.com/c/product/1785754-REG/sony_ilx_...) とかならピクセル密度高くて、もっと高く飛んで広い範囲を速く撮れるよ。AIモデルもピクセル密度の計算とかできるから、ドローンがなくても飛行計画のモックアップは結構簡単にできるんだ。" userName="cyanydeez" createdAt="2025/06/10 23:56:18" color="#45d325">}}




{{<matomeQuote body="地形による差は大きいよね。繰り返し地形が多い場所は重複率高くする必要があるし。でも、なんか設定がおかしい可能性はありそう。" userName="lazide" createdAt="2025/06/11 11:21:26" color="">}}




{{<matomeQuote body="うちのは松林だらけの山岳地帯なんだ。SFMアルゴリズムだと重複率65-75％でも詳細を出すのが難しくて。地形が垂直に近くて背の高い松の木があるから、良いオルソフォト作るには複数の角度が必要で、だからグリッドが密になってるんだよ。4時間は概算で、実際は3時間くらいかな。" userName="energywut" createdAt="2025/06/11 19:01:51" color="#45d325">}}




{{<matomeQuote body="ドローンにもっと良いカメラ積めば、もっと速く、もっと高く飛べるようになるよ。" userName="debbiedowner" createdAt="2025/06/11 15:53:23" color="">}}




{{<matomeQuote body="この固定翼ドローン https://ageagle.com/drones/ebee-x/ が君のユースケースに合うと思うよ。" userName="froj" createdAt="2025/06/11 08:04:51" color="#45d325">}}




{{<matomeQuote body="VTOLはカッコいいけど長距離マッピングには過剰だよ。KFM wingのSlow-stickが小さくて軽くてシンプル、手投げできて着陸も楽。修理も簡単だし、Ardupilot付ければ高性能になる。調査ならSlow-stick+KFM wingのフリートを組むのがいいんじゃない？<br>[0] - https://www.rcgroups.com/forums/showthread.php?1395335-Begin...<br>[1] - https://www.flitetest.com/articles/kfm-wings-a-basic-explana..." userName="aa-jv" createdAt="2025/06/11 09:25:26" color="#38d3d3">}}




{{<matomeQuote body="いくら？価格セクションが空白なんだけど。" userName="arijun" createdAt="2025/06/11 10:46:10" color="">}}




{{<matomeQuote body="FAAの規制で400フィートまでしか飛べないんだよね。" userName="energywut" createdAt="2025/06/11 19:03:22" color="">}}




{{<matomeQuote body="1機じゃなくて10機買って、同時並行で飛ばして充電すれば？" userName="bagels" createdAt="2025/06/11 03:17:14" color="">}}




{{<matomeQuote body="これは機能美だね。ホビーレベルではVTOLは手投げとか簡単だからあまりメリットないって意見には同意だよ。" userName="tsungxu" createdAt="2025/06/11 14:33:10" color="">}}




{{<matomeQuote body="衛星画像会社にお金払って写真撮ってもらうのもアリかもね: https://skyfi.com/en/pricing" userName="nathan_f77" createdAt="2025/06/11 06:44:42" color="#ff5733">}}




{{<matomeQuote body="200エーカーを0.57x0.57マイルと仮定。15mphで飛べば30分で15ラインいける。ライン間隔は200フィート、秒速22フィート。15MP画像なら1フィート10ピクセル、240fpsならモーションブラーは1.1インチ。何か問題ある？" userName="debbiedowner" createdAt="2025/06/11 23:35:21" color="#ff5c5c">}}




{{<matomeQuote body="処理にはopendronemap: https://www.opendronemap.org/ をセットアップしたよ。オープンソースのハード・ソフトパスがあるのは心強いね。" userName="cyanydeez" createdAt="2025/06/11 00:02:12" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと気になるんだけど、なんで繰り返し測量しないといけないの？何か変化を監視してるの？" userName="noveltyaccount" createdAt="2025/06/12 13:56:01" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="このマッピングってどれくらいの頻度で必要なの？毎日なら別の方法探した方が絶対いいけど、半年に一度くらいなら面倒だけど出来そうかな。" userName="yapyap" createdAt="2025/06/11 09:58:48" color="">}}




{{<matomeQuote body="そのSonyの機材はすごいんだろうけど、レンズなしで2950$は高すぎない？ボディだけで243gも軽そうに見えないな。<br>俺ならSony Xperia 10IIIとかそれ以上を300$以下で手に入れて、170gのままバラすかな。ディスプレイとかケースの部品全部いる？GPSを使えるなら、もっとパワフルで重くて電力食うのに頼るより、フライトコントローラーに繋げられるんじゃない？参考ね：[¹] https://xdaforums.com/f/sony-xperia-10-iii.12225/cf. https://en.wikipedia.org/wiki/Ingenuity_(helicopter)" userName="LargoLasskhyfv" createdAt="2025/06/11 05:11:04" color="#38d3d3">}}




{{<matomeQuote body="20kドルくらいかな。" userName="hhh" createdAt="2025/06/11 11:33:20" color="">}}




{{<matomeQuote body="これがあまり得意じゃないのは、俺が知る限り、高さマップや点群を生成できるSFMデータを提供することだと思うんだ。もしかしたら間違ってるかもだけど！" userName="energywut" createdAt="2025/06/11 19:02:57" color="">}}




{{<matomeQuote body="うちも似たような状況で、もっと小さい森林地帯なんだけどね。90%オーバーラップしてもステッチできない時があるんだ。君の苦労は分かるよ。" userName="lazide" createdAt="2025/06/11 19:11:32" color="">}}




{{<matomeQuote body="これが課題だよね。俺のセットアップは2kドル以下で済んだよ。" userName="energywut" createdAt="2025/06/11 19:02:19" color="">}}




{{<matomeQuote body="プロジェクトにはなるけど、HeeWing’s T2 Cruza VTOLはすごく面白そうだね。大容量バッテリーと高品質カメラの両方を積めそうだし。" userName="Daviey" createdAt="2025/06/11 08:51:59" color="">}}




{{<matomeQuote body="今のところの答えは、バッテリーを買い足してDJIドローンを使うのが一番だよ。費用対効果の点でこれに匹敵するものは他にないね。" userName="Baeocystin" createdAt="2025/06/11 06:08:59" color="">}}




{{<matomeQuote body="いい質問だね！市販の5kドル以下のVTOLで、3時間飛行に近づけるものは無いと思うな。あと、DJIほどプラグ＆プレイなものも無いしね。もしDIYにやる気があって、ArdupilotかPX4（こっちの方が簡単）の使い方を学ぶ気があるなら、Heewing T2 VTOLみたいなキットを買って自分で組むことはできるよ。でも、俺が使ったのと同じ高エネルギー密度のバッテリーパックを使っても、2時間以上の飛行時間は無理だと思うな。" userName="tsungxu" createdAt="2025/06/10 23:54:24" color="#45d325">}}




{{<matomeQuote body="時間があってやりたいなら、FPVの世界に入って自分でドローン作れるよ。フレーム、モーター、ESCs、コントローラーとか色々変えられるし、DJIのよりずっと自分で制御できる。すごくやりがいもあるんだ。でも時間かかるから、経済的な選択肢じゃないかもね。" userName="yard2010" createdAt="2025/06/11 12:11:11" color="">}}




{{<matomeQuote body="’機能が美学に従う’って意見には同意できないな。同じ機能ならもっと少ないプラスチックでできるはずだよ。" userName="aa-jv" createdAt="2025/06/12 07:28:04" color="">}}




{{<matomeQuote body="https://wingtra.com/vtol-drone/<br>これ使ったことないけど、このデザインかV-22みたいなティルトローター式が個人的には興味深い二つのデザインだな。チェックしてみる価値あるかも？" userName="digdugdirk" createdAt="2025/06/11 02:16:05" color="#38d3d3">}}




{{<matomeQuote body="FAAはデフォルトだとこれは許可してないんだよね。一度に遠隔で操縦できるドローンは一台だけ。FAAのwaiverを申請することはできるけど（VLOS外飛行のは持ってる）、複数台のドローンを同時に安全に監視できるってどうやってFAAを説得できるかマジで分からないな。" userName="energywut" createdAt="2025/06/11 18:59:03" color="#ff5733">}}




{{<matomeQuote body="四半期ごとにマッピングしてるよ！今はこれでなんとかしてる :D" userName="energywut" createdAt="2025/06/11 19:03:39" color="">}}




{{<matomeQuote body="これ信じられないくらいすごいね。どんな関連スキルや知識から始めたのか、プロジェクトを完成させるのに何を知る必要があったのか、もっと詳しく聞きたいな。Ardupilotはどのくらいカスタマイズする必要があったの？ドローンの制御は独自？それとも標準的なの？" userName="normie3000" createdAt="2025/06/10 22:54:25" color="#45d325">}}




{{<matomeQuote body="ありがとう！ホバー、トランジション、巡航飛行にはArdupilotの標準制御システムを使ってるよ。ファームウェア側は、パラメータとチューニングだけカスタマイズした感じ。<br>どんなことから始めたか：<br>- 前にfoamboardでVTOLを一つ作ったことがあった（3Dプリントじゃない）。<br>- そのプロジェクトとマルチコプターやCOTS VTOLの組み立てでArdupilotに慣れてた。<br>- だからVTOLの負荷に耐える構造的に丈夫な機体を作る経験は少しあったけど、3Dプリントは新しい課題だったね。<br>- どうやってやり遂げたかってのは難しい質問だけど、設計、フライトテスト、トラブルシューティングに集中したことかな。必要に応じてLLMs、YouTube、フォーラムとかで助けてもらった。<br>- パブリックで開発したのが逆説的に助けになったよ。ドキュメント作ったりシェアしたりする手間は増えるけど、モチベーションが高まって早く進めることができたから、結果的に時間節約になったんだ。" userName="tsungxu" createdAt="2025/06/11 00:05:23" color="#ff5c5c">}}




{{<matomeQuote body="Ardupilotはすごく、すごく成熟したソフトウェアだよ。ウクライナから出てくるドローン映像の多くにあるHUDオーバーレイは、たぶんArdupilotから来てるね。思いつくものなら何でもArdupilotはサポートしてるよ。飛行機、ヘリコプター、VTOL、スピードボート、ヨットまでね。" userName="hadlock" createdAt="2025/06/10 23:43:37" color="#ff5733">}}




{{<matomeQuote body="ArduPilotを仕事で扱ってる者として、非常に複雑な気持ちだよ。成熟してる、確かに。あらゆる種類の乗り物もサポートしてる。美しくモジュール化されてて、大量のフライトコントロールやセンサーハードウェアをサポートしてる。そして、イライラするし異常にjankyな部分も間違いなくあるんだ。<br>君が言ってる”HUD”オーバーレイは厳密にはMission Planner（GCSソフトウェア）の話で、ArduPilot（フライトコントロールソフトウェア）じゃないんだ。Mission PlannerとArduPilotは両方Mavlinkで通信するし、同じコミュニティによって開発されてる。MPは柔軟だよ。やりたいことはほとんど何でもできるように設定できる。そしてひどくて異常にjankyでもある…でも極めて強力なんだ。そして両方とも無料。<br>問題は、両方とも十分優れてるから、もっと良い代替を開発する大きな動きが出てこないってことだと思う。GCS側にはQGroundControlやAPM Planner 2（これはMission Plannerのフォークか再実装）もある。両方ともそれぞれの利点欠点があるけど、どちらもMission Plannerほど成熟してないし、強力・柔軟じゃない。PX4はフライトコントローラー側で商業的に人気があるけど、それはBSDライセンスだからGPLじゃないからで、その結果として企業が独自の機能をビルドして upstream にプッシュバックしないから、ArduPilotほど機能は全然多くないんだ。<br>この手のものは間違いなく”worse-is-better”の領域だね。ArduPilotは無料、ArduPilotはすごい、そしてArduPilotは最悪。:)<br>まあ、寝る時間だ。今、長いテストキャンペーン中で、天気が崩れる前にまた0430に起きてArduPilotベースの機体を飛ばさないといけないんだ。" userName="tonyarkles" createdAt="2025/06/11 01:40:30" color="#ff5c5c">}}




{{<matomeQuote body="APは箱出しでVTOLに対応してるから、APのカスタマイズは何も必要なかったように見えるね。" userName="stavros" createdAt="2025/06/10 23:26:00" color="">}}




{{<matomeQuote body="自作で大変なのは機体の強度だよ。<br>マルチコプターとか固定翼機の設計をちゃんと分かってないとね！" userName="tsungxu" createdAt="2025/06/11 00:06:25" color="">}}




{{<matomeQuote body="素人にしてはすごいよね！<br>垂直と水平でモーター分けててシンプルだけど、水平飛行の時に垂直用のモーターがすっごく抵抗になるのは非効率だね。<br>モーター回転させるのは重くなるから、航続距離は減っちゃうだろうな。" userName="bufferoverflow" createdAt="2025/06/10 21:09:06" color="">}}




{{<matomeQuote body="いやいや、そんなに非効率じゃないよ！<br>この設計だと、巡航用のモーターとプロペラが最適化されてるから効率がいいんだ。<br>チルトローターみたいにモーターが揚力も兼ねるタイプだと、ホバリングは巡航の4〜7倍のパワーが必要だから、モーターが最適な動きにならないんだよね。<br>ArcherのCTOのMunozも言ってることだよ。" userName="tsungxu" createdAt="2025/06/10 21:17:00" color="#ff5c5c">}}




{{<matomeQuote body="これWingが使ってるデザインとそっくりだね！<br>彼らはコストとか航続距離、複雑さ、安全性のトレードオフをかなり分析して、今の形に落ち着いたんだろうな。<br>https://en.wikipedia.org/wiki/Wing_Aviation#/media/File:Wing..." userName="xnx" createdAt="2025/06/10 21:29:38" color="#38d3d3">}}




{{<matomeQuote body="Wingのデザインですごいのはね、<br>1) 荷重経路が設計されてて、制御された感じで機体が壊れるようになってること、<br>2) 4枚プロペラのブレードが長短交互になってて、音が静かなこと！<br>Adam Savageが最近工場のツアー動画を出してたよ、見るべき！" userName="tsungxu" createdAt="2025/06/10 21:40:52" color="#ff5c5c">}}




{{<matomeQuote body="＞ Adam Savageの工場ツアー動画、見る価値あり＞<br>ありがとう！ https://www.youtube.com/watch?v=_BXm6dTHvY0<br>WaymoもWingも大好きなんだけど、これは知らなかったな。" userName="xnx" createdAt="2025/06/10 22:11:10" color="">}}




{{<matomeQuote body="すごいね！同じツアーのSlo Mo guysの動画も見てみて。<br>プロペラの煙の渦が見れるよ！<br>https://www.youtube.com/watch?v=5yaAFLpLmVg" userName="tsungxu" createdAt="2025/06/10 22:17:30" color="#45d325">}}




{{<matomeQuote body="チルトローター機構を追加するのは、複雑になるし重くなるから、この設計の場合は見合わないだろうね。<br>でも、別々にモーターやプロペラがあることによる重量増加と抵抗増加については、君の言う通りだと思うよ。" userName="the__alchemist" createdAt="2025/06/10 21:14:33" color="">}}




{{<matomeQuote body="あとは、開発のサイクルも遅くなるし、大きい試作機を自分たちで作るなら、開発と認定にお金もかかるね。" userName="tsungxu" createdAt="2025/06/10 21:19:51" color="">}}




{{<matomeQuote body="DIYで色々なVTOLのバリエーションがあるよ！<br>これもその一つだよ！<br>https://hackaday.com/2022/08/22/optimising-a-rc-tilt-rotor-v..." userName="btbuildem" createdAt="2025/06/11 13:43:17" color="#45d325">}}




{{<matomeQuote body="宣伝させてね。https://aliptera.com/Tilt-rotor で、4つのモーター全部にチルトローターが付いてるんだ。それに、翼の形が垂直モードでも揚力を生み出すから、小さいモーターで済むし、水平モードでも効率良いんだよ。" userName="amstan" createdAt="2025/06/11 02:59:57" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞翼の形が垂直モードで揚力を生み出すって、具体的にどういう意味？翼って airspeed が必要でしょ？垂直モードじゃそんなに airspeed はないと思うけど。" userName="joha4270" createdAt="2025/06/11 06:29:06" color="">}}




{{<matomeQuote body="あと、チルト機構とかの部品を考えると、重さ（と空気抵抗）のペナルティは5%くらいかな。でも、電動モーターの比出力は今世紀に入ってどんどん上がってるから、このペナルティは今後最大でもこのくらいになるんじゃない？" userName="tsungxu" createdAt="2025/06/10 21:18:57" color="">}}




{{<matomeQuote body="オートジャイロみたいだね。あれ、けっこう効率良いんだよね。" userName="atemerev" createdAt="2025/06/11 06:30:21" color="">}}




{{<matomeQuote body="注目したのは、使ってるSOTAバッテリーセル（Amprius SA08）なんだ。パック価格は1300 USDだって。このURLで見れるように、これは市場で断トツの最高の重量エネルギー密度だよ。<br>https://www.batemo.com/products/batemo-cell-explorer/?mode=n..." userName="dsrtslnd23" createdAt="2025/06/11 19:27:55" color="#45d325">}}




{{<matomeQuote body="操縦翼面が気になるな。クアッドコプターみたいに4つのモーターがあるから、推力だけで yaw、pitch、roll 全部を制御できるんじゃない？サーボが不要になって軽くなる分のメリットが、バッテリーの余計な消費に見合うかな？" userName="jojohohanon" createdAt="2025/06/11 12:56:17" color="#38d3d3">}}




{{<matomeQuote body="いい質問だね。でも、巡航中にリフト用モーターを回し続けるのは効率が悪くて、それに見合う以上の電力を消費するんだ。翼に取り付けた複数の巡航モーターで推力差を使ってロール制御する方法もあるけど（旅客機みたいに）、これもたいてい効率良くない。サーボは他の部品に比べて質量は小さい部分だよ。" userName="tsungxu" createdAt="2025/06/11 14:31:16" color="#ff33a1">}}




{{<matomeQuote body="yaw ってどうやってやるの？" userName="kulhur" createdAt="2025/06/11 14:21:47" color="">}}




{{<matomeQuote body="クアッドコプターと同じだよ。時計回りのプロペラ（例えばね）の回転数を上げて、反時計回りのローターの回転数を下げるんだ。結果的に反時計回りに yaw するけど、揚力には変化はないんだ。" userName="jojohohanon" createdAt="2025/06/11 21:22:52" color="">}}




{{<matomeQuote body="すごくクールだね。感動したよ。情熱のあるものを他の人も作ってくれるといいな。「ただやればいいんだ。そして学べばいい。」許可とか授業（学位なんてなおさら）とか、ガイドや先生を待つ必要はないんだ。" userName="ImageDeeply" createdAt="2025/06/10 22:43:42" color="">}}




{{<matomeQuote body="ありがと、そう言ってくれて嬉しいよ。ぜひ見てほしいね。情熱を持ってやると、どれだけ仕事が速く、良くなるかってのは言葉で伝えるのが難しいんだよね。" userName="tsungxu" createdAt="2025/06/10 23:55:43" color="">}}




{{<matomeQuote body="”100年前は飛行機の先駆者になるのに兄弟と自転車屋が要った。今は適切なツールチェーンがあればいい…”<br>これマジ感動した！想像を現実に変えるループは、すでにある分野で一番速く回るんだね。" userName="cwmoore" createdAt="2025/06/11 00:30:27" color="#45d325">}}




{{<matomeQuote body="ずっと作ってみたいと思ってたけど、まだ手を出せてないんだよね。詳しい設計図とか、初心者向けのチュートリアルがあったら最高なんだけど。もしそんな活動するなら、寄付とかPatreonで応援したいな。" userName="snapetom" createdAt="2025/06/10 21:28:34" color="#785bff">}}




{{<matomeQuote body="そう言ってもらえて感謝！でも、ナレーションとか動画クリップとか入れた長い動画作るのって、本当にすごく手間がかかるんだよね。" userName="tsungxu" createdAt="2025/06/10 21:32:37" color="">}}




{{<matomeQuote body="Foaming PLAなんて初めて聞いたな、絶対チェックしないと。A1とかA1 miniみたいな小さいプリンターで機体全部作ったの？翼の形を印刷したいけど、小さいパーツを組み合わせて強度出す方法が全然想像つかないんだよね。100cmの翼なら10cm角のを10個どうやってくっつけるんだろ。それが分かるまで、グライダーみたいな飛行機はフォームボードで作るしかないかな。" userName="mlsu" createdAt="2025/06/10 23:03:30" color="#ff5c5c">}}




{{<matomeQuote body="A1なら256x256mmだから、この翼は4つのセクションで印刷できるよ（ブームマウント用の二重壁部分も入れて）。高アスペクト比のグライダーだと、もうちょいセクションが増えるかもね。Carbon fiberの補強材とCA glueでくっつければ大丈夫。" userName="tsungxu" createdAt="2025/06/11 01:29:01" color="#785bff">}}




{{<matomeQuote body="Prusa MK3SでTitan Dynamicsの機体を（ホビー向けアクセス閉じる前に）Foaming PLAとCF spars使って印刷したことあるよ。胴体は3分割、翼はそれぞれ1個、翼端は1個にまとめて印刷した。A1 miniだとギリギリだけど、A1のフルサイズなら全然いけると思う。" userName="tonyarkles" createdAt="2025/06/11 01:46:14" color="#38d3d3">}}




{{<matomeQuote body="動画の「リビルド」って章にあるみたいに、翼のパーツをまとめて印刷するのに成功したんだ。翼のパーツはベッドの面積をあんまり使わないから、この方法がすごくうまくいくんだよね。" userName="tsungxu" createdAt="2025/06/11 02:15:48" color="#38d3d3">}}




{{<matomeQuote body="そうだね！俺もそうしたかったんだけど、Foaming PLAフィラメント使うのが初めてだったから、印刷失敗して無駄にしたくなかったんだよ。" userName="tonyarkles" createdAt="2025/06/11 02:17:28" color="">}}




{{<matomeQuote body="マジすごいね！ドローン自体の重さにプラスして、どれくらいの重さのものを運べるか試したことある？" userName="georgel" createdAt="2025/06/10 21:09:13" color="#ff5733">}}




{{<matomeQuote body="ありがとう、まだ試してないよ！この機体のバッテリーは総重量の53%を占めてるんだ。だいたいVTOLのバッテリーはペイロード込みだと30%くらいが目安らしいね。だからもっと小さい6Sバッテリーでもいいかも。あと、問題なく0.5 lbsくらいならペイロード増やせると思うよ。ホバリング時のスロットルは45%くらいだから、バッテリーの質量比率を変えずにペイロード増やす余地はあるんだ。" userName="tsungxu" createdAt="2025/06/10 21:21:55" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ気に入った！でも、それ以上に初心者なのに短期間で素晴らしい結果を出すっていう発想が最高！そういう開発マインドってすごいよね。ただ、普通の仕事に応募する時は難しいかもね。面接官が情熱を見抜いてくれるならいいけど、そうじゃないと「無理だろ」って思われがち。嘘ついたり専門用語並べたりしないとね。質問なんだけど、フライトスタックについて何か情報ある？ Pixhawk/Arduかな？それともiNavとか？" userName="tamimio" createdAt="2025/06/11 03:58:14" color="#45d325">}}




{{<matomeQuote body="ありがとう！普通の仕事の件だけど、Peter Ryseckのビルド見てみてよ。あれでJobyに雇われたらしいよ。<br>https://www.youtube.com/watch?v=Dd2N_lyO_SQ" userName="tsungxu" createdAt="2025/06/11 14:37:29" color="#45d325">}}




{{<matomeQuote body="すごい！ウクライナにデザイン共有できないかな？（もちろん、どこにも漏れないように気をつけてね）。戦場だと3時間の滞空ってすごく意味あるだろうから。" userName="atemerev" createdAt="2025/06/11 06:26:44" color="">}}




{{<matomeQuote body="素晴らしい仕事だね！これは本当にすごいし、開発中にぶつかった課題を乗り越える粘り強さと根性を見せてくれたね。" userName="thedays" createdAt="2025/06/11 00:30:03" color="">}}




{{<matomeQuote body="Ardupilotってすごいよね、たくさんの人がMission Plannerと一緒に使ってるし。Mission Plannerについてどう思う？他にみんなが好きなソフトってある？<br>https://ardupilot.org/planner/ - ウェブサイトは今ダウンしてるみたいだけど。" userName="throw14082020" createdAt="2025/06/11 11:22:53" color="#45d325">}}




{{<matomeQuote body="Mission PlannerはまあまあのGCSだけど、設定には最悪だよ。代わりにこれ使ってみなよ<br>https://github.com/ArduPilot/MethodicConfigurator<br>他のグラウンドコントロール探してるなら、QGroundControlとかMavproxy（これはターミナルベース）も試せるよ。" userName="aesbetic" createdAt="2025/06/11 12:06:08" color="#ff5733">}}




{{<matomeQuote body="いいね！これはセットアップを早くするのに役立ちそうだし、初心者にも簡単そうだ。" userName="tsungxu" createdAt="2025/06/11 14:34:18" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
