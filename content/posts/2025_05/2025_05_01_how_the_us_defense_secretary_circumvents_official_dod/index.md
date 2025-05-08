+++
date = '2025-05-01T00:00:00'
months = '2025/05'
draft = false
title = '米国防長官、なぜか国防総省の公式通信機器を使わず！一体どうやって？'
tags = ["国防総省", "セキュリティ", "通信", "政府", "軍事"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> 米国防長官、なぜか国防総省の公式通信機器を使わず！一体どうやって？

引用元：[https://news.ycombinator.com/item?id=43851612](https://news.ycombinator.com/item?id=43851612)




{{<matomeQuote body="他のFive Eyesのメンバーは、USと情報を共有する時に気をつけた方がいいかもね、この状況じゃあ。<br>Signalが使う公開鍵暗号は、大抵の目的にはセキュリティいいんだよ。例えばクレジットカードの取引には最高だね。でも国家機密を送信するのに使う問題点は、長期的な秘密保持を信頼できないこと。たとえMITMとかの攻撃を避けても、今日Signalで送ったメッセージは暗号文でアーカイブされて、10年後のハードウェアやアルゴリズムで攻撃される可能性がある。Signalの暗号が10年後も強力なままかは分からないし、簡単に破られるかも。もしそのメッセージに含まれる秘密が10年後もまだ機密だったら、問題だよ。<br>Signalで送られたものは全て、いつ公開されるか分からないものとして扱う必要があるね。もしUSとインテリジェンスを共有してるなら、それは受け入れられないんじゃないかな。" userName="beloch" createdAt="2025/05/01 05:57:30" color="#45d325">}}




{{<matomeQuote body="国家機密にはSignal以外でどんな種類の暗号使うの？まるで政府機関がはるかに優れた暗号方式を使ってるみたいに言ってるけど、私の知る限りSignalは最新技術に近いよ。<br>はっきり言うと、Signalは昔のRSAみたいに単純な公開鍵暗号（メッセージの暗号化/復号化に使う）は使ってないんだ。非対称鍵ペアを使ってまずDiffie-Hellman鍵交換、つまり一時的な共通鍵を生成して、それを暗号化/復号化に使ってる。これは前方秘匿性も保証するよ。https://signal.org/blog/asynchronous-security/ を見て。<br>それに最近は追加でポスト量子暗号方式も組み込んでるし、他にも省略してる詳細はいっぱいあるだろうね。" userName="codethief" createdAt="2025/05/01 09:21:30" color="#ff33a1">}}




{{<matomeQuote body="Signalの暗号アルゴリズム自体は問題ないよ。問題はそれが動く環境だね。一般のインターネットにつながってるコンシューマーデバイスだよ（しかも、パッチをすぐにインストールしてるなんて信じがたい）。ゼロデイ攻撃とか、うっかりクリック一つで敵対勢力にメッセージにアクセスされて、それを送信される可能性がある。Signalの消えるメッセージ機能は少なくとも前者のリスクには役立つけど、公文書の法律に引っかかるかもね。<br>政府システムへのアクセスを制限するポリシーがあるのは、それらのシステムが魔法のようにセキュリティバグに免疫があると思われてるからじゃない。専門家チームがいて、それらを監視し、積極的にセキュリティ対策してるからだよ。彼の携帯電話は、彼の電話番号を知ってる世界中の誰かから送られる怪しいSMS/MMSメッセージのリスクにさらされてる可能性がある。商業的なスパイウェアのライセンスがあれば十分かもしれない。でも、安全なネットワーク上の機密情報を扱うコンピューターは、彼らからのトラフィックすら受け取らないし、設定はロックダウンされてるし、監視されてるから侵害されてもはるかに早く検出されるんだ。<br>こういうより大きな文脈が本当に重要なんだよ。彼らがやってることは、銀行のオーナーが酔っ払いのゴルフ仲間に事業経営を任せて、最初にやるのがもっと便利だからって帳簿を自分の車に保管し始めるようなもん。たとえ彼が全く無実で良い仕事しようとしてても、誰も他にメリットがないのに、彼が対応する準備ができてない余計なリスクが多すぎるんだよ。" userName="acdha" createdAt="2025/05/01 13:04:19" color="#45d325">}}




{{<matomeQuote body="捕獲したハンドシェイクがあれば、「Store now decrypt later」（今保存して後で復号化）はDiffie-Hellmanも破れるよ。そして量子コンピューターはDiffie-HellmanをRSAと同じくらい簡単に破るからね。" userName="rocqua" createdAt="2025/05/01 10:38:13" color="">}}




{{<matomeQuote body="＞ Anything sent with Signal needs to be treated as published with an unknown delay.<br>あれまあ、Signal側はもうそのこと考えてるみたいだよ。政府で使われてる暗号システムは全部そういう風に考えられてるんだって。<br>重要なのは、想定される公開までの時間の違い（数週間から数年）と、その用途に合理的な対策の強さだよ。<br>もし絶対に何も公開されたくないなら、暗号化は解決策じゃないし、そもそもコンピューターも無理だね。" userName="fidotron" createdAt="2025/05/01 11:58:43" color="#38d3d3">}}




{{<matomeQuote body="それって基本的には何にでも当てはまるんじゃない？セキュリティ機関が使ってる他の暗号化メッセージシステムは詳しくないけど、(1)暗号文を保管してて理論上後で攻撃される可能性があるか、(2)一定期間後にデータを削除するか、のどっちかだよね。Signalにもその削除オプションはあるし。<br>もちろんここでSignalを使うのはひどいopsec失敗だけど、あなたの言ってることで何かが変わるのかよく分からないな。" userName="dgrin91" createdAt="2025/05/01 12:41:17" color="">}}




{{<matomeQuote body="SignalはUSの情報機関で何年も前から広く使われてるよ。これは何も新しいことじゃない。たぶん、これまで気にしてなかった人たちが今になって気づいただけだよ。Five Eyesの他の国については、同じようにWhatsAppを使ってるね。WhatsAppの方がマシかどうかは分からないけど。<br>人がこれがどう機能すると思ってるか、あるいは理論上どうあるべきか、と実際にどう機能してるか、の間にはギャップがあるってことだね。" userName="jandrewrogers" createdAt="2025/05/01 06:46:34" color="#ff5c5c">}}




{{<matomeQuote body="量子コンピューターは存在しないよ。もし将来存在するかもしれない仮想的なマシンについて話したいなら、それをはっきり言うべきだね。<br>読者に文学的な表現を解読させてから議論に入らせるのは、議論を弱めるだけだよ。" userName="jxjnskkzxxhx" createdAt="2025/05/01 11:01:48" color="">}}




{{<matomeQuote body="NSAのUtah Data Centerのそもそもの任務がそれだよ。世界中の暗号化されたデータを全部アーカイブして、アルゴリズムが破られるか、マシンがブルートフォースできるくらい強力になる時まで待つんだ。" userName="VWWHFSfQ" createdAt="2025/05/01 13:08:50" color="#38d3d3">}}




{{<matomeQuote body="＞ The other members of the five eyes had better be careful about what they share with the U.S. while this is going on.<br>その通りだけど、これって新しいことじゃないよ。HegsethはTrump陣営の機密文書の不手際の一例にすぎない。Mar-a-Lagoのバスルームの公式文書アーカイブの話が出た数年前から、内密な秘密のFour Eyesグループができたんじゃないかとさえ賭けるよ。<br>私が驚くのは、機密文書の取り扱いに関する疑惑の中心はTulsi Gabbardだと思ってたのに、SecDefだったってことだね。" userName="DaiPlusPlus" createdAt="2025/05/01 06:43:44" color="#38d3d3">}}




{{<matomeQuote body="たとえSignal’sの暗号化がしっかりしてても，それが動いてるdeviceがTEMPESTの要件満たしてないかもね．Most consumer cryptoはvulnerable in some way to a side-channel attackなんだよ．" userName="femto" createdAt="2025/05/01 06:44:31" color="#ff33a1">}}




{{<matomeQuote body="＞ What other type of encryption would you use for state secrets？Maybe問題はserversなのかな．" userName="JKCalhoun" createdAt="2025/05/01 12:17:47" color="">}}




{{<matomeQuote body="＞ Signal’s encryption algorithmは問題ないけど，leakの原因はUXじゃないかな？（そうだよね？）<br>欲しいfeatureがあっても，Signalだと間違えて関係ない人をgroupに入れやすいんだ．<br>今回も，UIがautosuggestした別のcontactのinitialsがmemberと同じで，うっかり追加しちゃった．<br>Signalはどのcontactが特定のgroupに入れるか分からない．<br>DoD securityは知らないけど，initialsが同じだけでSCIFへのaccessは許可されないだろうね．" userName="jancsika" createdAt="2025/05/01 19:24:03" color="#785bff">}}




{{<matomeQuote body="How are the servers a problem in an end-to-end encrypted scheme？" userName="yusina" createdAt="2025/05/01 12:50:07" color="">}}




{{<matomeQuote body="None of that matters if Signalがwhat is effectively a personal device connected to the internetで動いてるなら，そんなの全部関係ないよ．<br>That deviceが今やthe weak linkになってるし，intelligence agencies in many countriesが多分get intoしようとしてるだろうね．" userName="wickedsight" createdAt="2025/05/01 09:36:10" color="#785bff">}}




{{<matomeQuote body="An obvious issue that I noticed．<br>彼，the exact same messageをtwo different group chatsに送ってたんだ．<br>I assume he copy pasted the message on his unsecured device．<br>そのclipboardのtextにHow many appsがaccessできた？<br>To me this isn’t a technical problem with Signal，it’s an opsec problem，and that’s quite a lot harder to explain to people．" userName="crowcroft" createdAt="2025/05/01 13:21:19" color="#785bff">}}




{{<matomeQuote body="Or maybe they found a way to outsource brute forcing the keys．" userName="fidotron" createdAt="2025/05/01 20:26:23" color="">}}




{{<matomeQuote body="The server could be recording the traffic for later analysis，and the contents revealed if the encryption is defeated．<br>The encryption probably won’t be owned up to the point where it is practical to decrypt traffic in bulk，but it’s a valid thing to look at．" userName="maxerickson" createdAt="2025/05/01 17:34:44" color="#785bff">}}




{{<matomeQuote body="The most secure method of communicationはa one-time pad，a pre-shared private keyだよ．<br>A one-time pad (OTP)は正しくimplementedされてればtheoretically最もsecure。<br>keyがrandomでmessageより長く，once onlyでsecretにsharedされてるconditionsを満たせば，eavesdropperはcomputing powerに関係なくmessageを知れないperfect secrecyになるんだ．" userName="perfmode" createdAt="2025/05/01 13:30:05" color="#ff5c5c">}}




{{<matomeQuote body="俺も同じこと言いに来たわ。GGPとか、話の基本もわからずコメントしてるhnユーザーの典型例だね。セキュリティに関して間違った情報が広まるのは困るんだよ、一番避けたいことなのに。" userName="henryjcee" createdAt="2025/05/01 10:00:38" color="">}}




{{<matomeQuote body="＞ SignalはUS intelligenceで何年も広く使われてるって？<br>ランチの注文とか、office softball schedulesとかにね。Top secret informationじゃないってこと。" userName="HWR_14" createdAt="2025/05/01 11:14:35" color="">}}




{{<matomeQuote body="＞＞ The problem is the environment in which it runs<br>深すぎるよ。<br>問題はphysical environment、machineがinformationを表示するroomのことだよ。screenに表示されたinformationが、camera持ったanyoneがany timeで写真を撮れるroomにあるなら、Computer and technological securityはnothingさ。" userName="sandworm101" createdAt="2025/05/01 14:26:29" color="#ff5c5c">}}




{{<matomeQuote body="でも、それがSignalを”weaker”にする理由じゃないよ。「military grade」 encryptionなんてmythだし、Signalがそれより劣る「amateur level」にしか達しないなんてありえない。crypto（traditional pre-bitcoin senseでのcryptoね）のbackgroundある人なら誰でも知ってるよ。" userName="yusina" createdAt="2025/05/03 15:32:33" color="#38d3d3">}}




{{<matomeQuote body="Five eyesは、最初のtrump presidencyでburnedしてから、shareするinformationについて’careful’になってるよ。" userName="KennyBlanken" createdAt="2025/05/01 11:56:04" color="">}}




{{<matomeQuote body="The issueはencryptionじゃないんだ。それはrunning onしているunsecure deviceのことだよ。Endpointsのcomputersの一つにbackdooredされてたら、Signalをcrackingするのに時間をwasteする必要ないんだ。US governmentはcategorically unapproved hardware for secure communicationsはdoesn’t useなんだ。これはSecretary of Defenseがshould know aboutなことだろ。" userName="kevin_thibedeau" createdAt="2025/05/01 17:23:41" color="#ff33a1">}}




{{<matomeQuote body="＞ Even if you avoid MITM or other attacks, a message sent via Signal today [...]<br>That’s not the threat model。<br>The threat modelは、Signalがfoundation and open source software projectのためにappを作ってるtiny LLCであること、つまりsmall group of human beingsだってことなんだ。State-level actorsに、feasibly preventedできないlots of waysでcoerced or exploitedされる可能性がある。例えば、$2M（or OneDriveで見つけたものでblackmails）をpresentedしてlaptopをhand overするのを「look the other way」って言われたら？Everyoneそうするかな？At scale, auditing techniquesはあるけど、Signalはtoo smallなんだ。[1] Edit: Or, let’s be honest that’s the scale we’re playing at: straight up Novichok you or your familyをthreatensするとか。" userName="ajross" createdAt="2025/05/01 14:23:36" color="#ff33a1">}}




{{<matomeQuote body="My understandingは、the journalist’s phone numberがtrusted userのexisting contactにaccidentally addedされたのは、following process throughらしいよ。<br>1. Journalistがcomment on somethingをseekingしてtrusted userにemailedした。This email contained the journalist’s cell phone number in the signature block。<br>2. The trusted userがthis emailをthe fool with Signalにforwardedした。<br>3. The fool’s iPhoneが、the journalist’s cell phone numberをthe trusted user’s contactにaddingすることをsuggestedした。<br>4. The foolはthisを受け入れた、perhaps blindly。" userName="aftbit" createdAt="2025/05/02 14:09:09" color="#785bff">}}




{{<matomeQuote body="これはfactually incorrectでvery naive takeだよ。The same topicはEuropean countriesでもnewsになってる、about the widespread use of WhatsApp when discussing secret information。It isn’t just the US government、everyone is doing it。" userName="jandrewrogers" createdAt="2025/05/01 14:33:38" color="">}}




{{<matomeQuote body="なんでみんな今になってSignalに注目してんの？ それってHegsethがテクノロジーや機密について何も分かってなくて、アクション映画見すぎた人みたいに行動してるからでしょ。Signalが問題なんじゃなくて、無能さが問題なんだよ、シンプルにね。入っちゃいけない人を無闇にグループに入れたせいで問題が起きた。なのに、なんでこの無能な人がまだ情報機関の近くにいるのかじゃなくて、Signalの使い方を理解すれば最高の通信ツールなのに、そっちを批判してるなんて時間の無駄だよ。" userName="0xEF" createdAt="2025/05/01 08:21:02" color="#785bff">}}




{{<matomeQuote body="この露骨な偽善、Hillary Clintonのメール問題とか、FBIの公式声明とかのリンク、見てみ？ FBIは”正直に言うと、もし似たような状況だったら、この活動に関わった人が何の報いも受けないってわけじゃないよ。それどころか、そういう人はよくセキュリティや行政上の制裁を受けるんだ。でも、それは今ここで決めることじゃないけどね。”って言ってるんだよ。" userName="TaurenHunter" createdAt="2025/05/01 13:20:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="彼女がやったことは間違ってた。それは間違いないね。調査されて適切に対処される必要があったんだ。でも、国務長官が機密文書を不適切に扱ったことと、国防長官が今後の攻撃計画を共有したり、情報セキュリティを積極的に回避したりしてることを、全く同じか関係あることみたいに言うのはやめようよ。特に、国務長官の件で大騒ぎになって調査もされた後なんだからさ。でも、政府高官が改善することを望むのは、俺たちの国にとって偽善じゃないし、彼らが停滞したり後退したりしないようにするのは大事だろ。" userName="wheelerwj" createdAt="2025/05/01 18:14:57" color="#38d3d3">}}




{{<matomeQuote body="”この露骨な偽善”について、Legal Eagleチャンネルが二つの状況を分析してるよ。”Signal War Plans v.s. Hillary’s Emails”って動画ね。<br>二つの状況は実際には（法律的に）同じじゃないんだ。一つ大きな違いは、Hesgethたちが通信を自動削除設定にしてることで、これは記録保存の法律に違反してる（Clintonがメールを削除した証拠はないんだ）。" userName="throw0101b" createdAt="2025/05/02 00:49:01" color="#45d325">}}




{{<matomeQuote body="それに、彼女のメールは最初から機密資料用じゃなかったし、今回回避されてる全ての安全対策がもし使われてたなら導入されてたはずだよ。<br>送り主と受け取り手（BCC以外）全員が、彼女が.govのアドレスを使ってないって知ってたか、知り得たはずだし、共犯か黙認してたんだよ。<br>たまに以前は非機密だった資料が後で機密扱いになったり、データ漏洩で受け取り手が削除や調査に参加する必要が出てくることもあるけどさ。<br>彼女が外部サーバーを使ったのは悪かったと思うけど、それはずっとみんなの目に見える場所にあったんだよ。" userName="brownkonas" createdAt="2025/05/02 22:34:53" color="#ff5733">}}




{{<matomeQuote body="”機密情報の不適切な取り扱いや持ち出しに関する過去の調査を振り返ってみると、これらの事実に基づいて刑事告発を支持するようなケースは見当たらない。訴追された全てのケースには、機密情報の明確かつ意図的な不適切な取り扱い、または意図的な不正行為を推測させるほど膨大な量の資料の露出、または米国への不忠を示す兆候、または司法妨害の努力のいずれかの組み合わせが含まれていた。”<br>まさに偽善だね。" userName="zitsarethecure" createdAt="2025/05/02 01:18:33" color="">}}




{{<matomeQuote body="文字通り、whataboutismじゃないよ。<br>whataboutismっていうのは、ある人物Aについて何か指摘した時に、それに対する唯一の反論が別の人物Bに関する何かを持ち出すことなんだ。<br>例えば、大統領がGeorgia州の州務長官に電話して”見つけてくれ”って11780票を懇願したことを指摘した時に、大した言い訳もなく、相手がBidenの精神的な衰えを持ち出すみたいなね。<br>どっちも真実だし、気になることだけど、返事がただの露骨で必死な論点ずらしなわけ。" userName="kacesensitive" createdAt="2025/05/01 17:14:10" color="#38d3d3">}}




{{<matomeQuote body="HegsethもClintonみたいに下院委員会で11時間も質問に答えてたぜ" userName="Sabinus" createdAt="2025/05/01 23:24:51" color="">}}




{{<matomeQuote body="…いや違うでしょ？whataboutismっていうのはさ、話題1から関係ない話題2に注意をそらして会話のトピックを変えようとすることだよ「それはいいからこれ見て！」みたいなね。OPのコメントは話題1と話題2の類似点を指摘してるんだ。否定してるわけじゃないよ" userName="afavour" createdAt="2025/05/01 16:03:00" color="#ff5c5c">}}




{{<matomeQuote body="whataboutismっていうのは、Aさんが何かやってムカついたのに、Bさんが同じことやっても気にしないっていうダブルスタンダードを示そうとすることだよ。ある人が何かやったことに対してなぜ気にするのに、別の人が違うことをやった時には気にしなかったのか、って聞くのはwhataboutismじゃないね" userName="wang_li" createdAt="2025/05/01 17:29:07" color="">}}




{{<matomeQuote body="俺は上流の人のwhataboutismの定義に同意するよ、そして君が説明したのはもっと昔からある言葉「偽善の指摘」だと思うな。どっちも一つのことだけじゃなくて（少なくとも）二つのことについて話すって点は共通してる。でもwhataboutismは行動や出来事AからBに注意をそらそうとする陽動作戦だけど、偽善の指摘は行動や出来事AとBの類似点に注目して反応を対比させるんだ。どっちも似た状況で使われるけど、どっちを選ぶかの動機は全然違うね" userName="PaulDavisThe1st" createdAt="2025/05/01 17:40:10" color="#ff5c5c">}}




{{<matomeQuote body="＜Wikipediaのwhataboutism定義引用＞<br><br>https://en.wikipedia.org/wiki/Whataboutism<br><br>Clintonのプライベートメアドサーバも、PeteのSignalチャットも、TrumpのMar-a-lagoの書類隠しも、どれも同じくらい悪いね。罰がないってことは、アメリカの「法と秩序」が崩壊してるサインだよ。アメリカは今や三流国と変わらないみたいだね。土壇場の例外とか、インサイダー取引、公然たる賄賂、秘密警察（ICE）、標的を定めた訴追が当たり前になってる" userName="Chyzwar" createdAt="2025/05/01 17:53:51" color="#38d3d3">}}




{{<matomeQuote body="3人ともダメで許せないのは同意。<br>でも、Hegsethの違反は桁違いに最悪だったと思う。<br>進行中の軍事作戦の詳細とかさ。" userName="comfysocks" createdAt="2025/05/01 18:26:11" color="">}}




{{<matomeQuote body="何があったか分かんないんだよね。TrumpがMar-a-lagoにどんな文書持ってて、誰がアクセスしたか、誰と共有したかとか、Clintonsのメールに何があって、誰が読んだかとかも。<br>Hegsethのはまだマシかも、だってチャットの内容と参加者は分かってるからね。<br>でもClintonsとTrumpのケースはもっと影響デカかったかも。<br>結局どれも説明責任がないのが問題だね。" userName="Chyzwar" createdAt="2025/05/01 18:43:10" color="">}}




{{<matomeQuote body="＞Hegsethのはまだマシかも<br>いや、それは絶対違うでしょ。<br>内容が分かってるのは、そいつのセキュリティ意識が他の人たちよりさらに低かったからじゃん。" userName="afavour" createdAt="2025/05/01 18:44:41" color="">}}




{{<matomeQuote body="今の報道って論点ずらしばっかで嫌になるね。<br>最初に問題になったことに集中しようぜ。<br>「他の誰かがやった」とかもういいから。<br>Hegsethは<br>A．違法に機密情報を非公式システムで共有した<br>か<br>B．勝手に作戦詳細を機密解除した<br>のどっちか。<br>事実だから議論の余地なし。<br>追記：Mike Waltzが責任取るっぽい。https://www.bbc.com/news/live/crkx3ed5dn2t" userName="ethbr1" createdAt="2025/05/01 16:22:21" color="#ff5c5c">}}




{{<matomeQuote body="＞軽視されてるみたいだね<br>そうなの？<br>Hillaryのサードパーティ通信を真剣に受け止めた人なら、これも同じくらい受け止めると思うけどね。<br>Clintonのは大したことないのに、こっちはヤバいって言うのはおかしいよ。<br>あと、この件の本当の問題は、非公式通信がFOIAを避けられることだよ。" userName="pessimizer" createdAt="2025/05/01 16:57:28" color="#785bff">}}




{{<matomeQuote body="他の誰かのこと持ち出さずに、Hegsethが何やったかにだけ返事してもらえない？<br>簡単な頼みなんだけど。" userName="ethbr1" createdAt="2025/05/01 19:01:23" color="">}}




{{<matomeQuote body="作戦セキュリティとか個人の責任は置いといて、これは”使いやすさ犠牲のセキュリティはダメ”って例。<br>公式DoD機器がクソだから、みんな使いやすい非公式の使うんだよ。<br>DoDは使いやすさ維持しつつセキュリティ高めた内部向けのAndroidとかSignalフォークを開発すべき。<br>明確にみんな求めてるんだからさ。" userName="Ajedi32" createdAt="2025/05/01 14:39:51" color="#ff5c5c">}}




{{<matomeQuote body="非公式通信使ってるのは、記録に残さず説明責任逃れるためだよ。<br>使いやすさとは全然関係ない。" userName="beardedwizard" createdAt="2025/05/01 14:50:36" color="">}}




{{<matomeQuote body="それも可能性あるけど、なんか証拠あんの？<br>個人的には、DoDのシステムよりSignal使いたいだろうなって思うよ。<br>それに、暗号化されたDoDチャンネルでの個人的会話は、どうせFOIAの対象外じゃない？" userName="Ajedi32" createdAt="2025/05/01 15:05:22" color="">}}




{{<matomeQuote body="でもさ、簡単な答えは、機器が使いにくくて、みんな使いたくないってことだよ。これからどんどんそうなっていくと思う。新しい人たちは私的な機器の快適さに慣れてるからね。別に誰かを擁護するわけじゃないけど、権力者ってもんはそこらへんの一般市民より高い基準を守んなきゃダメだろ。" userName="justsid" createdAt="2025/05/01 18:21:46" color="">}}




{{<matomeQuote body="＞そうかもね、でも証拠あるの？<br>あるよ、記者が偶然チャットにいた時、メッセージの多くが消える設定になってたんだ。記録法の回避以外にそんなことする理由が分からないね。<br>＞テキストの画像から、メッセージは1週間で消える設定だったって。<br>https://apnews.com/article/war-plans-hegseth-signal-chat-inv...<br>さらに、Project 2025は記録を残さずに対面会議を開くことで連邦記録保持法を回避することを示唆してる。<br>https://www.youtube.com/watch?v=xxe55mU4DA8<br>変なことに、Project 2025の研修動画で、おそらく閣僚メンバーが見てるはずのやつでは、連邦記録保持法に違反するからメッセージを削除したり自動削除設定にしたりするな、って言ってるんだよね。" userName="f38zf5vdt" createdAt="2025/05/01 15:24:18" color="#ff5733">}}




{{<matomeQuote body="俺の記憶が正しければ、DoDはTS向けにWickr RAM、機密じゃない通信にはTeamsを使ってる。どっちも使い勝手は”うーん”って感じだけど、だからって法律破るほど最悪じゃないよ。" userName="alistairSH" createdAt="2025/05/01 15:23:35" color="">}}




{{<matomeQuote body="Wickrは健康データみたいな機密じゃない情報にだけ使うはずだろ。TS/SCI向けには完全に別のインターネット（JWICS https://en.wikipedia.org/wiki/Joint_Worldwide_Intelligence_C...）があるんだよ。" userName="FuriouslyAdrift" createdAt="2025/05/01 17:07:03" color="#ff5733">}}




{{<matomeQuote body="DoD向けのWickrのビルドかバージョンがあると思ってたんだけど。違うのかな。" userName="alistairSH" createdAt="2025/05/01 18:09:50" color="">}}




{{<matomeQuote body="Wickr RAMはDoD独自だと思うよ…それでもS/TS向けじゃないけど。" userName="FuriouslyAdrift" createdAt="2025/05/01 19:58:44" color="">}}




{{<matomeQuote body="一番ひどい動機は明らかだろ: 関係してるやつらが外国のエージェントってことだよ。" userName="smackeyacky" createdAt="2025/05/02 22:39:21" color="">}}




{{<matomeQuote body="本当の理由は、Hegsethが見せびらかしたい相手が、誰も公式ネットワークにアクセスできないからだよ。" userName="panzagl" createdAt="2025/05/01 15:41:22" color="">}}




{{<matomeQuote body="セキュリティって人間には不便なんだよ。みんなパスワード使い回したりアプデしなかったりするし、便利な方を選ぶのが普通でしょ。<br>政府の公式ツールが使いにくいなら、そりゃ簡単な別の方法使うって。2025年にもなって連絡がアプリみたいに簡単じゃないとみんな他の手段探すよ。別に何か隠してるんじゃなくて、単に便利な方を選んでるだけだと思うな。人間ってそんなもんじゃん。<br>これで政府もセキュリティシステム見直すかもね。ユーザーを責めるのは良くないよ。" userName="jordanpg" createdAt="2025/05/01 16:36:49" color="#ff33a1">}}




{{<matomeQuote body="OpSecとかSecDefとかDoDとかNSAとか、そういう連中は”ただの人間”みたいに行動しないでほしいもんだね。" userName="cdkmoose" createdAt="2025/05/01 19:04:25" color="">}}




{{<matomeQuote body="人間はみんな人間らしく行動するんだよ。セキュリティの観点から言えば、どんな状況でもそれ以外を想定するのは間違いだね。" userName="jordanpg" createdAt="2025/05/01 20:42:57" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="部分的にはその通りだね。General Dynamics OKL4とGreen Hills’ INTEGRITY RTOS上で動くAndroidだって持ってたんだから。Signalだって移植できたはずだよ。もしやりたければ、どんなベンダーでも使える独自の分離レイヤーに資金投入できたんだ。<br>たぶん、大企業の購買決定への影響力（つまり汚職）が、この問題の多くを引き起こしてるんだと思う。" userName="nickpsecurity" createdAt="2025/05/03 02:23:49" color="">}}




{{<matomeQuote body="あの人さ、誰とでも連絡取れるようにする専門のスタッフが30人もいるんだぜ——20人以上のスタッフによるコンシェルジュサービスの使い勝手が、電波悪いビルでSignal使うより劣るって言うのかい？" userName="eutropia" createdAt="2025/05/01 15:29:29" color="">}}




{{<matomeQuote body="「伝言ゲーム」みたいに情報が歪む可能性もあるし、間に人がいれば「この情報、この人に送っていいの？」って確認して不適切な行動を防げるかもって思ったんだ。<br>連絡係にさえそういう確認をさせたくない、つまりアカウンタビリティを避けたいのは、めんどくさい対立とか心理的負担から逃れるためなんじゃないかな。" userName="opello" createdAt="2025/05/01 16:43:18" color="#785bff">}}




{{<matomeQuote body="全く資格がなくてアルコール依存の過去がある奴を責任者にするなら、せめて有能かどうか確認すべきでしょ。実際、最高権力レベルで仕事をしてる人間が、それが自分より下みたいに扱ってるのを見るのは本当に腹が立つね。<br>まるで、私たちの中で一番偉そうで無能な連中が歴史を作ってるのを見てるみたいだよ。" userName="standardUser" createdAt="2025/05/01 05:27:25" color="">}}




{{<matomeQuote body="これは”誤った等価性の論理的誤謬”の例だよ。" userName="whydid" createdAt="2025/05/01 06:48:18" color="">}}




{{<matomeQuote body="なんかさ、一番偉そうで無能な奴らが歴史を書いてるの見せられてる気分だよ。歴史上よくあることなのかも（って免罪符じゃないけど）、でも当時の奴らが歴史を書いてるから分かんないんだよね。" userName="SequoiaHope" createdAt="2025/05/01 07:32:48" color="">}}




{{<matomeQuote body="”虚偽同等論（false equivalence）とは、欠陥のある、誤った、あるいは偽りの推論に基づいて二つの事柄の間で同等性が引き出される非公式の誤謬である”<br>ここでの誤った推論って何？ ”俺の側が良い、お前の側が悪い” 以外でさ。" userName="gadders" createdAt="2025/05/01 10:09:41" color="">}}




{{<matomeQuote body="2009年の NYT 記事のリンクだよ。<br>Obama 大統領が BlackBerry を使い続けるために頑張った話みたい。<br>数ヶ月、補佐官と戦って手元に置いたんだって。<br>友達やアドバイザーと連絡取るのに使ってたんだ。<br>結局、厳しいルール付きで特別製デバイスを使うことで妥協したらしい。<br>セキュリティ強化のためだってさ。<br>大統領職って現代の通信ツールからは遠ざけられてたんだね。<br>George W. Bush は大統領就任時に「さよならメールアドレス」を送ったって有名だよ。<br>弁護士や Secret Service は最初渋ったけど、特定条件で許可したんだ。" userName="michaelt" createdAt="2025/05/01 07:23:54" color="#ff33a1">}}




{{<matomeQuote body="あの映画（たぶん Civil War の続き）はひどいと思ったね。<br>20 days in Mariupol みたいな実際の戦争映像をアメリカ向けに綺麗にしてるんだ。<br>監督たちはああいう映像で儲けようとしたんだろうね。<br>最後はクソみたいな call of duty アクションで大統領殺しに行く展開。<br>horrors of war をステレオタイプなアメリカ人に置き換えてるし。<br>戦場記者が単なるアドレナリン中毒かって問いで、彼らの本当の価値を損ねてる。<br>世界で起きてることとは何も繋がってないし、アメリカ人を horrors から遠ざけてるんだ。<br>しかもジャーナリストを攻撃してる。<br>あの映画、本当に嫌だったね。" userName="mnky9800n" createdAt="2025/05/01 09:59:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
