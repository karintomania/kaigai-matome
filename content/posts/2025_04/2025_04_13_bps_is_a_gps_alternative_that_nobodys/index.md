+++
date = '2025-04-13T00:00:00'
months = '2025/04'
draft = false
title = 'まだ誰も知らないGPSの代替技術「BPS」が凄いらしい！一体何ができる？'
tags = ["BPS", "GPS", "位置情報", "無線技術", "ATSC 3.0"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> まだ誰も知らないGPSの代替技術「BPS」が凄いらしい！一体何ができる？

引用元：[https://news.ycombinator.com/item?id=43669308](https://news.ycombinator.com/item?id=43669308)

{{<matomeQuote body="GPSみたいに、ATSC 3でもBPSのタイミング信号をこっそり匿名で受信できるといいな。ATSC 3にはDedicated Return Channelがあるけど、マーケターがマジで全部監視したがってるからね。<br>https://www.atsc.org/wp-content/uploads/2024/04/A323-2024-04...<br>“従来の（超高精細な）リニアTVサービスだけじゃ、放送事業を維持できないかもしれない。貴重な電波資源が必要だから。ネットワークのROIを最大化する、賢いメディア配信と柔軟なサービスモデルが超重要”<br>…つまり「金のため」ってことだよねｗ<br>“メディア顧客とサービスプロバイダー、ユーザー同士のインタラクティブ性が重要になるって研究でわかった。だからDedicated Return Channel（DRC）システムを作るよ”" userName="Lammy" createdAt="2025-04-13T03:18:14" color="">}}

{{<matomeQuote body="マジそれな…　ATSC 3.0の新機能でマシな方だよ。<br>BPSとか、マジで良いホームシアター持ってる人向けのHDR以外は、放送局と広告主が得して、消費者はちょっと損する感じ（特に新しいハード/デコーダーが必要になったり、ネット接続が必須になったり！）。" userName="geerlingguy" createdAt="2025-04-13T03:30:55" color="#ff5733">}}

{{<matomeQuote body="同じこと思ってる。ATSC 3.0のDRMとネット接続必須ってことは、OTAテレビの終焉が見えてきたってことだよね。ATSC 4.0は、割引ISPサブスクリプションと、BPSを使ったOTA位置情報チェックがセットになる未来が見えるわ。" userName="1970-01-01" createdAt="2025-04-13T05:14:00" color="#ff5c5c">}}

{{<matomeQuote body="ATSC3 DRMのプロバイダーはGoogle Widevineしかない。<br>ATSC3 DRMのOSはAndroid。<br>Level 1 Widevineに使えるSoCはいくつかある。<br>SoCがハッキングされて、TEEからキーが漏れたら、そのキーを持つすべてのデバイスはLevel 1では信用できなくなる。<br>みんな現状を知っておくべき。" userName="throwing_away" createdAt="2025-04-13T08:04:42" color="#38d3d3">}}

{{<matomeQuote body="NABでATSCの人に、キーが漏れてネットに繋がってない受信機はどうなるのか聞いたら、「受信機にはたくさんの公開鍵が組み込まれてるから、デバイスの寿命までは大丈夫」って言ってた。<br>でもそれって、4Kブルーレイディスクみたいに、DRMのいたちごっこでハードが時代遅れになるってことじゃん…" userName="geerlingguy" createdAt="2025-04-13T13:54:13" color="#ff5c5c">}}

{{<matomeQuote body="メーカーがデバイスの寿命は5年未満、理想は3年未満だって考えて、その期間しかソフト/ファームウェアのサポートをしないって考えると、「デバイスの寿命まで」って言葉の裏には、色んな歪んだインセンティブが隠されてるよね。昔のケーブルTVの独占企業は、Ma Bellの「デバイスの寿命は60年」っていう基準を守ってたけど（Ma Bellも守ってなかったけど）。ATSCは新しい規格を売るのが目的だってわかってるけど、もっと長期的な計画が必要じゃない？" userName="WorldMaker" createdAt="2025-04-14T20:27:56" color="#ff5c5c">}}

{{<matomeQuote body="え、そんなことして、何時間も広告を暗号化して、その間に昔の番組の再放送を数分流すだけなの…？" userName="lxgr" createdAt="2025-04-13T14:34:32" color="">}}

{{<matomeQuote body="イノベーションできないなら、金融化するしかないよね。" userName="sznio" createdAt="2025-04-13T16:37:39" color="">}}

{{<matomeQuote body="でもビジネスモデルは何？　ペイTVを暗号化するのはわかるけど、無料放送TVのポイントは…無料ってことじゃないの？<br>WidevineみたいにDRMがどこでも使えるならまだしも（放送TVではありえないけど）。権利者は、リーチできる市場をぶっ壊してまで、海外での無許可再放送を恐れてるの？" userName="lxgr" createdAt="2025-04-13T16:49:54" color="">}}

{{<matomeQuote body="＞ But what even is the business case here? I get the idea of encrypting pay TV, but isn't the entire point of free broadcast TV that it's... free?<br>＞ビジネスモデルは何？ペイTVを暗号化するのはわかるけど、無料放送TVのポイントは…無料ってことじゃないの？”<br>つまり、監視が目的で、DRMはそのための言い訳だってこと。Total Information Awarenessこそが、Great Workを完成させる道。" userName="Lammy" createdAt="2025-04-14T06:08:04" color="#38d3d3">}}

{{<matomeQuote body="ああ、昔の技術の理屈を思い出して目を細めて考えると、連中は完璧な録音をされたくなかったんだな、保存して共有されるのを。放送ストリームにDRMをかけて、使い捨てにしようとしてるんだ。" userName="tonyarkles" createdAt="2025-04-13T21:42:21" color="">}}

{{<matomeQuote body="＞SoCが侵害されてTEEから鍵が漏洩したら、その鍵を持つすべてのデバイスはLevel 1で信頼できなくなるってこと？<br>それって実際に起きたことあるの？特にタブレットみたいにハックしやすいものじゃなくて、セットトップボックスやブルーレイプレーヤーみたいな「家電」で。" userName="gruez" createdAt="2025-04-13T14:59:52" color="">}}

{{<matomeQuote body="ATSC 3って、誰かが常に「俺はユーザーxyzで、x.y.zにこのチャンネルを見てる」って放送局に送り続けないとダメなの？<br>なんでATSC 3なんか使うんだ？無料じゃないし、なりすましもできないんでしょ？" userName="Alive-in-2025" createdAt="2025-04-13T06:36:52" color="">}}

{{<matomeQuote body="誰も気にしないって。ネットワークはこれを「${network name}のHYPER NEXT GEN 10G TV EXPERIENCE (HNG TV)」とか名付けて、大々的に宣伝して、無料のESPNを提供して、Paramount HBO Supermax Plusを年間0.99ドルで追加して、おまけにまあまあのSmart TVを付ければ、みんな飛びつくよ。アメリカのTVネットワークは、マーケティングに金かけて、オファーをちょっと複雑にすれば、何でも売れるってことの生きた証拠だよ。スポーツを見れれば人は乗り換えるし。過去の放送局の横暴もそうだったし、Smart TVが欠点だらけなのに成功してるのもそれが理由。" userName="TeMPOraL" createdAt="2025-04-13T07:57:19" color="#45d325">}}

{{<matomeQuote body="＞アメリカのTVネットワークは、マーケティングに金かけて、オファーをちょっと複雑にすれば、何でも売れるってことの生きた証拠。スポーツを見れれば人は乗り換える。<br>市場価値はそうじゃないって言ってるけどな。40歳以下の人はほとんどTVなんか気にしないし、ライブスポーツの配信契約（とギャンブル）だけが支えだよ。" userName="lotsofpulp" createdAt="2025-04-13T11:56:17" color="">}}

{{<matomeQuote body="違うって、40歳以下のほとんどはまだTVを見てるよ。ただネットのストリーミングで見てるだけ。NetflixとかApple TVとかAmazonとか。Apple以外は全部広告付きだけどね。" userName="aydyn" createdAt="2025-04-13T16:46:55" color="">}}

{{<matomeQuote body="俺が返信したコメントはTVネットワークのことだよ。地上波TVの話をしてるんだから、CBS（もうすぐSkydance）、NBC（Comcast）、ABC（Disney）、Fox（たぶんDisney）、CW（Nexstar）が売ってるリニア番組のことだと思ったんだ。<br>地上波チャンネルが位置情報を追跡しなくても、地上波自体がオワコンだから意味ないってのがポイント。" userName="lotsofpulp" createdAt="2025-04-13T17:08:33" color="#45d325">}}

{{<matomeQuote body="それって本当に“TV”って言える？VHSやDVDで映画や番組を買うのを“テレビ”って言うのと同じじゃない？" userName="lxgr" createdAt="2025-04-13T18:03:54" color="">}}

{{<matomeQuote body="一部はまだ放送みたいなリニアだよ。Plutoとか、意外と視聴者多いんだよね。リニアTVの復活はストリーミングの流行語にもなってて、大手もリニアTVを実験したり、再統合したりしてる（Plutoが証明したのと、Netflixみたいな一気見やYouTubeみたいな自動再生の行き着く先はリニアだって気づいたから）。" userName="WorldMaker" createdAt="2025-04-14T20:35:04" color="#ff5c5c">}}

{{<matomeQuote body="間違ってないけど、変調方式とコーディング方式のアップグレードも忘れちゃダメだよ。受信状態がギリギリの人は助かるかもしれないし、旧式の8vsbより絶対いい。" userName="threemux" createdAt="2025-04-13T10:41:31" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="うちの地域は電波の端っこで山が多いから、ATSC 1.0だとCBSが受信しにくいんだよね。スポーツ見るには不安定すぎる。数年前にHDHomerun Flex 4Kを買ったんだけど、ATSC 3.0が始まったのと同じ週くらいだったかな。最初は最高だったよ。CBSも問題なく見れたし（ATSC 1.0と同じアンテナから出てたから、変調が良かったんだと思う）。でも1ヶ月ちょっとしてから、急に見れなくなったんだよね。DRMを有効にしたんだって。うちの地域でDRM使ってるの、まだCBSだけだよ。マジ勘弁。<br>前の政権の時に、公共の安全の観点からFCCに何度か問題提起したんだ。うちの地域は停電しやすいから。ひどい天気の時は、ネットも電気も止まるんだよね（ケーブルテレビも見れなくなる）。竜巻の状況をテレビで確認するためにネットが必要って、マジでバカげてるし危険だと思う。残念ながら、当時は何も変わらなかったし、Brendan CarrのFCCのやり方を見てると、これからも何も変わらないだろうね。" userName="pridkett" createdAt="2025-04-13T11:46:37" color="">}}

{{<matomeQuote body="古いHDHomerun持ってるけど、マジで最高！うちの地域じゃ3.0のチャンネルはほとんど暗号化されてるから、アップグレードする気になれないんだよね。" userName="threemux" createdAt="2025-04-13T19:01:04" color="">}}

{{<matomeQuote body="＞“それってつまり『金儲けのためでーす』ってことじゃん(笑)”<br>そんな風に遠回しに言ってるみたいに言うけど、引用した部分には「ネットワークの投資収益率を最大化する」ってハッキリ書いてあるじゃん。普通のビジネス用語だし（あんたの言う「金儲けのため」よりたった一語多いだけだよ！）。<br>もちろん、それが良いことか悪いことかは別として、遠回しに言ってるわけじゃないってことを指摘しただけ。" userName="swores" createdAt="2025-04-13T10:13:53" color="">}}

{{<matomeQuote body="“Return on investment”は、解釈しにくくするために難しい言葉を使ってるわけじゃなくて、英語圏の国では標準的なビジネス用語だよ。<br>それが分かりにくく感じるのは、単に基本的なビジネス用語に慣れてないだけ。恥じることじゃないけどね。ビジネスの授業を受けたことがないとか、ビジネスに関わったことがなければ、知らなくても当然だよ。でも、そういう言葉を使う人が何かを隠そうとしてるわけじゃないよ。<br>追記：当然だけど、HNでもよく見かけるよ。<br>https://hn.algolia.com/?q=return+on+investment<br>https://hn.algolia.com/?q=ROI" userName="swores" createdAt="2025-04-13T20:56:33" color="#ff33a1">}}

{{<matomeQuote body="わざとポイントを外してるんじゃなくて、ただの嫌な奴じゃないなら言うけど、ほとんどの人はROIって言葉を聞いたことがあると思うよ。でも、双方向のデータ通信がどうやって金になるのか理解してる人は少ないと思う。ましてや、過去100年のテレビ放送にはなかった、視聴者のプライバシーを侵害して視聴習慣をスパイすることになると理解してる人はまずいないだろうね。" userName="Lammy" createdAt="2025-04-13T21:15:42" color="#38d3d3">}}

{{<matomeQuote body="BPSってリターンチャネルを強化するためだったんだね。広告主は、何を見てるかだけじゃなくて、どこにいるかも把握できるんだ。" userName="xattt" createdAt="2025-04-13T10:58:39" color="#785bff">}}

{{<matomeQuote body="Wi-Fiを使った位置情報サービスは前からあるし、かなり正確だよ。だから、もしテレビや受信機のメーカーが、広告主に位置情報を開示することを選んだら（自分たちの欲のためか、ATSC 3.0のDRMキーを受け取るために必要だからかは別として）、別に問題なくできるよ。" userName="lxgr" createdAt="2025-04-13T16:57:00" color="">}}

{{<matomeQuote body="ちょっと待って、この「専用リターンチャネル」って、テレビが広告を見てるってことを放送局に送り返すためだけにあるの？ATSC 3.0ってIPバックホールを使うと思ってたんだけど。本当に放送局に送り返すなんて…現実的じゃないよね。<br>ATSC 1.0ですら受信状態が悪かったことを思い出してよ。アナログのNTSCと違って、遠くのゴミみたいな放送局からでも、何かしら見れたのに。そんな不安定なチャンネルを双方向にしようとしてるんだよ？リターンチャネルの機能は全部オプションだと良いけど、もっと多くのチャンネルで放送する放送局が増えない限り、うまくいくはずがない。それってLTEを再発明してるだけじゃん。" userName="kmeisthax" createdAt="2025-04-13T05:37:49" color="#ff5733">}}

{{<matomeQuote body="皮肉なことに、NTSCには冗長性がないんだよね。情報の階層があって、それが徐々に劣化して、最終的には白黒の映像と音声がなくなるって感じ。ATSCには、デジタルビットストリームに2種類の前方誤り訂正があるんだ。でも問題は、NTSCと同じチャンネル割り当てを使ってるのに、NTSCよりもずっと多くの情報を配信しなきゃいけないこと。それに、実際のデジタル変調も受信機がキャプチャするのに理想的じゃないんだ。" userName="timewizard" createdAt="2025-04-13T06:01:02" color="">}}

{{<matomeQuote body="普通に考えたら、一般的なオプションは組み込みのLTE/5Gモデムを使ったIPバックホールベースになるんじゃないかな。別の通信方式があるのは、LTE/5Gとか他のIP通信が届かない超田舎向けの保険みたいなもんでしょ。特にそういう場所では、放送TVのほうが生き残る可能性が高いし。" userName="mindslight" createdAt="2025-04-13T17:37:08" color="#ff5c5c">}}

{{<matomeQuote body="俺もそう思う。利用状況の報告スキームとデータ構造はここで見れるよ: <br>https://www.atsc.org/wp-content/uploads/2024/04/A333-2024-04...<br>消費情報をキャプチャする基本レコードは、Consumption Data Unit (CDU)って呼ばれてる。ストリーミングA/Vチャンネルの場合、各CDUはサービスがアクセスされたレポート間隔を識別する。CDUには、サービスID、サービスアクセス開始時間、サービスアクセス終了時間が入ってる。アプリがアクティブな場合は、アプリID、アプリがアクティブになった時間、アプリがアクティブじゃなくなった時間も記録される。CDUに記録されるサービスイベントは、10秒以上のすべての利用間隔に対応し、それより短い利用間隔にも対応する場合がある。アプリのアクティビティは5秒以上のすべての利用間隔に対応するみたい。精度は1秒以内だって。ペイロードスキーマは4651バイトのJSON構造だから、レスポンスペイロードも同じくらいのサイズになると思う。10秒単位だと、だいたい0.5キロバイト/秒のデータレートになるね。DRCスペックによると、DRCメッセージの最大ペイロードサイズは2048バイトみたい。<br>DVRからの再生も報告されるらしいよ:<br>“Component.SourceDeliveryPath – Delivery path used for or the source of the content component indicated by the parent Component element.<br>SourceDeliveryPath.type –<br>0 – Broadcast delivery (content component is delivered by broadcast)<br>1 – Broadband delivery (content component is delivered directly by broadband by broadcaster)<br>2 – Time-shift-buffer source (content source is local time shift buffer)<br>3 – Hard-drive source (content source is local hard drive)<br>4 – Delivery via direct connection (HDMI)<br>5 – Alternate IP delivery (content component is delivered via intermediary)”" userName="Lammy" createdAt="2025-04-13T20:29:35" color="#45d325">}}

{{<matomeQuote body="＞5 – Alternate IP delivery (content component is delivered via intermediary)<br>完全に被害妄想的な陰謀論だけど、これって無許可の再放送業者を捕まえるための方法みたいに聞こえない？" userName="kmeisthax" createdAt="2025-04-13T22:38:26" color="">}}

{{<matomeQuote body="それとは全く関係ないよ。OPはスペックに利用状況のモニタリングが組み込まれてることに文句言ってるんだ。5Gは、4Gよりも多くのデバイスを接続できるように、IoT向けに非常に公然とした目標を持って設計されたんだよ。ユーザーに害を及ぼすような予期せぬことは何もないし、4GもすでにIoTに使われてたから、別に新しいことじゃない。" userName="arghwhat" createdAt="2025-04-13T09:13:05" color="#38d3d3">}}

{{<matomeQuote body="EEがイギリスで5Gを立ち上げた時、”A real crowd pleaser”って大きく書かれた全面広告を出してたんだ。あれは久しぶりに最高の広告の一つだったよ。5Gの技術的な利点を知ってれば、二重の意味があるんだよね。90年代のブリティッシュダンスミュージックを知ってれば、さらにユーモラスな二重の意味があって、その通信会社（The ShamenのEbenezer Goodeへの間接的な言及）を宣伝してたんだ。" userName="timthorn" createdAt="2025-04-13T10:10:07" color="#ff5c5c">}}

{{<matomeQuote body="＞an oblique reference to The Shamen's Ebenezer Goode<br>それ全然思いつかなかった。Rich West (Mr. C)は友達だし、その曲もよく知ってるのに。言われてみれば確かにそうだね。かなり間接的だけど。" userName="louthy" createdAt="2025-04-13T17:32:08" color="">}}

{{<matomeQuote body="ざっと読んだだけだから見落としたかもしれないけど、リターンチャンネルにはどんな物理的な方法を使う予定なの？" userName="giantg2" createdAt="2025-04-13T13:00:53" color="">}}

{{<matomeQuote body="このブログ記事と動画は、NABの展示会場で急いで作ったものなんだ。NISTとかSinclair、Avateqの人たちと話してるから、フォローアップで色々話せると思うよ。今は実験段階で、タワーは全部で6つだけ（NABの時は5つ、ネバダには1つだけ）。今はタイミング合わせだけで、まだナビゲーションはできないんだ。<br>最終的な計画は、ATSC 3.0の普及次第だけど、放送局にタイミング装置を追加してもらって、タイミング用のメッシュネットワークを構築すること。そうすれば、GPSに100％頼らずに済むんだ（時間の転送は、ダークファイバーとか、地上と衛星の間で直接できる）。BPSのメリットは、建物内でのカバレッジ、見通しが良い場所が多いこと、GPSよりも妨害に強いこと。展示会場のデモでは、eLoranを使ってネバダからブラックマウンテンの送信施設に時間を配信してた。GPSに頼らない方法を示してたんだ（今のeLoranはGPSから時間をもらってるけどね）。" userName="geerlingguy" createdAt="2025-04-13T02:16:22" color="">}}

{{<matomeQuote body="ATSC 3のチューナーを買ったんだけど、OTAテレビにがっかりしちゃった。DRMが使われるようになって、さらに悪化してるし。チャンネルあたりのビットレートが2倍くらいになって、ビデオコーデックも新しくなったから、もっと画質が良くなると思ったんだけどな。1080pのソースがプログレッシブだったら良かったのに。MythTVとの連携もイマイチだし、改善される気配もないし。ATSC 1.0が普及するまで時間がかかったから、今回もそうなるかもね。OTA放送はもうダメかも。" userName="toast0" createdAt="2025-04-13T04:30:03" color="">}}

{{<matomeQuote body="＞展示会場でのデモでは、eLoranを使ってネバダからブラックマウンテンの送信施設に時間を配信してた。GPSに頼らない方法を示してたんだ（今のeLoranはGPSから時間をもらってるけどね）”。ナビゲーションとタイミングには、多様なオプションが必要だって、多くの人が言ってるよ。中国はGNSS（BeiDouとかLEOの計画もある）に加えて、地上ナビゲーション（eLoran）もあるし、正確なタイミングのための光ファイバーネットワークもある。ロシアにはLoranみたいなCHAYKAってのがある。" userName="throw0101d" createdAt="2025-04-13T11:34:16" color="#ff5733">}}

{{<matomeQuote body="電気系統もタイミングに使えるよ。ヨーロッパにはDCF77ってのがあって、タイミングの基準だけじゃなくて、周波数の基準にもなるんだ。" userName="mschuster91" createdAt="2025-04-13T15:56:38" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="アメリカのATSC 3ってなんでこんなにダメなの？韓国はもう10年も前から導入してるのに。ブラジルのTV 3.0もATSC 3.0を使ってるけど、あらゆる面でずっと優れてる。アメリカ人はケーブルとかNetflixばっかり見てて、無料の地上波テレビは見ないの？" userName="ksec" createdAt="2025-04-13T13:16:01" color="">}}

{{<matomeQuote body="放送テレビの近代化は、敵だらけなんだよ。北には、ほとんどの人が満足してる古い技術がある。南には、ストリーミングサービスとかyoutubeとかケーブルがある。東には、特許だらけの技術の上に「次世代」技術を構築した業界の愚かな決定がある。西には、4Kで広告を見せても、1080pと変わらないって現実がある。だから、みんなやる気がないんだ。" userName="michaelt" createdAt="2025-04-13T13:49:09" color="#ff5733">}}

{{<matomeQuote body="＞放送局の品質を上げるとコストがかかるのに、収入が増えないから、誰もやろうとしない”。競争がちゃんと機能してれば、「もっと品質の高い放送局を選ぶ」ってことになるんだけどね。" userName="ryandrake" createdAt="2025-04-13T17:06:28" color="">}}

{{<matomeQuote body="そうそう。衛星放送もケーブルテレビみたいに、基本チャンネルと有料チャンネルがあるんだよね。基本チャンネルには地元の放送局も入ってる。あんまり人気ないけど、YouTube TVみたいにネットで同じようなサービスもあるよ。全国放送のネットワークはネットでも見れるし、HuluとかParamount+もある。Netflix以外にもAmazon Prime、AppleTV+、Disney+、Maxとか色々あるし。スポーツ中継はケーブルテレビとか衛星放送の強みだったけど、今はネットでも見れるんじゃないかな（詳しくないけど）。これは2022年のデータ。<br>https://www.nielsen.com/insights/2022/broadband-only-tv-home..." userName="extra88" createdAt="2025-04-13T15:19:04" color="">}}

{{<matomeQuote body="ケーブルテレビのインフラは、実はインターネット回線でもあるんだよね。うちもそうだけど、ケーブルテレビ会社にインターネット代を払ってる。テレビは見てないけど、ネットだけよりテレビ込みの方が安いから仕方なく契約してる。" userName="extra88" createdAt="2025-04-13T15:24:00" color="#ff33a1">}}

{{<matomeQuote body="ケーブルテレビの契約者も減ってるらしいよ。<br>https://evoca.tv/cord-cutting-statistics/" userName="p_ing" createdAt="2025-04-13T14:00:07" color="">}}

{{<matomeQuote body="地デジ化してからテレビがマジで見れなくなって、見るのやめた人も多いと思うよ。アンテナ立てるのが面倒くさいし、広告も多いし。2000年代初頭に地デジになった時、ミネアポリスから40マイルくらいの所に住んでたんだけど、アンテナとかブースターに何百ドルも使ったのに全然安定しなかった。2008年にミネアポリスの近くに引っ越してきてまた試したけどダメだったから、Netflix見ることにした。都会の人はケーブルテレビがあるし、田舎の人はテレビ見れないし、今のテレビシステムはマジで終わってる。" userName="donatj" createdAt="2025-04-13T17:17:41" color="">}}

{{<matomeQuote body="＞地デジ化してからテレビがマジで見れなくなって、見るのやめた人も多いと思うよ。<br>え、マジで？そんな話初めて聞いたんだけど。みんな喜んでると思ってた。満足度ってどうなんだろう？自分も何回か使ったけど、安いアンテナでも普通に見れたよ。ミネアポリスだけ？<br>＞都会の人はケーブルテレビがある。<br>ケーブルテレビは高いから、無料の地デジの方が良いって人もいるでしょ。それに、地デジの方がプライバシーも守れるし。" userName="mmooss" createdAt="2025-04-13T17:55:44" color="#ff5733">}}

{{<matomeQuote body="＞自分も何回か使ったけど、安いアンテナでも普通に見れたよ。ミネアポリスだけ？<br>ミネアポリスの事は知らないけど、40マイルは結構遠いから難しいかもね。カナダの自分の所は、電波塔に近いんだけど、丘の陰になってて電波が届きにくいんだよね。だから、もっと遠い方が良く見えるかも。" userName="Marsymars" createdAt="2025-04-14T01:22:07" color="">}}

{{<matomeQuote body="ミネアポリスは川の谷にあるんだよね。飛行機から見ると平らに見えるけど、地面は結構起伏があって、アンテナの高さが重要なんだよ。Apple Mapsでミネアポリスから35-40マイルくらいの場所まで歩くルートを検索してみて。そうすると、標高の変化がわかるよ。" userName="Kon-Peki" createdAt="2025-04-14T15:34:44" color="">}}

{{<matomeQuote body="シカゴのダウンタウンに住んでるけど、電波塔が見えなくてもたくさんチャンネルが見れるよ。でも、El（高架鉄道）が通ると映らなくなる。" userName="cozzyd" createdAt="2025-04-14T01:26:33" color="">}}

{{<matomeQuote body="記事の中でBPSが何の略か説明してないよね？全部読んだけど書いてなかったと思う。自分で調べればわかるけど、こういう分かりにくい事柄についての記事なら、略語の説明は必要だと思う。<br>追記：Broadcast Positioning Systemの略だよ。" userName="lsaferite" createdAt="2025-04-13T13:25:46" color="#ff33a1">}}

{{<matomeQuote body="GPSみたいに位置情報を使って時間を割り出すってどういうこと？GPSだと位置と時間は４つの未知数(x,y,z,t)がある方程式の一つの解になるじゃん。位置情報がないと、自分と送信機との間の時間遅延がわからなくない？" userName="The_Double" createdAt="2025-04-13T05:49:41" color="">}}

{{<matomeQuote body="送信機が固定された地上にあるってことじゃない？" userName="fnordpiglet" createdAt="2025-04-13T07:34:01" color="">}}

{{<matomeQuote body="自分の位置を教えて、信号の飛行時間を調整するようにクロックを設定するってこと？" userName="michaelt" createdAt="2025-04-13T09:10:00" color="">}}

{{<matomeQuote body="違うよ。複数のタワーの位置を教えて、そこから信号を受信するんだ。そうすれば、x, y, z, t の一意な解を計算できるんだ。" userName="rocqua" createdAt="2025-04-13T09:23:45" color="#45d325">}}

{{<matomeQuote body="でも、さっきのコメントで、単一のタワーで時間をデモしてたって言ってなかったっけ？" userName="brookst" createdAt="2025-04-13T13:36:21" color="">}}

{{<matomeQuote body="単一のタワーで時間を取得できるけど、位置情報は無理だよ。" userName="mcculley" createdAt="2025-04-13T17:35:02" color="#38d3d3">}}

{{<matomeQuote body="信号の飛行時間をどうやって知るの？タワーが自分の座標を送って、クライアントはGPSを使うの？" userName="brookst" createdAt="2025-04-13T23:17:13" color="">}}

{{<matomeQuote body="たぶん、精度を示すために手動で入力したんじゃないかな。<br>もしPPSの代わりに10Mhzのリファレンスを出力すれば、近くのシステムのサンプルを同期させるのにかなり使えると思うよ。その場合、時間自体は気にしなくて、周波数精度が重要になるね。" userName="rocqua" createdAt="2025-04-14T07:28:00" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="衛星も、時間がわかれば既知の位置にあるよ。" userName="namibj" createdAt="2025-04-13T08:24:41" color="">}}

{{<matomeQuote body="宇宙ベースのGNSSの代わりに、ハイパワーで認証済みの代替手段がマジで必要だよね。ジャミングとかスプーフィング事件が多発してるし。<br>＞本当の意味で”歴史の終わり”の瞬間、アメリカとかNATOのメンバーは、地上システムの運用をやめちゃったんだよね（地上システムは送信電力が高いからジャミングされにくいのに）。Omegaは1990年代後半、Loran-Cは2010年代初頭に。ロシアは同等のシステムを維持してるし、中国は去年eLoranネットワークを完成させたし。<br>FAAが地上VOR/DME局ネットワークを縮小したこともあって… GPSが使えない時に飛行機が航行できるやつね…<br>GPSのジャミング、もっとヤバいのはスプーフィングは、そのうち国家じゃない組織とか、もっと小さいグループ、最終的には個人でもできるようになるだろうね。そうなると、民間航空にとってヤバいことになるから、早く対策しないと。" userName="lxgr" createdAt="2025-04-13T03:43:45" color="#45d325">}}

{{<matomeQuote body="テキサス大学の研究グループが10年以上前に、自動操縦のUAVのGPSを偽装して、好きな場所に強制着陸させられるって実証してたんだってよ。ガレージハッカーレベルでももうとっくにできることらしいぜ。" userName="jeffbee" createdAt="2025-04-13T05:14:30" color="">}}

{{<matomeQuote body="これからはUAVも信号がどこから来てるか追跡する必要があるかもね。「あれ、この信号、空から来てないじゃん。一体何事？」って。" userName="Scoundreller" createdAt="2025-04-13T08:37:51" color="">}}

{{<matomeQuote body="dGPS使ってるともっと面倒になるかも。それに、電波の到来方向を知るには少なくともアンテナが2つ必要だよね。starlinkみたいに、予想される衛星の方向にビームフォーミングするのは結構効果的みたいだけど、フェーズドアレイとビームフォーマーが必要になるね。" userName="touisteur" createdAt="2025-04-13T09:39:35" color="">}}

{{<matomeQuote body="ジャマーにはマジで勝てないって。電力で張り合えるかもしれないけど、止める方法なんてないよ。航空機や軍事のポジショニングは、もっと地図とか推測航法にシフトしてきてるから、GPS妨害の効果も薄れてきてるけどね。" userName="typewithrhythm" createdAt="2025-04-13T06:12:54" color="#785bff">}}

{{<matomeQuote body="推測航法が不正確だったのは、時計とベクトルの精度が悪かったからなんだよね。でも、時計やジャイロスコープの技術がめっちゃ進歩したから（どっちも光技術のおかげ）、推測航法がまた注目されてるのも納得だわ。" userName="zinekeller" createdAt="2025-04-13T06:28:42" color="#ff33a1">}}

{{<matomeQuote body="推測航法は、風の影響も受けて精度が悪くなるんだよね。出発前に最高の予報があっても、5mph以上ズレることなんてザラにあるし。3時間後には15マイルもズレちゃうから、航空用途には全然使えないレベル。" userName="cameldrv" createdAt="2025-04-13T06:55:34" color="">}}

{{<matomeQuote body="推測航法って言うと、方位と時間だけを頼りにするイメージだけど、高性能なINSがあれば風の影響は受けないよ。ジャイロスコープとかセンサーの精度だけが問題。今のシステムだと、1時間に0.5マイルくらいズレるのが普通。しかも、それは普通の市販品レベルの話で、軍用ならもっと高性能なやつがあるはず。" userName="t0mas88" createdAt="2025-04-13T07:45:19" color="#ff5733">}}

{{<matomeQuote body="t0mas88さんが言ってるように、航空機とか船の速度を測るんじゃなくて、ジャイロスコープ（外部からの影響を受けにくい）を使うんだよね。で、時計もジャイロスコープもめっちゃ進化してるの（時計はセシウム原子時計よりもすごいし、ジャイロも機械式より光ジャイロの方が断然いい）。" userName="zinekeller" createdAt="2025-04-13T09:48:27" color="#ff5733">}}

{{<matomeQuote body="ポータブルな時計は、据え置き型のセシウム時計より性能は良くないよ。セシウム時計より高性能な光時計は、持ち運びできないし。" userName="fanf2" createdAt="2025-04-13T14:16:39" color="">}}

{{<matomeQuote body="スマホみたいな携帯性はないけど、(https://english.kyodonews.net/news/2025/03/c0945eb14bb6-japa...)で公開されてるように、船とか潜水艦に搭載できるレベルにはなってるみたいだよ（もっと小型化された機密バージョンがあってもおかしくないけどね）。" userName="zinekeller" createdAt="2025-04-14T04:47:20" color="#ff5c5c">}}

{{<matomeQuote body="もし間違ってたら訂正してほしいんだけど、妨害機って簡単に物理的に破壊できるんじゃないかな？ミサイルで妨害電波を追えばいいだけじゃん？" userName="plextoria" createdAt="2025-04-13T07:06:45" color="">}}

{{<matomeQuote body="このアプローチの明らかな問題点は、ミサイルで外国の妨害機を破壊するのは戦争行為だってことだよ。" userName="petre" createdAt="2025-04-13T07:57:27" color="#ff33a1">}}

{{<matomeQuote body="妨害電波を出すのも戦争行為じゃん。" userName="bluGill" createdAt="2025-04-13T16:54:10" color="">}}

{{<matomeQuote body="ミサイルって高いじゃん。妨害機は安価なドローンが届かないほど遠くにあるかもしれないし。妨害機はよく移動するし、ミサイルはうまく操縦できないことが多い。妨害機はよく電源を切るし、ミサイルが検知されたらジャマーをオフにして移動する。多くの場合、複数のジャマーを稼働させているから、一つオフにしても意味がないんだよね。" userName="bluGill" createdAt="2025-04-13T16:57:53" color="#785bff">}}

{{<matomeQuote body="AGM-88Eに追加する面白い機能になりそう。" userName="firesteelrain" createdAt="2025-04-13T08:01:51" color="">}}

{{<matomeQuote body="それに、航空機は地球の重力マップを使える。センサーが十分に正確になり、重力の強さのわずかな変化を検知して、航空機の位置を数百メートル以内に特定できるようになったんだ。" userName="fpoling" createdAt="2025-04-13T07:38:58" color="">}}

{{<matomeQuote body="相手より多くのスペクトルを使ったり、情報レートを犠牲にしたりする覚悟があれば、妨害を打ち破ることができるよ。" userName="bob1029" createdAt="2025-04-13T11:30:14" color="#45d325">}}

{{<matomeQuote body="それはそうだけど、宇宙に配備されたシステムや、（厳しく規制されている）航空機の<br>アビオニクス部品は非常に頻繁にアップグレードされるものではないし、他の何十億もの民間受信機については言うまでもないから、どちらも非常に難しい。" userName="lxgr" createdAt="2025-04-13T14:24:58" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
