+++
date = '2025-07-21T00:00:00'
months = '2025/07'
draft = false
title = '英国、Apple暗号化バックドア巡る方針を撤回！米国の圧力に屈したか？'
tags = ["Apple", "暗号化", "バックドア", "プライバシー", "政府"]
featureimage = 'thumbnails/purple1.jpg'
+++

> 英国、Apple暗号化バックドア巡る方針を撤回！米国の圧力に屈したか？

引用元：[https://news.ycombinator.com/item?id=44635745](https://news.ycombinator.com/item?id=44635745)




{{<matomeQuote body="Appleはバックドアやマスターキーを作ってないと否定してるけど、中国で事業やるには同等のアクセスが必要だから、これは「技術的には正しい」ごまかしの言葉だろうね。" userName="jjani" createdAt="2025/07/21 16:46:29" color="#ff5c5c">}}




{{<matomeQuote body="Appleは中国のユーザーのiCloudデータと暗号化キーを、中国国内にある国営企業が運営するデータセンターに保管してるよ。<br>[1] https://www.reuters.com/article/technology/apple-moves-to-st..." userName="bhelkey" createdAt="2025/07/21 17:28:33" color="#ff5733">}}




{{<matomeQuote body="要するにバックドアはないんだ。正面玄関が開きっぱなしで、政府は頼むだけでいいんだよ。いや、それすら要らず、勝手に必要なものを取っていくだけさ。" userName="rs186" createdAt="2025/07/21 17:47:01" color="#ff5c5c">}}




{{<matomeQuote body="アメリカでも、Appleがバックドアを持ってないとしても、NSAはすでに通信会社と繋がってるんじゃないの？" userName="theturtletalks" createdAt="2025/07/21 23:13:42" color="">}}




{{<matomeQuote body="通信中の暗号化の目的は、通信会社が信用できなくてもデータは読めないってことだよ。" userName="nl" createdAt="2025/07/22 00:08:09" color="">}}




{{<matomeQuote body="もしエンドツーエンド暗号化がしっかり実装されてれば、NSAが通信会社にフルアクセスできても何も見えないはずだよ。" userName="deepsun" createdAt="2025/07/22 00:07:00" color="#ff5733">}}




{{<matomeQuote body="「我々は作ったことがない」って言うけど、じゃあ誰が作ったの？" userName="ok123456" createdAt="2025/07/21 17:09:57" color="">}}




{{<matomeQuote body="通信中の暗号化なんて、クライアントデバイスが破られたら意味ないよ。デバイスのメーカーやOSベンダー、通信キャリア、アプリ配信元、サードパーティのソフト提供者まで、みんな協力させられる可能性があるからね。それとCellebriteみたいなツールもあるし。" userName="heavyset_go" createdAt="2025/07/22 01:11:45" color="#45d325">}}




{{<matomeQuote body="「技術的に正しい言い訳」って本当に必要？かん口令があればバックドアは明かせないし、Appleのシステムは厳重にロックされてるから、発見するのが難しいしありえないよ。" userName="mzajc" createdAt="2025/07/21 16:56:22" color="#785bff">}}




{{<matomeQuote body="これは単なる通信中の暗号化や単純なクライアント側暗号化じゃないよ。エンドツーエンド暗号化で、各デバイスの鍵生成は君のiPhoneのSecure Enclaveで処理されるんだ。Advanced Data Protectionが何かってことに関しては、この記事がいい出発点だね。<br>https://support.apple.com/en-us/102651<br>iCloud Keychainのセキュリティエンジニアリングを深く掘り下げたいなら、Appleのセキュリティエンジニアリング・アーキテクチャ部門（SEAR）のトップによるこのBlackhat講演の後半がマジで素晴らしいよ。「Synchronizing secrets」だよ。<br>https://youtu.be/BLGFriOKz6U?si=cY94TYo28bRj4G7y&t=1357" userName="jesseendahl" createdAt="2025/07/22 01:55:19" color="#38d3d3">}}




{{<matomeQuote body="箝口令があったって、企業に嘘はつけないよ。そんな嘘は違法になる可能性もあるんだ。もし箝口令があったら、「箝口令がある」って企業は言うはずだ。昔GoogleやTwitterもそうしてたし、政府からどれだけの箝口令を受けているかを示すために、すぐにTransparency Reportを公開し始めたから、政府は「何も要求してない」なんて言えなかったんだ。<br>https://transparencyreport.google.com/user-data/overview" userName="deepsun" createdAt="2025/07/22 00:11:24" color="#785bff">}}




{{<matomeQuote body="もっと掘り下げてみようか。「バックドアやマスターキーを作ったことはない」って言ってるけど、その機能は”バックドア”とか”マスターキー”とは呼ばれてないだけだよね。iMessageの”zero click”みたいな色々な名前で呼ばれる機能なんだ。それに、法執行機関がパイプラインの様々な段階でデータにアクセスできるような機能は、以前にも作ってきたってことを忘れないでね。<br>https://en.wikipedia.org/wiki/IMessage#Security_and_privacy" userName="Hilift" createdAt="2025/07/22 07:51:11" color="#ff5733">}}




{{<matomeQuote body="ターゲットがiCloudバックアップを使っている場合、コンテンツと一緒に暗号化キーも提供されるはずだよ。このFBIの資料を見てみて。<br>https://s3.documentcloud.org/documents/21114562/jan-2021-fbi..." userName="bigyabai" createdAt="2025/07/22 16:52:38" color="#38d3d3">}}




{{<matomeQuote body="つまり、彼らはAdvanced Data Protectionを無効にしただけでしょ？ これを使わないと、データはE2E暗号化されてないから、普通の法執行機関からの要求でデータにアクセスできちゃうんだよ。新しいバックドアを実装する必要なんて本当になかったと思うな。ただUKからの要求を迅速に処理する手続きを実装するだけでよかったはずだ。" userName="dvtkrlbs" createdAt="2025/07/21 18:13:00" color="#ff5c5c">}}




{{<matomeQuote body="攻撃者が君のデバイスにアクセスできて、会話のスクリーンショットを撮ったり、暗号化される前の状態でメモリから会話を読み取ったりできるなら、それって全部意味あるの？" userName="ath92" createdAt="2025/07/22 03:35:34" color="">}}




{{<matomeQuote body="でも、それが大したことなの？ 文脈が重要だよ。中国でビジネスするなら、全てのことで政府にひざまずくって、みんな知ってるじゃないか。そうしないと、運が良ければ完全に閉鎖され、そうでなければ投獄されるんだ。もちろん、中国政府は中国国内のほぼ100%のデバイスにアクセスできるんだよ。" userName="EasyMark" createdAt="2025/07/21 22:53:11" color="#ff33a1">}}




{{<matomeQuote body="それは、iCloudバックアップにオプトインのエンドツーエンド暗号化が追加される前の話だよ。" userName="Aloisius" createdAt="2025/07/22 20:45:50" color="">}}




{{<matomeQuote body="多分、広報担当者が中国のことをただ忘れてただけだろうね。彼らはまだアメリカの企業だし、アメリカ中心の考え方が普通なんだ。" userName="phendrenad2" createdAt="2025/07/22 05:03:38" color="">}}




{{<matomeQuote body="「”zero click”」って言うけど、”iMessage ”zero click””でウェブ検索すると、全部脆弱性とかエクスプロイトの話なんだけど。これって、意図的なものだって主張したいの？" userName="cormorant" createdAt="2025/07/22 12:51:32" color="">}}




{{<matomeQuote body="それは違う脅威モデルだよ。Advanced Data Protectionはサーバーや通信中のデータ保護が主。物理アクセスからの保護はAppleのPlatform Security Guideを見てね。Web版：https://support.apple.com/guide/security/welcome/webPDF版：https://help.apple.com/pdf/security/en_US/apple-platform-sec..." userName="jesseendahl" createdAt="2025/07/22 04:14:12" color="#45d325">}}




{{<matomeQuote body="NSAがTLS暗号化のゼロデイ攻撃を持ってる可能性ってどれくらい？" userName="simondotau" createdAt="2025/07/21 23:48:25" color="">}}




{{<matomeQuote body="でもiCloudってデフォルトでは完全に暗号化されてないよね。" userName="Synaesthesia" createdAt="2025/07/22 05:24:35" color="">}}




{{<matomeQuote body="でも、彼らは通信データを保存して、後で復号できるかもよ。" userName="cluckindan" createdAt="2025/07/22 12:44:55" color="">}}




{{<matomeQuote body="E2EEは知ってる。でも、もし会話のどちらかの端末が押収されたり、敵に乗っ取られたりしたら、どんな暗号化も無意味だよ。" userName="heavyset_go" createdAt="2025/07/22 02:40:26" color="#ff5733">}}




{{<matomeQuote body="OSもE2EEの実装もプロプライエタリなんだし、デフォルトでなくても密かにバックドア付きに変えられうるって考えたら、深読みしすぎだよ。" userName="akimbostrawman" createdAt="2025/07/22 11:23:51" color="">}}




{{<matomeQuote body="”箝口令は嘘を強制できない”って？<br>できるんだよ、それが箝口令の目的だから。" userName="alt227" createdAt="2025/07/22 08:11:23" color="">}}




{{<matomeQuote body="何言ってんだ？俺中国だけど、全然違うよ。規制は緩いし賄賂も効く。共産党が10億台のスマホにアクセスとか無理。そんなゴミどうするんだよ？Wechatの内容は聞けるだろうし、それで十分だろ。NSAみたいな予算も組織力もないって。" userName="xwolfi" createdAt="2025/07/22 09:26:44" color="#ff5c5c">}}




{{<matomeQuote body="コンピュータセキュリティでは、攻撃者がハードウェアに物理的に無制限アクセスできたら、それは“ゲームオーバー”だよ。" userName="teleforce" createdAt="2025/07/22 10:26:58" color="#38d3d3">}}




{{<matomeQuote body="Appleはキーをバックアップしてないって、ホワイトペーパー以上の証拠あんの？" userName="bigyabai" createdAt="2025/07/22 21:34:14" color="">}}




{{<matomeQuote body="長年国家に利用されてきたスパイウェアのAPIを公開すべきだって声があるよ。WhatsAppがスパイウェアでユーザーが狙われたって告発したら、イタリア政府も確認したらしい。この件でイスラエルの企業はイタリアでのアクセスを停止したって。<br>https://www.bbc.com/news/articles/cvgmzdjw24yo" userName="Hilift" createdAt="2025/07/22 15:41:51" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="UK政府は英国ユーザーだけでなく、世界中のAppleユーザーのデータにアクセスしたがってるんだ。AppleがUKで高度なデータ保護を無効にしたのは、メインの命令と戦いつつも、できる限り協力してるって見せるためだと思うよ。" userName="gdwatson" createdAt="2025/07/22 06:17:36" color="#38d3d3">}}




{{<matomeQuote body="UKってなんでいつもこうなの？GSM暗号化の時も同じだったよね。GCHQの影響で、特に覗き見したがる文化があるのかな？" userName="caycep" createdAt="2025/07/21 19:09:28" color="">}}




{{<matomeQuote body="UKの市民には憲法上の言論の自由がないんだ。それが政府が市民の利益より自分たちの利益を優先する、良くない方向に繋がってるんだよ。" userName="ethbr1" createdAt="2025/07/22 01:00:19" color="">}}




{{<matomeQuote body="UK市民にも言論の自由はあるよ。UKは成文化されてない憲法があって、これにはUKの人権法も含まれていて、表現の自由が保証されてるんだ。" userName="weavejester" createdAt="2025/07/22 02:54:54" color="#ff33a1">}}




{{<matomeQuote body="UKはずっとお節介な国家だよ。Mooreも何十年も前にこのことについて書いてたんだ。" userName="ThrowawayTestr" createdAt="2025/07/21 23:42:55" color="">}}




{{<matomeQuote body="Mooreってよくある名前だから、どのMooreのことか教えてくれると助かるんだけど。" userName="aydyn" createdAt="2025/07/22 01:25:14" color="">}}




{{<matomeQuote body="UKが舞台の権威主義的なフィクションを書いたMooreって、一人以上いるの？" userName="ThrowawayTestr" createdAt="2025/07/22 01:46:58" color="">}}




{{<matomeQuote body="「moore UK authoritarianism」で検索しても関連する結果はゼロだったよ。お気に入りのコミック作家の人気を過大評価しちゃダメだよ。" userName="aydyn" createdAt="2025/07/22 01:49:49" color="">}}




{{<matomeQuote body="UKには言論の自由なんてないよ。人権法には「国家の安全保障」とか沢山の但し書きがあって、USよりも制限が多いんだ。UKの「成文化されてない憲法」は「Freedom of Speech」を保証してないし、それは議会議員だけの権利。それに「Freedom of Expression」と「Freedom of Speech」は違うよ。<br>https://www.legislation.gov.uk/ukpga/1998/42/schedule/1/part..." userName="RumourRider" createdAt="2025/07/22 08:49:32" color="#ff5733">}}




{{<matomeQuote body="“moore authoritarianism fiction author”って検索するともっといいし、質問にもちゃんと答えてくれるよ。あんたの検索でも4番目くらいで答え見つかったじゃん。" userName="rogerrogerr" createdAt="2025/07/22 02:05:31" color="">}}




{{<matomeQuote body="実際には言論の自由なんて無いよ。<br>英国政府は常にそれを侵害してるし。彼らの機関は秘密裏に活動して、新聞社を家宅捜索してデータ破壊したり、ジャーナリスト逮捕したり、国境で個人の情報を取り上げたりしてるんだからね。" userName="Synaesthesia" createdAt="2025/07/22 05:28:00" color="#ff5c5c">}}




{{<matomeQuote body="表現は表現の一形態で、表現の自由は言論の自由を含むんだよ。<br>引用するなら「この権利には、公的機関の干渉なしに、また国境に関係なく、意見を持ち、情報や思想を受け取り、伝える自由が含まれる」ってね。<br>あんたが言うように、どの国にも言論には何かしら制限がある。北朝鮮に言論の自由がないのは明らかだけど、どこに線引きするかが問題。<br>理論と実践も違う。米国は理論上はもっと寛容だけど、実際は世界報道自由度指数や表現の自由度指数では英国より下の評価なんだ。米国政府は組織や個人に圧力をかけて言論を抑圧する力がすごく強くて、実際今もそうしてるよ。" userName="weavejester" createdAt="2025/07/22 13:45:20" color="#ff5733">}}




{{<matomeQuote body="Googleって検索結果をパーソナライズするから、俺が君の検索ワードで試しても何も関連するものは出なかったよ。<br>“moore authoritarianism fiction author”なら出たけどね。" userName="sothatsit" createdAt="2025/07/22 02:17:30" color="">}}




{{<matomeQuote body="そうそう、それにどっちにしろ、めちゃくちゃニッチな作家だよ。英語圏のほとんどの人は彼を知らないだろうね。" userName="aydyn" createdAt="2025/07/22 02:34:17" color="">}}




{{<matomeQuote body="これって地球上の文字通り全ての政府に当てはまることじゃないの？" userName="netdevphoenix" createdAt="2025/07/22 08:26:25" color="">}}




{{<matomeQuote body="『V for Vendetta』、『Watchmen』、『300』、それから『The League of Extraordinary Gentlemen』の作者のことだよ？" userName="slavik81" createdAt="2025/07/22 03:04:17" color="">}}




{{<matomeQuote body="いや、そうじゃないよ。<br>＞彼らが新聞社を家宅捜索してデータを破壊したり、ジャーナリストを逮捕したり、国境で個人の情報を取り上げたりする<br>これは多くの国では起きないからね。" userName="tpm" createdAt="2025/07/22 10:22:04" color="#785bff">}}




{{<matomeQuote body="どの国を言論の自由の模範として挙げられると思う？" userName="weavejester" createdAt="2025/07/22 13:47:30" color="">}}




{{<matomeQuote body="どの国も欠点があるから、模範となる国は挙げられないよ。言論の自由って人によって意味が違うから、書くのは好きじゃないんだ。<br>でも、俺たちのちっぽけなスロバキアでさえ、新聞社の家宅捜索や国境での個人情報没収なんて、少なくとも過去25年くらいは起きてないんだ。ひどい政府があったとしてもね。<br>英国の状況は特に悪いと思う。成文憲法が無いこと、政府機関の相互作用（政府が裁判所を無視したり上に立てることも）、名誉毀損法、そしてまだ（今のところは）ECHRの加盟国だけど、その判決はいつも何年も後になってからだしね。決定的に、英国はすごく階級社会なんだ。支配階級は自分たちの欲しいものを手に入れるし、彼らは言論の自由を望んでないんだよ。" userName="tpm" createdAt="2025/07/22 15:19:19" color="#ff33a1">}}




{{<matomeQuote body="表現の自由って曖昧な言葉だよな。米国では憲法で保障されてるけど、英国では違う。北朝鮮を例に出すのは論点ずらしだし、俺は英国の法律だけが大事だと思ってる。英国政府を擁護する奴らにはうんざりだよ。" userName="RumourRider" createdAt="2025/07/22 20:50:05" color="">}}




{{<matomeQuote body="暗号化自体が表現の一種だから、政府は強制的に復号させられないはずだよ。保証って言葉は強すぎるけど、そういう考え方だね。" userName="prasadjoglekar" createdAt="2025/07/22 05:41:48" color="">}}




{{<matomeQuote body="英国政府が法律を作って裁判所が解釈するんだ。国民は保守的だけど、表現の自由は支持されてる。階級もあるけど誤解されがちだね。ガーディアン紙襲撃は批判されたけど、よくあることじゃない。政府はGCHQの言いなりだけど、最終的にバックドアを撤回したのが重要だ。英国は完璧じゃないけど、報道の自由度ランキングは上位だよ。" userName="weavejester" createdAt="2025/07/22 19:10:17" color="#ff5733">}}




{{<matomeQuote body="表現の自由を米国法で定義したら、米国だけになっちゃうってこと？俺は同意だけど、堂々巡りだね。北朝鮮との比較はグラデーションを説明するためだよ。合法性だけじゃなく、実際に政府が言論を罰してるかも重要だ。英国政府を擁護するわけじゃないけど、表現の自由を二択で考えるのは良くない。全ての国に制限はあるし、線引きは難しいんだよ。" userName="weavejester" createdAt="2025/07/23 01:32:17" color="#45d325">}}




{{<matomeQuote body="英国の議員は上流階級じゃなくても、政策は保守的だ。それは支配階級の意向でメディアが世論を操ってるからじゃない？表現の自由も支配階級が許す範囲でしか機能しない。政府はテロ対策法を乱用して抗議活動を制限してるし。<br>https://www.theguardian.com/world/2025/jul/23/private-eye-ca...<br>こんなことは他国じゃありえないよ。" userName="tpm" createdAt="2025/07/23 07:02:02" color="#ff33a1">}}




{{<matomeQuote body="英国には憲法や法律で保障された表現の自由なんてないんだよ。フリーダムオブエクスプレッションなんて言葉は煙幕だね。なんで北朝鮮やドナルド・トランプの話が出てくるんだ？それは論点ずらしだよ。他国の制限なんてどうでもいい。俺は英国の制限だけに関心があるんだ。GCHQがなぜバックドアを欲しがるか知ってるか？俺は奴らの採用担当者に「英国政府についてどう思うか」を直接言ってやったよ。" userName="RumourRider" createdAt="2025/07/23 07:06:48" color="">}}




{{<matomeQuote body="英国にも「人権法1998年」で表現の自由が保障されてるよ。君の定義が特別だと思ってるみたいだけど、じゃあ「自由な言論」って何なの？どんな制限は許されて、どんな制限はダメなの？はっきり教えてくれよ。" userName="weavejester" createdAt="2025/07/23 12:08:42" color="#785bff">}}




{{<matomeQuote body="世界報道自由度指数とか表現の自由度指数って、個人の言論の自由を測るにはイマイチだよね。報道機関の内部事情とか多様性とか、言論の自由とは違うことが含まれてる。もっと客観的に、政府が特定の言論にどう反応するかで評価すべきだよ。例えば、王様や首相の交代を呼びかけたり、ヌードを公開したり、不敬な発言をしたりした場合とかね。" userName="Aloisius" createdAt="2025/07/23 01:02:51" color="#45d325">}}




{{<matomeQuote body="君は「class」って言葉を二つの異なる文脈で使ってるね。「upper class」の「class」は「ruling class」の「class」とは違うんだ。これは細かい話に聞こえるかもしれないけど、UKが階級社会だっていう時、彼らは明らかに前者のことを言ってるんだよ。重なりはあるけど、別々のグループさ。UK政府の行動を擁護するつもりはないけど、最終的な判断を下す前に裁判所が仕事をする時間を与えてほしいな。例えば、君がリンクした記事の件では、男は逮捕されただけで起訴されてないし、Palestine Action全体としては、政府の禁止に対する進行中の裁判があって、成功しそうだ。もちろん、これらの事件はそもそも起こるべきじゃなかったし、政府が法を乱用して自分の意図を通そうとしてるのは完全に同意するよ。でも、内務省の行動が国全体を必ずしも反映してるわけじゃないし、労働党全体を反映してるわけでもないんだ。" userName="weavejester" createdAt="2025/07/23 12:45:54" color="#45d325">}}




{{<matomeQuote body="なんでアメリカが情報収集を独占するべきなの？" userName="amelius" createdAt="2025/07/21 19:46:56" color="">}}




{{<matomeQuote body="それってアメリカの判例法に基づいた、アメリカ特有の解釈だよ。イギリスとか他のどこにも適用されないからね。" userName="Veen" createdAt="2025/07/22 06:37:15" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="引用されてる「UK当局者は、これが“特にAI規制に関して、将来できることを制限する”と付け加えた。労働党政府は来年5月以降までAI法案の計画を延期した」ってどういう意味？" userName="snickerbockers" createdAt="2025/07/21 15:03:31" color="">}}




{{<matomeQuote body="UKのAI法案には、AI当局を設立して、第三者に彼らのAIアプローチに従わせるっていう提案が含まれてたんだ。彼らはAIを消費者監視に使おうとしてたんだよ。要するにAIでユーザーをモニタリングするってこと。「バックドアがないとユーザーを監視するのにAIが使えない」ってことさ。" userName="doublerabbit" createdAt="2025/07/21 16:38:55" color="#ff5c5c">}}




{{<matomeQuote body="AIと暗号化は技術的には関係ないんだけど、政府は自分たちの都合のいいように、どんな口実でも使って議題を進めるんだよ。" userName="jagged-chisel" createdAt="2025/07/21 17:24:39" color="#45d325">}}




{{<matomeQuote body="クライアントサイドのコンテンツスクリーニングみたいに、一部のユースケースでは密接に関係してるんだ。もしバックドアが使えないなら、ローカルLLMを導入してユーザーの活動をスパイさせて、何か問題を見つけたら本部に通報させようとするかもね。" userName="chatmasta" createdAt="2025/07/21 18:09:49" color="#ff5c5c">}}




{{<matomeQuote body="ユーザーに知らせず、警察が決めた閾値でやるなら、それって結局バックドアじゃん。ただ遠回りしてるだけだよ。" userName="mzajc" createdAt="2025/07/21 21:28:13" color="#45d325">}}




{{<matomeQuote body="おそらく、この議論の最も強いバージョンは、AIは児童ポルノやリベンジポルノと区別できない画像を作り出せるから規制しなきゃいけない、ってことなんだろうね。つまり、ゼロとイチの中身にアクセスして確認できる方法が必要なんだ。テロリストが人に危害を加える方法を尋ねてないかも知りたいのかもしれないね。だからAIと暗号化が結びつくんだ。" userName="zdragnar" createdAt="2025/07/21 23:24:03" color="#ff5733">}}




{{<matomeQuote body="本当によかったね！イギリス国民としては嬉しいよ。" userName="MortyWaves" createdAt="2025/07/21 14:59:13" color="">}}




{{<matomeQuote body="お前らの安全のためだよ！これでより安全になるだろ。" userName="johnisgood" createdAt="2025/07/21 23:55:09" color="">}}




{{<matomeQuote body="米と合意の上で要求してて、5-eyesの情報共有で米国もアクセスできる計画だと思ってたわ。結局、4Dチェスじゃなかったんだな…。" userName="jonplackett" createdAt="2025/07/21 15:00:02" color="">}}




{{<matomeQuote body="普通の政権なら米政府が推し進めてただろうな。米国の情報機関は何十年もこれを狙ってたし。でも今の政権はやりたいことや理由がバラバラに見える。5-eyes諸国の情報機関が、こんな予測不能な同盟国相手にどうやって目的を達成しようとしてるのか、内部の会話が気になるわ。" userName="sircastor" createdAt="2025/07/21 20:39:05" color="#ff5733">}}




{{<matomeQuote body="JD Vanceはネットにどっぷりだし、彼の仮想通貨好きのリバタリアン層は政府のバックドアに反対だ。Trumpを冷戦時代の共和党と一線を画すと見れば矛盾はない。米国では誰も冷戦を誇りに思ってないし、左派は米国の帝国主義と見なす。右派も同意して他の問題に移った。欧州は「お前ら米国だろ、冷戦好きだろ？」って言うけどな。欧州人の多くはChomskyの影響で米国の外交政策はCIAに牛耳られてると信じてるが、実際は米国のグランド戦略は何十年も支離滅裂だよ。今は戦略的要請がなく、色んな方向に引っ張られてる。George Friedmanはこれが米国の歴史における繰り返しのパターンで、外交政策が無気力と目標への狂気的集中を交互に繰り返すと論じてる。" userName="0xDEAFBEAD" createdAt="2025/07/22 02:45:51" color="#ff5733">}}




{{<matomeQuote body="英国の内務省は、あらゆる技術を通して何十年もこれを本当に、本当に欲しがってたんだ。制度的なパラノイアだな。" userName="pjc50" createdAt="2025/07/21 15:03:53" color="">}}




{{<matomeQuote body="「4Dチェスじゃなかったんだな…」<br>いや、そんなのいつもそうだよ。俺も秘密のマスタープランがあるって思っちゃう時があるけど、そんなもんねぇんだ。Occam’s razorを読めばわかる。https://en.wikipedia.org/wiki/Occam%27s_razor" userName="gtirloni" createdAt="2025/07/21 19:49:27" color="#ff33a1">}}




{{<matomeQuote body="俺にとっては陰謀というより、社会がよりファシスト的になり（ほとんどの西側政府がそう傾いてる）、より「警察国家」になっていく自然な流れだね。避けられないことだよ。奴らは俺たちの生活のあらゆる側面をスパイし、技術と世論が許す限りそれを無期限に記録したいんだ。警官は仕事をできるだけ簡単にしたいし、政治家はできるだけ多くの人の弱みを握りたいのさ。" userName="EasyMark" createdAt="2025/07/21 22:56:39" color="#ff5c5c">}}




{{<matomeQuote body="それはただのよくある権威主義だよ。それをファシズムと呼ぶのは、あらゆる政治的信条に支持者がいるという点を曖昧にする。最近、権威主義がネットでなぜか人気だね。恐怖に屈して全体的な支配を求めるのは、常に現れる特性だ。そして人間は自由がなぜ重要なのかを歴史から学び直さないといけないんだ。" userName="dmix" createdAt="2025/07/21 23:11:37" color="#ff5c5c">}}




{{<matomeQuote body="ああ、ただファシズムって言葉はここでは適切なはずだよ——ローマの「fasces」に由来していて、王の臣民を罰する権力を象徴するんだ（つまり、他国や王のことじゃなく、国内問題に関わることなんだよ）。" userName="deepsun" createdAt="2025/07/22 00:29:59" color="#38d3d3">}}




{{<matomeQuote body="お前がファシストな技術を使うことを選んだんだろ。お前のOEMが持つのと同じ力を国家が行使する可能性を恐れるなら、そのOEMから買うのをやめろ。ひどいセキュリティモデルを規制し、不透明なシステムには透明性を要求しろ。自由と力を信頼してくれる正直でオープンな代替品に乗り換えろ。さもなくば、ファシストの報いを受けるがいい。俺が10年もAppleのデバイスを使ってないのに、なんでAppleをファシスト呼ばわりするのに時間を使うんだ？お前は俺たちにAppleに反対して腕を組んで抗議してほしいのか？お前がこれを望んでたんだろ、Appleは安全なビジネスだって自分に言い聞かせたんだ。ユーザーを甘やかす技術を使うことにこだわるのはお前だけだ。" userName="bigyabai" createdAt="2025/07/22 16:54:40" color="#ff5733">}}




{{<matomeQuote body="ファシストを喜ばせるために黙って受け入れ、人生を分断し、文句も言わず、可能なら投票で反対しろって？とんでもないね。" userName="EasyMark" createdAt="2025/07/22 21:07:20" color="">}}




{{<matomeQuote body="Appleは選択肢がないと言ったろ。なんで製品を買った時は文句言わなかったのに、今になってそんなに怒ってるんだ？" userName="bigyabai" createdAt="2025/07/22 21:33:05" color="">}}




{{<matomeQuote body="投票だけじゃダメな時もある。例えば、ナチス党は民主的に政権を握らなかった。ヒトラーは1932年の選挙でヒンデンブルクに負けたのに、2か月後には首相に任命されたんだ。その後は民主主義なんて無かったな。彼らは国会議事堂放火事件を起こし、緊急布告を連発して反対派を殺したんだから。" userName="deepsun" createdAt="2025/07/23 20:09:35" color="#ff5733">}}




{{<matomeQuote body="正直驚いたよ。英国政府が暗号化ライセンスの考え方を諦めた代わりに何を得たのか気になるね。" userName="lenerdenator" createdAt="2025/07/21 15:07:37" color="#38d3d3">}}




{{<matomeQuote body="おそらく何も得てないよ。英国には交渉力も交渉の才能もないんだから。" userName="harvey9" createdAt="2025/07/21 15:24:31" color="">}}




{{<matomeQuote body="英国のニュースキャスターが中国の外交官に、中国政府への不信を尋ねた時のことを思い出すね。返答は「なぜ？君たちは何者でもない」って感じだったよ。英国人たちは負けっぱなしだな。" userName="aydyn" createdAt="2025/07/22 01:36:24" color="">}}




{{<matomeQuote body="Brexit交渉は、英国政府が何の交渉力もないのにそれがあると思い込み、主張しようとすることを証明したね。高リスクな取引中に交渉の才能が欠如していたことが、完璧な嵐を生んだんだ。" userName="armada651" createdAt="2025/07/22 04:32:59" color="#38d3d3">}}




{{<matomeQuote body="俺もそう思うよ。この話に関わっている多くの人々がいるのに、なんで英国政府はiPhoneユーザーをスパイするのをやめると撤回したんだろうな。" userName="jajuuka" createdAt="2025/07/21 21:44:23" color="">}}




{{<matomeQuote body="俺くらいの年齢になるまでには、もう少しテクノロジーを理解している政策立案者が増えていると本当に期待していたんだ。ここ25年以上、針は全く動いてない気がするよ。" userName="duxup" createdAt="2025/07/21 14:58:07" color="">}}




{{<matomeQuote body="この記事は、J.D. Vance（40歳）やホワイトハウスの他の人々がE2E暗号化の維持を強力に主張していることについて明確に書かれているぞ。正しい理由からではないかもしれないけど、それでもだ。君が「もっと」何を意味しているかは分からないけど、君が求めていることは実際に起きているんだ。" userName="setgree" createdAt="2025/07/21 15:07:49" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
