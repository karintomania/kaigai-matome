+++
date = '2025-04-11T00:00:00'
months = '2025/04'
draft = false
title = 'Fedoraが99%再現可能なパッケージを目指すらしい！一体何がすごいのか？'
tags = ["Fedora", "パッケージ管理", "再現性", "ビルド", "オープンソース"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> Fedoraが99%再現可能なパッケージを目指すらしい！一体何がすごいのか？

引用元：[https://news.ycombinator.com/item?id=43653672](https://news.ycombinator.com/item?id=43653672)

{{<matomeQuote body="結局一番の宝物は、この道のりで出会った仲間たちだったってことだね。<br>https://github.com/keszybz/add-determinism" userName="barotalomey" createdAt="2025-04-11T19:13:16" color="">}}

{{<matomeQuote body="それってつまり、Debianのstrip-nondeterministicのNIH版ってことかな？<br>https://salsa.debian.org/reproducible-builds/strip-nondeterm..." userName="AshamedCaptain" createdAt="2025-04-12T12:00:38" color="">}}

{{<matomeQuote body="いや、PERLに依存しないバージョンってことだよ。" userName="barotalomey" createdAt="2025-04-15T05:25:13" color="">}}

{{<matomeQuote body="それってREADMEの一番下に書いてあるよ。" userName="remram" createdAt="2025-04-12T13:36:52" color="">}}

{{<matomeQuote body="…記事にも書いてあるよ。<br>＞Fedoraプロジェクトが独自のツールを書いたのは、すべてのパッケージのビルドルートにPerlを入れたくなかったからなんだって。" userName="Tijdreiziger" createdAt="2025-04-12T16:41:36" color="#45d325">}}

{{<matomeQuote body="これとか似たようなもので、タイムスタンプを無効化してログファイルを比較できるようにならないかな…　さらに言うなら、ポインタのアドレスとかも比較できるようになると嬉しいな。" userName="m463" createdAt="2025-04-11T20:19:34" color="">}}

{{<matomeQuote body="何がしたいのかよくわからないんだけど、各行からsedでタイムスタンプを消せば良くない？ もっと極端な例だと、trを使ってログから数字を全部消して、エラーメッセージを集計したりもするよ。tail -5000 logfile | tr -d [0-9] | sort | uniq -c | sort -n とかで。" userName="yjftsjthsd-h" createdAt="2025-04-12T03:40:02" color="#ff5c5c">}}

{{<matomeQuote body="もしログがプリンターで紙に印刷されてて、各行の印刷タイミングがバグでランダムで、インクには半減期hの化学トレーサーが入ってて(紙に印刷された後)、そのインクが異なる半減期h1, h2, ... hnのm個のインクからランダムに選ばれてて、プリンターがアメリカの人口上位10都市にp個散らばってたらどうする？ 標準的なUNIXユーティリティを使ってもいいよ。" userName="winwang" createdAt="2025-04-12T05:18:13" color="">}}

{{<matomeQuote body="インターンに全部スキャナに突っ込ませて、Tesseractにかけて、さっき言ったことをやらせればいいんじゃない？ とはいえ、君の質問は本気じゃないと思うな。結局何が言いたいの？" userName="yjftsjthsd-h" createdAt="2025-04-12T17:20:58" color="">}}

{{<matomeQuote body="ごめん、ただのジョークだよ（めちゃくちゃなシステムと面接の質問について）。伝わらなかったみたいだね、ハハ。" userName="winwang" createdAt="2025-04-12T23:31:30" color="">}}

{{<matomeQuote body="なるほど、そっちの方がしっくりくるな。なんか攻撃的な感じがして、どういう意味か分からなかったんだよね。UNIXのツールが古臭くて使いにくいって言いたいのかなって思ってた。説明ありがとう。" userName="yjftsjthsd-h" createdAt="2025-04-13T06:25:27" color="">}}

{{<matomeQuote body="もっと強力な再現性を保証する方法としては、形式的に検証可能な証明を使った厳密なコンパイルがあるよ。<br>それこそがhttps://pi2.network/でやってること。K-Frameworkを使ってて、これって過小評価されてる気がするんだよね。長期的にこの手の問題を解決する方法としてもっと注目されるべき。" userName="didericis" createdAt="2025-04-11T21:32:36" color="#ff5c5c">}}

{{<matomeQuote body="LD_PRELOADを使ってtime系のシステムコールが常にゼロを返すようにすれば良くね？" userName="alfiedotwtf" createdAt="2025-04-12T22:09:31" color="">}}

{{<matomeQuote body="彼らも参加してるのを見るのは嬉しいね。<br>https://news.opensuse.org/2025/02/18/rbos-project-hits-miles..." userName="froh" createdAt="2025-04-11T16:14:24" color="">}}

{{<matomeQuote body="静的リンクされたバイナリがもっと増えてほしいな。例えばPythonとか、インストールも作業も悪夢だよ。" userName="apatheticonion" createdAt="2025-04-11T23:34:54" color="">}}

{{<matomeQuote body="たぶん、みんなあんたに反対だね。Fedoraのパッケージングポリシー[1]：<br>＞ライブラリを含むパッケージは、可能な限りスタティックライブラリを含めるべきではありません（例：--disable-staticで設定）。スタティックライブラリは、例外的な場合にのみ含めるべきです。ライブラリに対してリンクするアプリケーションは、可能な限りスタティックバージョンではなく、共有ライブラリに対してリンクする必要があります。<br>[1]: https://docs.fedoraproject.org/en-US/packaging-guidelines/" userName="theteapot" createdAt="2025-04-12T00:55:53" color="">}}

{{<matomeQuote body="単一のアプリのためにバンドルされたVMよりも、静的バイナリの方がずっとマシだ。VMは静的バイナリと同じ悪い点を持ちつつ、さらに900個の悪い点が追加される。ディストリビューションのドキュメントにあるパッケージングガイドラインは、反論にはならない。これが今の正統な考え方だから、当然ドキュメントにはそう書いてある。みんな、今の標準の議論は知ってるよ。コメントは“今の正統な考え方からの変化を見たい”って言ってるんだから。" userName="Brian_K_White" createdAt="2025-04-12T01:23:54" color="#45d325">}}

{{<matomeQuote body="じゃあ、1000個のプログラムと1000個のライブラリじゃなくて、1000個のプログラムと100万個のライブラリの方がいいってこと？" userName="booi" createdAt="2025-04-12T02:48:42" color="">}}

{{<matomeQuote body="コメントがPythonについて言及していることを考えると、彼はすでに100万個のライブラリを持っている可能性が高い。<br>OSに直接バンドルされていないPythonプログラムの一般的な方法は、それぞれに個別の仮想環境をセットアップし、各依存関係の正確なバージョンを最初からダウンロード／コンパイルすること。" userName="josefx" createdAt="2025-04-12T04:34:56" color="">}}

{{<matomeQuote body="それって、ほとんどのコンテナ形式の結果と一緒じゃん。ただ、もっとごちゃごちゃしてるだけ。" userName="rcxdude" createdAt="2025-04-12T11:48:19" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="どうやってそこにたどり着いたのかマジで謎だけど、興味ないわ。" userName="Brian_K_White" createdAt="2025-04-12T02:53:45" color="">}}

{{<matomeQuote body="言いたいのは、1000個のプログラムが同じ1000個のライブラリを使う場合、静的リンクはすべてのバイナリ間でこれらのライブラリを複製して、ストレージとメモリをめっちゃ食うってこと。動的リンクならM個のバイナリ+N個のライブラリで済むけど、静的リンクはM * Nになる。" userName="MyOutfitIsVague" createdAt="2025-04-12T04:05:42" color="">}}

{{<matomeQuote body="いやいや、1000個のプログラムの話じゃないでしょ。システム内のすべてのバイナリってわけじゃないし。問題があるのは一部のバイナリだけ。そんなの誇張だよ。俺が言ったのは、flatpakとかsnapとかappimageとかdockerとかより、静的バイナリの方がマシだってこと。比較対象が違うじゃん。それに、すでにライブラリのコピーを持ってるバイナリもあるし。そもそも論として動的リンクにはメリットもあるけど、合わない場合もあるよね。自己完結型の実行ファイルが必要な場合も色々やり方あるし。" userName="Brian_K_White" createdAt="2025-04-12T04:43:17" color="#ff33a1">}}

{{<matomeQuote body="なんでVMが選択肢になるんだ？コンテナでしょ普通。" userName="Kudos" createdAt="2025-04-12T10:46:03" color="">}}

{{<matomeQuote body="VMって言ったのは言いすぎたかも。依存関係とOS環境を全部含んだコンテナとかバンドルのことね。" userName="Brian_K_White" createdAt="2025-04-12T14:29:14" color="">}}

{{<matomeQuote body="依存関係の管理って点では大差ないじゃん。" userName="rcxdude" createdAt="2025-04-12T11:46:02" color="">}}

{{<matomeQuote body="Pythonなら、python-build-standalone[1]のmuslビルドを見てみて。静的リンクされてるよ。俺も静的リンクユーティリティをちょこっと持ってる[2]。[1] https://github.com/astral-sh/python-build-standalone [2] https://github.com/supriyo-biswas/static-builds" userName="supriyo-biswas" createdAt="2025-04-12T04:03:58" color="#38d3d3">}}

{{<matomeQuote body="具体的に、インストールと作業がマジでだるいってどういうこと？" userName="hashstring" createdAt="2025-04-12T01:04:21" color="">}}

{{<matomeQuote body="Windows使ってるんでしょ(笑)" userName="gessha" createdAt="2025-04-12T03:39:13" color="">}}

{{<matomeQuote body="PythonにはWindows用の公式インストーラーがあるし、Microsoft Storeでも配布されてるし、UVで引っ張ることもできるからPowershellでも楽勝だよ。" userName="JodieBenitez" createdAt="2025-04-12T04:27:43" color="#ff33a1">}}

{{<matomeQuote body="UVって何のこと？" userName="Iwan-Zotow" createdAt="2025-04-15T12:51:27" color="">}}

{{<matomeQuote body="https://github.com/astral-sh/uv　を見てみて" userName="wisenull" createdAt="2025-04-15T14:08:13" color="">}}

{{<matomeQuote body="Pythonの話からすると、多分“スタティックリンク”じゃなくて“単一バイナリにコンパイル”って意味だと思うよ。このバイナリはスタティックリンクかもしれないし、システムのライブラリにリンクしてるかもしれない。でも、大抵はlibcだけだったりするけどね。Pythonみたいなやり方じゃなくて、こっちがもっと広まってほしいな。" userName="kpcyrd" createdAt="2025-04-13T16:46:39" color="">}}

{{<matomeQuote body="50年前のコンピューティングのパラダイムから抜け出せないでいるね。理想的には全部スタティックリンクされてて、セクションがマークされてファイルシステムで重複排除されるのがいいんだけどな。" userName="throwaway48476" createdAt="2025-04-12T04:47:04" color="">}}

{{<matomeQuote body="もっと古い考えだけど、共有ライブラリがUnixシステムに入ったのはSunOS 4.xとSystem V release 3からだったかな？Sunの1988年の論文はこちら。<br>https://www.cs.cornell.edu/courses/cs414/2001FA/sharedlib.pd..." userName="danieldk" createdAt="2025-04-12T11:56:12" color="">}}

{{<matomeQuote body="それだとページキャッシュでRAM内で重複しちゃうんだよね…それがスタティックリンクの本当の問題点。" userName="LtWorf" createdAt="2025-04-13T07:31:10" color="">}}

{{<matomeQuote body="Fedoraのユーザーとして、これって結局何がいいことあるの？密閉されたビルドには意味があるのはわかるけど、なんで？" userName="nimish" createdAt="2025-04-11T17:44:39" color="">}}

{{<matomeQuote body="再現性のあるビルドはソフトウェアの品質を向上させられるよ。再現性のあるビルドだって信じることができれば、それはソフトウェアスタック全体の決定論における大きなテストケースになるんだ。<br>そのテストケースを検証するために、実際に何度もビルドを繰り返す必要があるんだよね。もし違いを見つけたら、何かがおかしいってことになる。<br>例えば、使ってるコンパイラに初期化されてない変数の値に依存するバグがあったとする。それが生成されるコードの違いとして現れるかもしれない。<br>再現性のあるビルドがなければ、ビルドの結果に常に違いがあるから、繰り返しのビルドで何かがおかしいことを発見できないんだ。<br>再現性のあるビルドはツールチェインと周辺ユーティリティを強化してくれるよ。並列Makefileの競合状態とか、リンクジョブに入るオブジェクトファイルの順序が不定とか、ビルドシステムの不安定さを洗い出してくれるんだ。" userName="kazinator" createdAt="2025-04-11T19:05:52" color="#ff33a1">}}

{{<matomeQuote body="この分野はよくわからないんだけど、セキュリティに役立つんじゃないかな？コンポーネントが改ざんされたかどうかを判断できるとか？" userName="tomcam" createdAt="2025-04-11T20:08:31" color="">}}

{{<matomeQuote body="それってRedhat系ではもう当たり前のことだよ。RPM/DNFにはインストールされたバイナリのチェックサムがあるし、パッケージとリポジトリにはGPG署名がある。いつも不満に思ってるのは、GPGの公開鍵がミラーに置かれてること。みんなミラー以外の場所から鍵を取得するべきだよ。そうしないと、攻撃者が鍵を置き換えて全部署名し直せる。すぐにはバレないだろうね。<br>変更はTripwireとかOSSECとかのツールでも見つけられるし、プロダクション環境向けに承認されたパッケージの署名付きマニフェストを作る自作ツールでも見つけられる。" userName="LinuxBender" createdAt="2025-04-11T23:26:42" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="マジか！SolarWinds Orionへの攻撃は、そのビルドプロセスへの攻撃だったんだね。再現可能なビルドが検証されてれば、改ざんを検出できたはず。だって、ビルドが一致しないもん（攻撃者がすべてのビルドプロセスを検出し侵入しない限り）。" userName="dwheeler" createdAt="2025-04-11T21:14:06" color="#38d3d3">}}

{{<matomeQuote body="まったく同じバイナリは、すべてのプラットフォームでまったく同じようにハッキングされる可能性があるってこと。" userName="oneshtein" createdAt="2025-04-12T03:07:59" color="">}}

{{<matomeQuote body="それって、パブリッシャーの秘密鍵を公開する必要があるってことだよね？" userName="tomcam" createdAt="2025-04-13T04:24:17" color="">}}

{{<matomeQuote body="ビンゴ！うちでは、これでコード生成を改ざんするウイルスを捕まえたよ。" userName="bobmcnamara" createdAt="2025-04-11T20:51:55" color="#45d325">}}

{{<matomeQuote body="関連情報として、Ken Thompsonの論文を見てみて：http://genius.cat-v.org/ken-thompson/texts/trusting-trust/" userName="drewcoo" createdAt="2025-04-11T23:02:49" color="">}}

{{<matomeQuote body="何が信用できないかって？ソフトを更新しても、ビルド日が同じままってこと。何時間もかけて調べたら、再現性の問題でハードコードされてるだけだった。再現可能なビルドは、サプライチェーン攻撃には役に立たない気がする。コンパイラを更新したら、コードが全部変わった？Intel x64 architecture reference manualの7893ページに基づいてコード生成を調整した人がいることに気づくまで16時間かかるぞ。" userName="stefan_" createdAt="2025-04-12T00:34:53" color="">}}

{{<matomeQuote body="パッケージのビルド日は、ビルド対象のブランチのトップコミットの日付に設定すべき。次のバージョンがリリースされるときに変わらないようなものじゃダメ。もし、どこかの再現可能なパッケージシステムやディストリビューションでそんな挙動を見かけたら、それは正当なクレームだよ。" userName="kazinator" createdAt="2025-04-12T04:26:40" color="">}}

{{<matomeQuote body="ビルドホストや関連インフラの一部が侵害される可能性は低いとは思わない。" userName="uecker" createdAt="2025-04-11T19:51:24" color="">}}

{{<matomeQuote body="再現可能なビルドは、ビルドシステムの後半でパッケージが改ざんされていないかをより明白にする事でセキュリティを向上させるってことだよね。<br>＞Jędrzejewski-Szmekは、再現可能なビルドの利点の1つは、Fedoraのビルダーに対するあらゆる種類のサプライチェーン攻撃を検出し軽減し、他の人がパッケージソースがFedoraによって配信されるバイナリと一致することを独立して検証できるようにすることだと述べました。“" userName="jacobgkau" createdAt="2025-04-11T17:54:32" color="#ff5733">}}

{{<matomeQuote body="心配する必要があるサプライチェーン攻撃は、Fedoraのビルドマシンに侵入するもんじゃないよ。上流のパッケージ自体への攻撃だよ。Reproducible buildsがあっても、XZパッケージが1年前に悪意のある貢献によって侵害されたみたいな状況は絶対に防げない。OSディストリビューションは、その悪意のある更新を美しいreproducing buildに仕上げるだけ。" userName="kazinator" createdAt="2025-04-11T19:10:55" color="">}}

{{<matomeQuote body="完璧を求めて良いものを無駄にしないで。これは上流の問題を防ぐわけじゃないけど、妥協が起こる場所を1つ減らすよ。" userName="yjftsjthsd-h" createdAt="2025-04-11T19:30:41" color="">}}

{{<matomeQuote body="Reproducible buildsを持つなって言ってるんじゃないよ。build farmのセキュリティは単なる脚注だよ。Reproducible buildsは圧倒的に良くて当然のことだから、build farmセキュリティはその注釈程度のこと。" userName="kazinator" createdAt="2025-04-11T20:43:22" color="">}}

{{<matomeQuote body="おまえさんの言う単なる脚注は、俺の柔らかいお腹なんだよ。どんな強化も強化には変わりないんだから。" userName="drewcoo" createdAt="2025-04-11T23:05:32" color="#ff5733">}}

{{<matomeQuote body="Reproducible buildsならXZの問題を解決できる可能性があるよ。今のレベルじゃ無理だけど、githubがダウンロード可能なパッケージをスクリプト化して、reproducibleにできるようなことをすればいいんだ。Fedoraは提供されたtarballをダウンロードする代わりにgit hashをチェックアウトして、reproducible buildsを実現できる。でも、見た目を良くしながら問題を曖昧にするようなコードは書けないと思うよ。" userName="bluGill" createdAt="2025-04-11T19:49:53" color="#38d3d3">}}

{{<matomeQuote body="XZの侵害みたいな上流の問題を検出するように設計されたものは、Fedoraのパッケージビルド環境の侵害を検出できないよ。どっちも必要だね。" userName="phkahler" createdAt="2025-04-11T19:43:22" color="#ff5733">}}

{{<matomeQuote body="ビルドがreproducibleなとき、ディストリビューションができることの一つは、完全に異なるオペレーターを持つ複数のビルドファームを持つことだよ。そうすれば、アクセス権や秘密鍵を共有しなくて済む。そして、各ファームでの各パッケージのビルド結果を比較して、違いがあれば改ざんを疑うことができる。だから、改ざんを早く検出したり、他の対策次第では伝播を防ぐことができるかも。" userName="pxc" createdAt="2025-04-12T17:16:57" color="#ff33a1">}}

{{<matomeQuote body="その通り。" userName="Zamicol" createdAt="2025-04-11T18:40:00" color="">}}

{{<matomeQuote body="セキュリティ向上！悪意のあるやつは、OpenSSLのソースまたはバイナリの数バイトを変更するだけで、全体を壊すことができる（例：証明書チェックを無効にする）。Reproducible buildsは、バイナリを認証するための単一障害点を取り除くんだ。これで、秘密鍵を持つ人だけでなく、誰でも認証できる。" userName="conradev" createdAt="2025-04-11T22:59:04" color="#ff33a1">}}

{{<matomeQuote body="サプライチェーンに悪意のあるソフトウェアが紛れ込むのを防ぐために使用できる多くのツールの一つだよ。" userName="bagels" createdAt="2025-04-11T17:55:05" color="">}}

{{<matomeQuote body="コンパイラに悪意のあるコードを仕込むバックドアがありえるってことだね。完全に同じデータや署名だからって、マルウェアがないとは限らないよ。" userName="russfink" createdAt="2025-04-11T18:17:58" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="確かにそうだけど、対策を重ねるほど攻撃は難しくなるよね。Ken Thompsonの”trusting trust”みたいなコンパイラは今のgccを見つけられないだろうし、バックドアを仕込むのも無理かも。gccが侵害されてても、最新のgccがビルドできなくなって発覚する可能性もあるし。（clangとか使う人が増えればさらに難しくなるし…）完璧は無理でも、対策を進めるほど現実世界で侵害される可能性は低くなるよね。" userName="bluGill" createdAt="2025-04-11T19:54:33" color="#38d3d3">}}

{{<matomeQuote body="この攻撃だと、コンパイラは再現可能な成果物じゃないってこと？それともバックドアは別のテクニックを使うの？" userName="jt2190" createdAt="2025-04-12T00:44:55" color="">}}

{{<matomeQuote body="https://bootstrappable.org/みたいなものが必要ってことだね。（実際にあるけど）" userName="kpcyrd" createdAt="2025-04-13T16:50:09" color="">}}

{{<matomeQuote body="ビルドの再現性について簡単に教えてくれない？<br>目指してるのは、同じソース、環境、手順でコンパイルしたら完全に同じ結果になるってことだよね。<br>でも、ハードウェア固有の最適化でそれは無理になるし、どうすればいいのかわからない。<br>再現可能なビルドが必要な理由はわかるけど、要求が高すぎる気がする。ハードウェアの性能詐称とか、命令の実行方法の違いとかで、決定論が崩れてしまうし、コンピューターはそういうものに依存してるからね。抽象化されてたり、アーキテクチャ依存/独立で分かれてたりするけど、問題は残る。再現可能なビルドは環境が限定されてるのが前提だけど、メーカーはそうならないようにしてるんだよね。" userName="trod1234" createdAt="2025-04-12T00:45:55" color="">}}

{{<matomeQuote body="＞ハードウェア固有の最適化でそれは無理になるって言ってるけど<br>Distroのパッケージはビルドサーバーでコンパイルされて、いろんなシステムに配布されるから、ビルダーのハードウェアに特化した最適化はしないはずだよ。<br>Gentooみたいなソースベースのディストリビューションなら、ユーザーが最適化フラグを追加すれば違う結果になるけど、同じハードウェア/コンパイルフラグなら同じ結果になることには意味があると思う。" userName="Crestwave" createdAt="2025-04-12T03:36:15" color="#ff5c5c">}}

{{<matomeQuote body="重要なのは、M台中N台が同じ結果を出すなら、他のマシンで違う結果になる理由を追求できるってことだよ。再現性がなければ諦めるしかない。コンパイラの最適化の話もしてる？再現可能なビルドには固定のターゲットが必要だよ。" userName="amarshall" createdAt="2025-04-12T01:26:23" color="#ff33a1">}}

{{<matomeQuote body="LLVMのパフォーマンス最適化みたいなのを考えてたんだ。説明になったかな？" userName="trod1234" createdAt="2025-04-12T01:52:25" color="">}}

{{<matomeQuote body="＞ハードウェア固有の最適化でそれは無理になるって言ってるけど<br>それは別のビルド成果物として扱われて、それも再現可能だよ。" userName="dmtfullstack" createdAt="2025-04-13T04:25:49" color="">}}

{{<matomeQuote body="再現性はProfile-Guided-Optimizationとは相性が悪いよね。特にネットワークとかIOが絡むと。" userName="Dwedit" createdAt="2025-04-11T18:07:43" color="">}}

{{<matomeQuote body="Goのドキュメント[0]から引用するね。<br><br>＞プロファイルをソースリポジトリに直接コミットするのがおすすめだって。再現可能でパフォーマンスの高いビルドに重要だからね。ソースと一緒に保存すれば、ソース取得以外の手順が不要になるから楽ちん。<br><br>他の言語やフレームワークも同じようにできるといいな。<br>[0]: https://go.dev/doc/pgo#building" userName="nrvn" createdAt="2025-04-11T19:39:12" color="">}}

{{<matomeQuote body="全＞Performantって主張は、聞いたことある研究と矛盾してる気がするんだよね。それに、PGOプロファイルデータってほとんどの場合非決定的だし、同じハードウェアでコンパイルしても、プロファイルをコピーしても意味ないことが多いんだって。<br>論文[1]からの引用だけど、プロファイルはマシン依存性が高いんだよね。<br>全＞残念ながら、ほとんどのコード改善はマシンに依存してるし、依存してないものは位相順序の問題を引き起こすんだって。<br>うちの環境だと、Xeonチップの実装の違いで性能が大幅に低下することがあったから、プロファイルのコピーには慎重になっちゃうんだよね。<br>Fedoraがランダムなプロファイルを使うのは、ユーザーの環境と合わない可能性があるから、違うアプローチが必要だと思うな。<br>[1]: https://dl.acm.org/doi/10.5555/184716.184723" userName="nyrikki" createdAt="2025-04-11T21:05:02" color="">}}

{{<matomeQuote body="もし環境ごとの違いが重要なら、それぞれのマシンを別のアーキテクチャとして扱って、すべての環境でプロファイリングデータを作成して、個別のビルドを作ればいいんじゃない？<br>Fedoraはそこまで面倒見てくれないだろうから、自分でセットアップする必要があると思うよ。" userName="clhodapp" createdAt="2025-04-11T22:39:40" color="#785bff">}}

{{<matomeQuote body="それって、ライブデータでPGOやった場合の話でしょ？キャプチャした実行からのリプレイを使うのがベストプラクティスだと思うけど。" userName="zbobet2012" createdAt="2025-04-11T18:36:53" color="">}}

{{<matomeQuote body="全然矛盾しないけど、システムAの出力がシステムA+1の入力になるような「Monadic」な感じになるから、システム設定では整理が難しいかもね。でも、nixみたいなツールがあれば実現可能だよ。" userName="gnulinux" createdAt="2025-04-11T18:28:59" color="">}}

{{<matomeQuote body="再現性のあるビルドの「コスト」の一つだよね。乱数ジェネレーターに事前に設定されたシードを使う必要があるのと同じようにね。<br>FedoraはRPMの仕組みのせいでreproducible-builds.orgの定義に合わないって言ってるけど、他にも制約があるのかも。<br>例えば、suseはgzipのために再度有効にする必要があったみたい。<br>PGO+LTOの価値は大きいけど、並列ビルドを諦めなきゃいけないプロジェクトもあるから、公式の制約を緩める人も多いよね。" userName="nyrikki" createdAt="2025-04-11T20:42:07" color="#ff33a1">}}

{{<matomeQuote body="え、attackerは同じバイナリにアクセスできるんだから、ランタイムアドレスのランダム化だけが役に立つんじゃないの？" userName="goodpoint" createdAt="2025-04-11T22:13:06" color="">}}

{{<matomeQuote body="リンカーのシンボル生成に相対ファイル名をシードとして使うのが一般的な方法だから問題なんだよ。<br>これだとバイナリ間のエントロピーが減って、text領域内のgadgetを区別しやすくなる可能性があるんだ。<br>トレードオフだね。<br>Enigmaがどうやって解読されたかを考えてみて。" userName="nyrikki" createdAt="2025-04-14T20:51:12" color="">}}

{{<matomeQuote body="なんでそうなるの？<br>プロファイラはhprofファイルとかを出力するんじゃないの？それをコンパイラへの入力にすればいいんじゃない？" userName="michaelt" createdAt="2025-04-11T18:26:06" color="">}}

{{<matomeQuote body="全＞例えば、Haskellパッケージは複数のスレッドでコンパイルすると再現できないんだって。<br><br>大した問題じゃない気がするけど。gccコンパイラはマルチスレッドコンパイルをサポートしてないし。Cの世界では、並列処理は複数の翻訳ユニットを並列にコンパイルすることで実現されるからね。" userName="kccqzy" createdAt="2025-04-11T23:19:33" color="">}}

{{<matomeQuote body="ソースとバイナリパッケージの中身に対する信頼が低いってかー。これでちゃんとしたartifact管理プロセスを導入する組織が増えるかな？サプライチェーン攻撃が増えてるなら、企業がCloudsmithとかjFrogみたいなツールでセキュアなartifactスキャンを導入するのはもっと重要になるんじゃない？" userName="nigel_doug" createdAt="2025-04-12T21:54:28" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
