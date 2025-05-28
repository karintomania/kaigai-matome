+++
date = '2025-05-21T00:00:00'
months = '2025/05'
draft = false
title = 'CRDTもOTも不要！ 共同テキスト編集'
tags = ["共同編集", "CRDT", "OT", "分散システム", "アルゴリズム"]
featureimage = 'thumbnails/purple5.jpg'
+++

> CRDTもOTも不要！ 共同テキスト編集

引用元：[https://news.ycombinator.com/item?id=44053560](https://news.ycombinator.com/item?id=44053560)




{{<matomeQuote body="これすごいね！ アルゴリズムはこんな感じ：<br>－ 各文字に全世界でユニークなID（例えばUUID）を付けるんだ。配列のインデックスはどんどん変わるから、これで常に同じ文字を指せる。<br>－ クライアントはサーバーに「この既存IDの文字の後に挿入」っていう操作を送る。サーバーはそのIDを探して、すぐ後ろに新しい文字を入れる。<br>－ 削除は表示上隠すだけ。挿入位置を指すためにはまだ残ってるんだ。<br>これ、テキスト編集以外にも使えるかもね。ゲームの世界の同期とかさ。" userName="Animats" createdAt="2025/05/21 20:44:12" color="#38d3d3">}}




{{<matomeQuote body="これ、マジで退化したCRDTだよ。中央サーバーでタイブレーキングするのはGoogle Waveの頃からあったやり方だね。" userName="jahewson" createdAt="2025/05/21 22:46:30" color="#45d325">}}




{{<matomeQuote body="中央サーバーをタイブレーカーにするアルゴリズムはどれも、クライアントIDをタイブレーカーに使うやり方で簡単に置き換えられそうだよね。" userName="bikeshaving" createdAt="2025/05/22 00:27:19" color="#785bff">}}




{{<matomeQuote body="もしUUIDv7を使ったら、時間順序付きのUUIDになるから、それをタイブレーカーに使えるんじゃない？" userName="jonstokes" createdAt="2025/05/22 03:04:56" color="#45d325">}}




{{<matomeQuote body="システム全体でクロックが十分に同期してるって確信できないといけないんじゃないの？" userName="yanowitz" createdAt="2025/05/22 04:03:00" color="">}}




{{<matomeQuote body="それにさ… 現実には同時性なんて存在しないんだよ…" userName="boxed" createdAt="2025/05/22 05:43:42" color="">}}




{{<matomeQuote body="分散システムではさらに存在しないけど、ユーザーに見せるためには何か選ばなきゃいけないし、クロックはまあまあ十分なことが多いんだよ：D" userName="ChadNauseam" createdAt="2025/05/22 06:07:51" color="">}}




{{<matomeQuote body="これってそんなに斬新なの？分散システムを中央プロセスで直列化するなんて、当たり前のことじゃん － 元々ここから始まったんじゃない？ － ネットワークの分断とかCAPとかそういうややこしいことを心配しなきゃいけなくなるまではね。あと単一障害点もできるし。記事をざっと読んだけど、パフォーマンスについては議論されてたっけ？" userName="yubblegum" createdAt="2025/05/21 20:52:17" color="#38d3d3">}}




{{<matomeQuote body="＞ これってそんなに斬新なの？分散システムを中央プロセスで直列化するなんて、当たり前のことじゃん － 元々ここから始まったんじゃない？<br>うん。この記事は「図書館で1時間あれば済むことを研究室で1ヶ月かけてやった」っていう格言みたいに読めるね。" userName="motorest" createdAt="2025/05/23 05:08:20" color="#785bff">}}




{{<matomeQuote body="うん、俺も同じこと疑問に思ってたんだよね。この分野全然詳しくないんだけど、これって俺の素朴な最初のアイデアに聞こえるから、なんか落とし穴とかあるのかなーって思ってるんだ。" userName="bongodongobob" createdAt="2025/05/21 22:23:57" color="">}}




{{<matomeQuote body="著者だけど、同じこと思ってたよ。たぶん中心サーバでOTが使われたり、分散でCRDTが使われたりするのは、文字IDや操作ログの永続保存が非効率って思われてたからじゃないかな。でも俺にはその”非効率性”は manageable に見えるんだ。ストレージ安いし、テキスト小さいし、ログは audit や履歴に必要だし。サーバ reconciliation もバッチでいける。Replicache の成功にも励まされてるよ。" userName="mweidner" createdAt="2025/05/22 00:08:07" color="#45d325">}}




{{<matomeQuote body="文字ごとにIDを保存する非効率性はさ、redis streams を使って sidestep できないかなって思うんだ。IDを ”radix tree で連結された delta-compressed macro nodes として表現” して、ID自体は<br>”単調増加で、＜time＞-＜counter＞の2つの部分からなる”ってやつ。time はミリ秒で、counter は同じミリ秒で生成されたエントリごとに増加するんだ。これなら衝突を避けられるし、識別子のストレージを効率的に圧縮できそうだよね。https://antirez.com/news/128" userName="kamranjon" createdAt="2025/05/22 14:02:09" color="#45d325">}}




{{<matomeQuote body="これ、articulated のアイデアに似てる感じだね（IDは time-counter じゃなくて UUID-counter だけど）。https://github.com/mweidner037/articulated<br>Antirez の記事、見てみるわ。" userName="mweidner" createdAt="2025/05/23 01:46:06" color="">}}




{{<matomeQuote body="君が cap’n jazz を参照しようとしてたって信じたいわ〜 - https://en.m.wikipedia.org/wiki/Cap’n_Jazz:)" userName="thebeardisred" createdAt="2025/05/22 00:49:29" color="">}}




{{<matomeQuote body="君が説明してるのって、CRDTじゃないの？" userName="sdeframond" createdAt="2025/05/21 20:55:11" color="">}}




{{<matomeQuote body="違うよ。CRDTじゃないんだ。なぜなら、もし一部がオフラインになった場合、システムが収束しなきゃいけない唯一の consistent final state がないから。例えば、こういうドキュメントがあったとして：<br>a{uuid=1}<br><br>で、2つのクライアントが次の操作を送ったとする：<br>b{uuid=2} insert-after{uuid=1}<br>c{uuid=3} insert-after{uuid=1}<br><br>そうすると、次の2つのドキュメントが両方 valid final states になり得るんだ：<br>abc<br>acb<br><br>これは authoritative server があって、全てのイベントを単一の順番で見て、順不同になったローカル状態を元に戻す方法があれば大丈夫なんだけど、それは CRDT じゃないってことを意味してるんだ。" userName="ori_b" createdAt="2025/05/21 21:12:54" color="#785bff">}}




{{<matomeQuote body="Raft が Paxos の ”special case” みたいな感じでさ、これも CRDT の ”special case” って感じがするね。CRDTの雰囲気は全部あるんだけど、leader と total ordering の別の方法（ basically leader の local lamport clock を使って tie を破る）を追加してる。これに leader reelection とか ledger syncing をちょっと加えて、全部に別の名前をつけたら、絶対 ”collaborative text editing on one page” ができると思うよ。" userName="YoumuChan" createdAt="2025/05/21 22:38:35" color="#38d3d3">}}




{{<matomeQuote body="うん。あとデフォルトだと結構非効率なんだよね - deleted item を保存してるし、文字ごとに uuid があるから。それに、CRDTにある他の部分で、こっちが捨ててるもの（例えば siblings の consistent ordering rule とか）って普通は欲しいんだよ。それをやってもコードはほんの少し（10行くらいとか）しか増えないのに、システムが遥かに便利になるんだ。テキスト CRDT って小さくてシンプルで速いのに、わざわざこれをやるメリットが正直よく分かんないな。" userName="josephg" createdAt="2025/05/22 06:48:32" color="">}}




{{<matomeQuote body="「RaftがPaxosの”特殊なケース”みたい」って書いてるけど、もっと詳しく説明してくれる？これについてググっても、同じこと言ってるHNのコメントは見つかるけど、他には何も出てこないんだよね。" userName="nextaccountic" createdAt="2025/05/24 18:22:16" color="">}}




{{<matomeQuote body="「いや、システムの一部がオフラインになっても収束する必要がある一貫した最終状態は一つじゃない」ってとこね。これ、デルタ状態CRDTの素朴な実装みたいに聞こえるな。つまりさ、もし筆者が「状態を同期して収束させるのがいいじゃん！」ってすごいひらめきを得たらどうなるの？" userName="motorest" createdAt="2025/05/22 03:49:34" color="#38d3d3">}}




{{<matomeQuote body="同時並行の操作をid順に並べたらどうなる？そしたら”abc”だけが一貫した最終状態になるじゃん。言いたいことはわかるけどね、中央集権的な権威があるとめっちゃ要件緩くなるよね。" userName="sdeframond" createdAt="2025/05/21 21:44:11" color="">}}




{{<matomeQuote body="CRDTがやってることで、既知の上流権威のツリーを持つってのを一般化できるかもね。そうなると、どっちもより一般的な一貫性のあるイベント処理モデルの特殊ケースになる。CRDTはイベントの順序を可換にするから、”権威”が物理的なサービスじゃなくて数学自体のプロパティになるんだよね。" userName="3cats-in-a-coat" createdAt="2025/05/21 21:58:37" color="#38d3d3">}}




{{<matomeQuote body="どうやってどの操作が同時並行なのか判断するの？" userName="rendaw" createdAt="2025/05/22 03:07:36" color="#ff5c5c">}}




{{<matomeQuote body="もし有効な最終状態が複数あったら？" userName="tangjurine" createdAt="2025/05/22 21:45:12" color="#45d325">}}




{{<matomeQuote body="なるほどね、じゃあこれって、変換操作が単なる恒等変換であるようなオペレーショナル・トランスフォーム（OT）ってことだね。" userName="anon291" createdAt="2025/05/22 14:59:07" color="#38d3d3">}}




{{<matomeQuote body="もし「一番若いuuidを持つ操作が最初に適用される」っていう追加のセマンティクスを持たせたら、実質CRDTにならない？というか、uuidって貧乏人のLamport clockみたいなもんだよね？" userName="Yoric" createdAt="2025/05/21 21:41:40" color="#ff33a1">}}




{{<matomeQuote body="うん、説明されてたアルゴリズムに追加のセマンティクスを加えれば、CRDTに変えることができるよ。" userName="ori_b" createdAt="2025/05/21 22:29:05" color="">}}




{{<matomeQuote body="Ctrl+A、Ctrl+X、Ctrl+V。頑張ってね。" userName="pcthrowaway" createdAt="2025/05/22 00:18:10" color="">}}




{{<matomeQuote body="これってNOPじゃないの？でもさ，これらをまとめて処理できると思うんだよね．もうちょっと進んだプロトコルが必要だけどさ．もしBが最初のidでLが最後のidなら，range(B，L)をRって作って，RをLの後に挿入すればいいんじゃないかな（2回目のCtrl-vを想定して）．" userName="apgwoz" createdAt="2025/05/22 03:31:43" color="#785bff">}}




{{<matomeQuote body="＞ これってNOPじゃないの？<br>それが肝だよ．ctrl-xやctrl-vで個別の文字操作になるからアトミックじゃない．だから通信に時間かかって競合が起きやすいんだ（ctrl-a，ctrl-xとかね）．これがCRDTの研究が文字単位じゃなくもっと高レベルな操作に注目する理由．コピペとかundo/redoも同じこと．" userName="motorest" createdAt="2025/05/23 05:24:00" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この記事読めて嬉しいな！数年前に同じ方法を発見してさ，なんで学術文献に出てこないんだろうって思ってたんだ．僕は分散環境でCRDTとして実装したけどね，そうすれば性質（commutative，idempotent，associative）が成り立つから．" userName="hem777" createdAt="2025/05/21 18:00:57" color="#785bff">}}




{{<matomeQuote body="CRDTの代わりになるアイデアなら，なんでそれをCRDTとして作ったの？何を得たの？" userName="k__" createdAt="2025/05/21 18:13:21" color="#ff5c5c">}}




{{<matomeQuote body="CRDTそのものが欲しかったわけじゃないんだ．opベースのappend-onlyログCRDTの上に実装したから，結果的にCRDTの性質を持つことになったんだ．だからCRDTになったんだよ．編集がどんな順序で来ても，ネットワーク分断による遅延の後でも大丈夫にしたかったんだ（これはp2pネットワーク向けだったんだ）．" userName="hem777" createdAt="2025/05/21 18:24:28" color="#38d3d3">}}




{{<matomeQuote body="dicts/mapsとか配列とか，他のデータ構造について議論がないのが意外だったな．アプリってテキストだけじゃなく，協調データ構造が必要な場面の方が多いと思うんだ．<br>記事の動機（検証とか部分読み込みとか）は面白いけど，Yjsとかに機能がないのがCRDTのせいってわけじゃなく，機能自体を作るのが難しいからじゃないの？" userName="Footkerchief" createdAt="2025/05/21 19:01:40" color="#ff5c5c">}}




{{<matomeQuote body="＞ dicts/mapsとか配列とか，他のデータ構造について議論がないのが意外だったよ…全く同感！“atomic”なオブジェクトの配列はできそうだけど，オブジェクトの中の変更は難しいかもね．<br>記事の手法を使う側が，無効な状態にならないように独自の”意味論的モデル”ロジックを組み込めるようにすべきだと思うんだ（例えばTodoがisDone: trueとstate: inProgressを両方持つのはおかしい，みたいにね）．" userName="filleokus" createdAt="2025/05/21 20:48:42" color="#785bff">}}




{{<matomeQuote body="CRDTは競合で決定論的に片方を選ぶんだけど，これだとデータが失われたり無効になったりすることがあるんだ．gitのマージで毎回片方を選ぶのと同じで，問題を手動で直す必要のある本来の問題を解決しないんだよね．むしろ解決方法を決定論的なものに制限するから，問題を悪化させることだってあると思うな．" userName="SkiFire13" createdAt="2025/05/22 06:11:51" color="#ff33a1">}}




{{<matomeQuote body="＞ これ，僕もずっと言ってるんだ．でもさ，gitみたいに競合部分を教えてくれるCRDTを作れないわけないと思うんだよね．CRDTはgitより情報多いし，”競合出してマージ”モードにするのは簡単のはず．誰もやってないだけなんだよ．（もう5年くらい言ってるから，自分で書くべきかな）" userName="josephg" createdAt="2025/05/22 06:51:24" color="#785bff">}}




{{<matomeQuote body="＞ これ，僕もずっと言ってるんだ．でもさ，gitみたいに競合範囲を出すCRDTを作れないわけないと思うんだよね．<br>言ってること分からないな．CRDTのCは”conflict-free”（競合フリー）の意味だよ．なんでCRDTに競合範囲なんてあるの？" userName="motorest" createdAt="2025/05/23 05:28:40" color="#785bff">}}




{{<matomeQuote body="`git`の自動マージって常に完璧なわけじゃないじゃん。特にコードの長い変更をマージする時は、結果を確認するために手作業で直す必要があったりするんだよね。たまには手で介入する必要があるんだよ。" userName="josephg" createdAt="2025/05/23 06:26:05" color="#45d325">}}




{{<matomeQuote body="それは`git`よりは改善されてるのかもだけど、コンフリクトを自動で直してくれないのは多くの人にとって致命的だと思うな。根本的にみんなはコンフリクトを自動で、しかも自分が期待した通りに直してくれるものを求めてるけど、そんなのまだ存在しないんだよね。" userName="SkiFire13" createdAt="2025/05/22 09:58:00" color="#ff5733">}}




{{<matomeQuote body="`Automerge`にはこれがあるよ：<br>https://automerge.org/automerge/api-docs/js/functions/getCon..." userName="hansworst" createdAt="2025/05/22 07:58:30" color="">}}




{{<matomeQuote body="ドキュメント読んだけど、それって同時に違う値がセットされたオブジェクトのキーにしか効かないみたいね。テキスト文書には使えないみたいだよ。" userName="josephg" createdAt="2025/05/22 08:30:10" color="">}}




{{<matomeQuote body="Ok、なるほど。`CRDT`と違うメインのポイントはこうみたいだね：中央サーバーがあるなら、同期（同時発生イベントの順序決め）はサーバーに任せて、データ構造自体はやらない、ってこと。クライアントとサーバー間でしか通信しないから、クライアントがサーバーに繋いだ時、サーバーはまずそのクライアントのローカル操作全部処理してから、新しいリモートの更新を送れるようにできるんだ。" userName="practal" createdAt="2025/05/22 10:18:12" color="#ff5c5c">}}




{{<matomeQuote body="この記事の一番言いたいことって、`CRDT`とか`OT`のフルな複雑さは、中央サーバーがない場合にだけ必要なんだよ、ってことかな？" userName="math_dandy" createdAt="2025/05/21 18:37:37" color="">}}




{{<matomeQuote body="中央サーバーがなくても、操作を最終的に全部順序付けできる分散的な方法があれば、`CRDT`/`OT`の複雑さを避けられる可能性はあるよ：<br>https://mattweidner.com/2025/05/21/text-without-crdts.html#d...<br>コメント欄の他の人が言ってるように、これは技術的には`CRDT`（ただし完全に一般的なやつ）だよ。それと、操作の取り消しや再実行（undo/replay）は自分で実装するとなると簡単じゃないんだ。でも、従来の`CRDT`や`OT`をそれぞれのデータ型に使うよりは、こっちの方がまだシンプルだといいな。" userName="mweidner" createdAt="2025/05/21 20:38:59" color="#785bff">}}




{{<matomeQuote body="もしかして、「完全に一般的なやつじゃない」って書こうとしたの？" userName="math_dandy" createdAt="2025/05/21 23:19:04" color="">}}




{{<matomeQuote body="分散型で、最終的に一致する（eventually consistent）操作の全順序付けは、完全に一般的な`CRDT`だよ。どういう意味かっていうと、どんな（決定論的な）操作でもその全順序に入れれば、クライアントは最終的に一致した状態になるってこと。でも、その結果がまともかどうかは、また別の話だけどね。" userName="mweidner" createdAt="2025/05/22 00:30:02" color="">}}




{{<matomeQuote body="Ok、君の返信でやっと分かったよ。今思えば、君はずっと完璧に明確だったし、私の混乱は`CRDT`の正確な定義を理解してなかったせいだね。ありがとう！" userName="math_dandy" createdAt="2025/05/22 01:44:48" color="">}}




{{<matomeQuote body="この記事って、サーバーがない時だけCRDTとかOTの複雑さが必要ってこと？それがCRDTの全部じゃん：データがあちこちのノードにあって、それぞれ勝手に更新されるけど、最終的には全部一緒になるんだよ。" userName="motorest" createdAt="2025/05/23 05:31:16" color="#45d325">}}




{{<matomeQuote body="OTには真ん中のサーバーがいるんだよ。" userName="sampton" createdAt="2025/05/21 20:09:30" color="">}}




{{<matomeQuote body="OTにもサーバーがいるやつといらないやつがあるよ。TP2ってやつは真ん中のサーバーに順序を決めてもらう必要はないはず。<br>てか、編集内容とか保存するなら、どっちみち順序を決める何かがあるっしょ。たいていOLTPデータベースだよね。OLTPはこういう書き込み多いのに強いし、最適化の方法もいっぱいある。<br>最近はS3にPUT-IFって機能もあるから、それ使っても順序つけられるんじゃない？<br>https://docs.aws.amazon.com/AmazonS3/latest/userguide/condit..." userName="n_u" createdAt="2025/05/22 00:19:02" color="#ff33a1">}}




{{<matomeQuote body="専門家じゃないけど、AutomergeみたいなCRDTとこの記事の手法の大きな違いは、サーバーで調整するかどうかみたいだよ。<br>Automergeは並行した編集を、番号と決まったユーザーIDの順序で処理する。でもこの記事のは、サーバーが来た順番で処理するのに頼ってる。「CRDTのすごいアルゴリズムを避けられる」って記事は言ってるけど、サーバーでの調整も編集をやり直したりしないといけないから、どっちが楽かは微妙だなぁ。" userName="hencq" createdAt="2025/05/21 17:58:24" color="#38d3d3">}}




{{<matomeQuote body="そうだよねー。やり直しとかリプレイも全然簡単じゃないし。Persistent B+Treeとかも結構大変だもんね。" userName="hem777" createdAt="2025/05/21 18:04:52" color="">}}




{{<matomeQuote body="Automergeって、実は内部的には全部の操作を最終的に同じ順序で保存してると思うんだ。それはサーバー調整のときのサーバーみたいに使えるはず（詳しくはこれを見て）。でも、Automergeは実際にはそうしてないみたい。代わりに昔ながらのCRDTのRGAってのを使ってテキスト処理してるんだ。たぶん、君も言ってたけど、操作のやり直しとかリプレイって簡単じゃないからじゃないかな。<br>https://mattweidner.com/2025/05/21/text-without-crdts.html#d..." userName="mweidner" createdAt="2025/05/21 19:33:50" color="#ff33a1">}}




{{<matomeQuote body="ってことは、最適化されてないCRDTってこと？最大セットサイズを1にしてYOLO（やるだけ）って感じ？" userName="asdffdasy" createdAt="2025/05/21 18:20:40" color="">}}




{{<matomeQuote body="なんか、これ以上簡単にできないレベルの複雑さって感じで、すごく惹かれるなぁ。実際に起こってることに近い感じするし、シンプルだし。ハハハ、君が言う通り最適化されてないとしてもさ。" userName="th0ma5" createdAt="2025/05/21 18:35:14" color="">}}




{{<matomeQuote body="サーバーで調整するってことは、使う側の調整が難しそう…サーバーからの更新が来たとき、エディターをスムーズに動かすのってどうやるの？<br>文字入れたいって送ったリクエストがダメだったとき、リトライ？その間に他の更新が来たら？（記事で巻き戻してリプレイするか、保留が終わるまで待つって書いてあるね。）<br>使う側から見ると、細かいUI/UXのエッジケースが多くて、CRDTの方が結局楽かもって思う。電波悪いNYCの地下鉄とかで使うときの使い心地も気になるな。" userName="pshc" createdAt="2025/05/21 19:54:28" color="#45d325">}}




{{<matomeQuote body="ProseMirrorとか新しいCodeMirrorには、これに対する結構いい解決策があるよ。ドキュメントの変更は「ステップ」っていうので管理してて、これはテキストじゃなくて場所（インデックス）を覚えてるんだ。で、「position map」っていうのを使って、新しい場所で編集をやり直して、ドキュメントに適用する。<br>実際にかなり上手くいってるよ。詳しくはここ見て。<br>https://marijnhaverbeke.nl/blog/collaborative-editing.html<br>https://marijnhaverbeke.nl/blog/collaborative-editing-cm.htm..." userName="straws" createdAt="2025/05/21 20:27:49" color="#785bff">}}




{{<matomeQuote body="正直なケース以外のコンフリクト解決にローカルのLLM（4bくらいのやつ）使うの誰か試してみてほしいな。<br>エネルギー効率は良くないけど、CRDTとかOTとか何もなしでめっちゃうまくいくかもよ。" userName="hbbio" createdAt="2025/05/22 08:09:41" color="#38d3d3">}}




{{<matomeQuote body="記事にあった「My name is」って例で、「is」の後に「Charlie」と「Dave」両方挿入するコンフリクトをLLMはどうやってマージするって言うの？" userName="gregoriol" createdAt="2025/05/22 14:04:02" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="オフライン同期のある共同テキスト編集って、まさにnerd snipe ［０］（技術者がハマりがちな難題）だよね？<br>俺ビッグテックで働いててめっちゃ文章書くけど、最悪の場合でも誰かが同時に編集してもサーバーがなんとかしてくれるよ。<br>そりゃ何らかのアルゴリズムは必要だけど、ほとんどの同時編集はデカいドキュメントの別の場所だし。<br>これGitのワークフローと比べてみてよ。<br>Gitはほとんどの変更をスムーズにマージするじゃん。" userName="coolcase" createdAt="2025/05/21 23:13:52" color="#785bff">}}




{{<matomeQuote body="UUIDv7だとパフォーマンス上がるかなーって思う。" userName="uh2010" createdAt="2025/05/21 18:08:10" color="">}}




{{<matomeQuote body="記事の一番下でIDの最適化についてちゃんと話してるよ。" userName="pshc" createdAt="2025/05/21 20:42:15" color="">}}




{{<matomeQuote body="ずっとインクリメントするu64使えばよくない？" userName="poly2it" createdAt="2025/05/21 18:30:23" color="">}}




{{<matomeQuote body="それだと中央集権的な調整が必要になるよ。<br>カウンターを持つ単一の中央サーバーか、Snowflakeみたいに事前に重複しない範囲を割り当てられた複数のカウンターを持つか（これも中央サーバーとの連携必要）。<br>UUIDsとかULIDsとかなら完全に分散されてるから、クライアント二つが調整なしでID割り当てても衝突する可能性ほぼゼロ。" userName="kortex" createdAt="2025/05/21 18:58:45" color="#ff5733">}}




{{<matomeQuote body="あとはu64を分割して、最初の24ビットをクライアント固有にして、残りの40ビットを生成した文字固有にするって手もあるよ。<br>これならユーザーとセッションごとに1 TiBのデータを生成できる。<br>唯一の排他制御はユーザーIDカウンターになるね。" userName="poly2it" createdAt="2025/05/21 19:10:26" color="#ff5733">}}




{{<matomeQuote body="インクリメントするu64だと、同時接続クライアント間でアトミックにインクリメントするか、コンフリクト情報が同期した後に新しいインクリメントされたIDを矛盾なく見つけるための再計算ロジックが必要になるんだよね。<br>UUIDsは他のクライアントとの連携とか複雑さなしにただユニークなIDを出すだけだから楽。" userName="zamadatix" createdAt="2025/05/21 18:49:02" color="#ff5733">}}




{{<matomeQuote body="これと関連するアイデアでうまくいくかもしれないのがあるよ。<br>テキストを編集する各デバイスにサーバーが32ビットのIDを割り当てる（たぶん自動インクリメント）。<br>デバイスはそれぞれの操作ごとにインクリメントする別の32ビットIDを持つ。<br>各文字に使うIDは（デバイスID、編集ID）で、これは8バイトにきれいに収まるはず。" userName="ChadNauseam" createdAt="2025/05/21 19:26:53" color="#ff5733">}}




{{<matomeQuote body="うん、これって人気のCRDTライブラリ、Yjsがやってることと近いね。各クライアントはランダムな32ビットのclientIdを使うんだ。キャラIDはclientIdとローカルカウンターの組み合わせ。衝突の可能性は低いけど、64ビットIDの方が個人的には安心かな。詳しい仕組みはYjsのGitHub見てみて。" userName="mweidner" createdAt="2025/05/21 19:40:00" color="#785bff">}}




{{<matomeQuote body="本当に？もし君と僕が同時に人のリストを編集してて、君が年齢順に並べようとしてて、僕がアルファベット順に並べようとしてたら、結果をどうやって調整するの？" userName="criddell" createdAt="2025/05/21 20:11:37" color="">}}




{{<matomeQuote body="そうは思わないな。僕の知る限り、CRDTは意味論的な競合の問題は解決しないよ。" userName="criddell" createdAt="2025/05/22 02:00:15" color="">}}




{{<matomeQuote body="技術的にはこれってCRDTだよ。ドキュメントに適用する”操作の順序”を中央サーバーで解決してるってだけ。Google DocsとかZoho Writerが今やってることと全く同じ。彼らはOTだけど、こっちはCRDTっぽいアプローチ。中央サーバーでサービス動かすなら実用的だよねってのは同意。" userName="lewisjoe" createdAt="2025/05/22 11:40:44" color="#ff33a1">}}




{{<matomeQuote body="＞ 技術的にはこれってCRDTだよ。ただ、ドキュメントに適用する”操作の順序”を中央サーバーで解決してるってだけ。これ、違うよ。CRDTの最も基本的な特徴の一つは、更新が調整なしで行われること。競合解決に中央サーバーを使うのは、CRDTの主な特徴の2つを否定してる。名前は出てるけど、中身はないね。" userName="motorest" createdAt="2025/05/23 05:33:32" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
