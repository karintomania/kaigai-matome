+++
date = '2025-04-23T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ！？知っておくとPythonがもっと楽しくなる、意外と知らない高度なテクニック集'
tags = ["Python", "プログラミング", "テクニック", "Tips", "開発"]
featureimage = 'thumbnails/purple2.jpg'
+++

> マジかよ！？知っておくとPythonがもっと楽しくなる、意外と知らない高度なテクニック集

引用元：[https://news.ycombinator.com/item?id=43769486](https://news.ycombinator.com/item?id=43769486)

{{<matomeQuote body="やあ、みんな！ブログの作者だよ！<br>まさか朝4時に自分の記事がHNのトップページに載ってるなんて思わなかったけど、まあ、そういうことだね！:D<br>イントロにも書いたけど、これはブログを始める1ヶ月前に書いた14個の短いツイートが元になってるんだ。ブログを立ち上げた時、「Pythonのナイスなテクニックを2週間かけて書いたんだから、最初の楽しい投稿として再利用してもいいんじゃない？」って思ったんだ。<br>だから流れがちょっと変に感じるかもしれない（プロキシプロパティはPythonの「機能」そのものではないっていう人もいるように）。その日クールだと思ったものを載せてただけなんだ。金曜日ならちょっとマニアックなもの、月曜日なら役立つものを探してたんだよね。シリーズ全体を改善してたのも理由の一つ。<br>タイトルも同じ。Pythonを仕事や趣味で書いてて面白いと思った14個の機能なんだ。高度じゃないって人もいるけど、まあそうだね！タイトルは5秒くらいで決めたんだ。" userName="edwardjxli" createdAt="2025-04-23T12:47:02" color="#ff5c5c">}}

{{<matomeQuote body="このテクニックは、多くの仕事で見たことのあるコードよりも高度だよ！初心者向けのコンテンツと、コアデベロッパーが書くようなニッチなコンテンツの中間にあるのがいいね。" userName="morkalork" createdAt="2025-04-23T13:46:21" color="#38d3d3">}}

{{<matomeQuote body="記事、すごく面白かったよ。要点がまとまってて、リストも充実してるし、例も分かりやすい。Pythonを20年書いてるけど、最近はこんなに面白い記事はなかなかないよ。すごいね。" userName="niyyou" createdAt="2025-04-23T12:54:16" color="#45d325">}}

{{<matomeQuote body="ブログに記事の背景がよく説明されてると思うよ。<br>でも、アイデアから投稿まで毎日やってたって聞いて驚いた。実行する前に1週間くらい準備すると思ってた。<br>いずれにしても、素晴らしい記事だよ。typingが多いとか、新しい機能が多すぎるとか、ニッチな解決策でコードを短くするのが好きとか、どう思っててもね。" userName="wodenokoto" createdAt="2025-04-25T05:11:03" color="#45d325">}}

{{<matomeQuote body="すごく良いね。ほとんどのPython開発者が何かを学べると思うよ。Pythonはすごく変わったね。あなたの例を見る限り、良くなってると思うよ。" userName="esafak" createdAt="2025-04-23T14:57:34" color="#ff5c5c">}}

{{<matomeQuote body="記事を書いてくれてありがとう。楽しく読ませてもらったよ。<br>トップページに載ってよかったね！（サーバーは大丈夫かな？）" userName="jay-barronville" createdAt="2025-04-23T13:16:21" color="">}}

{{<matomeQuote body="Pythonを15年書いてるけど、結構知らないことが多かったから、個人的にはかなり高度だと思うな。<br>getterとsetterがないのが残念！" userName="hsbauauvhabzb" createdAt="2025-04-23T12:54:23" color="#ff5c5c">}}

{{<matomeQuote body="Pythonを使うたびに、ロジックを作る上でのガードレールの少なさに惹かれる反面、自分のコードがPythonを使いこなせてない人のコードに見えるんじゃないかって不安になるんだよね。慣習や緩いルールが多いから。こういう記事を読むと、Pythonの奥深さに驚かされるし、変化の大きさに驚かされる。Goみたいに、数年後にdeprecatedになったり、時代遅れになったりしない安心感はないけど、知らないことがたくさんあるって分かってよかったよ。" userName="robviren" createdAt="2025-04-23T11:28:44" color="">}}

{{<matomeQuote body="Pythonには、自分でガードレールを再利用したり、構築したりできる機能がたくさんあるよ。<br>truthinessとfalsinessの概念はなくなってほしいけどね。あれのせいで嫌なバグがたくさん発生したし、数文字削れるだけだから、割に合わないよ。" userName="pydry" createdAt="2025-04-23T11:53:18" color="">}}

{{<matomeQuote body="truthinessとfalsinessはよく使う機能の一つだよ。``if not collection``はほとんどすべてのプロジェクトで何度も出てくる。" userName="Starlevel004" createdAt="2025-04-23T13:00:10" color="">}}

{{<matomeQuote body="マジでみんな使ってるよね。それがバグの原因になったりするんだよなー。例えばさ、ユーザーがテキストボックスに0を入れた時、プログラムが0を入れられた時と同じ反応をするんじゃなくて、値が何も入力されなかった時と同じ反応をしちゃうみたいな。<br>そうなるとシステムが想定外の動きをし始めてみんなパニックになるんだよね。" userName="pydry" createdAt="2025-04-23T14:36:51" color="">}}

{{<matomeQuote body="Pythonで長くプログラミングしてるといつか遭遇するよ。最初は気づきにくいかもね。<br>昔、Pythonのバグトラッカーに「if time_variable:」って書いて、真夜中に呼ばれた時だけfalseになるって人がいたんだよね。最初は対応しないってことになったらしいよ。<br>(真夜中がdatetimeの空文字列、0、空リストとかと同じ扱いだったんだって)" userName="pydry" createdAt="2025-04-23T16:03:40" color="#ff33a1">}}

{{<matomeQuote body="よくあるのは、JSONから来た文字列の値に対して、Noneかどうかを`if not s`でチェックする時に、空文字列もfalseになるってことに気づかないパターンだよね。" userName="int_19h" createdAt="2025-04-23T17:29:06" color="#785bff">}}

{{<matomeQuote body="マジかよ、この前書いたコードがバグってるかも。こういうクソ仕様があるからJSは避けてるんだよね。本当に最悪な便利機能だよ。<br>驚くような挙動なしにコードをコンパクトに、かつ読みやすく保つために、単項の”truthy”演算子が必要だわ。" userName="fc417fc802" createdAt="2025-04-23T20:19:39" color="">}}

{{<matomeQuote body="”truthy”演算子はbool()だよ。問題は空文字列がfalsyなこと。<br>個人的には、こういうテストのパターンに落ち着いた:<br>　# Noneのチェック<br>　if x is not None: ...<br><br>　# 空文字列のチェック<br>　if x != ””: ...<br><br>　# 文字列以外の空コレクションのチェック<br>　if not len(x): ...<br><br>最後のケースでは、0がfalsyであることを利用して、長さが特定の値と等しいかどうかをチェックするのとは区別してる。だから後でコードを読んでて”not len”って見たら、それが空チェックだってすぐわかるようにね。<br>もちろん、これは一貫してやってる場合に限るけど。言語がそれを強制しないし、Pythonの標準もないから、まだ危険は残るよね..." userName="int_19h" createdAt="2025-04-23T23:05:52" color="#ff5c5c">}}

{{<matomeQuote body="それってruffとかのチェッカーに追加して、頭ごなしに注意されるような、偏ったルールって感じがするな。ruffのカタログには、俺のミスを見つけるのに役立つtruthinessに関する意見がたくさんあるよ。" userName="fluidcruft" createdAt="2025-04-24T00:20:10" color="">}}

{{<matomeQuote body="bool( thing )は冗長すぎる。単項演算子があると嬉しい。<br>問題は空文字列がfalsyであることそのものではないと思う(個人的な好みじゃないかもしれないけど)。むしろ、暗黙的なboolへの型変換が問題だと思うんだよね。だから単項演算子が欲しい。<br>これは、暗黙的な型変換が悪いことの例として、また1つ追加されると思うよ。" userName="fc417fc802" createdAt="2025-04-24T02:09:19" color="#ff5733">}}

{{<matomeQuote body="＞I don't think the problem is that empty strings are falsy per say (although that might not be to your personal preference).<br>訂正させて。問題はfalsyであることそのものではなく、それがあまりにも多くの無関係なものとこの特性を共有していることだ。そして、これが動的型付けと組み合わさることで、与えられた`x`がそれらのどれにでもなり得る。<br>特にNone/''は、Pythonで値の欠如を報告する標準的な方法なので、非常に一般的。<br>そのようなチェックのための記号的な単項演算子を持つことについては、Python構文の全体的な雰囲気に反すると思う。つまり、”not”のようなものを明示的に書かなければならない言語だし、len()もLuaとは違って関数だ。このための最もPythonicなインターフェースは、記述的な名前を持つインスタンスプロパティとして提供することだと思う。" userName="int_19h" createdAt="2025-04-24T13:12:32" color="#ff33a1">}}

{{<matomeQuote body="マジかー、Pythonって機能が少なすぎてイライラするんだよね。コード書く量が増えるし、便利さもイマイチだし。AI補完がないとやってけないわ。古いコードと新しいコードが同じに見えるのは、言語が進歩してないからじゃん？Goは構造的型付けとジェネリクスをサポートしてるから、Goばっかり書いちゃうんだよね。Goだと循環インポートができないから、リファクタリングが必要になるのが面倒。Pythonは循環インポート推奨してないけど、回避策はいくらでもあるから楽だよ。TypeScriptの`import type`が欲しいなー。Pythonは言語の設計に縛られずに済むから気が楽なんだよね。" userName="mrj" createdAt="2025-04-23T14:31:48" color="">}}

{{<matomeQuote body="Pythonらしい書き方を勉強すれば、もっと楽しくなるよ。C++とかRust、JavaScriptみたいな書き方してる人が多いけど、それだとPythonの良さが活かせないんだよね。Pythonistaのやり方を参考にすれば、もっとPythonが好きになると思うよ。" userName="EasyMark" createdAt="2025-04-24T05:45:12" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="PythonはPythonらしく、Golang、Rust、TypeScriptはそれぞれの哲学とデザインで良いと思うなー。全部コード書くけど、最近のPythonにはちょっと不満があるんだよね。Pythonが人気になったのは、型チェックとかアノテーションのせいじゃないと思うし。なんか他の言語みたいになってきてる気がする。少数派なのはわかってるけど、たまにはこういう意見も言いたくなるんだよね。でも、最近の機能がまとまってて良い記事だったよ。SOの古い記事も参考になるかもね。" userName="tzury" createdAt="2025-04-23T13:04:28" color="">}}

{{<matomeQuote body="型チェックとかアノテーションは、Pythonが人気になった理由じゃないけど、あっても困らないよね。気軽に書くスクリプトに使う必要はないと思うけど、ライブラリ作ったり、大規模なコードベースをメンテするなら便利だよ。Pythonの内部でも使われてるし、多くの開発者は当たり前だと思ってるんじゃないかな。例えば、python-opencvは型がないから、マジで使いにくいんだよね。あと、SOのスレッド紹介してくれてありがとう！" userName="edwardjxli" createdAt="2025-04-23T13:34:26" color="#ff33a1">}}

{{<matomeQuote body="＞Pythonが人気になったのは、型チェックとかアノテーションのせいじゃない。“<br>Pythonが普及したのは、PHPと同じで、どこでも使えるし、初心者でもすぐにアプリが作れるからだよ。でも、新卒のエンジニアが作るプロトタイプに必要な機能と、100人のチームで開発するのに必要な機能は違うよね。Pythonは、大規模なバックエンドアプリから、Jupyterでデータ分析する人、デプロイメントスクリプトを書く人まで、いろんな人が使ってる。ちょっとしたスクリプトなら型チェックは不要だけど、大規模アプリなら使った方が良いに決まってる。" userName="mjr00" createdAt="2025-04-23T14:13:51" color="#45d325">}}

{{<matomeQuote body="良い記事だった。でも、新しい機能が増えすぎて、コードの意図がわかりにくくなってる気がするんだよね。IDEがないと、何が起きてるのか理解するのが難しい。どんどん複雑になってる感じ。新しい機能は便利だけど、PythonのZenに反してる部分もあると思う。シンプルでわかりやすく、効果的で実用的っていうPythonの良さが薄れてる気がする。" userName="kayo_20211030" createdAt="2025-04-23T14:28:46" color="">}}

{{<matomeQuote body="Pythonはずっとglue scriptとかbuildとかテストに使ってて最高だと思ってた。でも、大規模アプリには向かないと思ってたんだよね。動的なせいでバグが出やすくて、規模が大きくなると手に負えなくなる。型システムが入ってからは、考えが変わったよ。今は大規模なtooling codebaseがあるけど、型チェックのおかげでメンテしやすくなった。" userName="rkangel" createdAt="2025-04-24T09:01:26" color="#ff33a1">}}

{{<matomeQuote body="Guidoのバランス感覚は素晴らしいよね。型チェックとかアノテーションは使いたくなければ使わなくてもいいし。複雑なシステムで遊ぶときは便利だけど、完全にoptional。" userName="abirch" createdAt="2025-04-23T14:13:42" color="#ff33a1">}}

{{<matomeQuote body="教えてほしいんだけど、Pythonは動的型付けでmonkey patchし放題な言語で、型ヒントは完全に任意で使えるってことだよね？ハックし放題でmonkey patchも自由。Rustのborrow checkerもないし、型チェッカーも不要。アヒルさんだらけ。必須の機能とか、互換性のない変更はないよね？一体何が不満なの？" userName="froh" createdAt="2025-04-23T14:41:23" color="#ff33a1">}}

{{<matomeQuote body="完全にoptionalだよね。glue言語として使うとしても、typing annotationsを全く書かなくても、使うライブラリに型があればすごく便利だよ。build stepも増えないし、マジでfree。" userName="mardifoufs" createdAt="2025-04-23T17:11:19" color="#ff33a1">}}

{{<matomeQuote body="良いリストだね。知らなかったか、長年使っててみんな知ってると思ってたかって感じだよね。いくつか追加するよ。<br>* __init__.pyって最近は必須じゃないって知ってた？<br>* relative importsは”from ..other import foo”みたいにできるよ<br>* 3.13から@deprecated decoratorがあるよ。想像通りの動きをするよ<br>* 新しいジェネリクスの構文はメソッドや関数でも使えるよ。”def method[T](…)”めっちゃクール<br>* typeddictsでkwargsをタイプヒントしてアンパックできるよ。”def fn(*kwargs: Unpack[MyKwargs])”<br>* dataclassesとかpydanticはimmutable objectsをサポートしてるよ。”class MyModel(BaseModel, frozen=True)”とか”@dataclass(frozen=True)”でできる<br>* dataclassesとかのclass attributesは”MY_STATIC: ClassVar[int] = 42”で定義できるよ。これはabstract base classes(ABC)もサポートしてるよ<br>* TypeVarはsubtypeを強制するためのbindingをサポートしてるよ。”TypeVar[’T’, bound=X]”。3.13からはdefaultも指定できるよ。”TypeVar[’T’, bound=X, default=int]”<br>* @overloadは特にget()メソッドで、defaultがNoneじゃないならNoneを返さないってことを表現するのに便利<br>* Union[a, b]とかOptional[a]の代わりに”a | b”とか”a | None”って書けるようになったよ<br>* matchではassert_never()を使って、”case _:”ブロックで網羅的なマッチングを保証できるよ<br>* typingはreveal_type()を持ってて、mypyに型の推論結果を表示させられるよ<br>* typingの”Self”を使うと、クラスメソッドの戻り値の型をより適切にアノテートできるよ<br>* time packageはmonotonic clocksとか、time()以外の関数も持ってるよ<br>他に何か知ってる人いる？" userName="lyu07282" createdAt="2025-04-23T10:31:57" color="#45d325">}}

{{<matomeQuote body="＞ did you know __init__.py is optional nowadays?<br>＞”__init__.pyがなくても動くのは知ってる？”<br>影響はあるし、たいてい含める価値はあるよ。前は省略してたけど、今はデフォルトで含めるようにしてる。それに、”最近”って言うけど、もう13年くらい前だよ(<a href=”https://peps.python.org/pep-0420/”>https://peps.python.org/pep-0420/</a>)。<br>＞ since 3.13 there is a @deprecated decorator that does what you think it does<br>＞”3.13から@deprecated decoratorがあるって知ってた？”<br>良い発見だね。warnings standard libraryから来てるってことも言及する価値があるかも。<br>＞ the time package has functions for monotonic clocks and others not just time()<br>＞”time packageにはmonotonic clocksとか、time()以外の関数があるよ”<br>色々あるけど、どれくらいの人が必要としてるかは疑問だな。<br>それにしても、他の人がこういうリストを作ると、type annotationsのトリッキーな話がすごく多いのがいつも不思議。typing standard libraryが導入された時、その機能に懐疑的だったんだ。人々がそれがなぜか必要だと言い続けても、ますます警戒するようになったよ。" userName="zahlman" createdAt="2025-04-23T11:20:07" color="">}}

{{<matomeQuote body="＞ did you know __init__.py is optional nowadays?<br>＞”__init__.pyって最近は必須じゃないって知ってた？”<br>必須じゃないってわけじゃないよ。省略するとnamespace packageになるけど、たぶんそれは望んでないよね。<br>＞ TypeVar supports binding to enforce subtypes: “TypeVar[’T’, bound=X]”<br>＞”TypeVarはsubtypeを強制するためのbindingをサポートしてるよ。”TypeVar[’T’, bound=X]””<br>新しいジェネリクスの構文を使うとこうできるよ。<br>def method[T: X](…)" userName="globular-toast" createdAt="2025-04-23T16:52:20" color="">}}

{{<matomeQuote body="良い指摘だね！他に何か、みんなが知らないかもしれないと思うことはある？" userName="lyu07282" createdAt="2025-04-24T23:22:06" color="">}}

{{<matomeQuote body="これは”知らなかったこと”の素晴らしいリストで、自分のツールキットに追加するために目を通す価値があるよ。<br>もし本当に”advanced Python”に興味があるなら、Ramalhoの”Fluent Python”を勧めるよ。私は第一版を持ってるけど、async bitsも含めて、まだとても参考になるよ(coroutinesをasync syntaxに翻訳するだけ)。第二版はもっと新しいよ。<br>それから、standard libraryのfunctools[0]とitertools[1]モジュールもチェックするのを勧めるよ。docsを上から下まで読むだけでいいんだ。<br>それから、Python Data Model[2]の最初のいくつかのセクションを読んで、このページをブックマークしておくのも価値があるよ。<br>[0] <a href=”https://docs.python.org/3/library/functools.html”>https://docs.python.org/3/library/functools.html</a><br>[1] <a href=”https://docs.python.org/3/library/itertools.html”>https://docs.python.org/3/library/itertools.html</a><br>[2] <a href=”https://docs.python.org/3/reference/datamodel.html”>https://docs.python.org/3/reference/datamodel.html</a>" userName="globular-toast" createdAt="2025-04-23T09:18:24" color="#45d325">}}

{{<matomeQuote body="+1 to itertools特にね。めっちゃ強力だし、ドキュメントページの最後にあるレシピは最高だよ。<br>唯一の問題は、面接で、みんながitertoolsに慣れてないことが多いってこと。だから、彼らが想定してたよりもずっと短い時間でパズルを解いてしまって、彼らが想定してたロジックを手動で構築する必要がなくなっちゃうことがあるんだよね。" userName="sgarland" createdAt="2025-04-23T13:56:24" color="#785bff">}}

{{<matomeQuote body="＞ The only problem I’ve found is that for interviews, people often aren’t familiar with it, which can lead to you solving whatever puzzle they had in far less time than they intended, and without manually building whatever logic it was they assumed you would need.<br>＞”面接でitertoolsを使うと、想定より早く問題を解いてしまい、手動でロジックを組む必要がなくなることがある”<br>似たようなことが起きた私の好きな例は、数字の桁を反転させるように頼まれた時。ちょっと冗談めかして、10進数を想定してるかどうか尋ねたら、なんか変な顔をされたから、何かあるんだなってわかった。彼らは私の””.join(reversed(str(123456789)))”って答えに全く感銘を受けてなかったよ。私は仕事を得られなかった。" userName="globular-toast" createdAt="2025-04-23T15:29:03" color="">}}

{{<matomeQuote body="＞I didn't get the job.<br>＞”仕事を得られなかった。”<br>彼らの損失だね。算術的な解決策が必要だと期待するのは、Pythonのオーバーヘッドを受け入れるのと矛盾してるよ。もし私が覚えてる限りでは、あなたのアプローチは実際にはより速いはず。文字列変換は暗黙的にベアメタルでnumber-crunchesするけど、Pythonコードでの算術的なアプローチはそうじゃないからね。<br>彼らがその後intに変換することを望んでた場合を除いて。あるいは、スライシングトリックで文字列を反転させることを望んでいた場合（これは確かに、さらに少し速い）。" userName="zahlman" createdAt="2025-04-23T21:35:46" color="#45d325">}}

{{<matomeQuote body="Pythonの一番のメリットは、まるで実行可能な疑似コードみたいに感じられることだよね。言語が邪魔せずに、やりたいことに集中できる。だからプログラミング初心者でもPythonは使いやすいんだと思う。色々便利な機能が増えるのはいいけど、複雑になると魅力が薄れちゃう気がするな。確かに便利だけど、使いこなせる人ってそんなに多くないんじゃないかな。" userName="lordnacho" createdAt="2025-04-23T10:15:02" color="">}}

{{<matomeQuote body="それは違うんじゃないかな。「便利な機能」が増えても、元々の魅力がなくなるわけじゃないじゃん。自分でも言ってる通り、知らない機能は判断材料にならないし。もし知って嫌いなら、今まで通りに使えばいいだけだと思うけど。" userName="7bit" createdAt="2025-04-23T11:34:13" color="">}}

{{<matomeQuote body="＞もし知って嫌いなら、今まで通りに使えばいいだけだと思うけど。<br>それって、他の人が書いたコードに「便利な機能」が使われてたら成り立たないよね。" userName="pansa2" createdAt="2025-04-23T11:43:43" color="#ff33a1">}}

{{<matomeQuote body="Luaも同じような感じで、もっとシンプルなんだよね。コミュニティの多くはLua5.1を使い続けてるから、「進化」の心配も少ないし。もちろん、Luaは必要なものが全部入ってるわけじゃないから、外部ライブラリの「進化」問題はあるかもしれないけど、Penlightみたいなのはほとんど変わらないけどね。" userName="rainingmonkey" createdAt="2025-04-23T14:27:10" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="コレクションのabcコンテナを型アノテーションに含めたり、TypedDictで構造化された辞書を扱いやすくしたり、Counterの存在を毎回忘れてしまうのが嫌だなって思うくらいかな。walrus operatorを嫌う人もいるけど、良い使い道を見つけるまでは自分も嫌いだったんだよね。最近は厳密に型付けされたPythonを書くことが多いんだけど（これも最初は嫌いだった）、walrus operatorを使うとコードがすごくスッキリするんだよね。Optionals（もしくはNoneとのUnion）を扱うときに便利で、正規表現パターンを使うときによく使うよ。例えば「if (match := pattern.search(line)) is not None: print(match.group())」みたいな感じ。matchを条件式の前に書いてもいいけど、こっちの方がmatchの有効範囲が条件式の中だけだってことが分かりやすくて、他の場所で再利用しようとする誘惑が減るんだよね。あと、Pythonの機能じゃないけど、正規表現パターンで名前付きキャプチャグループをもっと使うようにしてほしいな。「.group(“prefix”)」の方が「.group(1)」よりずっと読みやすいし。" userName="addoo" createdAt="2025-04-23T14:44:08" color="#785bff">}}

{{<matomeQuote body="9.3のショートサーキット評価についてだけど、空文字列がある場合は評価が違うよね。if-else文は空文字列を有効な値として扱うけど、or演算子はNoneと同じように扱うよ。" userName="hiichbindermax" createdAt="2025-04-23T10:30:12" color="#ff5c5c">}}

{{<matomeQuote body="9.2についても同様で、walrus operatorを使った代入は、値が0（またはfalsyな値）の場合に失敗するよ。" userName="TACD" createdAt="2025-04-23T12:18:06" color="#ff5c5c">}}

{{<matomeQuote body="メタクラス以外のほとんどの機能は、高度な機能じゃないと思うな。シンプルだけど、あまり知られていないか、使われていない機能って感じ。メタクラスは複雑で、自分は避けてるよ。あと、「Proxy Properties」は機能というより、dunderメソッドの特定の使い方だよね。" userName="Loranubi" createdAt="2025-04-23T08:58:32" color="">}}

{{<matomeQuote body="シンプルだからって、基礎レベルとか初心者向けってわけじゃないんだよね。" userName="hsbauauvhabzb" createdAt="2025-04-23T12:58:06" color="">}}

{{<matomeQuote body="Javascript/TypescriptからPythonに転職してきた身としては、これはめっちゃ役に立つリソースだわ。いくつかポイントを紹介するね。<br>1. Typing overloads：TSにはtyped overloadsがあるけど、Javascriptの残念な機能のせいだと思う。経験上、これはアンチパターンか、せいぜいcode smell。使うならtech debtとして扱った方がいいかも。<br>2. Keyword-only and Positional-only Arguments：これは1つ目の機能と逆で、メソッドのシグネチャを厳密にする機能だけど、構文が難解すぎる。どこでも使いたいけど、可読性が心配。<br>3. Future Annotations：このセクション、マジ感謝。forward referencesでずっと苦労してたから。PEP 649に期待。<br>4. Generics：レガシーな3.10 codebaseで泣いてる。<br>5. Protocols：Typescript使いとしては、めっちゃ親近感わくけど、Pythonっぽくない。複雑な気持ち。<br>14. Metaclasses：<br>全角の＞もし君が1%の選ばれし者で、metaclassesしか解決できない問題を抱えているなら、これはPythonオブジェクトシステムの内部をいじれる強力なツールだ。<br>全角の＞または、自分の問題は特別だと思い込んで、単純な問題に魔法のようなオーバーエンジニアリングな解決策を適用するのが大好きなdevは、次に君のコードを継承する人を困らせるだろうね。codepathsを追跡するのがマジで大変になるからな。" userName="lucideer" createdAt="2025-04-23T13:55:00" color="#45d325">}}

{{<matomeQuote body="全角の＞5. Protocols：Typescript使いとしては、めっちゃ親近感わくけど、Pythonっぽくない。複雑な気持ち。”<br>いやいや、めっちゃPythonicじゃない？Pythonで最初に学ぶことの一つは「すべてはduck typed」ってことだけど、型システムは主にnominative typedじゃん。Protocolsは最初からあるべきだったと思うな、Typescriptのinterfacesみたいに。" userName="phailhaus" createdAt="2025-04-23T14:07:05" color="#45d325">}}

{{<matomeQuote body="そうかもね。Python初心者だから、何がPythonicなのか直感的に分からないんだよね（PEPsを一日中読んでるだけじゃ）。今の型システムを使ってると、nominative typesとstructural typesが共存してるのがちょっと違和感あるんだよね。" userName="lucideer" createdAt="2025-04-23T14:46:08" color="">}}

{{<matomeQuote body="これマジすごいし、知らなかったわ。<br>https:​/​/blog.edward-li.com/tech/advanced-python-features/​#2-…<br><br>   def bar(a, /, b):<br><br>       ...<br><br>   # == ALLOWED ==<br><br>   bar(1, 2)  # All positional<br><br>   bar(1, b=2)  # Half positional, half keyword<br><br>   # == NOT ALLOWED ==<br><br>   bar(a=1, b=2)  # Cannot use keyword for positional-only parameter" userName="djoldman" createdAt="2025-04-23T12:18:14" color="#ff5733">}}

{{<matomeQuote body="*を使えば逆もできるよ（これ以降の全てのパラメータはkeyword-onlyにする必要がある）。<br>https:​/​/docs.python.org/3.12/reference/compound_stmts.html#f…" userName="lordgrenville" createdAt="2025-04-23T12:26:33" color="">}}

{{<matomeQuote body="この機能、普段から使ってるしオススメだよ。例えば、boolean flagsを関数に渡すときに、名前で渡すようにすることで、call-siteでの意味を明確にできる。" userName="mckirk" createdAt="2025-04-23T13:29:51" color="#785bff">}}

{{<matomeQuote body="TFAのfor/elseのユースケースは納得できないな。<br>    for server in servers:<br>        if server.check_availability():<br>            primary_server = server  <br>            break<br>    else:<br>        primary_server = backup_server<br>    deploy_application(primary_server)<br><br>こうする方が短くない？<br>    primary_server = backup_server<br>    for server in servers:<br>        if server.check_availability():<br>            primary_server = server  <br>            break<br>    deploy_application(primary_server)" userName="TekMol" createdAt="2025-04-23T08:34:19" color="">}}

{{<matomeQuote body="これだとどう？<br>    for server in servers:<br>        if server.check_availability():<br>            primary_server = server  <br>            break<br>    else:<br>        logger.warning(“Cannot find a valid server”)  <---<br>        primary_server = backup_server<br>    deploy_application(primary_server)" userName="hk__2" createdAt="2025-04-23T10:03:40" color="">}}

{{<matomeQuote body="うん、それの方が良い例かもね。" userName="TekMol" createdAt="2025-04-23T11:12:29" color="">}}

{{<matomeQuote body="チームが関数型プログラミングの概念に慣れてるなら、これの方が良くない？<br>available_servers = (server for server in servers if server.check_availability())<br>primary_server = next(available_servers, backup_server)<br>deploy_application(primary_server)<br><br>こっちの方が読みやすいと思うんだよね（何をするかに注目できる）。" userName="paolosimone" createdAt="2025-04-23T12:02:57" color="#45d325">}}

{{<matomeQuote body="for/elseのメリットは可読性と書きやすさだと思うな。何もかも最初に準備する必要がないし。（デメリットは、基本構文に余計なものが増えることだけどね。）" userName="macleginn" createdAt="2025-04-23T08:38:26" color="">}}

{{<matomeQuote body="こういう検索処理はいろんな方法でできるから、抽象化する価値あるよね。例えばこんな感じ。<br>＞def first(candidates, predicate, default):<br>＞　try:<br>＞　　return next(c for c in candidates if predicate(c))<br>＞　except StopIteration:<br>＞　　return default<br><br>＞deploy_application(first(servers, Server.check_availability, backup_server))" userName="zahlman" createdAt="2025-04-23T11:09:48" color="#ff5733">}}

{{<matomeQuote body="`StopIteration`例外をキャッチする代わりに、`next`にデフォルト値を指定すればOK。<br>next((c for c in candidates if predicate(c)), default)" userName="nostoc" createdAt="2025-04-23T13:11:57" color="#ff5733">}}

{{<matomeQuote body="確かに。デフォルト値がいらないケースも考えて複雑にしすぎちゃったけど、もっと簡単にできたね。" userName="zahlman" createdAt="2025-04-23T17:26:00" color="">}}

{{<matomeQuote body="やったー、first()がmore_itertoolsに入ってる！" userName="sowhat25" createdAt="2025-04-23T11:30:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="`more_itertools`はPythonの標準ライブラリに入っててほしいものリストの常連だよね。（削りたいものリストの方がもっと長いけど。それは主に美学的な理由で、メンテの負担が大きいわけじゃないと思うけど。）<br>それなのに、必要な時に限って忘れちゃうんだよなぁ。" userName="zahlman" createdAt="2025-04-23T17:42:33" color="#ff5c5c">}}

{{<matomeQuote body="forループのelse句は良いよね。でも、ほとんどの人が知らないし、キーワードの`else:`がマジで紛らわしいんだよなー。いつも「no break:」って覚えちゃうわ。" userName="Loranubi" createdAt="2025-04-23T08:53:34" color="">}}

{{<matomeQuote body="それもやっぱり紛らわしいんだよねー。`else`が`break`に意味的にくっついてるのに、構文的にはループの本体にくっついてるのが問題なんだよ。それだと、ループの中身が実行されなかったときに実行されるみたいに見えちゃうじゃん？<br>俺的には、ループの最後に必ず実行されるブロックがある方が良いと思うんだよねー。キーワードは`finally`で、breakがあったかどうかを示すbooleanフラグを渡すとか。<br>もっと良いのは、`break`に引数を渡せるようにして、それを`finally`で受け取れるようにするとか。そしたらこんな風に書けるじゃん？" userName="int_19h" createdAt="2025-04-23T17:36:42" color="#ff5c5c">}}

{{<matomeQuote body="記事面白かったよー。Pythonの専門家ってわけじゃないんだけど、ほとんどの機能ってtypingモジュールの機能じゃん？特にGenericsとかProtocolsは、duck typingで良くね？って思っちゃった…。最近のproduction-levelなPythonコードって、型をめっちゃ使うの？duck typingってダサいの？" userName="William_BB" createdAt="2025-04-23T12:13:45" color="">}}

{{<matomeQuote body="Structural typingは、dynamic duck typingのstatic版みたいなもん。type checkerと相性が良いんだよね。記事に出てきたProtocolsは、inheritanceなしで使えるし。duckはSupportsQuack protocolの存在を知らなくても良いんだよ。quackって鳴けば、type checkを通るんだから。" userName="d0mine" createdAt="2025-04-23T13:13:14" color="#38d3d3">}}

{{<matomeQuote body="＞最近のproduction-levelなPythonコードって、型をめっちゃ使うの？<br>会社の中のコードは知らんけど、最近のopen source projectはtyping使ってるのが多い気がする。昔のprojectもtypingに移行してたりするし。<br>＞duck typingってダサいの？<br>そんなことないよ。Protocolsを使えば、duckにどんな形を期待するか定義できるし。abstract classesを使うかprotocolsを使うか、みたいな議論はあるけどね。" userName="maleldil" createdAt="2025-04-23T13:00:11" color="">}}

{{<matomeQuote body="MLの分野で仕事してるから、Python嫌いになれないんだよねー。でも、type system（3.12以前のやつね）にはマジで苦労させられたわ。3.12以降で、全てのlibraryが使えるようになるのが待ち遠しい。その経験から、TypeScriptのtype systemのありがたみが分かったわ。まさかそんなこと言う日が来るとは思わなかった。" userName="davnn" createdAt="2025-04-23T09:57:38" color="#ff5733">}}

{{<matomeQuote body="マジでイライラしたバグは、memory mapped CSC format sparse arraysを使ってたとき。arrayのindexをint64にしたかったから、初期化の時にそう指定したんだよね。でも、downstreamsの処理で、indexの値をみて、精度が落ちないと思ったらint32に動的にcastしちゃうんだよ。それがCで実装されたmoduleとのroundtripを完全にぶっ壊すんだよね。intermittentなbugだったから、マジで地獄だったわ。" userName="srean" createdAt="2025-04-23T10:20:48" color="#785bff">}}

{{<matomeQuote body="おーい、坊や…もっとヤバいの試したことある？マジでぶっ飛ぶやつがあるんだけど。ハマっちゃうぞ。<br>タイプにハマってることに気づいてないんだな？<br>光の方へおいで - Haskell!" userName="drumnerd" createdAt="2025-04-23T10:05:41" color="">}}

{{<matomeQuote body="10年試しても、dependent typesがないじゃん。Idrisを受け入れようぜ。<br>もしくは、logic + functional programming: Curryを受け入れよう。https://curry-language.org/" userName="hyperbrainer" createdAt="2025-04-23T11:41:36" color="">}}

{{<matomeQuote body="それな。自分でも中毒だってわかってるし。" userName="davnn" createdAt="2025-04-23T17:05:10" color="">}}

{{<matomeQuote body="わかる～。Pythonのtyping、TypeScriptと比べてマジで使いにくい。3.12以降でもね。Mypyの推論がアホすぎて`i: int = 0`みたいに書かないといけないし。`TypedDict`も最初は期待したけど、結局`cast`しまくりになる悪夢。TypeScriptの`unknown`が恋しい。" userName="hk__2" createdAt="2025-04-23T10:01:30" color="#38d3d3">}}

{{<matomeQuote body="Mypyは段階的な導入を想定して設計されたんだよ。`def f(i=0)`みたいに、`i`がfloatとかcomplexとかnumpyとか、どんな数値型でもあり得るPythonコードはたくさんあるし。これはダックタイピングって言うんだけど、型チェッカーが`i: int`って決めつけるのは良くないよね。Pyrightは新規プロジェクトか、既存プロジェクトを”修正”するのに時間をかければうまくいくかも。でも全然違うツールだし、Mypyのuse caseを理解せずに批判するのはナンセンス。" userName="globular-toast" createdAt="2025-04-23T11:17:30" color="#ff5c5c">}}

{{<matomeQuote body="`def f(i=0)`でiがnumber-likeな型になってくれたら嬉しいんだけど、現状は全く型付けされないんだよね。Mypyは`Any`型だと”推論”しちゃう。Pyrightも試したけど、おっしゃる通り既存プロジェクトだと”修正”にめっちゃ時間かかる。" userName="hk__2" createdAt="2025-04-23T11:48:19" color="#ff5c5c">}}

{{<matomeQuote body="astralの人たち（uv、ruff）のtype checkerが出るのを待ってる。Mypyは大規模プロジェクトだと不安定で遅いことが多いんだよね。" userName="NeutralForest" createdAt="2025-04-23T10:47:15" color="">}}

{{<matomeQuote body="pyright/pylance/basedpyrightをチェックしてみて。全体的に優秀なtype checkerだよ。TypeScriptの”unknown”もあるし（ちょっと違うけど）。" userName="davidatbu" createdAt="2025-04-23T10:35:32" color="#ff5c5c">}}

{{<matomeQuote body="dataclassみたいなものに対する特別なケースがまだあるんだね。Pythonの型チェック（Red Knotは試してないけど）で、TypeScriptのZod schema validationみたいな半ば魔法みたいなことができるとは思えないな。" userName="quotemstr" createdAt="2025-04-23T14:14:31" color="">}}

{{<matomeQuote body="マジそれ。PythonのtypingはTSに遠く及ばない。例に出てる件がそれを物語ってるよね。OPの具体的な懸念が(一部)pyrightで解消されるから言及した。" userName="davidatbu" createdAt="2025-04-23T15:40:14" color="#38d3d3">}}

{{<matomeQuote body="0はfloatにもなり得るから、numbers型にするのが妥当じゃない？" userName="drumnerd" createdAt="2025-04-23T10:06:29" color="">}}

{{<matomeQuote body="試してみて：<br>def f(i=0) -> None:<br>    reveal_type(i)<br><br>推論される型は`float`でも`int`でもなく`Any`だよ。Mypyは平気で`f(“some string”)`を許しちゃう。" userName="hk__2" createdAt="2025-04-23T10:14:07" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
