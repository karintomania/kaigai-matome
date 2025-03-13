+++
date = '2025-02-21T00:00:00'
months = '2025/02'
draft = false
title = 'Apple、英国政府とのセキュリティ論争を受けてデータ保護ツールを撤回'
tags = ["Apple", "セキュリティ", "データ保護", "政府", "技術ニュース"]
featureimage = 'thumbnails/color2.jpg'
+++

> Apple、英国政府とのセキュリティ論争を受けてデータ保護ツールを撤回

引用元：[https://news.ycombinator.com/item?id=43128253](https://news.ycombinator.com/item?id=43128253)

{{<matomeQuote body="ほんとだよ、あれは思った以上に問題があった。＞”イギリス政府の要求は、Investigatory Powers Actに基づく技術的能力通知を通じてきた。これによりAppleはバックドアを作成し、イギリスの治安当局が世界中の暗号化されたユーザーデータにアクセスできるようにすることが求められた。”空港でセキュリティがデバイスを調べるシナリオを考えてみて。何といっても、旅行者全員が調べられる可能性があるってことだ。こんなの最大級のバックドアだと思うし、Appleが声を上げている唯一の企業なのが心配。Androidデバイスも常にクラウドバックアップを求めていて、GoogleやMicrosoftも署名してると思うよ。プライバシーとセキュリティーが失われてるって感じがする。" userName="bArray" createdAt="2025-02-21T16:16:20" color="#38d3d3">}}

{{<matomeQuote body="＞”Googleはこれに署名していないと思ってるの？”AndroidのGoogle Driveバックアップには数年前からE2E暗号化オプションがあるみたいだ。もしIPAに従っているなら、Androidに鍵を外部に送信する仕組みを作らなきゃならないよね。それがセキュリティ研究者によって発見されないとは思えない。" userName="marcprux" createdAt="2025-02-21T21:47:49" color="#38d3d3">}}

{{<matomeQuote body="Googleは全ての鍵を持ってると思う。" userName="nomel" createdAt="2025-02-21T22:26:33" color="">}}

{{<matomeQuote body="もし本当にそうなら、E2E暗号化バックアップの主張はただの嘘だし、Appleが”Advanced Data Protection”を実装する前は、Appleも同じようにバックアップを解除する命令を受けていたはずだよ。過去7年間でその証拠があったんじゃないかな。" userName="marcprux" createdAt="2025-02-21T22:44:24" color="">}}

{{<matomeQuote body="E2EEは二種類の鍵でデータを解読できるようにすることが可能だ。ユーザーの鍵と政府の鍵だ。これは良い目的でも悪い目的でも使える。ユーザーはデバイスに鍵を持っておいて、もう一つの鍵を安全に保存するとかできるね。" userName="scripturial" createdAt="2025-02-21T23:21:10" color="">}}

{{<matomeQuote body="＞”政府の鍵とユーザーの鍵があると仮定する。”現在の政治状況や企業倫理の欠如を考えると、正確な情報の保証なんてないんじゃないかな。E2Eサービスを積極的には使わないけど、時々個人的な情報をPDFにして親戚に送ることがある。政府はそれを読める可能性があると思ってるよ。" userName="hilbert42" createdAt="2025-02-22T10:39:16" color="">}}

{{<matomeQuote body="E2EEは意図した受取人のみが平文にアクセスできるものだ。政府にアクセスを渡さないならそれはE2EEじゃない。" userName="barsonme" createdAt="2025-02-22T00:04:30" color="">}}

{{<matomeQuote body="それはGoogleの定義なの？言ってることが難しいけど、Googleにデータを送っている時、Googleは意図された受取人じゃないの？法律に従わなきゃいけないから、ベストを尽くしてると思うよ。" userName="mu53" createdAt="2025-02-22T00:24:58" color="">}}

{{<matomeQuote body="もしGoogleがそのやり方を取ったら、証券詐欺で訴えられるだろうね。" userName="brookst" createdAt="2025-02-22T07:42:37" color="">}}

{{<matomeQuote body="歴史はこの主張を否定してきた。法律執行機関がバックドアを提供している企業は訴えられたことがない。WhatsAppがE2Eを広告しているのも同じで、実際には平文で送信されている事実がある。" userName="1oooqooq" createdAt="2025-02-22T08:23:42" color="#ff5733">}}

{{<matomeQuote body="企業が問題を起こすのは嘘をつくからだよ。Googleがセキュリティの弱点を実装して、顧客や投資家に嘘をついたっていう主張があるんだ。こんなことして暴露された他の企業、そして訴えられなかった企業を見せてみてよ。" userName="brookst" createdAt="2025-02-22T08:47:35" color="">}}

{{<matomeQuote body="＞E2EEの意味は受取人だけが平文にアクセスできることだって？それは違うよ。E2EEはエンドポイントだけが平文を扱うことを意味してる。仲介者は含まれない。でもエンドポイントが誰かやソフトウェアが誰のために動いてるかは何も言わないから。キーエスクローとE2EEは完全に互換性がある。" userName="fc417fc802" createdAt="2025-02-22T02:09:43" color="#ff33a1">}}

{{<matomeQuote body="いや、違う。だからE2EEという用語があるんだ。エスクローエージェントが鍵を持っていて触らないと約束したとしても、それは平文を持っているのと変わらない。エスクローエージェントと彼らが鍵を分け合いたい誰かがチャットグループのメンバーになることが許されるなら、最初のポイントはそのままだよ。" userName="barsonme" createdAt="2025-02-22T04:13:14" color="">}}

{{<matomeQuote body="＞キーエスクローとE2EEは完全に互換性があるって？こんな考えを持ってる人をHNで見るのは驚きだよ。" userName="prophesi" createdAt="2025-02-22T07:59:31" color="">}}

{{<matomeQuote body="あれはキーエスクローの本質そのものだよ。特定の実践に対する自分の意見は、関連する用語の定義とは関係ない。" userName="fc417fc802" createdAt="2025-02-22T08:02:19" color="">}}

{{<matomeQuote body="キーエスクローだと、定義上はエンドツー多エンドの暗号化しか実装できない。" userName="prophesi" createdAt="2025-02-22T17:49:26" color="">}}

{{<matomeQuote body="別の当事者がアクセスできるなら、それはE2E暗号化としてカウントされるの？それは僕にとっては嘘だよ。" userName="echoangle" createdAt="2025-02-21T23:56:31" color="">}}

{{<matomeQuote body="嘘だと呼ぶのは、言葉の意味で議論してるだけだよ。これは実際に弁護士がやること。データのペイロードはE2E暗号化されてると呼べるし、ユーザーに”あなたのメールはエンドツーエンドで暗号化されています”と言うことは簡単だ。鍵サーバーの働きについて話さなくてもね。複数の鍵で解除できる方法を含むシステムは、通常そのことを公表しないんだ。人々はそれを言わない法的な義務があるかもしれない。" userName="dtpro20" createdAt="2025-02-22T01:45:09" color="">}}

{{<matomeQuote body="政府の捜査令状の対象となっているデバイスにターゲットを絞ったファームウェアの更新をプッシュすることが、コードレビューを回避する簡単な方法だ。終端ユーザーを保護する実用的な手段は、これに対して存在しない。PS: いくつかの公共パッケージ配信サービスが、こういった攻撃を可能にするためにセキュリティ機関によって運営されていると強く疑ってるよ。" userName="jiggawatts" createdAt="2025-02-22T00:52:55" color="#38d3d3">}}

{{<matomeQuote body="＞過去7年間にそれに関する証拠は何も存在しなかったのでは？僕は期待できないよ。一番の方法はGoogleの内部告発者だろうけど、内部告発者は非常に稀だ。秘密のバックドアや、政府がGoogleから得たかった私的なデータの証拠はいくらでも隠せるし、国家安全保障の理由で封じ込めることもできる。" userName="autoexec" createdAt="2025-02-22T02:39:21" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="秘密を守るのは難しいよね。Googleには人が多いし、ちょっと信じられないな。" userName="catlifeonmars" createdAt="2025-02-22T05:58:16" color="">}}

{{<matomeQuote body="＞”懸念なのはAppleだけが大きく発言していること。”<br>Appleは中国でもビジネスしてるし、そこが変だと思う。中国での個人情報を守るためにビジネスが危なくならない範囲で発言してるだけじゃないの？Appleはデータ保護のビジネスじゃなくて、マーケティングが上手なだけなんだよね。" userName="tholdem" createdAt="2025-02-21T19:09:47" color="">}}

{{<matomeQuote body="Appleは中国での製造拠点が大きいから影響力があると思う。中国の人にはADPを提供してないだろうし。" userName="dclowd9901" createdAt="2025-02-21T19:42:14" color="">}}

{{<matomeQuote body="＞”Androidデバイスがクラウドバックアップを求める。”<br>そのバックアップは暗号化されてるのかな？暗号化されてなければ、英国のセキュリティ官が必要な書類を提示すればデータにアクセスできちゃうよ。Appleは暗号化キーを持ってない理論的に暗号化されたバックアップへのアクセスを話している。<br>これって今まで聞いた中で最大のバックドアだよね。" userName="nottorp" createdAt="2025-02-21T16:39:08" color="#38d3d3">}}

{{<matomeQuote body="＞”非米国市民のデータも米国内に保管されている限りアクセスできる。”<br>その通り。US中心で議論してると本質が見えなくなるよね。US市民以外のデータも、米国にある限り三文字機関が手に入れるのは簡単だと思う。WhatsAppは世界中で使われてるけど、バックアップをGoogleかAppleに促してる。USの情報機関がターゲットの会話をリアルタイムで把握するのには絶好のターゲットだよ。" userName="mtrovo" createdAt="2025-02-21T17:58:47" color="#785bff">}}

{{<matomeQuote body="国際ユーザーがAdvanced Protectionを有効にしていれば、理論上は三文字機関から保護されてると思う。FISAが関係してくるから、FBIが非米国人のAppleアカウントデータを集めるための命令を出したら、Appleは暗号化されたデータを渡すか、無視することも考えられる。" userName="mox1" createdAt="2025-02-21T18:32:20" color="">}}

{{<matomeQuote body="＞”非米国市民のデータも米国内に保管されている限りアクセスできる。”<br>いや、そんなことはないよ。アクセスには令状が必要だし、企業はそのために全データを復号化するシステムを構築する義務はもってない。例えば、ラスベガスの事件ではAppleはiCloudのセキュリティをバイパスするiOSバージョンを作ることを拒否したから。" userName="burnerthrow008" createdAt="2025-02-21T16:51:39" color="">}}

{{<matomeQuote body="バックアップの暗号化について聞いたんだ。これは暗号化されてないデータのことを言ってるよね。>”ラスベガスの事件を例に。”<br>自分はアメリカにいないし、アメリカに保管されている自分のデータは簡単にアクセスされると思う。ただ、暗号化されている場合は話が違うけど。" userName="nottorp" createdAt="2025-02-21T16:56:36" color="">}}

{{<matomeQuote body="Appleや最近のGoogleは、ユーザーの未暗号化データにアクセスできないシステムを作ってるよね。>”Google Mapsは位置情報データの取り扱いを変えています。”<br>サーバーにアクセスできないデータを渡すことはできないから、英国はこの回避策を国際的に違法にしようとしてる。" userName="GeekyBear" createdAt="2025-02-21T17:28:10" color="#ff5733">}}

{{<matomeQuote body="＞”Appleだけが目立って立ち上がっているのが心配。”<br>MetaもWhatsAppに対して似たようなリクエストがあったら立ち上がるって言ってたけど、あんまり期待できないよね。" userName="IshKebab" createdAt="2025-02-21T17:47:43" color="">}}

{{<matomeQuote body="WAはエンドツーエンドで暗号化されてるから、むりだよね。" userName="AutistiCoder" createdAt="2025-02-21T20:20:15" color="">}}

{{<matomeQuote body="Appleのやり方は評価するけど、ユーザーが自分のE2E暗号キーを提供できるようにするべきだと思う。" userName="grahamj" createdAt="2025-02-21T17:28:07" color="#ff5c5c">}}

{{<matomeQuote body="それが今まさに取り去られた機能なんだよね。" userName="shuckles" createdAt="2025-02-21T17:45:36" color="">}}

{{<matomeQuote body="ちょっと違うよ。キーはデバイスで生成されてSecure Enclaveに保管されるし、’自分のキー’を持ってくるわけじゃないけど、Appleがアクセスできないという主な利点は実現されてるよ。" userName="kbolino" createdAt="2025-02-21T18:49:22" color="">}}

{{<matomeQuote body="自分でキーを持ち込むことの価値がよくわからないな。デバイスが手続きの一部として生成してくれれば十分だと思う。" userName="shuckles" createdAt="2025-02-21T22:58:05" color="">}}

{{<matomeQuote body="マーベルもキャプテン・アメリカとウィンター・ソルジャーでいい感じのことやってたよね。" userName="sameermanek" createdAt="2025-02-21T16:26:30" color="">}}

{{<matomeQuote body="Appleの悪いニュースを必死に良い方向に持っていこうとする人たちを見るのは笑える。Appleが立ち向かってるって？顧客の手からセキュリティを奪ってるだけだ。" userName="Krasnol" createdAt="2025-02-21T18:32:05" color="#785bff">}}

{{<matomeQuote body="政府が機能を削除させたんだよね。何も機能しないトグルスイッチが残るよりはマシじゃない？それともEUから完全に撤退するべき？" userName="yunwal" createdAt="2025-02-21T22:04:47" color="">}}

{{<matomeQuote body="立ち向かうことはUKから完全に撤退することだよね。これはバックドアを作るのと同じくらい悪い。顧客を見捨てることになる。" userName="Krasnol" createdAt="2025-02-21T23:43:15" color="#38d3d3">}}

{{<matomeQuote body="＞”私がもっと心配するのは、Appleが唯一声を上げている企業ということだ。”彼らは立ち向かってない。静かに屈服してるだけで、これはユーザーのプライバシーに関わってることなのに。" userName="troupo" createdAt="2025-02-21T18:49:02" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="根本的に言うと、問題は政治家たちの技術的リテラシーの欠如だと思う。何も隠してないなら恐れることもないという思い込みに頼っている。しかし、法律は曖昧に解釈できるように書かれているから、実際、子どもを守ることには役立たない。政府はバックドアが良い者と悪い者を区別できると考えているが、それは幻想で、実際は国際的な敵の標的になるだけだ。" userName="ljm" createdAt="2025-02-21T18:11:10" color="#ff33a1">}}

{{<matomeQuote body="リテラシーの問題じゃない。彼らはコントロールを求めている。それによってリスクが増えても、それは彼らの問題ではない。" userName="smsm42" createdAt="2025-02-21T20:23:35" color="">}}

{{<matomeQuote body="政府は国会議員への監視に制限を設けているから、自分たちには法律が適用されない狙いがある。サイバー攻撃が絡むと、コンピュータが合法か違法かを判断できなくなることを理解していないようだ。" userName="ben_w" createdAt="2025-02-21T21:18:16" color="">}}

{{<matomeQuote body="それは、彼らが法律が自分たちに適用されないことを理解していて、他の人への影響には無関心ということだ。" userName="lozenge" createdAt="2025-02-21T21:49:03" color="">}}

{{<matomeQuote body="彼らはコンピュータを警察と同じように考えている。犯人を追いかけるための能力を求めることで、逆に国際的な敵に利用される危険を生んでいる。" userName="ben_w" createdAt="2025-02-21T22:19:28" color="#45d325">}}

{{<matomeQuote body="彼らは理解している。Signal Foundationの大統領、Meredith Whittakerをはじめ、多くの技術リーダーが明確に伝えている。もし政治家がこれを理解していないなら、意図的な無知だ。" userName="soulofmischief" createdAt="2025-02-22T12:35:01" color="#ff33a1">}}

{{<matomeQuote body="自分も法律が議論されていたときに活動をした経験がある。もし当時、インフェレンシャルギャップの考え方を知っていたら、もう少し効果的に活動できたかもしれない。しかし、法案が彼らを敵の攻撃にさらすことを理解させるのが難しい。" userName="ben_w" createdAt="2025-02-22T13:58:46" color="">}}

{{<matomeQuote body="＞どうやってコンピュータの授業を受けたことがない人に、アクセスメカニズムを追加することが攻撃の難易度を上げると説明できるのか？<br>単純にそれを伝えればいい。専門家の意見を信じるか、信じないかは彼らの選択。彼らは選択肢を持っているはずだが、意図的に選ばない。" userName="soulofmischief" createdAt="2025-02-22T15:31:03" color="#45d325">}}

{{<matomeQuote body="彼らは制御が必要なんじゃない。制御を持ちたいだけだ。なぜなら、彼らは後で本当に圧制的なことをする必要があることを知っているからだ。" userName="cryptonector" createdAt="2025-02-21T21:57:07" color="">}}

{{<matomeQuote body="意見：そのような制御を必要とする政府は、人々の敵であり、廃止されるべきだ。誰もが道徳的、倫理的にそうすることができる。" userName="redeeman" createdAt="2025-02-21T21:33:11" color="#38d3d3">}}

{{<matomeQuote body="終末的な監視は避けられるかもだけど、政府は従来の令状を復活させるためにエンドツーエンド暗号化を終わらせたがってるって意見には反対。不正をしないなら自由のために妥協すべきじゃないと思う。" userName="jbjbjbjb" createdAt="2025-02-21T22:01:34" color="#ff33a1">}}

{{<matomeQuote body="＞従来の令状の効果を取り戻すためにエンドツーエンド暗号化を終わらせるという考えだよね。従来の令状は過去のリアルタイム通信を捕まえられなかった。ただの記録がなかったから。" userName="AnthonyMouse" createdAt="2025-02-21T23:15:54" color="">}}

{{<matomeQuote body="特にUKは父権的な国家で、全政党にわたって権威主義的な支持がある。父のような国家とは何か？まあ、暗号化を壊すのは愚かなアイデアだ。Appleがオプションで売るのも悲しい。" userName="gerdesj" createdAt="2025-02-22T00:16:01" color="">}}

{{<matomeQuote body="何も隠してないなら恐れることはないって言われるけど、今は政府を信じてる人も、将来的にはその政権を信じられなくなるかもしれないってことを理解してほしい。" userName="exe34" createdAt="2025-02-21T18:42:11" color="#ff33a1">}}

{{<matomeQuote body="2015年にUSの大統領がAppleに暗号化のバックドアを埋めさせようとした件を調べるべきじゃない。他にも、Googleがロケーションデータを保護し始めたのは、女性に対する法律上の武器として使われる可能性があったからだ。また大事なポイントね。" userName="GeekyBear" createdAt="2025-02-21T20:22:08" color="#ff5733">}}

{{<matomeQuote body="それはないよ、実際に強要したのはFBIで、独立して運営されるべき機関。議会に行ってもあまりサポートもなかったみたい。また、Obamaもそれを支持したわけじゃない。" userName="jshier" createdAt="2025-02-21T21:36:25" color="">}}

{{<matomeQuote body="FBIは行政部門の一部なのに、トランプ大統領の行動とは関係ないって言うのは違うよね。みんなが言ってることは全然違う。" userName="GeekyBear" createdAt="2025-02-21T22:20:57" color="">}}

{{<matomeQuote body="名誉のシステムは、それを支える人々に名誉があるときにのみ機能するんだよね。道化師が宮殿に入ってきても、宮殿がサーカスになっちゃうだけ。" userName="exe34" createdAt="2025-02-21T22:45:48" color="">}}

{{<matomeQuote body="ガスライティングが逆効果だって、もう学んだと思うけど。Obamaは自分を憲法学者として売り込んできたけど、彼が知らずに四憲法を削る活動を進めるわけがない。" userName="GeekyBear" createdAt="2025-02-21T23:13:16" color="">}}

{{<matomeQuote body="”他の側も同じくらい悪い”って言い訳は多くの人が思ってるようには理由にならないよね。他の側の行動が気に入らないなら、ただ真似するんじゃなくて、もっと良いことをするべきだ。" userName="exe34" createdAt="2025-02-21T23:29:14" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="果たしてそのプロパガンダを本気で信じているのか、それとも無意識に永久戦争の話を繰り返しているのか？" userName="isaacremuant" createdAt="2025-02-21T21:04:53" color="">}}

{{<matomeQuote body="ウクライナが侵略されることで戦争を始めたと主張して、ウクライナから五千億ドルの希少金属を要求し、ゼレンスキーをロシアの傀儡に置き換えようとしている。アメリカが自由の防衛者からただの悪党になったのは驚きだ。" userName="exe34" createdAt="2025-02-21T21:49:18" color="#ff33a1">}}

{{<matomeQuote body="「自由の防衛者」という表現が笑える。アメリカの帝国主義を考えると、現実を受け入れることが難しい。" userName="isaacremuant" createdAt="2025-02-22T10:51:59" color="">}}

{{<matomeQuote body="アメリカの核兵器を何と呼ぶ？それはPax Americanaのことだ。70年間の平和と繁栄は、多くの国にとって終わりを迎えた。今、ロシアは彼らの古き敵に味方を得た。" userName="exe34" createdAt="2025-02-22T14:06:00" color="">}}

{{<matomeQuote body="政治家達が求めているのは、彼らが突破できる部分的なセキュリティ。物理的なセキュリティでは達成可能だが、サイバーセキュリティでは無理だと思う。彼らは部分的なサイバーセキュリティが不可能だと知っているかも。" userName="kmeisthax" createdAt="2025-02-21T18:20:00" color="">}}

{{<matomeQuote body="サイバーセキュリティでは部分的なセキュリティは不可能ではない。悪法に対しては技術的な観点から議論するよりも、原則に反対するべきだ。政府がバックドアキーを使える暗号を構築することも可能だ。" userName="eterm" createdAt="2025-02-22T11:21:00" color="#ff5c5c">}}

{{<matomeQuote body="ウォレスは国家元首でもMPでもない。かつて国防大臣だったが、2023年に辞任した。彼の発言が現政府を代表するわけではない。" userName="scott_w" createdAt="2025-02-21T19:11:38" color="">}}

{{<matomeQuote body="イギリスの国家元首はチャールズ3世だ。イギリスの首相は、他の国の元首と比べて少し特殊だ。" userName="onei" createdAt="2025-02-21T19:40:09" color="">}}

{{<matomeQuote body="あなたの言う通りだが、GPには少しの疑いを持って見ていた。頭が良くないワケじゃないけど、無政治的な国家元首の利点も見られる気がする。ジョンソンの時は、信任が得られなければ首相を辞めさせることもできた。" userName="scott_w" createdAt="2025-02-21T20:16:52" color="">}}

{{<matomeQuote body="だからこそこの”子供を思え”っていうクソを早めに潰すのが重要なんだよね。もちろんネット上のペドは悪いけど、アニメにしか興味ない連中にはあんまり気にならない。実際の虐待は特にイギリスでは金持ちや有名人がやってる。暗号を禁止したってペドを捕まえられない、それはただの煙幕だよ。大事なのは警察の捜査と若い子供たちに自分の体について教えることだ！" userName="mschuster91" createdAt="2025-02-21T20:44:11" color="#ff5733">}}

{{<matomeQuote body="＞本当の虐待は特にイギリスでは金持ちや有名人がやっている”<br>Jimmy Savileは酷い捕食者だった。イギリスの支配階級の無意味な慣習に守られていたが、彼一人じゃない。性的捕食者は富裕層だけでなく全ての階級にいるんだ。Jimmy Savileはもっと深刻で広範な問題の症状に過ぎない。" userName="worik" createdAt="2025-02-21T20:50:25" color="#ff5733">}}

{{<matomeQuote body="何の話してるの？Charles IIIが国家元首で、その前はLiz IIだよ。君の言うことは全くの不正確だ。" userName="GJim" createdAt="2025-02-21T23:13:14" color="">}}

{{<matomeQuote body="＞政治家たちが何も隠すことがないから怖がる必要がないって考えることは技術リテラシーの欠如だ。<br>君の考えはかなり甘すぎる。技術リテラシーがこの主張とどう関係しているか説明してくれ。権力者の意図をぼやけさせているように見える。ERIC SCHMIDTは技術リテラシーに問題があるのか？" userName="yubblegum" createdAt="2025-02-21T19:32:33" color="">}}

{{<matomeQuote body="コメントの内容は明確だと思うけど、技術的な文盲が政治家にバックドアアクセスは自分だけだと思わせる原因になってんだよ。それは間違いだ。" userName="stavros" createdAt="2025-02-21T20:00:09" color="">}}

{{<matomeQuote body="＞特にイギリスは父権主義の国家で全党から権威主義的な支持を受けている。<br>これは指摘が奇妙だな。イギリスはアメリカを含む多くの西洋諸国と比べて特に”父権主義”だということはないよ。" userName="kingkongjaffa" createdAt="2025-02-21T18:24:01" color="">}}

{{<matomeQuote body="アメリカではFacebookの投稿で日常的に逮捕されることはない。" userName="15155" createdAt="2025-02-21T18:32:56" color="">}}

{{<matomeQuote body="Facebookに投稿したことで逮捕されることはない。ただ、投稿の内容によって逮捕されるんだよ。" userName="4ndrewl" createdAt="2025-02-21T19:13:33" color="">}}

{{<matomeQuote body="そうそう、アメリカではそれで逮捕されることはない。" userName="pb7" createdAt="2025-02-21T19:52:26" color="">}}

{{<matomeQuote body="確かに逮捕されることはあるよ。" userName="maccard" createdAt="2025-02-21T20:42:23" color="">}}

{{<matomeQuote body="Appleは国ごとのデータ要請の内訳を公開してるって知ってる人は少ないかもね。最近、UKからの要請が急増してるみたいで、これはCLOUD Actに基づく米英データアクセス協定の実施が関係してるんじゃないかな。これにより、UKの法執行機関や国家安全保障機関の要請がスムーズになったってことだね。" userName="AlanYx" createdAt="2025-02-21T19:06:03" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
