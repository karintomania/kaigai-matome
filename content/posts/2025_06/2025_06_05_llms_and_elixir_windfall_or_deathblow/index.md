+++
date = '2025-06-05T00:00:00'
months = '2025/06'
draft = false
title = 'LLMはElixir開発を変えるのか？恩恵か、それとも終焉？'
tags = ["AI", "Elixir", "プログラミング", "開発"]
featureimage = 'thumbnails/green3.jpg'
+++

> LLMはElixir開発を変えるのか？恩恵か、それとも終焉？

引用元：[https://news.ycombinator.com/item?id=44186496](https://news.ycombinator.com/item?id=44186496)




{{<matomeQuote body="ElixirとPhoenixで開発した経験から言うと、LLMはPythonやReactの方が得意かと思ったけど、それらはボイラープレートが多くて副作用が出やすいから、大量にコードを生成しても理解し直すのが大変なんだ。<br>Elixirだとそのループがずっと小さい。少しコードを生成して、関数型だから検証しやすくて、また生成する、って感じ。<br>超人的な自律コーディングエージェントができるまでは、人間が生成されたコードを理解するのがボトルネックだよ。<br>LLMは主流言語の方が少しだけ生成しやすいかもしれないけど、生成されたElixirコードは理解・修正がずっと楽だし、ランタイムのおかげでシステムが落ちることはまずないよ。" userName="ipnon" createdAt="2025/06/05 03:33:18" color="#45d325">}}




{{<matomeQuote body="LLMがJavaの面倒で冗長なコード書くの嫌がって、簡潔で丈夫で性能の良いElixirコードを書かせろって要求するようになるのが待ちきれないな。<br>そしてViよりEmacsがいいとか、その逆とかで文句言い始めるんだ。" userName="jimbokun" createdAt="2025/06/05 18:33:04" color="">}}




{{<matomeQuote body="「少量のコードを生成し、検証し、このループを繰り返す。」<br>これはLLMが登場する前から真実だったことだよね。小さくテスト可能な関数を組み立てる。基本はそれ。" userName="carlmr" createdAt="2025/06/05 19:33:20" color="">}}




{{<matomeQuote body="Elixirはまだ試してないんだけど、RustとかGoでも同じ効果を感じてるよ。<br>LLMが無ければ構文的に大変だったところが、良いエラーとテストでフィードバックループが早くなって、もっと良くてクリーンなコードベースができる。<br>人間には理解しにくくてもLLMにはそうじゃない言語の採用がどう変わるか興味深いね。" userName="tough" createdAt="2025/06/05 20:46:00" color="#ff5c5c">}}




{{<matomeQuote body="これって、フレームワークやライブラリだけでなく、LLMが上手く使うための専用言語すら登場するのかって疑問に繋がるね。" userName="QuantumGood" createdAt="2025/06/05 22:49:24" color="">}}




{{<matomeQuote body="あなたは彼らの言いたいことを理解してないと思うよ。彼らはElixirの方が人間にとって理解し、検証し、修正しやすいから好んでいるんだ。" userName="computably" createdAt="2025/06/05 22:59:54" color="">}}




{{<matomeQuote body="Elixir、Erlang、そしてBEAMは大好きだけど、正直言ってシステムが落ちないってのは、Webの世界では言語やランタイムに関係なく、リクエスト／レスポンスの性質のおかげでかなり解決済みの問題だよ。" userName="bcrosby95" createdAt="2025/06/05 17:21:43" color="">}}




{{<matomeQuote body="ElixirのBEAM設計はハッピーパスに集中できて楽！Pythonだと例外処理で大変だけど、Elixirは「失敗させて大丈夫」だから本番環境でクラッシュした経験がないんだ。問題解決の手間が省けて、プログラミングが楽しくなったよ。懐疑的だけど、半導体も使い続けてるのが最高の推薦かな！" userName="ipnon" createdAt="2025/06/05 17:45:36" color="#38d3d3">}}




{{<matomeQuote body="Elixirだとエラーの原因になったユーザーだけを切り離すのがほぼタダでできるよ。他の言語だと、気を使わないとクラッシュがたくさんのユーザーに影響しちゃうんだ。" userName="sodapopcan" createdAt="2025/06/05 18:44:12" color="">}}




{{<matomeQuote body="いや、「ほぼタダ」じゃないと思うな。Elixirのプロセスってエラー分離だけじゃなくて、並行処理とかアクセス制御とかデータコピーのパフォーマンスとか、いろんな役割があって複雑なんだ。全部をうまく満たす設計はマジで難しくて、タダどころか大変だった経験があるよ。" userName="bcrosby95" createdAt="2025/06/05 18:51:06" color="#ff33a1">}}




{{<matomeQuote body="プロセスは基本的な要素だよ。エラー分離はSupervisorとかがやるべき。大きなデータは、データに関数を送る方法もあるよ。コメント2の「タダ」は、失敗する可能性を全部考えなくていいって意味だと思うな。" userName="sodapopcan" createdAt="2025/06/05 19:09:44" color="#ff5733">}}




{{<matomeQuote body="みんなPHPを嫌いがちだけど、リクエストが分離されてる点はPHPも結構いいんだよね。" userName="icedchai" createdAt="2025/06/06 16:04:34" color="">}}




{{<matomeQuote body="「システムが実質的にクラッシュしない」って言うけど、それってソフトウェアのバグとかメモリ不足とか、悪い設計を無視してるだけじゃない？" userName="belter" createdAt="2025/06/05 11:06:47" color="">}}




{{<matomeQuote body="人間の命がかかってるような重要なシステムをデプロイしたことある？BEAMだってセグメンテーションフォルトでクラッシュするバグ（issue #7683）があるし、NIFsを使えばVM全体がクラッシュすることもあるよ。「Supervisorを監督するのは誰？」っていう話もあるし、Elixirも無敵じゃないんだ。<br>https://github.com/erlang/otp/issues/7683<br>https://www.erlang.org/doc/apps/erts/erl_nif.html<br>https://learnyousomeerlang.com/supervisors" userName="belter" createdAt="2025/06/05 12:07:45" color="#ff33a1">}}




{{<matomeQuote body="1. あるよ。2. あんたこそ俺の質問に答えてないじゃん？あなたの意見、BEAMのデプロイ経験がないみたいに見えるんだけど。「失敗の分離」は悪いことじゃないし、全部止めるっていう選択肢だって開発者にはあるんだよ。" userName="borromakot" createdAt="2025/06/05 13:23:17" color="">}}




{{<matomeQuote body="技術的な議論じゃなくて、人格攻撃してきたね？もう一度聞くけど、NIFsは使ってる？Joe Armstrongも言ってたけど、Erlang/BEAMは回復ツールであって失敗しないわけじゃない。分散システムと運用規律が大事なんだよ。これでいい結論になったかな。" userName="belter" createdAt="2025/06/05 14:05:41" color="#ff5c5c">}}




{{<matomeQuote body="うん、そうだね。Erlangシステムはうまく障害に対処して自己回復できるけど、それは分散アーキテクチャと運用 disciplined がちゃんとしてるかにかかってるんだ。<br>個人攻撃するつもりはなかったよ。単純な質問をしただけなのに、質問で返されて、まるで誰も「クラッシュする可能性はない」なんて言ってないのに「でもクラッシュする方法はある」ってまくしたてられた感じだった。あの時点でもう技術的な議論じゃなくなったんだ。<br>ちなみに、最初に君が返信したコメントは僕が書いたんじゃないよ。僕はただ、「実質的にクラッシュしない」っていうのは、ソフトウェアバグやリソース枯渇、悪いアーキテクチャを無視してる、っていう指摘が、OPが言ってたローカライズされた障害でシステム全体が落ちないっていう sentiment への表面的な反応に感じただけなんだ。" userName="borromakot" createdAt="2025/06/05 14:45:37" color="">}}




{{<matomeQuote body="perfection を目指してるわけじゃないよ、ただ Erlang の mythology を訂正したいだけなんだ :-)<br>Ericsson AXD301 スイッチでストレージが full になった状態から Erlang が救ってくれる、なんて保証はできないね..." userName="belter" createdAt="2025/06/05 14:17:11" color="">}}




{{<matomeQuote body="コードはクラッシュしても、system 全体がクラッシュすることは多くない（大量の badly tested NIFs を使ってなければね、まあほとんどの人は使わないけど）。GPが言いたいのはそれだけだよ。BEAM は魔法じゃないけど、今となってはかなり robust だね。<br>正直、最近はそんなにユニークじゃないと思うんだよね、だからこの点がどれだけ重要なのかよくわからない、特に LLM をコーディングに使う文脈ではね。例えば、ほとんどの NodeJS コードも system をクラッシュさせないよ（NodeJS をクラッシュさせるだけ）。" userName="skrebbel" createdAt="2025/06/05 14:18:00" color="#ff5c5c">}}




{{<matomeQuote body="memory exhaustion は real な話だよ。binary content の大量の transformation をやる BEAM application を動かすときは気をつけてね... PDF とか思いつくね！" userName="throwawaymaths" createdAt="2025/06/05 17:12:00" color="">}}




{{<matomeQuote body="“superhuman autonomous coding agents を手に入れるまでは、生成されたコードを理解する人間が limiting factor だ”って？<br>彼らは疲れないし、penny で働くし、 internet や君の code base を検索できるし、rule に従うし、test case を iterate できる。これは僕ができることより優れてる。だから human である僕の基準からすると、coding agents はすでに superhuman だよ。" userName="stevejb" createdAt="2025/06/05 14:57:08" color="#45d325">}}




{{<matomeQuote body="君が言ってること、人間が全部 review しなきゃいけないとか、しないと動かないだろうって話に全然触れてないじゃん。まあ、作業は速くなるかもしれないけど。<br>君は自分の経験を話してくれたけど、これが僕の経験だよ。<br>- context が大きすぎると疲れる。自力で reliably に動かすこともできないから、僕が寝てる午前３時に動かせても意味ないよ、そんなことしないし。<br>- LLM で internet を検索するのは最悪。両方の worst が組み合わさってるから（LLM を使わないで internet 検索する人がいたこと覚えてる？）。<br>- “test case を iterate する”のが rule に従うのか、infinite loop にハマるのかは toss up。最新で一番 expensive な model でも、単なる LLM だから同じ２行の broken code の間を行ったり来たりするのを見てきたよ。<br>今は Cursor を楽しんで使ってるけど、数人の client のために string の really basic な Laravel apps も作業中で、それでもまだ間違えるんだ。novel problems や niche tech には useless だね。" userName="Capricorn2481" createdAt="2025/06/05 15:41:59" color="#785bff">}}




{{<matomeQuote body="じゃあ、なんで僕にとっては часто garbage を生成したり、type errors を “修正” するために `any` に cast したり、ただ stuck したりする state にハマったりするの？<br>React-Native だとマジで最悪だよ。" userName="tcoff91" createdAt="2025/06/05 15:35:48" color="">}}




{{<matomeQuote body="Elixirはサーバー以外で数年使ったけど、OTPとかサーバー寄りすぎて汎用言語じゃないと感じた。QBasicやExcelでWebアプリ作るみたいに無理すれば使えるけど、言語もコミュニティもサーバーアプリに偏ってるのが証拠だよ。" userName="rickcarlino" createdAt="2025/06/05 09:16:06" color="">}}




{{<matomeQuote body="Elixir/Erlang/OTPがサービス構築向けなのは正確で異論ないはず。サーバーというより常時稼働ジョブ向けだね。言語やエコシステムは汎用だけど、もっと汎用なのもある。PythonやBashスクリプトの置き換えに意外と良かったし、Mix.installとかTask.async_streamはすごいよ。" userName="lawik" createdAt="2025/06/05 13:44:29" color="#ff33a1">}}




{{<matomeQuote body="クライアントサーバーじゃない用途って具体的にどんなの？ゲームとかデスクトップ、モバイル、組み込み、システムレベルとか？どんな点を重視したいか興味あるんだよね。" userName="HappMacDonald" createdAt="2025/06/05 11:01:30" color="">}}




{{<matomeQuote body="俺の場合は組み込みシステムだった。コミュニティも言語もサーバークライアントに偏りすぎと感じたよ。ググるとWebアプリ前提の答えばかり。OTPも単純なことだと邪魔になる。PythonとかJSとか他の汎用言語の方が楽だったな。並列処理が重要じゃないとBEAM言語は主流言語に比べて利点がないんだよね。" userName="rickcarlino" createdAt="2025/06/05 11:32:51" color="#785bff">}}




{{<matomeQuote body="情報共有ありがとう。それならGolangかRustがいいかもね。俺はElixir歴9年で大好きだけど、君のケースには合わないと思うよ。Elixirはチューリング完全という意味では汎用だけど、CLIツール書きたいと思ったことは一度もないな。" userName="pdimitar" createdAt="2025/06/05 14:13:59" color="">}}




{{<matomeQuote body="俺は先日カスタムのバイオインフォマティクスパイプライン（CLI）をElixirで書いたよ。悪くない経験だったし、term_to_binaryでバイナリ保存できたのが素晴らしかったね。" userName="dnautics" createdAt="2025/06/05 17:16:20" color="#ff5c5c">}}




{{<matomeQuote body="そのCLIツールが、 Elixirで書かれたもっと大きなエコシステムと連携するなら、使うのはなおさら当たり前だね。久しぶり、ElixirForumで長いこと見なかったけど元気？" userName="pdimitar" createdAt="2025/06/06 00:37:12" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="CSSもXSL-Tもチューリング完全だから、それだけじゃ汎用言語の指標にならないと思うな。OS上の全てにアクセスできるかっていう「環境完全性」の方が大事。それができれば汎用として使える。ElixirはCLI書くのに向いてないみたいだね。" userName="bryanrasmussen" createdAt="2025/06/05 15:54:21" color="">}}




{{<matomeQuote body="俺が会った人が言う「汎用言語」の意味を明確にしただけ。でも実用的な話には同意だよ。Elixir好きだけどCLIツールには絶対向いてない。VM起動時間が遅すぎるんだ。Erlang/Elixirは多くのマイクロエージェントを協調させるのが得意だけど、使い捨てスクリプトやCLIにはGolang/Rustが最高だね。" userName="pdimitar" createdAt="2025/06/05 16:01:54" color="#38d3d3">}}




{{<matomeQuote body="完全に同意するよ。<br>周りの奴らが子供の頃に習った特定のPLを偶像化して、過剰評価してるのに何度もムカついたんだ。みんなが「${obviously_difficult_thing}を${obviusly_niche_language}で実際にやれる！」って言うのを聞くと、PTSDレベルの反応が出るのも理解できるよ。俺もそうなる。<br>優秀な物理学者なら、つまようじやトイレットペーパーの芯なんかでラウンジチェアを作れるだろうけど、それは皆にとって現実的じゃないだろ。それは趣味で好きにやればいいけど、量産方法みたいに言うのは違うだろ？PLも同じさ。多くのPLはニッチな研究レベルに留まるべきだったんだ。人間は簡単に夢中になって、客観性を失うからな。お前のイライラ、マジでよく分かるよ。" userName="pdimitar" createdAt="2025/06/07 17:14:04" color="">}}




{{<matomeQuote body="俺はElixirの大ファンだけど、CLIを作るのにElixirはまず使わないな。" userName="phinnaeus" createdAt="2025/06/05 11:12:41" color="">}}




{{<matomeQuote body="BEAM VMは計算が重いタスクは苦手なんだ。でもパフォーマンスが劣る分、ErlangのOTPフレームワークが持つ安定性がすごい。あと、BEAMの実行モデルのせいで、システムドライバーみたいな既存のCプログラムとの連携は“難しい”。できなくはないけど、落とし穴が多いから注意が必要だ。" userName="greybox" createdAt="2025/06/06 10:51:24" color="#785bff">}}




{{<matomeQuote body="スクリプトにはElixirが良いと思うよ。Flowモジュールを使うと並行コードが非並行コードみたいに見えるからね。ファイル内に依存関係も書けるし。他の言語で試したんだけど、シングルスレッドから並列にする時の変更がElixirが一番少なかったんだ。Clojureは全体的なコード行数は一番少なかったけどね。" userName="bcrosby95" createdAt="2025/06/05 17:23:32" color="#ff5733">}}




{{<matomeQuote body="君の中では、「汎用」言語と「特定」言語って何が違うんだ？俺はコミュニティと、その言語が何にフォーカスしてるかだと思うけど。" userName="drekipus" createdAt="2025/06/05 11:36:49" color="">}}




{{<matomeQuote body="あぁ、君が言ってたように、言語が作られた時の歴史的な設計思想ってのもあるな。BEAMの場合は、すごく特定目的だったし。" userName="rickcarlino" createdAt="2025/06/05 12:14:49" color="">}}




{{<matomeQuote body="俺が言いたいのは、ElixirでCLIは書けるってことだよ。俺は書いたことがある。ゲームもElixirで書ける（他の人がね、俺はやってない）。それにはメリットとデメリットがある。Elixirコミュニティはこれらの分野でどんどん進化してるよ。俺はCでWebアプリを書くこともできるだろうけど、書かないな。" userName="borromakot" createdAt="2025/06/05 13:25:02" color="#785bff">}}




{{<matomeQuote body="正直、Elixirでゲーム書くより、CでWebアプリ書く方がずっと簡単だと思う。" userName="Capricorn2481" createdAt="2025/06/05 15:54:59" color="">}}




{{<matomeQuote body="アプリにGenServerがいらないなら使うなよ。<br>Elixirはゲーム向きじゃないけど、OTPモデルに合わないものも書けるんだぜ。<br>" userName="gchamonlive" createdAt="2025/06/05 12:01:41" color="">}}




{{<matomeQuote body="OTPを使ってない大規模なElixirのプロダクションシステムって、なんか例ある？<br>" userName="rickcarlino" createdAt="2025/06/05 12:24:24" color="#38d3d3">}}




{{<matomeQuote body="言語の設計やコミュニティ、エコシステムが適用範囲を決めるんだ。<br>個人的な経験やElixirの歴史、実際に作られてるものから、俺はElixirは汎用言語じゃないって結論なんだ。<br>でも、本来の用途には良い言語だと思うぜ。<br>" userName="rickcarlino" createdAt="2025/06/05 12:47:36" color="#785bff">}}




{{<matomeQuote body="でも、君は汎用言語の意味を勝手に変えて、皆を混乱させてるぞ。<br>一般的な慣習に従って、Elixirは汎用言語だけど、ドメインによっては適用範囲が限られるって認めればいいじゃんか。<br>" userName="gchamonlive" createdAt="2025/06/05 12:50:29" color="#785bff">}}




{{<matomeQuote body="いや、そうは思わんね。<br>Elixirはコンパイラ書くのにも最高だよ。<br>例えばこれ→https://github.com/elixir-dbvisor/sql<br>高度なパターンマッチングがない他の言語より、優れてるとさえ言えるんじゃないか？<br>" userName="schultzer" createdAt="2025/06/05 17:57:16" color="#ff5c5c">}}




{{<matomeQuote body="それってさ、MLとかLispの子孫言語なら、どれも同じじゃん。<br>" userName="pjmlp" createdAt="2025/06/06 09:00:58" color="">}}




{{<matomeQuote body="「Elixirを汎用言語と呼ぶことに異議あり」って意見だけど、俺も別にコメントしようと思ってたんだよ。<br>誰かが指摘してくれて嬉しいぜ。<br>まさに+1だね。<br>" userName="greybox" createdAt="2025/06/06 10:45:20" color="">}}




{{<matomeQuote body="これを言いに来たんだ。<br>素晴らしい汎用言語って、プログラミングだけじゃなくて、持ち運びやすさも重要だろ？<br>俺はGoが一番だと思うね。<br>もしElixirアプリがバイナリにコンパイルできて、そのまま動かせたら、最高の汎用言語になるのにな。<br>それまでは、本来のクライアント／サーバー言語って感じだな。<br>" userName="westoque" createdAt="2025/06/05 14:44:46" color="#38d3d3">}}




{{<matomeQuote body="これを見てくれよ。<br>https://github.com/burrito-elixir/burrito<br>" userName="borromakot" createdAt="2025/06/05 15:06:30" color="#ff33a1">}}




{{<matomeQuote body="CursorでElixir＼Phoenixを試したら、agentic codingがめっちゃ良かったんだ。<br>TDDとかドキュメントリンク付きの指示で、Sonnet 4がPhoenix CLIをうまく使ってボイラープレートを減らしてくれたり、テストで確認してくれたりした。<br>他のフレームワークと違って複雑になっても迷わないし、Sonnetがコード書くのを見るのは新しい言語を学ぶのに最高！<br>Elixirに興味持ったよ。" userName="CompoundEyes" createdAt="2025/06/05 10:16:38" color="#45d325">}}




{{<matomeQuote body="LLMコードが流行ってから1年くらいElixir＼Phoenix＼LiveView使ってるけど、マジで革命的だよ。<br>「最初何すればいいの？」とか「これコンパイルできない！」みたいな問題がLLMペアプロのおかげでほぼゼロになった。<br>Pythonとかから移ってきたけど、async workersとか全部入りで超ラク。<br>Google CloudでPDF OCRゼロから作った時も、認証情報入れただけで動いたんだ！<br>魔法みたいで超おすすめ。" userName="ricw" createdAt="2025/06/05 15:54:56" color="#38d3d3">}}




{{<matomeQuote body="エージェントコーディングには厳密な型システムがある言語が最高だって前々から言ってるんだ。<br>厳しい言語だとLLMが変なコード書きにくいし、コンパイルエラーとかテストで確認しやすいからね。<br>今はRustが一番良い感じ。<br>人気あってエコシステムも良いし、エラーメッセージも親切で、コンパイル時保証が多い。<br>LLMも`cargo check`とかテスト使って動くまで繰り返すのが結構上手くなったよ。" userName="the_duke" createdAt="2025/06/05 11:25:40" color="#38d3d3">}}




{{<matomeQuote body="型だけじゃ足りないんだよ。<br>関数の動きは名前とかドキュメント、テストが大事。<br>型、テスト、Evalsを一つにするフレームワークが必要だと思うな。<br>詳しくはここ見て！<br>https:＼＼nilesh.trivedi.link＼thoughts＼we-need-a-formal-theory..." userName="nileshtrivedi" createdAt="2025/06/05 11:44:01" color="#ff5c5c">}}




{{<matomeQuote body="LLMは恩恵だよ、きっと。<br>新しいニッチな言語Crystalでプロジェクト書くのに最高だった。<br>足りないライブラリ作ってくれたり、詰まった時に助けてくれたり。<br>説明もSO（Stack Overflow）より分かりやすいことも！<br>作ったプロジェクトはこれ→https:＼＼github.com＼TedSinger＼chatfile＼<br>言語はこれ→https:＼＼crystal-lang.org＼ - 超快適だよ。" userName="fernmyth" createdAt="2025/06/05 03:17:52" color="#ff5c5c">}}




{{<matomeQuote body="Crystalって良いよね！<br>そのプロジェクトではどのLLMを使ったの？<br>前使った時は、LLMがCrystalとRubyのコードをよく間違えてたんだよねー。" userName="3by7" createdAt="2025/06/05 09:57:55" color="">}}




{{<matomeQuote body="Cursorのデフォルト設定、多分`cursor-small`を主に使ってたかな。<br>関数名とか書いて、あとはtab-completeにコード書かせてる感じ。<br>確かにCrystalとRubyは間違えるけど、コンパイラが見つけてくれるから大丈夫だよ。" userName="fernmyth" createdAt="2025/06/05 12:23:58" color="">}}




{{<matomeQuote body="あー、それ私の経験と一緒だわ。<br>だから、Crystal初めての人には良いかもだけど、私みたいに慣れてる人にはちょっとイライラする経験になるかもね。" userName="3by7" createdAt="2025/06/05 13:13:47" color="">}}




{{<matomeQuote body="Crystalコード生成の失敗は全部ログに残しておくと良いよ。<br>それでLLMに修正方法のドキュメント作らせるの。<br>そうすると失敗する確率がめっちゃ減るから試してみて！" userName="sitkack" createdAt="2025/06/05 13:15:40" color="#38d3d3">}}




{{<matomeQuote body="この記事の「プログラミング言語はLLMにもマーケティングが必要」って洞察、なるほどって思ったよ。<br>Javaみたいな決定権ある人向け、Ruby on Rails＼Rustみたいな開発者向けって波があって、次はLLMフレンドリーにゼロから作られた言語の「第三波」が来るんじゃないかな。" userName="miki123211" createdAt="2025/06/05 16:11:03" color="#ff5733">}}




{{<matomeQuote body="LLM向けに作られてるプログラミング言語を探してたんだ。ChatGPTにヒントもらって調べ始めたよ https://chatgpt.com/share/6841d3b7-13a8-800f-9bcc-0f7859114c...<br>素人考えだけど、LLMには強い型付けとか、簡潔さ、あと複数の書き方ができない（選択肢がない）構文が良いと思うな。<br>LLMやAIエージェント向けに設計されてる言語もいくつか見たけど、一番期待できそうなのはMoonbit langだったね https://www.moonbitlang.com/blog/moonbit-ai。構文だけじゃなく、エージェントと連携する機能とかあって別格だよ。" userName="inerte" createdAt="2025/06/05 17:30:12" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Moonbit lang、確かに面白いね。Hacker Newsに投稿されてるけど、無視されてるみたいだ。" userName="irq-1" createdAt="2025/06/05 18:32:46" color="">}}




{{<matomeQuote body="もし徹底的にやるなら、トークン効率のために密度の高い言語が良いんじゃない？LLMが使うんだから、人間が読みやすいかは後回しで。当然、答えはPerlだ！<br>冗談はさておき、LLM向けの高レベル言語を作って、それを開発者向けの言語に変換するレイヤーを用意するってのは面白そうだね。" userName="morkalork" createdAt="2025/06/05 16:15:00" color="">}}




{{<matomeQuote body="情報密度が高いのはLLMにとって良いことだね。ash-hq.orgはその恩恵を受けてるけど、まだ新しいから大変かな。https://hexdocs.pm/usage_rulesみたいなのが助けになるよ。" userName="borromakot" createdAt="2025/06/05 18:16:33" color="#ff33a1">}}




{{<matomeQuote body="＞トークン効率のために密度の高い言語が良いんじゃない？<br>それならLispだよ。Lispマクロほど書くトークン数を圧縮できるものはないね。" userName="jimbokun" createdAt="2025/06/05 18:41:42" color="">}}




{{<matomeQuote body="俺が見た中で一番密度の高い言語はAPLかな。<br>でも、LLMが学習できるほどコードの量が無いかもしれないけどね。" userName="reddit_clone" createdAt="2025/06/05 20:32:26" color="">}}




{{<matomeQuote body="『LLM向けドキュメント』みたいな新しいツールをいくつか見たよ。ElixirやPhoenixもこういうのを提供できると良いね、まだ無ければ。<br>関数型プログラミングは副作用がないからLLMと相性抜群だよ。俺はLLMにNode.jsで関数型スタイルを書かせてテストしてるけど、それが一番楽だからね。" userName="tobyhinloopen" createdAt="2025/06/05 06:08:35" color="">}}




{{<matomeQuote body="＞どんなライブラリでもusage-rules.mdファイルを含めることができる<br>——これは、LLMのコンテキストウィンドウ向けに特別に設計された非常に簡潔なドキュメントで、ライブラリ使用時の注意点などを説明している。<br>これ、人間にも便利だよね。個人的には将来的にコンテキストウィンドウの限界がなくなると良いなと思ってて。コンテキストウィンドウがCPUのレジスタみたいな一時領域で、外部に大きなメモリがあってLLMがアクセスできるようになるとか。" userName="badsectoracula" createdAt="2025/06/05 09:04:08" color="">}}




{{<matomeQuote body="俺の経験だと、ClaudeはElixirまあまあいけるけど、ログ出力しすぎる傾向があるね。Geminiはかなりダメ。o3は結構すごいけど、俺は主にClaudeで詰まった時のレビューに使ってるよ。<br>GeminiはReactのベンチマークで良い点取るように調整されてる気がするな。" userName="te_chris" createdAt="2025/06/05 08:07:16" color="#ff5c5c">}}




{{<matomeQuote body="tidewaveを使えば、LLMがiexにアクセスできるんだ。自分でREPLループでデバッグしたり調査したりできるのがマジで最高！<br>ElixirはこれからのLLMの時代に絶対繁栄すると思うよ！" userName="bad_haircut72" createdAt="2025/06/05 04:50:04" color="#45d325">}}




{{<matomeQuote body="Elixir全然知らんけど、雰囲気でアプリ開発してるよ。使う言語とかフレームワークは聞かず、「ブログでElixir聞いた」とか「Hacker Newsでこの記事見た」とかで始めてる。<br>Phoenix以外に何検討すべきかLLMに聞いたけど、結局Phoenixにしたよ。Geminiはたまに詰まるけど、ChatGPTにヘルプ頼んで乗り切ってる。<br>昔、コード書いてもエラーが簡単に見つけられなかった頃を思い出すな。他の人の目ってマジ助かるんだよね。コードを書いてない別のLLMも、これまたマジで助かるわ。" userName="jtbayly" createdAt="2025/06/05 19:41:54" color="#38d3d3">}}




{{<matomeQuote body="あんま経験ないけどさ、LLMってElmとかRustみたいに強力な静的解析と最高のコンパイラUXを持つ言語だと、うまく機能するみたいだよ。" userName="artem2471" createdAt="2025/06/05 19:33:05" color="">}}




{{<matomeQuote body="ClaudeモデルがElixirとかErlangの能力だと、o3とかgemini2.5、grok3-think、ds-r1と比べて断然リードしてるね。<br>Elixirはワークフローとかパイプラインにマジ向いてるし、利用可能なハードウェアリソース全部使えるしね。だから今後、agenticなワークフローでElixirがもっと使われるようになるのは理にかなってるんだけど、新しい分野のエンジニアやアーキテクトはPythonに突っ走ってるんだよね。ってことで今に至る。" userName="Dowwie" createdAt="2025/06/05 19:10:48" color="#ff5c5c">}}




{{<matomeQuote body="ここ数日ElixirでGemini使ってるんだけど、LLMが他の使ってる言語より成功しないんだよね。たまに詰まるの。例えばJWTのエンコード/デコードライブラリの使い方がわからなくて、自分で介入しないといけなかったり。<br>GoとかRuby、特にJS/TSでのありえないパフォーマンスにすでに慣れすぎちゃったのかな？" userName="aczerepinski" createdAt="2025/06/05 19:49:33" color="#ff5733">}}




{{<matomeQuote body="GeminiはElixirだと良くないね。Sonnetが断然一番良いよ。" userName="debian3" createdAt="2025/06/06 00:33:04" color="#38d3d3">}}




{{<matomeQuote body="GitHub CopilotのSonnet 4もElixirだと良くないな。ただ、それがCopilotのせいなのかSonnetのせいなのかはよくわからないんだけどね。" userName="l2dy" createdAt="2025/06/06 13:55:44" color="#45d325">}}




{{<matomeQuote body="良い記事だね。このLLM時代に、コミュニティとして先手を打ってどう関連性を保つかっていうアドバイスくれてるから。<br>小さく圧縮された「LLM docs」のステップは、semantic webのアイデアを思い出させるな。あれは普及しなかったけど、検索がどんどんAIに置き換わる（かつて主に検索で知られてた企業ですらね）中で、こういう戦略はどんどん重要になると思う。" userName="mkesper" createdAt="2025/06/05 05:54:37" color="#ff5733">}}




{{<matomeQuote body="もう何ヶ月も、仕事でLLMを使ってElixirをフルタイムで書いてるよ。興味ある人いたらAMA（Ask Me Anything）やるよ。<br>アプローチでZachとは違う考えもあるけど、この記事にはマジ共感したわ。10年以上Elixirフルタイムでやってるから、これで普及が進むのを見たいな。" userName="rhgraysonii" createdAt="2025/06/05 13:47:16" color="#ff5c5c">}}




{{<matomeQuote body="どんなセットアップか気になるなー。CursorとかWindsurfみたいなIDE？Zedみたいなエディタ？それともClaude Codeみたいなエージェントを直接？<br>tidewave.aiは使ってみた？Joseのデモ楽しそうだけど、まだ試してないんだよね。<br>LLMが特に輝いたユースケースってどんなの？<br>俺はSvelteとかLiveSvelteみたいな学習曲線下げるのに使うのがマジよかったよ。（Rails歴20年、Erlang＆Elixir歴10年くらいだけど、最近はプロダクト側が多い者より）" userName="andruby" createdAt="2025/06/05 14:02:23" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
