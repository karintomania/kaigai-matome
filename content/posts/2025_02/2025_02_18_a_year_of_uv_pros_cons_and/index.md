+++
date = '2025-02-18T00:00:00'
draft = false
title = 'uvを1年使ってみてわかったメリットとデメリット！移行すべきか？'
tags = ["uv", "移行", "技術レビュー", "メリット・デメリット", "プログラミング"]
featureimage = 'thumbnails/purple7.jpg'
+++

> uvを1年使ってみてわかったメリットとデメリット！移行すべきか？

引用元：[https://news.ycombinator.com/item?id=43095157](https://news.ycombinator.com/item?id=43095157)

{{<matomeQuote body="めっちゃよく書けた記事だね！Pythonのパッケージングの難しさについての分析がすごくいいと思う。uvの登場でやっとPythonのパッケージングが解決した気がする。単一ファイルのPythonスクリプト内に依存関係を持てるのがほんとに美しいと思う。<br>＞”小さなPythonスクリプトで依存関係を避けるか、面倒な作業をしなきゃいけなかった。”<br>依存関係を追加することが恐ろしかったけど、結局同じことしてた。<br>＞”これがあると作業がまるで変わる。”<br>完全に共感するよ。" userName="barosl" createdAt="2025-02-19T00:30:06" color="#38d3d3">}}

{{<matomeQuote body="依存関係リストにタイムスタンプを凍結することが大事だと思う。Pythonのパッケージは、新しいバージョンが増えていく中で互換性を維持するのがほんとに難しいから。特別なtomlの設定が役立つよ。<br>これのおかげで古い環境をすぐに再構築できたし、スピードも大事だね。" userName="epistasis" createdAt="2025-02-19T00:55:40" color="#38d3d3">}}

{{<matomeQuote body="漏れてるかもしれないけど、`requests`の正確なバージョンに固定すれば同じなんじゃない？リリース日で制限するのと実質同じだと思うけど。" userName="woodruffw" createdAt="2025-02-19T03:10:29" color="">}}

{{<matomeQuote body="依存関係の固定はいいけど、`requests`のトランジティブ依存関係は固定されないから、ロックファイルがないと意味ないよ。ロックファイルは良い手段だけど、単一ファイルのスクリプトには過剰かも。" userName="athrun" createdAt="2025-02-19T03:18:06" color="#ff5c5c">}}

{{<matomeQuote body="ファイル数なんて関係あるの？ロックファイル使えばトランジティブ依存関係も固定できるよ。他の言語ではこんなことが求められたら大変だと思うけど。" userName="EdwardDiego" createdAt="2025-02-19T09:27:26" color="">}}

{{<matomeQuote body="これをしっかりやる言語あったら教えてほしい。でも、CI用の小さなスクリプトとか、同僚に送る単一ファイルスクリプトのことを言ってるんだ。でも、2年後には同じバージョンの`c`が手に入らなくなることも多いからね。このタイムスタンプなアプローチは完全ではないけど、99％の確率で同じ依存関係のグラフと結果になる。" userName="hannibalhorn" createdAt="2025-02-19T10:47:02" color="#785bff">}}

{{<matomeQuote body="ScalaのAmmoniteスクリプトみたいに、JVMエコシステムでは依存関係をうまく扱うよ。最初から依存関係の解決が決定論的だから、固定する必要がないんだ。新しいパッチバージョンへのアップグレードも簡単だけど、やるには明示的なアクションが必要だよ。" userName="lmm" createdAt="2025-02-19T13:02:21" color="#785bff">}}

{{<matomeQuote body="Rustもこれをうまく扱うよ。可能であれば`c`を共有したり、依存関係を分割したりできる。Cargo.lockが正確な解決を保存するから安心だね。" userName="__s" createdAt="2025-02-19T11:41:59" color="#785bff">}}

{{<matomeQuote body="ファイル数は大事だよ。一つのファイルは共有しやすいから、Slackとかに簡単にコピーしたりアップロードしたりできる。一方、複数のファイルだと面倒だから。全体的に将来の壊れる可能性があるならそれでいいけど、使うケースは理解できる。" userName="kokada" createdAt="2025-02-19T11:34:55" color="">}}

{{<matomeQuote body="ソフトウェア工学の一般的な原則として、選択肢があれば、コードベースの中で関連する変更点が少なくて済む方がいい。それってドキュメントの管理も便利だから。" userName="epistasis" createdAt="2025-02-19T15:21:25" color="">}}

{{<matomeQuote body="どうしてファイルの数が重要なの？<br>これはプロジェクトじゃなくて~/binにあるスクリプト用だから、自己完結してる必要があるんだよね。" userName="deanishe" createdAt="2025-02-19T17:48:01" color="">}}

{{<matomeQuote body="依存関係のバージョンが出た時点を基に、暗黙の時間ベースのピン留めを示すことができるかも。ただの案だけどね。" userName="einpoklum" createdAt="2025-02-19T06:39:28" color="">}}

{{<matomeQuote body="それって、まさにその上で説明されてることじゃないの？" userName="froh" createdAt="2025-02-19T07:30:31" color="">}}

{{<matomeQuote body="Rustにこの機能が追加されることを一番期待してるよ。ロックファイルを保存しないと、同じパッケージのバージョンを戻すのがひどく大変なんだ。" userName="CJefferson" createdAt="2025-02-19T10:31:04" color="#45d325">}}

{{<matomeQuote body="なんでロックファイルを保存しないの？" userName="HumanOstrich" createdAt="2025-02-19T10:43:19" color="">}}

{{<matomeQuote body="わあ、シェアしてくれてありがとう！これが私が足りないと思ってた部分だったんだ。" userName="athrun" createdAt="2025-02-19T01:38:15" color="">}}

{{<matomeQuote body="バージョンとハッシュ値を含むロックファイルは作らなかったの？そしたらバージョン探しがいらなくなるのに。" userName="zelphirkalt" createdAt="2025-02-19T09:06:18" color="#ff5733">}}

{{<matomeQuote body="おお！手作業でバイナリサーチやるの？それともuvがそのためのツールを提供してるの？" userName="sunshowers" createdAt="2025-02-19T03:04:07" color="">}}

{{<matomeQuote body="バイナリサーチってどこに入るの？例では、バージョンソルバーは’2023-10-16T00:00:00Z’以降のバージョンは存在しないかのように見てるよ。" userName="code_biologist" createdAt="2025-02-19T09:43:56" color="">}}

{{<matomeQuote body="残念ながらuvは新しいもので、一般的なケースのみ扱ってきたから、少しずつ問題が残ってる気がする。記事にも出てたけど、あまり詳しくないんだよね。" userName="aragilar" createdAt="2025-02-19T07:28:32" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="CライブラリのPython依存関係でのエッジケースの例だね。Pipenvはロックファイル生成時にマシンのアーキテクチャ固有のライブラリしか指定しないから、ARM Macbookで開発してUbuntuのx86-64ボックスにデプロイするとロックファイルが壊れちゃう。Poetryのロックファイルは大丈夫だけど、uvはどうなのかな？" userName="EdwardDiego" createdAt="2025-02-19T09:32:33" color="">}}

{{<matomeQuote body="PEP 751が新しいロックファイル標準を定義してるらしいね。uvを含むツールは、その設計に協力してるみたいで、アーキテクチャ別にロックできるようになるらしいよ。OPのPEP 723スタイルのコメントは簡単に人間が書けるって言ってるけど、君のケースは事前にパッケージ解決が必要だから、別のロックファイルが必要だよ。" userName="zahlman" createdAt="2025-02-19T09:46:32" color="#ff33a1">}}

{{<matomeQuote body="君の返事は私の質問とは関係ないけど、uvのロックファイルってPoetryみたいに複数アーキテクチャ扱えるの？" userName="EdwardDiego" createdAt="2025-02-19T10:01:48" color="">}}

{{<matomeQuote body="これめっちゃいい機能だと思う！Nixより手軽にスクリプトやPythonで使えるし、動かすのも簡単だよ。Nixは利点も多いけど、使うのがちょっと面倒になっちゃうんだよね。" userName="0xCMP" createdAt="2025-02-19T05:42:32" color="#ff33a1">}}

{{<matomeQuote body="Nixって初回の実行の後は遅くならないの？一回目は依存関係をビルドしないといけないけど、次は早くなると思うんだけど。" userName="zelphirkalt" createdAt="2025-02-19T09:08:17" color="">}}

{{<matomeQuote body="PythonやJS、他のスクリプト言語でもパッケージをURLからインポートできるようにしたいね。SHA384の整合性チェックを使ってさ。ランダムなスクリプトをインストールするのってセキュリティリスクがあるから、何でこれが取り入れられないんだろう。" userName="8n4vidtmkvmk" createdAt="2025-02-19T02:29:49" color="">}}

{{<matomeQuote body="Pythonには完全ハッシュの要件があって、依存関係の整合性を保証するために使えるんだ。これ、pipとuvで使えるよ。直接パッケージをインポートするわけじゃないけど、まあそれはパッケージがPythonのインポート機構の一部じゃないからだよ。" userName="woodruffw" createdAt="2025-02-19T03:16:12" color="">}}

{{<matomeQuote body="Denoとnpmは、使うすべての依存関係のハッシュをロックファイルに保存して、次回の再インストール時にそれを検証するよ。" userName="AgentME" createdAt="2025-02-20T00:19:53" color="#ff33a1">}}

{{<matomeQuote body="最初にインポートする時に、そのパッケージの整合性を証明する魔法のSHA384ハッシュをどこで最初に得るの？" userName="HumanOstrich" createdAt="2025-02-19T10:46:46" color="">}}

{{<matomeQuote body="この機能はいいけど、IDEが依存関係を認識しないからあんまり役立たないんだよね。スキルの問題なのかな？" userName="shlomo_z" createdAt="2025-02-19T07:15:05" color="">}}

{{<matomeQuote body="具体的に、その”認識”って何を想像してるん？IDEが独自のパッケージマネージャーを用意するとか期待してる？" userName="zahlman" createdAt="2025-02-19T10:16:06" color="">}}

{{<matomeQuote body="普通は”自分の検査やオートコンプリートが期待通りに動く”って意味だよね。" userName="TylerE" createdAt="2025-02-19T14:33:00" color="">}}

{{<matomeQuote body="コードが実際に持ってないものでオートコンプリートや検査なんて出来ないでしょ。" userName="zahlman" createdAt="2025-02-19T20:23:50" color="">}}

{{<matomeQuote body="これ、個人のスクリプトやプロジェクト以外にはひどいよ。生産に近いものだと、ほんとに悪夢だね。" userName="BossingAround" createdAt="2025-02-19T08:30:39" color="#785bff">}}

{{<matomeQuote body="チェックサムやハッシュサムが無いフローは生産に向いてないよ。uvはまだ使ったことないけど、同じファイルで依存関係をハッシュで指定できるならいいな。インポート文の順序はPythonがJSより良い点だね。IDEはモジュールやパッケージを一つだけ確認すればいいから、計算が楽だし。" userName="zelphirkalt" createdAt="2025-02-19T09:05:03" color="">}}

{{<matomeQuote body="なんでそうしたの？別々のプロジェクトのために小さいvenvを持たないの？それって簡単で、依存関係の衝突も避けられるよ。" userName="dagw" createdAt="2025-02-19T09:52:45" color="">}}

{{<matomeQuote body="これらのデータ処理スクリプトのスコープって何？生産に使うパイプラインなら、再現可能な依存関係が必要だと思う。探求的なJupyter Notebookなら理解できるけど。" userName="zelphirkalt" createdAt="2025-02-19T13:42:10" color="">}}

{{<matomeQuote body="小さなプロジェクトごとにvenvを作るのは面倒だし、不要な追加作業だよ。最初は依存関係が分からないし、個人的なスクリプトなら急いで進めたい。大きなenvで管理してるよ。" userName="slightwinder" createdAt="2025-02-19T12:32:10" color="">}}

{{<matomeQuote body="＞生産に向いてない設計だよ。Pythonユーザーの中には、何を生産と呼ぶのか知らない人もたくさんいる。NumPyを必要とするものを書いたりするんだよ。" userName="zahlman" createdAt="2025-02-19T10:15:10" color="">}}

{{<matomeQuote body="＞その使用法には警告が必要。私たちも依存関係管理について学び、教育される必要がある。非再現可能なソフトウェアの問題を繰り返さないために。" userName="zelphirkalt" createdAt="2025-02-19T14:07:32" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="uv好きだけど、メインSSDに86GBもあるPython依存関係のダウンロードキャッシュはホントにイライラする。これは50種類のtorchのバージョンが原因で、pipの無秩序さを物語ってる。25年間プログラミングしててこんなに怒ったのは初めて。ScalaのSBTにも手をこまねいていたことがあるのに。" userName="sieve" createdAt="2025-02-18T23:25:35" color="">}}

{{<matomeQuote body="pipのせいではないと思うよ。PyTorchは空間をめちゃくちゃ消費するからね。新しい仮想環境を作って”python -m venv venv”を使ったら21MBだったのに、”venv/bin/pip install torch”で431MBに増えた。最も大きいファイルは178MBのlibtorch_cpu.dylib。uvのマニュアルにはPyTorchに関するセクションもあるよ。" userName="simonw" createdAt="2025-02-18T23:30:24" color="#45d325">}}

{{<matomeQuote body="uv pip使ってLLMソフトの依存関係をインストールしてるけど、uvがpipのロジックを再実装してるのか、pipに解決を任せてるのかはわからない。でも、torchの異なるバージョンがキャッシュにあるのは同じだから、これが実装とどう関係しているのか気になる。" userName="sieve" createdAt="2025-02-18T23:37:27" color="">}}

{{<matomeQuote body="uvはpipとは独立して解決ロジックを実装してるみたい。いろんなLLMライブラリが異なるバージョンのTorchを指定してる可能性があるよ。異なるPythonバージョンそれぞれに別々のTorchバイナリが必要だからね。uvを使えば、各プロジェクト用に別々のduplicated PyTorchを持たなくて済むよ！" userName="simonw" createdAt="2025-02-18T23:38:28" color="#45d325">}}

{{<matomeQuote body="＞異なるPythonバージョンそれぞれに別々のTorchバイナリが必要ですよね。<br>これを理解するのは難しかったけど、ABIの破損が関係してるっぽい。最近Pythonの拡張実装を調べてたけど、本当に不思議だ。" userName="sieve" createdAt="2025-02-18T23:50:02" color="">}}

{{<matomeQuote body="＞ABIの破損についてですね。<br>安定したABIというものがあるけど、それを守る必要はないんだよね。ABIはPythonのマイナーバージョンごとに変わることが多いから。常にPython VMを改善し続けていて、内部の型の表現を変更することが多いから。例えば、Python 3.6での辞書の改善とか。" userName="zahlman" createdAt="2025-02-19T10:50:11" color="#38d3d3">}}

{{<matomeQuote body="VMの境界を越えてメモリを共有するようなFFIは過去に考えられたことはあったのかな？<br>拡張をPythonの特定のバージョンと一緒にコンパイルする必要があるのはどうして？<br>pypiにFFIライブラリを見た記憶があるけど、Pythonの標準には無いと思う。" userName="sieve" createdAt="2025-02-19T11:10:17" color="">}}

{{<matomeQuote body="＞ABIの破損についてですね。<br>基本的にCPythonはバージョン間でABIの確実な安定性を保証しないけど、拡張が安定したABIに対してビルドされていれば別。このせいで同じような構築を何回もするハメになることが多い。TL;DRでは、Pythonの成功の副作用として複数のPythonバージョンを使ってるとこういう問題が起こるってこと。" userName="woodruffw" createdAt="2025-02-18T23:58:53" color="#ff33a1">}}

{{<matomeQuote body="Pythonはちょっと最近使い始めたけど、JavaやJSは時間をかけて最適化されたインタープリターがあるのに、なんでPythonにそんなことが起こらないのか疑問。<br>パフォーマンスを求めてpypyに移行しようとしてるけど、一部の依存関係が問題になるらしい。" userName="sieve" createdAt="2025-02-19T00:11:45" color="">}}

{{<matomeQuote body="JavaやJSはネイティブ拡張の使用をあまり奨励しないけど、Pythonはその対極にある。<br>だからホットパスをネイティブコードにオフロードすることが多い。最近はPythonの解釈性能にプラスの進展があったから、そういう傾向は少し改善されてる。" userName="woodruffw" createdAt="2025-02-19T00:29:43" color="#45d325">}}

{{<matomeQuote body="Nodeは初期の段階から安定した拡張APIを導入したから、Pythonよりも早くネイティブコードを扱いやすくなったんだよね。V8の速さや複雑なAPIのおかげで、開発者はPythonのようには手を出さなかったし、重要なライブラリがたくさん残ったんだ。" userName="throwup238" createdAt="2025-02-19T00:40:09" color="#785bff">}}

{{<matomeQuote body="JavaやJSは、Pythonに比べてネイティブ拡張を使うことがあまり推奨されてないよね。既に膨大なコードがあって、それを速くする必要があったから、他に選択肢がなかったんだ。もしPythonが同じ道を歩んでいたら、もっと簡単に早くなってただろうに。" userName="sieve" createdAt="2025-02-19T00:56:12" color="">}}

{{<matomeQuote body="最近Python使い始めたけど、JavaやJSは最適化が進んでるのに、なぜPythonだけ同じことができないのか不思議だよ。2008年からPythonのパフォーマンス向上が議論されてたし、3に移行する時も熱い話だったからね。CPythonの代わりになるものもいろいろ試みられたけど、結局失敗しちゃった。" userName="zerkten" createdAt="2025-02-19T03:50:29" color="#ff5c5c">}}

{{<matomeQuote body="GILよりも実際のPythonのパフォーマンスに目を向けるべきだと思うんだ。あの時代にパフォーマンスを改善できるはずの機会がたくさんあったのに。" userName="sieve" createdAt="2025-02-19T08:03:38" color="">}}

{{<matomeQuote body="Pythonは最近まであまり勢いがなかったけど、今はMicrosoftがバックアップしてスピード向上に取り組んでるんだよ。PyPyは独自の速さがあるんだけど、Cで書かれたモジュールにオフロードする方が一般的だから、ちょっと変な立ち位置だよね。" userName="Numerlor" createdAt="2025-02-19T00:19:14" color="">}}

{{<matomeQuote body="長いことPython使ってるけど、最近まであまり流行ってなかったってのには反論したくなった。でも、歴史的なグラフを見たら、2018年頃から急に人気が上がり始めたんだね。ただ、TIOBEのやり方はちょっと怪しいから、信憑性は薄いかも。" userName="simonw" createdAt="2025-02-19T01:03:14" color="">}}

{{<matomeQuote body="Tiobeはクソだと思う。GoogleがPython使い始めた2005年からもう注目されてたし、その頃からずっと進化してたよ。" userName="wiseowise" createdAt="2025-02-19T07:51:31" color="">}}

{{<matomeQuote body="abi3があまり使われない理由は、フルAPIでできることが限られていて、その影響でパフォーマンスが落ちるからだよ。" userName="int_19h" createdAt="2025-02-19T01:46:17" color="">}}

{{<matomeQuote body="それも理由の一つだと思うけど、主な理由はネイティブビルドがabi3をデフォルトにしないからで、みんな必要以上に多くのバージョンを公開してるし、abi3が使えるのに非abi3のものに依存する要因になってるんだ。" userName="woodruffw" createdAt="2025-02-19T01:59:14" color="">}}

{{<matomeQuote body="uvはNixみたいに同じファイルはハードリンクすべきだと思うんだ。パッケージマネージャーが余分なものを保存してるのは問題だからさ。" userName="conradev" createdAt="2025-02-18T23:42:30" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="いい驚きが待ってるかもね。リンクモードのデフォルトについてはここで実装されてるよ：“https://docs.astral.sh/uv/reference/settings/#link-mode”" userName="Spivak" createdAt="2025-02-19T03:16:30" color="">}}

{{<matomeQuote body="なんでそう思うの？" userName="d0mine" createdAt="2025-02-19T02:11:29" color="">}}

{{<matomeQuote body="↑上で言ってたけど、”ファイルを探して5.5GBを削除した”ってのは実際には5.5GBじゃなかったかもね。" userName="conradev" createdAt="2025-02-19T03:48:28" color="">}}

{{<matomeQuote body="uv使ってるなら<br> $ uv cache prune<br> $ uv cache clean<br>を使って、週に一回か月に一回実行することをおすすめ。" userName="rsyring" createdAt="2025-02-19T03:20:51" color="#45d325">}}

{{<matomeQuote body="この問題はpipのせいじゃなくて、使いやすさとインストールサイズの間にコンフリクトがあるんだ。この大きさや設定の依存関係をユーザーに委ねないため、全てを一つのアーティファクトに詰め込む。Pythonのパッケージングはシステムの動作をどうするか前提にしていて、これがハードウェアの検出と合ってないんだよね。解決できるかな？多くの開発者が自分のワークフローで改善を感じてないから難しいだろうな。" userName="aragilar" createdAt="2025-02-19T08:08:53" color="#ff33a1">}}

{{<matomeQuote body="“ユーザーはCUDAやGPU設定を考えなくてもいい”ってのは俺の場合は違った。普通のPyTorchは動かなかったから、特定のバージョンをダウンロードしないといけなかった。全てを一つにまとめるってのはJavaでもやってるけど、Pythonのエコシステムは本当に混沌としてて、改善の流れは見えない。" userName="sieve" createdAt="2025-02-19T08:28:53" color="">}}

{{<matomeQuote body="クロスプラットフォームのJavaはJVMが全部やってくれるけど、Cで書かれたネイティブ拡張があると、すぐに問題が戻ってくる。" userName="physicsguy" createdAt="2025-02-19T09:04:31" color="">}}

{{<matomeQuote body="Cで書かれたネイティブ拡張があると戻ってくるけど、SQLiteプロジェクトのJDBCドライバーはOSに応じたCのバージョンを使っていて、依存関係でも手間取ることはない。" userName="sieve" createdAt="2025-02-19T09:26:44" color="#ff33a1">}}

{{<matomeQuote body="CUDAのバイナリが多いよね？" userName="RockRobotRock" createdAt="2025-02-18T23:36:05" color="">}}

{{<matomeQuote body="ROCmが約40％。でも同じバージョンのフォルダが2つあるから重複もあるね。" userName="sieve" createdAt="2025-02-18T23:39:06" color="">}}

{{<matomeQuote body="rmlintを使ってみれば？重複ファイルをreflinks（ファイルシステムが対応してれば）かハードリンクで置き換えてくれるよ。" userName="homebrewer" createdAt="2025-02-19T01:04:35" color="">}}

{{<matomeQuote body="uvにはシンボリックリンクやハードリンクの重複排除の予定はあるのかな？" userName="forrestthewoods" createdAt="2025-02-19T00:00:18" color="">}}

{{<matomeQuote body="よくわからないけど、ファイルをハッシュ名で保存して、その都度シンボリックリンクかハードリンクするのが一番シンプルかも。しかし、一部のアプリはこういうファイルと一緒にいると変な挙動を示すことがあるから要注意。Windowsには独自のシンボリックリンクとハードリンクがあるし、持ち運び可能性も問題だね。" userName="sieve" createdAt="2025-02-19T00:16:47" color="">}}

{{<matomeQuote body="ZFSのブロックレベルでの重複排除にはぴったりの使い道な気がする。" userName="IgorPartola" createdAt="2025-02-18T23:42:52" color="#785bff">}}

{{<matomeQuote body="ZFSは使ってないけど、このドライブには使いたくないな。カーネルにネイティブサポートが来るまで、メインドライブでは無理。つまり、永遠に無理かも。" userName="sieve" createdAt="2025-02-18T23:53:37" color="">}}

{{<matomeQuote body="borg [0]を試したことある？それともBTRFSの方がいいんじゃない？[0] https://borgbackup.readthedocs.io/en/stable/index.html" userName="hyperbrainer" createdAt="2025-02-19T08:46:27" color="">}}

{{<matomeQuote body="ZFSを13年間使ってるけど、バックアップを含めた全てのワークフローがそれに基づいているから、ずっと問題なく動いてるよ。" userName="sieve" createdAt="2025-02-19T09:56:21" color="#ff33a1">}}

{{<matomeQuote body="＞”そして、別の人生でScalaのSBT（シンプルビルドツール）を扱ってたけど、あなたの気持ちがわかる。”" userName="EdwardDiego" createdAt="2025-02-19T09:41:28" color="">}}

{{<matomeQuote body="これからScalaを試そうと思ってる人向けに、何が悪いのか、他のビルドツールはあるのか教えて。" userName="amelius" createdAt="2025-02-19T12:03:01" color="">}}

{{<matomeQuote body="最近のcondaに関する記事が多いけど、別に新しい機能じゃないのにみんな盛り上がってるのは変な感じ。例えば、＞”Pythonのブートストラッピングからの独立性”は、はい、condaだし。＞”全ての状況とプラットフォームでPythonをインストールして実行できる能力”も、はい、conda。そして、＞”非常に強力な依存関係解決機能”も、はい、conda（かmamba）。でもuvにはプロジェクト管理の機能があるから、そこは確かにいいとこだね。ただ、condaでPythonのインストールが簡単であることは昔からできるのに、こんなに驚かれているのが変だな。uvは実際クールなツールだと思うし、今後に期待してる。" userName="BrenBarn" createdAt="2025-02-19T04:52:06" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
