+++
date = '2025-05-29T00:00:00'
months = '2025/05'
draft = false
title = 'FFmpegをもっと簡単に！ Typed-FFmpeg 3.0 型付きインターフェースとビジュアルフィルターエディタが登場！'
tags = ["FFmpeg", "開発ツール", "インターフェース", "ビジュアルエディタ", "プログラミング"]
featureimage = 'thumbnails/green2.jpg'
+++

> FFmpegをもっと簡単に！ Typed-FFmpeg 3.0 型付きインターフェースとビジュアルフィルターエディタが登場！

引用元：[https://news.ycombinator.com/item?id=44123098](https://news.ycombinator.com/item?id=44123098)




{{<matomeQuote body="コマンドラインオプションのパーサーって、それぞれ独自の言語みたいなもんなんだよね．Unixシェルの単語分割のせいで見た目が似てるけど、実際はすごく多様で、みんなが思ってるよりずっとバラバラなんだ．/usr/binの全プログラムで--helpや-hを試したけど、役に立つヘルプが出ないのがすごく多かったよ．ffmpegみたいに複雑なやつに型を追加するのは、この多様さに気づくきっかけになるし、実用的なメリットもあると思うんだ．良い仕事したね！" userName="cb321" createdAt="2025/05/29 11:35:50" color="#ff5c5c">}}




{{<matomeQuote body="君が言いたいこととは違うのは分かってるけど、「man foo」の方が「foo --help」とか「foo -h」より信頼できて役に立つと思うんだ．" userName="aidenn0" createdAt="2025/05/29 16:23:36" color="">}}




{{<matomeQuote body="なるほどね．ドキュメント探しは大事だよね．CLパーサーツールキットは独自の言語だけど、コマンドが手作りしてるargvパーサーは完全に独自の言語で、一般的な慣習の一部しかやってないんだ．getoptが普及しなかったのは、十分じゃなかったか、早くなかったか… Bell Labsでさえ、ddやfindみたいな古いコマンドは独自の構文のまま残っちゃったんだろうね．歴史はやり直せないし、いろんなことが「根強く残る」んだよ．" userName="cb321" createdAt="2025/05/29 17:41:29" color="#45d325">}}




{{<matomeQuote body="DOSではもっとひどかったよ．ワイルドカード展開がシェルじゃなくてプログラムの中で行われたから、個々のコマンドがワイルドカード展開をサポートしてるかどうかわからなかったんだ！" userName="aidenn0" createdAt="2025/05/29 17:54:52" color="">}}




{{<matomeQuote body="Unixコマンドでも、シェルがワイルドカード展開してくれても、そのコマンドが複数ファイルの処理をサポートしてるかどうかわからないままなんだよ．ツールは単一ファイルだけ処理して終わっちゃうかもしれないしね．" userName="sedatk" createdAt="2025/05/29 22:42:14" color="">}}




{{<matomeQuote body="getoptと同じ頃に、Bourne familyシェルがkey=val cmd構文を追加したんだ．これはgetenvとかで簡単にアクセスできて実装は軽くて済むんだけど、シェル固有なんだ．Unixではファイル名パターンマッチングも「ある種のロングオプション」もシェルレベルで組み込まれてたってこと．環境変数の継承は良い点と悪い点があったね．GNUが--key=valueを導入した頃のタイミングや可搬性が影響して、ロングオプションが勝ったんだろう．良くも悪くも、今はこのkey=val cmd構文を知らない人が多いみたいだ．bash/POSIXがC shellとかを打ち負かした頃の話なんだけどね．fish shellもこの構文はやめたと思うな．" userName="cb321" createdAt="2025/05/30 09:07:31" color="#ff5733">}}




{{<matomeQuote body="そのkey=val cmd構文は知らなかったけど、名前なしパラメータとか足りない点があるね．「help= cmd」みたいにスペースで混乱しやすいし、引数と環境変数がぶつかると大変なことになる．普及しなくてよかったよ．<br>CP/M 3.0にはDIR [WIDE] [ATTR=ANY]みたいに角括弧で囲む構文があって、あれが一番直感的だったかな．でもDOSはもう、CP/Mから受け継いだフォワードスラッシュを使ってたけどね．" userName="sedatk" createdAt="2025/05/30 20:40:19" color="#38d3d3">}}




{{<matomeQuote body="たぶん誤解だよ．あれは普通の構文に「加えて」使うアイデアで、たまたまロングネームを付ける方法なんだ．POSIX/Bash/Zshほどじゃないけど、使えるって意味では普及したよ．スペースの件は、Unixシェルの引用符と同じくらい混乱したりしなかったりかな．help= cmdは変に見えるけど、help=1 cmdとかもアリかもね．cmd [key1] arg1 [key2=val2] arg2って構文は面白いね．" userName="cb321" createdAt="2025/05/30 22:00:16" color="#ff33a1">}}




{{<matomeQuote body="ああ、完全に誤解してたよ．分かりやすく説明してくれてありがとう！でも、やっぱり普及しなくてよかったと思うな :-) " userName="sedatk" createdAt="2025/06/04 19:22:35" color="">}}




{{<matomeQuote body="よく分からないんだけど、その「衝突」ってどこであったの？" userName="plussed_reader" createdAt="2025/05/29 14:20:10" color="">}}




{{<matomeQuote body="コマンドのヘルプ集めるの？危険だからVMかコンテナでバックアップ用意して慎重にね。ルート権限はダメだよ。プロセスが固まることもあるから気をつけて。もしやるなら、`/usr/bin/*`のコマンドを`-h`とか`--help`で試してみて。出力ファイルを加工して統計とるのもありだよ。最初のヘルプの出し方は超重要だよね。" userName="cb321" createdAt="2025/05/29 15:18:13" color="">}}




{{<matomeQuote body="これ面白いね！アクティブに開発されてるのは良いな。でも、`ffmpeg-python`と同じような問題もあるかも。<br>例えば、`color`みたいな入力なしのフィルターを指定する方法が見当たらないし、`subprocess.CREATE_NO_WINDOW`みたいな`Popen`のフラグ渡せないのも不便。`ffmpeg.compile()`で回避できるけど、`ffprobe`の`ffmpeg.probe()`じゃできないね。<br>あっ、ソースフィルターの`color`は見つけた！`vfilter`や`afilter`みたいに、どんなソースフィルターでも使えるの？" userName="BGZq7" createdAt="2025/05/29 06:25:36" color="#785bff">}}




{{<matomeQuote body="Pythonで動画処理スクリプト組むなら、個人的には最初から`Vapoursynth`[1]を使うのをめっちゃオススメするよ。これはその目的のためにゼロから作られてて、活発にメンテされててコミュニティやツールも良い感じ。`ffmpeg`のCLIに縛られないのが強みだね。<br>[1] `https://www.vapoursynth.com/`" userName="Daiz" createdAt="2025/05/29 17:57:56" color="">}}




{{<matomeQuote body="”完全な型安全性、オートコンプリート、検証”が`typed-ffmpeg`のウリなのに、なんで幅や高さ（またはx、y座標）を文字列で渡すのが理にかなってるのか説明してくれる？<br>””`<br>`.drawbox(x=”50”, y=”50”, width=”120”, height=”120”, color=”red”, thickness=”5”)`<br>””`<br>（`https://github.com/livingbio/typed-ffmpeg?tab=readme-ov-file...`より）" userName="kopf" createdAt="2025/05/31 22:00:16" color="#45d325">}}




{{<matomeQuote body="問題は、それらが単なる整数じゃなくて、整数に評価される`ffmpeg`の式ってことだと思うな。例えば、`ffmpeg`のドキュメントにあるこの例を見てみて。<br>2ピクセルの赤い2.40:1マスクを描画する例：<br>`drawbox=x=-t:y=0.5*(ih-iw/2.4)-t:w=iw+t*2:h=iw/2.4+t*2:t=2:c=red`<br>これをちゃんと型チェックするには、`DSL`みたいなものが必要になるだろうね。" userName="BGZq7" createdAt="2025/05/31 23:43:08" color="#45d325">}}




{{<matomeQuote body="`Jules preview`にプロンプト入れてどうなるか試してみたよ。実装はかなり素朴だね。もっと読みやすいアプローチも思いつくけど、超短いプロンプトを使った割には悪くないかな。<br>変更はこのブランチにあるから興味あったら見てみて。<br>`https://github.com/matt-hensley/typed-ffmpeg/tree/feature/mu...`" userName="barake" createdAt="2025/05/29 23:44:02" color="">}}




{{<matomeQuote body="この実装がTypeScriptを使ってないって事実は、投稿者がTypeScriptでの実装を望んでるって事実とは関係ないでしょ。元の返信は投稿者がすでに知ってる事実を述べただけなんだから、それを知ってるって確認するために「うん」って言ったんだよ。" userName="internetter" createdAt="2025/05/29 17:23:32" color="">}}




{{<matomeQuote body="FFmpegのコマンドラインを機械が読み込めるように記述して、多言語で生成できるようにするべきっぽいね。" userName="ape4" createdAt="2025/05/29 12:14:27" color="#ff33a1">}}




{{<matomeQuote body="このビジュアルツール、特に素晴らしいね。FFmpegはモジュラーとかビジュアルプログラミングがすごく役に立つ例みたいだ。FFmpegの全部を知ってるわけじゃないからね。ちょっとしたUXノートとしては、ノードとかエッジを消すのにDELキーが使えると思ってたんだ（Win11/Chrome）。でも全体的に：すごい！" userName="dejobaan" createdAt="2025/05/29 12:47:45" color="#ff5733">}}




{{<matomeQuote body="MicrosoftのDirectShow GraphEditみたいなものがやっと出てきたかって感じだね。" userName="userbinator" createdAt="2025/05/30 03:01:49" color="#ff33a1">}}




{{<matomeQuote body="これはかっこいいね。でも、フレーム全体をコマンド間でパイプ処理するのって対応してる？個人的には、それがFFmpegフローの一番面白い形を引き出す時だと思うんだけど。" userName="mertleee" createdAt="2025/05/29 17:04:39" color="#ff33a1">}}




{{<matomeQuote body="これ、いいね！もしビジュアルで動画編集したいなら、僕のツールも紹介させてよ。https://newbeelearn.com/tools/videoeditor/<br>これがFFmpegコマンドを生成するんだ。" userName="pdyc" createdAt="2025/05/29 17:27:49" color="">}}




{{<matomeQuote body="関係ないんだけど、僕のC++の解決策これだよ: https://github.com/richardpl/lavfi-preview" userName="pbmahol" createdAt="2025/05/29 07:04:10" color="">}}




{{<matomeQuote body="これこそ僕が探してたものだよ: リアルタイムのビジュアル。すごくいいね。" userName="chrisallick" createdAt="2025/05/30 04:56:55" color="">}}



[記事一覧へ]({{% ref "/posts/" %}})
