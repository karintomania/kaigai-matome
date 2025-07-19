+++
date = '2025-07-12T00:00:00'
months = '2025/07'
draft = false
title = 'New Date(wtf)の結果は？JavaScriptのDateクラスの知識を試そう！'
tags = ["JavaScript", "プログラミング", "Dateオブジェクト", "型システム", "言語設計"]
featureimage = 'thumbnails/purple7.jpg'
+++

> New Date(wtf)の結果は？JavaScriptのDateクラスの知識を試そう！

引用元：[https://news.ycombinator.com/item?id=44540241](https://news.ycombinator.com/item?id=44540241)




{{<matomeQuote body="JavaScriptをからかうとNodeが生まれてどこにでも現れるからやめとけって。前回そうしたらそうなったんだぜ。" userName="pluc" createdAt="2025/07/12 14:09:54" color="#45d325">}}




{{<matomeQuote body="TypeScriptは仕事で稼ぐなら一番いい言語じゃね？って思うんだよね。" userName="teaearlgraycold" createdAt="2025/07/12 18:12:43" color="">}}




{{<matomeQuote body="WATみたいな話は、未定義動作を技術の欠陥だと思ってた人たちが、技術の本質を理解してなかっただけだよ。<br>JSが全てのミスに対応できないからって馬鹿にするのは違うって。そういう視点が流行りすぎたんだよな。" userName="th0ma5" createdAt="2025/07/12 15:20:05" color="#785bff">}}




{{<matomeQuote body="みんな怒ってるのは、JSの動作が一貫性がなくて変なのに、「昔からそうだから」って理由で直さないことだよ。<br>Pythonだと`[] + {}`は型エラーになるのに、JSだと`[] + {}`はオブジェクトで`{} + []`は0になる。これって全然意味わかんねーじゃん！" userName="qsort" createdAt="2025/07/12 16:27:45" color="#38d3d3">}}




{{<matomeQuote body="`[] + {}`は文字列で、`{} + []`はパースの問題だろ。あの`{}`はコードブロックだよ。<br>変数に代入して試せばわかる。`+`演算子はプリミティブに働くから、`obj.toString() + array.toString()`になるだけだ。<br>パースは変だけど、JSの型強制への不満は、みんなが仕組みを学んでないだけじゃん？" userName="Izkata" createdAt="2025/07/12 17:32:22" color="#785bff">}}




{{<matomeQuote body="C#もちゃんと稼げるぞ。" userName="suprfnk" createdAt="2025/07/12 18:55:12" color="">}}




{{<matomeQuote body="どっちか好きなら、もう一方もきっと好きになるって。<br>ActionScriptもいいかもな ;P" userName="mock-possum" createdAt="2025/07/12 19:23:57" color="">}}




{{<matomeQuote body="みんなの不満は、型強制がそもそも存在することだよ。何の解決にもなってなくて、勝手に問題を生み出してる。<br>それとも、エラーを吐いたり未定義をそのままにしない方がいいって言いたいわけ？" userName="qsort" createdAt="2025/07/12 18:48:44" color="#45d325">}}




{{<matomeQuote body="JSが作られた頃はこれでよかったんだよ。未来の目線で批判されても仕方ないけど、当時の状況を考えればね。不満はわかるけどさ。" userName="th0ma5" createdAt="2025/07/12 20:28:11" color="">}}




{{<matomeQuote body="TypeScriptやC#が好きならDelphiやTurbo Pascalも好きになるかもな！全部アンダース・ヘルスバーグって人が作ったんだぜ。<br>https://en.wikipedia.org/wiki/Anders_Hejlsberg<br>https://news.ycombinator.com/item?id=19568681<br>「nullを言語に入れたのは10億ドルの過ちだよ。JSはnullとundefined両方あるから20億ドルの過ちだね。」ってアンダース・ヘルスバーグも言ってる。ホントに問題多い部分らしいよ。" userName="DonHopkins" createdAt="2025/07/13 08:48:35" color="#ff5c5c">}}




{{<matomeQuote body="JSってあれからどれだけ破壊的変更あったの？未来に進んだのに、なんでまだここにあるの？" userName="shakna" createdAt="2025/07/13 00:56:55" color="">}}




{{<matomeQuote body="”WAT”の皮肉についてだね。<br>今日のラッキーな10,000人向けにこれ！<br>https://www.destroyallsoftware.com/talks/wat (2012)" userName="fragmede" createdAt="2025/07/12 17:12:04" color="">}}




{{<matomeQuote body="JSってこれまでどんな破壊的変更があったの？めちゃくちゃ安定した言語じゃん。" userName="josephg" createdAt="2025/07/13 07:51:05" color="">}}




{{<matomeQuote body="物事がどう動くか熟知してても、それが全然うまく動かないとか、常識や期待に反するって意見を持つのは正当だよね。" userName="otterley" createdAt="2025/07/12 17:51:38" color="">}}




{{<matomeQuote body="人は君が何をしたか忘れても、どう感じさせたかは覚えてるもんさ。TSを使って何年も経つけど、JSであった問題の半分くらいは解決できなかった記憶があるな。制約がある中ではベストを尽くしたと思うけどね。この記事も良い例だよ。TSは根本的なAPIとか標準ライブラリは直せないからね。" userName="andai" createdAt="2025/07/13 12:03:17" color="#38d3d3">}}




{{<matomeQuote body="”言語にnullがあるのが一番好きじゃない、10億ドルの間違いだよ。JavaScriptにはnullとundefined両方あるから、20億ドルの間違いだね”<br>-Anders Hejlsberg<br>全部1の値をnullにできないのかな？例えば小さいintは0-255から0-254の範囲になるけど、すごく便利な特性が得られて、Nullableの余計なオーバーヘッドがないよ。符号付きintだと負と正の範囲が対称になるしね。" userName="dotancohen" createdAt="2025/07/13 12:22:45" color="#785bff">}}




{{<matomeQuote body="いやー、昔はそんな感じだったな、特にfp-tsとかeffectを見つけた時はね（どっちも金もらって書いたことないけど）。でも4年くらい経って、もう書くの疲れたわ。Nodeの標準ライブラリはひどいし、エコシステムもまあまあだけど最高じゃない。effectももう興味ないし。仕事ではGoも書いてて、あれもまあまあだけど、標準ライブラリは全然良いね。最近は自由時間にRustをいじってて気に入ってるんだ。良いFPの落とし所だと思う。Gleamも面白そうだね。でも君の言う通り、Rustで稼げる仕事は多くないだろうし、Gleamは実質ないだろうね。" userName="douglasisshiny" createdAt="2025/07/12 19:44:50" color="#ff5c5c">}}




{{<matomeQuote body="こいつは、このスタントで非生産的なシニシズムの波を一人で引き起こしたんだ。エブリシングベーグルに何も入ってないジョークみたいなもんで、単に笑いのために無限にケチをつけて業界全体の努力をけなしてるだけだよ。" userName="th0ma5" createdAt="2025/07/12 20:22:58" color="">}}




{{<matomeQuote body="TypeScriptがJavaScriptの標準ライブラリを直さないって言うけど、そりゃあ型システムなんだからしょうがないっしょ。" userName="teaearlgraycold" createdAt="2025/07/13 17:16:11" color="">}}




{{<matomeQuote body="JavaScriptってブラウザやNodeで年に一回は破壊的変更があるってこと。俺の野菜畑より早く腐るエコシステムなのに、もっとまともなシステムにできないもんかね？" userName="shakna" createdAt="2025/07/13 09:45:32" color="#785bff">}}




{{<matomeQuote body="リツイートのために文句言うのはどうかと思うけど、仕様外のことやって文句言う奴が何年もいたのは変だったわ。バグで落ち込むのはいいけど、みんなに機械を笑わせるって、理解とか知識に反してない？まあ、面白いっちゃ面白いけどね。" userName="th0ma5" createdAt="2025/07/12 20:35:58" color="">}}




{{<matomeQuote body="全くバカげてるな。コメディってのは認知的不協和が形になったもんだろ。面白くないわけがないよ。" userName="dcow" createdAt="2025/07/13 05:58:55" color="">}}




{{<matomeQuote body="TFA（元記事）ちゃんと読んだ？日付がちょっとでも理にかなってるなんて言える？" userName="dcow" createdAt="2025/07/13 05:50:04" color="#785bff">}}




{{<matomeQuote body="普通なら君に賛成だけど、「最高の言語」って言うなら批判は当然だろ。「最高の言語」ってのは、標準ライブラリも含めたエコシステム全体を指すはずだからさ。" userName="Atotalnoob" createdAt="2025/07/14 14:33:37" color="">}}




{{<matomeQuote body="まだ破壊的変更の例を何も出してないじゃん。古いWebサイトも問題なく動いてるし。もう一回聞くけど、JavaScriptってどんな破壊的変更があるの？何の話してんだよ？" userName="josephg" createdAt="2025/07/13 13:34:56" color="#ff33a1">}}




{{<matomeQuote body="これ、面白いクイズだね。驚きの挙動が多い。でも実用上は、ほとんど関係ないと思うよ。ユースケースがローカル時間を本当に気にするかよく考えて、UTC ISO 8601文字列とかUnixタイムスタンプを使うようにすれば、ほとんどの複雑さはなくなるか、ソフトウェアの小さな部分に収まる。いつもそうできるわけじゃないけど、大体の場合は複雑さを最小限に抑えられるはず。生の未検証ユーザー入力を日付パーサーに渡すのは間違ってるよ。" userName="mnahkies" createdAt="2025/07/12 10:28:00" color="#45d325">}}




{{<matomeQuote body="ユーザー入力を検証済み入力に変える正しい方法は、それを_パース_することなんだから、_日付パーサー_って言語機能に渡すのは全く妥当なことだよね。それが動かないってのは、JavaScriptプログラマーにとってはあんまり驚きじゃないだろうけどさ。" userName="JonChesterfield" createdAt="2025/07/12 11:40:29" color="">}}




{{<matomeQuote body="うん、これはもっともな意見だね。JavaScript標準ライブラリには、かなり限定的なパス以外では期待通りの挙動をしないと考えるのが前提だったよ。正直、他の言語で作業するときもそうしがち、たぶんJavaScript/TypeScriptをやりすぎたせいかも。バランスだけど、標準ライブラリを盲目的に信頼するより、自分で制御するコードで制約を明確にする方が安心感があるよね。" userName="mnahkies" createdAt="2025/07/12 12:07:27" color="">}}




{{<matomeQuote body="これはJavaScriptだけじゃないよ。C++ストリームI/Oを使って数字をパースする言語インタープリタを知ってるんだけど、C++が数字の構文を拡張した時に、一部のケースでインタープリタが壊れたんだ。すぐに気づけばそこまで悪くないけど、もし人々が新しくてドキュメント化されてない機能に頼り始めると、誰かを怒らせずに修正するのは不可能になることもあるね。" userName="masfuerte" createdAt="2025/07/12 14:03:02" color="#785bff">}}




{{<matomeQuote body="「UTC ISO 8601やUnixタイムスタンプだけ使え」って言う人は、日付の扱いが限定的だよ。未来の日付ではダメ。タイムゾーンやサマータイム変更があっても、「午後7時集合」は現地で午後7時なんだ。アプリによってはタイムゾーンのコンテキストが必要で、例えば予約はユーザーじゃなくレストランの現地時間で表示すべきだよね。GMT/UTCは万能薬じゃないし、過去の日付の問題にしか対処できない。現地時間とタイムゾーンを別に保存する価値はあると思うよ。" userName="mattmanser" createdAt="2025/07/12 17:27:55" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞ タイムゾーンが変わる時、国々はサマータイムが始まる時期を変更する、など。これは常に起こる。<br>タイムゾーンが変更される頻度には、初めて調べた時驚いたよ。単一の国にとってはめったにない大事件だろうけど、国際的には毎年何回も変更があるんだ。過去数十年では年に4〜6回くらいだったと思うよ。" userName="kapep" createdAt="2025/07/13 10:43:35" color="#785bff">}}




{{<matomeQuote body="IANAタイムゾーンデータベースは、関連情報が出てくると、たまに過去のルールを改訂するんだ。だから、ある歴史上の人物がUTCで何時何分に亡くなったって計算してても（文書化されたローカル時間に基づいてね）、実は不正確で、新しいルールで再計算してないから気づかないってこともあるんだよ。" userName="NoInkling" createdAt="2025/07/13 07:30:58" color="#45d325">}}




{{<matomeQuote body="PostgreSQLみたいなデータベースは、そもそもタイムゾーンを別に保存する必要があるんだから、スケジュール管理ではローカル時間とそれがスケジュールされたタイムゾーンを別々に保存しとくのがいいよ。" userName="whatevaa" createdAt="2025/07/16 19:26:54" color="#ff5c5c">}}




{{<matomeQuote body="他の言語だと、この手の問題はもっとまともなの？俺もこの手の地獄を味わったことあるんだ、しかもウェブアプリでね。でもこれって、GoとかRustとか他の言語でも同じくらいひどくない？（Cなんかは言うまでもなく！）NPMで見つかるものより、他の言語の方がもっと良いタイムゾーンAPIがあったりするの？この問題を扱いやすくしてくれるようなのがさ？" userName="josephg" createdAt="2025/07/13 07:56:28" color="">}}




{{<matomeQuote body="ElixirはDate、Time、NaiveDateTime、DateTimeって感じで日時をしっかり区別できるし、Timexライブラリも便利なんだよね。JavaScriptもライブラリはあるけど、結局はユーザーの現地時間とか特定タイムゾーンでの時間とか、細かく指定しなきゃダメ。夏時間とかあるから日付計算は複雑だし、存在しない日時ができちゃうこともあるんだ（Elixirはそこんとこ強いけどね）。" userName="taylorlunt" createdAt="2025/07/13 14:26:42" color="#38d3d3">}}




{{<matomeQuote body="Javaの日付時間APIは、業界でもかなり優秀というか、最高レベルじゃない？" userName="dingi" createdAt="2025/07/13 14:08:48" color="">}}




{{<matomeQuote body="レストランの現地時間で時刻を表示したいって話、わかる。ヨーロッパの鉄道時刻表とか予約サイトなんかは、結構この問題でやらかしてるよね。" userName="gpvos" createdAt="2025/07/12 19:23:11" color="">}}




{{<matomeQuote body="「未検証の入力を日付パーサーに渡すのはダメ」って意見、まさにそれ！<br>まともなAPIってのは、おかしかったらちゃんと「なんか変だよ」って教えてくれるべきなんだよな。<br>ちょっとでも間違ってたらきっちりエラーにして、適当に処理を続けないのが大事。JavaScriptのAPIって、とにかく処理を止めないように作られてるみたいだけど、それが根本的な問題。NaNとか、文字列の適当な型変換とか、本当に勘弁してほしいわ。" userName="alkonaut" createdAt="2025/07/13 08:45:47" color="#38d3d3">}}




{{<matomeQuote body="これ、マジ同意！<br>不慣れだとすぐ引っかかっちゃうワナだと思うわ。<br>このクイズで、たくさんの人がJavaScriptのDateクラスに詳しくなってくれたら嬉しいな。" userName="samwho" createdAt="2025/07/12 10:32:52" color="">}}




{{<matomeQuote body="そうそう、同意。DSTオフセットを指定するオプションとかあれば、たまに便利なのにな。<br>ExcelがCSVファイルでフォーマットを自動認識しないのが、いつも謎なんだよね。" userName="Hilift" createdAt="2025/07/12 12:54:57" color="">}}




{{<matomeQuote body="そのやり方じゃ動かないランダムな依存関係とか、依存関係のさらに依存関係に引っかからないことを祈るよ。" userName="croes" createdAt="2025/07/12 15:36:31" color="">}}




{{<matomeQuote body="「未検証の入力を日付パーサーに渡すのは間違い」って、ホントそれ！<br>俺もDateクラスをそんな風に使うなんて考えもしなかったよ。<br>挙動がマジ「wtf」だし、現地時間って超複雑だよね。でも、適当な文字列を渡して正しい時間が出てくるなんて、期待しないわ。" userName="lukan" createdAt="2025/07/12 11:09:39" color="">}}




{{<matomeQuote body="パーサーってのはさ、未知の値をパースするのが本来の仕事なんだよ。構造化されてない（たいてい文字列）データを、日付みたいな構造化されたものに変えるのが役目だろ？<br>それをエラー報告もしながら確実にできないなら、根本的に良いパーサーとは言えないね。<br>CSVとかXMLとか、制御できない「実際のデータ」にはエラーが含まれることがあるし、間違ったデータを取り込む代わりに、いつエラーが発生したかを知るのは超大事。自分でミスして、全然望まない変な挙動になったら、どこから来たのかデバッグしなきゃいけないし。<br>ユーザーが日付を入れて、それが正しいか知りたいのに、何を入力したか全然わからないなんてことも普通にあるんだから。" userName="arp242" createdAt="2025/07/12 20:30:13" color="#ff5733">}}




{{<matomeQuote body="パーサーってのは、無効な入力をちゃんと拒否すべきだよね。<br>適当な出力を作り出すもんじゃないんだからさ。" userName="colonwqbang" createdAt="2025/07/12 14:23:03" color="#38d3d3">}}




{{<matomeQuote body="理論的には分かるけど、JavaScriptとウェブじゃ不正な入力は当たり前で、ブラウザはなんか表示すべきだよね。ウェブがもっとマシに進化してたらって夢見るわ。" userName="lukan" createdAt="2025/07/12 15:16:48" color="">}}




{{<matomeQuote body="ユーザーが変な日付入れたら、-124年後の予約とか勝手に設定されんの？エラーで止めて再入力を促すんじゃなくてさ。ユーザー向けシステムで、こんなデタラメな日付が処理されるとかありえないでしょ。" userName="nilamo" createdAt="2025/07/12 15:36:28" color="#ff33a1">}}




{{<matomeQuote body="俺はユーザーから文字列で日付を受け取るフォームは作らないね。日付ピッカーがあるんだから、それ使って制限とかバリデーションすりゃいいじゃん。" userName="lukan" createdAt="2025/07/12 15:54:12" color="#ff5c5c">}}




{{<matomeQuote body="それでも入力のバリデーションは必要だぜ。フォーム以外からも変な入力が来る可能性あるしな。ブラウザの拡張機能とかユーザースクリプト、OSからだって壊れた入力が来ることがあるんだ。バックエンドにデータが保存される前にしっかりチェックしとくべきだろ。" userName="giantrobot" createdAt="2025/07/12 16:22:39" color="#38d3d3">}}




{{<matomeQuote body="だから「検証済み」って言ったんだよ。マン・イン・ザ・ミドル攻撃とかもあるし、バリデーションは重要度次第。でも、どんなに簡単なタスクでも、ユーザーの文字列を直接Dateに渡して、まともな値が返ってくるなんて期待しちゃダメだろ。" userName="lukan" createdAt="2025/07/12 21:59:56" color="">}}




{{<matomeQuote body="実際、ユーザー入力を直接Dateコンストラクタに突っ込むなんて、どの言語でもやんないでしょ。ユーザー向けのフォーマット決めて、入力検証して、それからDateオブジェクトに変換するのが普通。Dateコンストラクタの変な挙動なんて、実際のコードには大して関係ないってこと。" userName="hombre_fatal" createdAt="2025/07/12 15:57:37" color="#ff5733">}}




{{<matomeQuote body="めっちゃ驚きの連続！要は、Dateパーサーって、人間が納得しないような解釈でも、エラーを返せるのにそうしないで、入力から無理やり日付を見つけようと頑張るってことだね。もしかしたら、変なケースも実際のユースケースから来てるのかもだけど！" userName="schoen" createdAt="2025/07/12 09:26:51" color="">}}




{{<matomeQuote body="こんなの全部予測なんて無理だよ。ただのデタラメだろ。文字列の32-49は2000年代なのに、50以降は1900年代だし。もう燃やして作り直せって感じ。" userName="2muchcoffeeman" createdAt="2025/07/12 13:03:21" color="#ff33a1">}}




{{<matomeQuote body="朗報だぜ！新しいTemporal APIが来るぞ。他の言語の良いところ学んでて、マジで固いAPIだって評判だ。パースはRFC 9557（ISO 8601 / RFC 3339の拡張）形式だけ受け付けて、それ以外は全部エラーになるらしい。" userName="spiffytech" createdAt="2025/07/12 13:18:38" color="#785bff">}}




{{<matomeQuote body="残念ながら、クソな設計の部分はこれからも残り続けるだろうな。みんな後方互換性でギャーギャー言うからさ。" userName="zelphirkalt" createdAt="2025/07/12 15:10:45" color="#ff33a1">}}




{{<matomeQuote body="確かに、Dateクラスを使い続ける必要はないけど、結局使われちゃうんだよね。検索エンジンの古い情報のせいもあるし。でも、Temporal APIみたいな良いものも出てきてるから、まだマシかな！" userName="pavel_lishin" createdAt="2025/07/12 16:17:25" color="">}}




{{<matomeQuote body="いつものJavaScript批判みたいに、ほとんどの人はこんな使い方しないよ。たしかにDateコンストラクタはテキトーな文字列で変な動作するけど、ユーザー入力のパースに使わなきゃいいだけじゃん。データの構造をちゃんと知ってれば、何の問題もないって！" userName="notatoad" createdAt="2025/07/13 03:30:10" color="">}}




{{<matomeQuote body="それ、どっちも結構デカい条件じゃん。<br>1. コンストラクタを使わないって知っておくこと。<br>2. ユーザー入力について勝手に決めつけること。<br>どっちも最高ってわけにはいかないよね。" userName="wewtyflakes" createdAt="2025/07/13 06:13:52" color="">}}




{{<matomeQuote body="このクイズが最初の点に役立ってくれると嬉しいな :)" userName="samwho" createdAt="2025/07/13 08:33:10" color="">}}




{{<matomeQuote body="これはあんまり良い弁護じゃないと思うな。今、テキトーな文字列を頑張って処理するDateライブラリを新しく作るとしてさ。もし文字列が全部数字だと分かった場合、俺が指摘したあの例を常識的にするために、どんなロジックが必要になるわけ？" userName="2muchcoffeeman" createdAt="2025/07/13 09:12:45" color="">}}




{{<matomeQuote body="「テキトーな文字列を頑張って処理する」Dateライブラリなんて、なんで作るの？それは悪いアイデアだし、どんな実装を選んでもJavaScriptのDateコンストラクタみたいに変な妥協点に行き着くだけ。JavaScriptのデフォルトの選択は、きっとあなたが作るものと大差ないよ。Dateパーサーを書くなら、LLMを使う以外は、まず「テキトーな文字列を頑張って処理する」以上の良い定義を考えるべきだね。" userName="notatoad" createdAt="2025/07/13 19:16:35" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ユーザー入力のパースにコンストラクタを頼っちゃダメってさ。それって、ユーザーインターフェースを開発するためのプログラミング言語としては、かなり大きな欠点じゃん。" userName="bevr1337" createdAt="2025/07/13 14:30:59" color="">}}




{{<matomeQuote body="可能なら有効な答えを出すコードを書きたいっていう衝動はわかるよ。たいてい俺はそれを抑えられるんだけど、これらのデザイナーが抑えられなかったのは不思議だね。" userName="stevage" createdAt="2025/07/13 06:47:46" color="">}}




{{<matomeQuote body="これは中級開発者の呪いだね。ジュニアはエラーだらけで苦労する。中級は「とにかくエラーを減らす」って考えで、パーサーが親切すぎてDateクラスみたいな挙動になっちゃう。シニアはこの危険性を知ってて、堅牢で、無効な入力には早くエラーを出すような一貫性のあるクラスを設計するんだ。" userName="malux85" createdAt="2025/07/12 21:31:15" color="#45d325">}}




{{<matomeQuote body="28点中17点だったよ。ありがとう、これホントに呪われてるわ！Temporal API（https://developer.mozilla.org/en-US/docs/Web/JavaScript/Refe...）をチェックするには良い機会かもしれないね。" userName="norskeld" createdAt="2025/07/12 10:46:44" color="#785bff">}}




{{<matomeQuote body="彼らは本当に時間かけてるよね。最新の進捗報告はちょっと面白いよ。これね→https://github.com/tc39/notes/blob/HEAD/meetings/2024-07/jul..." userName="actinium226" createdAt="2025/07/12 12:32:27" color="#ff33a1">}}




{{<matomeQuote body="それ最新の進捗じゃないって！一番新しいのはここ→https://github.com/tc39/notes/blob/d5b5db6969359fad11b6898b7....早くしたいなら貢献すれば？V8はboa-dev/temporalを使おうとしてるらしいよ。" userName="bakkoting" createdAt="2025/07/12 16:39:58" color="#38d3d3">}}




{{<matomeQuote body="はは、あの冒頭は笑えるね。提案の遅さにはもう慣れたよ。Dateやタイムゾーン扱うのってマジで複雑なんだわ。JSのDateのパースもひどいけど、それ以上にカレンダーや時間の表現がそもそも複雑なんだよね。予約システムとか作りたくないわ〜。" userName="norskeld" createdAt="2025/07/12 19:48:17" color="#ff33a1">}}




{{<matomeQuote body="10/28か。悪くないね。これって実装によって違うんだって。MDNのここ見てみ→https://developer.mozilla.org/en-US/docs/Web/JavaScript/Refe..." userName="leipert" createdAt="2025/07/12 09:37:33" color="#45d325">}}




{{<matomeQuote body="17/28って、喜ぶべきか恥ずかしいか迷うな。なんでこんなの知ってんだろ？息子はJS Dateの経験なしで11/28で喜んでたよ。型強制を教えてあげたけど、ITの道に進むのを止めちゃったかもな。" userName="mcv" createdAt="2025/07/12 10:32:50" color="">}}




{{<matomeQuote body="JavaScriptのせいで20年間ITのキャリアから遠ざかってたわ。今でも放射性廃棄物みたいに避けてるね。" userName="corey_moncure" createdAt="2025/07/12 14:23:44" color="">}}




{{<matomeQuote body="その通り！だから、Nodeのバージョンとタイムゾーンを指定したって冒頭に書いておいたんだよ。両方とも重要だからね。" userName="samwho" createdAt="2025/07/12 09:44:26" color="#ff5c5c">}}




{{<matomeQuote body="V8のDateパーサーがWindowsに似てるって思ったけど、違うみたいね。<br>Firefoxで試したらChromeと結構違ったよ。Firefoxは厳しいな。<br>`new Date(”12.1”)`とか`”12.-1”`、`”maybe 1”`、`”fourth of may 2010”`、`”May 4 UTC”`、`”May 4 UTC+1”`、`”May 4 UTC+1:59”`全部FirefoxだとInvalid Dateだったわ。<br>Q24はFirefoxでもパースされるけど、正直されるべきじゃないと思う！" userName="zinekeller" createdAt="2025/07/12 10:20:10" color="#38d3d3">}}




{{<matomeQuote body="8年前くらいだとSafariのDSTとDateのバグはひどかった記憶があるな。Chromeでは不要なSafari専用のワークアラウンドが結構あったんだ。Appleも当時、DSTの問題抱えてたみたいだしね。iOSのアラーム時計の件→https://www.theguardian.com/technology/blog/2010/nov/01/ipho..." userName="mnahkies" createdAt="2025/07/12 10:59:28" color="#38d3d3">}}




{{<matomeQuote body="Vivaldiでいくつか試したけど、Firefoxほど厳格じゃないね。面白かったのは`new Date(”2025-07-12 12:30:45 BST”)`はInvalid Dateなのに、`GMT`、`UTC`、`Z`は有効で、しかもBritish Summer Timeとして解釈されることだったよ。" userName="JdeBP" createdAt="2025/07/12 11:30:32" color="#ff5c5c">}}




{{<matomeQuote body="うん、これは仕様に裏付けられてないみたいだね。クイズではNode（v8）の実装を使ったんだ。こんなにばらつきがあるのを見るのは面白いね！" userName="samwho" createdAt="2025/07/12 10:21:59" color="#ff5733">}}




{{<matomeQuote body="クイズの最初でさ、作者が自分のPCの正確なタイムゾーンを書いてたのに、それを見落として間違えちゃったよ。でも、始まる前にちゃんと具体的なことだって気づいてたんだから、わかってるべきだったって正直思ったわ。" userName="saghm" createdAt="2025/07/12 20:21:01" color="">}}




{{<matomeQuote body="これ、ひどいことしたんだけどさ、本当は関連する質問には免責事項を付けてたんだよね。でも、衝撃があった方がもっと面白いかなと思って削除しちゃったんだ。" userName="samwho" createdAt="2025/07/13 08:34:20" color="#38d3d3">}}




{{<matomeQuote body="これ、むしろ公平だったと思うよ！クイズのポイントって、こういう場合の挙動がどれだけ予想外かってことだろ？タイムゾーンに依存する挙動も、間違いなくその一部だね。" userName="saghm" createdAt="2025/07/13 20:45:56" color="#ff33a1">}}




{{<matomeQuote body="JSの日付ではISO文字列を使ってるよ、だって本当に罠だからね。(このクイズの最初の数問だけでもわかる通り)。人気あるMomentも色々ひどいし。『date』『time』『datetime』を混同してて、それがめちゃくちゃ問題になるんだ。『time』や『date』は存在すべきじゃないって説明聞いたけど、俺の経験とは意味的に合わないんだよな。" userName="the__alchemist" createdAt="2025/07/12 14:47:09" color="#785bff">}}




{{<matomeQuote body="うん、MomentとかLuxon、Day.jsみたいな人気ライブラリの多くは、異なる概念に単一のオブジェクトを使っちゃうっていう罪を犯してるよな。Absolute time、civil time？基本的に同じだろ？って感じで、両方無理やり押し込んでるんだ。" userName="NoInkling" createdAt="2025/07/13 07:45:29" color="#ff5c5c">}}




{{<matomeQuote body="JSのDateが今の仕様なのは理解できるんだけど、Moment、特にLuxonやDay.jsには言い訳の余地がないよ。Joda Timeなんて2005年からあるんだぜ？" userName="agos" createdAt="2025/07/13 08:17:46" color="#ff5c5c">}}




{{<matomeQuote body="僕のスコアは、たぶん2000年11月28日だと思う。" userName="saghm" createdAt="2025/07/12 16:54:03" color="">}}




{{<matomeQuote body="これ、めちゃくちゃ笑ったわ。" userName="samwho" createdAt="2025/07/12 17:40:24" color="">}}




{{<matomeQuote body="JSクイズはいつも笑えるから、ついクリックしちゃうんだよな。俺、10年以上JSプログラミングしてるけど、正規表現で確認しない限りDateを使って何かを解析するなんて怖くてやったことないわ。" userName="torlok" createdAt="2025/07/12 09:52:02" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
