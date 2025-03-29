+++
date = '2025-03-22T00:00:00'
months = '2025/03'
draft = false
title = 'PyTorchの内部構造が丸わかり!? Ezyang氏のブログがアツい'
tags = ["PyTorch", "機械学習", "内部構造", "Ezyang", "ブログ"]
featureimage = 'thumbnails/color3.jpg'
+++

> PyTorchの内部構造が丸わかり!? Ezyang氏のブログがアツい

引用元：[https://news.ycombinator.com/item?id=43445931](https://news.ycombinator.com/item?id=43445931)

{{<matomeQuote body="同じ作者のPyTorch Developer Podcast[1]も面白いよ。皿洗いしながらPyTorchの内部構造を知るのってなんか良くない？<br>[1] https://pytorch-dev-podcast.simplecast.com/" userName="smokel" createdAt="2025-03-22T17:48:28" color="">}}

{{<matomeQuote body="ポッドキャスト形式の問題点は、ブログみたいな視覚的な媒体よりもAPIに対する知識を前提としてるところだと思うんだよね（皮肉だけど）。" userName="swyx" createdAt="2025-03-22T20:52:54" color="">}}

{{<matomeQuote body="確かにね、でも誰かが挑戦してくれるのは嬉しいよ。天気の話とか、無駄話には興味ないんだよね。なぜかほとんどのポッドキャストはそれに焦点を当ててる気がする。" userName="smokel" createdAt="2025-03-23T09:54:13" color="">}}

{{<matomeQuote body="これ懐かしいな。Edが発表したPyTorch NYC meetupの企画手伝ったんだけど、今までで最高の技術プレゼンの一つだと思う。手描きのスライドが最高だったのに、録画しとけばよかった…" userName="alexrigler" createdAt="2025-03-22T18:12:32" color="#45d325">}}

{{<matomeQuote body="MLフレームワークの内部構造を学ぶには、MLXのソースコードを読むのがおすすめ。<br>https://github.com/ml-explore/mlx<br>MLXはモダンでクリーンなコードベースで、レガシーもないから、外部の記事を探さなくてもほとんど理解できる。" userName="zcbenz" createdAt="2025-03-22T22:18:56" color="#ff5c5c">}}

{{<matomeQuote body="なんでMLXはApple silicon専用なの？x86で動作しない根本的な理由があるの？一部のコア機能はApple siliconでのみ可能なの？それとも開発者がx86への移植を拒否してるの？<br>MLXはいい感じの自動微分機能があるみたいだよね。配列のミューテーションの微分もサポートしてるし。<br>普通のCPUでもこの機能が使えると嬉しいんだけど。" userName="ForceBru" createdAt="2025-03-22T23:57:42" color="#38d3d3">}}

{{<matomeQuote body="ほとんどの機能はすでにx86 CPUでサポートされてるよ。Linuxならpip install mlxできるし、Windowsでも使える（まだ公式バイナリはないけど、ビルドはできてテストも通ってる）。" userName="zcbenz" createdAt="2025-03-23T00:54:33" color="">}}

{{<matomeQuote body="unified memoryに大きく依存してるんじゃないかな。" userName="saagarjha" createdAt="2025-03-23T01:51:00" color="">}}

{{<matomeQuote body="いい記事だね、投稿ありがとう。記事で言及されてる自動微分の概要はこちら。<br>https://medium.com/@rhome/automatic-differentiation-26d5a993..." userName="chuckledog" createdAt="2025-03-22T15:59:16" color="">}}

{{<matomeQuote body="スライドの長いバージョンって感じかな。内容は良いけどね。<br>https://web.mit.edu/~ezyang/Public/pytorch-internals.pdf" userName="hargun2010" createdAt="2025-03-22T17:28:40" color="">}}

{{<matomeQuote body="Edwardのプログラミング言語の授業、10年くらい前に受けたんだけど、スライド見てすぐにわかったよ！なんか嬉しいね。" userName="aduffy" createdAt="2025-03-22T19:56:16" color="#ff5c5c">}}

{{<matomeQuote body="わかるー！Edward、マジ最高だった。Haskellのモナドを理解できるようにめっちゃ頑張ってくれた。" userName="lyeager" createdAt="2025-03-23T18:42:53" color="#785bff">}}

{{<matomeQuote body="StanfordのCS 240hでEdwardはホント親切だった。Safe HaskellとGHCの内部構造を理解するのに助けてくれた。" userName="aostiles" createdAt="2025-03-24T01:17:52" color="#38d3d3">}}

{{<matomeQuote body="長文読むのが苦手な人向け：テキスト読み上げ機能と行のハイライト表示を試してみて。マジで効果あるよ。集中力切れるのが治った。" userName="vimgrinder" createdAt="2025-03-22T17:00:59" color="">}}

{{<matomeQuote body="記事は問題なく読めたけど、スライドが目にキツイ…。" userName="PeterStuer" createdAt="2025-03-22T18:30:14" color="">}}

{{<matomeQuote body="スライドが本文中で何度も参照されてるから、飛ばせないんだよねー。" userName="vimgrinder" createdAt="2025-03-22T20:31:37" color="">}}

{{<matomeQuote body="へー。TORCH_CHECKをこんな風に書くかな:<br>＞TORCH_CHECK(self.dim() == 1) <br>＞  << ”Expected dim to be a 1-D tensor ”<br>＞  << ”but was ” << self.dim() << ”-D tensor”;<br><br>TORCH_CHECK()って、チェックが失敗した時だけstreaming operatorsを評価するように書けるんだね。(glogの仕組みをチェックしてみて。)" userName="quotemstr" createdAt="2025-03-22T22:45:01" color="#38d3d3">}}

{{<matomeQuote body="dev forum roadmaps[1]とdesign docs(例：[2]、[3]、[4])も参考になるよ。<br>[1]: https://dev-discuss.pytorch.org/t/meta-pytorch-team-2025-h1-...<br>[2]: https://dev-discuss.pytorch.org/t/pytorch-symmetricmemory-ha...<br>[3]: https://dev-discuss.pytorch.org/t/where-do-the-2000-pytorch-...<br>[4]: https://dev-discuss.pytorch.org/t/rethinking-pytorch-fully-s..." userName="bilal2vec" createdAt="2025-03-22T17:50:55" color="">}}

{{<matomeQuote body="2019年の記事か。今でもどれくらい通用するんだろ？" userName="nitrogen99" createdAt="2025-03-22T15:05:04" color="">}}

{{<matomeQuote body="数年前にPyTorchチームにオンボードする時にこの記事使ったよ。フレームワークのキーコンセプトを理解するのに役立つ。Torch.compileについては触れられてないけど、それ以外は今でもかなり参考になる。" userName="mlazos" createdAt="2025-03-22T16:58:23" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="たぶん80%くらいかなー" userName="kadushka" createdAt="2025-03-22T15:07:49" color="">}}

{{<matomeQuote body="複雑なシステムを理解するには、よりシンプルなモデルシステムを理解するのが良い場合があるよね。同じシステムの古いバージョンが良いモデルシステムになることもある。いつもそうとは限らないけど、良い経験則だと思うよ。" userName="sidkshatriya" createdAt="2025-03-22T16:46:14" color="#45d325">}}

{{<matomeQuote body="ところで、pytorchを汎用グラフライブラリとして使う良いリソースって誰か知らない？nets = forward-only(acyclic) digraphっていう前提を超えたやつ。" userName="pizza" createdAt="2025-03-23T00:37:31" color="">}}

{{<matomeQuote body="これのビデオ版ってあるのかな？トークからのものみたいだけど。" userName="brutus1979" createdAt="2025-03-22T17:19:14" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
