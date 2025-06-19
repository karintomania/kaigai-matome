+++
date = '2025-06-12T00:00:00'
months = '2025/06'
draft = false
title = 'デンマーク省庁がWindowsとMicrosoft OfficeをLinuxとLibreOfficeに置き換え！'
tags = ["Linux", "Windows", "LibreOffice", "Microsoft Office", "政府機関"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> デンマーク省庁がWindowsとMicrosoft OfficeをLinuxとLibreOfficeに置き換え！

引用元：[https://news.ycombinator.com/item?id=44255352](https://news.ycombinator.com/item?id=44255352)




{{<matomeQuote body="デンマークの多くのIT関係者が言ってるんだけど、これはWindowsとMicrosoft Officeを置き換えるって話だけじゃないんだよ。主な問題は周りのインフラなんだよね。<br>LinuxマシンはAzure Active Directoryで認証するの？それともローカルAD？IT部門は別にサービスを動かすの？Exchange Serverからも離れるの？半分が職員なのに、それはないだろうね。<br>Intuneを使ってるなら、その代替戦略はどうするの？<br>俺の推測だと、多くの職員はWebメールを使って、リモートデスクトップでWindowsプログラムを動かすことになるんじゃないかな。インフラへの投資は十分じゃないし、難しい問題も全く手をつけてないし、期間もかなり短い。<br>トレーニングに significant な時間や費用が充てられてるとは思えないね。<br>これは完全に失敗に終わるだろうな。職員は生産性低下とか、ストレスがたまる職場環境に不満を言うことになるよ。自分たちで完全に失敗する準備をしてるんだね。<br>同じことが多くの学校でも起こってる。一部の生徒向けにLinuxとLibreOfficeがChromeBooksを置き換える予定なんだ。<br>最初の2年間は年間 €2.25M かかるみたいだけど、その後は €4-5M 削減できると期待してるらしい。ここでも認証、メール、ファイル共有、プロビジョニングの計画は全くないんだ。<br>生徒を比較的保護されてたGoogle Workspace for Studentsから、データマイニングから保護されにくい「本物の」Google/Gmailエコシステムに強制的に移行させるだけ。<br>これは全部ひどい結果になるだろうね。計画性のなさのせいだよ。そしたら次のUS大統領が出てきて、事態を落ち着かせて、俺たちは2年後にはこの件を全部忘れちゃうんだ。" userName="mrweasel" createdAt="2025/06/12 10:18:58" color="#45d325">}}




{{<matomeQuote body="俺は今、ノルウェーの大規模な公共機関で働いてるんだ。<br>チームの半分はLinuxを使ってるけど、唯一の本当の制約はSSOにEdgeを使うことだけなんだ。（Firefoxでも動くけど、2008年みたいにログインしなきゃならないんだよ。）<br>正直言って、それ以外のことはWindowsを使ってるチームメイトが対処してることよりずっとスムーズに動いてるね。" userName="skinkestek" createdAt="2025/06/12 10:26:01" color="">}}




{{<matomeQuote body="＞Are these Linux machines going to authenticate against the Azure Active Directory... Are they using Intune, if so what’s the replacement strategy where?<br>Linuxを企業のデプロイで使うって話になると、いつもこの話が出てくるんだ。<br>ガバナンスに関してMSの世界でしか経験がないから聞きたいんだけどさ。<br>— Linuxの世界には、MSの世界みたいに大量のLinuxマシンを簡単に管理（GPOポリシー適用みたいに）できるツールって本当にないの？簡単に設定・管理できて、いつもスクリプトに頼る必要がないツールってないの？<br>— もしあるなら、なんでみんな使わないの？<br>LinuxマシンをWindows AD GPO経由で管理できるものがあるのは知ってるけど、それはMSドメインに依存してるんだよね。<br>オープンソースツールを、企業向けに有料サポート付きで提供するスタートアップには絶好のチャンスみたいだね。" userName="jve" createdAt="2025/06/12 10:49:33" color="#ff5c5c">}}




{{<matomeQuote body="そもそもLibreOfficeを使ったことがある人なら、それが実行可能な代替になると真剣に思えるわけがないんだよ。<br>一時しのぎにはなるけど、MSとLibreOffice間のファイル形式の非互換性の問題は、上記の数字よりも生産性低下でコストがかかると思うね。" userName="IceDane" createdAt="2025/06/12 11:05:10" color="">}}




{{<matomeQuote body="それは多分、Firefoxプロファイルに会社のKerberosレルム／ドメインを許可する設定が抜けてるだけだよ。<br>もしあなたの機関がFirefoxの設定をロックしてないなら、自分でこれを直せるよ：https://docs.redhat.com/en/documentation/red_hat_enterprise_..." userName="thyristan" createdAt="2025/06/12 10:28:32" color="#ff33a1">}}




{{<matomeQuote body="昨日：M365の奇妙なCVEを見たんだけど、これはメールに埋め込まれたメッセージを通じてLLMを「悪用」するものなんだ。<br>今日：すごく長いメールが来て、部署名で検索したかったんだ。Outlook：「検索は非推奨の機能です」。<br>「でも個人の経験から大規模組織に外挿できないよ」みたいなFUD（恐怖、不確実性、疑念）があちこちにあるけど、俺はほとんどの組織（特にプロセスがかなり遅れてる政府機関）にとって、機能面から見れば簡単に切り替えられると思うんだ。<br>問題は、自動化されてない自分の領地（俺が推測するには、ほとんどの場所での非クラウドAD管理みたいなものだよ）を守るのがすごく嬉しい大量の従業員や請負業者なんだ。<br>必要なプロセスを実装する人はほとんどいないし、部下をFOSDEMに行かせるより、リーダーシップはMicrosoft（かクラウドプロバイダー…）からの「イノベーションサミット」への招待を受ける方が嬉しいんだ。" userName="fock" createdAt="2025/06/12 10:50:43" color="">}}




{{<matomeQuote body="この特定の種類の見解は、俺には怠惰に思えるね。一般的に、どんな製品タイプでも、ほとんどの人が必要とするコア機能がいくつかあるだろう。<br>それから、そのツールを効果的に使うために必要とするユーザーがどんどん少なくなる機能の長い尻尾があるんだ。LibreOfficeやGoogle SheetsみたいなOfficeツールは、80/20の法則みたいなものに落ち着くんだ。<br>完全に網羅した製品の半分以下の機能しか作れないかもしれないけど、それでも市場の enormous な割合のニーズに応えることができる（多分95%+、だってほとんどのユーザーはパワーユーザーじゃないからね）。<br>だからGIMP対Photoshopとか、Linux対Windowsとか、LibreOffice対Microsoft Officeの批判で、「あー、機能が少ないから誰も真剣に受け止められないね」って言うのを見ると、それは還元主義的で、全く役に立つ洞察を提供してないんだ。<br>それは全部、その人や組織の特定のニーズと、彼らが導入を考えてる製品の機能がどう交差するかによるんだよ。" userName="rpdillon" createdAt="2025/06/12 11:18:25" color="">}}




{{<matomeQuote body="Linuxデスクトップはセキュリティモデルがひどいんだ。 base distro を hardening するために significant な時間を費やすつもりがない限りはね。<br>それにも独自の問題があるけど。Windowsは、全ての問題があるにしても、エンタープライズ環境にとっては still a better choice だね。" userName="udev4096" createdAt="2025/06/12 13:40:25" color="">}}




{{<matomeQuote body="全従業員がこのプロジェクトを成功させるために their experience を活かしてくれることを願ってるよ。<br>Linuxに切り替えてMicro$oftを捨てるのは、各ヨーロッパ諸国の priority であるべきだね。" userName="decide1000" createdAt="2025/06/12 10:24:24" color="">}}




{{<matomeQuote body="It’s really not. EdgeにはLinux版と一緒に多くの認証ライブラリがバンドルされてて、リモートパスキーのサポートなんかを可能にしてるんだよ。" userName="rcarmo" createdAt="2025/06/12 10:44:32" color="">}}




{{<matomeQuote body="マルウェアやランサムウェアの被害に遭ってる企業を見ると、Linuxに置き換えるのが良いって話はちょっと違うんじゃない？って思うよ。" userName="trelane" createdAt="2025/06/12 15:36:14" color="">}}




{{<matomeQuote body="この前、妻がOutlook使ってるの見たんだけど、マジでひどくなってた！新しいPCなのに全然動かないし、UIも最悪。信じられない。" userName="tonyedgecombe" createdAt="2025/06/12 11:23:15" color="">}}




{{<matomeQuote body="EdgeでSSOを使ってるって書いてあったけど、そのSSOソリューションって何？多分、Microsoft製品なんじゃないの？" userName="mrweasel" createdAt="2025/06/12 10:42:57" color="">}}




{{<matomeQuote body="え？ Linuxデスクトップを使う方が安全だなんて、それはめっちゃアホな考え方だよ。最近のマルウェアはWindowsもMacも、ほとんど全部のOSを狙ってくるんだから。" userName="udev4096" createdAt="2025/06/12 17:14:50" color="">}}




{{<matomeQuote body="私もそう願ってるけど、実装が急ぎ足で、本来得られるはずの良い結果が出ないんじゃないかって心配だよ。" userName="mrweasel" createdAt="2025/06/12 10:41:40" color="">}}




{{<matomeQuote body="半分がLinuxでEdgeをSSOに使ってるだけなら、バックエンドは結局MSのままなんじゃない？ Office 365とかIntuneとか全部。MS依存なくすのが目的なのに、Office 365動かすなら端末変えても意味なくなくない？って話だよ。" userName="heraldgeezer" createdAt="2025/06/12 22:15:39" color="#785bff">}}




{{<matomeQuote body="それはEU OSプロジェクトも目指してるところだよ！詳しくはここ見てね→ https://eu-os.eu" userName="eu_os" createdAt="2025/06/12 12:49:03" color="#45d325">}}




{{<matomeQuote body="「remote passkey support」って何？ passkeysは知ってるけど、remote passkeysなんて聞いたことないんだけど。" userName="vaylian" createdAt="2025/06/12 11:03:39" color="">}}




{{<matomeQuote body="Searchはもう非推奨になった機能なの？" userName="PcChip" createdAt="2025/06/12 11:39:39" color="">}}




{{<matomeQuote body="正直よくわかんないんだよね。Forgerockって名前時々見るけど、あれってウェブページのログイン部分だけに関係してるのかな。MacユーザーはSafari使ってって推奨してるのも謎だし。だって、もしMicrosoft製品ならMacでもEdgeに固定しそうじゃん？だから余計に疑問なんだ。ただの考えだけど、全然的外れかもね。" userName="skinkestek" createdAt="2025/06/12 10:55:22" color="">}}




{{<matomeQuote body="＞彼らは学生を比較的保護されたGoogle Workspace for Studentsから、データマイニングに対する保護が弱い“本物の”Google/Gmailエコシステムに強制的に追い出すだけだ<br>何それ？この2つの場所でデータマイニングのレベルが違うってわかる観察可能な方法があるみたいだけど、その証拠共有してくれない？" userName="s1mplicissimus" createdAt="2025/06/12 10:25:37" color="">}}




{{<matomeQuote body="Windowsのライセンス費用だよ。大規模だと結構な額になるからね。" userName="luuio" createdAt="2025/06/13 00:07:22" color="">}}




{{<matomeQuote body="関連した経験あるよ。うちのプロジェクトはOffice 365からGoogle Workspaceに移行したんだ。たくさんのWindows PCをChromebookに置き換えたよ。完了して1年以上経つけど、多くのユーザーはまだExcelを使ってるし、アプリ仮想化もすごく増えた。今日まで最大のハードルとして残ってるのは、ユーザーが変化を受け入れて適応することだね。移行で、ユーザーが独自に作った知られてないプロセスがたくさん露呈して、それがいつも通り機能しなくなったから、彼らが移行するのが難しくなったんだ。全体としては、ほとんどのユーザーが必要な調整をして、提供されたトレーニングを受けて、うまくやってるよ。でも、できない、あるいはやろうとしない層も常にいるね。" userName="cmilton" createdAt="2025/06/12 15:40:56" color="#785bff">}}




{{<matomeQuote body="さらに言えば、MS製品は完全に優先順位が逆で、機能過多になってると思う。Excelでファイルが20MBくらいになったら詰まって落ちるのに、派手な書式設定に何の意味がある？何十年も何十億ドル企業の看板製品なのに、形より機能って強調されてるにも関わらず、出版には使えないグラフしか作れないし、学生に悪癖を植え付ける。こういう製品の“機能”をゴリ押しする奴らは、実際は使ってないって確信してる。使ってたらクソだって気づいて、貧弱なコア製品から注意を逸らすだけのものだってわかるはず。アメリカで都心のアパートに住んでて、通勤や買い物にクソ高いデカいピックアップトラック乗り回す奴らみたいだよ。荷物運んだり牽引したり、舗装路から出たりなんて絶対しないのに。彼らは通勤用の車の方がよっぽどいいんだけど、ショー用トラックしか運転したことなくて、新しいこと学ぶのが怖いんだ。もし実際に仕事しようとしたら、荷台に標準的な合板一枚も乗らないってすぐに気づくだろうね。" userName="yummypaint" createdAt="2025/06/12 12:05:42" color="#45d325">}}




{{<matomeQuote body="最近はMicrosoftの“IDブローカー”、Intune（Company Portal）の一部との連携が問題になってる可能性が高いと思う。Intuneを使ってログインしてデバイスをMicrosoftアカウントに登録すると、microsoft-identity-brokerっていうDBusサービスがトークンを渡してくれて、それをlogin.microsoft.comに渡すことで（クッキーとしてでも特別なヘッダーとしてでも）、あなたを識別できて（ユーザー名/パスワードログインをスキップ）、会社のデバイステストをパスできるんだ。自分でFirefoxの拡張機能作ってDBus呼び出してヘッダー渡すことでうまく行ったけど、これ以来この拡張機能を見かけたよ（自分で試してはないけど）、コードサイズ的に（もっとたくさんの機能があるみたいだけど）同じことを実現してるみたいだね。https://github.com/siemens/linux-entra-sso<br>EdgeのLinux版にはこれが組み込まれてるみたいで、login.microsoft.comのページを開くと、IDブローカーから受け取った（ページ読み込みごとに生成される）トークンを「x-something」ヘッダーとして渡してるのがわかるよ。" userName="maxdamantus" createdAt="2025/06/12 12:21:16" color="#ff33a1">}}




{{<matomeQuote body="それか、Microsoftが成功しちゃうのを恐れてるのかも？そうしたらビル・ゲイツが「全財産寄付する！」って345回目の約束できなくなるかもしれないね。https://www.freeipa.org/<br>「CLI、Web UI、RPCアクセスでレルム内のLinuxユーザーとクライアントホストを一元管理。全てのシステム、サービス、アプリケーションでシングルサインオン認証を有効に。」https://www.keycloak.org/<br>「オープンソースのIDおよびアクセスマネジメント」" userName="belter" createdAt="2025/06/12 11:21:04" color="#38d3d3">}}




{{<matomeQuote body="Googleの教育向けサービス（Google Workspace for Educationコアサービス、Gmail、Google Calendar、Classroomなど）にはデータマイニングやプロファイリングはないよ（通常のGmailにある広告もない）。<br>＞Google Workspace for Educationコアサービス（Gmail、Google Calendar、Classroomなど）には広告がなく、コアサービスの学生情報が広告ターゲティングのためのプロファイル作成や、第三者への販売に使われることはありません。[1]<br>1) https://edu.google.com/intl/ALL_us/our-values/privacy-securi..." userName="mrweasel" createdAt="2025/06/12 10:39:45" color="#ff5733">}}




{{<matomeQuote body="まあ、サーバーはLinuxだけど、デスクトップはどうかわかんないな。" userName="powgpu" createdAt="2025/06/12 10:52:04" color="">}}




{{<matomeQuote body="80/20ルールはこの件には合わないよ。だって重要な”20”は人それぞれ違うんだから。もしワークフローの肝が一つでも欠けたら、他が完璧でもダメなんだ。LibreOfficeはVBAサポートに大きな機能不足がある。これは多くの組織で死活問題だよ。" userName="nradov" createdAt="2025/06/12 15:32:12" color="#ff5733">}}




{{<matomeQuote body="LibreOfficeは良いけど、MS OfficeやGoogle Workspaceみたいに複数人で同時編集できないのが致命的な弱点だね。あと、WindowsとOfficeだけ替えてもダメだよ。EntraとかIntuneとかOneDriveとかExchange Onlineは？ロシアとか中国、インドはYandexやAlibaba、Zohoで365やGoogle Workspaceの代替に結構投資してるんだ。欧州も急がないとね。<br>追記：LibreOfficeのリアルタイム共同編集には進展があるみたいだよ。見てみて→https://zetaoffice.net/<br>https://www.theregister.com/2025/02/13/libreoffice_wasm_zeta..." userName="ngrilly" createdAt="2025/06/12 13:27:56" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="同時編集はMS Officeでも単体機能じゃないんだよ（OneDriveかSharePointが必要）。従来のファイル共有とか、MS以外のクラウドストレージを使ってるならダメなんだ。Collabora（LibreOfficeが基盤）みたいなツールがあって、MSと似た感じで使えるよ。NextcloudやOwncloudとも連携できるんだ。" userName="zevon" createdAt="2025/06/13 06:52:27" color="#45d325">}}




{{<matomeQuote body="同時編集って、そんなに必要かな？特に役所で？私の経験だと、年配の職員はみんな古いオフライン版のWord使ってるけど…" userName="dismalaf" createdAt="2025/06/12 15:39:19" color="">}}




{{<matomeQuote body="職員がみんな年寄りじゃないよ。若い人もいるし、最新の共同編集ツールを使いたいんだ。役所の人だってね。リアルタイム共同編集は、鶏が先か卵が先か、って感じ。使い始めるまで必要だって分からないんだ。私は会議で、議事録とかスプレッドシートをみんなで一緒に編集するのにしょっちゅう使ってるよ。でも、議事録なら高機能なワープロは要らないってのは分かるな。" userName="ngrilly" createdAt="2025/06/12 18:03:02" color="">}}




{{<matomeQuote body="機能が足りないって、政府が有料ソフトを使う言い訳にはならないよ。デンマーク政府なら、LibreOfficeで同時編集をサポートする方法をきっと見つけられるはずさ。" userName="welshwelsh" createdAt="2025/06/12 14:20:59" color="">}}




{{<matomeQuote body="言い訳なんていらない。それはちゃんとした理由だよ。有料ソフトを使うのは、全く問題ない選択なんだから。" userName="bigstrat2003" createdAt="2025/06/12 15:02:18" color="">}}




{{<matomeQuote body="必要ないのに数百万も払うのは、全然良い選択じゃないよ。せいぜいバカげてるか、ひどいと汚職だね。フランスの役所での経験だけど、こういう決定は誰かの出世のためにされるのを見てきたよ。例えば、初年度無料だと、担当者がすごい成果で昇進できるとかね。" userName="louiskottmann" createdAt="2025/06/12 15:19:25" color="">}}




{{<matomeQuote body="組織の課題を解決しないタダのツールを入れるのは、良い選択じゃないよ。オープンソース信者が、なんで他のソフトを選ぶのか理由を無視するのはもううんざりだ。ほとんどの組織で、ソフト代より人件費の方が高いんだ。数百万ドルをソフトに投資して、社員の仕事を楽にすることが、人件費で何千万ドルも浮くなら、それは全然アリなんだ。" userName="kube-system" createdAt="2025/06/12 15:22:53" color="#45d325">}}




{{<matomeQuote body="それは論点がずれすぎだよ。有料ソフト全般がダメなビジネスだって誰も言ってない。LibreOfficeはMicrosoft製品に十分近いんだから、たくさんのEUの国がお金をかけ続けるのを止めて、機能差を埋めるのにちょっと使えばいいんだ。そうすれば将来もっとたくさん節約できるよ。" userName="louiskottmann" createdAt="2025/06/12 15:47:00" color="">}}




{{<matomeQuote body="あのさー、ネットで適当なこと言ってる人たちが、色んな政府の何千もの仕事で必要なソフトの要件とか「これで十分」とか決めつけるのって、ダニング＝クルーガー効果ってやつじゃない？ソフト買う人たちが一番よく分かってるって！" userName="kube-system" createdAt="2025/06/12 16:50:22" color="">}}




{{<matomeQuote body="＞ ソフト買う人が要件一番知ってる<br>それは違うと思うなー。実際にソフト使う人たちが要件を知ってるんでしょ。買う人は使う人に聞くべきなんだけど、実際はあんまりやらないんだよね。" userName="davoneus" createdAt="2025/06/12 17:01:41" color="">}}




{{<matomeQuote body="大きいソフト入れるときはさ、ユーザーと話し合って要件決めるべきなんだけど、使う人以外からもいっぱい要件が出てくるんだよ。政府が導入するなら、もっとそうなるね。" userName="kube-system" createdAt="2025/06/12 17:10:39" color="">}}




{{<matomeQuote body="あんた、大きい会社とか政府のIT部門で働いたことあるの？（笑）言ってることは立派だけど、現実はそんな簡単じゃないんだよ。OSSの話抜きにしても、開発で使う人の要望をちゃんと取り入れるのってそもそも大変。政府のITみたいにお金とか色々足りないと、もっときついんだよね。" userName="zevon" createdAt="2025/06/13 06:57:53" color="#ff5c5c">}}




{{<matomeQuote body="難しくないなんて一言も言ってないよ。ただ、私の20年の経験から言うと、ソフト買うときに色々な立場の人が関わるのって、めちゃくちゃ当たり前のことなんだよね。" userName="kube-system" createdAt="2025/06/14 14:47:02" color="">}}




{{<matomeQuote body="理想はね、そうなんだけどさ、実際問題、本当にそんなこと起こると思う？" userName="fakedang" createdAt="2025/06/14 02:55:31" color="">}}




{{<matomeQuote body="正直な話さ…たくさんの政府は、ただ雇用を増やすために人を雇ってるだけ。政府の職員なんて、ほとんどコストでしかないし、政府は儲けなくていいんだから。税金取ってそれをただ使うだけ。んで、多くの国は、別の国にソフトのライセンス料払うより、給料にお金使いたいと思ってるはずだよ…" userName="dismalaf" createdAt="2025/06/12 15:41:42" color="">}}




{{<matomeQuote body="英語の「free」って単語が、どうやらまた別のややこしさみたいだね。OSSの技術的な「四つの自由」って、全然お金の話じゃないんだよ。もちろん、お金のやり取りはできる。政府だってね。クローズドソースのやり方とか、「腐敗」のやり方とかは、実際にあることなんだ。" userName="mistrial9" createdAt="2025/06/12 16:14:40" color="#785bff">}}




{{<matomeQuote body="デンマーク政府って、Microsoftに年間だいたい5000万EURくらい払ってるんじゃないかな。そのお金の一部をOSSプロジェクトの開発費に回せば、必要な機能は絶対手に入ると思うよ。" userName="toomuchtodo" createdAt="2025/06/12 14:33:15" color="#38d3d3">}}




{{<matomeQuote body="乗り越えられないってわけじゃないけど、広くOSSを導入するのって、お金の問題より組織的な問題が多いんだよね。会社で使うソフトを成功させるには、開発費払うだけじゃ全然足りない。ちゃんと管理して、開発者が正しい機能を作ってるか、会社のルールや展開、サポート、使う人がちゃんと使えるかとか、色々必要。ソフト開発に慣れてる組織ならできるけど、そうじゃないところには、こういうプロジェクトって sometimes 超えられない壁になったりするんだ。" userName="kube-system" createdAt="2025/06/12 14:57:36" color="#ff5733">}}




{{<matomeQuote body="だよね〜、こういうのって結局、ちゃんと管理できるかとか、組織が成熟してるかどうかが成功の鍵だよね。" userName="toomuchtodo" createdAt="2025/06/12 15:03:19" color="">}}




{{<matomeQuote body="LibreOfficeにはCollabora Officeっていう派生版があって、これがマルチユーザーで使える機能を持ってるんだよ。完全にOSSじゃないけど、もしその機能が必要ならこれがあるよ。" userName="wizzwizz4" createdAt="2025/06/12 13:35:36" color="#38d3d3">}}




{{<matomeQuote body="Collaboraはね、LibreOfficeにめちゃくちゃ貢献してる会社の一つなんだよ。" userName="trelane" createdAt="2025/06/12 15:42:55" color="">}}




{{<matomeQuote body="てかさ、LibreOfficeのUI／UXどうなの？マジでひどいよね。MS Officeと全然違うし、なんか変なFrankensteinみたい。OSSのオフィスアプリのスタンダードはLibreよりOnlyOfficeになってほしいな。OnlyOfficeってMS Officeとほぼ同じで、VBAじゃなくてJSでコーディングできるんだよ。" userName="fakedang" createdAt="2025/06/14 02:58:09" color="#785bff">}}




{{<matomeQuote body="＞「EntraとかIntune、OneDrive、Exchange Onlineみたいなのも替えるの？」って質問だけど、別に全部一度に替えなくていいんだよ。合うのが見つかったら替えればOK。技術だけじゃなくて、ロビー活動とか研修とか、デカい組織がMS離れするときには素人にはわかんない問題もいっぱいあるんだろうね。国レベルで脱Microsoftマニュアルなんて多分ないよ。" userName="marci" createdAt="2025/06/12 14:42:01" color="#ff5733">}}




{{<matomeQuote body="オーストリアの司法省はもう何年もLibreOffice使ってて、連邦計算センターがカスタマイズ開発してるらしいよ。これ良い流れだね。MSのBallmerみたいなのがまたミュンヘンに飛んできて不正なロビー活動とかしないか心配だけどさ。" userName="rcbdev" createdAt="2025/06/12 09:55:16" color="#45d325">}}




{{<matomeQuote body="MSのライセンス料って何千人分でFOSS代替の開発費にいっぱい充てられるんだよ。余計な費用もかかんないしね。大変なこともあるけど、バグ修正とかパフォーマンス改善とか、簡単な変更でもすっごく助かることはたくさんあるんだ。" userName="ahartmetz" createdAt="2025/06/12 11:42:52" color="#ff5c5c">}}




{{<matomeQuote body="それにさ、国内の開発者にお金払えるんだよ！アメリカに送るんじゃなくて、国内でお金が回るって結構大事なポイントだと思うな。" userName="trelane" createdAt="2025/06/12 15:48:38" color="">}}




{{<matomeQuote body="それはそうだけど、『お金浮いたから』って言って、そのお金でOpenOfficeのソフト改善に回すとは思えないけどね。" userName="EasyMark" createdAt="2025/06/12 21:57:54" color="">}}




{{<matomeQuote body="記事で触れてないけど、これ職員80人くらいの省庁本体の話で、もっとデカいDigitaliseringsstyrelsenとかDanmarks Statistikみたいな子会社は含まれてないんだって。でも、オーフスとコペンハーゲン両市が同じこと計画してて、こっちは職員8万人規模だから、そっちの方がよっぽどすごいことだと思うよ。" userName="gggggggoodlord" createdAt="2025/06/12 10:08:51" color="#ff5c5c">}}




{{<matomeQuote body="政府がもっと早くOSSに移行しなかったの、不思議だったんだよね。ライセンス料にすごいお金使ってるはずなのにさ。そのお金の一部をOSSに使えば、質を上げて、MicrosoftとかGoogleに縛られなくなると思うんだ。いろんな政府が協力すれば、オフィスソフトとかデザインソフトとか、みんな良いものを使えるようになるのにね。CADも同じ。最近久しぶりにFreeCAD試したら、スケッチからキューブ作ろうとしたらすぐ落ちるし、ミッドポイント拘束がないのが「何これ！」って感じだった。" userName="clejack" createdAt="2025/06/12 11:19:41" color="">}}




{{<matomeQuote body="OSSが好きだけど、お金を出すだけじゃ大手のクローズドソースソフトには勝てないと思うんだ。明確な方向性とか目標が必要だけど、委員会で作るとなかなかそうならないんだよね。" userName="basisword" createdAt="2025/06/12 11:26:55" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それはわかるけど、委員会のやり方次第だと思うんだ。OSS開発の場にいないから構造は知らないけどさ。UIとかデザインも技術的な機能と同じくらい大事だよね。だって、誰も使えない良いアイデアは悪いアイデアだもん。<br>OSSのコードを設計するために技術チームが協力できるなら、テーマとかUX、デザイン哲学だけを考えるデザインチームもいてもいいんじゃない？もちろん、そういうチームをサポートするお金があることが前提だけどね。良いデザイナーは「無料で働く」っていうのにはあまり乗ってこなさそうだしね。お金があればもっと良い人材を呼べるし、OSSチームもちゃんとした構造にしないと硬直化しちゃうよ。" userName="clejack" createdAt="2025/06/12 12:27:39" color="">}}




{{<matomeQuote body="政府なら、外国企業に全部コントロールされるためにお金を払うより、自分たちのインフラを作るにお金を使った方が理にかなってるよ。Ozempicの例みたいに、世界一肥満率が高い国（アメリカのことかな？）が、特許を守らずもっと安く作り始めて、対立がエスカレートして、ソフトウェアのアップデートが止まったりロックされたり、とかもあるかもしれない。もちろん、そんなシナリオは核攻撃されるのと同じくらいありえないと思うけど、どの政府もバンカーとか指揮センターはあるのに、みんなMicrosoftみたいなアメリカ企業に全部任せちゃってるのがOKみたいに見えるんだよね。<br>しかも今は一から作る必要すらないし、ほとんど何でもOSSの代替がある。政府がお金を出せば、それらを改善できるし、他の政府もそれに触発されて改善したりできるんだよ。" userName="chaosbolt" createdAt="2025/06/12 11:27:42" color="#ff5c5c">}}




{{<matomeQuote body="もしアメリカが制裁したら、Microsoftみたいなアメリカ企業が合法的にアップデートを送るのがすごく難しくなるだろうね…。だから、対立がエスカレートする可能性の一つだよ。" userName="datadrivenangel" createdAt="2025/06/12 12:45:01" color="">}}




{{<matomeQuote body="君が探してるミッドポイント拘束は、＞＜ ←これに見える対称拘束のことだよ。" userName="twarge" createdAt="2025/06/12 12:34:11" color="">}}




{{<matomeQuote body="デンマークの法務チームに、Tritium（https://tritium.legal）はLinuxで動くって誰か教えてあげて！前のスレッドでも言ったけど、Microsoftの多くの産業への支配力は異常だよ。Copilot + OpenAIやAzureでさらに広がってる。このままMicrosoftが推し進めると、今後数年は暗いかもね。デンマーク、頑張れ。" userName="piker" createdAt="2025/06/12 10:32:47" color="">}}




{{<matomeQuote body="数年前の記憶だと、デンマークの企業や政府はMicrosoftエコシステムにかなり深く入り込んでたな。ライセンス料、どんだけ払ってたんだろう！もう2025年なのに、もっと安い／無料（あるいはOSS）のオンラインオフィスソフトで済ませられないの？私は個人PCにはMS Office入れてないよ。Docとかxlsxファイルは、Google Docsか、複雑ならLibreOfficeを使ってる。" userName="reacharavindh" createdAt="2025/06/12 09:53:42" color="">}}




{{<matomeQuote body="https://www.onlyoffice.com/ をチェックしてみて。正直かなり良いよ。OSSでマルチプラットフォーム、今まで試したファイル全部開けた。LibreOfficeは好きだけど、時々変なdocxファイルで動かなかったんだよね。" userName="Wololooo" createdAt="2025/06/12 10:19:12" color="#ff5733">}}




{{<matomeQuote body="それはそんなにオープンじゃないよ。デスクトップエディタを自分でビルドしてみて？ビルドシステムの一部はドキュメント化されてないし、リポジトリにも含まれてない。それにこれはロシアのP7 Officeのブランド変更だよ。会社はロシアと関係を切ってないし、軍にも売ってる。オーナーはラトビアとシンガポールに複数のシェルカンパニー作って隠してる。EU政府がこれを信用するとは思えないな、ソース全部しっかり検査して、EUエンティティの下でフォークしない限りね。https://discuss.privacyguides.net/t/serious-claims-made-agai..." userName="okanat" createdAt="2025/06/12 15:20:50" color="#38d3d3">}}




{{<matomeQuote body="会社のMacBookにMS Office入れてないけど、ブラウザ版とかPages/Numbersでなんとかなってるよ。ExcelでCSVのカンマ問題とかあるから、避けてるおかげでCSV読みやすくなったし。他の人は大変そうだけど、一緒に仕事してても困ったことないな。" userName="freehorse" createdAt="2025/06/12 10:20:09" color="">}}




{{<matomeQuote body="2025年にもなって、もっと安いやつ、無料のオープンソースのオンライン版使えないわけ？<br>オンライン！？<br>政府データを保存したり作業したりするのに、オンラインのものは一切使うべきじゃないでしょ。" userName="bbarnett" createdAt="2025/06/12 10:50:43" color="">}}




{{<matomeQuote body="前にも言ったけど、ここが転換点になってMSはデンマークからほぼ消えると思う。それがデンマークのやり方なんだ。<br>https://news.ycombinator.com/item?id=44238752<br>個人的には楽しみだよ。MSが特に悪いとは思わないけど（最近使ってないからわからんけど）、OSはコモディティ化してるし、MSのホットキーとか便利だけど、個人的な恨みがあるんだ。<br>昔、デンマークの政府IT部門で働いてたとき、MSのひどい製品を使わされて、MSの連中にも文句言われたり、Bill Gatesが首相にデンマークはMSが必要だけどMSはデンマークを必要としてないとか言ってるのを聞いたりしたからね。だから、デンマークがMSを“必要としなくなる”のを見たら、個人的にはめちゃくちゃ嬉しいね。" userName="bryanrasmussen" createdAt="2025/06/12 10:15:55" color="#45d325">}}




{{<matomeQuote body="政府はもっとオープンソースプロジェクトに資金を出すべきだよ。デンマークにはうまくいきそうな統治モデルがあるっぽい。ソフト書くの好きな人多いし、内発的な動機はあるから、資金があればもっと進むはず。<br>ただ、ちょっと微妙な問題もあるかも。例えば、国家が特定のオープンソースソフトを強く支援しすぎると、“国家支援のベーパーウェア”になっちゃう恐れもあるんだよね。“デンマークがオープンソースイニシアチブxyzを開始！”とか言っても、外部から無理やりやらせてるから、動機付けの面で中途半端になっちゃう、みたいな。だから、もっと緩やかな金銭的な後押しが良いと思うな。" userName="mettamage" createdAt="2025/06/12 11:31:25" color="#ff5733">}}




{{<matomeQuote body="6ヶ月未満で移行全部計画してるんだってね。「Held og lykke」（幸運を祈る）だよ。こういう移行計画って、大体Microsoftとの交渉戦術に見えるんだよね。" userName="chuckadams" createdAt="2025/06/12 11:22:47" color="">}}




{{<matomeQuote body="LibreOfficeはひどいね。あれで何かできる人がいるなんて信じられないよ。Wordは嫌いだけど、あれの本当の代替を見つけるのは不可能。OnlyOfficeはもっと評価されるべき。Wordの代替として一番近いよ。" userName="udev4096" createdAt="2025/06/12 13:34:48" color="">}}




{{<matomeQuote body="＞ Wordは嫌いだけど、あれの本当の代替を見つけるのは不可能。<br>Wordを使ったことがない者として聞きたいんだけど、代替を見つけるのが難しいほどWordで何してるの？<br>俺は、軽いメモとかバージョン管理したいものは軽量マークアップ言語、重いものはTeXか、軽量マークアップをPDFとかに変換してるんだけど、何か見落としてる？" userName="tasuki" createdAt="2025/06/12 14:25:03" color="">}}




{{<matomeQuote body="＞ 代替を見つけるのが難しいほどWordで何してるの？<br>他の組織が作ったファイルを開いて、正確に表示されることを期待したり、それを編集して正確に返したりすることだよ。" userName="Suppafly" createdAt="2025/06/14 08:24:44" color="#ff5c5c">}}




{{<matomeQuote body="LibreOfficeがどう「ひどい」の？ こういうこと言う人よく聞くけど、個人的には問題を感じたことないんだよね。正直、ワープロ自体あまり使わないけど、使ってたときも全然問題なかったよ。" userName="seanw444" createdAt="2025/06/12 14:54:19" color="">}}




{{<matomeQuote body="LibreOfficeって、見た目とか仕上がりがイマイチで、あんまり改善されてないんだよね。起動も遅いし（Microsoft Officeもだけど）。どのフォークを使うか迷うのも面倒。まぁ、それ以外の大きな問題はないけど。<br>複雑なExcelやWordファイルだとたまにうまく動かないことがあるよ。例えば、あるソフトで作って別のソフトで編集して、また元のソフトで見ると、フォーマットが崩れてガッカリすることも。そういう時はPDFにして変更履歴でやり取りする人もいるけどね。<br>あと、複数人での共同作業は別として、Google Docsよりは全然マシ。Google Docsは見た目はいいけど、ちゃんと読み込まれなかったり、簡単な表計算もサーバーとのやり取りでめっちゃ遅かったりするからさ。" userName="toast0" createdAt="2025/06/12 15:37:52" color="">}}




{{<matomeQuote body="LibreOfficeで俺が必要なことは全部できるんだよ。<br>だって、ほとんどの人はどんなアプリでも機能のほんの一部しか使わないんだから。" userName="v5v3" createdAt="2025/06/12 14:46:59" color="">}}




{{<matomeQuote body="個人で使うならそうだけど、組織が大きくなればなるほど、全ての機能が使われる可能性が1に近づくんだ。そうなると、ソフトの問題じゃなくて、ビジネスのワークフローとか、再訓練とか、ツールの再整備の問題になるんだよ。" userName="kube-system" createdAt="2025/06/12 15:16:04" color="">}}




{{<matomeQuote body="ほとんどの事務スタッフは、手紙書くとか簡単なことしかしないよ。目次とか画像が入った複雑なドキュメントなんて作らないんだ。<br>前に働いてた会社では、スタッフの99%にはOffice 365の基本的なオンライン機能だけ渡してて、もっと高いプランは必要な人だけに提供してたよ。" userName="v5v3" createdAt="2025/06/12 16:26:35" color="">}}




{{<matomeQuote body="同じアプリでも複数のティアを使うのは良い戦略だよね。<br>Microsoft OfficeとLibreOfficeを混ぜて使うのも確かに選択肢だけど、それがうまくいくかは組織のワークフロー次第。みんなが同じツールを使ってる場合は問題にならない相互運用性のリスクが出てくるからね。" userName="kube-system" createdAt="2025/06/12 17:06:27" color="">}}




{{<matomeQuote body="LibreOfficeをすごく頑張って使ってみたんだけど、OnlyOfficeが良い感じだったよ。" userName="tomjuggler" createdAt="2025/06/12 16:14:48" color="">}}




{{<matomeQuote body="アメリカ人は、トランプがアメリカのサービスへの信頼にどれだけダメージを与えたか分かってないね。ヨーロッパ人は昔、アメリカを他のヨーロッパ諸国と同じ盟友だと思ってたけど、今は信用できない貿易相手みたいな感じだよ。<br>Microsoftはヨーロッパを安心させようとしたけど（[1] https://blogs.microsoft.com/on-the-issues/2025/04/30/europea... ）、わずか1ヶ月も経たないうちに、トランプの制裁でICC主席検察官 Karim Khanのメールアカウントを停止させられたんだ（[2] https://nltimes.nl/2025/05/20/microsofts-icc-email-block-tri... ）。これでMicrosoftの安心させようとした動きは完全に無効になったね。もしトランプがデンマークにグリーンランドをくれないって怒って、Microsoftにデンマークのサービスを止めさせたらどうなる？<br>ヨーロッパの大きな会社や政府はみんな、どうやってアメリカのサービスから離れるか考え始めてる。すぐにできることじゃないかもしれないけど、話し合いには確実に出てきてるよ。顧客も新しいシステムはアメリカのサービスプロバイダーから独立してるべきだって specifically request するんだ。<br>俺の考えでは、ダメージはもう与えられてしまって、トランプがいなくなっても消えないだろうね。ヨーロッパ人は、critical infrastructure の面で本当に信頼できる唯一の味方は、他のヨーロッパ諸国だって気づいたんだ。昔はアメリカも含まれてたけど、もう違うね。" userName="Tangokat" createdAt="2025/06/12 11:32:26" color="#785bff">}}




{{<matomeQuote body="フランスの欧州問題担当大臣が「ヨーロッパの安全保障を4年ごとのWisconsinの有権者の手に委ねるわけにはいかない」って言ってたのはこれだね。" userName="Herring" createdAt="2025/06/12 11:39:19" color="#38d3d3">}}




{{<matomeQuote body="それこそトランプが望んでることみたいだね。自国の防衛やグローバルな権力投射をアメリカの納税者に完全に依存しないヨーロッパを望んでるんだ。ドイツみたいに、そこからかなり遠い国も多いけどね。フランスはその点ではもっとリーダーシップを発揮してる。<br>ただ、アメリカの商業ソフトウェアから wholesale に離脱すると、すでにある以上に自国の安全保障やGDPをさらに悪化させる可能性が高いけどね。" userName="dmix" createdAt="2025/06/12 13:54:10" color="#ff33a1">}}




{{<matomeQuote body="防衛とか権力投射って、めちゃくちゃお金がかかるし、テクノロジーはとんでもなく labor intensive なんだよね。平均的なEU市民は、年間15日の有給休暇と週50〜60時間労働に耐えられる？<br>これは別に皮肉じゃなくて、 genuinely そう思うんだ。だって平均的なヨーロッパの労働者は、キャリアのほとんどをかなり cushy で労働者に優しい環境で過ごしてきたわけで、アメリカ式の death-race productivity とか、昔ながらのヨーロッパ式の death-race productivity に耐えられるとは思えないんだ。平均的なアメリカの労働者は、ドイツの counterpart より年間500時間も多く働いてる。それは annually で62.5日分も多いんだよ。その差を埋めようとしたら、みんな暴動を起こすだろうね。防衛費を増やすために社会保障を削ったり、定年年齢を上げたりするなんて考えられない。ロシアのエネルギーを避けるなんて論外。ヨーロッパは、ただ bond をいくつか発行するんじゃなくて、社会全体を wholesale rewrite する必要があるんだ。<br>それよりは、4年間耐えて、アメリカが正気に戻るのを待つ方が resistance が少ないんだよ。" userName="Workaccount2" createdAt="2025/06/12 16:11:09" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
