+++
date = '2025-03-11T00:00:00'
months = '2025/03'
draft = false
title = 'TypeScriptが10倍速くなる！開発者の期待が高まる理由とは'
tags = ["TypeScript", "開発ツール", "パフォーマンス", "プログラミング", "技術ニュース"]
featureimage = 'thumbnails/green1.jpg'
+++

> TypeScriptが10倍速くなる！開発者の期待が高まる理由とは

引用元：[https://news.ycombinator.com/item?id=43332830](https://news.ycombinator.com/item?id=43332830)

{{<matomeQuote body="やあ、みんな！TypeScriptチームのDaniel Rosenwasserだ。今回は大興奮で発表するよ！Ryan Cavanaugh（俺の開発リーダー）と俺がここにいるから、何か質問があれば気軽に聞いてくれ。ブログで紹介したDiscordのAMAも今度の木曜日にあるから、ぜひ参加してね！" userName="DanRosenwasser" createdAt="2025-03-11T14:39:39" color="#ff5733">}}

{{<matomeQuote body="Daniel、こんにちは！俺はTypeScriptコンパイラAPIに依存したツールをいっぱい作ってるんだ。CJSのコードベースはブラウザの標準モジュールに読み込むのがかなり難しいから、Jakeたちが言ってた標準モジュールベースのバージョンをすごく楽しみにしてるんだ。それってまだ進行中？ツール作成者向けにネイティブコンパイラはどう配布されるの？WASMになると思うけど、コンパイラAPIは互換性あるのか？ツールのマイグレーションも難しいかもってちょっと心配。<br>追記: TS APIの上で動くライブラリを維持してるんだけど、それがさらに他のライブラリで使われているんだ。フレームワークの静的解析とか、いろんなリンターやコンパイラで使われてる。だから依存チェーンが結構深くて広がってるんだ。TSコンパイラだけがJSのインタープロトにして、他はそのまま？それともTSエコシステムのツールもGoに移行する必要がある？" userName="spankalee" createdAt="2025-03-11T15:21:21" color="#ff33a1">}}

{{<matomeQuote body="記事を見る限り、彼らはGoで書いているみたいだから、多分Goのバイナリを配布するって感じだね。" userName="lytedev" createdAt="2025-03-11T15:25:31" color="">}}

{{<matomeQuote body="多分、WASMでも配布されるかも。そうすればJavaScriptコードベースに統合しやすいし。" userName="maxloh" createdAt="2025-03-11T15:36:43" color="">}}

{{<matomeQuote body="WASMを実行する方がV8でJSを実行するより速くなるんかな？" userName="nine_k" createdAt="2025-03-11T17:44:43" color="">}}

{{<matomeQuote body="俺の経験上、WASMをJSより速くするのは結構難しいよ。特にJSが劣悪で効率が悪くない限りは。LLVM生成のWASMがあればVanilla JSを上回る可能性があるけど、JSとの互換性のオーバーヘッドを考えると確実じゃないし、何をするかによるよね。2025年の時点で、GoのWASMジェネレータはLLVMより劣っていて、Vanilla JSパフォーマンスに並ぶのも難しい。<br>GoでWASMを速くする方法があるらしいけど、まだ試してない。" userName="airforce1" createdAt="2025-03-11T18:20:56" color="#785bff">}}

{{<matomeQuote body="GolangとLLVMのWasmバックエンドは、Wasm GC拡張をまだサポートしていないみたいだね。これがJSと本気で対等になるためには必要だろうし、今の方式ではGoのコードとGC実装を一緒に実行するのは理にかなってないと思う。" userName="zozbot234" createdAt="2025-03-11T18:35:58" color="">}}

{{<matomeQuote body="GolangにおけるWasmGCの主要な障害は、(A) Goは移動しないGCを期待していて、WasmGCはその提供を義務付けられていないこと。(B) WasmGCはGoが必要とする内部ポインタをサポートしていないことだ。" userName="mappu" createdAt="2025-03-11T21:27:16" color="#ff5733">}}

{{<matomeQuote body="これらの問題は、WasmGCにコンパイルされるどの言語でも発生するから、要するにWasmGC用の新しいGCされた型は、普通のWASMの線形ヒープとは完全に無関係なんだ。基盤部分を再編成しないといけないし、どの言語でも関係なくて。" userName="zozbot234" createdAt="2025-03-11T23:08:29" color="">}}

{{<matomeQuote body="Goはプログラマーに生ポインタを公開しているから、その説明だとGoのセマンティクスを実装するにはまだ初歩的すぎると思う。これを実現するにはWasmGC 2.0が必要だろうね。ただ、Luaには適しているかもしれない。" userName="mappu" createdAt="2025-03-11T23:30:49" color="">}}

{{<matomeQuote body="Goにはポインタ演算のサポートは無いと思うけど、参照っぽいものがあるだけだよ。" userName="zozbot234" createdAt="2025-03-12T08:03:36" color="">}}

{{<matomeQuote body="unsafeパッケージを使えばポインタ演算もできるけど、確かに見た目は良くないね。" userName="pjmlp" createdAt="2025-03-12T14:03:22" color="">}}

{{<matomeQuote body="Goは速いし素晴らしいけど、Rustの方がパースやASTの構造では優れている気がする。Goを選んだ理由は何なの？" userName="no_wizard" createdAt="2025-03-11T14:59:14" color="#785bff">}}

{{<matomeQuote body="シンプルって言われるけど、それはGoの大きな強みだよ。悪いことじゃない。" userName="prisenco" createdAt="2025-03-12T03:27:21" color="">}}

{{<matomeQuote body="C#スタイルのOOPを避けられることで生産性が上がっていると思う。Goのシンプルさが助けになってるね。" userName="whattidywhat" createdAt="2025-03-12T11:19:40" color="#ff5c5c">}}

{{<matomeQuote body="RustよりGoが選ばれた理由はコンパイラのポートが速く、GCのあるネイティブコードの強みが大きいからだよ。" userName="commandersaki" createdAt="2025-03-12T12:14:50" color="#785bff">}}

{{<matomeQuote body="言語選びは熱いトピックで、GoはTypeScriptのパターンに似ててポーティングが楽だと思う。" userName="DanRosenwasser" createdAt="2025-03-11T15:05:33" color="#785bff">}}

{{<matomeQuote body="＞C#は明らかに選ばれるべきだが、この決断には何か訳があるんだろうか？彼の意見も聞きたい。" userName="electroly" createdAt="2025-03-11T15:44:06" color="">}}

{{<matomeQuote body="Andersがその話に答えている。Goは自動GCを持ちながら低レベル言語に近いと言ってたよ。" userName="fixprix" createdAt="2025-03-11T15:52:22" color="#ff5733">}}

{{<matomeQuote body="＞C#を作ったから全てに使うべきというのは変な論理だよね。言語は問題に合わせて選ぶべきだよ。" userName="jodrellblank" createdAt="2025-03-11T17:23:29" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="C#はMicrosoftの言語で、TypeScriptは2番目のMicrosoft言語だと思う。C#のリードアーキテクトがTypeScriptの変更に関わっているのもそのため。もしFordが車を作ってChevyのエンジンを使ったら、気にならない？" userName="uticus" createdAt="2025-03-11T18:54:19" color="#ff33a1">}}

{{<matomeQuote body="C#とTypeScriptどっちも良くない印象だね。新しいコードベースを始める人は、両方を避けてGoに行くんじゃないかな。" userName="jay_kyburz" createdAt="2025-03-11T19:23:30" color="">}}

{{<matomeQuote body="．NETの実行ファイルはランタイムが必要だけど、Goのは不要。TSCが多くの場所にインストールされているから、急にこの負担はきつい。Javaにも似たような問題があるよね。" userName="almosthere" createdAt="2025-03-11T20:45:54" color="">}}

{{<matomeQuote body="．NETはJITとAOTターゲット用に自己完結型の単一ファイル実行可能ファイルを作っているし、Javaもユーザーにランタイムのインストールを要求しない。JLinkやJPackageも長い間あるし。" userName="vips7L" createdAt="2025-03-11T23:24:44" color="">}}

{{<matomeQuote body="オープンソースの世界では政治的なデメリットが多いね。それにC#はWindowsを離れるとあまり高品質なランタイムとして評価されてない。" userName="vessenes" createdAt="2025-03-11T15:55:24" color="">}}

{{<matomeQuote body="Anders HejlsbergがMicrosoftで重要なプロジェクトに関わっている。これが政治的な利点だと思う。オープンソースの大きな世界はこの決定には影響しない。" userName="electroly" createdAt="2025-03-11T15:59:23" color="">}}

{{<matomeQuote body="GoはRustよりも遥かに簡単だと思う。それが理由だな。Microsoftがしっかりしたオープンソースゲームエンジンを支援しない理由が知りたい。" userName="999900000999" createdAt="2025-03-11T15:41:08" color="">}}

{{<matomeQuote body="GodotのC#を支援したことはあるし、ウェブで動くように手助けするのも良いね。少しの支援でも、C#をウェブで動かせるのは素晴らしいと思う。" userName="cardanome" createdAt="2025-03-11T17:45:05" color="#ff33a1">}}

{{<matomeQuote body="GoとC#の比較は興味深いし、色々な意見があるね。両者ともGCやメモリ管理、並列処理に優れていると思うが、C#がGoを選んだ理由を知りたい。" userName="fabian2k" createdAt="2025-03-11T15:24:17" color="">}}

{{<matomeQuote body="C#は悪くないけど、AOTコンパイルされたファイルがたくさんできるのが、Goのゼロ依存バイナリには向かないんじゃない？" userName="typ" createdAt="2025-03-11T16:22:59" color="">}}

{{<matomeQuote body="C#はネイティブAOTなしでも単一バイナリの実行ファイルが作れるんだよね。" userName="fabian2k" createdAt="2025-03-11T16:55:50" color="">}}

{{<matomeQuote body="でも、.NETランタイムが大きいから、Goのバイナリよりはかなりサイズが大きくなるんじゃないの？" userName="cardanome" createdAt="2025-03-11T17:46:53" color="">}}

{{<matomeQuote body="Goはランタイムがあるから、他のアプリに埋め込むのが結構難しいよね。これからTypeScriptコンパイラが他のプロジェクトに埋め込まれる未来ってどうなるんだろう？（DenoやJupyterのカーネルとか）今はプロセス間APIの話があるみたいだけど、技術的な詳細があまり不明だよね。TS7でコンパイラを埋め込むことはできるようになるのかな？それともサポートされないのかな？" userName="noodletheworld" createdAt="2025-03-11T15:01:44" color="#785bff">}}

{{<matomeQuote body="よく最適化されたJavaScriptはC++の性能に約1.5倍まで近づけるんだ。ゲームエンジンをJavaScriptで開発した経験があるからわかる。なんでTypeScriptチームは既存のTS/JSコードベースの最適化じゃなくて全く新しい技術に移行してるのか理解できないな。" userName="AshleysBrain" createdAt="2025-03-11T15:07:26" color="#ff5c5c">}}

{{<matomeQuote body="チームの歴史背景を考えると、AOTコンパイルされたC#の方が良くない？" userName="pjmlp" createdAt="2025-03-11T14:51:58" color="">}}

{{<matomeQuote body="決定に関与してないけど、C#アプリケーションは起動時間とメモリ使用量が高くなるんじゃない？CI/CDボックスで早く立ち上げて動かす必要があるコンパイラにとっては大事なポイントだよね。LSPみたいなデーモンにはC#が合うと思うけど。" userName="Cthulhu_" createdAt="2025-03-11T15:44:18" color="">}}

{{<matomeQuote body="ありがとう、でもなんで.NETエコシステムのルーツを持つチームがC#/Native AOTを使わないと決めたのかは全然わからないね。" userName="pjmlp" createdAt="2025-03-11T15:18:10" color="">}}

{{<matomeQuote body="C#とGoは直接の競争相手だし、Goの利点はC#にもある機能なんだよね。トップレベル関数の欠如を除いては。別にそれは問題ではなくて、ファイルごとにクラスを定義してメソッドを静的にすればいいだけだし。プラットフォームサポートに関する意味のある違いもない、.NET AOTはWin/Mac/Linuxに対応してるし、開発者が使う全プラットフォームをサポートしてる。彼はこれら全てを知ってるだろうから、決定には本質的には機能に関するものではないと考えられる。おそらく.NETチームやMicrosoft内部での政治的な問題が原因なんじゃないかな。彼が使おうとしてバグにイライラしたのかも。戦闘に耐えた感じが本当の理由かも。全貌が見えないのは明らかだよ。" userName="mike_hearn" createdAt="2025-03-11T20:15:43" color="#ff5733">}}

{{<matomeQuote body="速い開発ツールは素晴らしいね！TSチームが開発体験を真剣に考えてるのはいつも嬉しい。ただ、もしTSのコードがTS以外で書かれるようになると、コアチームがTSを常に使うことができなくなって、開発体験に影響が出るかも。それがFlow（OCamlで書かれている）の失敗例だと思うけど、チームはどう考えてるんだろう？" userName="bcherny" createdAt="2025-03-11T14:45:35" color="#38d3d3">}}

{{<matomeQuote body="bcherny、そうなんだ！自己利用（dog-fooding）はTSの開発体験を良くする大きな要因だよね。テストやインフラも整ってるし。ただし、これは補足で開発者のフィードバックにも頼らないといけないと思うし、コンパイラや言語サービス以外のTSを書く必要もあると思うよ。" userName="DanRosenwasser" createdAt="2025-03-11T15:56:20" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="面白い！他のインフラチームの問題を見てると、確かに難しい問題に思えるね。TSコンパイラエンジニアがGitHubでサポートローテーションを増やすってこと？TSチームが所有するフルスタックのTSアプリもあったりするのかな？それをみんなで持とうとするの？TSチームはMSFTの他のチームにローテーションする予定もあるの？" userName="rattray" createdAt="2025-03-12T01:44:15" color="">}}

{{<matomeQuote body="最終的には、ブラウザのJS独占を打破する必要があると思ってる。WASMまたは別の手段でのパフォーマンスの均等化が必要だね。そうすれば、開発者が全てのツールの中で快適に高性能な言語を使えるようになるんだ。" userName="pjc50" createdAt="2025-03-11T14:51:33" color="">}}

{{<matomeQuote body="まず、このスレッドと記事は言語やアプリの実行パフォーマンスとは関係ないよ。tscコンパイラの実行時間だけの話だし。次に、JavaScriptはすでに速いから、パフォーマンスを上げるためにWASMは現実的ではないし、JSの遅さはコード実行以外の問題に起因することが多いよ。" userName="austin-cheney" createdAt="2025-03-11T16:38:44" color="">}}

{{<matomeQuote body="この見解と、TypeScriptチームがコンパイラをGoで書き直して10倍速くなったことはどう整合性を取るの？TSで維持できたかもしれないのに、なぜそうしなかったのかな？" userName="sebzim4500" createdAt="2025-03-11T19:42:38" color="#ff33a1">}}

{{<matomeQuote body="この動画でも少し言ってたけど、TypeScriptのコードベースは多態的な関数呼び出しが多くて、JIT最適化が難しいんだ。JSからGoにしたことで3.5倍の改善があったよ。残りの10倍はマルチスレッド化から来てるけど、JSコンパイラでは効率的にできないからね。" userName="auxiliarymoose" createdAt="2025-03-11T22:56:01" color="#ff5733">}}

{{<matomeQuote body="彼らのテストケースの詳細はわからないけど、もっと速い言語を使ったら1,000,000倍速くなるかもしれないと知ってる。個人的に60k行以上のコードを持つアプリがあったけど、tscは大体13秒でコンパイルしてた。SWCだと約2.5秒だね。このことから、パフォーマンスの改善はコンパイラをいじるよりもアプリケーションを改良する方が大きいと思うんだ。" userName="austin-cheney" createdAt="2025-03-11T21:13:12" color="">}}

{{<matomeQuote body="短くて分かりやすいコメントありがとう。" userName="mmcnl" createdAt="2025-03-11T19:21:20" color="#ff5733">}}

{{<matomeQuote body="ブラウザ以外のパフォーマンスを探してるの？DOMに関しては他の言語がパフォーマンスを持ってくるケースは見ないけど、キャンバスやWebGLに直接描画しないと信じられないよ。" userName="bloomingkales" createdAt="2025-03-11T15:32:24" color="">}}

{{<matomeQuote body="Flowは遅くて不安定で、バージョンアップが難しいから依存関係も更新しないといけないんだ。おかげでFlowタイプを持つライブラリが減って、今やTypeScriptの時代になったよ。" userName="jillyboel" createdAt="2025-03-11T14:54:20" color="">}}

{{<matomeQuote body="うちの経験は逆で、かなり大きなFlowタイプのコードベースが100ms未満で全チェックできるんだ。TSに変換したときは数分かかったよ。Flowは境界でのタイプがパラレル化を助けて、TSより正確なエラーメッセージを出せるんだ。ただ、サードパーティライブラリのサポートはほぼ死んでるけど。" userName="matclayton" createdAt="2025-03-11T19:06:40" color="#ff33a1">}}

{{<matomeQuote body="プロジェクトが柔軟なスクリプト言語から始まることが多いけど、JSは十分パフォーマンスがあるんだ。90%のことはブラウザVMで十分速く動く。でも結局はよりネイティブな表現が勝つことが多い。" userName="zoogeny" createdAt="2025-03-11T16:25:49" color="">}}

{{<matomeQuote body="高プロファイルなプロジェクトが低レベルから高レベルに移行したことは思いつかないな。プリズマのRustからTypeScriptへのリライトも特別だと思うけど、コンパイラはJSでの良いケースじゃないよ。" userName="throwitaway1123" createdAt="2025-03-11T16:59:06" color="#45d325">}}

{{<matomeQuote body="プリズマの件はちょっと話がずれてる。WASMを使ってるけど、主にJS内でクエリ実行が行われてて前のアーキテクチャでは両方をRustが扱ってたんだ。JSが多いと別のランタイムでやり取りするのは普通は意味がないよ。" userName="zoogeny" createdAt="2025-03-11T17:19:10" color="">}}

{{<matomeQuote body="WASMはクエリプランを生成するために使われるけど、クエリ実行は完全にTypeScript内でされるんだ。低レベルから高レベルへの移行はあり得るって話を否定したいだけだよ。コンパイラは分散メモリーが得意だし、すべてのワークロードに当てはまるわけじゃない。" userName="throwitaway1123" createdAt="2025-03-11T19:21:11" color="#785bff">}}

{{<matomeQuote body="今回の証拠は環境に依存してる限り、単に誤解を招くものだと思う。Rustのコードが速いのは間違いないけど、IPCのコストを上回る速さじゃないわけ。だから、新しいプロジェクトにJSランタイムを使うのがデフォルトに戻るのはどうかなって疑問を投げかけてる。これからのLLMsはもっと進化するし、古い考えを見直す時期だと思う。" userName="zoogeny" createdAt="2025-03-11T20:30:02" color="#785bff">}}

{{<matomeQuote body="ひとつのPrismaの例にとらわれず、緑のプロジェクトは必ずしも低レベルの言語に向いているわけじゃないって話をしたい。ソフトウェアの書き直しが言語の質を示すばかりじゃなく、間違ったドメインでの使用を避ける傾向があるのがポイント。低レベル言語は学習コストが高いから、気軽に選択されにくいのは事実だね。" userName="throwitaway1123" createdAt="2025-03-12T02:16:33" color="#785bff">}}

{{<matomeQuote body="”すべてのグリーンフィールドプロジェクトは必ず低レベル言語に向いている”ってのは誤読だと思う。これは仮定を疑うための呼びかけであって、絶対的な命令じゃない。そのため、インタープリタ型のスクリプト言語の適性を見直すつもりだ。" userName="zoogeny" createdAt="2025-03-12T05:03:58" color="">}}

{{<matomeQuote body="一番最初のコメントは「よりネイティブな表現が勝る」って意見への返答で、必然性とは言葉の使い方の問題がある。言語の書き直しは必ずしも言語の質を示すものじゃないわけで、こういう話に対して他のポイントに注意を向けてほしい。" userName="throwitaway1123" createdAt="2025-03-12T05:37:58" color="">}}

{{<matomeQuote body="言葉の定義に対して議論するのはあまり意味がないと思う。あなたが言ったことが「必然的」だれば、私が自動車の安全について議論する時には、その根拠ある議論が必要だ。" userName="zoogeny" createdAt="2025-03-12T06:16:56" color="">}}

{{<matomeQuote body="「必然的」って言葉の解釈が狭すぎる。あなたを誤解したと言われてもしょうがない。私はそんな絶対的な主張をしているわけじゃないから、この記事がどんな流れで書かれているかを見てほしい。" userName="zoogeny" createdAt="2025-03-12T08:25:25" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="私の主張は「必然性」に依存していない。低レベルの言語に不安を感じるのが普通で、誤用が多いのが理由。高レベル言語の方が好まれるのはそのためだと思うし、その点を理解してほしい。" userName="throwitaway1123" createdAt="2025-03-12T09:14:23" color="">}}

{{<matomeQuote body="目の前で技術が変わってる状況で、予想される技術に基づいて判断するのは難しい。特にOSソケットやファイルディスクリプタからデータを読み取るアプリでスクリプト言語を選ぶのが最適かどうかも疑問が残る。" userName="computably" createdAt="2025-03-12T04:04:02" color="#ff33a1">}}

{{<matomeQuote body="ソフトウェアが低レベルの言語に移行するのは必ずしも質が良いからじゃない、この流れには理由がある。数が増えると性能の要件が変わる場合も多いから、立ち上げからすべてを考えすぎるのは危険だと思う。" userName="anileated" createdAt="2025-03-12T07:28:43" color="#785bff">}}

{{<matomeQuote body="自分は未来を予測するつもりはないけど、新しい証拠に基づいて古い仮定を再考したい。LLMはずっと“オートコンプリート”かもしれないし、今後何十年もそうかもしれないけど、今の直感は今後2、3年で特にコーディングに関して能力が向上すると思ってる。実際に使ってみた経験から、そう感じるんだ。自分はPerl、Python、JavaScript、C++、PHP、Javaでプログラムを書けるし、Go、Rust、Elixir、C、Ruby、Swift、Scalaでも十分なアプリは作れると思う。6ヶ月前に“基本的なCRUDウェブアプリを書くのに何を選ぶ？”って聞かれたらTypeScriptって言ったかもしれない。でも今はその理由を疑問に思ってる。LLMの助けがあれば、RustやZigでウェブアプリを書くことに何の問題があるのか？" userName="zoogeny" createdAt="2025-03-12T08:58:13" color="#ff5c5c">}}

{{<matomeQuote body="LLMの助けがあっても、RustやZigを選ぶ理由は変わらない。メンテナンスの負担が増えて、競合他社に比べて開発速度が遅くなるから。競合は早く製品を出して、より少ない問題で済むし、サポートも受けやすい。あなたのプロダクトは速いかもしれないけど、彼らの方が早く動くし、動作も安定する。" userName="anileated" createdAt="2025-03-12T14:37:53" color="">}}

{{<matomeQuote body="アセンブリ言語のプログラマーを想像してみて。あなたは自分のスタイルが競争において優位性を持つと信じている。自分が“Cコンパイラ”を持ってきたら、そのアセンブリの質は関係なくなる。突然、10倍の量のアセンブリを生成できるからね。でも、生成されたアセンブリを見ることってどれくらいある？コンパイラは大量のアセンブリを生成するためのツールで、歴史的に見てもCコンパイラを使った人達はアセンブリを書いた人達よりも早く市場に製品を出せた。LLMがコンパイラのように、高レベルの指示を与えて自動でプログラミング言語に翻訳してくれるなら、その翻訳の品質が重要だ。" userName="zoogeny" createdAt="2025-03-12T17:37:50" color="#ff33a1">}}

{{<matomeQuote body="よくテストされたコンパイラは、LLMよりもかなり決定論的で、出力を検証せずに黒箱として扱える。" userName="Vaguely2178" createdAt="2025-03-12T18:19:28" color="">}}

{{<matomeQuote body="人間は決定論的じゃない。ジュニアエンジニアにコードを任せることもあるし、長期的には大きな違いが見えない。人間のミスを防ぐエンジニアリングプラクティスがあるから、それは捨てない。むしろ、強化すると思う。LLMにも人間と同じように厳しく検証する必要がある。コンパイラを黒箱として信頼するのは、信頼できる仕組みを作ったからだし、LLMにも同じことができると考える。" userName="zoogeny" createdAt="2025-03-12T18:27:19" color="#ff33a1">}}

{{<matomeQuote body="そう、だからこそ人間とLLMがメンテナブルなコードを書くことを望む。そうすればレビューやメンテナンスができるし、最初の質問に戻るけど、どのプログラミング言語がメンテナンスしやすいかってことになる。" userName="Vaguely2178" createdAt="2025-03-12T18:34:58" color="">}}

{{<matomeQuote body="ループに戻ってきたね。最初は“メンテナブルなアセンブリ”なんて気にしないって言ったけど、あなたはシステムの維持管理を求めて、私はコードの維持管理を求めている。だから、お互いの違いを受け入れよう。未来では、主にLLMによって書かれたコードでシステムを構築すると思うし、良いコードの基準も変わると思う。" userName="zoogeny" createdAt="2025-03-12T19:08:08" color="">}}

{{<matomeQuote body="ループにハマっているのはあなたが立場を変えているから。最初はLLMの出力をコンパイラの出力と比較したけれどそれが間違いだと指摘したら、次は人間と比較しだした。しかし、その場合LLMも人間と同じようにメンテナブルなコードを生成する必要があるということになる。また元の前提に戻ってきた。" userName="Vaguely2178" createdAt="2025-03-12T19:19:01" color="">}}

{{<matomeQuote body="コンパイラには決定論以外にも多数の要素がある。決定論が全てじゃないし、それによりコンパイラは評価する要素を持つ。LLMもコンパイラと同じ特性を持っている部分もあれば、人間のような特性もある。これがそのユニークさであり、システム設計においてその影響を理解する際は細かいアプローチが必要なんだ。LLMは高水準の指示をプログラミング言語に変換する点でコンパイラのようだし、この点で特有の制御が必要だということになる。" userName="zoogeny" createdAt="2025-03-12T19:25:57" color="">}}

{{<matomeQuote body="確かに、コンパイラには決定論以外の要素もあるけれど、決定論があるからこそコンパイラを黒箱として扱える。LLMはこの特性を共有しないから、その出力を検証する必要がある。それが維持しやすいソフトウェアの条件なんだ。" userName="Vaguely2178" createdAt="2025-03-12T19:31:53" color="">}}

{{<matomeQuote body="面白い疑問だけど、コンパイラが非決定的だったらどうする？アセンブリに戻るの？それとも、もう少し決定的にするためにコンパイラを頑張って改良する？それとも失敗の可能性を考慮してシステムを設計する？医療や航空業界は不完全な人間をどう扱うか学ぶことができるかも。あと、GoやRust、Zigの方がPythonやPHP、Ruby、JavaScriptより維持が難しいって本気で思ってるの？ちょっと馬鹿らしい気がするな。" userName="zoogeny" createdAt="2025-03-12T19:42:04" color="#785bff">}}

{{<matomeQuote body="医療や航空業界は不完全な人間をどう扱ってるかって？科学では「ピアレビュー」ってシステムがあって、コードが維持しやすいと、仲間にコードを見てもらいやすいんだ。だから、結局はこの話に戻るよ。" userName="Vaguely2178" createdAt="2025-03-12T20:14:28" color="">}}

{{<matomeQuote body="高いレベルの言語にポートされた有名なプロジェクトのことは思いつかないな。ソフトウェアは高いレベルの言語に「書き直される」ことはないけど、代替品に置き換わることは頻繁にあるよ。一例はDiscord、Electronで作られたアプリで市場に出た時、他の音声クライアントを一掃したね。" userName="sapiogram" createdAt="2025-03-11T16:31:00" color="">}}

{{<matomeQuote body="DiscordのバックエンドってほとんどRustとGoじゃないの？" userName="timeon" createdAt="2025-03-12T01:18:26" color="">}}

{{<matomeQuote body="開発時間を短くするためには高レベルの言語から始めるのが賢いね。アプリの価値を証明したら、後で低レベルの言語に切り替えるのが良いってことだ。早すぎる最適化は全ての悪の根源って言ったっけ？" userName="melbourne_mat" createdAt="2025-03-11T21:06:20" color="#ff5c5c">}}

{{<matomeQuote body="https://news.ycombinator.com/item?id=29228427　このスレッドでは、通常は「早すぎる最適化が悪の根源」と短縮されるクヌースの言葉について詳しく解説してるよ。これは、すぐに高い果実を取ろうとするんじゃなく、低い果実を無視しないでって意味だ。今のコンパイラは優れているから、誰もCやC++に落とすことは求められてないよ。" userName="vacuity" createdAt="2025-03-11T23:52:45" color="#45d325">}}

{{<matomeQuote body="多くの人が今から10〜25年前の事実に基づいてると思う。かつてスクリプト言語がプロトタイピング能力で大きな利点を持ってたけど、その頃の静的な言語は本当にひどかった。でも静的言語も随分改善されたよ。グリーンフィールドで何かを始めると、全体の構造を考えていれば、静的言語の方が開発プロセスが1週間進む頃には速くなると感じる。" userName="jerf" createdAt="2025-03-12T16:15:26" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
