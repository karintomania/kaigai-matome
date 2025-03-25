+++
date = '2025-03-18T00:00:00'
months = '2025/03'
draft = false
title = 'AppleTVでYouTube広告をブロックする裏技が発見される！Protobufの脆弱性を突く2022年の最新手法とは'
tags = ["YouTube", "AppleTV", "広告ブロック", "Protobuf", "リバースエンジニアリング"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> AppleTVでYouTube広告をブロックする裏技が発見される！Protobufの脆弱性を突く2022年の最新手法とは

引用元：[https://news.ycombinator.com/item?id=43396735](https://news.ycombinator.com/item?id=43396735)

{{<matomeQuote body="それより、Protobufのフォーマットの欠陥を見つけたんだって。1バイト変えるだけで広告を消せるらしいよ。<br>＞たぶん、フィールド番号を大きな未使用の番号に変えたんだね。<br>＞広告のURLシグネチャ（/pagead/とか）でProtobufのバイト列をスキャンして、ターゲットのフィールドタグを見つけて、フィールドキーを無効化するんだって（例：49399797 → 49399796）。<br>それって欠陥じゃなくて、仕様でしょ。タグを見つける手間を考えたら、長さ（varint）を読んでスキップする方が簡単じゃん。コピーが必要だけど、mitmproxyのAPIが返すbytesオブジェクトはimmutableだから、どっちにしろコピーは必要だし。" userName="vitus" createdAt="2025-03-18T11:29:34" color="">}}

{{<matomeQuote body="プロトコルレベルでは問題ないけど、Googleの広告データ構造での未知のフィールドの扱い方が問題だと思うな。エラーを出すんじゃなくて、広告がないことにするんだもん。Googleはプロトコルを変更して古いバージョンで広告が再生されなくなる前に、新しいバージョンのアプリをリリースするはずだよ。<br>Googleは証明書ピンニングとか、広告情報の抽出ロジックを厳しくすることで、この広告ブロック方法をすぐに止められるはず。俺がYouTubeチームなら、これを欠陥だと思うな。" userName="jeroenhd" createdAt="2025-03-18T11:52:57" color="#38d3d3">}}

{{<matomeQuote body="未知のフィールドをスムーズに処理することは、Protobufの価値の半分を占めるんだよ。クライアントのスキーマに一致しないメッセージをすべて拒否するなら、もっと単純なバージョン管理されたバイナリプロトコルに切り替えた方がいい。<br>でも、未知のメッセージを拒否すると、ユーザーエクスペリエンスが低下する可能性があるよね。Googleが新しいバージョンをリリースしても、すぐにすべての場所にインストールされるわけじゃないし。<br>証明書ピンニングは解決策になるけど、難しいって思われてるみたい。アプリの方がウェブサイトより簡単だと思うけど、使わないのは理解できる。<br>Protobufメッセージに手動で署名して、整合性を確保することもできる。TLSがすでにやっていることの一部を重複させることになるけど、TLSインフラストラクチャから切り離して行う方が簡単かもしれない。<br>でも、OPのハックが主流にならない限り、Googleの現在のアプローチは正しいかもしれない。メッセージの操作には弱いけど、アップデート時のわずかな失敗率による広告収入の損失の方が、広告をブロックするためにミドルウェアボックスを実行している少数の人々から失うものよりも大きいかもしれない。" userName="wongarsu" createdAt="2025-03-18T12:18:17" color="#ff5733">}}

{{<matomeQuote body="YouTubeは、広告がブロックされている疑いがあると、ユーザーエクスペリエンスを低下させることがよくあるよね。GoogleがProtobufのベストプラクティスよりも広告ブロッカーを拒否することを気にするというのは、ビジネスの観点からは奇妙に思える。<br>YouTubeの証明書ピンニングは、Googleが独自のCAを実行しているので、実際にはかなり簡単だよ。ルートCAをハードピンして、それが期限切れになる20年後くらいにアプリをアップデートすればいい。" userName="jeroenhd" createdAt="2025-03-19T05:30:28" color="">}}

{{<matomeQuote body="AFAIK、未知のフィールドを無視することはProtobufの仕様でMUSTだよ。すべてのツールがこれを前提に作られているはず。いずれにせよ、意味ないよ。vitusが指摘したように、フィールドを削除する方が、未知のフィールドに変更するよりも難しくない。<br>証明書ピンニングはできるけど、ユーザーはアプリを改造して自分の証明書をピン留めできる。デバイスをロックダウンしてアプリを改造できないようにすることもできる。ユーザーは改造可能なアプリを入手できる別のデバイスを入手できる。デバイスのattestationを追加することもできる。デバイスからattestationキーを抽出することはまだ不可能だけど、将来的には可能になるだろう。そして、物理的に複製不可能な関数に切り替えるだろう。そして、誰かが物理的に複製する方法を見つけるだろう。というように続く。<br>広告ブロックとの戦いは、本質的に汎用コンピューティングとの戦いなんだよ。広告をスキップできないようにする頃には、<br>広告が終わるまで動画セグメントを送信しないようにすることもできる。ユーザーは事前に動画をダウンロードしようとするかもしれないけど、ほとんどの場合、そこまで先のことを見ることはないから、広告を我慢するか、黒い画面を我慢することになる。そっちの方が理にかなってると思うし、社会を破壊する必要もない。" userName="immibis" createdAt="2025-03-18T14:19:26" color="#ff5c5c">}}

{{<matomeQuote body="広告の代わりに黒い画面になるなら大歓迎だよ。俺のモチベーションは中断から逃れることだと思ってる？俺にとって、中断はちょっとした迷惑だけど、広告そのものが積極的な攻撃なんだ。<br>特に、個別に、プログラムで、部屋にいる特定の人々の神経症、健康上の懸念、および嗜好を披露し、煽るようにターゲットを絞っている今はね。<br>HIVのコマーシャルは、リスクグループの人々がいるときだけ表示されるんだから驚きだよ。それで友人がアウティングされたことがある—幸いにも、協力的な環境で済んだけど。<br>ランダムながん治療薬の広告は、がんサバイバーの友人が遊びに来るときに表示される。ギャンブル中毒に苦しんでいる友人がいるときは、スポーツ賭博の広告が表示される。そして、新しい親がいるときに、キーキー音を立てる小さな人間のための物資を売り込む広告をもう一度聞いたら…" userName="alwa" createdAt="2025-03-18T17:53:57" color="#785bff">}}

{{<matomeQuote body="黒い画面の代わりに、広告を流そうとするときに、穏やかな猫や犬の睡眠動画を見たいな。いつかuBOがこのオプトイン機能を追加してくれるといいな。嘘をミュートして、5分間の事前にロードされた中立的なかわいいコンテンツを重ねて表示するとかね。ユーザーに強制するようなサービスのために。<br>追伸　”犬の睡眠”で５分検索したけど、バカな音楽のない動画が見つからなかった。最近の検索って…" userName="wruza" createdAt="2025-03-18T20:23:08" color="#785bff">}}

{{<matomeQuote body="もっといいのを無料で教えるよ。モントレーベイ水族館のラッコを見てごらん。<br>https://www.montereybayaquarium.org/animals/live-cams/sea-ot..." userName="natebc" createdAt="2025-03-18T21:29:17" color="#38d3d3">}}

{{<matomeQuote body="すっかり見入ってしまった。<br>私の地元には、どこにも属さないような、独立心旺盛な日本人男性が、小さな居酒屋を一人で経営している。ジャズ、驚くほど多様なメニュー、まさにすべてが揃っている。<br>彼はテレビをバーの後ろに設置し、バーから離して、彼自身に向けている。彼は子猫が遊んでいる様子や、電車の運転手の窓からの眺めだけを映し出している…" userName="alwa" createdAt="2025-03-20T02:47:20" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう！" userName="xarope" createdAt="2025-03-19T03:26:30" color="">}}

{{<matomeQuote body="マジでYouTubeの広告多すぎ。広告見るくらいならブラックスクリーン見てる方がマシだわ。<br>・さっき買った商品が20回も広告に出てくるし。<br>・全然興味ない商品が20回も出てくるし。<br>・「お前ら年寄りだろ、だからこんなクソみたいなことしろよ…(20回目)」みたいなのウザすぎ。<br>・「金持ちなんだからこんなもん買えよ」みたいなのもウザい。<br>もうホント勘弁。" userName="MikePlacid" createdAt="2025-03-19T02:16:24" color="#785bff">}}

{{<matomeQuote body="広告の代わりにブラックスクリーンになったら、みんな結局広告見ると思うよ。<br>マジ大胆な主張だな。" userName="wruza" createdAt="2025-03-18T16:07:27" color="">}}

{{<matomeQuote body="たしかTwitchって、webプレイヤー以外で見てるときは、広告の代わりに「ここに広告が流れるはずだった」って動画を流してるよね。広告より30秒の無音の方が全然マシだわ。" userName="max-privatevoid" createdAt="2025-03-18T17:15:20" color="#ff33a1">}}

{{<matomeQuote body="マジそれな。特に音量バカでかい広告（最近99%それじゃね？）" userName="xarope" createdAt="2025-03-19T03:31:02" color="#ff5c5c">}}

{{<matomeQuote body="＞AFAIK、protobufの仕様では、未知のフィールドは無視するのがマスト。<br>いや、未知のフィールドだけじゃなくて、欠落してるフィールドもあるんだよ。(古いフィールドインデックス)だからクライアントの要件満たしてないんだよね。<br>0レングスの広告を注入するとか、もっとprotobufメッセージを編集すれば回避できるかもね。" userName="johannes1234321" createdAt="2025-03-19T07:54:32" color="">}}

{{<matomeQuote body="同じような理由で、必須フィールドが仕様から削除されたらしい。" userName="immibis" createdAt="2025-03-20T00:35:41" color="">}}

{{<matomeQuote body="＞広告が終わるまで動画セグメントを送らなければ良くない？<br>広告って、ある程度時間が経てばスキップできるものが多いから、そこは考慮する必要があるかもね。でもそれ、マジで賢いアイデアじゃん。<br>（これってTwitchがやってることと似てるよね。）" userName="Sophira" createdAt="2025-03-19T13:06:05" color="#ff5733">}}

{{<matomeQuote body="Googleがコンテンツの途中に終わらない広告ぶっ込んでくるからな。普通の長さの広告なら全然見るけど、料理中にいちいちスキップ押さなきゃいけないから、広告ブロッククライアント入れたわ。<br>Googleがこんなクソみたいなことして、文句言われるの当然だろ。" userName="DidYaWipe" createdAt="2025-03-19T05:35:10" color="#785bff">}}

{{<matomeQuote body="昔、HNでみんな「広告見ないためにお金払いたい」って言ってたのに、Googleがその機能導入したの覚えてるわ。" userName="immibis" createdAt="2025-03-19T08:37:55" color="">}}

{{<matomeQuote body="要はさ、未知のフィールドを無視することでユーザーがビジネスモデルを打ち負かすことになるなら、プロトコルがそれを要求してたとしても、ソフトのビジネスロジックはそうしちゃダメじゃん？Protobufは意図通りに動いてるけど、YouTubeクライアントはそうじゃないってことだよね。cert pinningが解決策じゃないってのは同意。" userName="dcow" createdAt="2025-03-18T14:39:36" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Protobufとアプリは正しい動きをしてるよ。ほとんどのユーザーはMitM攻撃なんてしないし。クライアントコードをエッジにどうやってデプロイするのさ？アップデートされないかもしれないのに、未知のタグナンバーフィールドを処理するために？そんなのありえないって。誰もそんなソフト書くべきじゃないよ。メンテナンスが地獄になるから。アップグレードもダウングレードもできなくなる。ワイヤフォーマットとAPIを尊重しないと、後方互換性とか考えられない。俺のキャリアで一番頭痛かったのは、エンジニアが賢くあろうとした結果。" userName="echelon" createdAt="2025-03-18T14:59:15" color="">}}

{{<matomeQuote body="一番良いのはAPIをバージョン管理して、10年以上前の古いバージョンも全部サポートすることだよね。protoでやってることはマジで良いと思う。" userName="lokar" createdAt="2025-03-18T15:46:17" color="#ff5733">}}

{{<matomeQuote body="あのさ…ユーザーがpremiumに加入してなくて、サーバーが広告を送ってこないなら、エラーメッセージ出せば良くない？" userName="dcow" createdAt="2025-03-19T00:46:30" color="">}}

{{<matomeQuote body="MitM攻撃を防ぎたいなら、データを署名するのが正解。シリアライゼーションフォーマットを厳しくして防ごうとするのは間違い。柔軟性も必要だし。クライアントに広告を表示させないように変更できないフォーマットなんて作れないよ。cert pinningの方がずっと簡単。" userName="wat10000" createdAt="2025-03-18T12:44:29" color="#45d325">}}

{{<matomeQuote body="皮肉なことに、Protobufには”required”と”optional”のフィールドオプションがあるんだよね。でも10年以上前に、Googleが「requiredは使うな！自分でロジックでバリデーションしろ！」って警告をドキュメントに追加したんだ。requiredフィールドが欠けてるとパケット全体がダメになるから。(requiredフィールドを廃止する時も大変だしね) 最初はrequiredを使ってたんだけど、後で色々問題が起きたから、全部optionalに変えて、コードで存在チェックするようにした。" userName="smileybarry" createdAt="2025-03-19T14:52:24" color="#785bff">}}

{{<matomeQuote body="笑えるのが、ストリーミングデータに対する不要な”セキュリティ”制御のせいでGoogleがChromecastを壊したんだよね。まだ直せてないみたい。" userName="gowld" createdAt="2025-03-18T17:21:41" color="">}}

{{<matomeQuote body="俺のChromecastは問題ないから、もうアップデートで直ったんじゃない？Jellyfinだけ壊れてた気がする。セキュリティ制御が原因じゃなくて、Chromecastのハードウェア認証の内部CAの有効期限が切れたから。Chromecastをアップデートするか、クライアントアプリで有効期限を一時的に無視する必要がある。アプリが後者をしてる間に、GoogleがChromecastの証明書インフラを短期間でアップデートする方法を考えてるみたい。" userName="jeroenhd" createdAt="2025-03-19T05:38:46" color="#ff5733">}}

{{<matomeQuote body="個人的には、スムーズで途切れない動画再生の方が、広告収入を取り戻すよりも重要。" userName="smadge" createdAt="2025-03-18T21:18:59" color="">}}

{{<matomeQuote body="Googleがまだcertificate pinningしてないのがマジで意外。" userName="fastball" createdAt="2025-03-18T12:52:06" color="">}}

{{<matomeQuote body="Cert pinningは解決策だよ。理想的じゃないし、消費者にとっては良くないけど、解決策じゃないってことはない。Apple TVでアプリのバイナリを改造するには、まずジェイルブレイクが必要じゃん。だから、今回のCert pinningは”piholeとかを持ってる人がApple TVの広告をブロックできる”から、”Apple TVをジェイルブレイクして、Cert pinningブレイカーをインストールして、piholeみたいな環境を持ってる人が広告をブロックできる”ってレベルになる。Googleが広告を見せたいなら、今回の件を考えるとCert pinningは明らかに有利だよ。でも、Googleはそこまで気にしてないみたい。OPのレベルが高すぎるからね。" userName="fastball" createdAt="2025-03-19T02:32:23" color="#45d325">}}

{{<matomeQuote body="広告とanalyticsでサポートされてる独自の動画サービスを運営してる場合、「正当なトラフィック検査」なんてほとんどないよ。Googleは、ユーザーがネットワークトラフィックをいじるのを嫌がるし、YouTubeダウンローダーのスクリプトを書くのが難しくなることを望んでる。ユーザーとしては、すべてのTLS接続を解除して、ネットワーク上のすべてのデータを盗聴したいだろうけど、それはGoogleの視点とは違うんだよね。データに署名するのは、2つ目のキーでTLSのセキュリティ対策を複製するようなもの。TLSはすでにデータに署名してるから、Googleは信頼のルートを確認するだけでいいんだ。" userName="jeroenhd" createdAt="2025-03-19T05:33:23" color="">}}

{{<matomeQuote body="＞データに署名しろって？<br>それって結局、バイナリに別のキーをピン留めするのと同じじゃん。Cert pinningを使った方が、署名と暗号化の両方を提供してくれるし、暗号化のレイヤーを重ねる必要もない。" userName="JoshTriplett" createdAt="2025-03-18T17:02:54" color="#ff5733">}}

{{<matomeQuote body="あるいは、署名と検証にかかるコストが、これをする人が少ないことを考えると、コストに見合わないってことかもしれないね。" userName="dambi0" createdAt="2025-03-18T16:21:00" color="">}}

{{<matomeQuote body="コンテンツパブリッシャーの視点から見ると、正当なトラフィック検査のケースは、広告を保護することに同意した信頼できる機関によってバックアップされた代替証明書を持つこと。" userName="gowld" createdAt="2025-03-18T17:23:52" color="">}}

{{<matomeQuote body="＞アプリのバイナリを改造すれば突破できるって作者も言ってるし、意味ないじゃん。<br>兄弟コメントにもあるように、クライアントを改造するユーザーに対して、データの署名は役に立たないよ。クライアントが証明書に期待する署名を変更できるし…クライアントがデータに期待する署名も変更できる。" userName="thaumasiotes" createdAt="2025-03-18T23:44:20" color="#ff5c5c">}}

{{<matomeQuote body="ユーザーが明示的に信頼／インストールした証明書を拒否する場合、Cert pinningはマルウェアの挙動とみなされると思う。" userName="gkbrk" createdAt="2025-03-18T21:47:23" color="">}}

{{<matomeQuote body="＞mitmproxyのAPIから返されるbytesオブジェクト(body: bytearray = bytearray(flow.response.get_content(strict=False) or b””))はimmutableだよ。<br>Byteオブジェクトはimmutableだけど、bytearrayオブジェクトは違うよ。" userName="sgarland" createdAt="2025-03-18T12:20:14" color="#ff5733">}}

{{<matomeQuote body="もっと手軽にC++とかGoでプロキシ作れば同じことできるよ。mitmproxyと格闘するより安定してて楽だと思う。プロキシ経由にするとSNIとかでパフォーマンス落ちるし。pfSenseも同じで、Linuxサーバーとiptablesで十分。protoファイルで必要なフィールドだけ定義してコード自動生成してflag書き換えるのがPythonより楽でアップデートも簡単。Protobufは未知のフィールド無視するから、スキーマ変更しても既存の環境壊れないし。" userName="lima" createdAt="2025-03-18T12:23:28" color="#38d3d3">}}

{{<matomeQuote body="YouTube体験をわざと遅くして、動画切り替え遅くしたいな。特にshorts中毒だから、そうすれば抜け出せるかも。" userName="pcardoso" createdAt="2025-03-18T12:35:31" color="">}}

{{<matomeQuote body="ちょっと試してみてるんだけど、ロードが少し遅れるとループから抜け出して「我に返る」感じになるね。" userName="brainzap" createdAt="2025-03-18T13:02:11" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="21世紀はデジタルドラッグの時代として記憶されるだろうね。" userName="ushiroda80" createdAt="2025-03-18T13:15:40" color="">}}

{{<matomeQuote body="いや、デジタルドラッグ時代の始まり、かな。" userName="catlikesshrimp" createdAt="2025-03-18T13:19:23" color="">}}

{{<matomeQuote body="特定のドメインの帯域を遅くするのも効果あるかも。" userName="j45" createdAt="2025-03-18T15:43:04" color="">}}

{{<matomeQuote body="それもいいけど、動画の画質も落ちるよね。YouTube自体は子供に見せてもいいコンテンツも多いけど、shortsばっかり見ちゃうのが問題。ファストフードみたいなもんだよね。" userName="pcardoso" createdAt="2025-03-18T18:17:05" color="#785bff">}}

{{<matomeQuote body="shortsをブロックする方法を探してる人がいるのかもって思った。自分はYouTubeを昔から使っててshortsもあまり見ないから、shortsに無関心なんだよね。同じような人いる？shortsの利用を管理したい友達に教えられることが何かあるかも。あと、opalみたいなアプリも便利だよ。<br>https://www.opal.so/" userName="j45" createdAt="2025-03-18T15:42:10" color="">}}

{{<matomeQuote body="shortsとかreelsとかに慣れないんだけど、子供たちがハマってるのを見ると心配になる。動画の間に少し間を置けば、中毒性を減らせるんじゃないかと思ってる。" userName="pcardoso" createdAt="2025-03-18T18:15:02" color="#45d325">}}

{{<matomeQuote body="マジそれな。面白いShorts見つけて、他にもないかなーってスワイプしてると、アプリのロードに10秒もかかったりするんだもん。そうなると、他にやること見つけちゃうよね。Shortsにマジ価値感じないし。" userName="immibis" createdAt="2025-03-18T20:36:19" color="">}}

{{<matomeQuote body="えー、マジでその意見わかんないわ。コンテンツは置いといて、YouTubeはマジで安定してるんだよね。ストリーミングも視聴も。OBSから4K60FPSで配信しても、YouTubeはちゃんと処理してくれるし。まあ、PCが遅いから1440pでやってるけど。視聴に関しても、有線Apple TVだと4K60FPSでも途切れたことないし。<br>Shortsのゴリ押しと、3動画くらいしか記憶してないっぽいアルゴリズムはマジで嫌だけど、それ以外はマジで満足してる。変な右翼のとか、キモい動画とかもオススメされないし。" userName="ok_dad" createdAt="2025-03-18T18:23:10" color="#45d325">}}

{{<matomeQuote body="コンテンツ自体は別に問題じゃないんだよね。問題は、長年かけてプレイヤーとインターフェースが肥大化してゴミ化してること。最近はもう面倒くさくて、mpvとytdlpで気になる動画だけ見てるわ。" userName="Narishma" createdAt="2025-03-18T22:31:21" color="#45d325">}}

{{<matomeQuote body="お前がプレイヤーとスクリプトをあれこれいじくり回す時間、ブラウザ開いてm.youtube.com見る時間の10倍はかかるだろ。" userName="vachina" createdAt="2025-03-19T02:45:00" color="">}}

{{<matomeQuote body="スクリプトとか使ってないよ。見たい動画のURLをmpvに手動でペーストしてるだけ。YouTubeのゴミみたいなインターフェースと付き合うより全然マシ。" userName="Narishma" createdAt="2025-03-19T05:31:00" color="#ff33a1">}}

{{<matomeQuote body="最後まで皮肉だと思ってたわ。ナイスアイデア。" userName="Always42" createdAt="2025-03-18T14:08:43" color="">}}

{{<matomeQuote body="Googleが十分ユーザー体験を劣化させてくれてるんじゃないの？" userName="create-username" createdAt="2025-03-18T15:23:59" color="">}}

{{<matomeQuote body="いいねー、どうやるか詳しくブログに書いてくれるの楽しみにしてる！" userName="WD-42" createdAt="2025-03-18T15:39:54" color="">}}

{{<matomeQuote body="どこが非効率なのか、もっと簡単なソフトでどう改善できるか、ガイド作ってよ。<br><br>作者はあんたのコメント意識してたっぽいよ。めっちゃ詳しく調べてるし。PythonとC++でベンチマークも取ってるし、最終的にはprotobufのデコードすらしてない。mitmも色々試してる。pfSenseはただの「セキュリティルーター」としてじゃなくて、VLANとかVPNでAppleTVだけをターゲットにしてるんだよ。<br><br>あんたのコメントは安っぽいし、見下してる。作者の投稿は違う。口だけじゃなくて、行動で示してくれよ。" userName="dcow" createdAt="2025-03-18T14:34:00" color="#38d3d3">}}

{{<matomeQuote body="どんな答えを期待してるのか分かんないけど、作者の投稿を批判したつもりはないよ。面白かったし、個人的にはとっくに諦めてると思う。アプリが証明書ピニングを使ってないのは興味深いし、ハッカー魂と決意がすごい。<br><br>ただ、この手のエンジニアリングの課題（特にpfSenseで構築してmitmproxyスクリプトを本番環境で使うこと）には詳しいから、誰かの時間とフラストレーションを減らせればと思って経験を共有しただけだよ。<br><br>コメントしない方が良かった？" userName="lima" createdAt="2025-03-18T20:45:16" color="">}}

{{<matomeQuote body="＞小さいC++/Go/… proxy<br>macOSで動いて、家の他のデバイスにも使える軽量proxyでおすすめある？" userName="Razengan" createdAt="2025-03-18T14:05:56" color="">}}

{{<matomeQuote body="https://github.com/elazarl/goproxy<br> がproxy書くのに良い感じのGoのライブラリだよ。HTTPSのパストスルーとMITM両方サポートしてる。これはwww.google.comへの接続をMITMして、https://www.google.com/maps へのリクエストを拒否する例：<br>package main<br>import (<br>”log”<br>”net/http”<br>”strings”<br>”github.com/elazarl/goproxy”<br>)<br>func main() {<br>proxy := goproxy.NewProxyHttpServer()<br>proxy.Verbose = true<br>proxy.OnRequest(goproxy.DstHostIs(”www.google.com”)).HandleConnect(goproxy.AlwaysMitm)<br>proxy.OnRequest(goproxy.DstHostIs(”www.google.com”)).DoFunc(func(r *http.Request, ctx *goproxy.ProxyCtx) (*http.Request, *http.Response) {<br>if strings.HasPrefix(r.URL.Path, ”/maps”) {<br>return r, goproxy.NewResponse(r, ”text/plain”, 403, ”Forbidden”)<br>}<br>return r, nil<br>})<br>log.Fatal(http.ListenAndServe(”:8080”, proxy))<br>}<br><br>試して：<br>curl -k -x localhost:8080 https://www.google.com/<br>curl -k -x localhost:8080 https://www.google.com/maps<br>curl -x localhost:8080 https://www.apple.com/<br><br>-kは証明書エラーを無視するため。apple.comはパストスルーだから必要ないよね。<br>”本番”（自分の家みたいな信頼できるネットワークね。インターネットに公開するのはやめといた方がいい）ではハードコードされたものじゃなくて、自分の証明書を使ってね。" userName="oefrha" createdAt="2025-03-18T15:14:06" color="#ff33a1">}}

{{<matomeQuote body="＞クリエイターを応援したいから、数か月YouTubeの広告をブロックした後、YouTube Premiumに課金することにした。何かを壊せるからといって、そうする必要があるわけじゃない。<br>YouTube Premiumの支払いって、クリエイターの支援になるの？（もしそうなら、Patreonと比べてどれくらい？）" userName="mubou" createdAt="2025-03-18T10:02:35" color="">}}

{{<matomeQuote body="Patreonに比べたら全然だけど、何人もYouTuber見てたら、全員のPatreonに登録するのって現実的じゃないじゃん？<br>YouTube Premiumのサブスクリプションがクリエイターに与える収入は微々たるものかもしれないけど、広告ブロックして動画を見るよりはマシだと思うよ。<br>（自分はublock使ってて、誰かのパトロンになれるほどお金ないけど）" userName="ozzyphantom" createdAt="2025-03-18T10:08:17" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞広告ブロックして動画を見ることは何も提供しない。<br>視聴回数を提供してるじゃん。それによってYouTubeのアルゴリズムでブーストされて、クリエイターは報酬を得られるんだよ。<br>それに、スポンサー付きの動画も多いし。" userName="chii" createdAt="2025-03-18T10:28:01" color="#45d325">}}

{{<matomeQuote body="それってSponsorBlockがある理由じゃん" userName="debian3" createdAt="2025-03-18T10:36:31" color="">}}

{{<matomeQuote body="SponsorBlockって、モデレーションが酷くて、過剰にいろんなものをブロックする熱狂的な人がいるのが問題なんだよね" userName="hhh" createdAt="2025-03-18T11:08:58" color="">}}

{{<matomeQuote body="＞”horrible”って言い過ぎじゃない？<br>SponsorBlock使ってるけど問題ないよ。MKBHDの動画で99%スキップされた時は笑った" userName="skyyler" createdAt="2025-03-18T13:24:11" color="#ff33a1">}}

{{<matomeQuote body="Linus Tech Tipsの動画で、seekbarがSponsorBlockのせいでカラフルになってたのを見たよ。誰かがスポンサーとかプロダクトプレイスメントとか脱線を全部マークしたんだね。<br>俺も動画のセグメントをマークするよ。例えば、プレゼンターがウザい時にcringyなジョークをスキップするとか。" userName="netsharc" createdAt="2025-03-18T11:55:07" color="#ff5733">}}

{{<matomeQuote body="＞”それらのセグメントが間違ってマークされてたってこと？”<br>そうなら、ネットのいたずらだね。無視すればいいだけ。<br>もしセグメントが正しくマークされてて、動画に多すぎたなら、それは動画クリエイターの問題であって、セグメントを公開してるコミュニティの問題じゃない。" userName="pbasista" createdAt="2025-03-18T13:29:56" color="">}}

{{<matomeQuote body="正しくマークされてたけど、誰かが動画の無駄な部分にウンザリして、わざわざやったんだと思う。LTTの動画でそんなにSBセグメントが多いのを見たのは初めてだった。" userName="netsharc" createdAt="2025-03-18T17:31:58" color="#45d325">}}

{{<matomeQuote body="SponsorBlockはコンテンツクリエイターにとっては問題があるかもしれないけど、視聴者としては全く気にしない" userName="imchillyb" createdAt="2025-03-18T11:55:45" color="">}}

{{<matomeQuote body="スポンサー関連のセグメントだけじゃなくて、関係ないものまでマークしちゃうのが問題ってこと" userName="hhh" createdAt="2025-03-18T15:05:53" color="">}}

{{<matomeQuote body="設定で、実際の広告だけをブロックするように調整できるよ" userName="rubslopes" createdAt="2025-03-18T19:00:01" color="#ff5733">}}

{{<matomeQuote body="マジ？SponsorBlockを何年も使ってるけど、そんなの見たことないよ。スキップされたものをわざわざ見返すことは滅多にないし、見返したとしても、スキップして正解だったと思うことが多いな。" userName="nfriedly" createdAt="2025-03-18T19:52:22" color="#ff5c5c">}}

{{<matomeQuote body="俺は中小のテック系とか科学系のYouTuberをよく見るんだけど、f4miってチャンネルでこれを見たことあるよ。" userName="hhh" createdAt="2025-03-21T08:12:35" color="">}}

{{<matomeQuote body="YouTubeが最近Premium機能を追加してて、5秒スキップすると、よくスキップされる部分をまとめてスキップするか聞いてくるんだって。SponsorBlockを参考にして、Premiumユーザー向けの機能にしたみたいだね。" userName="dmonitor" createdAt="2025-03-18T16:35:20" color="#ff33a1">}}

{{<matomeQuote body="Pixelでそれが機能したことないんだよね。広告飛ばすためにタップ連打してるし、30秒とか90秒スキップの方が確実。あのプロンプトが出たの5回くらいしか見たことない。" userName="darthwalsh" createdAt="2025-03-19T04:05:18" color="">}}

{{<matomeQuote body="これって、アーティストが無料で露出を得ようとするのと同じ構図なのかな？" userName="jnsie" createdAt="2025-03-18T18:49:33" color="">}}

{{<matomeQuote body="Premiumユーザーの方が、広告視聴者よりもYouTubeに遥かに貢献してるんだよ。" userName="chgs" createdAt="2025-03-18T10:29:17" color="">}}

{{<matomeQuote body="＞https://support.google.com/youtube/answer/7060016?hl=en<br>＞YouTube Premiumメンバーなら広告が表示されないから、月額料金をクリエイターと分け合うんだ。お気に入りのクリエイターの動画をたくさん見れば見るほど、クリエイターの収入が増えるってわけ。<br>＞https://www.reddit.com/r/youtube/comments/177353i/you_should…" userName="nickthegreek" createdAt="2025-03-18T13:03:00" color="#38d3d3">}}

{{<matomeQuote body="YouTubeの視聴履歴を見ると、クリエイターの取り分は約45%で、1時間あたり約50p（月12時間視聴で約£12支払いの場合）になるみたい。つまり、10分の動画あたり約10セント。<br>広告視聴だと、1000回あたり1～5ドルだから、動画1本あたり1セント以下。<br>つまり、クリエイターは普通の視聴者よりも俺から20～100倍も稼いでるってこと。もし音楽を200時間リピートして、新しいコンテンツを10時間しか見ない場合はどうなるのかわからないけど、Spotifyの分配方法よりは公平かもね。" userName="chgs" createdAt="2025-03-18T14:06:57" color="#38d3d3">}}

{{<matomeQuote body="YouTube Premiumユーザーの方が、広告視聴よりもクリエイターの取り分が多いらしいよ。広告スキップされちゃうと収入にならないからね。でも、Premiumユーザーはまだ少ないから、微々たるもんだって。" userName="alwyn" createdAt="2025-03-18T10:50:36" color="">}}

{{<matomeQuote body="＞YouTube Premiumユーザーの方がクリエイターの取り分が多いってのは、何度も聞いたことあるけど、Google/YouTubeの公式情報が見つからないんだよね。ほとんど第三者の分析に基づいた話みたい。" userName="diggan" createdAt="2025-03-18T11:12:32" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
