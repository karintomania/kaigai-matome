+++
date = '2025-10-12T00:00:00'
months = '2025/10'
draft = false
title = '2025年、衝撃のリアルタイムグラフィックス！まるで実写な新技術の可能性と課題'
tags = ["グラフィックス", "リアルタイム", "3D", "レンダリング", "ゲーム開発"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> 2025年、衝撃のリアルタイムグラフィックス！まるで実写な新技術の可能性と課題

引用元：[https://news.ycombinator.com/item?id=45556952](https://news.ycombinator.com/item?id=45556952)




{{<matomeQuote body="このスズメバチのCG、マジで今まで見た中で一番すごい！まるでマクロ撮影写真みたいだし、リアルタイムレンダリングってのがヤバいね。PS6の議論が前にあったけど、ゲーム開発に関わってたら、こんなアセットをどう取り入れるか真剣に考えるだろうな。" userName="fidotron" createdAt="2025/10/12 14:22:51" color="#ff33a1">}}




{{<matomeQuote body="Gaussian splatsは普通のゲームに必要な柔軟性がないね。PBRじゃないからライティングがハードコードされがちだし、リギングも編集もかなり難しい。単体で何かを視覚化するにはいいけど、シーン構築には向かないよ。" userName="redox99" createdAt="2025/10/12 15:03:47" color="#785bff">}}




{{<matomeQuote body="みんなPBR特性の回復、リギング、編集に取り組んでて、時間と共になんとかなると思うよ。今すぐ大規模プロジェクトには使わないけど、数年後にはいけるかも。でも、Gaussian splatsの真の問題はGIだね。GIとPBRの色を分けても、GIがどこから来たのか、新しいライティングでどう再計算するのか全く分からない。" userName="jtolmar" createdAt="2025/10/12 16:01:58" color="#ff5c5c">}}




{{<matomeQuote body="GIの問題に果敢に取り組んでる人たちもいるよ！https://arxiv.org/abs/2410.02619" userName="btown" createdAt="2025/10/12 22:37:33" color="#ff5c5c">}}




{{<matomeQuote body="すごいね！<br>それと、アブストラクトの下に隠れてて見逃しやすいけど、論文のプロジェクトページのリンクはこちらだよ: https://stopaimme.github.io/GI-GS-site/" userName="vanderZwan" createdAt="2025/10/13 00:14:18" color="#ff5733">}}




{{<matomeQuote body="アニメーションがないのはかなり大きな障壁だね。でも、この技術はビデオクリップは扱える。複数の記録されたポーズをブレンドするみたいな、ブレンドシェイプ風のアニメーションができるかどうか気になるな。" userName="jayd16" createdAt="2025/10/12 15:13:15" color="#ff5c5c">}}




{{<matomeQuote body="初期3Dエンジンや16ビットの2Dゲームはみんな“Canned Animation”だったよね。リアルなIKリギングを使った初期の例だと『Half-Life』が思い浮かぶけど、『Unreal 1』は違ったな。" userName="kridsdale1" createdAt="2025/10/13 04:43:58" color="">}}




{{<matomeQuote body="『Half-Life』はFK (フォワードキネマティクス) だね。IKは『HL2』で導入されたと思う（確証はないけど）。" userName="redox99" createdAt="2025/10/13 11:47:55" color="">}}




{{<matomeQuote body="『HL2』でさえ、ほとんどは普通のFKアニメーションだよ。IKが使われるのは、斜面で足が地面にちゃんとつくようにするとか、限られたケースだけだね。" userName="account42" createdAt="2025/10/13 12:24:38" color="#38d3d3">}}




{{<matomeQuote body="現代のゲームでも同じだね。IKは微調整やプロシージャルな処理に使うけど、他はFKだよ。もちろんオーサリング中はIKも使われるけどさ。" userName="redox99" createdAt="2025/10/13 17:17:31" color="#45d325">}}




{{<matomeQuote body="次の拡張と追加パラメータが必要になるだろうけど、AAA級のアセットは、数年前から凝った照明リグ付きカメラでシェーダーを作ってるよ。" userName="fidotron" createdAt="2025/10/12 15:32:55" color="#45d325">}}




{{<matomeQuote body="すごく良いじゃん。でもウェブサイトのフィードバックだけど、黒い文字に暗い灰色の背景ってどうなの？リーダーモードを使わざるを得なかったよ。" userName="iamflimflam1" createdAt="2025/10/12 13:34:24" color="">}}




{{<matomeQuote body="ページの彩度のせいで、手前に何かハイライトされてて見えないのかと思ったよ。ページ全体が「背景」として陰ってるみたいだった。" userName="sethammons" createdAt="2025/10/12 21:36:17" color="">}}




{{<matomeQuote body="君とは逆の経験だな。このウェブサイトは、メガネをかけてもエッジがぼやけずにハッキリ読める数少ないサイトの一つだよ。" userName="kaptainscarlet" createdAt="2025/10/12 15:35:21" color="">}}




{{<matomeQuote body="なら、スクリーンの明るさを下げるべきだね。明らかに明るすぎだよ。これは客観的に見て、コントラストに関するアクセシビリティガイドラインに違反してる。" userName="crazygringo" createdAt="2025/10/12 17:28:14" color="">}}




{{<matomeQuote body="だよね。ボディ要素の背景色を#767676にしてみてよ。どれだけ良くなるか分かるからさ。" userName="wittjeff" createdAt="2025/10/13 02:46:40" color="#38d3d3">}}




{{<matomeQuote body="うん。すごく明るさを低くしても自分には問題ないよ。リーダーモードの良いところは、それが使えない人たちにとって常に逃げ道があるってことだよね。" userName="Waterluvian" createdAt="2025/10/12 19:36:18" color="">}}




{{<matomeQuote body="これはすごいね！マクロ写真とGaussian splattingを組み合わせるなんて考えもしなかったよ。これをフリーカルチャーファイル（CC BY）として公開してくれて本当にありがとう！" userName="1gn15" createdAt="2025/10/12 12:11:55" color="#785bff">}}




{{<matomeQuote body="Gaussian Splattingがハエの虹色の反射をどう表現してるか気になるな。反射面がちゃんと反射して見えるのは不思議。なんかすごい裏技でもあるのかな？それとも俺が何か誤解してる？" userName="etskinner" createdAt="2025/10/12 12:21:04" color="#785bff">}}




{{<matomeQuote body="Gaussian Splattingの色は視点に依存してるから、ライティングが固定されてて、3Dアニメーションには直接使えないんだよね。モデルに近づきすぎると、一部が透明に見えたりすることもあるよ。鏡もただの反転した映像で、通り抜けられるし。" userName="ricardobeat" createdAt="2025/10/12 14:25:46" color="#ff5733">}}




{{<matomeQuote body="Gaussian Splatを従来の3Dモデルに変換するとき、視点による色の変化をマテリアル設定に活かせそうじゃん。例えば、視点によって色が大きく変わる小さなボリュームの塊があったら、それを滑らかな反射面として扱える、みたいなね。" userName="blincoln" createdAt="2025/10/12 15:20:14" color="#38d3d3">}}




{{<matomeQuote body="Gaussian Splatは、ポリゴンモデルに簡単に変換できないんだ。このぼやけたSplatで表現するってのが画期的なんだよ。" userName="ricardobeat" createdAt="2025/10/12 21:20:41" color="#785bff">}}




{{<matomeQuote body="Gaussian Splatsって、視線方向で色が変わる成分を持てるんだ。これはSpherical Harmonicsで実装されてて、そのコンポーネント数が少ないと反射の変化がゆっくりで滑らかになっちゃって、全体的にぼやけるらしいよ。" userName="Klaus23" createdAt="2025/10/12 12:52:11" color="#45d325">}}




{{<matomeQuote body="記事に「Gaussian splatはぼやけた楕円体で、それぞれ視点依存の色を持つ」って書いてあるけど、これで説明つくのかな？" userName="abainbridge" createdAt="2025/10/12 12:44:12" color="">}}




{{<matomeQuote body="ここを見てみて、「View-dependant colors with SH」ってセクションがあるよ！<br>https://towardsdatascience.com/a-comprehensive-overview-of-g..." userName="meindnoch" createdAt="2025/10/12 15:08:26" color="#ff5c5c">}}




{{<matomeQuote body="焦点距離に依存するGaussian Splatsをフィッティングする研究ってないのかな？生の、スタックされてないショットから、ボケをモデリングして、シャープなモデルを返す方法みたいなの。" userName="Scene_Cast2" createdAt="2025/10/12 12:18:35" color="#785bff">}}




{{<matomeQuote body="この分野、いくつかグループが研究してるよ！<br>https://dof-gs.github.io/<br>https://dof-gaussian.github.io/" userName="yorwba" createdAt="2025/10/12 13:01:45" color="#785bff">}}




{{<matomeQuote body="リンクありがとう！でも、それがベストなアプローチかはまだ微妙だな。マクロ撮影でブレブレの画像からSfMするの、どれくらいうまくいくかわかんないし、画像ももっと必要になりそう。結局、フォーカススタッキングに戻っちゃう気がするんだよね。" userName="danybittel" createdAt="2025/10/12 13:51:56" color="#ff33a1">}}




{{<matomeQuote body="この論文はSfMから始まるパイプラインを説明してるけど、SfMの課題はカメラの位置や向きを正確に測ったり、画像の焦点領域を使ったりして解決できるかもね。全体的に見ると、end-to-end model pipelinesを構築する長い道のりって感じだ。専門的なアルゴリズムと統一されたニューラルパイプライン、どっちがいいか、情報共有のメリットで決まるんだと思うよ。" userName="pbronez" createdAt="2025/10/12 14:24:50" color="#ff5733">}}




{{<matomeQuote body="SfMにはカメラのintrinsic（レンズ、センサーサイズ）やextrinsic（位置、回転）を入れられるけど、回転はsubpixel accuracyで測るのが難しいんだよね。位置は初期推定には使えるけど、個人的には手間と合わないって感じだったな。画像がしっかり追跡できるなら、extrinsicなしでも十分正確な追跡ができるよ。" userName="danybittel" createdAt="2025/10/13 04:46:29" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Exquisite Creatures Revealedのアーティストとコラボできたらすごいだろうね！彼は色やiridescent effectsを際立たせる方法で昆虫を展示してて、その展示にはめちゃくちゃ感動したんだ。アーティストのサイトはここだよ：https://christophermarley.com/" userName="jchanimal" createdAt="2025/10/12 17:45:10" color="#785bff">}}




{{<matomeQuote body="Stars/NoooNが486で23,806トライアングルをリアルタイムレンダリングしてたのと比べると、かなりの進歩だね！当時の映像はこれだよ：https://youtu.be/wEiBxHOGYps" userName="smokel" createdAt="2025/10/12 11:41:13" color="#ff5c5c">}}




{{<matomeQuote body="あれっていつ作られたの？YouTube動画は14年前だけど、感覚的にはもっと古い気がするね。" userName="pbronez" createdAt="2025/10/12 14:30:47" color="">}}




{{<matomeQuote body="1995年だよ。" userName="ku1ik" createdAt="2025/10/12 15:01:50" color="">}}




{{<matomeQuote body="インタラクティブな回転デモが、スマホのブラウザでリアルタイムで動くなんてすごいね！Gaussian Splatsはレンダリング自体はそこまで重くないけど、computeが大変なんだろうな。" userName="Aardwolf" createdAt="2025/10/12 14:03:35" color="#ff5c5c">}}




{{<matomeQuote body="ファイルサイズが小さいのが本当にすごいね！最近の4D Splatsは動くシーンを動き回れるんだけど、あれでも数MBなんだ。今の技術の小ささには驚かされるよ。" userName="gdubs" createdAt="2025/10/12 17:19:23" color="#45d325">}}




{{<matomeQuote body="この技術、最近「The Matrix」を再訪するのに使われたんだって！これを見てみてよ：https://www.youtube.com/watch?v=iq5JaG53dho&t=1412" userName="tobwen" createdAt="2025/10/12 14:52:59" color="#ff5c5c">}}




{{<matomeQuote body="この3D、モバイルだと全然使えないのは残念だね。orbit modeで触るとsouthern pole viewに固定されちゃって、どう回そうとしてもめちゃくちゃ動き回るんだよ。" userName="iandanforth" createdAt="2025/10/12 16:22:53" color="#785bff">}}




{{<matomeQuote body="やあ、PlayCanvasの開発者だけど、どのスマホ/デバイスを使ってる？バグかもしれないよ（シャレじゃないよ）。" userName="slimbuck" createdAt="2025/10/12 16:49:44" color="#ff33a1">}}




{{<matomeQuote body="俺もAndroid 14のFennec F-Droid 143.0.3 (Firefox)で同じこと起きてるよ。" userName="miclill" createdAt="2025/10/12 18:13:44" color="#45d325">}}




{{<matomeQuote body="了解、確認してくれてありがとう。Firefox関連の問題みたいだね。なるべく早く修正するよ！" userName="slimbuck" createdAt="2025/10/12 18:15:11" color="#38d3d3">}}




{{<matomeQuote body="Fennec F-Droidでも同じ問題に遭遇してる。" userName="uneekname" createdAt="2025/10/12 21:14:13" color="">}}




{{<matomeQuote body="俺もFirefoxだからバグがない状態でどう動くか見れないんだけど、モバイルでGaussian Splatsを操作するならScaniverseアプリが最高だよって言いたかっただけ。UXが本当に素晴らしいからね。" userName="OrangeMusic" createdAt="2025/10/13 16:52:51" color="#ff5c5c">}}




{{<matomeQuote body="俺のiPhone 12、iOS 18.6.2とFirefox 143.2 (62218)では問題ないよ。" userName="Moosdijk" createdAt="2025/10/12 20:19:37" color="#ff5733">}}




{{<matomeQuote body="ズームインすると軌道感度がちょっと高すぎるね。他の人が言ってたみたいにモデルが制御不能になっちゃうことがある。でも、まだ何とか操作できるよ。ただすごく敏感なだけ。" userName="Moosdijk" createdAt="2025/10/12 20:21:13" color="#45d325">}}




{{<matomeQuote body="これ大好き！<br>https://superspl.at/view?id=ac0acb0e<br>これは名前が間違ってると思うな。" userName="bix6" createdAt="2025/10/12 15:05:39" color="#38d3d3">}}




{{<matomeQuote body="指摘してくれてありがとう、直したよ。" userName="danybittel" createdAt="2025/10/12 15:12:46" color="#ff33a1">}}




{{<matomeQuote body="結果が信じられないくらいクリーンだね！羽根とか花も面白そう。<br>だけど、暗いグレーの背景に黒いテキストはほとんど読めないよ。リーダーモードを使ったもん。" userName="mkl" createdAt="2025/10/12 12:08:28" color="#45d325">}}




{{<matomeQuote body="これだけ少ない機材と労力でこの結果はすごいね。もっと良い機材（Sony a7rV、100mm 1.4x macro）と多くのフレームを使ったら、どんなものができるんだろう？ウェブ版は容量の関係で詳細が削られてるだろうし、VR headsetで見たら最高だろうね。" userName="zokier" createdAt="2025/10/12 13:09:49" color="#ff5c5c">}}




{{<matomeQuote body="モデルはブラウザで見れるよ！<br>https://superspl.at/view?id=1eacd61c ハチ！<br>https://superspl.at/view?id=23a16d0e ハエ！" userName="singularity2001" createdAt="2025/10/13 07:14:54" color="#45d325">}}




{{<matomeQuote body="本当にすごい結果だね。フォーカススタッキングじゃなくてLytro Illumを使えば、一回の撮影で全アングルを撮れるのかな？でもLytro Illumの解像度って十分なの？" userName="blincoln" createdAt="2025/10/12 15:08:28" color="#ff5733">}}




{{<matomeQuote body="それができたら超すごいね。パッと見じゃ何でできないのか分からないから、ちょっと詳しく調べてみるよ。教えてくれてありがとう！" userName="danybittel" createdAt="2025/10/12 15:21:22" color="#ff5c5c">}}




{{<matomeQuote body="マクロ撮影の被写界深度が浅すぎると、処理がうまくいかないんだってね。ぼやけた写真を入れると、モデルもぼやけるらしい。カメラの焦点深度を直接モデル化できるはずだけど、普通のソフトウェアじゃやらないのかな？でも、色んな焦点で何枚か画像は必要そうだね。" userName="petters" createdAt="2025/10/12 18:33:32" color="#38d3d3">}}




{{<matomeQuote body="これ、うちのDrosophila lab（ショウジョウバエ研究室）には最高に役立ちそう！" userName="Feuilles_Mortes" createdAt="2025/10/12 12:40:39" color="">}}




{{<matomeQuote body="Triangle splattingがこの分野を大改革すると思う？誰か知ってる人いる？<br>https://trianglesplatting2.github.io/trianglesplatting2/" userName="singularity2001" createdAt="2025/10/13 07:25:52" color="#38d3d3">}}




{{<matomeQuote body="すごい仕事だね！全部オンラインで見れるのが特に良いよ。マルハナバチが一番お気に入り！もふもふしてて可愛い。" userName="hmry" createdAt="2025/10/12 11:21:21" color="#ff5733">}}




{{<matomeQuote body="昆虫の皮膚とか殻の細かいディテールがめちゃくちゃすごいね。どんな計算ハードウェアを使って、どれくらいの時間でできたのか知りたいな。" userName="kreelman" createdAt="2025/10/12 11:26:21" color="#ff5733">}}




{{<matomeQuote body="そんなにすごい機材は使ってないよ。PostshotにはNVIDIA cardが必要だけど、俺は3060Tiを使ってる。昆虫1匹で約500万splatsだと、高品質でトレーニングに3時間くらいかかるかな。" userName="danybittel" createdAt="2025/10/12 11:36:59" color="#38d3d3">}}




{{<matomeQuote body="ピンホールレンズと高光量・長時間露光を使えば、シャープなフォーカスで余計な処理を減らせるかもね。彼は小絞りで撮影したって言ってたけど、それだと回折効果が出ちゃうし、ピンホールだとさらに悪くなる可能性もあるかも。" userName="cma" createdAt="2025/10/12 21:03:22" color="#785bff">}}




{{<matomeQuote body="全部お互いに影響し合うんだよね。光を増やせば、Speedlightのリサイクルタイムが長くなるか、ISOを上げてノイズが増える。Speedlightだと長時間露光は無理だし、定常光を使っても物がブレたりするデメリットがあるな。" userName="danybittel" createdAt="2025/10/13 04:52:42" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="すごい！めちゃくちゃクールだね。でも、マルハナバチに”ゴーストの足”みたいなのが見えたんだけど、ああいうアーティファクトってどうやって起きるの？" userName="cssinate" createdAt="2025/10/12 13:21:27" color="#ff5733">}}




{{<matomeQuote body="あのマルハナバチは僕の最初の試みで、トラッキングがうまくいかなくてゴーストが出ちゃったんだ。他のやつもゴーストがあるんだけど、それは撮影中に昆虫の一部が動いたときに起きるんだよね（撮影には4時間かかる）。昆虫はしばらくすると乾燥してボロボロになるんだ。" userName="danybittel" createdAt="2025/10/12 15:33:46" color="#38d3d3">}}




{{<matomeQuote body="君の流体シミュレーション、マジでかっこよかったよ。" userName="stuckkeys" createdAt="2025/10/12 19:34:29" color="">}}




{{<matomeQuote body="Gaussian Splatsの利点がまだよく分からないんだよね。なんで三角形より優れてるの？" userName="whiterook6" createdAt="2025/10/12 21:02:23" color="">}}




{{<matomeQuote body="Gaussian Splatsは微分可能だから、レンダリング関数の逆関数を勾配降下法で解いて、画像ベースのレンダリングができるんだよ。" userName="poslathian" createdAt="2025/10/12 22:10:03" color="#38d3d3">}}




{{<matomeQuote body="僕は専門家じゃないし、まだSplatsを使ったことはないんだけど、超シャープなエッジの三角形とは違って、毛皮や雲みたいな複雑な透明で柔らかい現象を表現できるって理解してるよ。Splatsは視点に依存するスペキュラリティも限られた範囲で表現できるみたいだけど、ダイナミックじゃなくてシーンの形状や光源の変化には対応しにくいんだよね。それでも、照明に関してもっと色々なことができる、楽しい研究プロジェクトになりそうだ！" userName="danwills" createdAt="2025/10/13 09:34:33" color="#ff5733">}}




{{<matomeQuote body="Gaussian Splatsと三角形は、根本的に比較するものではないんだよ。基本的には点群データと三角形を比較してるようなものだね。従来のパイプラインでは、たぶん三角形が画像をレンダリングするのに使われてるよ。" userName="jayd16" createdAt="2025/10/12 22:12:14" color="#ff5733">}}




{{<matomeQuote body="たぶんGaussian Splatsはもっとシンプルなプリミティブなんだと思う。ぼかしや色、角度は3Dジオメトリより単純だから、ニューラルネットワークの数学みたいに、最小限の次元を持つ他のすごく低レベルなプリミティブと連携したり考えたりするのに、より適してるんじゃないかな。正直、当てずっぽうな答えだけど、もっと詳しい人がちゃんとした答えをくれるかもね。" userName="patcon" createdAt="2025/10/12 21:06:51" color="#45d325">}}




{{<matomeQuote body="教育分野でのビジュアライゼーションにGSを使うのは、すごく良い使い方だよね！新しいリアルタイムグラフィックス技術が、学ぶことをもっと面白くするかも。" userName="arduinomancer" createdAt="2025/10/12 16:08:03" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
