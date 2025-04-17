+++
date = '2025-04-10T00:00:00'
months = '2025/04'
draft = false
title = 'Pythonの文字列フォーマットに新風 PEP 750テンプレート文字列がついに登場'
tags = ["Python", "PEP", "文字列フォーマット", "テンプレート", "プログラミング"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Pythonの文字列フォーマットに新風 PEP 750テンプレート文字列がついに登場

引用元：[https://news.ycombinator.com/item?id=43647716](https://news.ycombinator.com/item?id=43647716)

{{<matomeQuote body="言語によって文字列フォーマットのアプローチが全然違うの、マジで面白いよね。" userName="Mawr" createdAt="2025-04-10T23:32:56" color="">}}

{{<matomeQuote body="Goにはそういうのいっぱいあるよねー。" userName="umanwizard" createdAt="2025-04-11T00:46:27" color="">}}

{{<matomeQuote body="文字列補完に関する議論を見ると、考えなしに捨てたってのはヒドすぎだって。mini-proposalsも書いてるし[1]。間違ってると思うけど、ちゃんと考えてるよ。Goのgenericsとかerror handlingと同じで、完璧主義なんだよね。Javaと違って、Goチームは自信がないと実験的な機能すらリリースしないし。" userName="unscaled" createdAt="2025-04-11T02:40:21" color="#ff33a1">}}

{{<matomeQuote body="＞String interpolationとfmt.Sprintfには大きな違いがあるって？<br>　”ローカライズに関しても違いがあるよね。fmt.Sprintfはローカライズできるけど、String interpolationはできない。PEP 750でローカライズの議論がないのも気になるなー。”" userName="mananaysiempre" createdAt="2025-04-11T19:05:52" color="">}}

{{<matomeQuote body="プロの言語設計者ならもっとできるはず。Goに文字列補完が欲しいって人がいるなら、他の言語がどう実装してるか調べるのが当然じゃん？fmt.Sprintで似たことができるって言うけど、それ言う必要ある？genericsと同じで、ergonomicsが大事なんだよ。fmt.Sprintが良いならもっと使われてるはずだよね？" userName="Mawr" createdAt="2025-04-12T01:55:32" color="#ff5733">}}

{{<matomeQuote body="＞Proposing syntax as noisy as […] is just another sign the designers don't get it.<br>　”`\(…)``の代わりに`{…}`を使うのが嫌なの？文字数が多いから？それとも括弧をネストする必要があるから？”" userName="pansa2" createdAt="2025-04-12T02:48:45" color="">}}

{{<matomeQuote body="Value typesはどうなった？難しいのはわかるけど、Javaが出てから新しい言語をいくつか学んで捨ててるのに、まだリリースされてないって。" userName="nu11ptr" createdAt="2025-04-11T00:04:50" color="">}}

{{<matomeQuote body="Go(lang)の拒否は理解できる。フォーマット関数が文字列内で任意のコードを実行するのは悪夢だよね。Log4jが良い例。拒否の例は、文字列内のコードを文字列外の関数で修正できることを示してる。安全で、コンパイラやプログラマにも優しい。文字列にevalが欲しいなら別だけど。(evalはscripted言語でしか見たことないなー。Goはバイナリだし。)" userName="mjevans" createdAt="2025-04-11T00:28:42" color="">}}

{{<matomeQuote body="いや、フォーマット関数は“arbitrarily execute code”しないよ。f/t stringはsyntaxであってruntimeじゃない。”Hello ” + subject + ”!”じゃなくてf”Hello {subject}!って書くだけ。subjectは普通のコードの式だよ。query([”SELECT * FROM account WHERE id = ”, ” AND active”], [id])じゃなくてquery(t”SELECT * FROM account WHERE id = {id} AND active”)って書くんだ。むしろinjectionしにくくなるよ。" userName="paulddraper" createdAt="2025-04-11T01:31:46" color="#ff33a1">}}

{{<matomeQuote body="返信のcontextをもう一度読んでください。俺が返信してるのは拒否されたGolangの提案だよ。PythonのPEPとか、他のmagic variablesを解決する文字列じゃないよ！" userName="mjevans" createdAt="2025-04-11T02:08:29" color="">}}

{{<matomeQuote body="提案内容を見る限り、評価は含まれてないみたいね。Pythonと同じで、構文糖として文字列リテラルを解析して、明示的なフォーマットコードに変換するっぽい。GitHubでの議論は誤解が多いみたいだね。" userName="zahlman" createdAt="2025-04-11T02:23:27" color="#38d3d3">}}

{{<matomeQuote body="それなら、例の意図を誤解してたかも。でも、理解しにくいのは、メンテナンスの負担が増えて、言語が複雑になるってことだよね。" userName="mjevans" createdAt="2025-04-11T03:00:52" color="">}}

{{<matomeQuote body="機能がない場合の回避策が、今回のケースみたいにメンテナンスの負担が大きい場合、学習で回避できないよね。" userName="eviks" createdAt="2025-04-11T06:26:32" color="">}}

{{<matomeQuote body="Goなら、事前にエイリアス操作を計算して、最終的な値を参照するみたいな感じかな。例えば、＞https://github.com/golang/go/issues/34174”を参考にすると、変数が多い場合に{variable}形式だと分かりにくいかも。%{variable}の方がparserで扱いやすい気がする。" userName="mjevans" createdAt="2025-04-11T09:39:54" color="">}}

{{<matomeQuote body="提案では、Swift、Kotlin、C#みたいな構文糖が引用されてるよ。提案はそれと同じことを意図してたみたい。" userName="paulddraper" createdAt="2025-04-11T02:34:39" color="#ff33a1">}}

{{<matomeQuote body="この例のおかげで、sqlc/typed sqlみたいなもの（Pythonでもよく使う）のメカニズムになるってことが分かったよ。transpilationなしで、SQLに対するAPIラッパーも不要になるかも。lintersは必要だけど、typeddb.SelectActiveAccount(I’d)みたいなクエリのコストをDBで確認できるのはいいね。" userName="chrome111" createdAt="2025-04-11T11:44:20" color="#ff33a1">}}

{{<matomeQuote body="PEPによると、新しい`Template`型を返すから、型チェックとかduck typingで、Template以外の入力を拒否できるはず。" userName="WorldMaker" createdAt="2025-04-11T15:05:58" color="">}}

{{<matomeQuote body="型は違うよ。static typecheckingかruntimeで確認できるはず。" userName="paulddraper" createdAt="2025-04-11T16:47:55" color="">}}

{{<matomeQuote body="多くの言語で、f-strings（またはf-stringみたいなもの）は、文字列リテラルでのみサポートされてて、ユーザーが指定した文字列ではサポートされてない。コンパイル時に、文字列連結に変換できる。" userName="miki123211" createdAt="2025-04-11T01:20:31" color="#38d3d3">}}

{{<matomeQuote body="混乱があるといけないから言うけど、Pythonのf-stringは文字列リテラル限定だよ。fプレフィックスは新しいデータ型を作るわけじゃなくて、コンパイル時に解析されて、文字列連結コードに書き換えられるんだ。" userName="zahlman" createdAt="2025-04-11T02:18:29" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="いやいや、あるって。PythonのソースコードはJavaとかC#みたいにVM用のバイトコードに翻訳されて、デフォルトで.pycファイルにキャッシュされるんだよ。違うのは、ソースコードファイルの実行を指示すると、バイトコード解釈の前にコンパイルが自動的に行われるってこと。<br>`SyntaxError`はコンパイル中に発生する可能性があるから、他の例外とは根本的に違うんだ。`exec`/`eval`とかモジュールのインポートみたいに、明示的に発生させるか、別のコードコンパイルを明示的に呼び出す場合にのみランタイムで発生する。" userName="zahlman" createdAt="2025-04-11T03:54:18" color="">}}

{{<matomeQuote body="あるよ。ソースコードをバイトコードにコンパイルするときにね。" userName="pansa2" createdAt="2025-04-11T03:43:38" color="">}}

{{<matomeQuote body="僕の返信は、親投稿のGolangの拒否された機能リクエストの具体的な例に対するものだよ。その提案を読んで。<br>文字列内の既存の/将来の（遅延/遅延評価）文字列リテラルを参照する可能性についてではなく、文字列内の任意の関数を文字通り評価するフォーマット文字列についてなんだ。" userName="mjevans" createdAt="2025-04-11T02:05:48" color="#38d3d3">}}

{{<matomeQuote body="その提案は、ユーザーが提供した文字列でコードを実行することについては何も言ってないよ。コンパイラによって処理される文字列リテラルについてのみ述べている（その時点で、ユーザーが提供した文字列は利用できない）。<br>一方、Goが提供する現在の解決策（fmt.Sprintf）は、ユーザーが提供したformat Stringをサポートするもの。<br>この機能が拒否された理由は、あなたが述べたこととは関係ないよ。Ian Lance Taylorは単に「fmt.Sprintfを呼び出すよりも大きな利点はないようだ」と言っただけ。彼は、文字列補間にパフォーマンス上の利点があることは認めたけど、fmt.Sprintf/fmt.Sprintよりもユーザビリティの向上はないと考えている。Goでは他の言語に比べて、コンパイラに新しい機能を追加することを嫌うんだ。" userName="unscaled" createdAt="2025-04-11T02:25:38" color="#ff33a1">}}

{{<matomeQuote body="ユーザーが提供した文字列のリスクって何？サイズはわかるでしょ？他に何が心配なの？" userName="NoTeslaThrow" createdAt="2025-04-11T01:22:25" color="">}}

{{<matomeQuote body="＞フォーマット文字列内からコードを任意に実行するフォーマット関数<br>つまり、テンプレートってこと？ mustacheのサポートのためにgoを使うことはないな。" userName="NoTeslaThrow" createdAt="2025-04-11T01:13:55" color="">}}

{{<matomeQuote body="いや、逆だよ。f-stringsは、大まかに言ってeval（つまり、どんな些細な使用においてもエラーとなる可能性のある、非衛生的な文字列連結）であって、t-stringsは単なる代替の式構文であり、引数を逆参照さえしない。" userName="bcoates" createdAt="2025-04-11T02:53:38" color="">}}

{{<matomeQuote body="f-stringsはevalじゃないよ。動的じゃない。他のすべての式と同じように実行される式にすぎない。" userName="rowanG077" createdAt="2025-04-12T19:29:27" color="#785bff">}}

{{<matomeQuote body="そうそう、そしてttyにprint()する以外のことをすると、エスケープ/インジェクション攻撃になる。<br>any_func(f”{attacker_provided}”) <=> eval(attacker_provided)は、セキュリティ/正確性の観点から。" userName="bcoates" createdAt="2025-04-13T20:44:24" color="">}}

{{<matomeQuote body="これって any_func(attacker_provided) と何が違うのさ？" userName="saagarjha" createdAt="2025-04-15T05:33:27" color="">}}

{{<matomeQuote body="＞Go の開発者は、この問題を5分も検討せずに、考えなしに捨て去ったみたい。<br> リンク先の issue は2019年にオープンして、2023年にコメントなしでクローズされたけど、2022年までは活発に議論されてたんだね。" userName="cherry_tree" createdAt="2025-04-11T03:22:05" color="">}}

{{<matomeQuote body="Ruby には変なデコレータなしで、めっちゃ美しい文字列フォーマットがあるじゃん。" userName="cortesoft" createdAt="2025-04-11T00:41:46" color="">}}

{{<matomeQuote body="D言語で文字列のインターポレーションが大炎上したことがあったんだよ。Walter はシンプルなのを求めてたけど、コミュニティはPythonのテンプレートみたいなのを求めてた（少なくともPEPの冒頭を読んだ感じだと）。結局 Walter はコミュニティの要望を受け入れたんだ。" userName="1980phipsi" createdAt="2025-04-11T01:04:00" color="#ff5c5c">}}

{{<matomeQuote body="マジで荒らしじゃないんだけどさ、Python の f-string が printf 形式のフォーマット文字列よりも優れてる点がマジで分かんないんだよね。ググってみたけど、イマイチ納得できるものがなかったんだ。<br>誰か pros と cons を簡単に教えてくんない？" userName="throwaway2037" createdAt="2025-04-11T04:15:28" color="">}}

{{<matomeQuote body="Go/C 形式のフォーマットオプションはこんな感じだよ:<br>　fmt.Sprintf(”This house is %s tall”, measurements(2.5))<br><br>　fmt.Sprint(”This house is ”, measurements(2.5), ” tall”)<br><br>Python の f-string だと:<br>　f”This house is {measurements(2.5)} tall”<br><br>Sprintf は引数の対応を見るのが面倒。Sprint は読みやすいけど、書くのが大変。f-string は人間工学的に優れてるから、よく使う処理では差が出るよ。" userName="Mawr" createdAt="2025-04-11T07:49:00" color="#38d3d3">}}

{{<matomeQuote body="_log(f”My variable is {x + y}”) の方が、_log(“My variable is {}”.format(x+y)) や _log(“My variable is {z}”.format(z=x+y)) より、ずっと自然に読める気がするんだよね。大したことじゃないけど。" userName="theptip" createdAt="2025-04-11T04:37:20" color="">}}

{{<matomeQuote body="Python に全然詳しくないんだけど、最初の例をローカライズ（翻訳）するにはどうすればいいの？" userName="blami" createdAt="2025-04-13T11:30:09" color="">}}

{{<matomeQuote body="文字列のインターポレーションって1970年代から実装があるのに、なんでこんなに苦労して戦わないといけないんだろ。PEP 498 (fstrings) でさえ戦いだったし。" userName="oliwarner" createdAt="2025-04-11T07:23:05" color="">}}

{{<matomeQuote body="Java は STR. “Hello {this.user.firstname()}, how are you?<br>It's {tempC}°C today!” を推奨してるみたいだけど、マジ？ scala の s”Hello ${this.user.firstname()}, how are you?<br>It's ${tempC}°C today!” と比べて STR. “” って何なの？" userName="dionian" createdAt="2025-04-10T23:35:21" color="#38d3d3">}}

{{<matomeQuote body="Nick Humrichだよ。PEP 501の書き換えを手伝って、t-stringsの基礎を作ったんだ。今回のPEPの著者じゃないけど、このPEPのことはよく知ってるから、質問があったら遠慮なくどうぞ！ついに承認されてマジ嬉しい！PEP 501に取り組み始めてから4年も経つんだぜ。" userName="nhumrich" createdAt="2025-04-10T21:22:01" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="文字列の新しいタイプが増えて、言語がどんどん複雑になってるって心配する声があるよね。PEPsを書いて議論する人たちは、Pythonのエキスパートだから、初心者や入門者の視点が抜け落ちてるんじゃないかって。このバイアスを防ぐ仕組みってあるのかな？" userName="Waterluvian" createdAt="2025-04-10T21:42:07" color="">}}

{{<matomeQuote body="PEPの議論は全部公開フォーラムで行われてるから、誰でも意見を言えるんだ。もちろん、エキスパートが参加しやすいのは確かだけどね。プロセスは、初心者よりもエキスパートのためになってる気がする。最近は、難易度を下げるための取り組みもされてるよ。新しいPEPには「初心者にどう教えるか」ってセクションが必要になったんだ。https://peps.python.org/pep-0750/#how-to-teach-this" userName="nhumrich" createdAt="2025-04-10T21:53:34" color="#ff5733">}}

{{<matomeQuote body="「初心者にどう教えるか」って質問は、ユーザータイプについて考える良いきっかけになるよね。言語全体の状況を調査するテストとか、プロダクト調査みたいなものがあれば良いけど、ユーザーエクスペリエンスの話だから難しい問題だよね。" userName="Waterluvian" createdAt="2025-04-10T22:02:25" color="">}}

{{<matomeQuote body="Python開発者の平均レベルだとPEPを知らない人が多いと思うよ。議論がオープンなのは良いことだけど、平均的な開発者が何を求めてるかなんて誰も知らないんじゃない？PythonだろうとJavaだろうと、こだわりがないって人もいるし。<br>例えば、dict[k] += 1をする前にdictを初期化しないといけない理由がわからない人もいる。k in dictを確認してdict[k] = 0にする必要があるって知ってても、+= が dict[k] = dict[k] + 1 に展開されるって理解してないんだよね。" userName="anon-3988" createdAt="2025-04-11T03:20:20" color="">}}

{{<matomeQuote body="t-stringsとf-stringsの両方がある理由がわからないなー。この2つの違いが、新しいプログラマーにとっては混乱の元になると思うんだよね。理想のPythonは、どっちか片方だけで良いのに。" userName="jackpirate" createdAt="2025-04-10T21:54:27" color="#45d325">}}

{{<matomeQuote body="f-stringsはすぐに文字列になるけど、t-stringsはオブジェクトを導入して、ライブラリがテンプレート文字列に対してカスタムロジックやフォーマットをできるようにするんだ。例えば、SQLに挿入するときにユーザー入力を適切にエスケープするとかね。f-stringsじゃ強制できないから。" userName="nhumrich" createdAt="2025-04-10T22:00:45" color="#38d3d3">}}

{{<matomeQuote body="＞ensure user input is properly escaped when inserting into sql<br>昔はそれを願ってたし、JSのテンプレート文字列とそれに関するライブラリで実現したんだ。価値があるかどうかは別として（あなたはPEPを完成させたんだから、私より信頼性があるけど）、考えが変わったんだよね。それは間違いだと思う。<br>構文的にはナイスだけど、SQLクエリとパラメータの分離っていう現実を曖昧にするし、SQLの上に抽象化を構築するけど、それは見た目も抽象化っぽくない。そして何より、間違ったやり方と見た目が似すぎてる。安全なSQLのやり方と安全じゃないやり方の違いが、たった1文字とPythonの文字列フォーマットの理解度だけで決まるなら…ヤバいことが起きるよ。1人プロジェクトならなんとかなるけど、経験や役職が違う人がいる大きなプロジェクトだと、きっとうまくいかない。可愛いけどね。SQLクエリには向いてないと思う。" userName="williamdclt" createdAt="2025-04-10T23:14:35" color="">}}

{{<matomeQuote body="あなたの心配はわかるよ。PEPにも書いてある通り、t”foo” は文字列じゃないんだ。f”foo” は文字列だけどね。typecheckerを使えば型エラーになるし、無視したらランタイムエラーになるよ。t”foo” には __str__() メソッドすらないから。<br>PEPの要約の冒頭に「t-strings は文字列ではない」って書くべきだね。" userName="nine_k" createdAt="2025-04-10T23:33:53" color="#45d325">}}

{{<matomeQuote body="＞　”t-strings are not strings”<br>t-stringって、文字列じゃないものに対しては残念なネーミングだよね。" userName="guelo" createdAt="2025-04-10T23:41:24" color="">}}

{{<matomeQuote body="シンプソンの個別ストリンゲット！<br>https://www。youtube。com/watch?v=7qNj-QFZbew" userName="DonHopkins" createdAt="2025-04-11T00:04:38" color="">}}

{{<matomeQuote body="全部わかる気がするけど、プログラミング入門の学生には絶対無理だろなー。もう構文で頭いっぱいなのに。" userName="jackpirate" createdAt="2025-04-11T00:49:29" color="">}}

{{<matomeQuote body="まず、`f”something”`は`str`型だけど、`t”something”`は`string。templatelib。Template`型なんだよね。t-stringを使うと、コード内で文字列のどの部分が動的に置換されたか判別できる。" userName="davepeck" createdAt="2025-04-10T21:58:36" color="#ff33a1">}}

{{<matomeQuote body="型はそんな重要じゃない。__call__や参照はstring型を返すし、fとtは使う側からしたら同じように扱える。例えば、全部のfをtに置き換えて、ちょっと修正すれば移行できると思う。時間はかかるけどね。" userName="all2" createdAt="2025-04-10T22:32:16" color="">}}

{{<matomeQuote body="f-stringの使用頻度が減って、削除しても多くのプロジェクトに影響が出なくなるまで数年待つしかないね。" userName="skeledrew" createdAt="2025-04-10T22:06:41" color="">}}

{{<matomeQuote body="それはない。" userName="milesrout" createdAt="2025-04-10T22:09:16" color="">}}

{{<matomeQuote body="人気が続くならそれでいい。大事なのは、誰にとっても複雑じゃないこと。" userName="skeledrew" createdAt="2025-04-10T22:16:05" color="">}}

{{<matomeQuote body="これで文字列のフォーマット方法が4つになるね。古いのは消えないから。<br>”foo %s” % ”bar”<br>”foo {}”。format(”bar”)<br>bar = ”bar”; f”foo {bar}”<br>bar = ”bar”; t”foo {bar}” # 特別な機能付き！" userName="macNchz" createdAt="2025-04-10T22:49:06" color="">}}

{{<matomeQuote body="こういう時にこそ、意見が強いlinterが役立つんだよね。後方互換性を維持しつつ、徐々に“良い”バージョンに移行させる。<br>初心者は全部知っておく必要があるから大変だけど。" userName="amenghra" createdAt="2025-04-10T23:01:00" color="">}}

{{<matomeQuote body="printf形式のフォーマット（”foo %s” % ”bar”）は、そろそろ引退してもいい気がする（ショートカットとして便利だから、絶対なくならないだろうけど）。<br>他のやつは、少なくとも同じフォーマット文字列の構文に基づいているし。<br>”foo {}”。format(”bar”)は、明らかに”f-stringを使えばいい”ケース。でも、フォーマットが遠く離れた場所で行われる場合は別。そんな時はt-stringを使えば”いい”？ファイルからフォーマット文字列を読み込む場合はどうする？t-stringとf-stringは構文要素だから、動的な場合は使えない！<br>だから、以下のユースケースがある。<br>- printf形式：C言語っぽい文字列フォーマットが必要<br>- 。format：フォーマット対象のデータが近くにないからf-stringが使えない。t-stringは動的な場合に使えない。<br>- f-string：テンプレートとデータが同じ場所にあるから、文字列連結したい（よくある！）<br>- t-string：テンプレートとデータが同じ場所にあるけど、特別なロジックで結果を組み立てたい（文字列じゃなくてもいい！）<br>この2つは構文だから、最初の2つのユースケースを全部カバーするのは難しい。<br>でも、特定のユースケースなら、4つの中で最適なものが存在するはず。" userName="rtpg" createdAt="2025-04-10T23:19:40" color="#ff5c5c">}}

{{<matomeQuote body="printf形式のフォーマット（”foo %s” % “bar”）は、もうそろそろ引退してもいいんじゃないかなーって思うけど、便利なショートカットだから、たぶん絶対なくならないよね。あと、ユーザーが提供するデータに対して、ある程度安全なのはこれだけなんだよね。" userName="masklinn" createdAt="2025-04-11T03:24:15" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Pythonで%を使ったフォーマットって使ったことないんだけど、`format`よりも安全な理由ってなに？" userName="pansa2" createdAt="2025-04-11T03:30:07" color="">}}

{{<matomeQuote body="後方互換性がないなんてマジかよ？！" userName="aatd86" createdAt="2025-04-10T23:18:15" color="">}}

{{<matomeQuote body="ES6のテンプレート文字列の方がf-stringより先だったと思うんだけど。もしそうなら、なんでPythonはf-stringなんて明らかに劣ってるデザインを採用しちゃったの？今や文字列補完システムが5つもあるじゃん（%、.format、string.Template、f-string、t-string）。" userName="patrec" createdAt="2025-04-10T22:11:07" color="#38d3d3">}}

{{<matomeQuote body="ES6のテンプレート文字列は知らないんだけど、なんでf-stringより優れてるの？f-stringは普通に使えるし、使いやすいと思うんだけど。特に普段C++を使ってるから、文字列操作にはあんまり期待してないのかも（笑）。" userName="mardifoufs" createdAt="2025-04-11T00:20:16" color="">}}

{{<matomeQuote body="ありがとう！遅延評価の選択肢はどんなのが検討されて、どんな理由で却下されたのか知りたいな。遅延評価のメリットは、遅延評価クラスを定義するコードを少し節約できることじゃなくて、APIを標準化して、誰でもコードを読めるようにすることだと思うんだよね。あと、LLMのプロンプトテンプレート（LangChainとか）は設計に影響を与えた？" userName="_cs2017_" createdAt="2025-04-10T21:40:46" color="#38d3d3">}}

{{<matomeQuote body="ロギングのパフォーマンスが少し向上するかもしれないって聞いたけど、まだよくわかってないんだよね。<br>今、ロギングには2つの方法があるよね。<br>1. `logger.debug(f'Processing {x}')` - 見た目はいいけど、logging level > `logging.DEBUG`でも評価されちゃう。<br>2. `logger.debug('Processing %s', x)` - 必要になるまで評価されない。<br>t-stringsの場合はどうなるのかな？何かメリットはある？" userName="leobuskin" createdAt="2025-04-11T00:00:59" color="#785bff">}}

{{<matomeQuote body="T-stringsはf-stringsと同じで、すぐに評価されるから、メリットはないよ。" userName="davepeck" createdAt="2025-04-11T00:08:09" color="">}}

{{<matomeQuote body="PEP 501、お疲れ様！ちょっと的外れな質問かもしれないけど、PEP 750にPEP 292が全然言及されてないのはなんで？" userName="frainfreeze" createdAt="2025-04-10T22:56:02" color="">}}

{{<matomeQuote body="Python 3.14のリリースが近づいてるから、文字列フォーマットの仕組み（たくさんあるよね）についてドキュメントを書きたいと思ってるんだ。それぞれが少しずつ重複してるけど、それぞれ独自の使い道があるんだよね。PEP 292は廃止されることはないし、`flufl.i18n`みたいな強力なライブラリで使われてるよ。" userName="davepeck" createdAt="2025-04-10T23:11:35" color="">}}

{{<matomeQuote body="Pythonってまた新しいstring literalが必要なの？Templateを標準ライブラリに追加するのは良いと思うけど、syntax supportまではいらないんじゃない？t”blah blah”ってTemplate(“blah blah”, context)のaliasみたいなもんでしょ？" userName="bjourne" createdAt="2025-04-10T22:49:06" color="">}}

{{<matomeQuote body="syntax supportはマジで必要だよ。staticな部分とdynamicな部分（user inputっぽいとこ）を区別しないといけないから。syntax levelでしか無理じゃん？%みたいにplaceholder使う手もあるけど、f-stringがある今、そっちの方が良くない？f-stringのsyntax highlightingとか使いやすさ最高だし。一番安全で使いやすいのが理想だよね。" userName="nhumrich" createdAt="2025-04-10T22:56:57" color="#38d3d3">}}

{{<matomeQuote body="だからcontext argumentを指定したんだって。Template(”{name} {address}”, dict(name = …, address = …))って、t”{name} {address}”と全く同じじゃん？変数はlocal scopeから取ってくるとして。" userName="bjourne" createdAt="2025-04-10T23:25:20" color="">}}

{{<matomeQuote body="それだとinterpolated valueの名前を3回も書くことになるじゃん（template stringで1回、dictのkeyで1回、actual valueで1回）。できるけど、t-stringの方が使いやすいし、readableだと思うよ。" userName="thayne" createdAt="2025-04-11T01:59:48" color="">}}

{{<matomeQuote body="そりゃsyntax supportがあれば使いやすいよ。でもt-stringってnicheなuse case向けだし、f-stringの代わりにはなれないじゃん。stringじゃないし。input sanitizingにも不十分そう。pre-compiled statements/templates作れないし。" userName="bjourne" createdAt="2025-04-11T11:17:22" color="">}}

{{<matomeQuote body="SQL queriesとかHTMLとかでinjection attacksを防ぐのってnicheなuse caseなの？" userName="thayne" createdAt="2025-04-11T15:36:25" color="">}}

{{<matomeQuote body="そうだよ。しかもpre-compilationが必要だけど、t-stringはsupportしてないし。" userName="bjourne" createdAt="2025-04-11T18:02:14" color="">}}

{{<matomeQuote body="pre-compilationはいらないよ。値を後で渡すtemplateをcompileするって意味ならね。t-stringはlibraryが値にtransformationをかけられるようにするもの。escapingとか、parameterized queryにseparate valuesとして渡すとか。HTML escapingとかSQL queriesのparameterizingが最初のuse caseだよ。それってnicheじゃないと思う。user inputのsanitizeはめっちゃcommonだし、言語とlibraryが簡単にcorrectにできるようにするのは良いことだよ。[1]: Templateって名前が良くない。interpolated valueのintermediate representationなんだから。" userName="thayne" createdAt="2025-04-12T03:45:30" color="#ff5733">}}

{{<matomeQuote body="webがnicheってこと？web以外ではuntrusted inputがexecutable codeになる可能性はないからsanitationはいらないってことね。web developmentにはsafeでfastなtext-generation solutionを提供するtemplating libraryが2ダースもあるじゃん。t-stringより comprehensiveだよ。Pre-compilationっていうのは、templateをfirst compileして、then renderingするときにtemplateにvaluesをsupplyするってこと。t-stringがcreatedされた時にvaluesはboundされるから無理だね。" userName="bjourne" createdAt="2025-04-12T14:26:50" color="">}}

{{<matomeQuote body="たとえwebがnicheだとしても（そうは思わないけど）、inputがmaliciousじゃないって信じても（webじゃないapplicationでは必ずしもtrueじゃない）、special charactersがbugを引き起こす心配はあるよ。Web appsだけがdatabase使ったり、user inputを含むsyntaxでstring生成するわけじゃないし。<br>Compilingに関しては、t-stringは基本的にそうやって動くけど、python interpreterがcompilationするんだよ。t-stringをparseするとき、(byte)codeにcompileして、evaluatedされたときにscope内のexpressionsからTemplate objectを生成する。functionでt-stringをwrapして、parametersをargumentsとして取ればtemplateになるよ。＞two dozen templating libraries that offer much more comprehensive safe and fast text-generation solutions than what t-strings do”<br>t-stringがあればlibraryはsaferになるし（f-stringで誤ってinterpolateしなくなる）、fasterになるかも（python interpreterがstringをsplitする作業をするから）。t-stringはlibraryをreplaceするわけじゃなくて、betterにするんだよ。" userName="thayne" createdAt="2025-04-14T03:09:16" color="#45d325">}}

{{<matomeQuote body="マジ最高じゃん！f-strings大好きで、コード内の他の文字列補完全部f-stringsに置き換えたんだけど、評価を遅らせられないって重大な問題があったんだよね。<br>たとえば、＞template = ’Hello、{name}’<br>＞template.format(name=’Bob’)<br>＞’Hello、Bob’<br><br>みたいに書けるけど、今まではf-stringsのフォーマットをその場で評価せずに使う方法がなかったんだよね。<br>＞template = f’Hello、{name}’<br>＞Traceback (most recent call last):<br>＞  File ”<python-input-5>”、 line 1、 in <module><br>＞    template = f’Hello、{name}’<br>＞                         ^^<br>＞NameError: name ’name’ is not defined<br><br>f-stringsがほとんどどこでも使えるのに、str.formatも使わざるを得ない状況が地味にウザかったんだよね。" userName="kstrauser" createdAt="2025-04-10T20:45:07" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
