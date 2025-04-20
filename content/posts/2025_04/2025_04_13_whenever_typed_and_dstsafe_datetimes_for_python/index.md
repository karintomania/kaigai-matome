+++
date = '2025-04-13T00:00:00'
months = '2025/04'
draft = false
title = 'Pythonの日付時刻処理で迷子になるな Wheneverで型安全とDST問題を解決'
tags = ["Python", "datetime", "型安全", "DST", "ライブラリ"]
featureimage = 'thumbnails/green2.jpg'
+++

> Pythonの日付時刻処理で迷子になるな Wheneverで型安全とDST問題を解決

引用元：[https://news.ycombinator.com/item?id=43671308](https://news.ycombinator.com/item?id=43671308)

{{<matomeQuote body="このライブラリの存在理由が書かれたブログ記事を読むのがおすすめだよ。「Ten Python datetime pitfalls, and what libraries are (not) doing about it」ってやつ。" userName="Hasnep" createdAt="2025-04-13T11:42:28" color="#ff33a1">}}

{{<matomeQuote body="https://dev.arie.bovenberg.net/blog/python-datetime-pitfalls... で、またしても考慮してなかったことが浮き彫りになったから、これを推すよ。<br>＞“https://infiniteundo.com/post/25326999628/falsehoods-program...　とか<br>https://news.ycombinator.com/item?id=4128208　も参考になるかもね”" userName="mdaniel" createdAt="2025-04-13T18:29:38" color="">}}

{{<matomeQuote body="当時HNで議論されてたね。<br>https://news.ycombinator.com/item?id=39417231<br>(147コメント)" userName="jwilk" createdAt="2025-04-13T15:47:09" color="">}}

{{<matomeQuote body="ベテランプログラマーだけど、datetimeオブジェクトを扱うときは、ユニットテストでできる限りのことをして、あとはエッジケースが適用されないことを祈るしかないんだよね。正直、内部の仕組みはよく分かってない。でも、LLMがバグを見つけてくれるかもしれないから、それはいいね。" userName="barbazoo" createdAt="2025-04-13T21:33:59" color="">}}

{{<matomeQuote body="めっちゃいい記事だね。" userName="JodieBenitez" createdAt="2025-04-13T13:36:02" color="#ff5c5c">}}

{{<matomeQuote body="標準ライブラリのLiskovの原則違反を解決してるのはいいね。標準ライブラリでは、dateは<で比較できるし、datetimeはdateの一種だけど、datetimeとdateを<で比較するとエラーになる。これが最近の仕事で悩みの種だったんだよね。この挙動のリスクを上回るメリットは何なんだろう。" userName="wesselbindt" createdAt="2025-04-13T09:53:57" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、同値性の比較はどうするの？" userName="OJFord" createdAt="2025-04-13T11:11:51" color="">}}

{{<matomeQuote body="著者はブログで、datetimeがdateを継承すべきではないことが問題だと書いてる。継承してるのに比較できないのは、問題をさらに悪化させて、隠れたバグを生み出す原因になってるんだよね。" userName="scott_w" createdAt="2025-04-13T14:09:43" color="#785bff">}}

{{<matomeQuote body="何を期待してるの？この挙動をどう処理するかはたくさん方法があるから、許可されてないのは当然じゃない？datetime.dateを取り出して比較する？すべてのdateは真夜中のdatetimeだと仮定する？" userName="heavenlyblue" createdAt="2025-04-13T10:50:21" color="">}}

{{<matomeQuote body="問題は、比較が有効であるべきかってことじゃなくて、datetimeがdateであるべきではないってこと。「has a」の関係がせいぜいで、「is a」の関係であるべきではない。" userName="MrJohz" createdAt="2025-04-13T11:11:28" color="#ff33a1">}}

{{<matomeQuote body="wesselbindtが言いたかったのは、datetimeがdateを継承すべきじゃないってことだと思うよ。" userName="pkkm" createdAt="2025-04-13T11:13:29" color="">}}

{{<matomeQuote body="Arrow、Delorean、Pendulumとか色々試して、結局Wheneverに落ち着いたんだ。自分がdatetimeでやりたいことに合ってるし、活発にメンテナンスされてるみたいだし。他のライブラリだと、なんかエッジケースを見落としてるんじゃないかって不安が常にあったんだよね。Pendulumは特にAPIにそれが組み込まれてる気がする。" userName="JimDabell" createdAt="2025-04-13T10:00:07" color="#785bff">}}

{{<matomeQuote body="業界全体で、日付/時間/カレンダーライブラリをチェックするためのテストスイートが必要だね。ブラウザのAcidテストみたいなやつ。<br>Whenever、ありがとう！でも名前が残念。Wheneverって全然気にしないみたいに聞こえるけど、使うのは気にする人だけだよ！Shakiraもいるし、笑。名前候補は、Timelyとかpreciseとかpunctualとか。あと、イミュータビリティについても書くべき。" userName="mixmastamyk" createdAt="2025-04-13T20:39:17" color="#ff33a1">}}

{{<matomeQuote body="皮肉でもなんでもなく、そういうテストスイートって一瞬しか有効じゃないと思うんだよね。タイムゾーンのルールって常に変わってるから。だから<https://www.iana.org/time-zones>とか<https://www.oracle.com/java/technologies/javase/tzupdater-re...>があるんだよ。つい最近も2025-03-22にアップデートがあったし。" userName="mdaniel" createdAt="2025-04-13T20:51:04" color="">}}

{{<matomeQuote body="それなら、型同士の互換性とか、操作の失敗とかを確認するユニットテストと、最新のルールDBを取得してテストする統合テストが必要だね。" userName="NeutralForest" createdAt="2025-04-13T21:09:18" color="#38d3d3">}}

{{<matomeQuote body="現実世界を考慮する必要があるんじゃないかな？それに、実際のタイムゾーンに依存しなくても、様々なタイムゾーン定義の組み合わせをテストできるし。" userName="mixmastamyk" createdAt="2025-04-13T20:59:45" color="">}}

{{<matomeQuote body="標準ライブラリにこだわって、ドキュメントと変更履歴を注意深く読んで、必要な機能を自分で実装してるのって俺だけ？<br>依存関係はプロジェクトを殺すって学んだから。もちろん、Wheneverが素晴らしいって言ってるし、使い道もあると思うよ！" userName="apeters" createdAt="2025-04-13T11:05:20" color="">}}

{{<matomeQuote body="＞標準ライブラリにこだわるって人に。<br>俺は医療関係で働いてるんだけど、「ドキュメントを注意深く読んで、自分で実装する」のと「依存関係を追加する」のどっちか選べって言われたら、毎回依存関係を選ぶよ。<br>datetimeライブラリに関しては、Wheneverに切り替えるよ。変換とか、naive/aware datetimeの混乱で何度も痛い目にあってるから。" userName="stavros" createdAt="2025-04-13T11:38:47" color="#45d325">}}

{{<matomeQuote body="Wheneverみたいなライブラリが、標準として採用されてほしいな。短期的にはトレードオフだけど。依存関係は時限爆弾になりうるし、標準ライブラリは正しくて直感的であるべきだけど、そうじゃないときは何か手を打たないといけない。<br>Tom Scott & Computerphileの10年前の動画：tzの狂気 <https://www.youtube.com/watch?v=-5wpm-gesOY>" userName="jethkl" createdAt="2025-04-13T13:10:13" color="#ff5733">}}

{{<matomeQuote body="Pythonの標準ライブラリって、Rustで書かれてる部分ある？Wheneverが標準として採用されるには、それが大きな障害になると思う。" userName="mark-r" createdAt="2025-04-13T14:07:33" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞医療関係で働いてるんだけど、”ドキュメントや変更履歴を注意深く読んで、自分で関数を実装する”のと、”余分なdependencyを追加する”のどっちか選べって言われたら、毎回dependencyの方を選ぶよ。<br>これってソフトウェアエンジニアリングの残念な現状を物語ってるよね。ドキュメントを読むのすら面倒くさがって、誰かがpackageにしてPyPIにuploadしたってだけで、packageを盲目的にinstallするんだもん。<br>dependencyを追加したからってドキュメントを読まなくていいってわけじゃないし、codeを信用する必要も出てくるから、さらに負担が増えるんだよ。標準libraryは、どんなサードパーティlibraryよりも厳重にテストされてるし、ドキュメントも充実してるんだから。" userName="globular-toast" createdAt="2025-04-13T12:55:39" color="">}}

{{<matomeQuote body="＞最初はlibraryを使わずに自分でcodeを書くって言ってたのに、それに対してreplyしたら、今度はlibraryじゃなくて標準libraryを使うって話になってるじゃん。もう水掛け論はしないよ。" userName="stavros" createdAt="2025-04-13T13:02:17" color="">}}

{{<matomeQuote body="君がreplyしてる相手は、スレッドを始めた人とは違う人だよ。僕はまた別の人。<br>それに、最初のpostは「標準libraryにこだわるのは僕だけ？」って問いかけから始まってるじゃん。言ってることは一貫してるよ。" userName="filoeleven" createdAt="2025-04-13T14:27:25" color="#38d3d3">}}

{{<matomeQuote body="記事に出てくるlibraryは、標準libraryのfootgunをいくつか取り除いてくれるんだよ。footgunは確かにあるし、標準libraryを使うなら、自分で取り除く（か避ける）必要がある。楽な方法なんてないんだから、自分で取り除く（codeのテストも必要）、避ける（常に思い出して引っかからないようにする）、別のlibraryを使う、のどれかしかない。<br>「dependencyを使う」か「標準libraryにあるものを使う」かの二択で、他のcodeは全部同じ、ってわけじゃないんだよ。もしそうなら、libraryを書く意味なんてないし、`datetime`より優れたものを提供できないでしょ。" userName="stavros" createdAt="2025-04-13T14:31:59" color="#ff5c5c">}}

{{<matomeQuote body="標準libraryのfootgunを学んだからこそ、僕はソフトウェアdeveloperなんだよ。できる限りサードパーティlibraryよりも標準libraryを使うようにしてる。恐れる理由がわからないな。自分の仕事を覚えればいいだけじゃん。" userName="ok_dad" createdAt="2025-04-13T20:41:41" color="">}}

{{<matomeQuote body="footgunに対する対策が「自分の仕事を覚えろ」っていうんだったら、悪いけど、君はあんまり良いソフトウェアdeveloperじゃないね。" userName="stavros" createdAt="2025-04-13T20:51:35" color="">}}

{{<matomeQuote body="君は僕のことをよく知ってると思って「自分の仕事を覚えろ」って言ってきたから、同じようなfeedbackにもopenだと思ったんだ。" userName="stavros" createdAt="2025-04-15T18:46:54" color="">}}

{{<matomeQuote body="＞ドキュメントを読むのすら面倒くさがって、誰かがpackageにしてPyPIにuploadしたってだけで、packageを盲目的にinstallするんだもん。<br>それって藁人形論法だよね。「盲目的」なんて誰も言ってないじゃん。dependencyを追加することのprosとconsを注意深く検討して、それが理にかなってるっていう結論に至ることもあるでしょ。PyPIpackageの多くはDebianのstable repositoriesにあるし、それを追加のbarrierとして使うこともできる。" userName="mr_mitm" createdAt="2025-04-13T12:57:48" color="#ff33a1">}}

{{<matomeQuote body="まあコメント^^の人は「ちゃんとドキュメントとか変更履歴を読んで自分で実装するか、それとも外部ライブラリに頼るか」の選択肢を言ってるんだよね。<br><br>コメント^はそれに答えてるわけで、追加のライブラリを使うのは「ドキュメントをちゃんと読む」ことの代わりになるってことだと思う。<br><br>ライブラリがどれだけ信用できるか、どれだけ使われてるか、ちゃんとメンテされてるかとかも大事だよね。それから、やってることがどれだけ重要かにもよると思う。例えば、もし扱うdatetimeが限定的なら、ドキュメントをそこまで気にしないかも。でも、めちゃくちゃなdatetimeデータを扱うなら、ちゃんと読みたいよね。あと、分野によっては「標準」って思われてるライブラリもあるし。Pythonでcsv読むならpandas使うでしょ。自分でcsvパーサー書かないじゃん。それに、標準ライブラリならコードも読みやすくなるし。まあ、そんなライブラリはごく一部だけどね。" userName="freehorse" createdAt="2025-04-13T13:49:58" color="">}}

{{<matomeQuote body="めっちゃ使われてて「標準」って思われてるライブラリが、全然使われてない「ごく一部」のライブラリってことある？" userName="akerl_" createdAt="2025-04-13T21:53:40" color="">}}

{{<matomeQuote body="コメントの意味がよくわかんないんだよね。pandasはデータフレーム扱うときにめっちゃ使う例として挙げたんだけど。pandasってそんなに使われてない？何が言いたいのか教えてほしい。" userName="freehorse" createdAt="2025-04-15T08:10:06" color="">}}

{{<matomeQuote body="datetimeライブラリには落とし穴がいっぱいあるんだよねー。<br>だからFlake8プラグインを使って、特にヤバい落とし穴を防いでるよ。<br>https://github.com/jkittner/flake8-ban-utcnow" userName="EdwardDiego" createdAt="2025-04-13T11:28:14" color="#785bff">}}

{{<matomeQuote body="マジで誰だよutcnowなんて関数作ったやつ！<br>マジでイライラするわー。" userName="raverbashing" createdAt="2025-04-13T13:17:03" color="#ff5c5c">}}

{{<matomeQuote body="utcnowはマジでクソ。<br>datetime.timezone.utc作ったときに直すべきだったのに、直さなかったし。<br>代わりにdatetime.datetime.now(datetime.timezone.utc)を使うのがオススメ。<br>utcnowは非推奨にして、最終的には削除すべき。" userName="mark-r" createdAt="2025-04-13T14:15:04" color="#785bff">}}

{{<matomeQuote body="datetime.UTCってのがあるの最近知ったんだけど、datetime.timezone.utcのエイリアスなんだって。<br>ちょっとだけ短くなるから便利だよ。<br>from datetime import datetime, UTC<br>datetime.now(UTC)" userName="jessekv" createdAt="2025-04-13T14:45:07" color="#45d325">}}

{{<matomeQuote body="少数派なんだね、きっと。俺もそう思うよ。uuidライブラリを拡張してUUIDv7を作ったんだけど、意外と簡単に実装できたんだよね。でも「追加のコードをメンテしたくない」って理由で却下された。bitshiftのABIが変わるわけないじゃん！" userName="sgarland" createdAt="2025-04-13T12:24:05" color="">}}

{{<matomeQuote body="イチから作ると、見えない負債が生まれるんだよね。特に日付とかタイムゾーンを扱う場合はね。" userName="xandrius" createdAt="2025-04-13T12:48:37" color="">}}

{{<matomeQuote body="日付/時間の基盤を自分で作って、DSTの変更とか国/タイムゾーンの変更に対応するとか、マジで考えられない。そんな時間ないわ。<br>もっとクレイジーなのは、文字コード変換を自分で実装することくらいだな。" userName="brookst" createdAt="2025-04-13T14:15:35" color="#38d3d3">}}

{{<matomeQuote body="アップデートが必要になった時に急に消えちゃうライブラリは、隠れた負債みたいなもんだよね。" userName="raverbashing" createdAt="2025-04-13T13:08:24" color="">}}

{{<matomeQuote body="サービスは消えるけど、ライブラリは劣化するか、自作のと同じくらい簡単に壊れると思うよ（プラットフォームが原因の場合）。自作のは1人でメンテするけど、ライブラリは100人以上が協力できる可能性あるし。俺なら絶対ライブラリ使うな。" userName="xandrius" createdAt="2025-04-13T14:20:53" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞ライブラリは劣化するか、自作のと同じくらい簡単に壊れる<br>それな。<br>＞自作のは1人でメンテ、ライブラリは100人以上が協力<br>100人も協力するライブラリなんてごく一部じゃん。ほとんどの場合、自分で修正することになるよ。dependencyのdependencyとか最悪。バージョン上げたら自分のコードが壊れるとか（Pythonだけじゃないかもだけど）。" userName="raverbashing" createdAt="2025-04-13T15:52:08" color="">}}

{{<matomeQuote body="なんで開発者って定期的にdependencyをアップデートしないの？信じられない。ちょっとずつアップデートすれば、後でまとめてアップデートする時の大変さを避けられるのに。dependency固定はマジでアンチパターンだと思う。ちゃんとアップデートしてるとこは、ソフトウェア開発のやり方も良い傾向にある気がする。" userName="no_wizard" createdAt="2025-04-13T20:01:37" color="#ff5733">}}

{{<matomeQuote body="dependencyアップデートに時間かけても、新しい機能は増えないからね。それに、アップデートって何か壊れるリスクあるし。dependency固定しないと、関係ないcommitが原因でコードが壊れて、デバッグがマジで大変になる可能性も。最新バージョンをすぐに入れるのも怖いし。月1～2回、アップデートに時間割くのが良い落としどころかな。" userName="crote" createdAt="2025-04-13T20:45:32" color="#45d325">}}

{{<matomeQuote body="dependencyのアップデートって1時間くらいで終わるよ？型チェックとかE2Eテストもやるから、壊れてない自信もてるし。minor/patch、majorって段階踏んでアップデートすれば、問題の場所も特定しやすいし。2週間おきくらいにやってるけど、他の作業に比べたら全然時間かからないよ。NPMだとマジ簡単。PythonだとPDMとかuv使ってる。" userName="MrJohz" createdAt="2025-04-14T04:27:45" color="#785bff">}}

{{<matomeQuote body="使ってるライブラリが全部semverをちゃんと守ってるとかマジ？こっちの地球じゃ、1.7.12から1.7.13に上げただけで何が起こるかマジで運ゲー。試してみて、エラーが出たら修正するしかない。package-Aとpackage-Fが仲悪いのが木曜の満月だけとか。" userName="mdaniel" createdAt="2025-04-13T20:46:01" color="#38d3d3">}}

{{<matomeQuote body="semverを完璧に守ってない場合もあるけど、うちはアップデートのインターバル決めてるよ。テストスイートが充実してるから、ほとんどの破損は自動で検出できるし。テストがしっかりしてれば、手作業は減らせる。だからdependencyの選択は慎重になるよね。ベストプラクティスに従ってれば、そんなに複雑じゃないと思う。" userName="no_wizard" createdAt="2025-04-13T21:07:11" color="#ff33a1">}}

{{<matomeQuote body="潰れるってほどじゃないけど、肥大化して技術的負債で動きが鈍くなることはあるよね。例えば、stdlibのDate API使って、moment.jsもdate-fnsも使うJSプロジェクトとか。lodash、ramdaとかのfunctional libraryもバラバラに使ってるとか。native fetchとaxiosをその時の気分で使ったり。コードレビューで無駄な時間取られる。" userName="ljm" createdAt="2025-04-13T14:27:21" color="">}}

{{<matomeQuote body="Dateの例は、難しい問題をきちんと解決する依存関係がどれだけ重要かを示す良い例かもね。Pythonのdatetimeライブラリがイマイチなら、Dateはマジでひどい。使うたびに後悔してるわ。結局、Dateでシンプルに済ませようとすると、ちゃんとした依存関係を使うよりも技術的負債が増えるんだよね。問題によっては、適切なツールを使うしかないってこと。DateのAPIとかPythonのdatetimeモジュールは、釘を締めるのにドライバーを使ってるようなもん。<br>他の例は、依存関係の使い方が下手なだけで、依存関係自体が悪いわけじゃないと思う。依存関係を入れるなら、ちゃんと考えて、価値があるか検討して、決定を記録して、一貫して使うべき。プロジェクトで依存関係がうまく使われてないからって、依存関係が全部ダメってわけじゃないよ。" userName="MrJohz" createdAt="2025-04-13T15:43:32" color="#ff5c5c">}}

{{<matomeQuote body="ラッキーなことに、JSにはTemporalが登場するから最高だね。Pythonにはまだそういうの無いけど。" userName="Gare" createdAt="2025-04-13T18:13:25" color="">}}

{{<matomeQuote body="まあ、この記事で紹介されてるライブラリがあるじゃん。<br>それにJSでも、Temporalが広く使えるようになるにはまだ時間がかかるよ（Firefoxでは数か月後には実装されるかもだけど、Safariではまだfeature flagが必要だし、Chromeではまだ実装されてないと思う）。それまでは、polyfillを使うのが理にかなってるよね。つまり、またライブラリ。<br>依存関係は賢く選ぶべきだけど、言いたいのは、依存関係を賢く使うことで技術的負債を減らせるってこと。標準ライブラリに入ってるからって、複雑なトピックに下手なアプローチをすると、後々問題になるよ。" userName="MrJohz" createdAt="2025-04-13T20:21:01" color="">}}

{{<matomeQuote body="みんなが言ってるように、stdlibには落とし穴がたくさんあるよね。<br>でも、俺もそう思うんだけど、それらの落とし穴を知って、うまく付き合っていくのが大事なんじゃないかな。<br>俺も君と同じで、そういう落とし穴を避けるために自分でコードを書く方が、新しい落とし穴やサブ依存関係を持ち込むライブラリを入れるよりも好きだな。" userName="mvanbaak" createdAt="2025-04-13T12:46:27" color="">}}

{{<matomeQuote body="つまり、君のプロジェクトは、独自の「lib」として、バラバラな時間関数を持つことになるんだね。しかも、小さなバグがあるかもしれない。それなら、ちゃんとテストされてメンテナンスされてるライブラリの方がいいな。" userName="matsemann" createdAt="2025-04-13T12:55:36" color="#ff5c5c">}}

{{<matomeQuote body="日付と時刻の関数に必要な「lib」なんて、あってないようなもんだよ。<br>まあ、ライブラリのメンテナーが作ったテストに頼るんじゃなくて、自分でコードパスのテストを作らないといけないけどね。" userName="mvanbaak" createdAt="2025-04-13T13:02:15" color="">}}

{{<matomeQuote body="それって簡単に直せるんじゃない？`whenever[pure]`としてリリースすればいいじゃん。コメントするよりissue書く方が時間かからないと思うよ。" userName="stavros" createdAt="2025-04-13T11:09:47" color="">}}

{{<matomeQuote body="作者です。issueでの長い議論をまとめると:<br>1. pure Pythonパッケージが大好き。Rustを強制されるべきではない。pure-Pythonのインストールをできるだけ簡単にしたい。<br>2. PyPiで名前を分けると（extrasの有無にかかわらず）、ライブラリがwheneverに依存するときに混乱が生じる：whenever-pyとwhenever-rustのどっちに依存すべき？片方がもう片方を「上書き」すると、さらに混乱する。<br>3. ほとんどのユーザーは「pip install whenever」して「高速」版を使い始めることを期待する。<br>俺としては、(3)と(2)が(1)よりも重要だから、(1)が少し面倒になるのは仕方ないと思ってる。<br>でも、何か見落としてるかもしれない。上記のissueを読んで、意見を追加してね。<br>edit：フォーマット" userName="ariebovenberg" createdAt="2025-04-13T15:47:35" color="#ff5c5c">}}

{{<matomeQuote body="1．Rust版って、本当に余計な手間をかけるほど速いの？ 実用的なコードで、ベンチマークだけじゃなくて本当に速いのかな？<br>2．`pip install whenever`でpure-Python版が入って、`pip install whenever-rust`でRustの追加機能が入るのが自然だと思うな。両方同時にインストールできて、pure-Python版がRust実装を検知して使えるようにするとか。" userName="Kwpolska" createdAt="2025-04-13T17:11:44" color="">}}

{{<matomeQuote body="psycopg[binary]みたいな感じで、Rustバイナリをextrasとして分離して、存在すればインポート（`whenever[binary]`でインストールした場合）するようにして、なければvanillaのPython版を使うってのはどうかな。具体的なことはよくわからんけど、アイデアとして。" userName="sirfz" createdAt="2025-04-13T20:17:30" color="">}}

{{<matomeQuote body="挙げられたライブラリは、ネイティブライブラリを使うメリットが大きいよね。だって、有名なライブラリをラップしてて、安全で機能も充実してるってわかってるし、パフォーマンスの向上も目に見える形でわかるし。でも今回は、ラップするRustライブラリがないし、日時ライブラリの性能がアプリ全体の性能に影響を与えるとは思えないな（カレンダーアプリとかは別かもだけど）。" userName="Kwpolska" createdAt="2025-04-13T19:58:46" color="">}}

{{<matomeQuote body="datetimeの処理は、特にパースやフォーマットでボトルネックになる可能性は十分あるよ。例えば、日付入りの巨大なcsvファイルをdataclassに変換するみたいな単純な処理でもね。<br>特に、cpythonのdatetimeのデフォルト実装はCモジュールだし(pure python版へのフォールバックあり)。<br>https://github.com/python/cpython/blob/main/Modules/_datetim...<br>このライブラリの場合に正当化されるかは別として、stdlibのdatetimeとパフォーマンスで競合したいなら、一部をコンパイルする必要があると思う。" userName="karlicoss" createdAt="2025-04-14T00:33:33" color="#ff5733">}}

{{<matomeQuote body="＞pure-Python版はソースからビルドする必要があって、特別なフラグを渡さないといけないから、requirements.txtには書けないよ。<br>requirements.txtにはどんなフラグでも書けるよ。別のtxtファイルをrequireするとか。でも、modernなpyproject.tomlのツールだと、dependenciesの配列に簡単には書けないかもね。" userName="OJFord" createdAt="2025-04-13T11:15:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="特別なフラグは環境変数だから、requirements.txtには書けないんだよ。<br>https://whenever.readthedocs.io/en/latest/faq.html#how-can-i..." userName="Kwpolska" createdAt="2025-04-13T11:32:39" color="">}}

{{<matomeQuote body="timezoneの混乱を解決する上で、timezoneを場所で表現するってことが大きな発見だったんだよね。”Pacific Standard Time”みたいな曖昧な言葉は避けて、”Vancouver/Canada”みたいな場所を指定するべき。そっちの方がみんなが期待する動きになるし、管轄区域がどんな時間に関する変な決定をしても対応できる。" userName="kelseydh" createdAt="2025-04-14T04:17:57" color="#45d325">}}

{{<matomeQuote body="俺の経験上、ちゃんとしたdate/timeライブラリは全部”tz database”のtimezone IDを使ってるよ。<br>https://en.wikipedia.org/wiki/Tz_database<br>ここのリストを検索してもさ:<br>https://en.wikipedia.org/wiki/List_of_tz_database_time_zones<br>”Pacific Standard Time”も”Vancouver/Canada”も見つからないけど、”America/Vancouver”はあるね。" userName="throwaway2037" createdAt="2025-04-14T04:34:35" color="">}}

{{<matomeQuote body="経験則として、何かが起こった時間を記録するならUTCを使って、将来の予定を立てるならローカル時間とtimezone名（例：`Europe/London`）を使う。" userName="JimDabell" createdAt="2025-04-14T07:47:30" color="#785bff">}}

{{<matomeQuote body="へー、Pandasの日時比較がないんだ。Pandasって一番日付扱ってそうなのに。意外。" userName="wodenokoto" createdAt="2025-04-13T10:52:27" color="">}}

{{<matomeQuote body="＞パフォーマンスが最優先じゃないなら、Pure Python版もあるよ。<br>だったらPure Python版のベンチマークも見たいよね。Arrowより遅かったら意味なくね？" userName="qwertox" createdAt="2025-04-13T13:42:00" color="">}}

{{<matomeQuote body="作者です。FAQに軽く書いてます。<br>＞ざっくりベンチマークだと、Pure Python版はRust版より10倍遅くて、標準ライブラリより5倍遅いけど、PendulumとArrowよりは（だいたい）速いよ。<br>Rust版は全部速いけどね。操作によって速度違うから”だいたい”。<br>ArrowやPendulumよりめっちゃ遅いってことはないよ。<br>時間できたらPure Python版の比較も追加するかも。" userName="ariebovenberg" createdAt="2025-04-13T15:58:23" color="#ff5733">}}

{{<matomeQuote body="ありがとうございます。FAQ読んでなくてごめんなさい。ライブラリ共有してくれて感謝です。" userName="qwertox" createdAt="2025-04-13T18:18:02" color="">}}

{{<matomeQuote body="いえいえ。READMEでPure Pythonに触れた後、ベンチマークグラフにいないのは不自然ですよね。" userName="ariebovenberg" createdAt="2025-04-13T18:41:15" color="">}}

{{<matomeQuote body="パフォーマンスが気になるのってどんな時だろ？datetimeって短命なオブジェクトだと思うんだけど。コード全体にdatetimeオブジェクトが散らばってるのは嫌だよね。<br>ほとんどUTCで十分でしょ。範囲でフィルタリングとか集計したい時にtz付きのdatetime使って、UTCに変換してintで比較すれば良いじゃん。<br>Wheneverが扱うのってdatetimeが長生きするケース？そんなの必要なくね？<br>クライアントからtz受け取ったら即UTC変換、どうしてもtzが必要なら別に保存すれば良いし（カレンダーとか）。" userName="vjerancrnjak" createdAt="2025-04-13T11:41:34" color="">}}

{{<matomeQuote body="カレンダー関連でしょ。タイムゾーン付きで保存する必要がある。特に繰り返しのイベント。<br>ランチがDSTで12時から1時に変わったら嫌じゃん。<br>サーバー関連のカレンダーは常に変換しまくる。将来のイベント変換は国のDSTが変わると変わるからUTCで長期保存できないし。" userName="crazygringo" createdAt="2025-04-13T15:37:34" color="#ff5c5c">}}

{{<matomeQuote body="ランチは日付じゃなくて時間でしょ。datetimeが短命ならどうしたいか決めるべき。<br>UTCじゃなくて時間で保存すれば良いじゃん。<br>カレンダーの標準は無視してるかも。datetimeライブラリの変なところをまとめた記事を読んだけど、タイムゾーン付きdatetimeが長生きすることを前提にしてる気がする。<br>ありえない時間でdatetimeを作るとか。" userName="vjerancrnjak" createdAt="2025-04-13T18:38:51" color="">}}

{{<matomeQuote body="毎週ランチは12時だよ。DSTのせいでランチの間隔時間が変わるんだよ。" userName="crazygringo" createdAt="2025-04-13T19:40:30" color="">}}

{{<matomeQuote body=" disagreementがよくわかんないんだけど、結局言ってることは相手と同じじゃね？つまり、予定は特定の時間にあることであって、DSTでズレる必要のある繰り返しdatetimeじゃないってことだよね。" userName="therealpygon" createdAt="2025-04-14T13:35:16" color="">}}

{{<matomeQuote body="何がわかんないのかマジでわかんないんだけど？<br>ランチが recurring なら、常に同じローカル時間だけど、DSTのせいでUTCは違うじゃん。計算するにはdatetimeが必要で、最初からtimeやUTCだけじゃダメ。そこんとこ、マジわかんない？" userName="crazygringo" createdAt="2025-04-14T13:54:25" color="#ff5733">}}

{{<matomeQuote body="ランチを recurring event とするなら、毎日12時（time）に発生するイベントって定義できるよね。<br>timezone無視して12時って表示したいんでしょ？<br>start_utcとend_utcの間のイベントを表示するなら、ローカルdatetime作ってUTCに変換してfrontendに送ればいいじゃん。<br>存在しない時間とかは別途対応が必要だけど、Wheneverがエラー出すのはgood。<br>＞Lunch as a recurring event in this particular setting is defined as a daily (recurrence type enum) event occurring at 12 (time).<br>＞You’ve also stated you want to ignore the timezone and display 12 in whatever tz.<br>＞So if my interface is all events between start_utc and end_utc I will construct local datetime and can convert it to UTC and send it to frontend.<br>＞The problem with hours that don’t exist in a tz/DST needs to be dealt with separately and given Whenever raises an error and datetime does not is good。" userName="vjerancrnjak" createdAt="2025-04-14T16:30:12" color="">}}

{{<matomeQuote body="マジで何言ってんのかわかんねー。<br>＞You’ve also stated you want to ignore the timezone and display 12 in whatever tz.　って言ってるけど、言ってないし。「timezoneと一緒に保存する必要がある」って言ってるじゃん。ランチは特定のtimezoneに属するに決まってるだろ。<br>＞Yet again, no need for long lived datetime.　って、どこからそんな話が出てくるんだよ。データベースに保存するんだから、カレンダーが2年先まで行くなら、datetimeは少なくとも2年は生きるだろ。<br>datetimeライブラリは必要ないって言いたいのか？意味不明。floating point numbersは必要ないって言うのと同じくらい意味不明。long-lived datetimesは、カレンダーとかスケジューリングでは普通に必要なものだろ。use caseがないって言うなら、もう知らん。" userName="crazygringo" createdAt="2025-04-14T17:15:59" color="#785bff">}}

{{<matomeQuote body="＞You don't want your scheduled lunch to move from 12 to 1 because it's DST.　だから、lunchを`datetime`として保存しない。`time`として保存して、表示するときにローカルdatetimeで12時になるようにする。RFC 5545を見てよ。日本からルーマニアに引っ越しても、12時として保存された`time`を表示すればいい。<br>recurring eventは、12時って情報だけでOK。`datetime`は役に立たない。workshiftの問題も同じ。<br>＞If my calendar goes 2 years in the future, these datetimes live for 2 years at least.　なんでrecurring eventを具現化するんだ？ベトナムからスペインに引っ越したら、lunchを全部スペイン時間に直すのか？それは間違い。<br>＞It sounds like you're arguing that datetime libraries don't need to exist.　誤解しないで。datetime-with-tzからUTCに変換して比較とかするのがおかしいと思ってるだけ。大量のdatetime-with-tzを保存する必要があるケースが想像できない。" userName="vjerancrnjak" createdAt="2025-04-14T23:01:05" color="">}}

{{<matomeQuote body="未来のdatetimeをoffset付きで保存しないとは言ってないよ。それってミスじゃない？って思ってるだけ。timezone付きのdatetimeを保存する人は、全部parseする必要があるから性能が必要だけど、そもそもそれが本当に必要なケースって少ない気がする。<br>RFC 5545はfloating timeを導入して、lunchがtimezoneに関係なく12時に表示されるようにしてるんだと思う。" userName="vjerancrnjak" createdAt="2025-04-15T19:05:24" color="">}}

{{<matomeQuote body="話は変わるけど、世界はDSTをなくすべき。今、日本でDSTのない生活を楽しんでるけど、世界中の人がこれくらいの敬意を公式な時計から受けるべきだと思う。" userName="snvzz" createdAt="2025-04-13T11:11:32" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
