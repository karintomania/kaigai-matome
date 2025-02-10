+++
date = '2025-02-07T00:00:00'
draft = true
title = '「Metaの超大規模インフラを徹底解説！知られざる真実と最前線の洞察とは？」'
tags = ['Meta', 'インフラストラクチャ']
+++

> 「Metaの超大規模インフラを徹底解説！知られざる真実と最前線の洞察とは？」

引用元：https://news.ycombinator.com/item?id=43008920

{{<matomeQuote body="Threadsの開発後、インフラチームには本番ローンチの準備にたった2日しかなかったってさ。大企業なら計画立てるだけで何カ月もかかるのに、Metaはすぐにチームを集めて問題解決に取り組んだ。結果、アプリは5日で1億ユーザーに達して歴史上最速の成長を遂げた。遅れずに迅速に出荷できる能力を維持してるのがすごいよな。" userName="vasco" createdAt="2025-02-11T07:12:30" color="#ff33a1">}}

{{<matomeQuote body="すぐにローンチしたけど、実際の製品に対してはあまり関心がなかったみたい。形ばかりで機能が伴ってない感じ。" userName="Simon_O_Rourke" createdAt="2025-02-11T08:16:31" color="">}}

{{<matomeQuote body="既存のネットワークは基本的に負けないからな。大規模な移行が起こる雰囲気を察知して、Threadsの戦略を巧みに利用した。ただ、面白い人たちのネットワークが必要だから、移行がうまくいかなかったら結局はインスタのミームインフルエンサーが2つのアプリでリポストするだけになる。" userName="2c2c2c" createdAt="2025-02-11T08:35:15" color="">}}

{{<matomeQuote body="最初はいいアイデアだと思ったけど、結局Threadsは大失敗だったよな。本当にダメなアプリを迅速にリリースするのがスキルなのか？官僚主義を回避するのは楽そうだけど、製品担当が完全に抜け落ちてた感もある。" userName="silisili" createdAt="2025-02-11T07:28:25" color="">}}

{{<matomeQuote body="Threadsに何が足りないんだ？" userName="cmdtab" createdAt="2025-02-11T07:29:58" color="">}}

{{<matomeQuote body="全然考えられてないし、宣伝も何もなし。Twitterからの安全な場所を作ろうとしてるだけのエンジニアリングマラソンみたいだな。悪い努力じゃないとは思うけど、始まってすぐに終わっちゃった感じ。もっと質のいいプロダクトの人と一緒に考えれば、フィット感とか宣伝、リリースについてもっと工夫できたんじゃない？" userName="silisili" createdAt="2025-02-11T07:33:52" color="">}}

{{<matomeQuote body="新規性" userName="yokoprime" createdAt="2025-02-11T07:33:11" color="">}}

{{<matomeQuote body="なに言ってんの？300M以上のユーザーがいるじゃん。" userName="ianlevesque" createdAt="2025-02-11T07:41:57" color="">}}

{{<matomeQuote body="今はそうかもね？最近は追っかけてないけど、リリースの時期について話してるんだよ。" userName="silisili" createdAt="2025-02-11T07:52:11" color="">}}

{{<matomeQuote body="Threadsのローンチは、当時のユーザーの不満を利用するためにわざと急いだんだよね。大きな代替がなかったから、別のソーシャルネットワークに移行する盛り上がりも薄れちゃった。ローンチ時にBlueskyはまだ招待制だったし。" userName="linkregister" createdAt="2025-02-11T08:05:51" color="#ff33a1">}}

{{<matomeQuote body="初めの5日間でアカウント作成が1億件あったらしいぜ。" userName="OtherShrezzing" createdAt="2025-02-11T08:05:01" color="">}}

{{<matomeQuote body="その中にどれだけボットがいるんだろうな？" userName="ahoka" createdAt="2025-02-11T07:55:32" color="">}}

{{<matomeQuote body="X（Twitter）やBlueskyにいるユーザーの中にもボットがどれぐらいいるか気になるよね。公表された情報が少ないから、割合は同じだろうって思うし。Xは2.5億DAUって言われてるし、マーク・ザッカーバーグが最近言ってたけど、ThreadsのDAUは1億。短期間で半分以上の規模に成長したのはすごいことだし、まだThreadsはXが長年持ってる機能が足りないからな。" userName="linkregister" createdAt="2025-02-11T08:04:02" color="#ff5c5c">}}

{{<matomeQuote body="InstagramユーザーがThreadsアカウント作っても、実際には使ってない人数はどれくらいなんだろう？" userName="sn0wleppard" createdAt="2025-02-11T08:12:57" color="">}}

{{<matomeQuote body="DAU（デイリーアクティブユーザー）とMAU（マンスリーアクティブユーザー）は、それぞれアプリで活動してるユーザーの数を示してるよ。" userName="linkregister" createdAt="2025-02-11T08:20:42" color="">}}

{{<matomeQuote body="Metaのインフラ選択は普通の人には当てはまらない気がするわ。サーバーレスで開発したらAWSの請求が高くなるし、Kubernetesも同様。シンプルな技術の方がいいよ。Facebookは過去の問題を解決するために技術を作ってるんだろうな。" userName="ribadeo" createdAt="2025-02-11T08:28:31" color="#785bff">}}

