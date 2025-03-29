+++
date = '2025-03-22T00:00:00'
months = '2025/03'
draft = false
title = 'root権限もコンテナも不要 LandlockでLinuxのプロセスを安全にサンドボックス化できるLandrunがマジですごい'
tags = ["Linux", "セキュリティ", "サンドボックス", "Landlock", "ツール"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> root権限もコンテナも不要 LandlockでLinuxのプロセスを安全にサンドボックス化できるLandrunがマジですごい

引用元：[https://news.ycombinator.com/item?id=43445662](https://news.ycombinator.com/item?id=43445662)

{{<matomeQuote body="Linux Landlockは、特権のないプロセスが自分自身をサンドボックス化できるカーネルネイティブなセキュリティモジュールだけど、APIが難しすぎて誰も使ってないんだよね。だから`landrun`っていうGo製のCLIツールを作ったんだ。これを使えば、ファイルシステムやネットワークへのアクセス制御を細かく設定して、どんなコマンドでもサンドボックス化できるよ。rootもコンテナもSELinux/AppArmorの設定もいらない。軽量で監査可能だし、Landlock v5の機能（ファイルアクセスとTCP制限）をラップしてるんだ。READMEにデモと使用例があるから、みんなからのフィードバックが欲しいな！" userName="Zoup" createdAt="2025-03-22T13:56:59" color="#785bff">}}

{{<matomeQuote body="READMEの例を試してみたけど、うまくいかなかったんだよね。<br>＞# rm -f /tmp/foo; ./landrun-linux-amd64 --log-level debug --ro /usr/bin --ro /lib --ro /lib64 --rw /tmp touch /tmp/foo<br>＞[landrun] 2025/03/22 10:28:02 Sandbox config: {ReadOnlyPaths:[/usr/bin /lib /lib64] ReadWritePaths:[/tmp] AllowExec:false BindTCPPorts:[] ConnectTCPPorts:[] BestEffort:true}<br>＞[landrun:debug] 2025/03/22 10:28:02 Adding read-only path: /usr/bin<br>＞[landrun:debug] 2025/03/22 10:28:02 Adding read-only path: /lib<br>＞[landrun:debug] 2025/03/22 10:28:02 Adding read-only path: /lib64<br>＞[landrun:debug] 2025/03/22 10:28:02 Adding read-write path: /tmp<br>＞[landrun:debug] 2025/03/22 10:28:02 Applying Landlock restrictions<br>＞[landrun] 2025/03/22 10:28:02 Landlock restrictions applied successfully<br>＞[landrun] 2025/03/22 10:28:02 Executing: [touch /tmp/foo]<br>＞touch: cannot touch ‘/tmp/foo’: Permission denied<br><br>すごく興味深いね。Dockerで同じようなことをしてて、ボリュームをroでマウントしてるんだけど、Landlockをサーバープロセスに追加するユースケースは絶対にあると思う。" userName="linsomniac" createdAt="2025-03-22T16:33:11" color="#45d325">}}

{{<matomeQuote body="ああ、`--exec`がないね。指定しなきゃいけないのはちょっと面倒だけど、明示的な方が好きだし、LSMの機能をフルに使いたいんだ。`cat`みたいに`--exec`がいらないケースもあると思うし。最新リリースを見てみて。ちょっときれいになってるよ。" userName="Zoup" createdAt="2025-03-22T23:20:25" color="">}}

{{<matomeQuote body="この`touch`の例で、なんで`exec`が必要なのか教えてくれませんか？実際に`touch`バイナリを起動する必要があるんですか？それとも`touch`自体が何か他のものを`exec()`してるんですか？" userName="mikedelfino" createdAt="2025-03-23T12:52:49" color="">}}

{{<matomeQuote body="これを動かすために必要な最小限のオプションはこれだよ:<br>`landrun --log-level debug --exec --ro /usr/bin --ro /usr/lib --rw /tmp touch /tmp/foo`<br>個人的には`--exec`で`/tmp`にあるバイナリも実行できるようになるのが嫌だな..." userName="ranger_danger" createdAt="2025-03-22T17:47:20" color="#ff5733">}}

{{<matomeQuote body="`landrun --ro /usr/bin --ro /lib --ro /lib64 --rw /path/to/dir touch /path/to/dir/newfile`<br>vs<br>`landrun --ro /usr/bin --ro /lib --ro /lib64 --exec /usr/bin/bash`<br>ってことは、`--exec`は実行するコマンドが内部で`exec`コールを使う場合にだけ必要ってことみたいだね。`bash`はforkするために必要だけど。だから`touch`は`--exec`はいらないけど、`bash`は読み込めるもの（許可された`/tmp`を含む）なら何でも実行できるはず。" userName="qwertox" createdAt="2025-03-22T19:38:57" color="#ff5c5c">}}

{{<matomeQuote body="前者はうまくいかないよ。`--exec`を追加する必要がある。`touch`が`/usr/bin`にあるから、そこから実行する権限が必要なんだと思う。`--ro`か`--rw`を使うと、`--exec`も必須になるみたい。" userName="ranger_danger" createdAt="2025-03-22T21:27:24" color="#ff5c5c">}}

{{<matomeQuote body="まあ、バイナリを実行したいなら`--exec`が必要だよね（`cat`と違って）。Landlockが`--exec`をディレクトリにバインドするのをサポートしてくれたら面白いのに！" userName="Zoup" createdAt="2025-03-22T23:22:14" color="">}}

{{<matomeQuote body="＞you'll need --exec when you want to run binaries<br>え、それっていつそうじゃないの？バイナリを実行する必要がない場合、このツールをどうやって使うの？" userName="ranger_danger" createdAt="2025-03-22T23:35:46" color="">}}

{{<matomeQuote body="`cat`の実行は`--exec`じゃないよね。" userName="Zoup" createdAt="2025-03-22T23:46:43" color="">}}

{{<matomeQuote body="この場合、どこにあろうと”a”にアクセスできないんだね…<br>$ landrun --ro /usr cat /usr/bin/ls | wc -l<br>400<br>ls（実際のバイナリ実行のように）を実行するには、--execが必要だよ<br>$ landrun --ro /usr ls /usr/bin/<br>ls: ディレクトリ '/usr/bin/' を開けません: 許可されません<br>$ landrun --ro /usr --exec ls /usr/bin/<br>何十億ものファイルのリスト<br>--exec はマジで好きじゃないんだよね。デフォルトで”オン”じゃないなら、明示的にするためだけ。<br>アップデート: ”ファイルアクセス”を制限するバグがあるから、すぐに修正するね。<br>アップデート2: 実行ファイルを制限するために--exec-pathを追加するのは、グローバルな--execを持つより良い考えではなかった。<br>アップデート3: V0.1.4を見てくれ、今はずっとクリーンだと思う。" userName="Zoup" createdAt="2025-03-23T00:13:47" color="">}}

{{<matomeQuote body="--ro /usr は /usr/bin には適用されないよ。--ro /usr/bin に変更すれば、cat は実行を拒否するはず。" userName="ranger_danger" createdAt="2025-03-23T01:08:06" color="#38d3d3">}}

{{<matomeQuote body="デフォルトで再帰的だよ。" userName="Zoup" createdAt="2025-03-23T02:00:21" color="">}}

{{<matomeQuote body="一時的な回避策として、noexecフラグ付きの/tmp_noexecのようなtmpfsデバイスを作成して、通常の/tmpの代わりにマウントできるよ。でも、landrunは（まだ？）ディレクトリオプションの名前変更を許可してないんだよね :(<br>セキュリティを強化するために、landlockの呼び出しごとに一時的なtmpfsディスクを作成したいな。明らかに、実行しているプログラムは他のプロセスが/tmpに置いたものを見るべきじゃない。" userName="nine_k" createdAt="2025-03-22T18:44:35" color="#ff5733">}}

{{<matomeQuote body="＞一時的なtmpfsディスクをlandlockの呼び出しごとに作るって？<br>それって、firejail を発明しただけじゃん。" userName="ranger_danger" createdAt="2025-03-22T18:54:02" color="">}}

{{<matomeQuote body="OCI/コンテナランドで landlock を使うのは可能？意味ある？" userName="bastiao" createdAt="2025-03-22T18:44:12" color="">}}

{{<matomeQuote body="Syd[0] は、アプリケーションをコンテナ化するために (他の多くのメカニズムの中でも) landlock を使用し、OCI互換インターフェースを提供するよ。<br>[0]:<br>https://gitlab.exherbo.org/sydbox/sydbox" userName="codethief" createdAt="2025-03-22T20:34:07" color="#ff33a1">}}

{{<matomeQuote body="リンクありがとう、Sydbox は超クールなプロジェクトみたいだけど、なんか変なところがある：README にリンクが多すぎる。GitHub にはないし、GitHub にある似た名前のプロジェクトは16年間コミットがないけど、同じ人？<br>もし彼らがプロジェクトのパブリックな面を磨き上げることができれば、より信頼感を植え付けられると思う。" userName="ammmir" createdAt="2025-03-22T23:25:38" color="">}}

{{<matomeQuote body="＞README のリンクが多すぎる<br>他のドキュメントもそう。<br>そして、すごい繰り返す。<br>PoC が使われるたびに Wikipedia へのリンクは要らないよ。strace(1) が言及されるたびにオンラインマニュアルページへのリンクもね。<br>ドキュメントには複数の”エントリーポイント”があり、すべての出現箇所をハイパーリンクすることでそれを解決できることは理解してる。<br>でも、特定の読者を想定することで、より効果的なドキュメントになると私は思ってる。小学校の子供のために、大学レベルの教科書で足し算を説明したりはしない。<br>この製品は strace を初めて聞く人向けではないよ。" userName="sudahtigabulan" createdAt="2025-03-22T23:56:54" color="#ff5c5c">}}

{{<matomeQuote body="Wikipediaの記事って、記事内のありとあらゆる単語にリンク貼ってるとこあるよね。テキスト選択しようとするとリンクが邪魔でマジで冒険だよ。昔、内部リンク全部剥がすuserscript作ったもん。（[citation needed]とかのノイズ除去スクリプトに追加して）。Wikipediaには、テキスト選択時とかグローバル設定でON/OFFできる「おすすめリンク」みたいな機能が必要だよね。そしたら作者は好きなだけリンク貼れるじゃん。" userName="chuckadams" createdAt="2025-03-23T12:13:36" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞which makes trying to simply highlight a section of text a fun adventure”<br>FirefoxならAltキー押しながらドラッグすればリンク踏まずにテキスト選択できるよ。" userName="tczMUFlmoNk" createdAt="2025-03-23T15:49:08" color="#785bff">}}

{{<matomeQuote body="マジかよ知らなかった。乗り換えてよかったー。<br>仕事ではまだChrome使ってるけどね。FFのプロファイル管理マジ無理。" userName="chuckadams" createdAt="2025-03-23T19:32:53" color="#ff5733">}}

{{<matomeQuote body="`firefox -ProfileManager`とかコンテナじゃダメなの？" userName="seego" createdAt="2025-03-23T21:10:42" color="">}}

{{<matomeQuote body="まあね。個人的にはリンク少なすぎるより多すぎる方が嬉しいかな。足し算の説明とか、一番良い説明へのリンク貼れば済むし。<br>問題はリンクが自動生成っぽいとこ。しかもちょっと雑。「Syd」のリンクはPink Floydのオリジナルフロントマンじゃなくて、sandboxing技術にリンクすべきでしょ。" userName="yellowapple" createdAt="2025-03-23T05:07:11" color="">}}

{{<matomeQuote body="めっちゃクールだけど、サンプルもドキュメントへのリンクもないから、タブ閉じて忘れちゃうな…多くの人がそう思うんじゃないかな。" userName="ranger_danger" createdAt="2025-03-22T21:46:19" color="">}}

{{<matomeQuote body="// ルールがない場合は、そのままreturn<br>if len(rules) == 0 {<br>    log.Info(”No sandbox rules to apply”)<br>    return nil<br>}<br><br>めっちゃクールでよく書けてるけど、この選択には反対。ルールなし＝すべて拒否であるべき。<br>もっと細かいファイル/ディレクトリ権限のサポートがあると嬉しいなー。もう計画されてるみたいでよかった。" userName="rainworld" createdAt="2025-03-22T18:24:59" color="#ff5733">}}

{{<matomeQuote body="それな。新しいバージョンでそうしてほしい。" userName="Zoup" createdAt="2025-03-22T23:17:22" color="">}}

{{<matomeQuote body="いいね。Linux Kernelのlandlock APIを直接使ってるんだ（OpenBSDのpledgeみたいに）。yamlで設定記述できると嬉しいな。コマンドをあらかじめ設定して実行できるみたいな。好みの問題か。試してみるよ。" userName="bastiao" createdAt="2025-03-22T15:48:03" color="#45d325">}}

{{<matomeQuote body="まだ初期段階だけど、landlockの作者Mickaël Salaünがこれに取り組んでるよ。<br>https://github.com/landlock-lsm/landlockconfig<br>関連が出てきたらGoのbinding書く予定。" userName="Foxboron" createdAt="2025-03-22T19:39:21" color="#ff33a1">}}

{{<matomeQuote body="試してみるけど、最初に聞きたいのは、これってbubblewrapと比べてどうなの？" userName="Filligree" createdAt="2025-03-22T15:16:18" color="">}}

{{<matomeQuote body="＞誰も使わないのは、APIが…難しいから！<br>OpenBSDはpledgeとunveilで本当に良い仕事をしたよね。" userName="__turbobrew__" createdAt="2025-03-22T19:19:27" color="#ff5c5c">}}

{{<matomeQuote body="OpenBSDは確かに優れてるけど、リリース間の後方互換性に対する姿勢も違うよね。Linuxの厳格なABI互換性は問題を複雑にするけど、適切なライブラリがあれば耐えられると思うよ。Readmeの例を見て！Landlockをpledgeみたいに使ってほしいな。" userName="gnoack" createdAt="2025-03-22T20:00:29" color="#785bff">}}

{{<matomeQuote body="pledgeとunveilのABIってリリースから変わってないよね？Linuxが使いやすい新しいセキュリティプリミティブを作れない理由は何？Wireguardみたいにさ。実装者のセンス次第で、使いやすさを犠牲にせずに作れるはず。" userName="__turbobrew__" createdAt="2025-03-22T20:31:14" color="#38d3d3">}}

{{<matomeQuote body="BSDはカーネルとユーザー空間を一緒に提供するから、色々シンプルなんだよね。Linuxは柔軟だけど、その分コストがかかる。Landlockは新しいセキュリティプリミティブの一つで、進化してるよ。インターフェースが変わると古いアプリが動かなくなるから、難しいんだよね。" userName="l0kod" createdAt="2025-03-22T21:44:45" color="#ff33a1">}}

{{<matomeQuote body="LinuxとBSDの仕組みは理解してるつもりだよ。でも、LinuxがWireguardみたいな便利なセキュリティプリミティブを作れない理由が分からないんだよね。pledgeとunveilは単純なsyscallでしょ？複雑なユーザーインターフェースが必要な理由がわからない。" userName="__turbobrew__" createdAt="2025-03-22T22:37:45" color="">}}

{{<matomeQuote body="Linuxのlibc関数って、カーネルのsyscallが変更されたり、状況によって変わったりするよね。Landlockとかseccompのフィルタはカーネルレベルだから、libcしか使ってないプログラムが動かなくなるんだ。" userName="mkj" createdAt="2025-03-23T04:46:28" color="">}}

{{<matomeQuote body="（抽象）unixソケットはサポートされてる？外部依存なしで動くウェブサーバーを実行しようとしてるんだけど、デーモンとワーカー間の通信（unixソケット経由）がうまくいかないみたい。bubblewrapとかdockerコンテナの中なら動くんだ。" userName="trikko" createdAt="2025-03-22T21:52:06" color="">}}

{{<matomeQuote body="抽象ソケットって、ネットワーク名前空間を使わないとjailから出られないんじゃない？Xorgソケットへのアクセスを防ぐには、--share-netを除外する必要があると思う。" userName="dsp_person" createdAt="2025-03-23T07:26:29" color="">}}

{{<matomeQuote body="えーと、動くべきなの？別の理由があるってこと？分からないなぁ。" userName="trikko" createdAt="2025-03-23T09:02:15" color="">}}

{{<matomeQuote body="macOSみたいな「ターミナルにドキュメントフォルダへのアクセスを許可しますか？」みたいな権限管理がLinuxにもあったら最高じゃん？　マジでWindowsとかLinuxでそれがなくて困ってるんだよね。Chrome入れたからって、パソコンのファイル全部スキャンしていいわけじゃないのに、止められないのがマジでセキュリティとプライバシー的に大問題だと思うんだよね！" userName="aucisson_masque" createdAt="2025-03-23T10:50:16" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Flatpakって知ってる？　ちゃんとパッケージされたアプリは、最初はファイルシステムへのアクセスが制限されてるんだ。例えばFirefoxでfile:///を開いても、すべてのファイルが見えるわけじゃない。でも、「ファイルを開く」メニューを使うと、ファイルシステムへのアクセスが許可されるんだよ。macOSとはちょっと違うけど、心配してる無制限のシステムアクセスは防げるよ。" userName="mikedelfino" createdAt="2025-03-23T13:08:04" color="#785bff">}}

{{<matomeQuote body="Flatpakは知ってるけど、デメリットもあるんだよね。使うと色々壊れるし。アプリの挙動がおかしくなったり、テーマが崩れたり、起動しなくなったり。それに、ネットが遅い人にとっては、Flatpakのせいでアプリのダウンロードにめっちゃ時間かかるし。Flatpakが良いのはわかるけど、Linuxはいつも開発者向けって感じで、一般ユーザーには頭痛の種だよね。" userName="aucisson_masque" createdAt="2025-03-23T23:59:33" color="">}}

{{<matomeQuote body="それってxdg-portalsのことだよね。ちゃんと動くよ。ただ、アプリが対応する必要があるから、普及が遅れてるんだ。" userName="marcthe12" createdAt="2025-03-23T17:48:35" color="#ff33a1">}}

{{<matomeQuote body="Linuxの最大の問題は、プロセスごとのファイアウォール設定がないことだと思う。AppArmorとか、アプリごとにユーザーを作ってルールを割り当てることで回避できるかもしれないけど。Linuxを10年以上使ってるけど、まだ知らないことが多いから、何か見落としてるかもしれない。GitHubのページにはTCPネットワークアクセス制御とかUDPの制限について書いてあるから、これで簡単にプロセスをファイアウォールできるかな？" userName="qwertox" createdAt="2025-03-22T19:17:00" color="">}}

{{<matomeQuote body="Linuxのネットワーク名前空間を使って、プロセスを別々のネットワークスタックで実行するのはどう？ nftablesのルールはネットワーク名前空間ごとだから、高度な設定ができるし、実質的にプロセスごとのファイアウォールを実現できるよ。Systemdには`NetworkNamespacePath`っていうディレクティブもあるから、新しい名前空間でサービスを起動することもできるよ。" userName="its-kostya" createdAt="2025-03-22T20:49:48" color="#38d3d3">}}

{{<matomeQuote body="他の人の意図はわからないけど、デスクトップでは、すべてのプログラムが制限されたネットワーク名前空間で起動してほしいな。デフォルトではすべての送受信接続をブロックする代わりに、ユーザーの許可をインタラクティブに要求して、それに応じてアクセスを調整するみたいな。" userName="mikedelfino" createdAt="2025-03-23T13:15:21" color="#ff33a1">}}

{{<matomeQuote body="Linuxでは、デフォルトのネットワーク名前空間からすべてのインターフェースを移動させて、iptablesルールで全部ブロックするのが一番近いかな。そして、物理的なインターフェースとかVPNとか、目的のネットワーク名前空間で明示的にアプリケーションを起動する必要がある。そうすれば、間違って起動したアプリとかデスクトップ環境はネットワークに接続できなくなるよ。" userName="coppsilgold" createdAt="2025-03-24T00:15:49" color="">}}

{{<matomeQuote body="opensnitchがそれをするよ。" userName="ranger_danger" createdAt="2025-03-23T15:21:44" color="">}}

{{<matomeQuote body="例の「ユーザーの許可をインタラクティブに要求して、それに応じてアクセスを調整する」ってやつね。それならできるよ。eBPF使ってるけど。" userName="ranger_danger" createdAt="2025-03-23T21:49:00" color="">}}

{{<matomeQuote body="namespaces使う上での一番の問題は、ホストのメインファイアウォールを完全にバイパスしちゃうことなんだよね。" userName="ranger_danger" createdAt="2025-03-23T15:23:38" color="#ff5c5c">}}

{{<matomeQuote body="それは設定次第だよ。「メインホスト」のファイアウォールをバイパスする必要はないんだ。<br>0．追加のnetwork namespacesを設定しない場合でも、デフォルトのnetwork namespaceが存在する。これが「メインホスト」と呼ばれるもの。<br>1．デフォルトのnet nsに、サーバーがトラフィックを受信するデバイスeth0があるとする。<br>2．デフォルトのnet nsにvethペアveth0とveth1を作成する。<br>3．新しいnet nsを作成し、veth1を新しいnet nsに移動する。veth0とeth0のみがデフォルトのnet nsに残る。<br>4．通常どおり、デフォルトのnet nsにルートとnftableルールを設定する。新しいネットにルーティングしたい特定のトラフィックは、ネクストホップveth0を経由するようにする（veth0をネクストホップとして使用して、veth1のIPにルーティングする必要がある）。<br>5．新しいnet nsに追加のnftableルールなどを設定すると、これはデフォルトのnet nsから分離される。<br>エンドツーエンドのフロー：パケットはeth0に到着し、netfilter(nftables/iptables)とルート検索を経由してveth0経由で「新しいネットワーク」にルーティングされる。パケットはveth0を介してデフォルトのネットスタックから「送信」され、新しいnet nsネットワークスタック内のveth1(ペアであるため)に到着する。そこで、パケットは分離されたnetfilterとルーティングテーブルを経由し、ソケットはサービスなどをリッスンできる。応答は逆方向に同じように続く。新しいnet nsでveth1から送信され、デフォルトのnet nsのveth0に到着し、eth0を介してそのスタックを終了する" userName="its-kostya" createdAt="2025-03-23T20:01:39" color="#785bff">}}

{{<matomeQuote body="俺は防御セキュリティの観点から話してて、トラフィックをルーティングしようとするサーバーの話じゃないんだ。<br>ローカルユーザーがホストのファイアウォールをバイパスするnamespacesを簡単に作成できるってことは、マジで危険だと思う。" userName="ranger_danger" createdAt="2025-03-23T21:09:22" color="#45d325">}}

{{<matomeQuote body="ネットワーク分離にはfirejailが使えるよ。新しいネットワークnamespaceでアプリケーションを実行できる[1]。俺はこれをTor経由でアプリケーションを実行するために使ってて、何も漏れないようにしてる。<br>[1]https://firejail.wordpress.com/documentation-2/basic-usage/#...<br>＞”A network namespace is a new、 independent TCP/IP stack attached to the sandbox. The stack has its own routing table、 firewall and set of interfaces.”" userName="tobias2014" createdAt="2025-03-22T19:36:14" color="#785bff">}}

{{<matomeQuote body="nft meta expressionsの中にcgroupをマッチさせるオプションがあるみたい（試したことはないけど）。プロセスごとのファイアウォールルールを追加したいだけなら十分かもしれないけど、関連するインターフェースやルーティング/NATを含む追加のnamespaceを構成する必要はないね。" userName="throwfaraway398" createdAt="2025-03-22T20:17:07" color="">}}

{{<matomeQuote body="うん。usernameとかSELinuxラベルに基づいてパケットをマッチさせることもできるよ。<br>コンテナごとにパケットに特別なマークを設定して、それに基づいてフィルタリングすることもできる。インターネット上にはnftのリソースが驚くほど少ないんだよね。俺は数週間かけて書き方を学んだよ。間違いなく、一般消費者向けではないね。" userName="kanbankaren" createdAt="2025-03-22T21:54:39" color="#ff33a1">}}

{{<matomeQuote body="＞Linuxの最大の問題は、プロセスごとのファイアウォール設定がないことだ。<br>あるよ。cgroupsを使えばね。https://www.kernel.org/doc/Documentation/cgroup-v1/net_cls.txt" userName="nolist_policy" createdAt="2025-03-22T19:58:13" color="#785bff">}}

{{<matomeQuote body="cgroup2を使った例ってある？" userName="NewJazz" createdAt="2025-03-22T23:22:27" color="">}}

{{<matomeQuote body="https://www.freedesktop.org/software/systemd/man/latest/systemd.resource-control.html" userName="zokier" createdAt="2025-03-23T12:50:05" color="">}}

{{<matomeQuote body="プロセスごとにファイアウォールルールを設定するのはちょっと重いかもね。ネットワーク名前空間を使えば、プロセスのグループごとにネットワークルール（ファイアウォール含む）を設定できるよ。" userName="fulafel" createdAt="2025-03-23T09:59:39" color="">}}

{{<matomeQuote body="Androidのファイアウォールアプリはみんなそうしてるよ。アプリごとにユーザー名前空間があって、ファイアウォールルールでマッチできるんだ。プログラムのPIDごとにnet名前空間があれば同じようなことができるかも。もし週末が手に入れば、GUIでファイアウォールを管理できるパッチを作りたいな。" userName="1oooqooq" createdAt="2025-03-23T12:59:21" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="みんな、応援ありがとう！こんなに盛り上がるとは思わなかったよ！プロジェクトはまだ2日目だから、いろいろ問題があると思うけど、もし見つけたらGitHubで報告してね！" userName="Zoup" createdAt="2025-03-23T02:41:04" color="">}}

{{<matomeQuote body="去年のOpen Source Europe Summit EuropeでLandlockに関する良いプレゼンがあったよ。[1] Linux Sandboxing with Landlock - Mickaël Salaün, Microsoft [video]:<br>https://youtu.be/d85TDpv8L9U" userName="teleforce" createdAt="2025-03-23T22:02:18" color="#45d325">}}

{{<matomeQuote body="めっちゃクールなプロジェクトだね。Justine Tunneyが数年前にLandlockをラップする`pledge` cli [1]をリリースしたよ。[1]:<br>https://justine.lol/pledge/" userName="simjnd" createdAt="2025-03-23T17:00:13" color="#785bff">}}

{{<matomeQuote body="NixはLandlockの恩恵を十分に受けられると思うな。なぜなら、どのプロセスがどのパスにアクセスする必要があるかを（ある程度）把握しているから。" userName="dpc_01234" createdAt="2025-03-22T19:09:28" color="#785bff">}}

{{<matomeQuote body="Landlock APIは、Dockerコンテナで使われているmount/network名前空間とどう違うの？名前空間は隔離のためで、Landlockはアクセス許可みたいなものって理解で合ってる？<br>Landlock APIを使って、アプリによる許可されていないネットワーク/ファイルシステムアクセスをキャッチして、macOSみたいに許可を求めるポップアップを表示できるかな？" userName="thiht" createdAt="2025-03-22T18:51:29" color="">}}

{{<matomeQuote body="（Landlockのレビュー担当者です）<br>名前空間もサンドボックス化に使えるけど、いろいろ問題があるんだよね。一番の問題は、プログラムに大幅な変更が必要になること。Landlockを使えば、プログラムは起動時にLandlockポリシーをインストールするだけで済むから楽だよ。<br>別のプロセスからルールを制御することはまだできないけど、kernel mailing listsで提案されているよ:<br>https://lore.kernel.org/all/cover.1741047969.git.m@maowtm.or..." userName="gnoack" createdAt="2025-03-22T19:46:32" color="#45d325">}}

{{<matomeQuote body="upstream kernel LSMでは、プロセスが権限を持っている場合に子名前空間を作成するのを防ぐ唯一の方法は？<br>例えば、制限された名前空間内でCAP_NET_ADMINをcatできる場合、大量の欠陥のあるカーネルコードにアクセスできる。そこから権限をエスカレートするのは簡単（カーネルのバグを悪用する方法を知っている人にとっては）。<br>Distroにはこの問題に対する独自の修正があるので、名前空間はサンドボックス化に役立たないわけではない。しかし、基本的なメカニズムはそれほど適していない。" userName="bjackman" createdAt="2025-03-23T00:18:02" color="#ff5733">}}

{{<matomeQuote body="user.max_user_namespaces sysctl自体は名前空間を認識しており、bubblewrapの--disable-usernsオプションで使用されている。<br>しかし、prctlのようなNO_NEW_PRIVSの方が良いだろう。namespace-aware sysctlに必要な中間名前空間を回避できるから。" userName="anybody8824" createdAt="2025-03-23T08:21:08" color="">}}

{{<matomeQuote body="へー、知らなかった。child processがuserns作れないようにブロックできるんだ。ちょっと強引な気もするけど、95%のケースでは問題なさそう？capabilitiesのinherit maskみたいなのがchild namespaceに欲しいよね。誰かがupstreamに提案してた気がするけど、patchは見てないな。" userName="bjackman" createdAt="2025-03-23T11:58:01" color="">}}

{{<matomeQuote body="NO_NEW_PRIVSって結構イラつく場面多いんだよね。pingとか使えなくなっちゃうから、debuggingが大変になるじゃん！" userName="o11c" createdAt="2025-03-23T19:47:36" color="">}}

{{<matomeQuote body="＞For example, you can't run `ping`, so good luck debugging your networking!<br>＞例えば、pingが実行できないから、ネットワークのdebugging頑張ってね！”ってことだけど、Linuxならuserspaceで（UDP経由で）ICMP Echo送れるし。経験上、public InternetだとTLS connectの方がTCPとかUDP、ICMPよりも確実だよ（IPとかTransport repliesをmiddlewareが邪魔しないように）。" userName="ignoramous" createdAt="2025-03-24T08:04:12" color="#ff5c5c">}}

{{<matomeQuote body="いい答えだね、ありがとう！" userName="thiht" createdAt="2025-03-22T20:43:02" color="#45d325">}}

{{<matomeQuote body="Namespace（コンテナが使ってるやつ）は強力だけど、攻撃されやすいんだよね。https://lwn.net/Articles/673597/　を見てみて。Landlockはアクセス制御システムだけど、信用できないprocessでも使えるように設計されてるから、どんなappにも合うんだ。seccompと相性も良いよ。" userName="l0kod" createdAt="2025-03-22T21:22:16" color="#45d325">}}

{{<matomeQuote body="--roのoは“only”の意味だってのはわかるけど、なんかclunkyじゃない？--roxとか自己矛盾してるし。long optionはちゃんと長くて、short optionでバックアップされてるのが好みだな。-r, --read, -w, --write, -x, --execを用意して、short optionを組み合わせられるようにしたらいいと思う（-rwxとか）。" userName="zahlman" createdAt="2025-03-23T16:26:34" color="">}}

{{<matomeQuote body="ROXは自己矛盾してないよ。read()とexecve()は許可するけど、write()とtruncate()は禁止するってのは、安全な実行環境ではよくあること。directory traverseがあると面倒だけどね。だから、--roxは意味的にはOK。見た目が悪いだけ。:D" userName="Zoup" createdAt="2025-03-23T16:47:00" color="">}}

{{<matomeQuote body="parent posterはaccessの組み合わせが無効だって言ってるんじゃなくて、read-ONLYなのにreadだけじゃないからおかしいって言ってるんだよ。<br>“色は黒なら何色でも良い”みたいな。" userName="teo_zero" createdAt="2025-03-24T06:11:43" color="#ff33a1">}}

{{<matomeQuote body="executableなら“read-only”じゃないよね。" userName="zahlman" createdAt="2025-03-24T01:27:07" color="">}}

{{<matomeQuote body="--execの意味がいまいちわからない。example 3で--execを省略したら、bashが他のprogramを実行できなくなるってこと？" userName="khrbtxyz" createdAt="2025-03-23T00:24:36" color="">}}

{{<matomeQuote body="ああ、あれは最良の判断じゃなかったかもね。v0.1.4を見てみてよ。今はもっと良くなってると思うよ！" userName="Zoup" createdAt="2025-03-23T01:31:42" color="">}}

{{<matomeQuote body="めっちゃクールじゃん！でも`--best-effort`がデフォルトで有効になってるのはちょっと反対かな。これってサンドボックスでセキュリティ境界なんだから、セキュリティを下げるのはオプトインであるべきで、オプトアウトであるべきじゃないと思うんだ。" userName="machinestops" createdAt="2025-03-23T23:16:30" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
