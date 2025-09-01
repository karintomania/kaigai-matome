+++
date = '2025-08-25T00:00:00'
months = '2025/08'
draft = false
title = 'OKLCHカラーとは何？グラデーションで注意すべき特性'
tags = ["カラー", "グラデーション", "色空間", "ウェブ開発", "CSS"]
featureimage = 'thumbnails/orange1.jpg'
+++

> OKLCHカラーとは何？グラデーションで注意すべき特性

引用元：[https://news.ycombinator.com/item?id=45010876](https://news.ycombinator.com/item?id=45010876)




{{<matomeQuote body="「Better Gradients」って考え方、OKLCHは極座標系だから色相補間すると円の縁を通ってsRGB外に出たり、知覚的に不均一になったりしがちだよ。むしろOklabで補間した方がいいって。Tailwind v4もOKLCHからOklabに切り替えたらしいね。かなり重要な情報だと思うな。" userName="chrismorgan" createdAt="2025/08/25 06:51:53" color="#38d3d3">}}




{{<matomeQuote body="「カラーグラデーション」って結局何？ある色から別の色へ連続的に変化する関数なら、何でもいいんじゃないの？「良い」とか「悪い」とか言えるのかな。人間の知覚範囲外の色を定義するカラースペースだと、この問題は避けられないはずだよね？" userName="djoldman" createdAt="2025/08/25 12:10:55" color="">}}




{{<matomeQuote body="良いグラデーションは、知覚的に均一で、だいたい知覚的に最短のパスを通るものだよ。OKLCHのグラデーションは知覚的に均一じゃないし、必要ない回り道をしてるみたいに見えるね。" userName="layer8" createdAt="2025/08/25 12:23:27" color="#ff33a1">}}




{{<matomeQuote body="でもさ、グレーを通るのを避けるなら、他の色相を回り道するのも必要な場合があるんじゃない？って意見もあるよね。" userName="cubefox" createdAt="2025/08/25 13:08:50" color="">}}




{{<matomeQuote body="グレーだってただの色の一つだよ、避ける必要ある？赤や黄色を通るのがグレーより良いって言えるかな？色相の変化は彩度や明度の変化より大きく感じられることが多いから、色相をたくさん変えるより、一度グレーを通る方が視覚的に均一に見えるんじゃない？" userName="layer8" createdAt="2025/08/25 13:25:59" color="#ff33a1">}}




{{<matomeQuote body="グレーって「ただの色」として認識されてるの？それとも彩度が落ちた結果として認識されてるの？もし後者なら、彩度をいじらないときにグレーを避ける理由は分かる気がするけど。" userName="the_af" createdAt="2025/08/25 13:36:11" color="">}}




{{<matomeQuote body="ファッションやスマホの色、ペンとか考えてみてよ。グレー、白、黒は、利用可能な色の中の単なる選択肢の一つなんだ。グレーのTシャツは、彩度が落ちたTシャツじゃなくて、それ自体が一つの色だよ。" userName="layer8" createdAt="2025/08/25 14:07:54" color="#38d3d3">}}




{{<matomeQuote body="これって今のハードウェアの限界なの？もしDCI-P3みたいな広色域モニターが普及したら、この問題はどれくらい解決するんだろう？OKLCHの全色域は無理でも、実用上は問題なくなるのかな？" userName="ta8645" createdAt="2025/08/25 07:16:12" color="#ff33a1">}}




{{<matomeQuote body="レーザーの波長を青（～480nm）から赤（～630nm）へ変えると、緑を通るよね、グレーは通らない。もしあなたのケースでグレーを通るのがアリならそれでいいんだよ。一つの色から別の色へは、たくさんの経路があるんだから。" userName="brulard" createdAt="2025/08/25 15:00:27" color="#ff5c5c">}}




{{<matomeQuote body="グレーのシャツは彩度が低いシャツだよ。グレーを再彩度化することはできないんだ。タイダイシャツやスマホケースを買って、半分グレーになったら、有効な色だとしてもほとんどの人はがっかりすると思うな。" userName="itishappy" createdAt="2025/08/25 19:58:23" color="">}}




{{<matomeQuote body="「グレーのシャツは彩度が低い」のに「グレーは再彩度化できない」って、これ矛盾してない？再彩度化できないなら、彩度が低いってことにはならないんじゃない？森のモチーフを買ってピンクだったらみんな怒るけど、それはタイダイのやり方を間違ってるだけで、その色が色じゃないってことにはならないだろ。" userName="Dylan16807" createdAt="2025/08/25 21:55:37" color="">}}




{{<matomeQuote body="いや、僕らが話してるのは人間の知覚範囲をはるかに超えた色のことだよ。このグラデーションの具体的な例は https://oklch.com/#0.7017,0.3225,328.36,100 と https://oklch.com/#0.86644,0.294827,142.4953,100 を見て。Chromaパネルでどれだけ画面のガンマ外にあるか分かるはずだよ（Rec2020を表示する設定にしても）。明るくて鮮やかな赤なんて色は存在しないんだ。明るいか鮮やかのどちらかしかないんだよ。" userName="chrismorgan" createdAt="2025/08/25 07:28:34" color="#ff5c5c">}}




{{<matomeQuote body="まあ、ちょっと矛盾してるかな。数学的に特異点があるんだ。色相は角度で彩度は中心からの距離として定義されてるけど、原点の方向を一貫して定義する方法がないんだよ。黒や白も同じ問題があるね。俺はそれが色じゃないって言ってるんじゃなくて、全てのグラデーションに合うわけじゃないって言ってるだけさ！" userName="itishappy" createdAt="2025/08/25 22:24:46" color="#ff33a1">}}




{{<matomeQuote body="もちろん、全てのグラデーションには合わないよ。ほぼ反対色の間のグラデーションにだけ使うべきだね。純粋なグレーなら、完全に反対色同士のグラデーションにしか入らないけど、そんなグラデーションに良い選択肢はないんだ。" userName="Dylan16807" createdAt="2025/08/25 22:32:51" color="">}}




{{<matomeQuote body="タイダイって色のグラデーションの典型的な例だと思うんだ。青とオレンジのタイダイシャツを頼むのはすごく普通だけど、単に反対色だからって理由でグレーの色が入るのは嫌だって思うのは当然だよ。白や黒、紫と赤、シアンと黄色はありえるけど、これが普遍的な正解だとは誰も言えないね！" userName="itishappy" createdAt="2025/08/25 23:08:39" color="#ff5c5c">}}




{{<matomeQuote body="一般的に、人は色のことをスペクトル進行や色相環で考えないし、二つの色のグラデーションが＼無関係な＼原色や二次色を通るとは直感的に思わないだろうね。でも、黄から青や赤から緑のようなグラデーションは元々とても不自然だから、この点はあまり問題じゃないけどね。" userName="Sharlin" createdAt="2025/08/25 16:03:34" color="#ff5733">}}




{{<matomeQuote body="そういう色を求める人は、実際には二つのアンカーポイントを持つグラデーションを求めてないんだ。だから、たくさんの答えがあるけど、それは典型的なグラデーションの例じゃないからだよ。" userName="Dylan16807" createdAt="2025/08/25 23:11:39" color="">}}




{{<matomeQuote body="RGBはいつも最悪だけど、OKLCHはたいていきれいだから、グラデーションに求めるのはそれだけだよ。Claudeに比較を作らせてみた（HSLが二つあるのはなんでだろ）https://i.imgur.com/uziQibR.png 。RGBだと超難しいこのグラデーションもOKLCHなら簡単さ！ https://jsfiddle.net/nhgvzm5p/2/ （コード：oklch(0 0.07 279) 66%, oklch(0.98 0.09 276) 99%）" userName="anotheryou" createdAt="2025/08/26 08:00:35" color="#ff5733">}}




{{<matomeQuote body="意味がわからないな。sRGBモニターじゃ表示できないはずの＼out of gamut＼の色がなんで見えてるんだ？P3モニターだとチャートは違うように見えるのか？あと、君が言ってる「人間の知覚範囲を超えた色」って、ハードウェア（コンピューターモニター）の限界なんじゃないの？" userName="shrx" createdAt="2025/08/25 08:04:00" color="#ff5c5c">}}




{{<matomeQuote body="あと、ブラウザがsRGBで色を補間する方法って、バグじゃないかな？後方互換性のために残されてるだけだと思うんだけど。sRGBって対数エンコーディングだから、そのエンコーディングで直接色を補間するべきじゃないんだよね。仕様書にも、最初に線形RGBに変換して、そこで補間するって書いてあるはずなんだけど…。" userName="Diggsey" createdAt="2025/08/25 10:36:24" color="#ff5733">}}




{{<matomeQuote body="グラデーションを開発者ツールにコピペして見てるみんなへ。2つ目のグラデーションは最初の色に`#`記号が抜けてるよ。<br>で、確かにOKLCHグラデーションは両方ともすごく変に見えるけど、OKLABグラデーションはいい感じだね（灰色を通っちゃうのは許容できるなら）。" userName="Vingdoloras" createdAt="2025/08/25 07:47:54" color="#38d3d3">}}




{{<matomeQuote body="壁に赤と緑のライトを近くで当てたら、その移行部分ってどんな風に見えると思う？" userName="JKCalhoun" createdAt="2025/08/25 17:41:55" color="">}}




{{<matomeQuote body="＞グラデーションで2つのアンカーポイントを求めてる人なんていない。<br>私もそう思ったんだけど、「blue and orange tie-dye」で検索してみたら、予想以上に白と黒が多くて驚いたよ！<br>＞だから、たくさんの答えがあるけど、それがグラデーションの典型的な例じゃないからだ。<br>タイダイがグラデーションの典型的な例じゃないっていうのは、意見が合わないかもしれないね。じゃあ、虹も典型じゃないって言うの？" userName="itishappy" createdAt="2025/08/26 00:11:04" color="#45d325">}}




{{<matomeQuote body="これはバグじゃなくて、その色空間の特性だよ。RGBキューブ内で線形補間（例えばグラデーション）をするとき、普通は最短経路を選ぶんだけど、たまたまその経路がグレーのシェードを通っちゃうことがあるんだ。<br>たいていは別の色空間にポイントを動かすことで修正するよ。何を選ぶかは要求と媒体（普通は異なる種類の光源や画面）によるね。いくつかのインタラクティブアートプロジェクトのために、低レベルのカラー補間ライブラリを書く必要があったから、この辺を少し掘り下げたけど、私は色の専門家じゃないよ。" userName="spoiler" createdAt="2025/08/25 14:37:20" color="#ff33a1">}}




{{<matomeQuote body="編集：記事が更新されたから、私のコメントは無視してね。<br>＞代わりにOklabで補間することをデフォルトにするべきだ。<br>記事にもそう書いてあるよ。引用するね。<br>＞これは諸刃の剣になり得る。滑らかなグラデーションもある一方で、定義していない色が見えることもある。これはOKLCHの色相が円形であるため、グラデーションが予期せぬ遠回りをする可能性があるからだ。<br>＞これを避けるために、多くのツールはOKLABをグラデーションに使い、直線的に補間して、より一貫性のある結果を得ている。" userName="omnicognate" createdAt="2025/08/25 21:54:00" color="#ff33a1">}}




{{<matomeQuote body="移行なんてなくて、これは色の混合、あるいは光の場合ならオーバーレイだよ。" userName="ZoomZoomZoom" createdAt="2025/08/25 18:21:11" color="">}}




{{<matomeQuote body="色って不思議だよね。グレーは「すべての可視スペクトルが同じ割合」ってことで、白なんだ…ただ、一番白いものよりは白くないけど、一番黒いものよりは白い。そういうものを表現するのに便利だから「色」なんだよね。モニター全体が50%の白で埋め尽くされてたら、それを白って呼ぶでしょ。何かもっと明るいものと比較して初めてグレーって呼ぶんだ。<br>ブラウンも同じ。暗い部屋で赤と緑のピクセルで埋め尽くされたモニターを見たら、オレンジって呼ぶはず。白とかもっと明るい色が加わって初めてブラウンって呼ぶんだ。とにかく、うん、グレーは色だよ。でも他の色とは少し違う。他の色は可視電磁スペクトルの一部だけを占めるけど、白は全体なんだ。この辺のことはTechnology Connectionsにいくつかすごくいい動画があるよ。色って本当面白い！" userName="cruffle_duffle" createdAt="2025/08/25 15:31:11" color="#785bff">}}




{{<matomeQuote body="それって、色の混合（またはオーバーレイ）を通じた移行じゃないの？光の場合だと、片方の色の領域を離れてもう一方の色に向かうにつれて、光がだんだん弱くなって、もう一方の色がだんだん強くなるような感じじゃないかな？顔料の場合（離れた場所に2つの絵の具を置いて、筆でできる限り連続的に混ぜるような場合）とは違うのかな？" userName="JKCalhoun" createdAt="2025/08/25 19:13:19" color="">}}




{{<matomeQuote body="あのグラデーションはひどいね。ひどいカラーバンディングがあるのは、始点と終点が色域から大きく外れていて、それを色域内に収める技術がスムーズじゃないからだよ。あんなグラデーションなら、最低でも5点は必要だろうね。<br>それがこれらの色空間の最大の問題点なんだ。境界が不明確で、そこからはみ出すと悪い影響が出ちゃうんだよね。" userName="chrismorgan" createdAt="2025/08/26 08:48:23" color="#785bff">}}




{{<matomeQuote body="アルゴリズムで色をガンマに戻した場合、知覚的な均一性の喪失って、DCI-P3モニターだと実際問題になるのかな？" userName="ta8645" createdAt="2025/08/25 07:34:00" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「タイダイはグラデーションの典型例じゃない」って意見に賛同かな。青とオレンジのタイダイ調べたら白黒が多くて驚いたよ。虹も2色間のグラデーションじゃないし、この議論は2色間の話だよね。" userName="Dylan16807" createdAt="2025/08/26 00:58:30" color="">}}




{{<matomeQuote body="すごくいい記事だね！ oklch.comも見てみて。HSLとは色相が違うし、最大彩度が色相と明るさで変わるって注意点があるよ。CSSのOKLCHは計算式で書けるのがクール。OKLCHグラデーションは常にカラフルだけど、光の混合ならXYZが最適だって。あと、”ok”は”LCHはダメだった”って意味らしいよ。もっと詳しい情報は https://developer.mozilla.org/en-US/docs/Web/CSS/color_value.... を見てね。" userName="twhb" createdAt="2025/08/25 07:40:24" color="#45d325">}}




{{<matomeQuote body="relative colorsはOKLCHだけじゃなくて、全部のCSSカラースペースで使えるんだよ。例えば、`background-color: rgb(from var(--base-color) calc(r - 76.5) g calc(b + 76.5));` みたいにね。" userName="masklinn" createdAt="2025/08/25 11:21:31" color="#45d325">}}




{{<matomeQuote body="OKLCHとrelative colorsの組み合わせのおかげで、CSSのハードコードされた色がすごく減ったんだ！これが僕のGitHubリポジトリだよ: https://github.com/hazelgrove/hazel/blob/dev/src/web/www/sty..." userName="disconcision" createdAt="2025/08/25 14:51:19" color="#ff33a1">}}




{{<matomeQuote body="いくつか批判はあるけど、OKLCHのいい入門記事だね。ところで、ブログ記事に公開日がないのって最近のトレンドなのかな？ 「より新しい」って表現がすぐ古くなるから、そこが気になったよ。メインサイトの日付は「August 2025」だし、なんでだろうね。[0] https://jakub.kr/" userName="vanderZwan" createdAt="2025/08/25 07:27:04" color="#45d325">}}




{{<matomeQuote body="記事に日付がない時って、`Last-Modified`ヘッダーを確認するんだけど、多くの人がHTTPの仕組みを理解してないから、ちゃんと設定されてないんだよね。「ブログ（web-log）」って言葉の由来を考えたら、タイムスタンプは超重要だと思わない？ https://jakub.kr/components/oklch-colors のサイトもそうだけど、これだといつのコンテンツかわからないのが残念だ。" userName="hackrmn" createdAt="2025/08/25 09:14:27" color="#ff5c5c">}}




{{<matomeQuote body="記事に公開日がないのは、著者自身の意図より、使ってるブログエンジンの都合じゃないかな。たとえ著者が日付を入れたいと思っても、優先順位が低いことだってあるしね。" userName="necovek" createdAt="2025/08/25 11:26:30" color="">}}




{{<matomeQuote body="日付のない記事って本当に困るよね。古いのか新しいのかわからないし。コメントのタイムスタンプでしか推測できないブログも多いけど、それすらもない場合があるんだ。OPのブログもそうだけど、機能性より見た目ばっかり気にしてるように見えて、ちょっとね。" userName="jibal" createdAt="2025/08/25 14:41:43" color="#ff5733">}}




{{<matomeQuote body="SEO対策で、古い記事が検索結果で順位を落とされないように、日付を入れないことがあるんだよ。 annoyingだけどね。" userName="kevin_thibedeau" createdAt="2025/08/25 14:36:14" color="#ff5733">}}




{{<matomeQuote body="このトピックについてすごく良い記事を見つけたよ。これ：https://evilmartians.com/chronicles/oklch-in-css-why-quit-rg...<br>あとは彼らのピッカー/コンバーターここね：https://oklch.com/<br>Hacker Newsでも議論されてたよ：https://news.ycombinator.com/item?id=43073819 (6ヶ月前、30コメント)。" userName="JimDabell" createdAt="2025/08/25 08:09:23" color="#ff5c5c">}}




{{<matomeQuote body="記事の例だと、OKLCHの色は一貫した青さを保つって言ってるけど、OKLCHの明度変更の例でかなり緑にシフトしてるよ。HSLの例の紫っぽさよりずっと大きいね。<br>知覚的に同じ強度の色を選べるのはいいけど、記事で言ってる利点はちょっと大げさかも。" userName="fidotron" createdAt="2025/08/25 10:56:03" color="">}}




{{<matomeQuote body="この色のHueチャート見ると分かるけど、https://oklch.com/#0.7684,0.1754,218.1,100<br>Display P3の制限で、明るさを上げるとシアンにシフトするんだ。OKLCHはHue-invariantじゃなくてSaturation-invariant。これは好みだけど、ウェブカラーの歴史を考えると選択肢が増えるのはいいよね。<br>Hacker Newsでの議論：https://news.ycombinator.com/item?id=44588388<br>将来のLED技術でこの問題は解決するかも。デザインに正解はないし、今のところは美的感覚で決めればいいんじゃないかな。<br>PS. macOS Terminal.appでP3カラー使ってANSI色定義できるの知ってた？" userName="altairprime" createdAt="2025/08/25 14:22:47" color="#45d325">}}




{{<matomeQuote body="「なんでこの色のHueチャートを見て分かるか」って言ってるけど、論点がズレてるよ。<br>記事の例はHueがシフトしないって主張してるけど、実際はすごくシフトしてるんだ。なんでかっていう問題じゃないんだよね。" userName="fidotron" createdAt="2025/08/25 15:02:25" color="">}}




{{<matomeQuote body="OKLCH自体ではHueはシフトしないんだよ。でも、Display P3やsRGBにレンダリングすると確かにシフトするよね。<br>カラースペースのグラデーションをデバイスプロファイルにレンダリングする時は、これって普通でしょ？<br>でも、自分はこの問題に近すぎて、何がちゃんと説明できてないか分かってないかも、ごめんね。" userName="altairprime" createdAt="2025/08/25 15:09:42" color="">}}




{{<matomeQuote body="いや、限定的な色域にレンダリングする時にHueが変わるのは普通じゃないよ。<br>Saturationが変わるのは普通だし、Brightnessがクリップされるのも普通。<br>でも、Hueが変わるのは違うんだ。<br>Hueが変わるのがOKLCHの奇妙で望ましくない選択だって批判なんだよね。" userName="crazygringo" createdAt="2025/08/25 18:05:07" color="">}}




{{<matomeQuote body="デバイスの制限下でのスペクトルグラデーションに唯一の「正しい方法」があるって考え方は、デザイナーも一般の人もみんなが賛成してるわけじゃないよ。<br>PCのsRGB表示がレーザーシネマだと冴えないように、唯一の方法なんてないんだ。<br>プリンターだって何世紀もこの問題と戦ってきたし、sRGBの飽和度が低い明るさだけが標準って時代はもう終わりさ。<br>PS. macOS Terminal.appでP3カラースペース使ってANSIカラーを再定義できるって知ってた？" userName="altairprime" createdAt="2025/08/25 19:50:52" color="#ff5c5c">}}




{{<matomeQuote body="その例で緑のシフトなんて全然見えないんだけど。<br>君のディスプレイ、キャリブレーションずれてない？" userName="rafram" createdAt="2025/08/25 12:20:11" color="">}}




{{<matomeQuote body="それってほとんどシアンじゃん。左の青より薄くなったんじゃなくて、緑に半分寄ってるよ。MacBook Proのディスプレイで見たんだけど。用途はあるにしても、色相がこんなにずれてるんだから、「色相や彩度のずれがない」っていう主張は嘘だね。" userName="fidotron" createdAt="2025/08/25 12:45:46" color="#785bff">}}




{{<matomeQuote body="確かにずれてるよ。カラーピッカーで調べてみれば分かるからやってみて。" userName="jibal" createdAt="2025/08/25 14:25:44" color="">}}




{{<matomeQuote body="macOSのDigital Color Meterを“native values”モードで使ってみたんだ。そしたら、OKLCHの終わりから2番目の緑成分が202で、最後が226だったよ。HSLの対応する値は203と227。ほとんど差がないじゃん。" userName="rafram" createdAt="2025/08/25 15:21:49" color="#785bff">}}




{{<matomeQuote body="「HSLスウォッチの対応する値は203と227だった」って？それ、とんでもない違いだよ。完全に別の色相じゃん。僕らが実際に見てる違いと全く同じだね。" userName="crazygringo" createdAt="2025/08/25 18:06:51" color="#785bff">}}




{{<matomeQuote body="僕が言いたいのは、HSLもOKLCHと全く同じずれ方をしてるってこと。それに、どちらも僕には見た目として緑には見えないんだよね。" userName="rafram" createdAt="2025/08/25 18:45:28" color="">}}




{{<matomeQuote body="それって、見た目にはシアンだよね？直感的な”緑”の色相じゃないかもしれないけど（使ってる言語文化にもよるけど）、チャート上の他の色とは明らかに違うじゃん。" userName="gowld" createdAt="2025/08/25 19:42:38" color="">}}




{{<matomeQuote body="同意だね。色相が青からシアンに完全に変わってる。もしこれがOKLCHの正しい実装なら、僕は絶対に使わないな。色相の計算方法が根本的に間違ってるように思える。HSL/HSVは知覚的な明るさには問題があるけど、色相は常に一定で、彩度や明るさで補正する必要なんてないもん。" userName="crazygringo" createdAt="2025/08/25 14:09:16" color="#ff33a1">}}




{{<matomeQuote body="明るさを変えるときって、色相も少し回転させた方がいいと思うんだ。それをうまくやるのは難しいんだけど、Tailwindの組み込みカラーパレットがめちゃくちゃ便利な理由の一つだよね。" userName="nojs" createdAt="2025/08/25 14:31:59" color="#ff5733">}}




{{<matomeQuote body="そんなことしないよ。グラフィックデザイナーが知覚的な均一性のために色相を変えるなんてことはないんだ。もう少し調べてみたら、OKLCHは簡単に色域外の色を生成しちゃうから、彩度精度を上げるために色相精度を犠牲にしてるってことだった。僕に言わせれば、それは根本的な設計上の欠陥だよ。色相が変わるのは絶対に許せないね。" userName="crazygringo" createdAt="2025/08/25 14:47:57" color="#ff5733">}}




{{<matomeQuote body="Tailwindの作者が出した「Refactoring UI」っていう本によるとね、単一の色からシェードを作る時、「異なる色相は知覚される明るさが違うから、色相を回転させることで明るさを変える方法もある」って推奨されてるんだ。色を明るくするには明るい色相に、暗くするには暗い色相に回転させる。黄色みたいな明るい色のパレットを作る時に超便利で、明るさを下げながら色相をオレンジ寄りにすると、暗いシェードがくすんだ茶色じゃなくて暖かくてリッチに感じるんだって。「知覚的な均一性」かはともかく、リアルに使えるカラーパレットを作るなら、HSLで色相を固定してS/Lだけいじるのは無理だね。OKLCHも簡単じゃないけど。<br>1. https://www.refactoringui.com/" userName="nojs" createdAt="2025/08/26 00:26:39" color="#785bff">}}




{{<matomeQuote body="sRGBって既に知覚的に均一じゃないんだよね。こういう色相の変化はもう起きちゃってる。HSL/HSVのH値が変わらないからって、明るさや彩度を調整した時に知覚的な色相シフトがないわけじゃないんだよ。" userName="dwringer" createdAt="2025/08/25 18:35:46" color="#ff33a1">}}




{{<matomeQuote body="HSL（とHSV）には知覚的なHueシフトが間違いなくあるよ。OKLabの作成者のブログにある、[0]https://bottosson.github.io/posts/colorpicker/ で、特に[1]https://bottosson.github.io/img/colorpicker/hsl_blue.png の画像を見ればよくわかるはず。SとL軸を固定してHが一定の時にどうなるかを示してるよ。" userName="dwringer" createdAt="2025/08/25 19:34:36" color="#45d325">}}




{{<matomeQuote body="参ったな、君の言う通りだ！Photoshopで今試してるんだけど、青から紫への移行期、Hue値233～270の範囲だけで起こるみたい。他の場所では見られないね。[0]の「これは濃い青と紫の色で特に顕著だ」っていうのと同じだ。まず、訂正してくれてありがとう。新しいことを知れて最高だよ。で、なんでページのOKLCHの例はあんなにひどいの？青がシアンに変わる様子は、HSL/HSVの青と紫の違いよりもっと悪いよ。まるで治療法が病気よりひどいみたいだ。もしHueの忠実さにそんなに気を配ってたんなら、最終結果が同じくらい悪いのは驚きだね。" userName="crazygringo" createdAt="2025/08/25 20:28:50" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="色の科学は詳しくないからすごく主観的になっちゃうと思うけど、右端のOKLCHの色は「せいぜい」青緑、たぶん「ライトブルー」って言うかな。一方、右端から2つのHSLの色は全く青とは言えないね。右から2番目は「ライトパープル」、一番右は正直グレーに見えるよ（キャプションでは暗いHSL値が「灰色っぽく濁る」って書いてあるけど、一番左のOKLCHとHSLの値はどちらもかなり青に見えるから変だよね）。あと、macOSの「Digital Color Meter」アプリを使うと、右端のOKLCHとHSLの色でグリーン値がほぼ同じだったよ（ディスプレイネイティブ値で226と227、sRGBで228と227）。" userName="throwaway0123_5" createdAt="2025/08/25 16:24:01" color="#785bff">}}




{{<matomeQuote body="OKLCHって、OKLabっていう知覚的に均一な色空間に基づいたカラーモデルだよ。Lightness、Chroma（彩度）、Hueをコントロールできるんだ。「OK」ってのは、作成者のBjörn Ottossonによると「まあまあうまくやる」って意味らしい。" userName="JohnKemeny" createdAt="2025/08/25 06:55:43" color="#38d3d3">}}




{{<matomeQuote body="彼はスウェーデン人だから、「OK」は実は「Ottossons kulör」（オットソンの色）の略なんじゃないかなって思うんだ。彼はただ謙遜してるだけだろ。" userName="pavlov" createdAt="2025/08/25 07:08:32" color="">}}




{{<matomeQuote body="「Oll Korrekt」の精神で、「Otto’s Kolors」ってこと？<br>ところで、これってどう発音するの？「オクリック」？それとも「オーケー エル シー エイチ」？" userName="xg15" createdAt="2025/08/25 11:48:52" color="">}}




{{<matomeQuote body="オーケー ランチ！<br>https://dillonshook.com/how-do-you-pronounce-oklch/" userName="vicarrion" createdAt="2025/08/25 23:30:31" color="">}}




{{<matomeQuote body="Lichは「死体」を意味する古い言葉だよ（D＆D神話ではアンデッドの魔術師）。じゃあ、オーケーなLichって、落ち着いた死体みたいな感じ？" userName="pavlov" createdAt="2025/08/25 12:35:11" color="">}}




{{<matomeQuote body="色とテキストやロゴを扱うなら、コントラストと読みやすさも考えてみて！APCAのツールはここだよ：https://apcacontrast.com/" userName="rollcat" createdAt="2025/08/25 06:57:08" color="#45d325">}}




{{<matomeQuote body="上のサイトはWCAG 3の最新アルゴリズムだけど、多くの業界ではWCAG 2が法的な要件だから注意してね。WCAG 2のチェックはここでできるよ：https://www.siegemedia.com/contrast-ratio<br>他にもたくさんツールはあるけどね。" userName="robin_reala" createdAt="2025/08/25 07:09:34" color="#785bff">}}




{{<matomeQuote body="APCAへの言及は2023年にWCAG 3のドラフトから消えたみたいだよ。現状がどうなってるかは分からないけどね。詳しくはここ：https://github.com/w3c/silver/commit/d5b364de1004d76caa7ddc4..." userName="ximm" createdAt="2025/08/25 09:24:23" color="#45d325">}}




{{<matomeQuote body="APCAとWCAG両方パスする色を選べるから、APCAを使っても大丈夫だよ。APCAはWCAGより厳しめで、特にダークテーマではAPCAの方が良い。APCAで白とオレンジみたいな組み合わせがパスしてWCAGで失敗する例もあるけど、そんなに多くないし、そこまで大きな問題じゃないと思う。" userName="seanwilson" createdAt="2025/08/25 07:55:49" color="#45d325">}}




{{<matomeQuote body="両方パスするならもちろんOK！でも先週、APCAでは白と#111の色がどちらもWCAG3の基準でOKだったのに、WCAG2だと#111の色が7.5:1で白が2.5:1だったから、法的に使えたのは片方だけだったよ。" userName="robin_reala" createdAt="2025/08/25 08:07:07" color="#45d325">}}




{{<matomeQuote body="そういうケースはAPCAを使ってると稀なのかな？僕の経験では、WCAG2はパスするのにAPCAはダメで、見た目もコントラストが悪いのに、WCAG2がOK出したからって使っちゃう人がいるんだよね。" userName="seanwilson" createdAt="2025/08/25 08:18:43" color="#785bff">}}




{{<matomeQuote body="稀だね、うん。両方でチェックするのが絶対おすすめだよ！" userName="robin_reala" createdAt="2025/08/25 08:40:24" color="">}}




{{<matomeQuote body="もしかしたら知ってるかもしれないけど、APCAとWCAG2の両方を一度にチェックできるbridge-pcaってツールもあるよ：https://github.com/Myndex/bridge-pca" userName="seanwilson" createdAt="2025/08/25 08:46:56" color="#ff5733">}}




{{<matomeQuote body="OKLCHの新しいコントラストの考え方について、そもそものコントラスト測定式が優れてるのか疑問だよね。GitHubのこのリポジトリにある反例、どう思う？賛成？反対？ぜひ見てみて。https://github.com/tattoy-org/contrast-experiments" userName="cb321" createdAt="2025/08/25 12:06:20" color="">}}




{{<matomeQuote body="ちょっと話が見えないな。これらの例はWCAG2のコントラストアルゴリズムを使ってるけど、これは特にダークテーマで欠陥があるって有名だよ。APCAはこれを改善しようとしてるんだけどね。詳しくはAPCAのドキュメントを見てほしいな。https://git.apcacontrast.com/documentation/WhyAPCA.html<br>でも、@c-blakeが指摘してるように、これは前景と背景のピクセル比率を考慮してないんだ。句点「.」と大文字「B」じゃ必要なコントラストは違うはず。APCAはフォントの太さやサイズに関するガイダンスも追加してるけど、まだ近似値でしかない。WCAG2ですら分かりにくいのに、正確なガイドラインとシンプルなガイドラインのトレードオフだよね。" userName="seanwilson" createdAt="2025/08/25 12:34:21" color="#45d325">}}




{{<matomeQuote body="近似やエッジケース、人間の判断、両方を考慮したテストについて書いてるから、あなたとはあまり意見の相違はないと思うな。APCAのドキュメントも、地域によるスライディングスケールみたいな表現を使ってるしね。僕が主に質問してるだけで、答えを出してるわけじゃないんだ。でも訂正させてほしいんだけど、あなたが言う「よく知られた欠陥のあるWCAG2」のアルゴリズムを使ってるのは、4つのテーブルのうち1つだけだよ。CIE Lightnessを使ってるのは2つで、APCAのベースもこれだと思うんだけどな。" userName="cb321" createdAt="2025/08/25 14:26:29" color="#38d3d3">}}




{{<matomeQuote body="比率と差分に実質的な違いはないよ。対数でスケールされてるだけだから。詳しくは僕のブログ記事を見てみて。https://blog.ce9e.org/posts/2022-09-10-contrast-algorithms/" userName="ximm" createdAt="2025/08/25 15:53:27" color="">}}




{{<matomeQuote body="あなたのリンク先の記事自体も0.05が式を違うものにするって認めてるじゃん。YもL*も真っ黒だとゼロになっちゃうし、これじゃ無限大になっちゃうよ。「実質的な違いはない」ってのは納得できないな。さっき送ったコントラスト実験のリンクにある2x2の表でも、|diff|だけでもいくつかのエッジケースで違いがあることが示されてるんだ。Pythonスクリプトをいじってみれば、0.05を0.02や0.10に変えるだけで、エッジケースの挙動が大きく変わることがわかるはず。" userName="cb321" createdAt="2025/08/25 18:22:47" color="#45d325">}}




{{<matomeQuote body="ちょっと本題からずれるんだけど、色空間の比較について。僕の2008年のモニターでもDisplay-P3とsRGBの紫色の違いが見えるんだ。こんなに広い色域があるなんて思わなかったな。ブラウザとかOSレベルで色変換されてるのかな？（僕のディストリビューション／デスクトップはcolormgrがデフォルトで有効になってるんだけど）" userName="Aissen" createdAt="2025/08/25 08:10:48" color="">}}




{{<matomeQuote body="それは完全に間違ってるよ。最初の色はoklch(0.65 0.20 300)でsRGBの範囲内なのに、2番目のoklch(0.65 0.28 300)はP3どころかRec.2020すら超えてるんだ。最低限の修正としては、2番目をoklch(0.65 0.2399 300)にしてP3の範囲内に収めるべき。最初の色は#a95eff（oklch(0.6447 0.2297 301.67)）がCSSのフォールバックだよ。でも、紫はデモには最悪の選択だよ。P3がsRGBに加える色域が一番少ないから違いが一番小さくなる。赤か緑がいいね。" userName="chrismorgan" createdAt="2025/08/25 08:24:08" color="#785bff">}}




{{<matomeQuote body="ちょっと話が脱線するんだけど、もうすぐ100% BT2020に到達するモニターが出るのに、BT2020を超える色空間って今後出てくるのかな？いくつか調べてみたけど、今のところないみたいなんだよね。" userName="ksec" createdAt="2025/08/25 11:07:03" color="">}}




{{<matomeQuote body="もっと大きな色空間にするには、3原色以上を使わないといけなくて、コストがすごく上がるんだ。BT.2020の単色光の色を630 nm、532 nm、467 nmから動かせば、色空間のカバー率を少し上げられるかもしれないけど、その分、消費電力対輝度の効率は下がるんだ。467 nmはそこまで純粋な青ではないんだけど、青い領域では目の感度が急速に落ちるから、より良い青にはもっと多くの電力が必要になるんだ。" userName="adrian_b" createdAt="2025/08/25 12:20:45" color="#ff5733">}}




{{<matomeQuote body="もっと大きな色空間を作るのに3原色以上使うって言っても、ミツバチや鳥（そしてごくわずかな人間の一部である四色型色覚者）向けのディスプレイを作りたいわけじゃないなら、それは無意味だよね。市場を動かすのは3つの色覚受容体を持った人間なんだから。むしろ、将来のディスプレイはコントラストをさらに改善して、非常に明るい（きらめくような）光の表現に力を入れるんじゃないかな。iPhoneが金やダイヤモンドみたいにキラキラ輝くのを想像してみてよ…" userName="guenthert" createdAt="2025/08/25 13:24:49" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
