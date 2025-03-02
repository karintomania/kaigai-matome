+++
date = '2025-02-19T00:00:00'
draft = false
title = 'ロシア連携の脅威アクターがSignal Messengerを標的に！'
tags = ["セキュリティ", "サイバー攻撃", "メッセンジャー", "プライバシー", "ロシア"]
featureimage = 'thumbnails/color3.jpg'
+++

> ロシア連携の脅威アクターがSignal Messengerを標的に！

引用元：[https://news.ycombinator.com/item?id=43102284](https://news.ycombinator.com/item?id=43102284)

{{<matomeQuote body="Signalや他のアプリでリンクデバイスのワークフローがリスク高めだってのは前から言われてるね。去年も言及したし、TelegramがSignalを批判した時もその話が出た（https://news.ycombinator.com/context?id=40303736）。Linked devicesの実装はずっと問題だったよ。具体的には、Signalがこの攻撃を軽視してるってことも気になる。>「2020年10月20日にSignalに調査結果を伝え、2020年10月28日に回答を得ました。彼らは長期秘密の侵害を敵対的モデルとして扱わないと述べています」" userName="vetrom" createdAt="2025-02-19T18:48:10" color="#38d3d3">}}

{{<matomeQuote body="もし私の理解が正しければ、この攻撃は攻撃者がユーザーのデバイスにしか保存されてないプライベートキー（IK）やパスワードを持っていることを前提にしている。だから、この攻撃を実行するには被害者のデバイスにハードウェアアクセスが必要になる。そうなると、もう負けだよね。間違ってたら訂正してほしいけど、あまり危険に思えないな。物理的なハードウェアのセキュリティとフィッシング攻撃に気をつけるのがいつも重要だよ。" userName="diputsmonro" createdAt="2025-02-19T19:54:51" color="">}}

{{<matomeQuote body="いいえ、その攻撃はデバイスをリンクして承認した後、理由があってそのデバイスのリンクを解除したくなった時、その解除したデバイスがメッセージやアカウントの復号にアクセスできるかどうかを完全には確立できないってことを意味してる。それで、悪いデバイスにリンクした後の唯一の対策は、アカウント全体を消去することだけになるよね。安全番号やキーを回転させることで十分かもしれないけど、あまり確信が持てない。" userName="vetrom" createdAt="2025-02-19T20:52:14" color="">}}

{{<matomeQuote body="その攻撃の内容はそうじゃないよ、彼らは君のプライベートキーにアクセスできるから、君の電話がなくてもリンクプロトコルを完了し、許可された数までデバイスを追加できるようになる。悪いデバイスを追加したら、その瞬間からもうアウトだよ、チャット履歴を同期しない限りはね。ユーザーのデバイスの数は常に確認できるし、各デバイスに対して新しい暗号化バージョンを生成する。UIが正しくデバイスを表示しないのは問題だけど、今はそうではないと思うよ。" userName="inor0gu" createdAt="2025-02-19T21:07:48" color="#ff5733">}}

{{<matomeQuote body="それは本当にヤバいね。" userName="UltraSane" createdAt="2025-02-19T22:07:38" color="">}}

{{<matomeQuote body="過去にリンクされていたデバイスがあればそれだけで済む感じだね。リンク解除のセキュリティ要件は思っているほど強くないし、QRコードのスキャンでデバイスリンクができるフィッシング攻撃があるのは、本当にヤバイよ、ユーザーがあまりアクションを取らなくても済むから。" userName="vlovich123" createdAt="2025-02-19T21:04:55" color="">}}

{{<matomeQuote body="君のスマホ（主デバイス）とリンクされたデバイスは、IKを共有しているから、それがアカウントの”信頼の根源”になる。そこから新しいデバイスキーを生成して更新するんだ。これらのキーはAndroidのKeystoreにバックアップされてて、Windows/Linuxでも同様のシステムがあると思う。MacOS/iOSでも同じかはわからないけど、単純にラップトップにアクセスするだけじゃないから、少なくともルート権限が必要だよ。フィッシングは常に難しいし、残念ながら対抗はほぼ不可能かも。" userName="inor0gu" createdAt="2025-02-19T21:16:53" color="#ff5733">}}

{{<matomeQuote body="ポイントは、ユーザーとして信頼の取り消しが今後の保護を期待されるべきなのに、それができてない点だね。例えば、サーバーが新しいメッセージを転送してはいけないのに。そのデザインはSignalが選んだもので、明らかに危険な決定だよ。IKをなんらかの方法で入手した後、ユーザーが知らないうちにアカウントを実質的に乗っ取ることができるから。こういう意外な設計選択は、Signalがこれを脅威モデルとしてカウントしてないことを示唆してて、潜在的な欠陥があると思う。" userName="vlovich123" createdAt="2025-02-20T06:10:49" color="#ff33a1">}}

{{<matomeQuote body="信頼の取り消しは常に厄介な問題だから、TLS証明書を見れば虫の数もわかる。Signalサーバーがメッセージをデバイスに転送することはないし、誰かが持っているデバイスのリストは必ず確認する必要があって、各デバイスはIKで署名されたユニークなキーを生成するから、透明なデバイスが存在するわけじゃない。もちろん、サーバーが正直で一貫していることを保証する必要があるけど、それは既に進行中の作業だよ。問題はプロトコルデザインではなく、(1)失敗シナリオの検出方法、(2)悪いことが起こったときに適切に警告する方法、(3)ユーザーに十分な情報を提供する方法だと思う。" userName="inor0gu" createdAt="2025-02-20T08:16:29" color="#ff5733">}}

{{<matomeQuote body="デバイスが未来のメッセージにアクセスできないように暗号的に設計する方法があると思う。Signalの設計には既知の弱点があって、過去にそれを無視しているから心配だ。" userName="vlovich123" createdAt="2025-02-20T03:38:51" color="">}}

{{<matomeQuote body="今は”このChromeブラウザの拡張機能をインストールするだけ”で済む時代だよね。変な広告や拡張、ツールバーがあればHITできるし、位置情報や検索履歴とか全部取られちゃう。" userName="reactordev" createdAt="2025-02-19T20:55:22" color="">}}

{{<matomeQuote body="どんなアプリでもインストールしたら攻撃対象になる。MITM攻撃ができるし、データも読まれちゃう。これはクラシックなフィッシングだよ。" userName="reactordev" createdAt="2025-02-19T22:56:44" color="#38d3d3">}}

{{<matomeQuote body="その論文の攻撃はユーザーの長期秘密鍵が侵害されるのを前提にしてる。実際には(root権限を得るか)最近のチャットバックアップを妥協しない限りできないんだ。今回のGoogleの発見はフィッシングと同じで深刻じゃない。" userName="inor0gu" createdAt="2025-02-19T20:58:47" color="">}}

{{<matomeQuote body="リンクされたデバイス機能を使わなければ、この脅威は影響しないのかな？" userName="tomrod" createdAt="2025-02-19T23:07:46" color="">}}

{{<matomeQuote body="もしプライベートキーにアクセスされてたら、もう詰んでるよ。攻撃がリンクデバイス追加とかなら、安全だけど、”Signalのアップデートをここで”みたいな攻撃でもいける。" userName="inor0gu" createdAt="2025-02-19T23:34:57" color="#ff33a1">}}

{{<matomeQuote body="最近気づいたのは、”E2E暗号化”はユーザーがちゃんと作ったクライアントが必要だってこと。トラッカーを入れられたら、プロトコルの意義が消えちゃう。" userName="parhamn" createdAt="2025-02-19T21:54:04" color="">}}

{{<matomeQuote body="全てをコントロールできない限り、何かに信頼を置くことになるよね。信頼を消すのは難しいし、それを隠すのも無理。だから、悪意のある行為を証明できる仕組みが重要だと思う。" userName="inor0gu" createdAt="2025-02-19T22:05:35" color="">}}

{{<matomeQuote body="なんかその目標全部無意味になっちゃう感じ。ある種の情報機関が最も秘密主義な組織にまで入り込んでるのに、Signalの供給網が無敵だと思う理由が分からない。逆だと思うよ。" userName="parhamn" createdAt="2025-02-19T22:15:03" color="">}}

{{<matomeQuote body="彼らが狂ってるとは思わないな。セキュリティメカニズム設計には役立つし。ただ、ユーザーにはほとんど関係ないノイズだよ。テクノロジーを魔法みたいに扱っちゃうから、誰もエレベーターに乗りたがらなくなる。" userName="inor0gu" createdAt="2025-02-19T22:27:34" color="#ff5733">}}

{{<matomeQuote body="それにしてももっとひどいかも。エレベーターのケーブル質を原子レベルでシミュレーションしてるのに、エレベーターの床がないみたいな感じ。" userName="parhamn" createdAt="2025-02-20T03:06:39" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="脅威モデルによってはまだ役立つかも。国家がバックドアを持ってたら、その機能を使い果たす？全体主義国家の反体制分子なら、全部かけてくるだろうし。" userName="542354234235" createdAt="2025-02-20T17:24:05" color="#ff5c5c">}}

{{<matomeQuote body="セキュリティは理論的で、実際のリスク議論が後回しになってる感じ。複雑すぎるシステムは、ユーザーが自分のメッセージを読めなくなることもあって、結局「より安全じゃない」システムを使う羽目に。" userName="BrenBarn" createdAt="2025-02-20T07:28:34" color="#ff33a1">}}

{{<matomeQuote body="ざっと見で、E2EEシステムは鍵をプラットフォームが持つことで法律的に保証されたシステムにできるんじゃない？一択じゃないと思う。" userName="Cyphase" createdAt="2025-02-20T07:40:30" color="">}}

{{<matomeQuote body="鍵をプラットフォームが持つことで、彼らがメッセージを読むと法律的に罰せられるのをどう保証できるの？" userName="BrenBarn" createdAt="2025-02-20T10:36:57" color="">}}

{{<matomeQuote body="時々、全部が無意味に思える。Proper secureなものをiOSやGoogle Play Servicesの上に作るのは無駄じゃない？本当にセキュリティを気にする人はiPhone以外のものを使うだろうし。" userName="lmm" createdAt="2025-02-20T01:15:20" color="">}}

{{<matomeQuote body="アタステーションってやつだね。信頼できるルートから確認できる署名のこと。Androidなら、もしロックブートローダーとGoogleのOSが動いてれば、サードパーティに確認できるよ。" userName="redleader55" createdAt="2025-02-19T23:41:08" color="">}}

{{<matomeQuote body="そのコメントは、テレコミュニケーションの状態を忘れてる気がする。10年ほど前は、何も暗号化されてなかったし、公共Wi-Fiで何かをするのはロシアンルーレットみたいだった。" userName="MediumOwl" createdAt="2025-02-20T13:29:07" color="#38d3d3">}}

{{<matomeQuote body="’E2E encryption’は実際にはエンドユーザーがビルドして検証する必要があるよね。多くの人にはそれが不可能だってことは同意すると思う。幸い、再現可能ビルドが実用的な形でこれを回避できるかも。" userName="solarkraft" createdAt="2025-02-20T08:49:22" color="">}}

{{<matomeQuote body="こういう話を聞くとちょっと悲観的になるけど、Tinfoil Chatみたいなものが現れるとまた興味が戻ってくる。まだ理論的な話だけど、ちょっとしたハードウェアがあればかなりの安心感を得られると思う。" userName="edgineer" createdAt="2025-02-20T06:19:27" color="">}}

{{<matomeQuote body="’E2E encryption’はクライアントがユーザーによってビルドされる必要があると言えるけど、OSが画面録画やキーロガーで侵害されることも考えると、完全にユーザーがクライアント、OS、ハードウェアをビルドする必要があるよね。でも、それを送信する相手も侵害されているかもしれないし。コミュニケーションするにはどこかに信頼を置かなきゃいけない。" userName="aembleton" createdAt="2025-02-20T09:11:32" color="#ff5c5c">}}

{{<matomeQuote body="主に内部脅威から守るためのもので、E2Eがあると1人のSignal社員が全員のチャットテキストを取得するのが難しくなる。政府のようなリソースのある相手を想定するなら、信頼できるビルド環境で通信ソフトを作るべきだけど、ハードウェアも信頼しなきゃいけない。要するに、E2Eは一部の攻撃を防ぎ、一部を高コストにするけど、政府が敵なら結局キツいよね。" userName="SheinhardtWigCo" createdAt="2025-02-19T22:07:03" color="#785bff">}}

{{<matomeQuote body="’E2Eは一部の攻撃を防ぎ、一部を高コストにするけど、政府が狙ってきたら結局はダメだよね’という点が言いたかった。DCの人たちがSignalを使うときに政府から守られてると思い込んでいることがあるけど、選択バイアスが働いて逆効果かも。" userName="parhamn" createdAt="2025-02-19T22:09:38" color="#785bff">}}

{{<matomeQuote body="記事には明記されていないけど、攻撃の第一歩は亡くなった兵士のスマートフォンを奪うことだよ。" userName="untech" createdAt="2025-02-19T17:54:37" color="">}}

{{<matomeQuote body="記事によると、脅威者が人々を騙して敵対的なデバイスをSignalにリンクさせようとしているみたい。＞”脅威者は、スキャンされると被害者のアカウントを攻撃者が制御するSignalインスタンスにリンクさせる悪意のあるQRコードを作成している。”" userName="forkerenok" createdAt="2025-02-19T19:26:04" color="">}}

{{<matomeQuote body="古いメッセージを同期する新機能が、攻撃ベクターを悪化させる可能性があるっぽい。悪意のあるURLがこの機能をリクエストに含めることができるのか疑問。" userName="Austiiiiii" createdAt="2025-02-19T21:41:13" color="">}}

{{<matomeQuote body="普通の場合、二次デバイスがその権限を持つことはないはずだから、多分大丈夫だと思う。デフォルトでその設定がオンになってたら心配かも。" userName="inor0gu" createdAt="2025-02-19T21:50:31" color="">}}

{{<matomeQuote body="これは深刻なことなの？スマートフォンが兵士の標準装備になってることへの疑問も生まれるけど、強力な通信プラットフォームを与えることはいいことだよね。そのリスクに対するセキュリティがどうなるかが問題で、ロシアの情報機関が効果的に利用できないレベルまで行けるかが焦点になるんじゃないかな。" userName="mmooss" createdAt="2025-02-19T18:52:22" color="">}}

{{<matomeQuote body="アップロードされた自撮りが問題になることが多かった気がする。例えば、https://www.rferl.org/a/trench-selfies-tracking-russia-milit..." userName="hnlmorg" createdAt="2025-02-19T19:16:29" color="">}}

{{<matomeQuote body="スマホは安全じゃないけど、一般的な無線よりは安全だよね。ミリスペックの暗号化通信は通常の戦争では標準じゃないけど、今の戦争はスマホを使ったり、DiscordやSignal、地図アプリを使ったりしてるんだ。" userName="newsclues" createdAt="2025-02-19T19:03:17" color="">}}

{{<matomeQuote body="＞暗号化されたミリスペックの通信が現代の戦争での標準じゃないって。実際、準備が整った現代軍では標準だよ。暗号化デジタルラジオは一般市民でも簡単に手に入る技術だから。ウクライナは2014年の戦争開始以降すぐに暗号化されたモトローラのラジオを導入し始めて、今じゃ彼らの軍隊全体で標準装備。ロシアは良い解決策を持たず、草の根の趣味のようなものから始まった。スマホは通信だけじゃなく、砲撃の計算に使えるコンピュータとしても便利だから、現場ではアプリが多く使われてるよ。" userName="int_19h" createdAt="2025-02-20T22:14:43" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="ウクライナ侵攻の最初の頃は、ロシアの車両の暗号化されていない無線通話をオンラインで生中継で聞けた。" userName="datameta" createdAt="2025-02-19T23:26:35" color="">}}

{{<matomeQuote body="ロシア兵は前線にスマホを持ち込めないらしいけど、ウクライナ兵は作戦に必須のアプリがあるから持ってることが多い。これがウクライナの戦闘映像が多く公開される理由かも、寄付のインセンティブをつけてるところもあるし。" userName="dmix" createdAt="2025-02-19T20:04:06" color="#785bff">}}

{{<matomeQuote body="戦争の初期にはロシアの装甲列車がGoogle Mapsでの交通量としてはっきり映っていた。重い交通量の中で目立ってたよ。https://www.theverge.com/2022/2/28/22954426/google-disables-..." userName="merely-unlikely" createdAt="2025-02-19T22:42:57" color="">}}

{{<matomeQuote body="どこで戦闘が行われているのか、そしてそのエリアの通信網を誰が運営しているのかが重要だね。自分たちが制御するネットワークで軍事通信を行いたい。" userName="newsclues" createdAt="2025-02-19T20:33:45" color="">}}

{{<matomeQuote body="＞ウクライナの戦闘映像がロシアより多い理由は、ロシアの肉壁戦術にも関係してると思う。自殺的なミッションで武器も持たず、松葉杖の兵士までいるような状況で、彼らが携帯電話を持って記録する気にはなれないんじゃないかな。" userName="motorest" createdAt="2025-02-19T21:06:04" color="">}}

{{<matomeQuote body="この肉壁のミームはもう止めるべきだ。ウクライナが松葉杖の男に倒されてるとしたら、それはNATOによって武装・訓練された軍の実情を物語ってる。" userName="MaxPock" createdAt="2025-02-20T10:55:15" color="">}}

{{<matomeQuote body="＞この肉壁のミームは止めるべきだって？でも多くの映像がある中で肉壁戦術の証拠が4Kで映ってるのに、君は何を言ってるの？それに、ウクライナがロシアの領土を侵略して占領してる現状は「敗北」の定義なのか？" userName="motorest" createdAt="2025-02-20T16:36:16" color="#45d325">}}

{{<matomeQuote body="NATOの訓練がこの戦争にどこまで役に立つかは疑問だね。確かにトレンドにはなってるけど。" userName="mikrotikker" createdAt="2025-02-20T11:53:17" color="">}}

{{<matomeQuote body="多くの映像はgoproとかのカメラで撮影されてると思う。ウクライナとロシアの戦闘映像はそれぞれの軍が確認した上で公開してるんじゃないかな。公開のタイミングや内容は違うけど。" userName="gpderetta" createdAt="2025-02-19T20:43:32" color="">}}

{{<matomeQuote body="兵士の無線は既に危険な通信手段だよ。無線を使えば砲撃を呼んだりできるし、スマホを特に守る必要はないと思う。基本的な対策だけで十分だ。" userName="XorNot" createdAt="2025-02-20T05:36:54" color="">}}

{{<matomeQuote body="ロシア軍は違う意見かもしれないね。先のコメントも見てみて。" userName="codethief" createdAt="2025-02-20T08:56:29" color="">}}

{{<matomeQuote body="それは人々がオンラインで自撮りを投稿することで位置情報を流出させることを指してるんだ。それはセキュリティの問題というよりはプロセスの問題だよ。" userName="XorNot" createdAt="2025-02-20T10:47:22" color="">}}

{{<matomeQuote body="スマホはデータを保存するけど、無線は（無線の種類にもよるが）保存しない。ロシア軍は通常のセキュリティを回避するためのツールを持ってる可能性が高いよ。" userName="mmooss" createdAt="2025-02-20T22:57:10" color="">}}

{{<matomeQuote body="明らかに、メモを受け取らなかった人がいるね。" userName="danesparza" createdAt="2025-02-19T19:33:26" color="">}}

{{<matomeQuote body="QRコードで一気にデバイスがリンクされるってこと？それは穴があると思う。手動で確認すべきだし、別のデバイスに誤ってリンクしないようにすべきだよ。" userName="BrenBarn" createdAt="2025-02-19T21:00:46" color="#38d3d3">}}

{{<matomeQuote body="＞手動で確認すべきだし、別のデバイスに誤ってリンクしないようにすべきだよ。これって、Signalは非技術系のユーザーを想定してるから、QRコードとかリンクをあまり理解してない人も多い。そのため、直感的に何かクリックしちゃうことが多いんだ。確認があると思う？Signalのドキュメントでわかるかも。" userName="mmooss" createdAt="2025-02-19T21:03:54" color="#785bff">}}

{{<matomeQuote body="まあ，Signalのドキュメント見れば何か載ってるかもね。返信した相手じゃないけど，いろいろ調べてみたけどSignalに関係ない結果ばっか出てきたよ。＞”Signalは技術に詳しくない人向けに作られてる”って言っても，QRコードをスキャンしたら危険だって警告メッセージが出てくるのはいいと思う。結局，デバイスのリンクを簡単にさせる作りにしてるのに，バックアップの機能はなかなか実装したがらないのがイライラするってことだよ。QRコードをスキャンしただけでなんでリンクのダイアログを出すの？おかしいよね。" userName="KennyBlanken" createdAt="2025-02-19T23:30:02" color="#785bff">}}

{{<matomeQuote body="実験的にSignalアカウントにデバイスをリンクしてみたんだけど，QRコードスキャンしたら出てきたダイアログが＞”このデバイスをリンクしますか？このデバイスはグループや連絡先を見られ，あなたの名前でメッセージを送ることができます。［キャンセル］［リンクする］”って内容だったよ。Google LensでQRコードをスキャンしたら，sgnl://linkdevice...のURLが表示されたけど，Signalは起動しなかったよ。何だかな。" userName="cuu508" createdAt="2025-02-20T07:06:22" color="#38d3d3">}}

{{<matomeQuote body="リンクの確認がないと思ってる理由は，記事に＞”脅威アクターが作成した悪意のあるQRコードをスキャンすると、犠牲者のアカウントがアクターがコントロールするSignalインスタンスにリンクされる”って書いてあったから，スキャンだけでリンクされるんじゃないかって。そうじゃないかもしれないけど，ちょっと言葉が誤解を招くなと思った。" userName="BrenBarn" createdAt="2025-02-20T07:29:17" color="">}}

{{<matomeQuote body="公正を期すために言うと，あなたが興味を持ってることを詳しく書いてないだけだと思うよ。他のことを詳しく説明するわけにはいかないし，RFCでもないからね。" userName="mmooss" createdAt="2025-02-20T22:55:07" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="関連リンクだよ：<br>https://www.wired.com/story/russia-signal-qr-code-phishing-a...<br>(https://web.archive.org/web/20250219110740/https://www.wired...<br>, <br>https://archive.ph/MbR9e<br>)<br>(via<br>https://news.ycombinator.com/item?id=43103692<br>だけど，あそこにはコメントないね。" userName="dang" createdAt="2025-02-19T17:24:54" color="">}}

{{<matomeQuote body="良いニュースはターゲットは理由があって狙われてるってことだ。それだけSignalは効果的ってことだよ。" userName="1970-01-01" createdAt="2025-02-19T19:17:14" color="#ff5733">}}

{{<matomeQuote body="Signalのことが危険って言う意見が多いけど，そう言ってる連中はどれもSignalよりオープンソースなところが少ないと思う。Signalはウェブスケールの会社になろうとしてて，人権を守ろうとしてる。個人の尊厳は大事だよ。簡単な話じゃない。" userName="josh2600" createdAt="2025-02-19T20:49:13" color="#38d3d3">}}

{{<matomeQuote body="＞”Signalが危険だと言ってる声が多い”って言ってるけど，誰に危険にされてるの？ロシア？アメリカの情報機関？とても混乱してる。Signal Foundationのウェブサイトでも見てみたけど，理事の一人が＞”MaherはCouncil on Foreign Relationsのメンバーで，World Economic ForumのYoung Global Leaderでもある”とか書いてあった。こういう人たちって知ってる世界の一員みたいに思える。なんで彼らがSignalの理事会にいるんだろう？やっぱり簡単な話じゃないね。" userName="sunshine-o" createdAt="2025-02-20T00:02:22" color="">}}

{{<matomeQuote body="Telegramについては特に悪いところが多いよ。カスタムプロトコルでカスタム暗号を使ってて，デフォルトではE2EEがないし，サーバー上にすべてを平文で保存してるからね。" userName="SXX" createdAt="2025-02-20T05:46:06" color="">}}

{{<matomeQuote body="ディスインフォメーションの環境は難しいし，Signalみたいに価値のあるものについては特にね。もしSignalが安全なら，プライバシー重視な攻撃者はSignalが危険だと思わせたいし，逆にもし安全じゃなければ安全だと思わせたいんだ。だから，ディスインフォメーションの源は無視するに限るよ，特にSNSのランダムな人たち（HN含めて）。それが社会の中心になってるから無理だけど、自分を除外するのが大事だよ。そして，信頼できる声だけに制限すること。" userName="mmooss" createdAt="2025-02-19T21:07:36" color="#785bff">}}

{{<matomeQuote body="国が関与してるレベルの攻撃者は目的の達成手段を増やそうとするよね。もしサービスを侵害したら、そのサービスを人気にすることが自分にとって得だと思うだろうし、もしできないなら、もっと別の方法を考えるよ。もしかしたら、Signalを壊さずにフィッシングや脅しの手法で目的を達成できるかもしれないね。" userName="inor0gu" createdAt="2025-02-19T21:24:36" color="#ff5733">}}

{{<matomeQuote body="その言葉を真顔で使う人がまだいるとは思わなかった。”MongoDBはウェブスケールだよ、電源入れればすぐにスケールするさ。”" userName="moffkalast" createdAt="2025-02-19T22:09:29" color="">}}

{{<matomeQuote body="同じような概念を説明しようとするときに、あの汚れた言葉を使わずに説明するのがたまに苦労するんだよね。" userName="20after4" createdAt="2025-02-20T05:07:38" color="">}}

{{<matomeQuote body="設定メニューで予期しないリンクデバイスをチェックできるよ。" userName="anotherhue" createdAt="2025-02-19T17:20:29" color="">}}

{{<matomeQuote body="Signalが常にリンクデバイスをUIに表示するべきなんじゃないかな。例えば「あなたのアクティブなリンクデバイスが3つあります」みたいな小さいアイコンを表示するのっていいと思う。" userName="jzb" createdAt="2025-02-19T20:09:53" color="">}}

{{<matomeQuote body="情報過多って問題があるかも。99％の時間は役に立たない情報だけど、たまに役立つかもしれない。でも、情報を理解しているユーザーにとっては、危険度はずっと少ないよね。脅威は、関わっている相手が侵害されることだし。<br>EDIT: 分析に基づいたアプローチの方が役立ちそうで、例えば、GeoIPが他のデバイスから遠く離れている場合に確認ポップアップを表示するのがいいかも。" userName="XorNot" createdAt="2025-02-19T21:40:34" color="#45d325">}}

{{<matomeQuote body="通知疲れにつながるかもね。新しいデバイスが追加されたときに大きなスナックバーを表示するだけで十分だと思うよ。特にアプリが、その操作がトリガーになってないことを検出できたらね。キー透明性が導入されれば、悪いデバイスが残ることはなくなるだろうけど、フィッシングの問題は残るだろうね。" userName="inor0gu" createdAt="2025-02-19T21:42:13" color="">}}

{{<matomeQuote body="「通知疲れにつながるかも」ってのは多分そうだね。" userName="jzb" createdAt="2025-02-20T16:21:02" color="">}}

{{<matomeQuote body="これはUIデザイン言語のことだよ：<br>https://developer.android.com/reference/com/google/android/m..." userName="saagarjha" createdAt="2025-02-19T22:40:02" color="">}}

{{<matomeQuote body="＞最新で最低なマーケティング用語だね<br>Android 6からあったものだよね。ユーザーが消すのに操作不要な情報バナーだよ。" userName="inor0gu" createdAt="2025-02-19T22:40:00" color="">}}

{{<matomeQuote body="Snackbarって新しい言葉じゃないよ。Material Designの初期からのもので、トーストよりインタラクティブな使用ができるんだ。" userName="dragonwriter" createdAt="2025-02-19T22:45:46" color="">}}

{{<matomeQuote body="画面の下の方に表示されるアプリ内通知だね。基本的には暗い灰色か黒の背景にテキストがあるだけだよ。" userName="SpaghettiCthulu" createdAt="2025-02-19T22:41:35" color="">}}

{{<matomeQuote body="＞最低なマーケティング用語<br>それを理解できないと言うのか？" userName="alashow" createdAt="2025-02-20T03:57:44" color="">}}

{{<matomeQuote body="いくつかのドメインが提供されたけど、全部は取得されてないね。たとえば、signal-protect[.]hostは空いてて、kropyva[.]siteも可用。signal-confirm[.]siteはウクライナで登録されてる。ロシアで登録されてるものもあるよ。戦争中の国は信用しない方がいいよ。" userName="andreygrehov" createdAt="2025-02-19T19:47:08" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
