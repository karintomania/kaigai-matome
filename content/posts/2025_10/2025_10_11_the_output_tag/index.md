+++
date = '2025-10-11T00:00:00'
months = '2025/10'
draft = false
title = '使いこなせてる？HTMLの<output>タグ、その実用性が議論の的に！'
tags = ["HTML", "Web標準", "フロントエンド", "ブラウザ互換性", "国際化"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> 使いこなせてる？HTMLの<output>タグ、その実用性が議論の的に！

引用元：[https://news.ycombinator.com/item?id=45547566](https://news.ycombinator.com/item?id=45547566)




{{<matomeQuote body="＜output＞タグってさ、使い道が限定的で、マジで半端なんだよね。＜input＞みたいに”type”属性があればもっと実用的になるはず。Sciterで試してみたんだけど、type=”text” (デフォルト)、”number” (ユーザーのロケールで数値フォーマット)、”currency” (通貨フォーマット)、”date” (日付)、”date-local” (ローカル日付)、”time” (時間)、”time-local” (ローカル時間) とか追加したら超便利だったよ。<br>これならサーバーがユーザーのロケールを知らなくてもデータを提供できるしね。" userName="c-smile" createdAt="2025/10/11 14:06:47" color="#ff33a1">}}




{{<matomeQuote body="ほとんどの提案には賛成だけどさ、サーバーがユーザーのロケールも知らないのに通貨の値を送るってどうなの？ブラウザが常に為替レートを見るためにサービスに問い合わせ続けるとでも思ってんの？" userName="zdragnar" createdAt="2025/10/11 14:24:30" color="">}}




{{<matomeQuote body="「半端で使い物にならない」って、2025年になってもこんな要素が多すぎるのは悲しいよね。かなりの部分でSafariのせいだと思う。<br>一番ひどい例は＜input type=”date”＞だよ。一応プロダクションレディってことになってるけど、ブラウザのバグが多すぎて、結局JSのデートピッカーを使った方がマシってのが気持ち悪いんだよな。" userName="Pikamander2" createdAt="2025/10/11 14:25:15" color="#38d3d3">}}




{{<matomeQuote body="為替レートがなんで必要なのか、ちょっとよく分からないな。<br>＜output type=”currency”＞は、”Intl.NumberFormat/style=currency”と同じ規約を使うんだよ: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Refe..." userName="c-smile" createdAt="2025/10/11 14:32:19" color="">}}




{{<matomeQuote body="キミは通貨のフォーマットについて話してるけど、相手は通貨の「値」について話してるんだよ。要するに、どっちも正しいってこと。<br>相手が正しいのは、通貨の値を表示するなら、それがどの通貨なのかを知る必要があるって点だよね。サーバーが値のロケールを知らないなんて、ありえない。<br>ただ、キミのコメントはその問題を避けて、数字そのものの表示方法に触れてる。だって結局値は数字だけど、ロケールで表示は違うからね。<br>だから、相手が聞いてるのは「サーバーはすでに通貨を知ってるはずなのに、適切に値をフォーマットすべきじゃないか？」ってことで、Webアプリでローカライズのフォーマットをどこでやるべきか、って話だよ。" userName="dclowd9901" createdAt="2025/10/11 14:49:34" color="#ff33a1">}}




{{<matomeQuote body="マジでそう！JSのデートピッカーじゃなくて、ネイティブの＜input type=date＞を使おうって言ってた時、自分がおかしいのかと思ってたよ。俺のスマホやMacでは設定なしで完璧に動いたのに、同僚のブラウザでは動かないって言われてさ。<br>結局、一貫性がないんだよな。それから一週間泣きながらJSデートピッカーをネイティブ並みに動かそうと頑張ったよ。" userName="abustamam" createdAt="2025/10/11 17:23:07" color="#785bff">}}




{{<matomeQuote body="でも、それでも＜span＞や＜div＞よりはマシだよね？今ほとんどの人がそれ使ってるじゃんか…" userName="DangerousPie" createdAt="2025/10/11 14:33:05" color="">}}




{{<matomeQuote body="その通り！USとドイツでピリオドとカンマが入れ替わる例を考えてみてくれ。<br>ユーロの価格を見てて、ブラウザが勝手に自分のロケールに数値を変換しちゃったら、価格が完全に曖昧になる。数値が変わったか確認するためだけにロケールを変更しないといけないなんて、情報が失われるだけじゃん。<br>もしブラウザがそんなフォーマットを適用しないなら、その数字はそのままその数字だ。それに、ブラウザが値を正しく解釈するために、元々のロケールを指定する必要があるんじゃないの？" userName="zdragnar" createdAt="2025/10/11 15:35:03" color="#ff5733">}}




{{<matomeQuote body="俺はこんなのがいいな。<br>＜output for=input＞<br> ＜!-- bring your own time-locale component --＞<br> ＜time is=time-locale datetime=2001-02-03＞2001-02-03＜/time＞<br> ＜/output＞<br><br>コンポーネントがロケールに応じて値を置き換える方式だ。HTML/CSSが偽のコンテンツをいじるのは良くないと思うんだよね。CSSの:before/:after擬似要素で挿入されたものをコピーしようとすると問題が起きるし、DOMの.innerTextと実際のテキストが違うのも困る。<br>こうしたことについて決定を下せないってわけじゃないけど、そういう決定をすると、単一の要素から専用のDSLが生まれちゃうよ。JSで変更可能なものを呼び出す代わりに、それがHTML処理の一部になって直接触れなくなるからね。" userName="its-summertime" createdAt="2025/10/11 15:06:22" color="#ff5c5c">}}




{{<matomeQuote body="`output`タグはJavaScriptのIntlを使えば簡単にコンテンツを埋められるよ。ほら、コードも書いておいたから見てみて。MDNのこのリンクも参考になるかもね：https://developer.mozilla.org/en-US/docs/Web/JavaScript/Refe..." userName="runarberg" createdAt="2025/10/11 14:40:27" color="#ff5c5c">}}




{{<matomeQuote body="支払いとか価格には特定の通貨があるんだよ。表示はen-AUとかen-USみたいなロケールで変わるけど、量と単位は同じ。通貨換算はまた別の話だから混同しちゃダメ。" userName="paulddraper" createdAt="2025/10/11 16:52:25" color="">}}




{{<matomeQuote body="通貨表示ってどうなってんの？ブラウザが勝手に為替レートを選んだりするなら、実際の取引じゃ信用できないよね。" userName="kortilla" createdAt="2025/10/11 16:48:42" color="">}}




{{<matomeQuote body="大体は同意だけど、ユーザーのロケールに合わせて日時を表示するなら例外にしたいな。アプリでそれ管理するより断然楽でしょ。" userName="SoftTalker" createdAt="2025/10/11 16:51:28" color="">}}




{{<matomeQuote body="ただフォーマットするだけなら、”number”タイプと何が違うんだろ？" userName="kortilla" createdAt="2025/10/11 16:50:20" color="">}}




{{<matomeQuote body="en-AUロケールでもAU$とかAUDって書いてほしいよ。何と取引してるか分からなくなるから。アメリカドルで変な経験したことあるし、グローバル経済の今、通貨はいつも明確にすべきだよね。" userName="skissane" createdAt="2025/10/12 04:12:18" color="#ff33a1">}}




{{<matomeQuote body="`div`とか`span`と違って、`output`はフォームの一部になるから、名前付きフォームアイテムとしてターゲットできるんだ。ほら、こんな感じで使えるよ。<br>`＜form id=”my-form”＞`<br>`  ＜input name=”number” type=”number”＞`<br>`  ＜output name=”result”＞＜/output＞`<br>`＜/form＞`<br>`＜script＞`<br>`  const myForm = document.getElementById(”my-form”);`<br>`  const inputField = document.elements.namedItem(”number”);`<br>`  const outputField = document.elements.namedItem(”result”);`<br>`  outputField.textContent = inputField.valueAsNumber ** 2;`<br>`＜/script＞`" userName="runarberg" createdAt="2025/10/11 14:49:23" color="#45d325">}}




{{<matomeQuote body="`＜output type=”currency”＞`はユーザー設定を使って出力フォーマットしてくれるんだよ。例えば`lang=”de-DE”`ってすれば特定の国の形式にできる。通貨換算はブラウザの役割じゃないからね。ここも見てみて：https://www.elevenforum.com/attachments/currency_format_cont..." userName="c-smile" createdAt="2025/10/11 15:57:47" color="#785bff">}}




{{<matomeQuote body="どんな意味で”better”なの？もしセマンティックな意味って言うなら、古くて使われてない`var`タグだって同じ意味で”better”って言えちゃうんじゃない？" userName="c-smile" createdAt="2025/10/11 14:39:22" color="">}}




{{<matomeQuote body="Ok、でも他のコメントで指摘されてる通り、為替レートを知らない状態でクライアントサイドで金額を別の通貨に変換するのは危険だし、意味がないことになりかねないよ。" userName="chrisweekly" createdAt="2025/10/11 15:32:52" color="#ff5c5c">}}




{{<matomeQuote body="え、どのブラウザがHTML5のdateフィールドをサポートしてないの？" userName="VladVladikoff" createdAt="2025/10/12 02:02:48" color="">}}




{{<matomeQuote body="UI要素ライブラリを使ったプロジェクトで、いつもdatepickerが一番面倒だったよ。モーダルに次ぐウザさだったな。" userName="Muromec" createdAt="2025/10/11 20:12:08" color="">}}




{{<matomeQuote body="誤解してるよ。outputタグはinputタグと対称じゃないから型を持たないんだ。ページ使ってる間に更新されるコンテンツのコンテナなんだよ。" userName="sto11z" createdAt="2025/10/11 19:14:04" color="#ff5c5c">}}




{{<matomeQuote body="そのセマンティクスが無料でアクセシビリティを高めてくれるんだ。" userName="samhh" createdAt="2025/10/11 18:29:56" color="">}}




{{<matomeQuote body="編集には遅いけど、記事のコードに間違いがあるよ。<br>document.elementsじゃなくてmyForm.elementsを使うべきだったね。例えば、inputFieldとoutputFieldの取得部分で修正が必要だよ。" userName="runarberg" createdAt="2025/10/12 00:34:48" color="#785bff">}}




{{<matomeQuote body="最初はめっちゃムカついて辛辣なコメント書こうと思ったんだけど、実際何してるか確認したら、ただの数値フォーマットだったね。ユーロ記号は追加されないんだ。もし追加されてたら、それはさすがにまずいアイデアだっただろうけど。" userName="Muromec" createdAt="2025/10/11 20:16:17" color="">}}




{{<matomeQuote body="もっと関連することだけど、アイルランドとドイツでは同じ通貨なのに小数点と桁区切り記号（あと通貨記号の位置）が入れ替わるよね。<br>€1,000.48は1.000,48€みたいに。" userName="TRiG_Ireland" createdAt="2025/10/11 16:13:13" color="#38d3d3">}}




{{<matomeQuote body="それはoutputタグとは全く別の問題だね。ユーザーアクションで内容が変わらないページの静的な部分でやりたいことだよ。HTMLにはIntl関連の要素に関する要望がたくさんあるし、いずれ追加されると思うな。" userName="spankalee" createdAt="2025/10/11 18:58:49" color="#38d3d3">}}




{{<matomeQuote body="記事と仕様書によれば、`＜output＞`タグはアプリの計算結果やユーザーの操作結果を表すんだね。コンテンツ変更用で、ARIAのセマンティクスが大事なんだって。中身は何でもOKで、日付は`＜time＞`タグが使える。数値フォーマットはまだだけど、Intlが出てから要望が多いみたい。<br>例: `＜output＞新しい日付は＜time datetime=”2025-10-11”＞10月11日＜/time＞＜/output＞`<br>結局、HTMLがタイプを表現できるんだから、`＜output＞`が全部やる必要はないってことだね。" userName="spankalee" createdAt="2025/10/11 18:55:12" color="#785bff">}}




{{<matomeQuote body="SafariとFirefoxっていつも対応が遅いよね。Chromeがゴリ押しする「標準」もあるけど、今回の`＜output＞`みたいにChrome登場前からあるようなものも、なかなか進まないんだよな。" userName="paradox460" createdAt="2025/10/11 21:09:08" color="">}}




{{<matomeQuote body="記事の「`＜output＞`タグ？ほとんど触ったことないし、存在すら知らない」ってのに激しく同意！TIL入りだわ。<br>GitHubでもほとんど使われてないってのは衝撃だよな。「誰も教えないから誰も使わない」ってフィードバックループ、まさにそれ！<br>LLMってコード生成する時、このタグちゃんと使うのかな？それとも、訓練が足りてないとか？" userName="redbell" createdAt="2025/10/11 12:55:41" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AIがドキュメントを読まないってのは、俺も心配してるよ。新しいW3Cの仕様が出ても、みんなが「Vibe Coding」してたらどうなるんだ？<br>AIが今の仕様を無視して古いコードパターンを吐き出し続けたら、仕様のアップデートや新規の仕様を広めるのが今よりずっと大変になるだろうね。" userName="mcdonje" createdAt="2025/10/11 13:52:58" color="#45d325">}}




{{<matomeQuote body="そもそもほとんどの奴はW3Cの仕様なんて気にしてないし、Vibe Codingならなおさらだよな。<br>結局、Reactのリリースノートが、みんなが一番重視してるWeb標準ってとこだろうな。" userName="Devasta" createdAt="2025/10/11 14:06:11" color="">}}




{{<matomeQuote body="別件だけど、俺、古いリポジトリにあったPDFツールを直そうとしたんだ。<br>LLMにやらせたら、ドキュメントを全部読めって主張するんだけど、そのドキュメントがひどく古くて、実際のプログラムと全然合ってなかったんだよ。<br>結果、めちゃくちゃになっちゃった。" userName="qingcharles" createdAt="2025/10/13 17:31:35" color="">}}




{{<matomeQuote body="そう、LLMはドキュメントを「読んでる」わけじゃないんだよな。<br>ドキュメントにある情報を繰り返すだけ。で、コードを合わせるために文字を入れ替えたりするんだ。" userName="nashashmi" createdAt="2025/10/11 13:58:36" color="">}}




{{<matomeQuote body="実はさ、俺が`＜output＞`タグを知ったきっかけは、Claudeが生成してくれたからなんだよ！" userName="didi_bear" createdAt="2025/10/11 14:24:19" color="">}}




{{<matomeQuote body="LLMは言語の仕様書を読むんじゃなくて、既存プロジェクトの膨大な学習データから統計的なパターンを見つけてコードを生成するんだよ。<br>だから、もし実際のコードでタグがあんまり使われてなかったら、LLMの出力でもほとんど出てこないってわけさ。" userName="lpln3452" createdAt="2025/10/11 15:05:45" color="#38d3d3">}}




{{<matomeQuote body="LLMって学習時になかった新しいツールも、情報を与えれば使えちゃうんだよね。AI開発モデルはプロンプトで公式ドキュメントを見に行かせれば、モデルが訓練された時になかったPython 3.14みたいなバージョンでもgetSpecification(’Python’,’3.14’)みたいなツール呼び出しで対応できるって話さ。" userName="EMM_386" createdAt="2025/10/12 04:21:12" color="">}}




{{<matomeQuote body="LLMって仕様書も学習してるんだよね。セマンティックHTMLについて尋ねてみて、どんな結果になるか試してみるのが楽しみだわ。" userName="Clamchop" createdAt="2025/10/11 16:52:59" color="">}}




{{<matomeQuote body="「2025年10月7日更新：一部のスクリーンリーダーが＜output＞タグの更新をアナウンスしないから、しばらくは＜output role=”status”＞みたいにrole属性を強調する価値があるかも」だって。ほとんど使われてない17年前のタグのサポート改善を待つって？ありえないでしょ。" userName="NoahZuniga" createdAt="2025/10/11 09:26:18" color="#ff5c5c">}}




{{<matomeQuote body="Windowsを使ってるなら、NVDAのリポジトリでチケットを切るのがすごく効果的だよ。もちろん、彼らが有効だと判断してくれればだけどね。<br>https://github.com/nvaccess/nvda" userName="egeozcan" createdAt="2025/10/11 10:52:31" color="#ff5c5c">}}




{{<matomeQuote body="17年間も標準だったタグを無視するスクリーンリーダーの使い勝手を良くするって？<br>どう考えてもスクリーンリーダー側の問題だよ、これは。" userName="croes" createdAt="2025/10/11 10:05:48" color="#38d3d3">}}




{{<matomeQuote body="ARIAロールを追加して問題が解決するなら、スクリーンリーダーのせいじゃないよ。ブラウザがセマンティクスをちゃんと公開してないんだ（明示的に指示しない限り）。本当に誰が悪いのか知らないのに、安易に「あいつが悪い」って決めつけないでほしいな。" userName="wizzwizz4" createdAt="2025/10/11 12:46:59" color="#785bff">}}




{{<matomeQuote body="＜output＞タグは暗黙的にaria-role=”status”を持ってるんだ。だから、それをサポートしないスクリーンリーダーに100％責任があるね。<br>https://developer.mozilla.org/en-US/docs/Web/Accessibility/A..." userName="cluckindan" createdAt="2025/10/11 12:52:28" color="#ff33a1">}}




{{<matomeQuote body="もしスクリーンリーダーのせいなら、暗黙的なロールを明示しても問題は解決しないはずだよね。暗黙的なARIAロールを実装して公開するのはWebブラウザの責任なんだ（https://www.w3.org/TR/html-aam-1.0/#mapping-html-to-accessib... を見て）。スクリーンリーダーは通常HTMLを直接読み上げない、モニターがCSSを読み上げないのと同じことさ。" userName="wizzwizz4" createdAt="2025/10/11 13:01:06" color="#785bff">}}




{{<matomeQuote body="もしそれが本当なら、どのスクリーンリーダーも動かなくなるはずだけど、実際はそうじゃないよね。" userName="cluckindan" createdAt="2025/10/11 13:04:56" color="">}}




{{<matomeQuote body="スクリーンリーダー使ったことある？僕が説明したモデル通りの失敗がたくさんあるんだ。例えばWindows Narratorで、定義リストがFirefox、Chrome、Edge、Edge-in-IE-mode間でどう公開されるかの違いを見てみてよ。" userName="wizzwizz4" createdAt="2025/10/11 13:08:40" color="#785bff">}}




{{<matomeQuote body="そうそう、スクリーンリーダーって特定のブラウザと相性あるよね。でも記事にはその話が出てないんだよなー。" userName="cluckindan" createdAt="2025/10/11 13:15:08" color="">}}




{{<matomeQuote body="スクリーンリーダー使いとして、aria live regionsとoutputタグは失敗作だと思うな。document.speak(text, priority)みたいなメソッドが欲しかった。現在のaria live regionsは3つのアンチパターンを助長してるんだ。<br>1. 「変わったらすぐ知らせるべき」ってやつ。株価ティッカーみたいにずっと変わるとウザい。<br>2. 同じメッセージが2回出ても、2回目がアナウンスされない問題。電卓で0が2回とかね。<br>3. outputタグの誤用。ターミナルやチャットみたいに追記する用途で使うと、毎回全体が読み上げられちゃうんだよな。" userName="miki123211" createdAt="2025/10/13 08:37:21" color="#45d325">}}




{{<matomeQuote body="実用的なフィードバックありがとう！すごく参考になったよ。" userName="lelandfe" createdAt="2025/10/15 16:45:57" color="">}}




{{<matomeQuote body="セマンティックHTMLなんて初心者の罠だよ。aria-liveみたいにちゃんと動いてブラウザが期待してるものを使えって。デベロッパーなら、既存のツールとエコシステムでユーザーのために機能するものをちゃんと作る責任があるだろ？広く使われてないセマンティックHTMLタグなんて使うなよ。" userName="mgraczyk" createdAt="2025/10/11 19:27:05" color="#ff5c5c">}}




{{<matomeQuote body="記事に『2008年から仕様にあるからブラウザもスクリーンリーダーもバッチリ対応してるし、ReactとかVueのJavaScriptフレームワークとも相性良い』って書いてあるじゃん。なのに、何でそれが『動かないもの』って思うわけ？" userName="niek_pas" createdAt="2025/10/12 10:30:59" color="#ff5c5c">}}




{{<matomeQuote body="追記: 2025年10月7日: 一部のスクリーンリーダーはタグの更新をアナウンスしないことがわかったって。" userName="lol768" createdAt="2025/10/12 20:01:11" color="">}}




{{<matomeQuote body="『セマンティックHTMLは初心者の罠、aria-liveみたいに動くものだけ使え』って言うけど、HTMLはブラウザだけのもんじゃないぜ。俺はepubの仕事をたくさんやってるんだけど、セマンティックなページは全てを簡単にして、もっと良くしてくれるんだ。" userName="NoMoreNicksLeft" createdAt="2025/10/11 23:37:43" color="#38d3d3">}}




{{<matomeQuote body="＜label＞や＜output＞にはfor=””属性があるって記事にあるけど、これで結果が依存する＜input＞要素のIDを並べるんだって。スクリーンリーダーユーザーとして、これって意味ある？ネットでは滅多に見ないからユーザーは慣れてないかもだけど、ソフトウェアのUX次第なのかな。" userName="lelandfe" createdAt="2025/10/11 09:48:44" color="">}}




{{<matomeQuote body="スクリーンリーダーユーザーじゃないけど、テストでよく使った経験から言うと、outputタグのfor属性が支援技術に意味ある形で伝わるか怪しいな。それより、＜label for=”output”＞Total＜/label＞<br>＜output id=”output”＞£123.45＜/output＞みたいに、output自体をラベル付けする方がずっと役に立つはず。『合計、123.45ポンド』って感じで、意味不明な数字が読み上げられるよりずっと良いだろ？" userName="WickyNilliams" createdAt="2025/10/11 12:50:34" color="#38d3d3">}}




{{<matomeQuote body="静的な場合はスクリーンリーダーと問題なく動くよ。outputタグのforプロパティは動的な値を扱うのに役立って、要素にリアクティビティを加えてくれるんだ。あまり使わないから仕組みは詳しくないけど、スクリーンリーダーは値が更新されたのをちゃんと検知してくれるよ。これはスクリーンリーダーでのテストに便利だし、ちゃんと仕様へのリンクもあるよ。<br>https://stevefaulkner.github.io/AT-browser-tests/test-files/..." userName="skeeter2020" createdAt="2025/10/11 13:33:43" color="#45d325">}}




{{<matomeQuote body="スクリーンリーダーって、HTMLの凝った機能（残念ながら基本的なやつもだけど）をちゃんとサポートしてないことが多いんだよね。ブラウザがアクセシビリティツリーで関連付けたとしても、スクリーンリーダーがそれを読み上げてくれるかは別問題。`output`タグも、まともにサポートされてるか怪しいと思うな。違うって言われたら嬉しいけどさ！" userName="WickyNilliams" createdAt="2025/10/11 14:25:05" color="#785bff">}}




{{<matomeQuote body="フロントエンドのウェブアクセシビリティに関するコースをいくつもやったけど、なぜか`output`タグには一度も遭遇しなかったんだ。こんな素晴らしい情報をシェアしてくれて本当にありがとう！" userName="ty_2k" createdAt="2025/10/11 15:19:45" color="">}}




{{<matomeQuote body="この記事、`output`タグが間違って使われてるんだろうなって思って読んだんだけど、良い意味で期待を裏切られたよ :-)（正直、冒頭の怪しいGenAI電卓の画像を見て、記事もダメかと思ったけど、その後の内容がすごく良かったから驚きもひとしおだった。読み終わったら画像のことなんてすっかり忘れてたけどね。）" userName="chrismorgan" createdAt="2025/10/11 08:59:09" color="#38d3d3">}}




{{<matomeQuote body="この怪しいGenAI電卓、面白いね…。足し算、掛け算、割り算しかできないのか。引き算はダメなんだってさ！" userName="aruggirello" createdAt="2025/10/11 11:03:33" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞ あの怪しいGenAI電卓画像<br>AIが登場する前は、もっと怪しい画像を自分で作ってたことを、人間はもう忘れちゃってるみたいだね。AIのおかげで、そこまで恥ずかしくない画像を投稿できるようになったのに。個人的には、この画像には怪しいヴィンテージテックの魅力がたっぷりあると思うんだ。AIの利用がいつもプロのアーティストを置き換えるわけじゃないってね。" userName="Nevermark" createdAt="2025/10/11 09:58:02" color="">}}




{{<matomeQuote body="＞ AIの利用がいつもプロのアーティストを置き換えるわけじゃない。<br>いや、それって「普通のこと」にしちゃうんだよ。" userName="Kudos" createdAt="2025/10/11 10:10:56" color="">}}




{{<matomeQuote body="過去も現在も、こんなものを誰かにお金を払って作ってもらうような現実はないね。" userName="llbbdd" createdAt="2025/10/11 19:13:45" color="">}}




{{<matomeQuote body="俺も昔も今もそうだよ。俺が価値を置くのは、熟練アーティストの創造性、未熟なアーティストの作品の個性、そしてGenerative AIで一般的なクリップアートを置き換えることだね。シンプルなテキストを飾るちょっとした気まぐれさ。<br>誰が一般的なクリップアートを守ろうとしてる？いないでしょ？社会的な動きには、何でもかんでも思想的に攻撃しがちな傾向があるね。<br>＞ 冒頭のGenAI電卓画像で、記事もダメかと思った。これは意地悪な個人的な不満だろ。書き手として文章を評価するなら、ただ文章を褒めればいいんだよ。" userName="Nevermark" createdAt="2025/10/12 02:18:17" color="#ff33a1">}}




{{<matomeQuote body="＞ 文章を褒めればいいんだよ<br>俺としては、この記事自体もほとんどAIが書いたものだとかなり確信してるけどね。" userName="pastel8739" createdAt="2025/10/12 06:02:08" color="">}}




{{<matomeQuote body="どうやら、これはウェブページのスクリーンリーダー対応に関する話らしいね。ARIAは「Accessible Rich Internet Applications」の略で、”障害のある人がWebコンテンツをもっと使いこなせるようにするためのHTML属性セット”なんだって。" userName="eps" createdAt="2025/10/11 08:53:20" color="#ff5c5c">}}




{{<matomeQuote body="これってReactの投稿の下でJavaScriptについて説明するみたいなもんだよね。アクセシビリティの基本を知らなくても恥ずかしいことじゃないけど、読者が一部を知っていることを期待するのがおかしいって振る舞う必要もないよ。" userName="skrebbel" createdAt="2025/10/11 09:20:59" color="">}}




{{<matomeQuote body="「おかしいって振る舞う」ってのは、ちょっと言い過ぎじゃないかな。俺もARIAが何の略か今まで知らなかったし（何をするものかは知ってたけど）。意外と多くの人がその存在すら知らないんだよ…大学のWeb EngineeringとEthics in CSのTAだったけど、アクセシビリティはどちらのコースでも一度も出てこなかったよ。" userName="akk0" createdAt="2025/10/11 10:15:01" color="">}}




{{<matomeQuote body="＞大学のWeb EngineeringとEthics in CSのTAだったけど、アクセシビリティはどちらのコースでも一度も出てこなかったよ。<br>それは本当に信じられないね。大学がWeb Engineeringを教えてて、アクセシビリティにすら言及しないなんてどういうこと？それは単なるベストプラクティスじゃなくて、多くの国の公共セクターサイトではしばしば法的要件なんだ。政府の仕事以外でも、FAANG含む大手企業は、評判と法的問題の両方を避けるためにアクセシビリティに公的に投資してる。それを完全に無視するなんて、学生にプロとしての責任や実世界の基準について間違ったメッセージを送ってることになるよ。" userName="acka" createdAt="2025/10/11 13:05:33" color="#ff5c5c">}}




{{<matomeQuote body="多くの学校は、実社会で役立つスキルを教えるのがあまり得意じゃないんだ。昔からずっとこうだよ。<br>だから、多くの分野で「自己学習」がすごく有効なんだ。もし誰かが実際に人々が欲しい／必要としていることに集中するならね。彼らはfizzbuzzとbubble sortの違いをうまく説明できないかもしれないけど、ちゃんと動くものを作れるんだ。<br>俺が知ってるアカデミアから産業界へ移ったPhDはみんな、ストレスレベルが10倍減って給料もだいたい倍になったよ。だって、やっと何かを作ってそれが動くか確認できて、もし動けばもっとお金をもらえたからね。気が狂いそうなほどの絶え間ないおべっかや評判管理／政治に、たまに本物のアプリケーションが少しだけ振りかけられてるような状態だった代わりにね。俺の経験では、アカデミアの人たちほど鋭利な“ナイフ”が必要な人はほとんどいないよ。" userName="lazide" createdAt="2025/10/11 13:47:25" color="">}}




{{<matomeQuote body="俺の倫理の授業でもアクセシビリティは出てこなかったな。アクセシビリティの問題を抱えている人を知らない限り、それに遭遇したり認識したりすることはまずないだろうね。<br>例えば、音声コントロールがどれだけひどいものかって、実際に使ってみるまでは絶対に気づかないよ。<br>世の中にはたくさんの思い込みがあって、それが神経多様性を「違い」じゃなくて「障害」にしてしまうんだ。" userName="kayodelycaon" createdAt="2025/10/11 15:11:27" color="">}}




{{<matomeQuote body="ARIAを知らないってことは、建物を設計するときにスロープの傾斜要件を知らないようなものだよ。そんなの、ありえないでしょ。" userName="Muromec" createdAt="2025/10/11 20:19:49" color="#45d325">}}




{{<matomeQuote body="＞「おかしいって振る舞う」はちょっと言い過ぎじゃないかな。<br>その通りだね。俺は「Apparently」って言葉から、コメント主が意図した以上の皮肉を読み取ったのかもしれない。ちなみに、君が読んだコメントは、俺が最初に出そうと思ったもののマイルド版なんだ。アクセシビリティの懸念を軽視するのって、良いスタイルだとは本当に思わないんだよね。" userName="skrebbel" createdAt="2025/10/11 17:04:43" color="">}}




{{<matomeQuote body="うん、俺も“ARIA”が“アクセシビリティ関連の何か”ってのは知ってたけど、それが何の略かってのは言えなかったな。" userName="bena" createdAt="2025/10/11 11:50:51" color="">}}




{{<matomeQuote body="正直、それが何の略かなんてどうでもいいと思う。" userName="ChrisSD" createdAt="2025/10/11 12:19:30" color="">}}




{{<matomeQuote body="このコメントを読んで、NASAみたいだって気づいたよ。みんな知ってるけど、何の略か知らない人がほとんどだよね（アメリカ以外だと99.9%が知らないと思う—俺もだけど、ハハ）。" userName="kaoD" createdAt="2025/10/11 13:04:35" color="">}}




{{<matomeQuote body="North American Space Astronauts!" userName="skrebbel" createdAt="2025/10/13 10:14:31" color="">}}




{{<matomeQuote body="MDNに良いドキュメントがあるんだけど、筆者も言ってるように、ARIAを使うなら「ネイティブHTML要素や属性でセマンティクスと振る舞いが既に組み込まれているものを使えるなら、要素を流用してARIAロールなどを追加するより、そっちを使うべき」っていうのが最優先なんだよ。詳しい情報はここ→ https://developer.mozilla.org/en-US/docs/Web/Accessibility/A..." userName="skeeter2020" createdAt="2025/10/11 13:22:45" color="#ff5733">}}




{{<matomeQuote body="多くのARIAドキュメントの冒頭には、「ARIAを使わない方が、間違ったARIAを使うよりマシ」って書いてあるよね。" userName="small_scombrus" createdAt="2025/10/11 14:23:21" color="#38d3d3">}}




{{<matomeQuote body="アクセシビリティについて読んで、最初にクリックハンドラーがあるボタン全部にkeydownハンドラーを追加し始める人が（皮肉だけど）本当に好きじゃないな。お願いだから、他のUXと同じようにデザインしてくれよ。リンターが指摘したところにチェックリスト的に対応するんじゃなくてさ。" userName="Muromec" createdAt="2025/10/11 20:22:18" color="#45d325">}}




{{<matomeQuote body="説明してくれてありがとう。自分でググることもできたけど、曇りの土曜の午後に君のコメントをダラダラ読む方が楽だね。改めてありがとう、感謝するよ。😉" userName="rambambram" createdAt="2025/10/11 11:26:18" color="">}}




{{<matomeQuote body="もしスクリーンリーダーで動作させるために`role=status`を使う必要があるなら、その意味がよく分からないな。HTML5が登場する前、セマンティックなXHTMLやmicroformatsに夢中だったから、ちょっと飽きてるのかもしれないけど、これはa11yのためというより、単なる衒学のための過度なこだわりに見えるね。" userName="pbhjpbhj" createdAt="2025/10/11 10:52:25" color="#38d3d3">}}




{{<matomeQuote body="鶏と卵の問題だね。もっと多くのWebサイトがこのタグを使い始めたら、スクリーンリーダーも追いついて、`role=status`は必要なくなるだろうさ。" userName="rglullis" createdAt="2025/10/11 10:54:53" color="#45d325">}}




{{<matomeQuote body="ってことは、2008年からの便利なHTMLタグが誰も使ってないし、知らないってこと？なんでそうなるんだ？タグが多すぎるから？みんなドキュメントを読まないから？それともメリットが分かりにくいからかな？" userName="froobius" createdAt="2025/10/11 08:57:10" color="">}}




{{<matomeQuote body="今のほとんどのサイトは、元々意図されたHTMLの使い方をしてないよね。”DHTML”っていうのを使ってるんだ。DはDIVのDで、だって他にタグをほとんど使わないから。例えば、普通のHTMLならTABLE、TR、TDタグでテーブルを作るけど、モダンなDHTML（つまりDIV-HTML）だと、固定サイズのDIVでテーブルを作って、JavaScriptで列のサイズを計算してるんだ。" userName="meindnoch" createdAt="2025/10/11 09:53:56" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