{{<matomeQuote body="PHPのウェブフロントエンドを「サーバーレス」または「ファンクション・アズ・ア・サービス」って言うのが面白い。メンテナンスする側はその限界を意識せざるを得ないし、実際には単一のコードベースがある。" userName="yuliyp" createdAt="2025-02-11T06:47:34" color="">}}

{{<matomeQuote body="『サーバーレス』はLambdaと同じ意味じゃなくて、ただの計算モデルだよ。古いモノリスをAmazon Fargate上でホスティングしてる会社もたくさんあるし。" userName="whstl" createdAt="2025-02-11T08:33:03" color="">}}

{{<matomeQuote body="データセンターじゃ、シンプルで高品質な判断ができる中央集権的なコントローラーが好まれるよね。ハイブリッド型のアプローチ、つまり中央集権のコントロールプレーンと分散型のデータプレーンを組み合わせるのが一番理想的。ソフトウェアネットワーキングやデータベース操作においてもこれが最適なデザインっぽい。IPネットワーキングが同じモデルを使ってるのが意外。ローカルキャッシングでL7ルーターの負荷を減らすのも期待したいな。" userName="linkregister" createdAt="2025-02-11T07:39:08" color="#785bff">}}

{{<matomeQuote body="興味深いよね、特にハイパースケーラーとの比較が。もしかして自社のパブリッククラウドを立ち上げる準備かな？Metaの人、どう思う？" userName="davedx" createdAt="2025-02-11T07:09:09" color="">}}

{{<matomeQuote body="Metaになる前に辞めたけど、パブリッククラウドになる気はないと思うな。似たようなサービスはあっても、顧客に受け入れられるか難しそうな選択が多い。インフラは特定の顧客向けで、インフラとアプリの人が深くコミュニケーションとってるから、パブリッククラウドで小さい顧客と同じ形ではない。クラウドサービス化する可能性はあるけど、信頼を得るための作業がいるし、競争が激しいから難しいだろうね。" userName="toast0" createdAt="2025-02-11T07:37:21" color="">}}

{{<matomeQuote body="自社のエンジニア向けにHerokuレベルのデプロイ抽象化を提供しつつ、パフォーマンスを維持するのはすごいことだよね。クラウド製品を作って、アカウント分離やオートスケーリング、複数リージョン対応するのはさらに大変。OCIとAWSの違いを考えるといいかも。MetaがAmazonの機能セットと競合するパブリッククラウドを立ち上げるとは考えにくい。" userName="linkregister" createdAt="2025-02-11T07:59:34" color="">}}

{{<matomeQuote body="パブリッククラウドを立ち上げたら、GCPよりも信頼できないかもね :D" userName="olivermuty" createdAt="2025-02-11T07:25:10" color="">}}

{{<matomeQuote body="GCPはGoogle内では二流扱いされてるからその評価なんだよね。Googleの内部インフラ（Borg、Blaze）は最高なんだ。でも、Metaがパブリッククラウドをうまくやったら信じられると思うよ。今までのエンジニアリングと製品力はすごいからね。ただ、もうちょいUIが安定してほしいけど。" userName="arjvik" createdAt="2025-02-11T07:30:11" color="#785bff">}}

{{<matomeQuote body="新しいプロジェクトって、GoogleではみんなGCPに行くんじゃないの？" userName="mathverse" createdAt="2025-02-11T08:33:04" color="">}}

{{<matomeQuote body="Thriftについて全然触れられてないけど、インフラの概要としては低レベルすぎたのかな？でも、グローバル的には何か技術的な影響があったと思うんだけど。" userName="kmdrpc" createdAt="2025-02-11T07:34:47" color="">}}

{{<matomeQuote body="パフォーマンス向上のためにGRPCに移行したってことも驚かないね。RPCライブラリがモノレポで中央管理されてるって言ってたし、ThriftからGRPCへの移行は6ヶ月もかからないかも。" userName="linkregister" createdAt="2025-02-11T07:47:49" color="">}}

{{<matomeQuote body="gRPCとThriftはパフォーマンスが比較できるし、実はgRPCからThriftに切り替えてるトレンドもあるんだよね。まだgRPCが使われてるとこでは。" userName="vitaut" createdAt="2025-02-11T07:59:33" color="">}}

{{<matomeQuote body="ThriftからgRPCへの移行が超遅かったんだけど、パフォーマンスはかなり良いって言われてた。まだThriftのサービスはあるけど、大半はgRPCに移行済みで、戻ることはないと思うよ。" userName="linkregister" createdAt="2025-02-11T08:09:29" color="">}}

{{<matomeQuote body="デプロイやオブザーバビリティツールについて何か公開情報ある？" userName="asdasd1234" createdAt="2025-02-11T07:28:54" color="">}}

{{<matomeQuote body="Conveyorのコードは見なかったけど、USENIXの論文があるよ：https://www.usenix.org/system/files/osdi23-grubic.pdf" userName="linkregister" createdAt="2025-02-11T07:43:47" color="">}}



{{< list limit=2 >}}
