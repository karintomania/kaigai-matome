+++
date = '2025-05-14T00:00:00'
months = '2025/05'
draft = false
title = 'SMS認証は危険なだけじゃない 山奥では使えないってホント？'
tags = ["セキュリティ", "認証", "SMS", "技術", "課題"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> SMS認証は危険なだけじゃない 山奥では使えないってホント？

引用元：[https://news.ycombinator.com/item?id=43984297](https://news.ycombinator.com/item?id=43984297)




{{<matomeQuote body="＞彼女が使える他の選択肢として<br>＞     その携帯番号を、wifi経由でショートコードからSMSを受け取れるVOIPプロバイダーにMNPする<br>それは基本的にすごく良い解決策だよね－でも、セキュリティ上の理由でVOIP番号にSMS-OTPコードを送らない会社とか、その番号がちゃんと彼女名義で登録されてることを要求するような会社（結構多くの小規模キャリアがそうしてないっぽいけど）を相手にしてる場合は別だけど。<br>そういうの、マジで違法になれば良いのにって思うわ。電話番号は電話番号だろ。<br>＞彼女はスマホでwifi callingをオンにした。友達や家族からはSMSを受け取れるようになったけど、2FAコードは相変わらず来なかった。<br>へぇ、IMS経由のSMSって、送信者からは区別できないと思ってたんだけどね。でもプロトコル全体が超ハックっぽいこと考えたら、別に驚かないけど。" userName="lxgr" createdAt="2025/05/14 14:20:44" color="">}}




{{<matomeQuote body="SMS以外の方法で2FAを許さない会社が、VOIPには送らないっていうのは、ほんと абсурд だよね。たぶんSMS配信サービスがまとめてブロックしてるのかもしれないけど、それでもイラつく。<br>俺が使ってる銀行が全部SMS 2FA必須なのに、なんかどうでもいいサービスはアプリ対応してたりするの、マジで бред だわ。" userName="jjice" createdAt="2025/05/14 14:49:14" color="">}}




{{<matomeQuote body="俺が使ってる（USの）銀行がどこも汎用TOTPをサポートしてないの、マジで我慢できない。TOTPの方がセキュアだし、もしスマホ壊れたり盗まれたりしてもバックアップからの復旧がもっと楽なのに。<br>これは弁解の余地なし。" userName="unethical_ban" createdAt="2025/05/14 15:00:17" color="">}}




{{<matomeQuote body="俺、Citi と Discover を Google Voice の番号で何年も使ってるよ。もしかしたら古くからのユーザーだからかな？" userName="BenjiWiebe" createdAt="2025/05/14 15:08:58" color="">}}




{{<matomeQuote body="EUからの意見だけどね。補足すると：<br>金融指令のPSD2［1］では、SMSを2FAとして使うのは、その番号がKYC済みだからこそ許されてるんだ（EUでは匿名SIMはもうダメ）。<br>あと、2FAってのは受け取るOTPコードのことじゃないってことにも注意ね。そのコードは「君が持ってるもの」を証明するためのProxyにすぎない。その「持ってるもの」ってのが電話番号で、それが個人の身元に紐付いてるわけ。<br>これ何回もコメントしてるけど、今のところSMSだけが、大規模に（全年齢層、全場所、全てのモバイルデバイスに対応して）簡単に展開できる唯一の2FA方法なんだよ。<br>［1］ https：//en．wikipedia．org/wiki/Payment_Services_Directive" userName="fasteo" createdAt="2025/05/14 18:09:25" color="#ff5733">}}




{{<matomeQuote body="これはたぶんコンプライアンス関連じゃないかな。俺にとってTOTPは「持ってるもの」じゃなくて、パスワードマネージャーに放り込んで全デバイスに同期する「知ってること」になっちゃうし。<br>俺もそれはそう思うけど、たぶん銀行側の理屈はそれだと思うよ。" userName="_bin_" createdAt="2025/05/14 15:08:30" color="">}}




{{<matomeQuote body="＞SMSが大規模に簡単に展開できる唯一の2FA方法<br>違う違う違う違う、絶対に違う！ そんな証拠ゼロだろ。ただセキュリティ対策してますよーっていうフリを、一番ラクな方法でやってるだけ。" userName="exabrial" createdAt="2025/05/14 19:06:02" color="">}}




{{<matomeQuote body="たぶん、そういう会社の役員たちは「Google＝良い」とか思ってるんじゃない？" userName="ravenstine" createdAt="2025/05/14 15:11:41" color="">}}




{{<matomeQuote body="＞彼女はスマホでwifi callingをオンにした。友達や家族からはSMSを受け取れるようになったけど、2FAコードは相変わらず来なかった。<br>全然別物だよ、それは。片方はP2P、もう片方はA2Pだから。" userName="fasteo" createdAt="2025/05/14 18:11:05" color="">}}




{{<matomeQuote body="＞EUでは匿名SIMはもうダメ<br>あぁ。だからイタリアで現地のSIM買おうとした時、私の身元情報色々聞かれたんだね。納得したわ。" userName="lisper" createdAt="2025/05/14 18:17:37" color="">}}




{{<matomeQuote body="Google Voice（Grand Centralの頃から持ってる）は多くの会社のSMS 2FAに使えなかったんだけど、Google Fiの番号にしたら使えるようになったんだ。<br>たぶん、彼らがチェックするデータベースのなんかフラグが変わったんだろうね。" userName="terinjokes" createdAt="2025/05/14 15:21:23" color="">}}




{{<matomeQuote body="それ気になってたんだよね。Google Fi使ってるからGoogle Voice取れないんだけど、明らかに同じ番号帯使ってるのに。<br>FiになるとT-mobileにポートされるのかな、自社のCLECじゃなくて。" userName="Suppafly" createdAt="2025/05/14 15:44:29" color="">}}




{{<matomeQuote body="皮肉なことに、これってプリペイドSIMの話なんだよね。<br>結果、EU諸国では月ごとの後払いプランの方が簡単で、KYC（本人確認）が全く要らないことすらあるんだ。" userName="lxgr" createdAt="2025/05/14 19:33:02" color="#785bff">}}




{{<matomeQuote body="じゃあさ、実際に大規模に簡単に使える方法って何があるわけ？" userName="genevra" createdAt="2025/05/14 22:30:58" color="">}}




{{<matomeQuote body="WiFi Callingって、ただWiFi経由で普通の電話が使えるだけだと思ってた。<br>私の場合、2FAコードとかも普通に届くみたいなんだけどな。" userName="caseyy" createdAt="2025/05/14 18:26:31" color="">}}




{{<matomeQuote body="”port her cellphone number to a VOIP provider that does support receiving SMS from shortcodes over wifi”とか”... unless the company she’s dealing with is one of those that don’t send SMS-OTP codes to VoIP numbers for seCuRiTy reasons ...”って話、そうだね。<br>実際、これってすごく悪い考えで、たとえ”short codes”（銀行とかがコードを送ってくる変な短い番号）からSMSを受け取れるVOIPプロバイダを見つけたとしても、それは一時的な抜け穴で、いずれ”fixed”されちゃう。<br>覚えておいて：これらの措置は全部、あなたのセキュリティのためでも、あなたを助けるためでもない。<br>これらは全部、しつこい詐欺やスパムのトラフィックを遅らせるための、ただの砂。<br>あなたの本物の携帯電話番号は、これらのプロバイダがこの問題の解決策がない代わりに頼ってる”proof of work”なんだよ。" userName="rsync" createdAt="2025/05/14 19:09:04" color="#ff33a1">}}




{{<matomeQuote body="TOTPはSIMスワップ対策にはなるけど、もっとずっとよくあるフィッシングには負けちゃうんだ。<br>セキュリティはほんのちょっとだけ良くなるくらい。" userName="UncleMeat" createdAt="2025/05/15 13:37:23" color="#ff5733">}}




{{<matomeQuote body="SMS送ってる側は、Google Voiceと他のVoIPプロバイダの違いを実際には区別できないと思うな。" userName="lxgr" createdAt="2025/05/14 19:24:35" color="">}}




{{<matomeQuote body="問題はSMSの番号の種類で差別されることじゃなくて、SMS自体がもう完全に違法になるべきだってことだよ。" userName="exabrial" createdAt="2025/05/14 19:03:54" color="">}}




{{<matomeQuote body="ちなみに、Symantec VIPは中身はTOTPで、ちょっとハックすればシードを取り出せるんだ。<br>アメリカには、それを採用してる金融機関が少なくとも一つあるよ。" userName="fragmede" createdAt="2025/05/14 18:50:12" color="#ff5733">}}




{{<matomeQuote body="うちのBrokerageはTOTP使えるけど、銀行はダメなんだよね。銀行はYubikeyみたいなのは使えるみたいだけどさ。" userName="fortran77" createdAt="2025/05/14 15:55:34" color="">}}




{{<matomeQuote body="同じ理由ならSMSを”自分が持ってるもの”としてサポートする意味ないよね。iMessageとか他のやり方だと、SMSってクラウドとかPCに簡単に広がっちゃうじゃん（パスワードマネージャーよりアクセスしやすい所に）。まあ、古いやり方とか”これで十分だろ”って理由なんだろうけどさ。個人的にはTOTPトークンはパスワードマネージャーに入れないで、専用のアプリにしてるんだ。パスワードマネージャーがやられちゃった時のためにね。" userName="throitallaway" createdAt="2025/05/14 16:37:48" color="#38d3d3">}}




{{<matomeQuote body="いつからこうなったの？俺、この10年、ヨーロッパ中で現地のプリペイドSIM使ってたけど、最近はあんまりやってないんだよね。" userName="stogot" createdAt="2025/05/15 00:15:33" color="">}}




{{<matomeQuote body="＞ anon SIM are no longer allowed in the EU<br>Surel IrelandはまだOKなんじゃないの？ダメでも、NIから手に入れるのは簡単だよ。" userName="dfawcus" createdAt="2025/05/14 18:36:03" color="">}}




{{<matomeQuote body="VanguardはYubikeysに対応してるよ。俺が使ってる銀行（～8 of them so far）でSMS以外に対応してるところはまだないけどね。" userName="throitallaway" createdAt="2025/05/14 16:38:26" color="#ff33a1">}}




{{<matomeQuote body="＞ IMS上のSMSが透過的かと思ったけど、プロトコルのハックっぷりを見たら驚かないね。多分SMS APIの問題。電話がオンラインか関係なく送るけど、VonageやTwilioみたいなAPIで”到達可能性”をチェックするんだ。でも完璧じゃない。コスト削減らしいけど、検証済み番号にはおかしいよ。" userName="zinekeller" createdAt="2025/05/14 15:59:49" color="#785bff">}}




{{<matomeQuote body="EUでもまだ匿名SIMが許可されてる国はあるよ： https://prepaid-data-sim-card.fandom.com/wiki/Registration_P..." userName="watermelon0" createdAt="2025/05/14 18:36:49" color="#ff5733">}}




{{<matomeQuote body="でもさ、バックアップや復元が簡単だし、電話がなくてもアクセスできるし、電波なくても使えるんだよ。" userName="unethical_ban" createdAt="2025/05/15 14:16:37" color="">}}




{{<matomeQuote body="SMS 2FAの”theater”って何？有効にしてないよりはマシでしょ？" userName="kgen" createdAt="2025/05/14 19:40:03" color="">}}




{{<matomeQuote body="俺も同じことしてるよ。まあ、2FAの本来の趣旨とはちょっと違うけど、それでもっと安全だって信じてるんだ。要は2つ目のパスワードみたいなもんで、1回通信中に傍受されただけじゃ、将来的にログインを繰り返すことはできないんだよ。" userName="connicpu" createdAt="2025/05/14 15:30:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="その制限、もうなくなったんだって。<br>FiとVoice、同じアカウントで持てるようになったらしいよ。" userName="pxeboot" createdAt="2025/05/14 17:25:07" color="#ff33a1">}}




{{<matomeQuote body="彼女にはmicrocellかfemtocellが必要だよ。<br>プロバイダに相談して、家や職場の電波が悪いって説明すれば、ネット回線に繋いで使う無料のセルラーAPを送ってくれるはず。<br>光回線とかがあるなら、電波増幅するだけのタワー型ブースターじゃなくて、RJ-45入力とGPSアンテナが付いてるやつが必要。近くのタワーから何マイルも離れてて山奥ならね。<br>店で働いてるんだけど、金属の壁で川沿いだから圏外なんだ。<br>前は坂を上って電話してたけど、客とか従業員がそれぞれのプロバイダ（ATT、Verizon、T-Mobile）に電話したら、全部femtocell送ってくれたんだ。<br>おかげで、みんなのスマホはタワーじゃなくてうちのISP経由でデータ通信してるなんて気づかないくらい、普通に使えるようになったよ。2FAコードもMVNOもね。<br>MVNOじゃなくて、Verizonの直契約に切り替えないとダメかもだけど。" userName="LeifCarrotson" createdAt="2025/05/14 15:00:28" color="#ff5733">}}




{{<matomeQuote body="T-Mobileはもうそういう機器は提供してないみたいだよ。<br>https://www.t-mobile.com/support/coverage/4g-lte-cellspot-se..." userName="kmoser" createdAt="2025/05/14 15:21:54" color="">}}




{{<matomeQuote body="T-Mobileは必要ないのかもね。<br>俺、かれこれもう10年近くT-MobileのWiFi calling使ってるけど、ばっちり動くよ。ショートコードのSMSも受け取れるしね。<br>だから、T-Mobileでfemtocell使う必要性って分からないんだ。<br>だからこそ、今回の記事（TFA）読んで、WiFiが万能じゃないケースがあるって知って驚いたんだよね。" userName="mikestew" createdAt="2025/05/14 17:56:09" color="">}}




{{<matomeQuote body="Wi-Fiも携帯の電波もどっちもダメか、弱い場所がユースケースだよ。<br>T-Mobileのユーザーでそういう状況の人、たくさんいるだろうし。" userName="kmoser" createdAt="2025/05/16 07:46:57" color="">}}




{{<matomeQuote body="Wi-Fiも携帯の電波もどっちもダメか、弱い場所がユースケース？<br>それ、記事（TFA）の中にはなかったよ。" userName="mikestew" createdAt="2025/05/19 20:43:00" color="">}}




{{<matomeQuote body="うちはT-Mobileのfemtocellに切り替えたんだ。まさに、Wi-Fi callingが最悪だったから。<br>しょっちゅう通話が途切れるし、グループSMSもダメ、SMS/RCSの画像も送れない、電話サービス自体が使えないことも多かったんだ。<br>femtocellにしたら全部直って、それ以来ずっと問題ないよ。" userName="PaulDavisThe1st" createdAt="2025/05/14 18:28:47" color="#ff5733">}}




{{<matomeQuote body="＞ She just needs a microcell/femtocell.<br>あれもあれで問題あるんだよ。<br>特に、GPS信号を受信できないとダメなんだけど、山岳地帯だとそれも難しいことが多いんだ。<br>俺、microcell何年も使ってたけど、悪夢みたいに不安定だった。<br>定期的に（しかもランダムに）ただ動かなくなるだけじゃなくて、なんで動かないのか全く分からなかったんだよ。" userName="lisper" createdAt="2025/05/14 18:25:14" color="#ff5733">}}




{{<matomeQuote body="GPS受信する必要はないんだよ。ただ、受信できないとe911サービスのトラブルになるんだ。<br>それ以外の機能には影響ないよ。少なくともT-Mobile版はね。" userName="PaulDavisThe1st" createdAt="2025/05/14 18:27:21" color="">}}




{{<matomeQuote body="俺が持ってたやつ、AT&T Microcellは、うちの携帯プロバイダが提供してた唯一のモデルだったんだけど、GPS信号がないと動かなかったんだよ。" userName="lisper" createdAt="2025/05/14 18:32:03" color="">}}




{{<matomeQuote body="俺が持ってたAT&T MicrocellはGPS信号がないと動かなかったんだ．唯一プロバイダーが提供してたモデルだよ．変だよな，だって別の人が持ってたAT&T MicrocellはGPS信号いらなかったって言うんだ．シンク下のキャビネットで，大きいアパートの奥深く，GPS信号なんて絶対入らなかったのに．数年前に引っ越してからは使ってないけどね．もしかしたら変わったのかも．" userName="reaperducer" createdAt="2025/05/14 19:36:04" color="">}}




{{<matomeQuote body="これ見てよ．https://paulstamatiou.com/review-att-3g-microcell<br>”MicroCellに電源とイーサネットを繋いだ後，3GとGPSのLEDが点滅し始める．あれ，GPS？そう．テスト市場外で動かないようにGPSで位置情報をロックする必要があるんだ．AT&Tは90分もかからないって言ってるけど，俺は5時間くらいかかったよ．”<br>これが根本的な問題．進行状況が分かる方法が全くないし，永遠に動くかどうかも分からなかった．文字通りの現実世界の停止問題だよ．" userName="lisper" createdAt="2025/05/14 19:47:19" color="">}}




{{<matomeQuote body="俺も何年か前にVerizonのmicrocellデバイスで似たような経験したよ．GPS固定がないとクライアントにサービス提供しなかった．" userName="EvanAnderson" createdAt="2025/05/14 19:02:48" color="">}}




{{<matomeQuote body="もしかしたら https://av.tib.eu/media/36387 とか https://www.eevblog.com/forum/rf-microwave/sdr-as-gps-emulat... が可能性としてあるかもね．" userName="jiveturkey" createdAt="2025/05/15 16:28:26" color="">}}




{{<matomeQuote body="大手携帯キャリアが，よく知らない信頼できないISP経由で，勝手にセルタワーを運用させるのを許してるのが驚きだよ．お客さんが範囲内に入ったら自動でそっちに切り替わるのに．普通はもっとイメージとかエンドツーエンドのコントロールを気にする会社なのに，信じられないくらいおおらかだね．" userName="Spivak" createdAt="2025/05/14 15:17:10" color="">}}




{{<matomeQuote body="＞大手携帯キャリアが，よく知らない信頼できないISP経由で，勝手にセルタワーを運用させるのを許してるのが驚きだよ．<br>オフィスビルにはたくさんあるよ．個人のやつは，政府が特定の範囲までネットワークを構築するよう要求してる問題をごまかす方法だと思う．ただ建てないで，誰かが文句言ったらこれをオファーするんだよ．" userName="Suppafly" createdAt="2025/05/14 15:48:11" color="">}}




{{<matomeQuote body="オフィスビルにたくさんあるよ．個人のやつは，政府が特定の範囲までネットワークを構築するよう要求してる問題をごまかす方法だと思う．<br>あと，オフィスや residential tower の高い階にいる人たちのせいもある．建物には電波を最小限にする窓が付いてるから，携帯信号が入ってこないんだ．キャリアは基地局を通りから30フィート上に建てるけど，600フィート以上上には建てないからね．" userName="reaperducer" createdAt="2025/05/14 19:38:19" color="">}}




{{<matomeQuote body="Femtocellはキャリアによって遠隔制御されてるんだ．GPS位置情報（とたぶんスペクトルセンシング）が必要で，バックホールはVPN経由だと思うよ．当然，QoSは保証できないけど，信号がないよりはマシだね．（面白いトリビア：うちのオフィスはAT&T MicroCellsに数万ドル払ったのに，GPS信号が得られなくてアクティベートできなかったんだ．）" userName="wmf" createdAt="2025/05/14 16:58:59" color="#45d325">}}




{{<matomeQuote body="えーと，4G LTE以降ならWi-Fi callingと basically 同じだよ．IMSっていう技術で動いてて，IPSECとか使ってるんだ．Wi-Fiに繋がってるときはIWLANモードになってWi-Fi callingとかSMS，RCSが使える．大事なのはISPとキャリアの良いピアリングだけだよ．" userName="zinekeller" createdAt="2025/05/14 15:50:59" color="#ff5733">}}




{{<matomeQuote body="いや，そうじゃない．コンシューマー向けfemtocell（AT&T Cell Booster, Verizon LTE Network Extender）はキャリアのRAN内の実際のeNodeBなんだ．IPSECトンネルで戻ってLTEラジオとして動く．AT&TとかT-Mobileのは改ざん防止機能もあったよ．AT&Tは新しいCell Booster Pros（5G対応）だと月額30ドルとか取るみたい．Wi-Fi Callingは別のSeGWを使うから違うんだよ．" userName="kotaKat" createdAt="2025/05/14 18:13:03" color="#785bff">}}




{{<matomeQuote body="Cell boosterとかnetwork extender（eNodeBSのことね）ってさ、記事の山奥みたいな状況でほんとに役立つの？<br>それともWi-Fi callingみたいに、”5桁のショートコードからのメッセージはWi-Fi callingで対応してないことが多い”みたいな同じ問題になっちゃうのかな？<br>なんか情報追加してくれてありがとう、こういうデバイスのことすっかり忘れてたわ。" userName="seltzered_" createdAt="2025/05/14 19:19:53" color="">}}




{{<matomeQuote body="もしそのデバイスがリモートで管理されてて、全部キャリアにIPSECで戻るなら、どんなネットワークに繋がってても関係ないでしょ？<br>悪くても接続が悪くなるくらいで、それ以上の危険はないと思うけどな。" userName="parliament32" createdAt="2025/05/14 17:12:07" color="">}}




{{<matomeQuote body="Verizonの4G LTE Network Extenderを無料で使ってるんだけど、自宅から離れると電話が切れちゃうのが唯一の問題かな。<br>1月に911にかけた時も、車を動かして通りに出たら切れたよ。また電波入るとこに戻ったら911のオペレーターからかけ直してきたけど。<br>数ヶ月後にVerizonから住所の位置情報編集頼まれたんだ。近いうちにテストしないことを願ってるけどね。" userName="memcg" createdAt="2025/05/14 21:32:57" color="#38d3d3">}}




{{<matomeQuote body="ローミングしてる人にとってもこれは困るって指摘もあったけど、完全に同意だわ。<br>俺の解決策はこれ：海外ローミングする時はSIMを自宅の予備Androidに入れっぱなしにして充電しとくんだ。<br>AndroidにSMSをAPIに転送するアプリがあってさ、例えばこれ→f-droid.org/packages/tech.bogomolov.incomingsmsgatew....<br>SMS受け取るたびにこのAPIに転送するの。そしたらAPIがメッセージ全部をメールで送ってくれるんだ。<br>もう何年かこの設定で問題なく使ってるよ。ローミングしてない時もメインのスマホでこれ使ってるから、PCでSMS OTP必要な時もスマホ探さなくてもメールで受け取れるから楽なんだ。<br>（Note : これはMMSでは動かないけど、俺は必要ないからいいや）" userName="nelblu" createdAt="2025/05/14 16:39:35" color="#ff33a1">}}




{{<matomeQuote body="”When I am roaming internationally, I leave my SIM card in a spare android at home plugged into a charger. Android has an app that forwards SMS to API ...”<br>これって「2FA Mule」って呼ばれてるんだよ。<br>kozubik.com/items/2famule/<br>俺もこれもう4年以上やってて、ほんと素晴らしいんだ。やるね君！" userName="rsync" createdAt="2025/05/14 19:14:25" color="#ff5733">}}




{{<matomeQuote body="これ、スマホにログインしてないと動かないやり方だと、近いうちに動かなくなるかもね。<br>https://mashable.com/article/android-smartphones-automatically-reset-if-not-used-for-months<br>（リンク先は長いので短く表示）" userName="barbazoo" createdAt="2025/05/14 16:50:11" color="#ff5c5c">}}




{{<matomeQuote body="もしスマホがWiFi callingとDual SIMに対応してるなら、行く国のデータ専用eSIMを入手すれば、メイン回線のテキストはサブのeSIMのデータ通信経由で受け取れるよ。" userName="lldb" createdAt="2025/05/14 17:35:35" color="#ff5c5c">}}




{{<matomeQuote body="俺も似たようなことやったよ。古いAndroidスマホを家に置いて、昔のmessages.android.com（今はgoogle.comだと思う）にノートPCからログインして、旅行から戻るまでセッションが切れないか祈ってた。<br>でも最近はWiFi callingでSMS届くようになったし、Google VoiceじゃダメでほんとのSMSが必要でも、WiFi待てばいいやって感じかな。" userName="pauldino" createdAt="2025/05/14 17:16:34" color="">}}




{{<matomeQuote body="EU圏のある国から別のEU圏の国に住んでるんだけど、ローミングのせいでSMS 2FAがほんと嫌なんだ。<br>まだ元の国のSIM持ってるんだけど、プリペイドで年2回チャージして維持してる感じ（プリペイドだから高いオプション買わないとローミング使えないし、元の国に2ヶ月に1回くらいしか戻らないならね）。<br>元の国の特定サービスでSMS 2FA必要なのに、そのサービスは国内の番号以外ダメだったり、他の2FAタイプを許可してないんだよ。<br>だから結局スマホの2FAは役に立たないし、ブロックされちゃうんだよね。" userName="mns" createdAt="2025/05/15 11:48:12" color="#ff5c5c">}}




{{<matomeQuote body="これローミングとどう関係あるの？ヨーロッパでも外でもよくローミングするけど、SMS受け取れなかったことないんだけど。" userName="apexalpha" createdAt="2025/05/14 17:21:17" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="技術的にはSIMはローミングしてないって言うけど、 physically は home network 外（海外）でローミングしてるんだよ。僕の国のプランだと international roaming 対応してないか、できてもめちゃくちゃ高くて使う気になれないんだよね。" userName="nelblu" createdAt="2025/05/14 17:50:46" color="#785bff">}}




{{<matomeQuote body="アメリカの多くのキャリアはローミング時にSMSごとに金取るんだよ（まるで2006年みたいに）。" userName="seadan83" createdAt="2025/05/14 19:47:37" color="#ff5c5c">}}




{{<matomeQuote body="確かにね、でも 2FA って SMS 受信するだけじゃん、だからどうしたの？" userName="apexalpha" createdAt="2025/05/14 20:14:53" color="">}}




{{<matomeQuote body="アメリカのプランによっては SMS 受け取る側にも金取るんだよ。それは Europe では聞いたことないから、君には意味不明なんだろうね、だから混乱してるんだよ。あと USA の prepaid plans や小さい carriers は international roaming やらないこともよくあるよ。" userName="daveoc64" createdAt="2025/05/14 23:14:17" color="#38d3d3">}}




{{<matomeQuote body="え、マジで？じゃあ Messagebird で安い SMS 1万通買ったら、お前の電話代を ”denial of service” 攻撃できるってこと？何それ、ウケるんだけど。" userName="apexalpha" createdAt="2025/05/15 10:39:42" color="#ff33a1">}}




{{<matomeQuote body="質問に答えようとしただけだよ: ＞＞ Some of the comments pointed out that this is hostile behaviour for people roaming as well<br>＞＞ I’m sorry how is this related to roaming?" userName="seadan83" createdAt="2025/05/14 20:19:35" color="">}}




{{<matomeQuote body="Google Fi って Wi-Fi で SMS 2 factor messages 全部受信できるんだよ、 short codes も含めてね。電話の電源入ってなくてもいいし、電話ぶっ壊れてもどんな device の web browser からでも受け取れる。超お気に入りの機能。月 $20 から使えるよ。Fi は前は US Cellular と提携してたから一部の mountain areas でもサービス良かったらしい。今 US Cellular がどうなってるか知らないけどね。" userName="modeless" createdAt="2025/05/14 13:46:23" color="#38d3d3">}}




{{<matomeQuote body="アメリカ国外に12年住んでるけど、 Google Fi 使うまで SMS でいつも困ってたんだ。多くの銀行は今時 SMS を必須にしてるから問題なんだよね。 virtual number service はだめ、 (1) VOIP numbers は banks に “blacklisted” されてるか (2) Simply SMS が届かない。 Google Fi は cell phone service がなくても Wi-Fi で使える。 data は USA 外で a month 使うと shut off だけど、$25/month で SMS と voice もらえるなら happy だよ。" userName="Ozarkian" createdAt="2025/05/14 14:12:40" color="#785bff">}}




{{<matomeQuote body="＞ Google shuts off the data on Fi after you’ve been outside the USA for a month. No problem, I’m happy to pay $25 a month for a ’dataless’ connection that gives me SMS and voice.<br>Specific に言うと、俺は extensively travel してて、 US にもよく行くけど、一度に a month 以上 outside にいることがよくあるんだ。 data を too long 使いすぎると shut off するみたい。" userName="cge" createdAt="2025/05/14 17:00:55" color="#45d325">}}




{{<matomeQuote body="Google Fiでイギリスに3ヶ月いたけど、ずっとデータ通信使えたよ。国によって違うのかな？それとも何か他の理由かな？データはそんなに使いまくらなかったけど、別に避けてたわけじゃないんだ。" userName="kimixa" createdAt="2025/05/15 06:47:43" color="">}}




{{<matomeQuote body="俺の場合はシャットオフされたことないって話なんだ。基準はよくわかんないんだよね。ただ、EUで数ヶ月データ使いまくってた友達は切られちゃったみたい。" userName="cge" createdAt="2025/05/16 16:19:32" color="">}}




{{<matomeQuote body="世界中の他の値段と比べたら、そもそもGoogle Fiのデータなんて使いたくないでしょ。現地のeSIMとか“旅行用”eSIMとか手に入れて、デュアルSIMで使った方がいいよ。" userName="arccy" createdAt="2025/05/14 15:00:42" color="#ff5733">}}




{{<matomeQuote body="Sailyみたいなアプリを使えばデータ専用のeSIMパッケージは見つけやすいんだけど、海外旅行中に“本物の”電話番号をくれるサービスを見つけるのが難しいんだよね。なんかおすすめある？" userName="devoutsalsa" createdAt="2025/05/14 15:07:23" color="">}}




{{<matomeQuote body="直接の経験はないけど、TelloとかRed Pocket、Good to Go MobileってMVNOを聞いたことがあるかな。eSIMで有効化できて、WiFi callingができるんだよね。ネットにつながってればUS電話番号としてSMS/電話もできる。Airaloみたいなプロバイダは現地番号も扱うけど、データ専用より高くなる。データeSIMと組み合わせて使うのも手だよ。" userName="AnonC" createdAt="2025/05/14 15:30:25" color="#785bff">}}




{{<matomeQuote body="rcsとか”messages for web”って使える？<br>この前確認した時は、“fi syncing”を有効にするとrcsの機能が無効になって、“cellphone is off”の時のテキストとか音声（昔のhangouts）が使えるようになるって感じだったんだ。今もそうなのかな？テキストとか音声に使うURLはどこ？（hangouts.google.comはGoogle Chatにリダイレクトされるね）" userName="throw7" createdAt="2025/05/14 15:53:55" color="">}}




{{<matomeQuote body="うん、やっぱりrcsは無効になるね。iPhoneがついに対応した今となっては超ダサいよね。Googleがいつか直してくれるのを期待してるけど、あんまり当てにはしてないな。hangoutsがなくなった時にこの機能が消えなかったのは嬉しいよ。<br>URLはhttps://messages.google.com/web/に変わったよ。" userName="modeless" createdAt="2025/05/14 16:26:04" color="#38d3d3">}}




{{<matomeQuote body="Google Fiはデータ1GBあたり10ドルかかるんだよね。US Mobileの方が安いし、USのトップ3プロバイダが使えるよ。" userName="b8" createdAt="2025/05/15 01:21:16" color="#ff5c5c">}}




{{<matomeQuote body="不都合なことってどこにでも絶対あるんだよね。2FAのサポートに関わったけど、どの方法もイマイチ。SMS 2FAは安全じゃないけど普及してて復旧早い。TOTPアプリは安全だけど復旧が大変。Yubikeyはコストと復旧問題。政府運営システムはプライバシーとか資金で無理。SMS 2FAが山奥でダメなのはわかるけど、2FA自体がどこでも大変なんだよ。" userName="stackskipton" createdAt="2025/05/14 18:48:44" color="#785bff">}}




{{<matomeQuote body="プライバシー擁護派が発狂する＞認証のプライバシーは（例えば投票とか）確かに懸念になるかもしれないけど、ここでは関係ないと思うんだ。<br>銀行に「自分が誰か」って確認してもらいたい場合、銀行にはもう俺の詳しい情報は全部伝えてるわけだし、俺は自分のプライバシーをはっきり、そして公然と放棄してることになるよね。俺はハッキリ正確に識別してくれって頼んでるんだから。" userName="nine_k" createdAt="2025/05/14 19:13:59" color="">}}




{{<matomeQuote body="銀行とかさ、本人確認が必要なところで政府の認証を使うのはプライバシー的には大丈夫だろうね。でもさ、最近のサイトってほとんど2FA使ってるけど、ぶっちゃけ本人のIDを知る必要ない場合が多いじゃん。そういうところで政府IDベースの認証使われたら、認証と本人確認がごっちゃになってプライバシーがマジで心配だよ。" userName="pavon" createdAt="2025/05/14 21:39:02" color="#ff5733">}}




{{<matomeQuote body="本人確認なしで認証する状況って例示してくれる？<br>中央集権型の認証サービスって、障害点で一つ潰されたら全部ダメになるし、サイバー攻撃の格好のターゲットになるんだよね。<br>個人的にはTOTPとかYubikeyみたいな個人用トークンが一番強固で、技術的にも分かりやすい解決策だと思うな。" userName="nine_k" createdAt="2025/05/15 00:33:21" color="#ff5c5c">}}




{{<matomeQuote body="アカウント作成時に第三者サービスを介さずにユーザーが登録するTOTPとか、使い捨て携帯（burner phone）のSMSとかだね。どっちも匿名性はあるよ。同じ認証方法を複数のサイトで使うと紐づけられる可能性はあるけど、どちらも実際の身元と結びつける必要はないから。" userName="pavon" createdAt="2025/05/15 15:38:03" color="#785bff">}}




{{<matomeQuote body="政府が俺の代わりにアカウントにアクセスし直せるシステム？それはつまり、政府が俺に知らせずに俺のアカウントにアクセスできるシステムってことだろ。冗談じゃないね。もし政府がハードウェア交換だけして、アクセス再確立は俺次第ってことなら、それはYubikeyと何も変わらないけど。" userName="snowwrestler" createdAt="2025/05/15 12:48:37" color="#45d325">}}




{{<matomeQuote body="まあ、ほとんどの場合はさ、政府は召喚状を使って君のデータを全部手に入れられるんだよね。裁判官に秘密条項付きの召喚状に署名させることもできるだろうし。" userName="stackskipton" createdAt="2025/05/15 20:36:40" color="#785bff">}}




{{<matomeQuote body="＞Yubikeyとかはコストとリカバリーの問題がある<br>キーを複数持っていれば、リカバリーは比較的簡単だよ。全てのキーを登録しておけば、一つ無くしても別のキーを使って新しいのを登録できるから。" userName="Hackbraten" createdAt="2025/05/14 20:47:03" color="#38d3d3">}}




{{<matomeQuote body="そうだねー、でもそれって使ってる全てのサイトで自分で手動でやらないといけないんだよね。もっと広くサポートされるようになったら結構大変そう。" userName="wkat4242" createdAt="2025/05/15 01:53:56" color="#ff5c5c">}}




{{<matomeQuote body="ああ、そんなことするユーザーなんて絶対いないって。" userName="stackskipton" createdAt="2025/05/15 20:42:37" color="">}}




{{<matomeQuote body="＞政府が何らかの集中管理を行う<br>いやー、結構ですありがとう。" userName="protocolture" createdAt="2025/05/15 01:51:17" color="">}}




{{<matomeQuote body="他のコメントに激しく同意。期待値高すぎ。去年のことなんだけど、初めてLime scooter借りて乗った時に、VPNの設定ミスでネットが使えなくなっちゃったんだ。そしたらどうやっても乗り終わりの操作ができなくて。GPSで自転車ラックに止まってるのが見えたらしくて、余分にかかった時間は返金してくれたけどさ。もしスマホのバッテリーが切れたり、外で他に何かトラブルあったらどうすんだろって思ったよ。" userName="Neywiny" createdAt="2025/05/14 14:08:57" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
