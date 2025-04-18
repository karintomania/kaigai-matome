+++
date = '2025-04-07T00:00:00'
months = '2025/04'
draft = false
title = '「カメラメーカーに聞いた！RAWファイル形式がバラバラでややこしい理由がマジか…」'
tags = ["カメラ", "RAW", "画像処理", "DNG", "ファイル形式"]
featureimage = 'thumbnails/purple7.jpg'
+++

> 「カメラメーカーに聞いた！RAWファイル形式がバラバラでややこしい理由がマジか…」

引用元：[https://news.ycombinator.com/item?id=43580815](https://news.ycombinator.com/item?id=43580815)

{{<matomeQuote body="RAWフォーマットって実はそんなに複雑じゃないんだよねー。カメラのファームウェア開発って、オープンソースが盛んな国じゃないとこが多いし。darktableが対応してるフォーマットのデコーダー見ればわかるよ。binary parsingとかmetadata読み込みとか、decompressionとかで、フォーマットごとにC++が平均1000行くらい。HEVCみたいな複雑なcodecじゃないし、JPEGをサムネイルとして埋め込むくらいでJPEG並みの複雑さになる程度。DNGにすればいいのにって思うけど、Adobeとの連携とか言葉の壁とか、実験的な機能がやりにくくなるかもね。写真家は気にしない人が多いから、売り上げにはあんまり影響ないんだって。RAW現像ソフトは、新しいカメラが出るとすぐに対応してくれるし。" userName="Scaevolus" createdAt="2025-04-04T15:57:05" color="">}}

{{<matomeQuote body="カメラメーカーがDNG使わないのは、独自のフォーマット作る方が簡単で、他の人がリバースエンジニアリングするのも簡単だからじゃないかなー。オープンソースのライブラリが見落としがちなのは、すごい大事なextra metadata。例えば、Phase One IIQファイルには、embedded sensor profileとかfull on black frameが入ってるんだよね。Sinarのデジタルバックは、RAWファイルとは別のdark frame fileとかflat frameがあるけど、オープンソースのライブラリじゃ対応してないんだよねー。DNGだとdarkとflat frameの両方をどう扱えばいいかわからないんじゃないかな？" userName="buildbot" createdAt="2025-04-07T04:26:10" color="#38d3d3">}}

{{<matomeQuote body="＞One thing that open source libraries do tend to miss is that very important extra metadata - for example、 Phase One IIQ files have an embedded sensor profile or full on black frame that is not yet encoded into the raw data like it typically is for a NEF or DNG from many cameras.”<br>天文写真の世界じゃFITSフォーマットがよく使われてて、いろんなものがサポートされてて、名前の通りめっちゃflexibleなんだよね。なんで普通の写真で流行らなかったんだろう？" userName="Aaargh20318" createdAt="2025-04-07T10:43:55" color="">}}

{{<matomeQuote body="へー、おもしろいね！それ、めっちゃ合いそうじゃん？特にRGBカラーホイールとかmultiple exposuresを使うような古いsetupに。Phase Oneにもmultispectral capture systemがあるけど、あれも個別のIIQを撮影するだけみたいだし…。複数pixel shift shotsにも使えるよね。エンジニアがファームウェア書く時に知らなかっただけかな？RAWフォーマットって、ある意味weird TIFFみたいなもんだから、代わりにFITS使えばいいのにね。" userName="buildbot" createdAt="2025-04-07T15:49:51" color="#45d325">}}

{{<matomeQuote body="うんうん。TIFFはまさにうってつけだよねー。multspectral satellite imagesにも対応してるし。32bitとか64bitのfloatとか、16bitのintegerもサポートしてるし。" userName="davidkwast" createdAt="2025-04-07T17:46:02" color="">}}

{{<matomeQuote body="＞Cameras absolutely could emit DNG instead, but that would require more development friction: coordination (with Adobe), [..]”<br>DNGを実装するのって、RAW exportに加えて、もう一個開発が必要になっちゃうんだよね。RAWって、カメラとかファームウェアの開発とtuningのためにも使うから。センサーからの生データに、追加のmetricsをstreamしたもので、カメラベンダーのtoolchainで使えるように標準化されてるもの。それが商品発売後にもエンドユーザーがselectできるって”happens”してるだけ。DNGをサポートするってことは、extra featureを追加して、RAW optionを隠すってことだから、project planで優先順位を上げるのが難しいんじゃないかな。" userName="rickdeckard" createdAt="2025-04-07T08:20:54" color="">}}

{{<matomeQuote body="まず、selectできるのは”just happen”じゃないよ。RAWにはJPGとかPNGにはない情報が含まれてて、seriousな写真家にとってはめっちゃ大事。RAWイメージにはbrightnessとかcontrastとかcolor correctionの調整がめっちゃ含まれてる。それを他の会社のアプリで開くと、全部lostしちゃうんだよね。Adobeには似たようなprofileがあるけど、NikonのRAW standardの方がbetterなことが多いし。だからDNGなら、color correctionがnativeに実装されてて、lostしないって点でadvantageがあると思うな。" userName="7bit" createdAt="2025-04-07T11:06:51" color="#785bff">}}

{{<matomeQuote body="＞It just “happens” to be also available to select for the end-user after product-launch”<br>RAW(どんなフォーマットでも)は、多くの写真家にとって絶対に必要なものだよ。jpegじゃ同じ結果は得られないもん。" userName="Narretz" createdAt="2025-04-07T09:01:39" color="">}}

{{<matomeQuote body="ちょっと違うんじゃない？Bufferoverflowは、RAWフォーマットをR＆Dのためだけのものって捉えてて、写真家が使えるのはmore or less afterthoughtって言ってるけど、Narretzが指摘してるように、RAWのセンサーデータにaccessできることは、多くの写真家にとってkey featureなんだよ。ユーザー視点からすると、製品のessential aspectなんだよね。" userName="mort96" createdAt="2025-04-07T16:14:37" color="#38d3d3">}}

{{<matomeQuote body="ここに書いてあるよ：<br>＞センサーからの生データに、カメラベンダーの開発ツールチェーンで使うための指標をいくつか追加したもの、ってことらしい。製品発売後、エンドユーザーも選択できるのは、あくまで”たまたま”らしいぜ。" userName="mort96" createdAt="2025-04-07T20:37:22" color="">}}

{{<matomeQuote body="「たまたま」顧客が使える、主な理由はR&Dのためって書いてあるのが気に食わないんだよね。" userName="mort96" createdAt="2025-04-08T09:14:22" color="">}}

{{<matomeQuote body="投稿全体が文脈を作ってるんだよ。一部だけじゃなくてね。DNGをサポートすると、余計な機能を追加してRAWオプションを隠すことになる。仮にDNGサポートがエンドユーザー向けの機能になったとしても、独自のRAWは製品開発のコアな目的のために維持される必要がある。その後の利用は製品の機能なんだよ。RAWの価値を否定してるわけじゃないんだよね。" userName="rickdeckard" createdAt="2025-04-08T11:02:09" color="">}}

{{<matomeQuote body="＞センサーからの生データに、カメラベンダーの開発ツールチェーンで使うための指標をいくつか追加したもの、ってことらしいね。<br>RAWフォーマットが多いのは、センサーの出力データが違うからかもね。でも、標準化する方法はあるはずだよね。" userName="naasking" createdAt="2025-04-07T15:47:22" color="">}}

{{<matomeQuote body="でも、ベアメタルに近いから標準化されてないんだよね。JPG/HEICを作る時に標準化されるんだよ。DNGをサポートするってことは、RAW相当のものをさらに標準化する必要があるってこと。特許があって、ライセンスと法的影響があるフォーマットにね。Adobeに処理を共有したくないベンダーもいるだろうしね。" userName="rickdeckard" createdAt="2025-04-07T16:03:13" color="#ff5c5c">}}

{{<matomeQuote body="Adobeが各パラメータの構文を標準化した特許フォーマットで、必須要素とオプション要素があって、特許ライセンスもあるんだよね。開発環境では、既に実装されてる独自のRAWフォーマットと競合するんだよ。法務部門や第三者の関与なしに改善できるのにね。" userName="rickdeckard" createdAt="2025-04-07T13:59:18" color="#ff5733">}}

{{<matomeQuote body="それ違うよ。記事の見出しとDNGのWikipediaのページには、DNGはオープンでIPライセンスの対象じゃないって書いてある。ソフトウェア開発で2つのファイル形式を扱うのは面倒だけど、特許とライセンスがAdobe DNGを選ばない理由じゃないよ。" userName="dtagames" createdAt="2025-04-07T14:05:28" color="">}}

{{<matomeQuote body="おーまーじー？あんたのソース、DNGのライセンス原文じゃないじゃん！「それ違う」なんて言ってる場合じゃないって。せめて疑問に思えよ。<br><br>＞情報源が不完全だって。DNGのライセンス参照して[0]。特許権は以下の条件でしか認められないんだって。<br><br>＞１．仕様に準拠した実装に使われる場合、<br>＞２．AdobeはメーカーがDNGを作るために使ったあらゆる方法を無償でライセンスできる、<br>＞３．Adobeは、ライセンシーがAdobeに対してDNG仕様準拠ファイルの読み書きに関する特許訴訟を起こした場合、権利を取り消すことができる。<br><br>これって大企業には結構キツイんだよね。<br><br>法務部の許可が必要だし、仕様に準拠してないと特許侵害のリスクもあるし、センサーからDNGを作るためのIPを全部Adobeに無償で開示しなきゃいけない可能性もあるし（自社製センサー開発してたら大打撃）。しかも、そのIPをAdobeが勝手に使って訴えたら、DNGの特許ライセンス取り消されるんだぜ。<br><br>既存のRAW実装があって必要なツールも揃ってるなら、こんな面倒なことしてDNGを実装する意味ないじゃんって話。" userName="rickdeckard" createdAt="2025-04-07T14:21:19" color="">}}

{{<matomeQuote body="そんなに恐ろしい話じゃないし、大げさすぎ。リンク先の特許許可読んだけどさ。互換性のないバージョンを作る権利を与えないのは当然じゃん？ユーザーが混乱するし。あと、取り消し権はDNG実装者がAdobeを訴えようとした場合にのみ適用されるんでしょ？なんでそんなことするの？<br><br>Occam’s razor（*思考*の*節約*）で考えたら、カメラメーカーの回答が正しいんじゃない？みんな同じこと言ってるし。DNGじゃ好きなように保存・変更できないんだよ。これは標準化されたファイルフォーマットなら当然で、プロプライエタリなフォーマットなら自由ってこと。" userName="dtagames" createdAt="2025-04-07T14:42:18" color="">}}

{{<matomeQuote body="＞そんなに恐ろしい話じゃないし、大げさすぎ。特許許可読んだけどさ[..]<br><br>ライセンスも読まずにいきなり他人を批判するなんて、話にならないわ。<br><br>＞あと、取り消し権はDNG実装者がAdobeを訴えようとした場合にのみ適用されるんでしょ？なんでそんなことするの？<br><br>上に書いたけど、AdobeはあなたのデザインからDNGを作るために使われた特許を無償で利用できる権利を持ってて、あなたがそれに反対したらライセンスを取り消すんだよ。つまり、Adobeが特許を勝手に使っても文句言えないってこと。<br><br>＞Occam’s razorで考えたら [..]<br><br>RAWをサポートしなきゃいけないのに、あんな面倒なDNGを開発・維持する意味ないって話。" userName="rickdeckard" createdAt="2025-04-07T15:38:29" color="#38d3d3">}}

{{<matomeQuote body="画像センサーの調整に必要なセンサーデータのサブセットを含むファイルフォーマット。カメラ開発者じゃなくてユーザー向け。" userName="bobmcnamara" createdAt="2025-04-07T14:26:54" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="DNGもベンダー固有のRAWフォーマットも、画像センサーの調整用じゃないよ。特定のケースでは使えるけど、それが目的じゃない。写真撮影用で、ユーザーが自分の好きなように現像できるように、カメラ内での処理を最小限に抑えたデータを提供するのが目的。名前とは違って、センサーからの生のデータストリームってわけじゃないんだ。でも、写真撮影には十分近いデータだよ。" userName="seba_dos1" createdAt="2025-04-07T15:06:25" color="">}}

{{<matomeQuote body="うちの独自のフォーマットは、ヘッダーの後に生のセンサーデータをダンプしただけだった。<br><br>それでも、みんな写真目的で使ってたけどね。" userName="bobmcnamara" createdAt="2025-04-08T13:26:48" color="">}}

{{<matomeQuote body="Fujifilmの不可逆圧縮RAWは、何年も経ってもサポートされてないんだよね[1]。<br><br>[1] https://github.com/darktable-org/rawspeed/issues/366<br><br>それに、darktableでFujifilmのRAWにバグが多いんだよね。<br><br>[2] https://github.com/darktable-org/rawspeed/issues/354<br>[3] https://github.com/darktable-org/darktable/issues/18073<br><br>でも、Fujifilmの可逆圧縮RAWは、ファイルサイズを抑えつつ（非圧縮の50〜60％）、連写時の書き込み速度もそこそこ速いから便利。" userName="dllu" createdAt="2025-04-07T19:56:46" color="">}}

{{<matomeQuote body="不可逆圧縮なのに”raw”って呼ぶのが不思議。ガンマ補正とかの処理をする前に圧縮してるってこと？（そんなことしていいのかな？）" userName="zahlman" createdAt="2025-04-07T23:24:17" color="">}}

{{<matomeQuote body="RAWってのは、シーン参照のデータって意味だよ。センサーからの生のデータってのはよくある誤解。今のセンサーはチップ上でノイズ除去するし、いろんなフォーマットでデータを出力できるし、いろんな処理ができるんだ。同じセンサーでもカメラが違えばISO感度が違うし、同じISOでもRAWファイルが違うことだってある。ファイルフォーマットが違うだけじゃなくて、データ自体が違うんだぜ。同じセンサーなのにね。" userName="4ad" createdAt="2025-04-07T23:36:29" color="#785bff">}}

{{<matomeQuote body="カメラのRAWフォーマットって、連写速度を最適化するためだと思ってた。できるだけ速く画像を書き込めるように。DNGの詳細は知らないけど、少しでも複雑になるとメーカーによってはダメなのかもね。" userName="weinzierl" createdAt="2025-04-07T08:30:08" color="">}}

{{<matomeQuote body="RAWで撮る一番の理由は、最終的な作品をもっと自由にコントロールしたいからだよね。例えば、ホワイトバランス。センサーは何も知らないけど、よくある後処理だと2700Kの電球も5700Kのストロボも白く見える。でも、写真家は電球をもっと黄色くしたいかもしれない。カメラにも設定はあるけど、現場より色校正された大きなディスプレイの前の方が完璧にしやすいんだ。ダイナミックレンジが広いシーンも同じ。センサーは画面やプリンターより広い範囲を捉えられるから、どこを暗いグレーにするか、どこを真っ黒にするか後で決めたいんだよね。" userName="Zak" createdAt="2025-04-07T13:28:45" color="#ff5c5c">}}

{{<matomeQuote body="言ってることは普通の画像フォーマットでもできるよ。どんな写真でもホワイトバランスは調整できるし、画像フォーマットが16bitとsRGBだけだと思ってる？RAWを使うのは、（1）JPEGでAdobe RGBとかRec. 709を使ったら、多くの人が混乱するから、（2）BayerとかX-Transのプリフィルタリング前のデータがちょっとだけ多いから、（3）カメラメーカーの開発が楽になるから、（4）歴史的な理由もある。" userName="harrall" createdAt="2025-04-07T14:57:34" color="">}}

{{<matomeQuote body="JPGとRAWでシャドウとハイライトを調整してみればわかるよ。JPGにはデータがないから、ただの黒と白になっちゃう。RAWならシャドウを明るくして、センサーノイズは多いけど、モスマンを見つけられるかも。" userName="kjkjadksj" createdAt="2025-04-07T16:30:11" color="#ff5733">}}

{{<matomeQuote body="ボトルネックはSDカードの書き込み速度だよね。スポーツ写真家はRAWを避けてJPGだけを使うことが多い。ファイルが小さいから、連写がたくさんできるんだ。" userName="tmoravec" createdAt="2025-04-07T11:00:56" color="">}}

{{<matomeQuote body="Canonの”スポーツプロ向け”カメラは、”セカンドティア”のカメラより解像度が低いんだ。でも、フレームレートが高くて、CFExpressとSDXC2に対応してるから、帯域幅は問題ない。確か、内部バッファが一杯になるまで、40～50枚（20fpsくらいで）連写できたはず。" userName="FireBeyond" createdAt="2025-04-07T14:03:09" color="#ff5733">}}

{{<matomeQuote body="最近はもっとできるよ。僕のNikon Z8は30fpsで1xCFExpressで撮れるし、フラッグシップのZ9は2xCFExpressで交互に書き込むから120fpsもできる。Sonyはもっと差別化されてて、フラッグシップ（A1 II）は30fpsだけど、A9 IIIは120fps、プロシューマー（A7 RV）は10fpsしかできない。Canonは詳しくないけど、デュアルCFExpressと800-1200フレームのバッファがあれば、120fpsはトップエンドのスポーツ/野生動物向けミラーレスカメラでは標準だね。" userName="tristor" createdAt="2025-04-07T15:25:58" color="#ff5733">}}

{{<matomeQuote body="Z8とZ9は同じことができるよ。Z9はJPEGモード11MPで120fps、Z8と同じ。Z8/Z9はJPEGフル解像度で30fps、RAWで20fps。どこまで速度が落ちないかはカード次第で、非圧縮RAW、ロスレスRAW、ロッシーRAWとかでも変わる。" userName="redeeman" createdAt="2025-04-08T09:46:46" color="#45d325">}}

{{<matomeQuote body="＞ああ、その通り。スペックシートがわかりにくいから勘違いしてたけど、Rolling Shutter Projectを見るとセンサーの読み出し速度が限界で、両方とも同じセンサーを使ってる。Z9の高速連写（Z8では見かけないけど、最大30fps）では、通常の写真パイプラインではなくビデオパイプラインが使われており、解像度が制限されてRAWではない。Z9は交互書き込みモードに対応してるけど、Z8はCFExpress+SDなので、分割フォーマットかオーバーフローしか対応してない。書き込み速度にどう影響するかはわからないけど、おそらく改善されるはず。個人的には、鳥を撮るときは6fpsの連写で十分。それ以上だと多すぎるから、後で削除するのが大変。それに、Z8に変えてからはミラーレスだから静かになったし。" userName="tristor" createdAt="2025-04-08T12:29:15" color="#ff33a1">}}

{{<matomeQuote body="Z8でも120fpsで撮れるけど、11MPに落ちるよ。Z8とZ9両方とも。ビデオモードを使うのも同じ。センサーの読み出しが問題じゃないってことだね。" userName="redeeman" createdAt="2025-04-08T19:23:04" color="">}}

{{<matomeQuote body="11MPに落としてビデオパイプラインを使う理由は、センサーの読み出し時間だよ。完全に理解してるわけじゃないけど、Rolling Shutter Projectのデータを見ると、Nikon Z8はフルフレームRAWで最大22fpsくらいになるはず。それを20fpsに落として余裕を持たせたんだと思う。DXフレームサイズに落とすと、センサーから読み出すデータ量が減るから、読み出し時間が変わる。Z8/Z9は45MPのカメラだから、単純計算すると、DXフレームサイズなら80fpsくらいになるはず。でも、ビデオパイプラインは120fpsに対応してるから、答えは決まってたんだろうね。" userName="tristor" createdAt="2025-04-08T20:03:46" color="#ff5c5c">}}

{{<matomeQuote body="RAWのデコードって意外と複雑なんだよね。ノイズ軽減とか、色収差補正とか、ワンステップHDR処理みたいな「独自の処理」を加えるのに最適な場所なんだ。昔カメラメーカーで働いてたんだけど、うちのRAWデコーダーはマジで重要な工程で、社内でもトップクラスの秘密扱いだったよ。他社のデコーダーは、うちのと完全に同じにはできなかったみたい。まあ、かなり良い線まではいってたけどね。" userName="ChrisMarshallNY" createdAt="2025-04-07T10:26:07" color="#45d325">}}

{{<matomeQuote body="そりゃ、RAWファイルから最終的な画像になるまでには、複雑な処理がたくさんあるのは当然だよね。でも、それはファイル形式とは関係ないんじゃない？DNGだってそんなに違わないし、ちゃんと仕様が公開されてるし。メーカーのコンバーターが一番良い結果を出すかもしれないけど、写真家はAdobeとか他の会社の画像処理ソフトを使うことが多いし、それらには独自のRAWコンバーターが搭載されてるしね。" userName="_ph_" createdAt="2025-04-07T14:06:16" color="">}}

{{<matomeQuote body="DNGでできなくはないんだろうけど、メーカーからしたら特にそうする理由がないんだよね（たぶん）。個人的にはオープンな方が好きだけど、彼らはそう思ってないし、その姿勢も尊重するよ。" userName="ChrisMarshallNY" createdAt="2025-04-07T14:47:25" color="">}}

{{<matomeQuote body="カメラ会社からカメラを買ったのに、ソフトウェア会社がアップデートするまでRAWファイルを開けないのは、マジで困る。それに、Adobeみたいなサブスクリプションモデルに誘導する手口でもあるし。だから、もっとオープンな形式をサポートしてほしいって、客として文句言ってるんだ。" userName="_ph_" createdAt="2025-04-08T15:19:08" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="個人的な話だけど、Darktableを使っても、Fujifilm GFX 100Sから出てくるJPEG画像ほど、良いデモザイク処理の結果が得られなかったんだよね。細かい斜めの線とかだと、DarktableのLMMSEみたいなアルゴリズムは、偽色をたくさん発生させちゃうんだ。でも最近の深層学習ベースのデモザイク＆ノイズ除去アルゴリズムは、Darktableの昔ながらのアルゴリズムより全然良い結果を出すね。" userName="dllu" createdAt="2025-04-07T20:05:22" color="#785bff">}}

{{<matomeQuote body="でも、これってプロプライエタリなRAW画像形式の話だよね？センサーからのデータを最小限の処理で保存するべきものじゃないの？RAW画像の本来の目的は、ISPの処理をほとんどスキップして、自分で現像ソフトで処理することじゃない。デモザイク処理だってプロセッサーでやってるんだし。なんでこれがプロプライエタリである必要があるのか、マジで意味不明。JPEG出力には、フルISPを使った独自の処理を適用すればいいだけじゃん。" userName="starky" createdAt="2025-04-08T16:00:16" color="#38d3d3">}}

{{<matomeQuote body="いや、そうじゃない。<br>特定の形式をサポートすると言ったら、その形式をサポートする責任がある。自社以外にデータへのアクセスを許可するつもりがないなら、企業がそんなことする理由がない。「サポートしない」≠「許可しない」。<br>サードパーティがリバースエンジニアリングして独自の形式にアクセスするのは面白くないかもしれないし、阻止できないかもしれないけど、彼らを助ける義務はないし、勝手にルールを変えることができる。<br>Appleのことを考えてみて。クラッキングシステムを定期的に破壊してるでしょ。わざとじゃないかもしれないけど、クラックを破壊する新しいデータを導入しただけかもしれない。でも、クラッカーをサポートする義務はない。" userName="ChrisMarshallNY" createdAt="2025-04-08T16:15:52" color="">}}

{{<matomeQuote body="公には言えないな。特定するのは難しくないと思うけど、会社の検索アルゴリズムに引っかかるようなことは書かないようにしてるんだ。でも、結構大手だったし、ホストイメージパイプラインソフトウェアチームを率いてたんだ。[追記] ＞例の”ノーコメント”の会社だよ。RAW形式については詳しく話したがらないし、私も話さない。会社を辞めてから何年も経ってるし、私の知識は古いかもしれないけどね。" userName="ChrisMarshallNY" createdAt="2025-04-07T10:32:09" color="">}}

{{<matomeQuote body="RAWフォーマットの詳細を話したがらないんだってさ。なんでか教えてほしいよね。昔はカメラ会社が独自の変換ソフトで儲けようとしてたみたいだけど、誰もそんなのにお金払わないってバレちゃったし、みんなが使いたいソフトとの互換性の遅れは新機種の売れ行きを鈍らせるだけだって。<br>もうそんな時代じゃないのに、RAWフォーマットの秘密を守ることに何か競争上の優位性があると思ってるのかな？" userName="Zak" createdAt="2025-04-07T12:11:16" color="">}}

{{<matomeQuote body="一番の理由は画質が企業の競争力だって思ってるから。まるで一流シェフの”秘密の材料”みたいなもんらしいよ。自分たちのイメージには”企業の指紋”があって、それが伝わらない画像が出回るのをすごく気にしてるんだ。<br>サンプル画像を入手するのが難しかったりもする。<br>あと、色収差の補正とかで、レンズの情報をmetadataとして追加して、補正アルゴリズムに利用したりする。<br>色収差が出やすいレンズは恥ずかしいからね。メーカーは認めたくない”汚い秘密”の一つなんだ。<br>安いレンズを作るほど色収差が増えるから、見られたくなかったんだよ。<br>RAWファイルなら画質への影響を最小限に抑えて補正できる。Demosaic処理の後でもできるけど、劣化しちゃう。前にやればデータの損失を最小限にできる。ノイズリダクションも同じ。<br>うちのdeBayerフィルターの複雑さを見たら、みんなマジで驚くと思うよ。かなり大規模なコードだったから。" userName="ChrisMarshallNY" createdAt="2025-04-07T14:44:20" color="#45d325">}}

{{<matomeQuote body="説明どうもありがとう。でも、その考え方がどれだけ現実に基づいているのか疑問に思うよ。擁護しろとは言わないけどね。<br>画質に特にこだわる写真家は、ほとんどRAWで撮影してサードパーティのソフトを使ってると思うんだよね。それが現実に基づいた判断じゃないかもしれないけど、純正ソフトに乗り換えさせるには、ソフトウェアのUXにものすごい力を入れる必要があると思う。<br>＞RAWファイルなら画質への影響を最小限に抑えて補正できる。Demosaic処理の後でもできるけど、劣化しちゃう。<br>＞色収差補正をRAWファイル自体に焼き付けて、サードパーティのソフトが検出できないようにしてるってこと？最近はソフトウェアで補正できる欠点は許容する傾向にあるけど(シャープネスやサイズのため)、それってRAW現像の段階で切り替えられるものだと思ってた。" userName="Zak" createdAt="2025-04-07T15:09:38" color="">}}

{{<matomeQuote body="これ以上はちょっと言えないかな。言ったことがバレたら怒られちゃうかも。でも、結構有名な話だよ。<br>サードパーティのソフトがRAWのBayerフォーマットにアクセスできれば、何でもできちゃうからね。レンズのデータは持ってなくても、色々できると思うよ。<br>それに、50MPのロスレス圧縮（または非圧縮）の16bit/チャンネルの画像って、めっちゃ容量でかいじゃん。処理するのにすごいパワーがいるんだよね。特に動画みたいに時間制限がある場合は。<br>カメラには低電力のプロセッサが搭載されてて、それで処理する必要があるんだ。もしホストソフトウェアで同じ処理を再現しようとしたら、デバイスのファームウェアを真似する必要がある。サードパーティのパイプラインには、誰もそこまで期待しないから、そういう問題はないんだよね。" userName="ChrisMarshallNY" createdAt="2025-04-07T15:24:01" color="#ff5c5c">}}

{{<matomeQuote body="色々教えてくれてありがとう。動画のことは考えてなかったけど、RAW動画のストレージ要件は確かにめっちゃ大きいね。" userName="Zak" createdAt="2025-04-07T21:38:44" color="">}}

{{<matomeQuote body="色収差補正をDemosaic処理の前に適用して、その結果をBayer配列に保存できるってことにすごく疑問を感じるんだよね。色収差補正の結果を、情報量の少ないRAW Bayer配列に保存するメリットが全くないように思えるんだ。RGBの3つの値を持つフル配列の方がいいんじゃない？勘違いしてるのかな？" userName="porphyra" createdAt="2025-04-07T21:24:23" color="">}}

{{<matomeQuote body="保存はしないよ。Demosaic処理の前に、毎回RAW Bayerデータに適用するんだ。ノイズリダクションも同じ。<br>保存できるのは、レンズデータとかセンサーの読み取り値みたいな、最初のステップのフィルターに情報を提供するmetadataだよ。<br>独自のデータストレージの利点の一つは、会社独自のフィルターを使って”署名”効果を生み出せること。サードパーティのフィルターも近づけるかもしれないけど、同じにはならないし、ファインダーで見たものとは違うものになる。" userName="ChrisMarshallNY" createdAt="2025-04-08T01:25:36" color="#45d325">}}

{{<matomeQuote body="すごくわかりやすく説明してくれてありがとう。<br>最初からそうじゃないかと思ってたんだ。DNGの普及について読んだ時、最初に思ったのは「でも、この会社はどうするんだろう？」ってことだった（DNGについては詳しくないんだけどね）。<br>そしたらあなたのコメントを見つけたんだ。" userName="koiueo" createdAt="2025-04-07T21:12:44" color="">}}

{{<matomeQuote body="RAWデコードはアルゴリズムであって、コンテナフォーマットじゃないんだよね。問題は、みんな同じセンサーのデータを、独自のコンテナに詰め込んでるところ。" userName="sandofsky" createdAt="2025-04-07T20:22:24" color="">}}

{{<matomeQuote body="ファイル形式だけじゃないんだよね。問題は、各社がデモザイク処理をコントロールしたいってことで、コンテナ形式もその戦略の一部なんだよ。独自形式なら、自社にメリットがないことや、企業秘密を公開するようなサービスを提供する義務はないって考えなんだ。自分たちの形式なら、興味ないことやメリットがないことで悩む必要ないし。" userName="ChrisMarshallNY" createdAt="2025-04-07T21:09:24" color="#ff5733">}}

{{<matomeQuote body="RAWコンテナって、センサーデータだけが入ってるもんじゃないの？AdobeがLightroomで独自のアルゴリズム使って、RAW形式をレンダリングしてるってこと？" userName="sandofsky" createdAt="2025-04-07T21:19:11" color="">}}

{{<matomeQuote body="もしサードパーティ製のアプリでRAWファイルが開けなくなったら、めっちゃ困ると思うけど。" userName="redeeman" createdAt="2025-04-08T09:50:21" color="">}}

{{<matomeQuote body="意外とそうでもないんだよ。<br>自社デバイスの画像が悪く見えることに悩んでたんだ。<br>画像の最終的なコントロールを握りたくて、サードパーティのパイプラインがちゃんとレンダリングしてくれるか信用できなかったんだよ。" userName="ChrisMarshallNY" createdAt="2025-04-08T10:39:11" color="#ff5733">}}

{{<matomeQuote body="じゃあ、AdobeのソフトでRAWファイルが開けなくても、みんな喜ぶと思う？" userName="redeeman" createdAt="2025-04-08T19:19:51" color="">}}

{{<matomeQuote body="マジでそう思ってる。<br>冗談抜きでね。<br>あいつらマジでコントロール狂だよ。画像のクオリティに関しては、今まで会った中で一番細かい人たちだよ。" userName="ChrisMarshallNY" createdAt="2025-04-08T21:39:20" color="#ff5733">}}

{{<matomeQuote body="それって、RAWのセンサー値を保存することと何の関係があるの？" userName="klysm" createdAt="2025-04-07T12:40:25" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="問題は、真にRAWでありながら、カメラ固有の情報も埋め込まれていない、という普遍的な形式はありえないってこと。違う会社や世代のカメラセンサーは、Bayerフィルター層と物理センサー両方で、同じ色（またはスペクトル）応答を持ってないんだ。本当にRAWな数値があるなら、それを解釈するための特定のスペクトル応答情報が必要。スペクトル応答情報が不要なら、それは本当のRAW数値じゃない。みんな色々な理由でRAW数値を欲しがるけど、カメラ会社はセンサーのスペクトル応答特性を開示したくないんだよね（リバースエンジニアリングされてるけど）。" userName="thatcks" createdAt="2025-04-07T18:07:55" color="#45d325">}}

{{<matomeQuote body="カメラのセンサーってメーカーとか世代によって色の感じ方が違うんだよねー。Bayerフィルターとかセンサーの物理的な特性とかも関係してくるし。<br>DNGの規格だと、この辺全部考慮されてるんだって。XYZカラースペースに変換するためのマトリックスとか、リニアライズのテーブルとか、メーカーがちゃんと指定してるらしいよ。<br>メーカーがスペクトル感度をすごい大事なIPだと思ってるなら、それは勘違いだよ。Macbethチャートとスプレッドシートがあれば、一日でリバースエンジニアリングできるレベルの話だし。<br>サードパーティのライブラリが既に解析済みなのを見ると、メーカーはユーザーを困らせてるだけって感じだよね。" userName="sandofsky" createdAt="2025-04-07T20:36:08" color="#ff33a1">}}

{{<matomeQuote body="RAWって一体何なのさ？独自技術を入れられるように、RAWの意味を再定義すればいいんじゃない？例えば、スペクトル応答を含めるようにするとか。" userName="fracus" createdAt="2025-04-07T18:15:55" color="">}}

{{<matomeQuote body="そもそも「RAW」っていう形式があるわけじゃないんだよね。実際には、RAWってのは「カメラ固有の形式で、センサーの生データとか、その他もろもろの情報が入ってるもの」っていう、業界用語みたいなもん。<br>RAW形式には、スペクトル情報が入ってないことが多いかな。だって、カメラのモデル識別子があれば十分だし。メーカーはスペクトル情報知ってるし、自社のソフトに入れるでしょ？無駄に容量食うだけじゃん。<br>NikonはNEF、CanonはCR3って名前で、拡張子で区別してるし。<br>DNGにスペクトル情報入れられるかは知らないけど、カメラメーカーは昔からそういう情報共有したがらなかったんだよね。NikonはNEFの情報を暗号化したこともあったけど、速攻で解析されてたけどね。" userName="thatcks" createdAt="2025-04-07T18:39:31" color="#ff33a1">}}

{{<matomeQuote body="DNG、昔はめっちゃ推してたんだよね。2018年くらいまでは全部DNGにしてたし。PentaxとLeicaは最初からDNGだったし。CanonとFujiは独自の形式使ってたけど。<br>今はそこまでこだわってないのは、LightroomからCapture Oneに乗り換えた時に、編集情報とかメタデータとかが全部パーになっちゃったから。そりゃ、ソフトが違うんだから仕方ないんだけどさ。DNGなら編集情報も共通で使えると思ってたんだけどなー。<br>JPEGが最終的な画像なんだけど、C1とか他のソフトで編集情報を復元できたら最高だよね。" userName="vr46" createdAt="2025-04-04T14:06:09" color="">}}

{{<matomeQuote body="RAW形式って、同じメーカーのカメラでも、機種ごとに違うんだよね。この記事でもちょっと触れてるけど、もっと詳しく説明してほしいわ。Nikonのカメラ10台以上持ってるけど、全部NEFファイルが違うもん。だから、発売日にカメラ買ったら、ソフトが対応するまでJPEGで撮るしかないんだよね。たまに、カメラの機種情報を書き換えてごまかせることもあるけど。RAW現像ソフトは、ICCカラーターゲットとか使って、機種ごとにプロファイルされてるらしいよ。" userName="lizknope" createdAt="2025-04-07T12:55:34" color="#ff5c5c">}}

{{<matomeQuote body="＞RAW現像ソフトは、ICCカラーターゲットとか使って、機種ごとにプロファイルされてるらしいよ。<br>理論上はそうだけど、実際にもそうしないと、安定した結果は得られないよね。RAW形式が同じでも、センサーが捉える値は違うから、カラーキャリブレーションしたワークフローだと、間違った結果になることもあるし。<br>「カメラYをカメラXとして扱う（自己責任で）」みたいな設定があったら便利だよね。Lensfunのデータベースで、レンズ補正をMk.IIに適用するために、同じようなことやったことあるけど、GUIがあったらもっと楽なのに。自動で候補を提案してくれる機能があったら最高だね。" userName="Zak" createdAt="2025-04-07T13:35:21" color="#ff5733">}}

{{<matomeQuote body="DSLRはソフトウェアとかUXのイノベーションが全然進んでないよね。<br>Sonyのa7rをスマホアプリで操作するの、マジでひどいUXだった。AdobeのLightroomも、時代遅れの考え方とか、変な使い勝手が多すぎるし。" userName="kookamamie" createdAt="2025-04-07T08:06:44" color="">}}

{{<matomeQuote body="ハードウェアの会社って、ソフトウェアが苦手なとこ多いよね。カメラメーカーもその典型。<br>カメラのハードウェアとソフトウェアの使いやすさは、また別の話だけどね。多くのユーザーは、初心者向けじゃなくて、パワフルで使い慣れたものを求めてるんだと思う。だから、昔のやり方をエミュレートしてるんだよね。DSLRは50年前の一眼レフカメラを、Lightroomは暗室をエミュレートしてるし。初心者にはちょっと不親切な方が、むしろ良いって思われてるのかも。" userName="wongarsu" createdAt="2025-04-07T08:39:29" color="">}}

{{<matomeQuote body="ダイヤルが４つくらい付いてる感じでしょ？最初は全部AUTOで良いんだけど、それぞれのダイヤルで何ができるか分かってくると楽しくなるよね。Sonyは「難しくないオート」を目指したけど、結局ダイヤルに戻ったし。<br>Sigmaのカメラは、ミニマルで、理想的で、実用的で、UIも良い感じだけど、あんまり売れてないよね。DP1とか、IntelliMouse PS/2みたいで自然な感じがする。dp2 Quattroも、トラックボールみたいで使いやすかった。カメラオタクが喜ぶポイントをちゃんと押さえてるんだよね。<br>多くの人は、A7M4と24-70のZeissを買って、全部オートで撮ってるけど、それでも8割くらいの人は満足してるんだから、それで良いんじゃない？" userName="numpad0" createdAt="2025-04-07T12:13:52" color="#785bff">}}

{{<matomeQuote body="ほんとそれ。でも、今のカメラメーカーは、どんどん小さくなるニッチな層にばかり目を向けてるから、DSLRはいつか終わると思う。スマホと比べて、十分な魅力がないし、UXとかソフトがクソだから、新しいユーザーが寄り付かないんだよね。" userName="kookamamie" createdAt="2025-04-07T10:15:29" color="">}}

{{<matomeQuote body="スマホじゃ全然ダメだよね。一眼レフで撮れる写真の1/4くらいしか撮れないんじゃない？<br>まあ、その1/4で十分な人も多いんだけどさ。でも、残りの75%に挑戦したいなら、スマホのカメラじゃ無理だよ。レンズも小さいし、物理的な制約が多すぎるからね。" userName="throwanem" createdAt="2025-04-07T11:29:15" color="">}}

{{<matomeQuote body="108MPのスマホ使ってたけど、拡大するとディテールは全部ごまかしなんだよね。でも20年前の1500ドルのNikonの15MPはマジでくっきりしてるし、300mmのレンズもつけられるし。<br>古いNikon 1 V1の12MPのほうが、よっぽどマシな写真撮れるよ。まあ、108MPにも使い道はあるけどね。" userName="genewitch" createdAt="2025-04-07T16:29:04" color="#45d325">}}

{{<matomeQuote body="そうそう、まさにトレードオフだよね。小さいセンサーに108MP（もしくは、それを実現するための技術）を詰め込むのは革命的だけど、レンズが小さいから光が足りなくて、ISPに頼りまくりになるんだよね。<br>おかげで、それなりに良い写真にはなるんだけど、拡大すると「ごまかし」が出てくる。<br>Samsungが月をコピーペーストしたって騒ぎがあったけど、あれはどこもやってるよ。スマホのカメラは、エンジニアが「訓練」させたシーンに似てないと、マジでひどいことになるんだ。<br>だから、カメラに頭脳がないって文句言う人は的外れなんだよね。物理的な限界は計算じゃどうにもならないし、カメラはそこに特化してるから。" userName="throwanem" createdAt="2025-04-07T17:09:13" color="#ff33a1">}}

{{<matomeQuote body="夕焼けをどれだけ正確に捉えられるかでカメラを評価してるんだけど、Galaxy Note 20だと、ホワイトバランスを調整すればまあまあ近づけるけど、色の幅が狭まっちゃうんだよね。<br>本当はオレンジとかピンクとか紫とか、いろんな色が混ざってるのに。スマホのカメラじゃ無理なんだよね。<br>特に、空の明るい部分が白飛びするのが嫌。昔から変わってない。" userName="genewitch" createdAt="2025-04-07T18:04:30" color="#ff33a1">}}

{{<matomeQuote body="カメラが捉えられない、ディスプレイにも再現されない高次のカラーハーモニクスを、俺らは弱く知覚してるんじゃないかな。特に、ピンク～マゼンタ～紫のあたりで違いに気づきやすい気がする。<br>みんなが気にしてないのは、そんなこと滅多にないから（夕焼けは最悪のテストケース！）。それに、「何億人年もの画像エンジニアリングと、何十億台ものスマホ、どっちを信じるんだ？自分の目を信じるのか？」って感じだよね。" userName="throwanem" createdAt="2025-04-08T16:03:15" color="">}}

{{<matomeQuote body="ずっとデベイヤーされたセンサーのカメラが欲しかったんだけど、RedとかArriの値段は払いたくないんだよね。Huawei Honor 8にはモノクロセンサーがついてて、フォーカスに使ってたんだけど、それを使って写真も撮れたんだ。Asus zenfoneがIRレーザーでフォーカスしてた頃だね。<br>今のスマホは、フォーカスした場所を「追尾」するんだけど、なんでそんなことするんだ？俺はスマホを傾けて操作するし、どこにフォーカスしたいかは分かってるんだよ！" userName="genewitch" createdAt="2025-04-08T20:47:58" color="">}}

{{<matomeQuote body="ここ15～20年、Sony、Canon、Nikonを使ってきたけど、Nikonはプロ/プロシューマー向けのカメラの使いやすさに、すごく力を入れてると思う。UIもそうだし、カメラのエルゴノミクスもそう。<br>Canonと比べて一番違うのは、Nikonのファインダーが大きいこと。おかげで、ちゃんと写真に集中できる。ボタンの配置も良いから、グリップを変えずにシャッタースピード、絞り、ISOを操作できる。" userName="daneel_w" createdAt="2025-04-07T10:10:46" color="#ff5c5c">}}

{{<matomeQuote body="Nikonのボディは写真家がデザインしてる。Fマウントのラインは、Ferrariを作った人がデザインしたらしい。<br>Canonのボディはエンジニアがデザインしてる。採用されるには、まず、コンクリートブロックを手のひらで潰せないとダメらしい。<br>Sonyのボディはコンクリートブロックがデザインしてる。" userName="throwanem" createdAt="2025-04-07T11:44:07" color="#38d3d3">}}

{{<matomeQuote body="NikonはFM2とF4しか持ってないけど、触り心地が最高。FM2はドライ潤滑システムで、チタン製のハニカムエッチングシャッター。F4はメニューシステムがない最後のプロ向けデジタル一眼レフ。<br>デジタルの世界では、Fuji X-Txxシリーズが、Nikonみたいで使いやすい。" userName="stas2k" createdAt="2025-04-07T17:04:47" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
