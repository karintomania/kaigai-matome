+++
date = '2025-06-03T00:00:00'
months = '2025/06'
draft = false
title = 'EUの大規模監視提案、誰が作った？委員会は公開拒否！'
tags = ["EU", "監視", "プライバシー", "規制", "透明性"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> EUの大規模監視提案、誰が作った？委員会は公開拒否！

引用元：[https://news.ycombinator.com/item?id=44168134](https://news.ycombinator.com/item?id=44168134)




{{<matomeQuote body="statewatchの記事によると、新しいEUの提案は“技術中立で将来性のある調和されたデータ保持制度”を求めてるって。全サービス対象で、データの保持とアクセスを保証しつつプライバシーも守るってさ。でも以前のEU法はプライバシー侵害で却下されたんだ。電子証拠アクセスや、捜査機関がデータen clair（平文）にアクセスできる必要性も書いてある。詳しくは見てみて→https://www.statewatch.org/news/2024/june/policing-by-design..." userName="Hilift" createdAt="2025/06/03 10:35:01" color="#ff5733">}}




{{<matomeQuote body="High-Level Group (HLG) の提言を読んでみたよ。SIRIUSみたいなプラットフォームを作って、ハードウェアメーカーも含めて捜査機関へのデータアクセス方法を共有したいみたい。lawful access by designを技術に組み込む技術ロードマップも作るって。特に暗号化データも含めたlawful accessの義務付けが技術的に可能か研究グループも作るらしい。セキュリティやプライバシーは守るって言ってるけど、要するに監視拡大とソフト・ハードへのバックドアを狙ってるってこと。PDF読んでみて→https://home-affairs.ec.europa.eu/document/download/1105a0ef..." userName="nickslaughter02" createdAt="2025/06/03 11:13:17" color="#ff33a1">}}




{{<matomeQuote body="暗号化されたデータにアクセスできて、同時にそのデータが“安全”だって言ってるのはおかしいよね。そんなことできるわけないって前から言われてるじゃん。両立しないよ。" userName="amarcheschi" createdAt="2025/06/03 10:36:56" color="#ff5733">}}




{{<matomeQuote body="Homomorphic encryption (FHE) っていう技術を使えば、データの中身を実際に見なくても、暗号化されたままデータについて何かを知ることができるんじゃない？" userName="reliabilityguy" createdAt="2025/06/03 11:06:39" color="">}}




{{<matomeQuote body="いやいや、それは違うよ。Homomorphic encryption (FHE) は、キーを持ってる人が、持ってない人にデータの中身を知られずに特定の処理をさせるためのものなんだ。データを知らない人に情報が漏れないように、すごく注意深く作られてるんだから、あなたが言ってることとは逆だよ。" userName="tsimionescu" createdAt="2025/06/03 11:15:42" color="#ff33a1">}}




{{<matomeQuote body="でも問題はね、たとえFHEを使ったとしても、その“処理”が何を調べてるのかが、このシステムを実行する人たち以外には全く分からないってことなんだよ。それが違法なものなのか、政治活動家なのか、それとも中絶を探してる女性なのか…何も分からないまま使われる可能性があるよね。" userName="josefx" createdAt="2025/06/03 14:41:15" color="">}}




{{<matomeQuote body="FHEを使って解析して、その結果を第三者も利用できるようにシステムを設計することはできるんだよ。FHE自体には、そういう設計を妨げる機能は何もないからね。" userName="reliabilityguy" createdAt="2025/06/03 11:46:03" color="">}}




{{<matomeQuote body="それって、出力がyesかnoみたいに小さければ、yesを暗号化してみて、noを暗号化してみて、どっちが一致するか試す（brute-force）みたいな方法のこと？それとも、もっと大きな結果にも使えるテクニックがあるの？詳しく教えてほしいな。" userName="wizzwizz4" createdAt="2025/06/03 19:10:29" color="">}}




{{<matomeQuote body="そうだね、秘密鍵を持っていれば、結果を誰にでも公開できるのは確かだよ。でも、その場合はFHEを使う必要もなければ、何かメリットがあるわけでもないんだ。" userName="tsimionescu" createdAt="2025/06/03 12:49:43" color="">}}




{{<matomeQuote body="いや、FHEにはメリットがあるんだよ。ユーザーはデータがデバイスから全然出ないって分かってるし、解析もそこで行われるんだ。そして結果だけが共有される。FHEとenclaveみたいな技術を組み合わせたら、パフォーマンスの問題は別として、そういう目的にすごくいいんじゃないかなって思うんだ。" userName="reliabilityguy" createdAt="2025/06/03 14:32:08" color="">}}




{{<matomeQuote body="自分のキーで暗号化されたデータは誰も触れないんだよ。他に必要な情報はない（暗号化が安全ならね）。俺の秘密キーがないと何も取り出せない。<br>FHEは形式的にはこの特性を持つ技術: <br>Program（Encrypted（data, key））<br> = Encrypted（Program（data）, key）<br>FHEを使えば、他人のハードウェアで俺のデータを安全に処理して、結果を知るのは俺だけって確信できる。でもデータが俺のPCにあって外に出したくないなら、FHEは完全に無意味。<br>あんたが本当に求めてるのはTrusted Computingみたいなやつだよ。政府が分析内容を決めて俺のPCに送り、俺のPCが複合データで分析して結果を政府に返す。政府はアルゴリズムが完全に実行されたと確信できる形にするんだ。もちろん、政府が平文データを要求できないように、どんな分析ができるか制限は必要だけどね。" userName="tsimionescu" createdAt="2025/06/04 10:50:07" color="#45d325">}}




{{<matomeQuote body="暗号技術の専門家じゃないから詳しいことは言えないけど、Thornについて探してたらFTMの記事で”今はまだ無理”って研究者が言ってるのを見つけたよ。たぶんこの記事かこの記事かな。どっちも有料記事だけどごめん。<br>https://www.ftm.eu/articles/ashton-kutchers-non-profit-start...<br>https://www.ftm.eu/articles/ashton-kutcher-s-anti-childabuse...<br>追記: ”無理”ってのは、大規模にやるのが計算的にすごく大変ってことね。" userName="amarcheschi" createdAt="2025/06/03 11:12:35" color="#ff5c5c">}}




{{<matomeQuote body="何が無理なの？Homomorphic encryptionのこと？<br>提供されたリンク、有料記事じゃん。" userName="reliabilityguy" createdAt="2025/06/03 11:14:06" color="">}}




{{<matomeQuote body="ああ、有料記事でごめんね。<br>Web Archiveのリンクはここだよ。<br>http://web.archive.org/web/20241210080253/https://www.ftm.eu..." userName="amarcheschi" createdAt="2025/06/03 11:18:37" color="">}}




{{<matomeQuote body="正確に何を学べって？Homomorphic encryptionは、暗号化したままデータに数式操作ができる技術だよ。X+1はデータに適用できるけど、それでもXが1か2か3か他の値かは分からない。<br>こんな全部をひっくるめても、EUが常にデータプライバシーを侵害して、金正恩スタイルの大規模監視を導入しようとしてるのにはマジで腹立つね。彼らが主張するようなプライバシー保護なんてこれっぽっちもないよ。" userName="7bit" createdAt="2025/06/03 11:40:45" color="">}}




{{<matomeQuote body="それ面白いね。Homomorphic encryptionで何か役立つことできるの？<br>例えば、政府が”I am planning an attack”って文字列を含むコンテンツだけフラグ付けたいとするじゃん？暗号化したまま、それってできるの？" userName="falcor84" createdAt="2025/06/03 11:15:46" color="#45d325">}}




{{<matomeQuote body="政府だけでやるのは無理。システムは使う人のデバイス上にないと。じゃないとキーがバレて全部ダメになる。<br>あるいは、Metaみたいなサービスプロバイダーがやることはできるかもね。どうせ俺たち、End to end encryptionとか任せちゃってるんだから。" userName="reliabilityguy" createdAt="2025/06/03 12:19:13" color="">}}




{{<matomeQuote body="思い出してよ、「EUは人間の尊厳、自由、民主主義、平等、法の支配、人権尊重といった核心的価値観に基づいて設立された」んだって。どうせ、非EU国にはこれからもこれらのことで教訓を与え続けるんだろうね。" userName="Zealotux" createdAt="2025/06/03 11:05:44" color="">}}




{{<matomeQuote body="ちょっと気になったんだけどさ、欠陥や後退があるにしても、これらの問題について他の国にお説教できるような、EUよりマシな国や組織ってある？ ロシア？ 中国？ イラン？" userName="libertine" createdAt="2025/06/03 11:30:32" color="#785bff">}}




{{<matomeQuote body="＞ The US.<br>USだよ。EUは民主的じゃなくて官僚的な組織で、常に現在の官僚以上の正当性なんてないって言っていい。今、委員会や理事会には話す価値のある人間は誰もいないね。<br>大統領に欠陥はあるけど、USには民主的なチェックアンドバランスがあるんだ。" userName="seydor" createdAt="2025/06/03 11:43:31" color="#ff5c5c">}}




{{<matomeQuote body="＞ The US. The EU is a bureaucratic institution, not a democratic one,<br>USには非公選の選挙人団が大統領を選んでて、一番票を集めた候補が負けたこともある民主主義システムがあるんだぜ？<br>その大統領が露骨に政治的な意図で国の最高裁判所を変えたり、既存の法律や憲法を再解釈したりもする。<br>＞ At this time there are 0 people worth talking about in the Commission or the council<br>欧州委員会は人気投票なんかする必要ないんだよ、ソーシャルメディアの無関係な奴じゃなくて政府の首脳に責任を負ってるんだから。" userName="ChocolateGod" createdAt="2025/06/03 12:06:30" color="#38d3d3">}}




{{<matomeQuote body="今のUS大統領って、2016年の選挙が盗まれたって言って暴動を煽動し、民主主義的な機関を攻撃した奴らを恩赦したんじゃなかったっけ？ 今もチェックアンドバランスを全部解体しようとしてて、仮想通貨で資金源を隠しながら稼いでるんじゃないの？ これが君の民主主義の模範かよ？<br>＞ At this time there are 0 people worth talking about in the Commission or the council.<br>個人崇拝でどうするんだ？ 話す価値のある人物が必要な理由は何？ 例えば、Trumpは悪い理由でみんなが話してるけど、それが価値があるってこと？ EUのことあんまり知らないだけみたいだよ。" userName="libertine" createdAt="2025/06/03 12:23:46" color="#785bff">}}




{{<matomeQuote body="Trumpは他のどのUS大統領と同じように2028年にはオフィスを去るさ。今と違うのは、多くの新しい問題で世界中が極端に二極化してることだけ。<br>俺は元々ロシア出身だけど、これを真剣に読めないね。うん、USの民主主義に問題はある。でもまだ機能してるし、ロシアで見るものよりLIGHT YEARS進んでる。USをナチスドイツや他の抑圧的な体制と比較するのは全く狂ってるよ。言葉の価値を下げてるだけで、本当に大変な時がきても適切な言葉が見つからなくなる。" userName="l11r" createdAt="2025/06/03 12:45:47" color="#ff5c5c">}}




{{<matomeQuote body="USにはPopular Voting Systemはないけど、だからといってUSが非民主的ってわけじゃない。ちゃんとした理由があるんだ。<br>Electoral Collegeは特別好きじゃないけど、その歴史とか、議員が国民に反して投票したケースは興味深いし、いくつか（多く？）はチェックアンドバランスの例だよ。<br>チェックアンドバランスはいつも君の望み通りになるとは限らない。それは民主主義の失敗じゃなくて特徴だよ。" userName="lttlrck" createdAt="2025/06/03 13:05:39" color="#785bff">}}




{{<matomeQuote body="＞ it’s accountable to the heads of governments<br>EUはEU諸国の政府首脳を選んだりクビにしたりするのに積極的に関わってるだろ。委員会のトップが何かで責任を問われたケースはゼロだよ。実際、今の委員長はテキストメッセージを隠したことでEU裁判所に有罪判決を受けたんだ。誰が、どうやって彼女に責任を取らせるんだ？<br>俺はEUには賛成だけど、そのひどいリーダーシップを現実を逆転させるような議論で擁護するのは誰のためにもならないよ。" userName="seydor" createdAt="2025/06/03 12:18:11" color="#45d325">}}




{{<matomeQuote body="＞ Trump will leave office in 2028 just like any other US president.<br>Trumpは堂々と3期目のアイデアをもてあそんでるし、どうやって達成するかについても話してるだろ。どうして彼が2028年にオフィスを去るとそんなに確信できるんだ？<br>＞ I am originally from Russia and I cannot read this seriously. Yes, there are problems in US democracy. But it still works and LIGHT YEARS ahead of what you can see in Russia.<br>なんでロシア、ナチスドイツ、他の抑圧的な体制と比較してるって考えになるのか分からないよ。他の国や組織で民主主義についてお説教するのにUSより良い位置にあるのはどこか？って質問したんだ。<br>USが現在、制度的・民主主義的な危機にあると認めることは、ロシアだって意味じゃなくて、間違った方向に進んでるって意味だよ。" userName="libertine" createdAt="2025/06/03 13:08:02" color="#38d3d3">}}




{{<matomeQuote body="＞ The EU actively engages in selecting and canceling heads of governments in EU countries<br>欧州委員会が政府や選挙を’キャンセル’した例をリンクしてくれないか？" userName="ChocolateGod" createdAt="2025/06/03 12:24:19" color="">}}




{{<matomeQuote body="アメリカには国民の直接投票システムがないんだ。それにはちゃんと理由があって、だからといって非民主的ってわけじゃない。もし俺の一票がお前の100万倍の価値があっても、それってまだ民主主義って言える？極端な例だと、たった一人の支配者の一票が全員分より重い場合とか。どこで線引くべきか、って話だよ。" userName="dataflow" createdAt="2025/06/03 14:44:08" color="">}}




{{<matomeQuote body="欧州司法裁判所なら、こういうやり方（監視提案のことかな）を違法だって判断する可能性もまだあると思うな。" userName="amarcheschi" createdAt="2025/06/03 11:13:59" color="">}}




{{<matomeQuote body="トランプが三期目の話をちらつかせてるって？あれはただのブラバ（おしゃべり）だよ。正直、みんな両側から洗脳されてるだけ。予測市場を見てみれば、トランプが退任しない実際の確率は分かるけど、俺的にはせいぜい5%ってとこだね。アメリカが民主主義の危機なのはわかるけど、ヨーロッパだってそう！健康な民主主義はもう小さい国にしか残ってないかもね。でも、アメリカはまだその灯を保ってると思う。" userName="l11r" createdAt="2025/06/03 13:25:00" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="あなた、「直接の国民投票がないなら非民主的」って言ってるけど、それだとドイツもアメリカも非民主的ってことになるよ？他にもいっぱいそうなる国があるはず。イギリスだって違うかな。それはあなたの定義だけど、じゃあそういう政府をどう呼ぶの？ロシアみたいに選挙やってる国とどう区別する？言い方がすごく二元的すぎるんだよ。「国民投票があるか、最低レベルの非民主国か」みたいにね。" userName="illiac786" createdAt="2025/06/04 06:41:58" color="">}}




{{<matomeQuote body="「EUの元域内市場担当委員であるThierry Breton氏が、先週末のフランスのテレビインタビューで、ルーマニア憲法裁判所（CCR）がEUの圧力に屈したことを認めた。」反EU、反NATOの右派ポピュリスト候補、Călin Georgescu氏が第一回投票で勝利した後、先月ルーマニアの選挙を無効にしたんだって。<br>https://europeanconservative.com/articles/news/former-censor..." userName="nickslaughter02" createdAt="2025/06/03 12:53:09" color="#785bff">}}




{{<matomeQuote body="「言い方がすごく二元的だ」って？違うよ。俺はただ二つの極端な例があることを指摘して、どこで線引くべきか、って親コメントに聞いただけでしょ。俺がどこに線を引くべきかなんて何も言ってないよ。それだけ。" userName="dataflow" createdAt="2025/06/04 06:59:14" color="">}}




{{<matomeQuote body="別に何もないけど？EUはもう何年も個人の自由とプライバシーを積極的に攻撃してきたくせに、まるで聖人君子みたいに振る舞うのはやめるべきだと思うんだよね。" userName="Zealotux" createdAt="2025/06/03 11:46:00" color="#ff5c5c">}}




{{<matomeQuote body="「欠点や後退があるにせよ、これらの問題（民主主義や自由とか？）について他の国や組織より講釈を垂れるのに適した国や組織はどこか？」って質問だけど、色んな国に住んでみたらいいよ。しばらくしたら、「より良い」なんて形容詞は自分の文には合わないって気づくかもね。" userName="hulitu" createdAt="2025/06/03 20:54:42" color="">}}




{{<matomeQuote body="これはどう？<br>https://www.europarl.europa.eu/doceo/document/E-10-2025-0011...<br>https://www.europarl.europa.eu/doceo/document/P-10-2025-0001..." userName="seydor" createdAt="2025/06/03 13:01:52" color="#38d3d3">}}




{{<matomeQuote body="トランプとその一派がやったクソみたいなことを見れば、アメリカにいまだに民主的な抑制と均衡（チェック＆バランス）があるなんて主張は、率直に言って笑っちゃうね。" userName="lawn" createdAt="2025/06/03 12:28:20" color="">}}




{{<matomeQuote body="毎年何千人も殺さない機関なんてないよね。<br>直近の年間死亡者数：<br>- 地中海：2,000〜3,000人以上（60%は溺死）<br>- プッシュバック/Frontex：数百人（Frontexの行動に関連して2,000人死亡）<br>- 国境/キャンプ：数十人〜数百人（冬にピーク、過少報告）<br>EUのひどいやり方を調べてるNGOやジャーナリストは少なすぎるよ。でも、俺たちヨーロッパ人は絶対に偉ぶって誰かに人権を説くべきじゃない。俺たち欧州人が選んだ奴らにこんなことさせてるなんて恥ずかしいことだよ。" userName="sdoering" createdAt="2025/06/03 11:51:21" color="">}}




{{<matomeQuote body="ロシアの政治システムから光年離れてるんじゃなくて、普通の年数離れてるってことには同意だよ。５年とは言わないけど、こういうのが10～15年続けばアメリカはロシアとそっくりになるだろうね（政府の形態として）。もしトランプの後にVanceが引き継いだら、トランプがいなくて寂しくなる気がするよ。でも俺はロシア出身じゃないんだ、家族の一部はそうだけどね。だから俺は半分専門家ってとこかな ;)" userName="illiac786" createdAt="2025/06/04 06:49:12" color="">}}




{{<matomeQuote body="＞先月、ユーロ懐疑派で反NATOの右派ポピュリスト候補、カリン・ジョルジェスクが第一回投票で勝利した後に、大統領選挙が無効になったんだって。この人はロシア（テロ支援国家）から未申告の外国資金を違法にもらってたってこと？" userName="libertine" createdAt="2025/06/03 13:14:36" color="">}}




{{<matomeQuote body="edriの記事を読む価値ありだよ。https://edri.org/our-work/high-level-group-going-dark-outcom...<br>チャットコントロールについて倫理的なエッセイ書いたんだけど、委員会に不満ってだけじゃ足りないね。色々あるけど、ちょっとだけ書くよ：<br>・チャットコントロール議論中、europolは他分野への規制拡大をすでに考えてた<br>・欧州委員会はthornのデータに頼ってるけど、信頼性不明。FOIA開示拒否、オンブズマンは悪政と判断。https://www.ombudsman.europa.eu/en/decision/en/189484<br>・europolメンバーがthornに移籍、利益相反も。https://www.ombudsman.europa.eu/en/decision/en/200017" userName="amarcheschi" createdAt="2025/06/03 10:35:43" color="#38d3d3">}}




{{<matomeQuote body="これも読んでみて：「Going Dark expert group – EU’s surveillance forge」 https://www.patrick-breyer.de/en/posts/going-dark-expert-gro...<br>＞EU委員会は#EUGoingDarkグループ会議の参加者を隠してるんだって。何度も開示請求したけど、完全に黒塗りされた文書しか受け取れてないって。（マストドンでの彼の投稿）。わかってるのは警察や秘密情報機関が参加してることだけ。データ保護や基本的人権に関わる超デリケートな話題なのに、EUデータ保護監督官はオブザーバー扱い。NGOは参加させてもらえない。基本的人権は黙殺されてるのに、#EUGoingDarkグループはターゲット絞った監視PRでEU議会に影響を与えようとしてるんだ。" userName="nickslaughter02" createdAt="2025/06/03 10:48:01" color="#38d3d3">}}




{{<matomeQuote body="＞#EUGoingDarkは2023年6月にEU委員会が設立したEUワーキンググループの僕らのレッテルだよ。<br>おお、少なくとも「going dark」が反対派の非公式スローガンだって先に明かしてるんだね。それが必要かは分からないけど、「High Level Group on Access to Data for Effective Law Enforcement」って公式名称も十分に不気味だよ。" userName="bondarchuk" createdAt="2025/06/03 10:51:53" color="">}}




{{<matomeQuote body="High-Level Group（HLG）の公式メールアドレスはEC-HLG-GOING-DARK@ec.europa.euだよ。ウェブサイトはこちら。https://home-affairs.ec.europa.eu/networks/high-level-group-..." userName="nickslaughter02" createdAt="2025/06/03 11:00:45" color="">}}




{{<matomeQuote body="さらに悪いことに、7月から12月までデンマークがEU理事会の議長国になるんだ。彼らはChat Controlの主要な推進力の一つだよ。" userName="nickslaughter02" createdAt="2025/06/03 10:41:14" color="">}}




{{<matomeQuote body="何か情報源ある？推進してるのは主にスウェーデン委員（Ylva Johansson）だと思ってたんだけど。追記：信じてないって意味じゃなくて、もっと知りたいんだ。" userName="skrebbel" createdAt="2025/06/03 11:15:29" color="">}}




{{<matomeQuote body="”ChatControlは任意で安全なE2EE暗号化は免除されるべきだというポーランドの提案にEU理事会で過半数得られず。https://netzpolitik.org/2025/interne-dokumente-polen-gibt-ei...<br>秋には、新しいデンマーク議長国がChat Control 2.0の元の極端なバージョンを推し進めようとするだろう”https://digitalcourage.social/@echo_pbreyer/1145965873906841...<br>＞スウェーデン委員（Ylva Johansson）が推進<br>彼女はもう引退したよ。プライバシー重視のNGOとの面会を拒否して、監視ソフトを売ってるThornとは定期的に会合してたことで、かなり批判されてたね。" userName="nickslaughter02" createdAt="2025/06/03 11:21:07" color="#ff5733">}}




{{<matomeQuote body="Ylva Johanssonだけじゃないよ、彼女はただの”顔”だって記事があるから、ここ読んでみて！<br>https://balkaninsight.com/2023/09/25/who-benefits-inside-the..." userName="amarcheschi" createdAt="2025/06/03 11:18:10" color="#ff5733">}}




{{<matomeQuote body="Thornが出したデータの有効性を疑う理由って？北朝鮮、中国、ソ連のロシアとか、国民監視にはすごく効果的だったじゃん。例はいくらでも足していいよ。" userName="like_any_other" createdAt="2025/06/03 11:25:12" color="">}}




{{<matomeQuote body="だってThornはcsam検出ソフト売ってて、商業的な狙いがあるんだよ。もっとデータ出してるかもだけど情報がないから確認できない。機械学習使ってるだろうけど、Ai actだと高リスクAIは透明性の要件満たす必要あるはず。" userName="amarcheschi" createdAt="2025/06/03 11:33:58" color="#45d325">}}




{{<matomeQuote body="EUではもうスペイン、ポーランド、ハンガリーがPegasusで違法に野党政治家を監視してるんだよ。違法な手段使ってるなら、合法的な手段で手を抜く理由ないじゃん。" userName="miohtama" createdAt="2025/06/03 11:37:13" color="#ff5c5c">}}




{{<matomeQuote body="それは諜報機関とかの非公開なことだよね。ここで規制されてるのは”白昼堂々”の行為だよ。最高じゃないのは分かってるけど、それでもね。" userName="amarcheschi" createdAt="2025/06/03 11:38:41" color="">}}




{{<matomeQuote body="この規制で不正が止まると思う？ポーランドには野党監視に賛成した腐敗裁判官がいる。「でも委員会はあまりできないーCBAとPiSの裁判官の憲法裁判所が妨害。そんな環境じゃ、事実とメリットに基づいた仕事は無理。」<br>https://balkaninsight.com/2025/02/25/pegasus-in-poland-a-fli..." userName="miohtama" createdAt="2025/06/03 12:12:51" color="#45d325">}}




{{<matomeQuote body="規制っていうのは法律の不正使用を止めるんじゃなくて、合法的に何ができるかを言うために作られるものだよ。" userName="amarcheschi" createdAt="2025/06/03 12:44:22" color="">}}




{{<matomeQuote body="でも、この場合は規制だけじゃなくて、地球上のあらゆるデバイスに法律でバックドアを義務付けることだよ。不正利用を防ぐのは、そのバックドアを持たないことだ。" userName="miohtama" createdAt="2025/06/03 12:53:49" color="#ff5c5c">}}




{{<matomeQuote body="秘密の民主主義ってか？国民に逆らって、国民を信用せず、国民をナメてる。フォン・デア・ライエンを疑ってる。ドイツでも似たようなクソ推してたし、提案者を言わないなんて彼女らしさ全開。以前も平気で嘘ついてたしね。" userName="ahartmetz" createdAt="2025/06/03 13:44:07" color="">}}




{{<matomeQuote body="他国とかで、同じ法律を何度も提案したり、提案できなくなる前例ってある？<br>例えば、法案却下されたら、ちょっと書き直してまた消耗戦で出す、みたいなことができないように。<br>4回失敗したらもう二度と出せないとか、否決されるごとに今後10年は再提出不可とか、そういうのないかな。" userName="DoingIsLearning" createdAt="2025/06/03 11:54:59" color="#38d3d3">}}




{{<matomeQuote body="記事の元のタイトルは、「EU委員会は、事実上市民のオンラインプライバシーを終わらせる大規模監視提案の推進者を公開することを拒否している」だって。" userName="nickslaughter02" createdAt="2025/06/03 09:42:53" color="#38d3d3">}}




{{<matomeQuote body="結局さ、ヤツらが自分たちの行動にプライバシーを求める理由と、俺たちがプライバシーを求める理由って、全く同じなんだよな。" userName="AnimalMuppet" createdAt="2025/06/03 12:48:14" color="">}}




{{<matomeQuote body="世界中でさ、オーウェル的な動きをしてないところなんて、ある？" userName="Havoc" createdAt="2025/06/03 11:01:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="発展途上国の人の方が、実はもう自由なんだよ。政府はこういう法律をやりたがってても、国際的な企業にやらせるインフラとか力がまだないからね。" userName="nickslaughter02" createdAt="2025/06/03 12:32:17" color="">}}




{{<matomeQuote body="アメリカの技術製品を輸入してたら、そうとも言えないよ。<br>https://arstechnica.com/tech-policy/2023/12/apple-admits-to-..." userName="bigyabai" createdAt="2025/06/03 17:00:29" color="">}}




{{<matomeQuote body="あなたの話を聞いて、『意識は説明された』[0]を思い出したよ。そこでDennettはオーウェル的とStalinesqueアプローチの違いを説明してるんだけど、俺たちは同時に両方の最悪な世界に向かってる気がするな。一部の国は特にStalinesque的なやり方を強めてるし。<br>[0] https://en.wikipedia.org/wiki/Consciousness_Explained<br>[1] https://en.wikipedia.org/wiki/Multiple_drafts_model" userName="falcor84" createdAt="2025/06/03 11:30:59" color="#ff33a1">}}




{{<matomeQuote body="うん、Trumpの権威主義を嫌ってるのに、反対方向に行くどころか、並行する別の道を選んだってのは面白いね。" userName="BLKNSLVR" createdAt="2025/06/03 12:50:28" color="">}}




{{<matomeQuote body="それはまさに問うべき質問だね。極端に資本が集中するとこうなるんだ。どこでも起こってることだよ。" userName="1oooqooq" createdAt="2025/06/03 11:31:54" color="">}}




{{<matomeQuote body="北朝鮮、中国、EU、オーストラリアとか、経済の仕組みは全然違うのに、どこも監視したがるよな。政府が国民を監視したいっていうのは、どこも同じ欲求なんじゃないかと思うよ。" userName="spacebanana7" createdAt="2025/06/03 11:41:44" color="#ff33a1">}}




{{<matomeQuote body="今挙げられたとこは全部、経済とか政治の仕組みは違うけど、トップのごく一部に資本がすごく集中してるって共通点があるんだよ。" userName="Etheryte" createdAt="2025/06/03 12:13:48" color="">}}




{{<matomeQuote body="権力の集中ってこと？こういうのって金持ちが推し進めてるんじゃなくて、力を持ってる奴らがやってるんだよ。よく重なるけど、必ずしもそうじゃない。権力があってもそんなにお金持ちじゃない人はたくさんいる。例えばヨーロッパの政治家とか、裕福じゃなくてもすごく力持ってるじゃん。" userName="Jensson" createdAt="2025/06/03 15:03:32" color="">}}




{{<matomeQuote body="もっと一般的に言うと、権力の集中だね。国民が直接投票できるなら、こういうことやるのははるかに難しくなるよ。" userName="dgb23" createdAt="2025/06/03 11:39:47" color="">}}




{{<matomeQuote body="なのに、こういう点で先を行ってる国は「民主主義の砦」なんだよ（直接投票はないけどね）。ちょっと皮肉だよね。" userName="1oooqooq" createdAt="2025/06/03 12:20:07" color="">}}




{{<matomeQuote body="Crypto WarsやPGP、Patriot Act、FISAのスキャンダル、BULLRUNの各種暗号バックドアと乱数生成器妨害、TLS 1.3のフォワード・シークレシー問題、Twitter Files、それからVax Passportsやデジタルアイデンティティと、この問題を見てきたけど−こういう連中って絶対にいなくならないし、常に新しい世代が出てくる。テック業界の人間は警戒が必要だって、もう明らかになった。この戦いは決して終わらないんだ。" userName="motohagiography" createdAt="2025/06/03 10:53:08" color="#ff33a1">}}




{{<matomeQuote body="強い父親像を持てず、その心理的な欲求を満たすために政府の権威にしがみつく人間には事欠かないよね。" userName="transcriptase" createdAt="2025/06/03 11:40:37" color="">}}




{{<matomeQuote body="こういうことのほとんどは、国民の同意なしに秘密裏に行われるんだ。例えばPRISMを見てみろよ。あれに誰も投票してないし、存在がリークされた時はとんでもないスキャンダルになったじゃん。" userName="weberer" createdAt="2025/06/03 12:03:38" color="#ff5733">}}




{{<matomeQuote body="誰も責任を取らされない（比喩的にでも）なら、それは本当に大きなスキャンダルって言えるの？って思わない？" userName="account42" createdAt="2025/06/03 13:42:09" color="">}}




{{<matomeQuote body="正直、それは偏見だし、監視が続く理由とは全然違うね。地元のVerizonストアに行って、政府の監視から自由な製品を探してみろよ。電話充電器より複雑なものは、たぶん全部お前をスパイしてる。ポータブルホットスポット？バックドア付き。最新のタブレットやスマホ？これもバックドア付き。LinuxをインストールしたWWANラップトップ？タワーで閲覧データを収集される。もしアメリカ人が集団で「父親問題」を抱えててそれが監視を助長してるなら、十分な意識があればプライバシー問題は「解決」できるように見える。でも、解決できないんだ。最大の問題は、お前が金を使う全てのビジネスが、政府の強制に抵抗しようとしないことなんだ。" userName="bigyabai" createdAt="2025/06/03 17:06:42" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
