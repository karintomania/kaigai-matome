+++
date = '2025-10-12T00:00:00'
months = '2025/10'
draft = false
title = 'WireGuardをFPGAに！ミニマル設計が実現する超高速VPNのインパクト'
tags = ["WireGuard", "FPGA", "VPN", "ネットワーク", "ハードウェアアクセラレーション"]
featureimage = 'thumbnails/blue4.jpg'
+++

> WireGuardをFPGAに！ミニマル設計が実現する超高速VPNのインパクト

引用元：[https://news.ycombinator.com/item?id=45559857](https://news.ycombinator.com/item?id=45559857)




{{<matomeQuote body="WireGuardはFPGAに合ってるけど、QUICを現代的なトンネリングプロトコルとして使うことにもっと興味がないのはなんでだろうね？<br>QUICはデータグラムでWireGuardの代替になるし、TUNデバイスやカスタム認証も組み合わせやすいよ。性能はWireGuardより劣るかもしれないけど、動的なエンドポイントとかTLSv1.3準拠、AES加速、カスタム認証、HTTP3トラフィックへの偽装とか、たくさんのメリットがあるんだ。" userName="geoctl" createdAt="2025/10/12 21:34:28" color="#ff33a1">}}




{{<matomeQuote body="WireGuardの目的はシンプルさだよ。QUICの目的はレガシーなウェブのゴミとの互換性だからね。<br>後者は本当に必要なとき以外は使わないものだよ。" userName="AnthonyMouse" createdAt="2025/10/12 22:04:27" color="">}}




{{<matomeQuote body="QUICは別にウェブ専用ってわけじゃないよ。UDPの上にTCPとTLSを置き換えるようなものなんだ。<br>QUICの上に独自のL7を構築することだってできるんだからね。" userName="geoctl" createdAt="2025/10/12 22:23:14" color="">}}




{{<matomeQuote body="何の上にでもカスタムL7は作れるよね。プリンターやウェブカメラの上にTCP/IPを構築したのがお気に入りだったよ。<br>QUICはただのUDPと比べて何がいいのかな？ファイアウォールがWireGuardのUDPパケットよりQUICをよく理解してくれるってこと？それが疑問だよ。" userName="bb88" createdAt="2025/10/12 23:51:58" color="">}}




{{<matomeQuote body="MullvadがまさにWireGuard over QUICを難読化のために提供してるよ。HTTPSトラフィックに見えるようにするんだ。<br>これを見て→https://mullvad.net/en/blog/introducing-quic-obfuscation-for..." userName="azalemeth" createdAt="2025/10/12 21:54:17" color="#ff5c5c">}}




{{<matomeQuote body="「grepの作者が偉大なプログラマーとして認められたことはない」って？いやいや、Ken Thompsonはgrepを書いたし、彼は間違いなくそう認識されてるよ。" userName="philipallstar" createdAt="2025/10/13 10:20:37" color="">}}




{{<matomeQuote body="WireGuard over QUICは意味ないと思うな。パフォーマンスは落ちるし、内側のWireGuardのMTUも小さくなる可能性もある。<br>難読化したいだけなら、WireGuardをQUICに完全に置き換えればいいだけだよ。" userName="geoctl" createdAt="2025/10/12 22:00:11" color="">}}




{{<matomeQuote body="WireGuardは意図的に難読化を避けてるんだ。難読化はWireGuardの上の層でやるべきで、WireGuardはシンプルな実装で堅牢な暗号を提供することに集中してるからね。<br>このコメントを見ると、QUICがその「上の層」になる実例が書いてあるよ。<br>WireGuardとQUICは設計目標が違うだけで、どっちも合理的なトンネリングプロトコルなんだ。" userName="zamadatix" createdAt="2025/10/13 00:35:03" color="#45d325">}}




{{<matomeQuote body="man -T grep | grep ’Free Soft＼|Thom’ (Cop)108 348 Q(yright 1998-2000, 2002, 2005-2023 Free Softw)-.1 E(are F)<br>「grep」の最初のバージョンは確かに彼が書いたけど、それがどうしたって言うの？今の「grep」とは関係ないし、誰が書いたかなんて誰も気にしないよ。" userName="ohdeardear" createdAt="2025/10/13 10:40:00" color="">}}




{{<matomeQuote body="敵対的なネットワーク管理者にとっては、QUICをまるごとブロックする方が楽なんじゃないかな。" userName="bb88" createdAt="2025/10/13 00:50:05" color="">}}




{{<matomeQuote body="WireGuardは5k行くらいで監査も簡単なのに、QUICみたいな複雑なものを使う意味ある？OpenSSLのバグから何も学ばなかったのかよ。" userName="sugarpimpdorsey" createdAt="2025/10/13 04:22:31" color="#ff5733">}}




{{<matomeQuote body="QUIC上でのDNSってどうなってるの？純粋な疑問なんだけど。" userName="nine_k" createdAt="2025/10/12 23:53:50" color="">}}




{{<matomeQuote body="QUICはパフォーマンスのためじゃなく、HTTPSに見えるからこそ重要なんだ。<br>突破されにくく、WireGuardの認証と分離できるし、TCP-in-TCPじゃないのがメリットだよ。" userName="nine_k" createdAt="2025/10/12 23:51:56" color="#45d325">}}




{{<matomeQuote body="いや、彼がgrepを書いたんだよ。それまではgrepなんてなかったんだ。<br>Multics, Unix, B, C, UTF-8, Plan9, Inferno、たくさんの功績がある偉大なプログラマーだよ。前のコメントは的外れだ。" userName="jacquesm" createdAt="2025/10/13 12:52:36" color="">}}




{{<matomeQuote body="QUICを使うメリットは、通常のWebトラフィックに見える暗号化トンネルだから、ブロックされにくいってこと。<br>VPNがブロックされても、QUICなら”普通のユーザー”に見えるから、突破できる可能性が上がるんだ。100%じゃないけどね。" userName="zamadatix" createdAt="2025/10/13 00:56:01" color="#ff33a1">}}




{{<matomeQuote body="QUICはWeb PKIとTLSを使ってる。<br>TLSはシンプルじゃないプロトコルで、HTTPSみたいに既存のものとの互換性が必要なときに使うのが主な理由だよ。" userName="AnthonyMouse" createdAt="2025/10/13 08:04:30" color="#785bff">}}




{{<matomeQuote body="彼が偉大なプログラマーだとは思わないな。<br>彼のプログラムはコンピュータサイエンス的に見れば単純だよ。LLMだってgrepくらいは作れるし。<br>本当に複雑なプログラムは、LLMには作れないからね。" userName="ohdeardear" createdAt="2025/10/13 14:01:07" color="">}}




{{<matomeQuote body="WireGuard-over-QUICみたいにステートマシンを2つ重ねるんじゃなく、QUICベースのトンネリングを直接使えばいいじゃん。" userName="geoctl" createdAt="2025/10/13 00:00:19" color="#785bff">}}




{{<matomeQuote body="実はね、もっと面白いL7の再実装としてSSH over QUICがあるんだ。SSHはplaintext TCP上で動くから独自の認証とトランスポートを実装する必要があるけど、QUICを使えば認証（例えばJWT bearer tokensを発行元IdPsによってL7で検証されるか、mTLS x509 certsで自動的に検証される）やトランスポート部分をオフロードできて、実装をかなりミニマルにできるんだ。" userName="geoctl" createdAt="2025/10/13 00:31:39" color="#45d325">}}




{{<matomeQuote body="TLSを使う主な理由は、Heartbleed以降、最も徹底的に検証された市販の実装がたくさんあること。それに、もしTLS（または主要な実装）に実用的な脆弱性が見つかっても、攻撃者はAmazonでクレカ情報を盗む方に集中するから、自分の利用が狙われる可能性は低いんだ。派手なのはいいけど、Wireguardほどの柔軟性が必要なかったり、プロトコルを正しく実装する専門知識がないなら、TLS 1.3ベースの方が良い選択肢だよ。" userName="johncolanduoni" createdAt="2025/10/13 22:44:42" color="#ff5c5c">}}




{{<matomeQuote body="QUICは、敵対的な管理者が復号できる場合に限り許可されるかもね。データが復号できない（またはplaintext web trafficに見えない）なら、QUIC接続はブロックされちゃう。会社のノートPCには通常、トラフィックを監視するためのroot certがインストールされてるし、国家が全てのデバイスにそれを要求するのもありえない話じゃないんだ。" userName="bb88" createdAt="2025/10/13 18:46:31" color="#ff33a1">}}




{{<matomeQuote body="QUICってどんなレガシーなゴミと互換性があるの？HTTP関連は全く含まれてないじゃん。単なる暗号化されたトランスポート層でしょ。" userName="johncolanduoni" createdAt="2025/10/13 02:42:40" color="">}}




{{<matomeQuote body="ちなみに、QUICはTLS 1.3とモダンな暗号を強制するんだ。攻撃対象がずっと小さくて、問題を起こす可能性も少ない。GoやRustのメモリ安全なTLS実装と組み合わせると、Heartbleedの頃から状況は変わったって言っていいと思うよ。" userName="dpeckett" createdAt="2025/10/13 06:25:07" color="#ff33a1">}}




{{<matomeQuote body="最近、CONNECT-IP over QUIC [1]を使ったメッシュネットワークプロジェクトに取り組んだよ。mTLSのメリットは大きい（特にACMEと組み合わせると）。VPNをQUIC上でトンネリングするのは簡単で、JWT bearer tokensなんかと組み合わせるのも楽。もっと広く使われるべき素晴らしいソリューションだと思う。でも、パフォーマンスに関する欠点もあって、非最適化ライブラリコードやメッセージ処理コスト、ユーザー空間UDPオーバーヘッドが原因だ。今日は数gbits/1500 MTU以上のスループットを出すのは難しい（インターネット閲覧には十分だけど）。<br>FPGA加速の用途では、Googleのデータセンター転送PSP [2]が最も成熟してる。これはIPsecを簡略化したもの。最近のin-kernel IPsecはマルチコア/マルチキュー対応で高速化してるよ [3]。Linux上のIPsecはパフォーマンスで圧倒的だ。メッシュプロジェクトでは、IPsec/PSP/Geneveにヒントを得たカスタムのkernel bypass (AF_XDP) データプレーンに移行したよ。<br>ちなみに、面白いネットワークプロジェクトがあって、Go/Rustデベロッパーが必要なら（契約/フリーランス）、連絡してね！<br>1. https://www.rfc-editor.org/rfc/rfc9484.html<br>2. https://cloud.google.com/blog/products/identity-security/ann...<br>3. https://netdevconf.info/0x17/docs/netdev-0x17-paper54-talk-s..." userName="dpeckett" createdAt="2025/10/13 04:44:08" color="#ff5733">}}




{{<matomeQuote body="TCP over Wireguardは二つの状態機械が積み重なってるよね。QUIC over Wireguardも同じ。でも、どちらもうまく動いてるみたいだ。お前の議論は、sshuttleがSSH経由のTCP over TCPをなくすのと似てるってことかな。ただ、sshuttleはHOL blockingを防がないけどね。" userName="bb88" createdAt="2025/10/13 00:17:14" color="">}}




{{<matomeQuote body="安定したシステムの例ってある？" userName="pastage" createdAt="2025/10/13 20:09:35" color="">}}




{{<matomeQuote body="めっちゃクールなプロジェクトだね！1Gbps以上のポートに対応した次の設計に期待してるよ。最近、仕事でDebianとCOTS Zen4マシン、専用Linuxカーネルで25Gbps+対応のLayer2透過WireGuardソリューションを構築したんだ。最適化されたFPGAがそれと比べてどれくらいできるのか興味あるな。" userName="c0l0" createdAt="2025/10/12 19:31:22" color="#ff5c5c">}}




{{<matomeQuote body="WireGuardの暗号化とマルチキューのボトルネックはどう回避したの？ジャンボフレーム？25GはWireGuardにとってかなり高いよね。1. https://www.youtube.com/watch?v=oXhNVj80Z8A" userName="dpeckett" createdAt="2025/10/13 05:22:48" color="#ff5733">}}




{{<matomeQuote body="そう、ジャンボフレームが大量の追加パフォーマンスを引き出すんだ。まさに俺達が使ってるリンクで必要としてるものだよ。wg-bench[0]でループバック（実際はネットワーク名前空間をまたぐveth）みたいな設定を使ったら、このマシンで15Gbps超の安定したスループットが出てるよ。0. https://github.com/cyyself/wg-bench" userName="c0l0" createdAt="2025/10/13 05:52:18" color="#38d3d3">}}




{{<matomeQuote body="それって多分48ポートのスイッチの話で、バックプレーンの性能を言ってるだけじゃない？" userName="superxpro12" createdAt="2025/10/13 05:50:03" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="まったく同感。みんなのために詳しく言うと、MACSecは802.1ae標準でラインレートで動くよ。Juniper PTX10008みたいな機器なら400Gbpsで動かせるし、保護したいリンクで使うポートの機能をオンにするだけでいいんだ。DCIで暗号化が必要なら、Linuxベースのソリューションを組み合わせるより、ベンダーサポート付きの既存機器でできることが多いだろうね。ただし、複数のL2ホップで複数のLayer2ドメインを結合していて、中間を制御できない場合は別だけど、その場合は別のリンクを使うべきだね。" userName="bc569a80a344f9c" createdAt="2025/10/12 20:00:22" color="#45d325">}}




{{<matomeQuote body="ラインスピードでMACSec互換のスイッチは持ってるんだけど、まだ試す時間がないんだ。これはLANに限られてて、インターネット経由ではMACSecリンクはできない、ってことで合ってる？" userName="tecleandor" createdAt="2025/10/13 09:48:21" color="">}}




{{<matomeQuote body="それはポートからポートだよ。リンクを保護するんだ。" userName="bc569a80a344f9c" createdAt="2025/10/13 10:54:44" color="#45d325">}}




{{<matomeQuote body="記事のMACsecに関するリンクだよ。特に「Testing MACsec」の段落を読んでみて。トラフィックの半分が暗号化されずに送られていたって指摘があるぞ。これはやばいね。<br>https://news.ycombinator.com/item?id=41531699" userName="justsomehnguy" createdAt="2025/10/13 20:22:51" color="">}}




{{<matomeQuote body="MACsecは存在してるの？「存在する」って言うけど、質の高いオープンソースの実装はあるのかな？" userName="ur-whale" createdAt="2025/10/12 22:16:06" color="">}}




{{<matomeQuote body="MACsecのmanページを見てみて。通常はサイト間のリンクで使われるから、そのリンクを終端するスイッチかルーターにだけ必要になるよ。<br>https://man7.org/linux/man-pages/man8/ip-macsec.8.html" userName="Hikikomori" createdAt="2025/10/12 22:24:02" color="">}}




{{<matomeQuote body="そうだね、MACsecがあればよかったんだけど、うちの既存のコアスイッチ（Dell PowerSwitch S5200シリーズ）では使えないんだよな〜。" userName="c0l0" createdAt="2025/10/13 05:55:46" color="">}}




{{<matomeQuote body="Xilinx 7チップ向けのオープンソーススタックが、この記事で一番面白い点だね。もっと詳しく掘り下げてみる必要があるな。" userName="Surac" createdAt="2025/10/13 06:59:11" color="">}}




{{<matomeQuote body="プロジェクトページはここだよ！<br>https://nlnet.nl/project/KlusterLab-Wireguard/" userName="altairprime" createdAt="2025/10/12 20:00:41" color="">}}




{{<matomeQuote body="SpinalHDLは超クール！半導体市場の統合は怖いけど、新しいオープンな設計システムのおかげで、新しいことが可能になってきてるよ。シリコンファウンドリーモデルの復興にはまだ課題があるけど、チップ製造の未来に期待したいね。<br>Blackwireプラットフォームは高価で、ゲートウェアはニッチなSpinalHDLで書かれている。Blackwireがオープンソースになったのは、財政難からだったらしい。元々は販売目的だったんだって。旧BlackWire 100Gbe WireGuardプロジェクトのリンクはこれ！<br>https://github.com/FPGA-House-AG/BlackwireSpinal" userName="jauntywundrkind" createdAt="2025/10/12 18:08:29" color="#ff33a1">}}




{{<matomeQuote body="SystemVerilog以外のHDLの課題は、商用ツールがサポートしてないことと、SystemVerilogが持つ膨大な機能に他のHDLがほとんど及ばないことだね。特にマルチクロック設計や検証では顕著だよ。俺がどうして知ってるかって？苦労したからだよ…。<br>でも、Verylってのが希望の光だと思ってる。SystemVerilogに近いから相互運用も簡単だし、生成されるコードも読みやすい。経験豊富な人たちが作ってるし、SystemVerilogのTypeScriptみたいな感じかな。" userName="IshKebab" createdAt="2025/10/12 18:43:05" color="#ff5733">}}




{{<matomeQuote body="SystemVerilogってマルチクロック設計で何がいいの？migenやAmaranthの方がCDCや非同期FIFOの標準ライブラリがあって、クロックドメインもちゃんと管理できるからずっと良いと感じるよ。SystemVerilogのツールはサポートがバラバラでオープンソースも少ないし、Xsimは高度な機能に対応してなくてクラッシュするし、Vivadoも一部しか対応してないんだ。結局、みんなが使える基本的な共通機能だけになっちゃう。Verilogをコンパイルした後のデバッグは面倒だけど、ツールが一つだけだからバグやドキュメントの質に悩まされることも少ないのはメリットだよね。" userName="danhor" createdAt="2025/10/12 19:05:06" color="#ff33a1">}}




{{<matomeQuote body="将来的には、AmaranthがPythonに依存しない、それ自体で完結した言語になる可能性もあると思うよ。Pythonは引き続き埋め込みマクロ言語として使えれば、すごく強力になりそうだね。" userName="bb88" createdAt="2025/10/13 00:40:56" color="">}}




{{<matomeQuote body="Amaranthみたいな新しいHDLがすごいのは、ホスト言語との連携がシームレスなところだよね。NumPyを使ってDSPフィルターを生成したり、CRC構造を作ったり、ワード幅に応じてロジックを変えたり、何でもできる。SystemVerilogや埋め込みマクロ言語でも可能だけど、ドキュメントが少なかったり、メタ言語と「本物の」言語の間でミスマッチが起きやすいんだ。Cocotbもシミュレーションでこの問題に悩まされてるし。Amaranthみたいにホスト言語でうまく実装できるなら、スタンドアロンであるメリットはそんなにないと思うよ。" userName="danhor" createdAt="2025/10/13 07:53:05" color="#785bff">}}




{{<matomeQuote body="PonyORMがPython言語をハッキングするレベルにはいつも敬意を払ってきたんだ。ジェネレータのASTを解析してSQLに変換するなんてすごいよね。Amaranthでも、これと似たようなことができて、もっとPythonネイティブな構文にできるかもしれないって思うんだ。" userName="bb88" createdAt="2025/10/13 23:52:28" color="#ff5c5c">}}




{{<matomeQuote body="SpinalHDLの複数クロックドメインサポートは、レキシカルスコープのおかげで本当に素晴らしいよ。SystemVerilogのインターフェースみたいなものも、Scalaの型システムを使えばもっと良い方法で実装できるし、SpinalHDLは想像できるほとんど全てのVerilogを生成できるんだ。" userName="15155" createdAt="2025/10/13 02:32:47" color="#45d325">}}




{{<matomeQuote body="ニッチなHDLに関するコメントがたくさんあったのに、著者たちがこのプロジェクトでPipelineCに移行したというのは面白いね。" userName="bri3d" createdAt="2025/10/12 18:25:50" color="">}}




{{<matomeQuote body="これ、どんなシナリオで役に立つのか全く想像できないな。彼らは「WireGuard VPNのワイヤースピードハードウェア実装」って言ってるけど、ボードには1Gbpsポートが4つしかないじゃん…。LinuxカーネルのWireGuard標準実装は、すでにGbpsリンクを飽和させられるし、ミッドレンジCPUでも10Gbpsに迫るんだ。例えばこっちのニュースも見てよ: https://news.ycombinator.com/item?id=42172082<br>もし4つの10Gbpsポートを備えたプラットフォームを作ったなら面白かっただろうけど、それだとハードウェアもビットストリームもほぼゼロから再開発する必要があるよね。" userName="mrb" createdAt="2025/10/12 18:46:21" color="#ff5733">}}




{{<matomeQuote body="これは教育プロジェクトだから、そんなに厳しく批判する必要はないんじゃないかな。電気電子工学の学生が数百ドルでボードを買って、これで学べるんだから。仮にASIC実装にするなら、CPUよりもワットあたり、コストあたりの性能でかなり優れるだろうし、だからこそハイエンドのネットワークアダプターには他のプロトコル用のハードウェアアクセラレーションがあるんだ。個人的には、まともな価格のWireGuardアプライアンスが手に入るなら、すごく興味があるよ。昔、FreeBSDサーバーをクローゼットで動かして似たようなことをしてたけど、もうああいうごちゃごちゃしたことはしたくないんだ。" userName="jasonwatkinspdx" createdAt="2025/10/12 21:05:22" color="#ff5733">}}




{{<matomeQuote body="教育目的だという点には同意するけど、ウェブページに「ソフトウェアの性能はワイヤーの速度をはるかに下回る」なんて不正直な主張をする必要はないよね。" userName="mrb" createdAt="2025/10/13 07:47:07" color="#ff5733">}}




{{<matomeQuote body="なんだか助成金目的のプロジェクトっぽい雰囲気を感じるな。RTLからエンドツーエンドで監査可能っていう考えは興味深いけどね。WireGuardはルーティングテーブルが大きかったり、MTUが小さかったりすると性能が落ちる傾向にあるけど、このプロジェクトは最悪のルーティングケースでもラインスピードを目指してるみたいだから、そこは注目だね。" userName="bri3d" createdAt="2025/10/12 18:53:49" color="#38d3d3">}}




{{<matomeQuote body="このプロジェクトはNLnetから助成金をもらったんだ。NLnetはたくさんの素晴らしいプロジェクトに資金提供していて、本当にすごい仕事をしてるよ！NLnetについてはここを見てね: https://nlnet.nl/thema/NGI0CommonsFund.html" userName="roywashere" createdAt="2025/10/12 20:03:21" color="#785bff">}}




{{<matomeQuote body="助成金をもらう学術プロジェクトは論文やスライドを作るためのものだよね。これで技術は進歩するし、このプロジェクトの論文も好きだけど、すぐに動くソリューションは期待しない方がいいと思うな。" userName="bri3d" createdAt="2025/10/13 00:21:04" color="">}}




{{<matomeQuote body="VPNで10Gbpsなんて無理だってずっと言われてきたのが面白いよね。/r/mikrotikの2年前の投稿で、みんな不可能だって証拠を出してたのに、結局うまくいったんだってさ！詳細はこちら: https://old.reddit.com/r/mikrotik/comments/112mo4v/is_there_..." userName="renewiltord" createdAt="2025/10/12 19:04:59" color="">}}




{{<matomeQuote body="MikroTikのハードウェアって、基本的なスイッチング以外だとラインスピードが出ないことが多いんだよ。VPNなんて、もってのほかだよね。" userName="Avamander" createdAt="2025/10/12 21:08:03" color="">}}




{{<matomeQuote body="リンクを間違えてごめん。MikroTikのルーターじゃなくて、Ryzen 7950とかx86マシンでVPNを終端させれば、簡単に8Gbpsや10Gbpsも出せるんだ。俺もLinuxのゲートウェイノードでWireGuardを終端させて、10Gbpsを余裕で出せたよ。Redditのスレッドは、最初から「後ろのPCで終端しろ」って言えばよかったのにね。" userName="renewiltord" createdAt="2025/10/13 01:59:57" color="#ff5c5c">}}




{{<matomeQuote body="そうだよね。最適化されてない技術スタックだと性能がいまいちでも、「これで十分」って思われがちだ。技術が複雑だから仕方ないって思い込んじゃうんだけど、新しい競合が出てきてぶっちぎりの性能を見せると、本当はもっと最適化できたんだってわかるんだよね。" userName="mrb" createdAt="2025/10/13 07:19:29" color="#785bff">}}




{{<matomeQuote body="うん、マルチギガビットネットワーキングだと特にそう。ファイル共有でもHTTPでも、ちゃんと性能が出るソリューションを見つけるのが本当に大変で、うんざりするよ。" userName="Avamander" createdAt="2025/10/13 13:40:22" color="">}}




{{<matomeQuote body="これってMikroTikハードウェアに特化した話なの？エンタープライズ向けの機器とか、強力なサーバーなら簡単にできちゃうはずだけど。" userName="Hikikomori" createdAt="2025/10/12 19:49:07" color="">}}




{{<matomeQuote body="40Gb/sならシングルコアでいけるし、なんで専用ハードウェアが必要なの？最小パケットサイズだと120Mパケット/秒もさばく必要があるの？" userName="Veserv" createdAt="2025/10/12 23:08:56" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これならスタック全体を監査できるから、CiscoのバックドアとかIntel MEみたいな隠れたマルウェアの心配がないのがいいんだよ。全部自分のハードウェアで安心できるってこと。" userName="wildzzz" createdAt="2025/10/13 02:10:58" color="#ff5c5c">}}




{{<matomeQuote body="でもさ、FPGAチップやボードだってマルウェアと無縁じゃないんだよ。<br>https://www.iacr.org/archive/ches2012/74280019/74280019.pdf<br>AMD Vitis/Vivadoでビットストリームにクソみたいなもん仕込まれる可能性もあるしね。マジでセキュアにしたいなら、自社の設備でチップを製造するしかないけど、それは現実的じゃないよ。" userName="ponkpanda" createdAt="2025/10/14 11:50:24" color="#785bff">}}




{{<matomeQuote body="これって、ミッションクリティカルなデプロイで、ソフトウェアみたいに簡単にやられない、すごく強固なVPNとして使えるんじゃないかな。" userName="vzaliva" createdAt="2025/10/13 02:12:02" color="#785bff">}}




{{<matomeQuote body="PCで10Gbps出せるとしたら、他の処理にCPUのパワーが残るの？" userName="brcmthrowaway" createdAt="2025/10/12 19:56:05" color="">}}




{{<matomeQuote body="bps（ビット毎秒）なんて簡単だよ。重要なのはpackets per second（パケット毎秒）なんだ。もし1パケット64バイトだったら、最悪150Mパケット/秒を処理しなきゃいけない。バイトを連続で送るのは楽だけど、実際の判断はパケットごとにされるからね。" userName="soneil" createdAt="2025/10/12 20:22:11" color="#ff33a1">}}




{{<matomeQuote body="マジでさ、これはWireGuardのFPGA実装としては初めてなんだぜ。今すぐ全てをこなす必要はないし、改善できるんだよ。（BSDライセンスのオープンソースだし、誰でもすぐに改善できるさ。）「この概念実証は複数の10Gbpsポートに対応してないからダメだ！」みたいな考え方はマジで残念だよ。新しい方法でタスクをこなすってだけで、たとえ2つの10Mbpsポートでしか動かなくても、十分面白い取り組みだと思うんだ。全てのアイデアの価値を白か黒かで判断される世界には住みたくないね。（幸い、俺はそんな二元的な世界には住んでないけど。）" userName="ssl-3" createdAt="2025/10/13 07:44:28" color="#45d325">}}




{{<matomeQuote body="WireGuardをCorundumに追加できたらカッコいいだろうけど、高すぎて趣味でやるには無理だろうね。" userName="wmf" createdAt="2025/10/12 19:54:51" color="">}}




{{<matomeQuote body="これ、コンセプトは面白いけど、まだ学術的な感じがするね。RTLから全部ソースがある（けどライセンスはプロプライエタリ？）ってのは監査の観点からはすごく魅力的だよ。1Gのライン速度は最近のデスクトップでも簡単だけど、ルーティングテーブルが大きくて小さいフレームを扱うワーストケースだと結構すごいんだ。ソフトウェアでハンドシェイクを管理してハードウェアでパケットを処理するアーキテクチャは理にかなってるね。WireGuardはアクセラレーションが足りてないから、ハードウェア実装ってのはかなり面白いところを突いてると思うよ。" userName="bri3d" createdAt="2025/10/12 18:47:39" color="#ff33a1">}}




{{<matomeQuote body="「（ライセンスはプロプライエタリ？）」って書いてたけど、BSD 3-Clause Licenseがプロプライエタリに見えるの？それはちょっと違うんじゃないかな？<br>でも、君の言う通り、個々のVerilogファイルのライセンス[1]がリポジトリ全体のLICENSEファイル[2]を上書きしちゃうのかって疑問は確かにあるよね。<br>[1] https://github.com/chili-chips-ba/wireguard-fpga/blob/main/1...<br>[2] https://github.com/chili-chips-ba/wireguard-fpga/blob/main/L..." userName="qrios" createdAt="2025/10/13 04:25:56" color="#45d325">}}




{{<matomeQuote body="ライセンスの矛盾がある場合、より制限的なライセンスが適用されるべきだね。このWireGuard FPGAプロジェクトの大部分は、Chili Chipsの変なプロプライエタリライセンス下にあるみたい。これだと、公開してる人たちがライセンス違反してるってことになるし、俺たちも情報を秘密にする義務があるから、リポジトリへのリンクも共有できないってことになっちゃうね。" userName="mort96" createdAt="2025/10/13 09:11:18" color="#ff5c5c">}}




{{<matomeQuote body="記事の「OpenVPN / IPSecはもう古い」って主張、全然説明も根拠もないじゃん。IPSecはともかく、OpenVPNが「勢いを失ってる」なんて全く思えないんだけど。なんでそう言えるのか理由が知りたいな。ただ「5年以上前のものだから新しい方が自動的に優れてる」って思考だったら、ちょっとうんざりするよ。" userName="nocman" createdAt="2025/10/12 18:38:17" color="#ff5733">}}




{{<matomeQuote body="いや、君はちゃんと見てないだけだよ。PIAとかの商用VPNも今やWireGuardを使ってるし、Tailscaleみたいな会社もVPNをWireGuardに切り替えてるんだ。理由はたくさんあって、主なのはパフォーマンスが段違いに良いこと、スタックがシンプルだからセキュリティを確保しやすいこと、それに設定が簡単で望む動作を得やすいってことだね。" userName="vlovich123" createdAt="2025/10/12 18:45:46" color="#ff5733">}}




{{<matomeQuote body="WireGuardは使ってるし、すごくいいと思ってるんだけど、俺が働いてきたような大企業ではまだ全然導入されてないんだよね。もちろん、これは時間とともに変わるだろうけど、すごく時間がかかるだろうな。" userName="_joel" createdAt="2025/10/12 19:24:41" color="">}}




{{<matomeQuote body="確かに時間はかかるだろうね。でも、例えばCloudflareのWarp VPNも内部ではWireGuardを使ってるんだ。だから、企業環境での導入は色々な理由で遅れるかもしれないけど、いずれはそうなるはずだよ。ただ、この手の話になると企業ITってのは、世間から10〜20年くらい遅れる傾向にあるんだけどね。" userName="vlovich123" createdAt="2025/10/12 20:21:09" color="#ff5733">}}




{{<matomeQuote body="Warpって、実はデフォルトではMASQUE (UDP/IP over QUIC) を使ってるんだよ。" userName="byhemechi" createdAt="2025/10/13 04:22:49" color="">}}




{{<matomeQuote body="デフォルトが変わってたなんて知らなかったな。元々はWireGuardだったんだけど、君の言う通り、MASQUEがトンネルオプションに追加されてて、それがデフォルトになったんだね。" userName="vlovich123" createdAt="2025/10/13 06:18:24" color="">}}




{{<matomeQuote body="大企業はほとんどの場合、古いハードウェアファイアウォールがサポートしてるVPNソリューションを使ってるんだ。Cisco、Juniper、FortigateとかのハードウェアがWireGuardトンネルを管理できるようになるまでは、普及には時間がかかるだろうね。個人的には、帯域が狭くて遅延が大きいリンクにWireGuardを使いたいんだけど、どちらの機器もサポートしてないし、適当な*nixサーバーにVPNを入れさせてもらえるわけでもないから残念だよ。" userName="BuildTheRobots" createdAt="2025/10/12 21:24:33" color="#ff33a1">}}




{{<matomeQuote body="KubernetesとCalicoを使えば、WireGuardでクラスター内のトラフィックを透過的に暗号化できるんだ（クラスターメッシュがあればクラスター間もね）。<br>今後、こういう「自動SDN over WireGuard」みたいなのがもっと増えるかもね。ただ、FIPS準拠が必要な場合は、WireGuardだとFIPS必須の暗号方式とかに対応してないから使えないかもしれないよ。<br>https://docs.tigera.io/calico/latest/network-policy/encrypt-wireguard/" userName="danudey" createdAt="2025/10/12 19:48:58" color="#45d325">}}




{{<matomeQuote body="そうだね、Kubernetesで使うのは良いんだけど、俺が言ってたのは「ロードウォーリアー」クライアント、つまり普通の会社のVPNユーザーのことなんだ。皮肉なことに、K8sにWireGuardみたいな技術を導入する方が、一般ユーザー向けの既存のベンダー製品を置き換えるより簡単なんだよね。" userName="_joel" createdAt="2025/10/12 20:18:28" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
