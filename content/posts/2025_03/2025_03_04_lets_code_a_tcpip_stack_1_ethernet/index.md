+++
date = '2025-03-04T00:00:00'
draft = false
title = '自分で作るTCP/IPスタック入門！第1回：EthernetとARPの基礎を徹底解説'
tags = ["プログラミング", "ネットワーク", "TCP/IP", "教育", "開発"]
featureimage = 'thumbnails/orange4.jpg'
+++

> 自分で作るTCP/IPスタック入門！第1回：EthernetとARPの基礎を徹底解説

引用元：[https://news.ycombinator.com/item?id=43250093](https://news.ycombinator.com/item?id=43250093)

{{<matomeQuote body="昔、Cでユーザースペースのネットワークスタックを作ろうとしたんだけど、TUNインターフェースを通して生のパケットを処理するところまではできた。IPアドレスやルートの設定ができるシェルもあって、mbufとsk_bufを参考にした構造体でネットワークパケットを保持してる。UDPの実装までは進んだけど、TCPの実装はやる気がなくて。興味があったらこちらからどうぞ：<br>https://github.com/cakturk/unet" userName="cihangir" createdAt="2025-03-04T10:52:02" color="#45d325">}}

{{<matomeQuote body="昔、純粋なbashでpcap/tcpdumpのパーサーを書いたことがあるんだ。プログラムを書くのがそれしかできなかったからね。もちろん、超遅くて脆弱なものだったけど、実際に動いたし、ちょっと楽しかった。今でもそのコードがあったらいいなぁ。" userName="VWWHFSfQ" createdAt="2025-03-04T13:48:45" color="">}}

{{<matomeQuote body="多くの組み込みデバイスはlwipのTCP/IP実装を使ってる。lwipの'POSIX port'も同じことをしていて、TUN/TAPデバイスから生のEthernetバイトを受け取るんだ。<br>https://github.com/lwip-tcpip/lwip/blob/master/contrib/ports..." userName="jpfr" createdAt="2025-03-06T20:28:04" color="">}}

{{<matomeQuote body="最小のLinuxカーネルをTCP/IPスタックなしでコンパイルすると約400KB。TCP/IPスタックを追加すると800KBになる。温度を送信するプロジェクトのために、ユーザースペースの小さなCプログラムでUDPメッセージに値を送ったら、スペースと複雑さが減ったよ。" userName="zoobab" createdAt="2025-03-04T09:49:52" color="#ff5733">}}

{{<matomeQuote body="そりゃすごい！何も知らない私からすると、それってTCP/IPの部分がカーネル全体の半分のソースコードってことじゃないよね？" userName="chamomeal" createdAt="2025-03-04T14:33:43" color="">}}

{{<matomeQuote body="Linuxカーネルのソースコードの大半はデバイスドライバーだよ。ほとんどはデフォルトでカーネルイメージに含まれてないけど、必要に応じてカーネルモジュールとして使えるんだ。たとえば、サーモスタットはわざわざ珍しいゲームコントローラーのドライバーは必要ないから、そんなのは入ってないけど、必要なら追加できる。" userName="tga_d" createdAt="2025-03-04T19:12:09" color="#ff33a1">}}

{{<matomeQuote body="IPスタックってなんでそんなに大きいの？400KBのバイナリってかなりのコード量だよ。大規模サーバー用に最適化されてるの？" userName="miohtama" createdAt="2025-03-04T14:04:19" color="">}}

{{<matomeQuote body="現代のTCP/IPスタックには、アンチスプーフィングやパフォーマンス向上（ハードウェアネットワークカードとのゼロコピー統合など）、攻撃防止策（SYNフラッドやシーケンス番号のランダム化など）、さまざまなハードウェアオフロード（チェックサムオフロードなどを行うネットワークカードも含む）、IPv6（もともとIPSecの統合も要求されていた）や低レイヤー2プロトコルのサポートが含まれているよ。" userName="hylaride" createdAt="2025-03-04T14:37:38" color="#ff33a1">}}

{{<matomeQuote body="ARPを無効にすると、同じネットワークに同じIPを持つサーバーをグループ化できる！もし、ルーティングフロントエンドがMACアドレスでバックエンドサーバーのネットワークインターフェースにパケットを転送できるなら、バックエンドサーバーは自分自身を宛先として認識して、IPを入れ替えてクライアントに直接返事するんだ（ルーティングフロントエンドには戻らない）。同じことは、ARPを無効にすることなく、ループバックインターフェースに共通IPアドレスをエイリアスとして追加することで実現できる。このトリックは90年代から00年代にかけてIBMのWebSphereソフトウェアロードバランサーで使われてた。" userName="kbouck" createdAt="2025-03-04T08:15:26" color="#38d3d3">}}

{{<matomeQuote body="＞このトリックは90年代から00年代にかけてIBMのWebSphereソフトウェアロードバランサーで使われてた。”Cisco IOS SLB”も似たように動作することができるよ。各サーバーにループバックのエイリアスとして追加された仮想IPを使うんだ。一般的なL3バランシングに比べて、IPパケットのヘッダーを再構成する必要が無いという利点がある。" userName="citrin_ru" createdAt="2025-03-04T08:45:28" color="">}}

{{<matomeQuote body="DSR（Direct Server Return）って呼ばれてるよ。詳しいことはブログ見てみて。" userName="lmz" createdAt="2025-03-09T02:45:21" color="">}}

{{<matomeQuote body="ARPを無効にすれば同じIPのサーバーをグループで使えるけど、スイッチはMACアドレスを学習しないからパケットが全ポートにバンバン流れちゃうんだ。ちゃんとしたVLAN作った方がいいよ！" userName="Bluecobra" createdAt="2025-03-04T13:23:54" color="#45d325">}}

{{<matomeQuote body="ARPはLANデバイスのためのもので、L2スイッチはARPを使わずに送信元MACで転送テーブルを作れるんだよ。行き先MACが分からない時はブロードキャストするけど、全デバイスが1回はフレームを送ると止まる。" userName="10000truths" createdAt="2025-03-04T14:29:46" color="">}}

{{<matomeQuote body="F5にはARPプロキシ設定があって、それ使えば手間が省けるけど、DHCPが壊れることがあるから注意してね。" userName="mannyv" createdAt="2025-03-04T19:48:03" color="">}}

{{<matomeQuote body="低レベルのことをやるならdpdkをいじるのもアリだよ。ARPはデフォルトで無効になってるし。" userName="KeplerBoy" createdAt="2025-03-04T08:20:10" color="">}}

{{<matomeQuote body="Pythonで似たようなことをやったよ。多分、あんまりうまく書けてないけど。ICMPでインターネットホストにpingも飛ばせた。自分のはノートに収まってるから、全体を把握しやすいかな。でも、TCPのとこは難しすぎて興味が薄れた。プログラミングに興味あるならやってみると面白いよ！" userName="globular-toast" createdAt="2025-03-04T06:58:34" color="#38d3d3">}}

{{<matomeQuote body="昔、原発でクライアントサイドの開発をしてた時、TCP/IPの経験で雇われたんだ。でも、そのプラントのコンピュータにはTCP/IPスタックがなかったから、作らなきゃいけなかった。" userName="intrasight" createdAt="2025-03-04T14:06:44" color="#38d3d3">}}

{{<matomeQuote body="記事の最初で、「dmacとsmacは自己説明的なフィールド」って書いてあるけど、これで分からない人は読む気失うよね。" userName="kasajian" createdAt="2025-03-04T15:06:51" color="">}}

{{<matomeQuote body="完全な引用は「dmacとsmacは自己説明的なフィールドで、通信する当事者のMACアドレスを含んでいる」って感じ。記事はネットワークスタックを作る内容だから、ちょっとは知識がある人が読むべきかな。" userName="howerj" createdAt="2025-03-04T15:24:02" color="">}}

{{<matomeQuote body="多分、更新されたんだと思うけど、次の文ではちゃんと説明があったよ。「通信する当事者のMACアドレスを含んでいる」って書いてある。" userName="petee" createdAt="2025-03-04T15:23:47" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="関連：<br>“Let’s code a TCP/IP stack (2016)”<br> - <br>https://news.ycombinator.com/item?id=27654182<br> - 2021年6月（コメント49件）<br>“Let’s code a TCP/IP stack, 1: Ethernet & ARP (2016)”<br> - <br>https://news.ycombinator.com/item?id=17316487<br> - 2018年6月（コメント47件）<br>“Let’s Code a TCP/IP Stack: TCP Retransmission”<br> - <br>https://news.ycombinator.com/item?id=14701199<br> - 2017年7月（コメント30件）<br>“Let’s code a TCP/IP stack, 1: Ethernet and ARP”<br> - <br>https://news.ycombinator.com/item?id=11234229<br> - 2016年3月（コメント49件）" userName="dang" createdAt="2025-03-04T05:48:52" color="">}}

{{<matomeQuote body="著者がARP解決テストに使った10.0.0.4ってIPアドレスの出どころが分からないんだけど、これは何のアドレスなの？作ったEthernetデバイスがアクセスする偽のデバイス？それとも実際に著者のネットワークにあるデバイスなの？ 誰か教えて。" userName="p4bl0" createdAt="2025-03-04T07:06:15" color="">}}

{{<matomeQuote body="記事に書かれてないけど、著者はインターフェース初期化時にこれをハードコーディングしてるよ：<br>＞“https://github.com/saminiir/level-ip/blob/e9ceb08f01a5499b85...”<br>TAPデバイスはソフトウェアでエミュレートされたEthernetリンクみたいなもので、パケットを送るとユーザーレベルのプログラムに直接届く。プログラムがどのIPアドレスを持つかやARPの返信をどうするか決めるのはプログラム次第。通常こういうことはOSが扱うから、インターフェースにIPアドレスを追加するにはroot権限が必要なんだよね。" userName="globular-toast" createdAt="2025-03-04T07:28:06" color="#45d325">}}

{{<matomeQuote body="ああ、ありがとう！記事でこれを明示しなかったのは大きな見落としだと思う。ARPの部分が重要な情報が抜けてるみたいに感じられるし、実は前の部分が何かを欠いているんだよね。再度ありがとう！" userName="p4bl0" createdAt="2025-03-04T07:33:57" color="">}}

{{<matomeQuote body="確か、ARPは自分のローカルセグメントでしか機能しないよね。ルーターが自分のアドレスを埋めてパケットを転送するんだ。それとRARPもあって、これは‘ネットワーク’に自分のIPアドレスを尋ねる方法の一つだよ。RARPが現実でまだ使えるかは知らないけど。" userName="mannyv" createdAt="2025-03-04T19:50:55" color="">}}

{{<matomeQuote body="記事の非仮定的説明が非常に良いと思った。よくできてる。" userName="revskill" createdAt="2025-03-04T05:18:11" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
