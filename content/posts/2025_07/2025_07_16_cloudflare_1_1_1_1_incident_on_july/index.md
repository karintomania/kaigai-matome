+++
date = '2025-07-16T00:00:00'
months = '2025/07'
draft = false
title = 'Cloudflareの1.1.1.1で大規模障害発生！2025年7月14日、インターネットに大打撃か？'
tags = ["DNS", "Cloudflare", "ネットワーク", "障害", "インターネット"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> Cloudflareの1.1.1.1で大規模障害発生！2025年7月14日、インターネットに大打撃か？

引用元：[https://news.ycombinator.com/item?id=44578490](https://news.ycombinator.com/item?id=44578490)




{{<matomeQuote body="多くの人が1.1.1.1を使えなくなると、ネットサービスが全部使えなくなったって言うけど、普通DNSサーバーって2つ設定するよね？2つ目もダメだったの？そうじゃないなら、なんでそっちに切り替わらなかったの？" userName="v5v3" createdAt="2025/07/16 08:01:05" color="">}}




{{<matomeQuote body="通常1.1.1.1は1.0.0.1とペアで使うのが普通だけど、俺の理解が正しければ、今回は両方ダメだったんだよ。" userName="Gieron" createdAt="2025/07/16 08:20:01" color="#785bff">}}




{{<matomeQuote body="1.1.1.1は9.9.9.9（Quad9）と組み合わせればいいじゃん。そうすればプロバイダ的にも耐障害性上がるよ。" userName="moontear" createdAt="2025/07/16 09:49:49" color="#45d325">}}




{{<matomeQuote body="Quad9ってトラフィックログを転売してるらしいよ。だから仕事とかの秘密のホストに繋いだら情報漏洩するってこと。" userName="rvnx" createdAt="2025/07/16 10:25:13" color="#785bff">}}




{{<matomeQuote body="Androidの『設定』→『ネットワークとインターネット』→『プライベートDNS』だと、たぶん『プライベートDNSプロバイダホスト名』には1つしか指定できないんだよね。<br>ていうか、なんでIP（1.1.1.1）を受け付けなくて、アドレス（one.one.one.one）を入力しなきゃいけないのか全然わかんない。DNSサーバーで解決するアドレスじゃなくて、IPで設定する方が理にかなってるのにね。" userName="rom1v" createdAt="2025/07/16 08:11:39" color="#45d325">}}




{{<matomeQuote body="Androidの『プライベートDNS』は『DNS over HTTPS』のことだから、普通ホスト名しか受け付けないんだよ。普通のDNS設定なら、ほとんどのAndroidで接続設定から変更できるよ。" userName="quacksilver" createdAt="2025/07/16 08:22:45" color="#ff33a1">}}




{{<matomeQuote body="Windows 11だとこの組み合わせは使えないよ。" userName="baobabKoodaa" createdAt="2025/07/16 11:37:45" color="">}}




{{<matomeQuote body="Quad9が俺のウェブサイトを解決しなくなった時、ちょっと幻滅したんだよね。ユーザーがマルウェアをアップロードしたのが原因で、ドメイン全体がDNSレベルでブロックされた。マルウェアはすぐに消したのに、何週間経っても解除されないし、問い合わせ先もない。競合サイトはブロックされないのに。有名じゃないからとか、ツールが機能しないとか、そういう不満。迅速な対応があるならドメイン全体ブロックは不当だと思う。" userName="Aachen" createdAt="2025/07/16 13:27:52" color="#45d325">}}




{{<matomeQuote body="『AndroidのプライベートDNSはDNS over HTTPSのこと』だよね、ごめん、それ言い忘れてた。だからAndroidでDNS over HTTPSを使うなら、フォールバックは設定できないってことだね。" userName="rom1v" createdAt="2025/07/16 08:41:44" color="">}}




{{<matomeQuote body="近くのDNSを使うのがマジおすすめ。ISPがDNSにいじらなければ、レスポンスタイムがかなり良くなるよ。もしデバイスがちゃんとしたフェイルオーバーに対応してないなら、ルーターのローカルDNSフォワーダーか外部のやつを使ってみな。スイスだったら、Init7→Quad9（フィルターなし版）→eu dns0（フィルターなし版）って感じかな。" userName="sschueller" createdAt="2025/07/16 10:00:34" color="#ff5733">}}




{{<matomeQuote body="CloudflareはDNSサーバーに1.1.1.1と1.0.0.1を設定することを推奨してるぜ。でも残念ながら、今回の障害は設定ミスでCloudflareのBGP広告、つまり1.1.1.0/24と1.0.0.0/24のプレフィックスがピアに送れなくなったのが原因なんだってさ。" userName="Polizeiposaune" createdAt="2025/07/16 16:24:31" color="#ff5c5c">}}




{{<matomeQuote body="“AndroidでDNS over HTTPSを使ってもフォールバックできない”ってのは違うぞ。もしDoHホストが複数のA/AAAAレコード、つまり複数のIPを持ってるなら、まともなDoHクライアントならその複数のIPを使ってリクエストを再試行するはずだからね。" userName="ignoramous" createdAt="2025/07/16 11:04:27" color="">}}




{{<matomeQuote body="最寄りのDNSとか気にするほど普段どんだけ忙しいんだよ？まるで高頻度トレーダーみたいにネット見てんのか？マジな話、こういう障害が起きなきゃ、ドメイン名解決の遅延に気づく奴なんて日常にいるか？理論は分かるけどさ、今は俺たちのリクエストを誰に見られるか選べるし、ISPは他の選択肢に比べたら全然ダメだろ。" userName="dylan604" createdAt="2025/07/16 15:02:28" color="">}}




{{<matomeQuote body="DNSサーバーを設定するなら、一つはCloudflareを使って、もう一つは全然違う会社のやつを使うのがもっといいおすすめだぜ。" userName="kingnothing" createdAt="2025/07/16 19:08:20" color="#45d325">}}




{{<matomeQuote body="Cloudflareはさ、他の組織のリゾルバーにも解決されるホスト名を提供してんのかな？それだとCloudflareのホスト名用のTLS証明書も必要になるけど、そうじゃなきゃDoHクライアントが接続できないだろ？" userName="lxgr" createdAt="2025/07/16 12:24:52" color="">}}




{{<matomeQuote body="普通、昔ながらのDNSだと、プライマリとセカンダリのリゾルバーは同じプロバイダーから提供されてて、それぞれ違うIPから動いてるんだよ。" userName="ignoramous" createdAt="2025/07/16 12:26:47" color="">}}




{{<matomeQuote body="それ、出典を示せる？あんたの発言、quad9.netに載ってるQuad9の公式情報と全然違うし、Bill Woodcockが言ってるプライバシー擁護とも全く合ってないんだけど。" userName="daneel_w" createdAt="2025/07/16 12:13:14" color="#45d325">}}




{{<matomeQuote body="これ本当？彼らはログを一切残さないって言ってるけど、何か情報源はあるの？" userName="Demiurge" createdAt="2025/07/16 11:57:55" color="">}}




{{<matomeQuote body="彼らはそんな主張してないよ。1週間足らずでHacker Newsで彼らのトップ解決済みドメインレポートが議論されてたじゃん。そういうレポートがあるってことは、ログ持ってるってことだよね。" userName="jeffbee" createdAt="2025/07/16 15:27:14" color="#ff5c5c">}}




{{<matomeQuote body="全ユーザーがDNSサーバーを2つ設定してるわけじゃないの？" userName="rat9988" createdAt="2025/07/16 08:02:29" color="">}}




{{<matomeQuote body="なんで？同じサブネットにないセカンダリDNSサーバーは拒否するとか、そんな感じ？" userName="lxgr" createdAt="2025/07/16 12:19:08" color="">}}




{{<matomeQuote body="ちょっと聞きたいんだけど、みんなWi-FiポータルとかDNSサービスの手動設定ってどうしてる？CloudflareとGoogleのDNS使ってたんだけど、公共Wi-Fi使うたびに無効化したり有効化したりするのが超面倒でさ。" userName="itake" createdAt="2025/07/16 22:45:50" color="">}}




{{<matomeQuote body="見てみて：https://quad9.net/privacy/policy/<br>トラフィックログを直接売るとは書いてないけど、ブロックしたドメインのテレメトリをブロックリストプロバイダーに送ったり、”タイムスタンプ付きDNS応答のまばらな統計的サンプリング”を”ごく少数の厳選されたセキュリティ研究者”に提供してるよ。これは”トラフィックログを売る”と全く同じじゃないけど、かなり近いよね。それに、Googleがデータを売ってるって言われるのはよくある話じゃん？彼らがダンプを提供せず集計データしか開示しなくてもさ。" userName="gruez" createdAt="2025/07/16 13:47:28" color="#785bff">}}




{{<matomeQuote body="それはDNS over TLSだよ。AndroidはGoogleのDNSを除いてDNS over HTTPSをサポートしてないんだ。" userName="quaintdev" createdAt="2025/07/16 08:35:54" color="#ff5c5c">}}




{{<matomeQuote body="”彼らがトラフィックログを再販してる”っていう発言や、”職場のような秘密のホストも漏洩する”っていう示唆に、それがかなり近いっていうのには同意できないな。Quad9がユーザーを欺いてない限り、両方の発言は実際には完全に誤りだよ。https://quad9.net/privacy/policy/#22-data-collected" userName="daneel_w" createdAt="2025/07/16 14:07:58" color="#ff5733">}}




{{<matomeQuote body="これはDNS over HTTPSを使ってるよ。あと、（一部の）プロバイダーを混ぜると、URLテンプレートが正しくデフォルト設定されないんだ。でも、手動で設定すればちゃんと動くよ。" userName="antonvs" createdAt="2025/07/16 13:07:13" color="#45d325">}}




{{<matomeQuote body="Cloudflareが推奨してる設定だと、バックアップサーバーの1.0.0.1をセカンダリDNSとして使うんだけど、これも今回の障害で影響受けてたんだよね。" userName="Macha" createdAt="2025/07/16 10:16:28" color="#ff33a1">}}




{{<matomeQuote body="DoH（DNS-over-HTTPS）はIPじゃなくcloudflare-dns.comを使うから、1.1.1.1の障害中でもトラフィックは安定してたんだ。ほとんど影響なかったって！すごいだろ？" userName="ignoramous" createdAt="2025/07/16 12:45:36" color="#ff33a1">}}




{{<matomeQuote body="最近MacBookが超遅くてイライラしてたんだけど、DHCP割り当てのDNSじゃなくてGoogle DNSに変えたら、めっちゃサクサクになったよ！DNSってマジで大事なんだな。" userName="jeffbee" createdAt="2025/07/16 15:25:25" color="">}}




{{<matomeQuote body="Cloudflareがトラフィック90%減を検知するのに5分以上かかったってマジかよ！普通のシステムなら1分以内にアラーム鳴るはずなのに、これってプロの間では普通なのかな？なんでこんなに遅れたのか気になるわ。" userName="chrismorgan" createdAt="2025/07/16 06:13:15" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="アラートの遅延は仕方ないんだよ。もしメトリックサービスが落ちたらデータが遅れて、1分でアラート鳴らすとしょっちゅう夜中に起こされるだろ？そんなことしてたらみんな辞めちゃうよ。だから5分くらいのアラート遅延は妥当なんだ。" userName="TheDong" createdAt="2025/07/16 06:53:19" color="#45d325">}}




{{<matomeQuote body="小さい会社ならまだしも、Cloudflareみたいな超重要なシステムプロバイダーなら、24時間体制のチームを雇うべきだよな。夜勤も必要じゃん。" userName="mentalgear" createdAt="2025/07/16 06:57:38" color="">}}




{{<matomeQuote body="検知速度と誤報率は常にトレードオフなんだよ。NagiosとかIcingaも誤報が多いから、チェック失敗が数回続くまでアラート出さない設定にしてる。オペレーターを誤報で疲弊させるとアラート慣れするから、Cloudflareの8分検知もそんなに驚かないね。" userName="perlgeek" createdAt="2025/07/16 07:02:13" color="#ff5c5c">}}




{{<matomeQuote body="Cloudflareの1.1.1.1なら、10分と10秒のローリング平均を比較して、50%以上差が出たらアラーム鳴らすとか、もっと簡単にできるんじゃない？あそこは膨大なトラフィック扱ってるんだから、1分以上かかるのは驚きだね。" userName="chrismorgan" createdAt="2025/07/16 09:04:26" color="#45d325">}}




{{<matomeQuote body="24時間体制のNOCはもう時代遅れだろ。複数の専門チームでオンコール対応にした方が、インシデント解決時間は劇的に短くなるんだよ。俺の経験だと2〜10倍速くなった。夜勤で無駄に待機するより、3〜5分で適切な人にアラート飛ばす方がずっと良い。" userName="misiek08" createdAt="2025/07/16 07:39:05" color="#45d325">}}




{{<matomeQuote body="Cloudflareみたいな主要なネットワークなら、24時間オンコール体制は絶対必要だろ。他のネットワークとの契約でも求められることだし、これがないと話にならないよ。" userName="immibis" createdAt="2025/07/16 11:03:57" color="">}}




{{<matomeQuote body="夜勤じゃなくてさ、別の国の通常の勤務時間の人を雇えばいいだけじゃん？そうすれば24時間体制はカバーできるだろ。" userName="chrismorgan" createdAt="2025/07/16 07:11:36" color="">}}




{{<matomeQuote body="Cloudflareのエンジニアは今頃、過去のデータで誤検知がどのくらいあったかとか、こういう事態を評価してるだろうね。でも、結局はエンジニアリングの努力が必要だし、多くの組織は監視体制が不十分だと判明してからじゃないと改善しないもんね。" userName="perlgeek" createdAt="2025/07/16 11:57:00" color="">}}




{{<matomeQuote body="俺も1.1.1.1みたいな大規模なサービスで働いてるけど、こんな監視体制だったらオンコールは寝る暇ないよ。簡単に”Xの監視入れれば防げたのに”って言うけど、実際はすごい人件費かかるし、誤検知の通知で埋もれないように監視項目を削除するのも大変なんだ。この規模のサービスで5分くらいの遅延は妥当だと思うな。" userName="Anon1096" createdAt="2025/07/16 15:57:05" color="#ff5733">}}




{{<matomeQuote body="会社が大きくなるとフェーズがあるんだ。<br>Step 1: 創業者がオンコールしたり、初期メンバーが無給で呼び出し対応したりする。<br>Step 2: (ユーモアなので省略)<br>Step 3: 世界中にサポートチームを配置して、休暇や病気にも対応できる”フォロー・ザ・サン”体制を作るんだ。" userName="bigiain" createdAt="2025/07/16 08:30:54" color="">}}




{{<matomeQuote body="HNのSWE、特にAI『エージェント』の話に毎度出てくる連中は、グローバルネットワークの運用やNOCがどういうものか本当に分かってるのか疑問だね。こんなこと言うとVint Cerfみたいな人が返信してくるかもしれないけど、もうひどい状況だよ。AI企業を称賛する以外のHNのスレッドは、みんなが何も知らないことについて”にわかRedditor”的な分析ばかりで劣化してる。これはChatGPT以前よりもずっとひどくなった。" userName="easterncalculus" createdAt="2025/07/16 15:22:12" color="">}}




{{<matomeQuote body="これは1.1.1.1にとって初めての障害じゃないんだよね。それに、たぶんこれは外部監視として最初に出てくるようなやり方だろうに。だから驚きなんだ。考えれば考えるほどね。こんな根本的な障害を検知するのに5分以上もかかるのは、本当に長い遅延だよ。" userName="chrismorgan" createdAt="2025/07/16 12:52:24" color="#ff33a1">}}




{{<matomeQuote body="ほとんどの問題を修正するのに必要な時間の5～10%くらいがアラームのトリガー時間なら妥当だと思うな。" userName="amelius" createdAt="2025/07/16 08:38:13" color="">}}




{{<matomeQuote body="これは昔のNOCの巨大な壁にあったようなグラフの一つだよね。誰かがパッと見て”おかしいな”って言って、大急ぎで対応し始めただろうな。" userName="bombcar" createdAt="2025/07/16 12:06:15" color="">}}




{{<matomeQuote body="彼らがこのサービスにSLAを設定してないことを忘れないでね。" userName="philipwhiuk" createdAt="2025/07/16 09:22:26" color="">}}




{{<matomeQuote body="ロケット科学じゃないんだよ。2段階でやればいいんだ。最初の5分以内なら、アラームを出す前にアグリゲーションサービスがクラッシュしてないか確認するとかさ。誤検知の種類なんてそんなにないだろ？よくあるやつを排除していけば、だんだん減るんだよ。速いアラームを出す前に、ノードが稼働してるか、サービスが稼働してるかとか確認するんだ。" userName="croemer" createdAt="2025/07/16 09:25:30" color="#38d3d3">}}




{{<matomeQuote body="サービス全体がダウンしたのに、6分以上も気づかなかったって、普通ありえないよね？これは高度な監視じゃなくて、一番基本的で重要な監視のはずなのに。マジでどういうことなのか理解できないよ。" userName="chrismorgan" createdAt="2025/07/16 17:00:19" color="#45d325">}}




{{<matomeQuote body="外部モニターはちゃんと動いてたの？<br>チェックは何回失敗した？どんな順番で？地域やシステムは複数あった？一時的な障害だったの？<br>リトライは何回、どんなペースでやった？<br>成功や失敗のメトリクスはプッシュしてるの？それともプル？<br>メトリクスが返ってこなかったら？<br>どれくらい待ってから問題だと判断する？<br>他にどんなチェックしてて、どれくらい時間かかってる？<br>チェックの許容レイテンシーは？<br>誤報はどれくらい許容してて、どんな頻度で？<br>もう、疑問だらけだよ！" userName="roughly" createdAt="2025/07/16 17:22:44" color="#ff33a1">}}




{{<matomeQuote body="「AI企業を褒め称える以外のHN（Hacker News）のスレッドは、専門家じゃないRedditユーザーが分析する場になっちゃってる」って、俺も気づくのに時間かかったわ。<br>大手2社でNOCで働いたことあるけど、未だにチームは存在するよ。<br>HNは、コメントしてる人たちが普通より理解力があって、主張の裏付けもちゃんとしてるって思われがちだけど、実際は違うんだよね。<br>「間違った情報で互いを指摘し合ってる」って、昔から言われてたし。でも、こんなにひどくなったとはね。" userName="genewitch" createdAt="2025/07/16 15:50:55" color="">}}




{{<matomeQuote body="24時間365日のシフト制（常に誰かが対応できて、定期的に睡眠サイクルが乱れる）と、24時間365日のオンコール制（監視とアラートで不定期に睡眠が妨げられ、誤報もある）って、どっちが良いんだろうね？" userName="degamad" createdAt="2025/07/16 21:43:17" color="">}}




{{<matomeQuote body="マジでそれな。（大規模なグローバルプラットフォームでSREとして働いてるよ）<br>ここ数年、こういう無知な「もし俺なら、単純にそんなことしない」みたいなコメントはほとんど無視してる。<br>AIの話題が出る前から、このサイトではこういうコメントが横行してた気がするけどね。" userName="JohnMakin" createdAt="2025/07/16 16:55:18" color="#ff33a1">}}




{{<matomeQuote body="仮説のシナリオで本当の問題は、たった一つの悪いメトリクスインスタンスが全体をダウンさせることだね。<br>地理的に分散した複数のメトリクス集約サービスをデプロイして、RAFT/PAXOSのクォーラムで「正当な状態」を確立すべきだよ。<br>そうすれば、メトリクスアグリゲーターのインスタンスの過半数が稼働していれば、システムは動き続ける。<br>1.1.1.1みたいなシステムを構築するなら、5分のアラートロールアップは許容できないよ。0〜5分の正当なダウンタイムが隠れてしまうからね。<br>短い一時的なエラーを修復するためにオーケストレーションに頼らないシステムを設計する必要があるよ。<br>ちなみに、俺は5億人以上のユーザーがいる会社のコアSREチームで働いてるよ。" userName="__turbobrew__" createdAt="2025/07/16 20:11:57" color="#ff33a1">}}




{{<matomeQuote body="俺の想像だと、こんな感じなんだけど、違うのかな？<br>みんな家で仕事してて、大きなチャートがテレビに映ってるんだけど、家族の誰かがチャンネル変えちゃった、みたいな？" userName="seb1204" createdAt="2025/07/16 21:34:44" color="">}}




{{<matomeQuote body="「この具体的な問題を避けるため、常にこの具体的なことをすべきだ」っていう考え方は避けるべきだと思うな。" userName="briangriffinfan" createdAt="2025/07/16 12:08:44" color="">}}




{{<matomeQuote body="大規模システムの監視はマジで大変なんだよ。特にあの規模だと、データ集約にも時間かかるし、指標がいっぱい来ると分散がひどいことになる。大規模な分散システムだと、常にどっか壊れてるのが普通でさ。だから、システムのどっかが動いてないたびに警報鳴らしてたら、24時間年中無休でアラート鳴りっぱなしになっちゃうんだ。今回話してるような規模と複雑さのシステムで、5分以内に実際にインシデントが起きてるのを検知できるのは、マジで fantasticだね。" userName="roughly" createdAt="2025/07/16 17:19:53" color="#ff5c5c">}}




{{<matomeQuote body="Cloudflareみたいな規模で運用してると？誤報の種類はめちゃくちゃ多いよ。例えば、一部の地域の指標が取れてないせいでトラフィックが90%ダウンしてるように見えたり、誰かがファイアウォールのルール間違えて指標がドロップされたり、カウンターがロールオーバーして Prometheusがうまく処理できなかったり、新リリースとタイミングが合わなくて変な数値が出たりするんだ。あとは、 metricsレポートが急増してパイプラインが遅延したり、トランジットリンク担当のチームが SNMPに適切な ACLを設定し忘れてて、90%のトラフィックの指標が収集できてなかったりね。「トラフィックが90%ダウンしてる」っていうアラートが何千も来るけど、実はあまり使われないアラートが古くなってて、集約された指標じゃなくてシステムごとの指標を使ってるだけだったりさ。インターネットのルーティング問題で実際に90%ダウンしてることもあるし（これは DNSチームの問題じゃない）、どこかで光ファイバーが切れて1つのデータセンターで90%ダウンすることもある。普段の利用パターンで、最低トラフィック量がピーク時の10%だったり、10秒前には異常なトラフィックのスパイクがあったせいで、そこから90%ダウンしてるように見えることもあるんだ。それに、巨大なグローバルネットワークのデータセンターを監視する metricsシステムの規模と分散性からくる、あらゆる種類の追加の問題も出てくるんだよね。" userName="sophacles" createdAt="2025/07/16 17:35:07" color="#ff5c5c">}}




{{<matomeQuote body="1分以内にアラートが鳴るようにすると、アラートのインフラ自体がストレステストになっちゃうんだよね。アラートのインフラって、リアルタイムで1分以内に指標を取得して計算を実行できるくらい安定してるの？って話。" userName="kccqzy" createdAt="2025/07/16 20:10:57" color="">}}




{{<matomeQuote body="Cloudflareがたった20分間のインシデントで 1.1.1.1の利用率を20%も失ったのは興味深いね。彼らがなんでこういう「単純な」「非推奨の」「レガシーな」問題でいつもつまづくのかよく分からないわ。これ、初めてじゃないし（多分最後でもないだろうね）。Googleの 8.8.8.8と 8.8.4.4は、もう10年近くグローバルなダウンタイムなんて1秒もないんだよ。ローカルな問題はあったけど、それはインターネット側の問題だし、Google自体が色々なサービスで深刻なダウンタイムを経験した時でも、DNSは動き続けてたからね。" userName="kachapopopow" createdAt="2025/07/16 09:10:53" color="#785bff">}}




{{<matomeQuote body="DNSって、可用性だけじゃないんだよ（もちろん、それは超重要だけどね）。速度とプライバシーも大事なんだ。ヨーロッパのユーザーなら、CLOUD Actの対象になるアメリカ企業より、https://european-alternatives.eu/category/public-dns にリストされてる代替のパブリックDNSを選ぶ方がいいかもね。" userName="Tepix" createdAt="2025/07/16 09:50:54" color="#ff5c5c">}}




{{<matomeQuote body="Unboundを自分で設定するのが、一番手っ取り早いと思うな。サーバーなんていつ無くなるか分かんないし。DNSサーバーの運営元とか、いつまで使えるかとか心配するより、依存関係そのものをなくすのが一番だね。" userName="adornKey" createdAt="2025/07/16 12:44:01" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺、95%の確率でデータセンターで Unbound動かしてるし、ローカルには Pi-hole入れてるよ。俺の PCはまず Pi-holeに繋がって、それがダウンしたらデータセンターに接続する。Pi-holeはデータセンターと、フィルター付きの DNSプロバイダ（どれだか忘れたけど）、それから GTEiの古いサーバーにも繋がってるんだ。あのサーバー、まだ動いてて一度も期待を裏切られたことないんだよね。あ、違う違う、あっちのやつじゃなくて別のサーバー。俺 Musknetだから、ルーターの DNSプロバイダは別のルーター買わないと編集できないんだ。だから、スマホとか VMなんかは自動的にこの設定にならないのが残念だね。" userName="genewitch" createdAt="2025/07/16 15:54:37" color="">}}




{{<matomeQuote body="うん、マジで完全に同意だわ。信頼できる2台目のルーターを持つのは余分な電力使うけど、それだけの価値はあるかもね。うちのルーター、何回かアップデートでこっそり Pi-hole無効にしてたことあるし。予備の Pi-holeを完全に設定して箱に入れとくのも役に立つよ。別のある時は停電の後、Pi-holeが起動しなくなったこともあったし。" userName="adornKey" createdAt="2025/07/16 21:10:16" color="">}}




{{<matomeQuote body="うん、完全に同意だ。俺、”how-to run ipcop / monowall in ＜hypervisor＞” って記事を broadbandreportsにいくつか書いたことあるんだ。だから、Starlinkでサードパーティ製ルーター使えば、マジで公開ルーティング可能な IPv6が手に入るって聞いて、すぐさま Proxmoxでローカルにルーター作ってみたんだ。でも、「ルーターディストリビューション」ってどれもまともに動かなかったし、俺が試したやつは IPv6の設定なんてどこにも見当たらなかった。それで Best Buyでルーター3台買って、それぞれ1週間ずつ試したんだ。そしたら、ルーターが IPv6に対応してれば、サードパーティ製ルーターでも公開ルーティング可能な IPv6が手に入るって分かったんだよね。今でも OPNsenseとか PfSenseの話をここらで耳にするけど、俺が間違った、もしかしたら古い ISOイメージを使っちゃったのかなって思う。FreeBSDや Debianでも試したけど、設定できなかったんだ。これってちょっとショックだわ。いつかまた挑戦してみるつもりだけどね。" userName="genewitch" createdAt="2025/07/17 02:57:09" color="">}}




{{<matomeQuote body="みんな、ヨーロッパ人だろうが何だろうが、プライバシーを重視するなら Cloudflareと Google以外を選ぶべきだね。" userName="daneel_w" createdAt="2025/07/16 12:15:36" color="">}}




{{<matomeQuote body="HNユーザーなら自分でDNSサーバーを動かすのを好むかもね。DNSサーバーはメンテが楽だし、メールサーバーを動かすみたいに大変じゃないからさ。" userName="immibis" createdAt="2025/07/16 11:07:34" color="">}}




{{<matomeQuote body="HN読者全体の技術力を過大評価してるんじゃないかな。UnboundをDoTフォワーダーとして設定するのは魔法みたいに難しくないけど、多くの人が求めるクリックアンドプレイじゃないんだよ。システムのリゾルバーをdns0やQuad9とかに変えるのと同じくらいって考えた方がいいよ。" userName="daneel_w" createdAt="2025/07/16 12:19:12" color="#ff5733">}}




{{<matomeQuote body="自分でDNSサーバーを動かしてても、結局はDNSサーバーを使ってるのと同じだよ。どんなドメインのネームサーバーでも、DNSサーバーに問い合わせないと得られないんだからさ。" userName="kachapopopow" createdAt="2025/07/16 21:43:56" color="">}}




{{<matomeQuote body="自分でDNSサーバーを運用すれば、クエリが単一のサーバーに全部送られるんじゃなくて、いろんな場所に分散されるようになるんだよ。例えば、.comリゾルバーにdomain.comのネームサーバーを聞いたり、ns1.domain.comにfoo.domain.comを聞いたりする。wikipedia.orgにアクセスしても、そのDNSクエリは前のサイトと同じ場所には行かないんだ。" userName="BenjiWiebe" createdAt="2025/07/17 15:52:34" color="#45d325">}}




{{<matomeQuote body="それって、かえって悪いとも言えるよ。だって、ネームサーバーと直接やり取りすることになるでしょ？　ネームサーバーって、だいたいプライバシーを重視しないプロバイダーが管理してるんだから。" userName="kachapopopow" createdAt="2025/07/18 04:02:51" color="#45d325">}}




{{<matomeQuote body="ここでの問題の一つは、簡単に追跡されちゃうってことだよ。" userName="lossolo" createdAt="2025/07/16 15:24:45" color="">}}




{{<matomeQuote body="＞Cloudflareがなんでこんな問題でいつも苦しんでるのかわからない。Cloudflareはインシデント対応の文化はまともだけど、積極的に予防するインセンティブがないんだ。" userName="kod" createdAt="2025/07/16 16:54:18" color="#ff33a1">}}




{{<matomeQuote body="0.001%のネットワークエンジニアしか遭遇しないような、複雑さと規模が特徴のエンジニアリング問題を彼らが修正するのに苦労してるってことが、なんでわからないの？" userName="user3939382" createdAt="2025/07/16 22:11:39" color="#ff33a1">}}




{{<matomeQuote body="20%の件だけど、一部のクライアントやリゾルバーは、サーバーが連続で複数のクエリに応答しなかったら一時的にダウンとマークするよ。そうすれば、ユーザーは次の500クエリで500回タイムアウトを待つ必要がないんだ。長期的なグラフを見ると、通信量は正常に戻ったみたいだね。https://imgur.com/a/8a1H8eL" userName="zamadatix" createdAt="2025/07/16 19:35:31" color="#ff5733">}}




{{<matomeQuote body="そうなるとGoogle DNSを使うことになるけど、それは多くの人にとって望ましくないことだよね。" userName="barbazoo" createdAt="2025/07/16 15:05:32" color="">}}




{{<matomeQuote body="うん、正直8.8.8.8と8.8.4.4のGoogle DNSに戻したよ。100%安定してるし、フィルタリングもないし、EUだと速いね。" userName="heraldgeezer" createdAt="2025/07/16 21:11:11" color="#ff5733">}}




{{<matomeQuote body="良い記事だね。<br>DoH（DNS-over-HTTPS）のトラフィックは比較的安定してたってのは注目だね。ほとんどのDoHユーザーはIPアドレスじゃなくて、ドメインのcloudflare-dns.comを使ってパブリックDNSリゾルバにアクセスしてるからだってさ。<br>面白いことに、昨日これに影響されたよ。ルーターはCloudflare DoHが有効になってたはずなのに何も解決できなかった。DNSサーバーを8.8.8.8に変えたら直ったよ。" userName="jallmann" createdAt="2025/07/16 05:17:53" color="#ff5c5c">}}




{{<matomeQuote body="DoHってどうやって動くの？どうにかしてcloudflare-dns.comのIPアドレスを最初に知る必要があるよね。たぶんルーターが1.1.1.1を使ってるんじゃないかな。" userName="bauruine" createdAt="2025/07/16 05:34:04" color="">}}




{{<matomeQuote body="ドメインを使うべきなの？俺はいつもIPアドレスしか使ってなかったけど。" userName="stavros" createdAt="2025/07/16 06:45:42" color="">}}




{{<matomeQuote body="HTTPSの“S”が機能するためにはドメインが必要だよ。" userName="landgenoot" createdAt="2025/07/16 08:05:00" color="">}}




{{<matomeQuote body="それ、間違ってるよ。Let’s Encryptが今、IPアドレスのHTTPS/TLS証明書を試験運用中だよ: https://letsencrypt.org/2025/07/01/issuing-our-first-ip-addr...<br>彼らはこう言ってるよ: “原則として、ドメイン名じゃなくてIPアドレスに対して証明書を発行できない理由はない。実際、証明書の技術的・ポリシー標準は昔からこれを許可してたし、少数の認証局が小規模でこのサービスを提供してたんだ。”" userName="bigiain" createdAt="2025/07/16 08:16:08" color="#ff33a1">}}




{{<matomeQuote body="俺は同意しないね。根本的な原因は専門用語だらけで、俺みたいな経験豊富な管理者でも解読に苦労する。これは企業のニュースピークだ。“レガシー”なんて言葉は、抽象化してごまかすために使われてる。記事の“レガシーコンポーネント〜”って記述は、言いたいことはわかるけど、こんな難解なビジネス用語で書かれる必要はないね。" userName="sneak" createdAt="2025/07/16 06:59:41" color="#ff33a1">}}




{{<matomeQuote body="そうだね、これ2週間くらい前にちょっとした話題になったよね。<br>じゃあ原則として、20年も前にやらなかった理由はないってこと？当時からあったら良かったのにね。そんな証明書サービスを提供する認証局なんて聞いたことなかったな。" userName="noduerme" createdAt="2025/07/16 08:33:01" color="">}}




{{<matomeQuote body="読み進めれば、Cloudflareがサービスを誤設定して、正しいサービスじゃなくそっちにプロダクションのトラフィックをルーティングしたってのは明らかだよ。それをするのに使われたシステムは2018年に作られたもので、もうレガシーって見なされてる（たぶん、簡単に誤った設定を展開できるからだろう）。そう考えると、要約が“難解なビジネス用語”だなんて言えないね。" userName="willejs" createdAt="2025/07/16 07:51:27" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
