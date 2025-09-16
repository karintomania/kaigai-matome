+++
date = '2025-09-09T00:00:00'
months = '2025/09'
draft = false
title = 'ICEが偽基地局でスマホを盗聴・監視！個人情報が丸裸に？'
tags = ["監視", "プライバシー", "偽基地局", "ICE", "セキュリティ"]
featureimage = 'thumbnails/green2.jpg'
+++

> ICEが偽基地局でスマホを盗聴・監視！個人情報が丸裸に？

引用元：[https://news.ycombinator.com/item?id=45184368](https://news.ycombinator.com/item?id=45184368)




{{<matomeQuote body="EFFがCell-siteシミュレータを検出するオープンソースツール「rayhunter」をリリースしたよ。ハードは20ドルで簡単設定。行政機関に狙われてる地域に住んでるなら、これ持っておくといいよ！<br>https://github.com/EFForg/rayhunter/" userName="aduffy" createdAt="2025/09/09 17:25:12" color="#ff33a1">}}




{{<matomeQuote body="EFFのツール、Microsoftのインフラを全面的に信頼してるけど、米国はMicrosoftに悪意あるペイロードを仕込ませるかもよ。GitHubはMicrosoftが管理してるし。Microsoftは米国の情報機関と巨額の契約があるし、Snowdenリークの時みたいに協力した前例もあるんだ。<br>https://www.theguardian.com/world/2013/jul/11/microsoft-nsa-..." userName="perihelions" createdAt="2025/09/09 17:36:58" color="#45d325">}}




{{<matomeQuote body="Gitのコミット履歴ってMerkleツリー構造だから、もし誰かが悪意のあるペイロードを注入しようとしたら、変なコミットメッセージが出て、開発者ならすぐに気づくでしょ？それに、コード署名もできるし、これからそうなるべきだよ。" userName="throw0101d" createdAt="2025/09/09 17:55:31" color="">}}




{{<matomeQuote body="敵が完全にコントロールしてるチェックサムなんて信頼できないよ。Merkleツリーは、クライアントが既に持ってる部分が改ざんされた場合に防ぐもの。コード署名はこのリポジトリでは使われてないし、透明性ログも存在しないから意味ないんだ。<br>結局、今はMicrosoftを全面的に信頼するしかないんだよ。" userName="perihelions" createdAt="2025/09/09 20:05:59" color="#785bff">}}




{{<matomeQuote body="誰かがこのツールを使ってICEのタワーを見つけて、破壊したら残念なことになっちゃうね。" userName="junebash" createdAt="2025/09/09 20:43:02" color="">}}




{{<matomeQuote body="開発者はコードをローカルマシンに持ってるでしょ？Gitは分散型VCSなんだから、各チェックアウトがそれ自体で完全なGitハブなんだよ。" userName="marginalia_nu" createdAt="2025/09/09 21:35:50" color="">}}




{{<matomeQuote body="GitHubは人によって違うバイトを提供できるんだよ。開発者には正しいコード、他の人にはマルウェアとか。Gitは分散型VCSとして設計されてるけど、実際は多くのプロジェクトでGitHubがMITMになってる。<br>開発者間で履歴を分岐させても、誰も気づかないかもね。GitHubは信頼できないよ。" userName="perihelions" createdAt="2025/09/09 21:51:52" color="#ff5c5c">}}




{{<matomeQuote body="この「残念なこと」ってのは、むしろ名誉の証だよ、友達！" userName="Imustaskforhelp" createdAt="2025/09/09 21:06:53" color="">}}




{{<matomeQuote body="EFFの検出器って、Stingrayが合法か違法か区別できるの？弁護士たちはどう思ってるんだろうね。BJAのプログラムのリンクも見てみて。<br>https://bja.ojp.gov/program/it/privacy-civil-liberties/autho..." userName="anonymousiam" createdAt="2025/09/09 17:39:02" color="">}}




{{<matomeQuote body="「敵対者にチェックサム構造を完全に制御されてるGitを信用する理由がわからない」って言うけど、Gitは分散型だから、開発者は自分のローカルコピーを持ってるんだよ。<br>もしMicrosoftがチェックサムをいじったら、次のプルやプッシュでバレちゃうはずだけどね。" userName="rstuart4133" createdAt="2025/09/09 21:46:56" color="#ff5c5c">}}




{{<matomeQuote body="「次のプルやプッシュでバレる」って言うけど、GitHubにプッシュやプルするなら、GitHubが完全なMITMになって、開発者同士で互換性のないリポジトリビューの間で、チェックサムツリーをダイナミックに変換できちゃうよ。" userName="perihelions" createdAt="2025/09/09 22:41:05" color="#ff5c5c">}}




{{<matomeQuote body="そうは言っても、ローカルからプッシュしようとしたら、Gitが「上流のリポジトリと合ってないよ」って文句を言うはずだけどね。" userName="saagarjha" createdAt="2025/09/09 23:46:51" color="#ff5c5c">}}




{{<matomeQuote body="それ、冗談でも言わない方がいいかもよ。熱心だけど頭がごちゃごちゃしてる人がネットのチャットに感化されて、連邦刑務所送り（か、もっと悪いこと）になっちゃうかもしれないしね。<br>そういう攻撃は、実行犯にとって望ましくない追加行動の口実になるだけだと思うよ。" userName="neilv" createdAt="2025/09/10 06:07:51" color="">}}




{{<matomeQuote body="よくわからないんだけど、それってどうやって動くの？チェックサムって内容で計算されるんだよね？内容を変えずに有効なままチェックサムツリーを変換するなんて、どうやるんだろ？素人考えだから完全に間違ってるかもしれないし、教えてくれる？" userName="cycomanic" createdAt="2025/09/09 23:08:22" color="">}}




{{<matomeQuote body="ソースに干渉するのは大変だよね、うん。リリースファイルがいちばん改ざんしやすい場所だと思うな。<br>たいていGitHubのインフラに保存されてるから、ファイルも変えられるし、ダウンロードページのチェックサムも改ざんできる（ターゲットによっては違うファイルと違うチェックサムを提供することもできる）。<br>ビルドが完全に再現可能じゃないと、捕まえるのは難しいだろうね。" userName="stephen_g" createdAt="2025/09/10 02:48:32" color="#38d3d3">}}




{{<matomeQuote body="多分、GPはMicrosoftが一部のユーザーだけに悪意あるソースツリーとかバイナリを提供する場合の話をしてるんだと思うよ。それは見つけるのがかなり難しいよね。<br>でも、そういうシナリオだと、CAエコシステム全体の状態についても疑問を投げかけ始める必要があるんじゃないかな。" userName="untitaker_" createdAt="2025/09/09 20:53:29" color="#ff5c5c">}}




{{<matomeQuote body="違うよ。GitHubは君が誰か覚えていて、君にだけ、君の偽のリポジトリビューと一致する偽のチェックサムを教えるんだ。<br>君のGitクライアントは何もおかしいと思わないだろうね。ローカルの偽チェックサムが、サーバーが送ってきた偽チェックサムと一致してるから。<br>君のプッシュを受け入れた後、サーバーは偽チェックサムを無視して、君のパッチの内容を抽出して、本物のリポジトリに適用し、新しいチェックサムを計算する。<br>まるで君が直接プッシュしたかのようにね。それがMITMだよ。" userName="perihelions" createdAt="2025/09/10 00:01:34" color="#785bff">}}




{{<matomeQuote body="ちょっとしたお知らせだけどさ、もし政府が人をブラックサイトに連れて行っちゃうかもって心配しなきゃいけない状況なら、かなりヤバいことになってるよ。" userName="sho_hn" createdAt="2025/09/09 22:22:15" color="">}}




{{<matomeQuote body="なんでスマホはこれをできないんだろうね？<br>例えば、自分の家の周りにある基地局は”知ってる”はずだよね。<br>もし突然新しい基地局が現れたら、アラートを出せばいいのに。" userName="HumblyTossed" createdAt="2025/09/10 02:38:50" color="#ff5c5c">}}




{{<matomeQuote body="これはさ、誰かとハッシュを共有したらすぐに破綻しちゃうんだよ。<br>プルリクエスト（PR）を送るときなんかまさにそうだよね。" userName="saagarjha" createdAt="2025/09/10 00:04:55" color="">}}




{{<matomeQuote body="Arch Linuxのmakepkgみたいなパッケージビルダーなら簡単に検出できるよ。<br>ソースURLと一緒にハッシュを配布してるからね。<br>もし誰かが違うファイルを受け取ったら、警告が出て、改ざんされたパッケージが後で分析できるように残るんだ。" userName="tstenner" createdAt="2025/09/10 10:05:40" color="#785bff">}}




{{<matomeQuote body="偽の携帯基地局を運用するのって、技術的にFCCの規制に違反しないの？<br>FCCに報告して罰金を受けさせたり、撤去させたりする可能性はないのかな？" userName="elihu" createdAt="2025/09/10 00:55:16" color="#ff5733">}}




{{<matomeQuote body="「Gitクライアントは持っていないコミットをサーバーに伝えるので、これは簡単にチェックできる」ってのはダメだね。<br>クライアントはまず、サーバーにOIDを持つ参照（ls-refs）のリストを要求するんだ。<br>改ざんされたソースツリーを渡したクライアントと、参照を要求しているクライアントが同じだと識別する別の方法がないと、fetchは失敗するよ。" userName="Aloisius" createdAt="2025/09/10 02:26:57" color="">}}




{{<matomeQuote body="可能性はあるけど、もし彼らのインフラが侵害された証拠が明らかになって、誰かがそれに気づけば、Microsoftの評判にとってかなり致命的だよね。<br>Sourceforgeがインストーラーにアドウェアをバンドルし始めて、潰れたのと同じように。" userName="philihp" createdAt="2025/09/10 09:10:00" color="#785bff">}}




{{<matomeQuote body="彼らがコンテンツを変更するってのがポイントだよね。<br>特定のターゲットにはマルウェアコンテンツと、そのマルウェアと全履歴に一貫したチェックサムを提供するんだ。<br>それらのチェックサムは、被害者にはGitHubから直接受け取った自己一貫した履歴に見えるだろう。<br>開発者は異なるチェックサムツリーを扱うことになり、GitHubは両方のバージョンを維持して、誰が要求するかによって異なるコンテンツとチェックサムを提供するってわけ。" userName="perihelions" createdAt="2025/09/09 23:34:03" color="#785bff">}}




{{<matomeQuote body="技術的にはMerkle DAGだね。" userName="RS-232" createdAt="2025/09/09 19:43:05" color="">}}




{{<matomeQuote body="どちらも正しいよ。<br>コミット履歴はMerkle DAGで、各コミット下のツリーはMerkle treeなんだ。" userName="goku12" createdAt="2025/09/10 04:56:31" color="">}}




{{<matomeQuote body="言った通り、敵が米政府なら、個人を標的にした不正なTLS証明書発行だってやりかねないよ。" userName="untitaker_" createdAt="2025/09/10 10:21:47" color="">}}




{{<matomeQuote body="米政府のような敵から安全にソースコードやバイナリをホストする方法は多くないし、特に技術に疎いユーザーを守るのは難しいと思うよ。CAsだって対象外じゃないって考えなきゃね。" userName="untitaker_" createdAt="2025/09/09 21:08:29" color="">}}




{{<matomeQuote body="追加情報だよ：https://san.com/cc/exclusive-evidence-of-cell-phone-surveill...<br>デモ直前の午前8:58には異常なし。でも9:06には57個のIMSI露出コマンドを検知。その後1時間にわたり、約10分ごとに同様のバーストが発生し、合計574個のIMSI露出メッセージを確認したよ。<br>2つの”attach reject”メッセージもフラグされ、これは通常稀な現象。IMSIキャッチャーが接続をブロックしたり、IMSIを暗号化前に取得するのに使う可能性もあるって。<br>翌日デモがない時に追跡スキャンしたら、リアルタイムアラートは出なかったってさ。" userName="josefresco" createdAt="2025/09/09 16:51:44" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="つまり、ICEが憲法違反で、デモ参加者の第一修正条項の権利行使を追跡しリスト化してるって推測されるんだよね。<br>”スキャン後の分析で574個のIMSI露出メッセージが確認された”ってことは、約574人のデモ参加者がいたってことだね。完全に独裁的な暴政だよ。2014年にキエフのマイダン広場でのデモで、プーチンのオリガルヒがウクライナ人にしたことと同じだ。IMSIキャッチャーを使って参加者リストを作り、脅迫したんだ。詳細はこちら：https://slate.com/technology/2014/01/ukraine-texting-euromai..." userName="perihelions" createdAt="2025/09/09 17:09:22" color="#38d3d3">}}




{{<matomeQuote body="令状がなかったって、どうしてわかるの？" userName="tiahura" createdAt="2025/09/09 17:38:13" color="">}}




{{<matomeQuote body="デモを対象にした包括的な令状なんて、明白な憲法違反だよ。" userName="perihelions" createdAt="2025/09/09 17:39:54" color="">}}




{{<matomeQuote body="カバノー判事の最新の補足意見を読んだら、そう言い切れない気がするな。" userName="cosmicgadget" createdAt="2025/09/09 18:06:23" color="">}}




{{<matomeQuote body="行為が法的に承認されたかどうかは、ここではあまり関係ないよ。君はそれを理解できてないみたいだから、はっきり言うね。独裁的に動く政府は、やりたいことを何でもお墨付きにするんだ。<br>FISAの数字を見てみればわかる。https://www.motherjones.com/criminal-justice/2013/06/fisa-co... によると、33年間で33,900件の監視令状請求のうち、却下されたのはたった11件。承認率は99.07%だよ！だから、令状があっても何も変わらなかっただろうね、彼らは簡単に発行するから。<br>記事では”ICEはSANからのコメント要請に応じなかった。ICEや他の法執行機関がIMSIキャッチャー（通称”Stingray”）使用の令状を取得したかどうかは不明だ”って言ってるよ。" userName="lordhumphrey" createdAt="2025/09/09 18:36:47" color="#ff5c5c">}}




{{<matomeQuote body="裁判所は、政府が不当な監視や脅迫で合法的なデモ活動を萎縮させてはならないと繰り返し判示してるよ。確かに”匿名性の権利”は明示されてないけど、NAACP対アラバマ州事件（1958年）などで最高裁判所は、会員リストの強制開示が第一修正条項の権利を侵害し、参加を抑制すると認めたんだ。<br>もちろん、第四修正条項には”不合理な捜索と押収”に対する条項もある。憲法専門家じゃないけど、カーペンター対アメリカ合衆国事件（2018年）のような現代の判例（令状なしの携帯電話位置追跡を制限した）から、なぜこれが問題視されるか理解できるはずだよ。<br>憲法は、合法的な表現に対する政府の報復からリスクが生じないように努めてる。なぜ君はそれをこんなにも許容したがるのか聞きたいね。" userName="some_guy_nobel" createdAt="2025/09/09 18:53:45" color="#785bff">}}




{{<matomeQuote body="大統領が最高裁判所判事を任命するのを良いアイデアだと思った奴は、世間知らずのバカだよ。" userName="Yeul" createdAt="2025/09/09 20:32:47" color="">}}




{{<matomeQuote body="会員リストの強制開示は良くないね。でも、匿名で抗議する権利があると思ってる覆面デモ隊とは違う。デモ参加者は誇りを持って身元を隠すべきじゃない。ここはプーチン（Putin）のロシアじゃないんだから、デモで無差別に人を誘拐したりしない。でも、”平和的な抗議”と称して街を破壊する奴らは逮捕して裁判にかけるべきだよ。" userName="xp84" createdAt="2025/09/09 19:02:12" color="#785bff">}}




{{<matomeQuote body="彼らを正当化するのをやめない？彼らは法や憲法、良いことやポジティブなことなんて全然気にしてないのは明らかだよ。" userName="analognoise" createdAt="2025/09/09 18:01:28" color="">}}




{{<matomeQuote body="フォーブス（Forbes）が確認した最近開示された捜索令状によると、ICEはオレム（Orem）、ユタ（Utah）州の個人を追跡するために、そういったセルサイトシミュレーター（cell-site simulator）を使ったんだ。記事を読んだ時に見逃したんじゃない？" userName="tiahura" createdAt="2025/09/09 17:50:19" color="#45d325">}}




{{<matomeQuote body="ある行動が法的にOKかどうかはここではあまり関係ないって？いやいや、これ以上関係あることなんてないよ。そんな行動が合法でありうるってことは、アメリカ（US）で何が合法で許容されてるかの現状を如実に物語ってる。これは現在の政権のほとんど全てのことと同様に、トランプ（Trump）だけの話じゃなくて、少なくとも過去20年間ずっと燻り続けてきた問題だよ。" userName="Levitz" createdAt="2025/09/09 19:55:32" color="#45d325">}}




{{<matomeQuote body="アタッチリジェクト（Attach Rejects）には原因値があるべきで、もう少し詳しい拒否理由がわかるかもしれないね。よく見るけど、ほとんどは許可されてないネットワークでローミング（roaming）しようとしてるスマホだよ。あと、セル（cell）が少し過負荷だったり、スマホが間違ったトラッキングエリア（tracking area）を送ってる場合もある。これはスマホのバグなのか、古いトラッキングエリアを保持してて、接続しようとして、違うエリアにいることに気づいてから正しいエリアに接続するって一般的なシナリオなのかは確信が持てないね。" userName="noselasd" createdAt="2025/09/09 21:03:06" color="#ff5733">}}




{{<matomeQuote body="俺が返信してる記事[0]は、ワシントン（Washington）州トゥクウィラ（Tukwila）での政治的な抗議活動についてだよ。<br>[0] https://san.com/cc/exclusive-evidence-of-cell-phone-surveill..." userName="perihelions" createdAt="2025/09/09 17:58:38" color="#38d3d3">}}




{{<matomeQuote body="憲法のどの部分が、俺が抗議中に匿名である権利を保障してるかって？それは修正第4条：不合理な捜索と押収だよ。これは不合理な捜索だ。あと、抗議は市民的不服従（civil disobedience）じゃない。市民的不服従は市民的不服従だ。抗議は修正第1条によって明示的に保護されてるから、一日中抗議しても問題ないんだ。" userName="const_cast" createdAt="2025/09/09 18:54:29" color="#ff33a1">}}




{{<matomeQuote body="第四修正条項から始めるべきだね。（第一修正条項の方が適切かもだけど、第四も超関係あるよ。）<br>あと、政府がファシストで、気に入らないことを言っただけで投獄されると思ってるなら、それが実際に起きてるよ。URLで確認してね: https://www.msn.com/en-us/crime/general/tourist-refused-entr..." userName="boston_clone" createdAt="2025/09/09 18:48:44" color="#45d325">}}




{{<matomeQuote body="でも、上院司法委員会と上院全体が投票するんだよ。2018年のKavanaugh氏の承認投票は50対48だったのを覚えてる？Lisa Murkowski（共和党・AK）は反対、Susan Collinsは賛成、Joe Manchin（民主党・WV）も賛成したんだ[0]。Susan Collinsの「控えめな穏健派」って態度はついに終わりだね、たぶん何十年も前からそうなるべきだったんだよ[0]: https://en.wikipedia.org/wiki/Brett_Kavanaugh_Supreme_Court_..." userName="smcin" createdAt="2025/09/10 06:54:12" color="#785bff">}}




{{<matomeQuote body="僕が返信してる記事は、親コメントの「独占：反ICE抗議デモで携帯電話監視の証拠が検出された」ってやつだよ。Hacker Newsの元の記事じゃないんだ。" userName="perihelions" createdAt="2025/09/09 17:38:27" color="">}}




{{<matomeQuote body="残念だけど、アメリカの政治は赤と青の内戦みたいになっちゃったね。これも予測されてたのに対応されなかったことの一つだと思うよ。政党の設立がね。" userName="Yeul" createdAt="2025/09/10 10:31:15" color="">}}




{{<matomeQuote body="「これって独裁政治が強まってる兆候なの？」って意味では関係あるけど、「令状があるからってこれでおっけーなの？」って意味では関係ないよ。<br>親コメントの人は、令状があってもその行為が独裁的じゃなくはならないって言ってると思うんだ。で、君は別の考え（令状なんて全然関係ない）に反対してて、令状は重要だって言ってるけど、逆の意味でね。つまり、令状があるなら、それは国家のチェック＆バランスが失われてるってことなんだって。" userName="anecdatas" createdAt="2025/09/09 21:09:49" color="#785bff">}}




{{<matomeQuote body="うーん…パラノイアはわかるけど、これって監査記録が役に立たないって言ってるの？<br>つまり、高い通過率ってのは、偽の要求が少なくて、必要な情報が欠けてるものもない、ちゃんと機能してるシステムだってことを示してる可能性もあるんだよ。<br>令状を要求することが最善の行動を保証する？いや、しないよ。でも、悪用された時に責任を追及するしっかりした道筋や、より良いルールを法制化する道筋は提供してくれるんだ。" userName="taeric" createdAt="2025/09/09 21:49:04" color="#38d3d3">}}




{{<matomeQuote body="IMSIキャッチャーは「公然と見えてるもの」を観測してるわけじゃないよ。あれは、限定的な状況を除いて第四修正条項が禁じてる、侵襲的な捜索なんだ。<br>第一修正条項は、保護された政治的言論がそういった捜索の根拠に使われることを排除するし、第四修正条項はさらに、「差し押さえられる人や物を特定して記述する」令状を要求するから、デモのような不特定多数の人々に対する無差別な捜索も禁じてるんだ（特定条項）。<br>政府が公共空間で起こってることを単に受動的に観察する、今回のケースとは違う状況の君のコメントには完全に同意するよ。IMSIキャッチャーは別物で、一つは、Stingrayが許可なくデバイスと積極的にやり取りして、破損したパケットを送るって点（僕の理解ではね）。二つ目は、「公的」と「私的」についての一般的な社会の期待に反する点だよ。例えば、警察がレーザーマイクで遠くの会話を聞いたり、公共の群衆でテラヘルツ波を使って人の服の下を見たりするようなものだね。物理学的にどうこじつけても、あれらは非公開の捜索だよ。" userName="perihelions" createdAt="2025/09/09 19:03:52" color="#ff5c5c">}}




{{<matomeQuote body="「今年初め、新しいメディアのStraight Arrow Newsは、ワシントン州でのICEの強制捜査に対する抗議デモの周りで、『Stingrayの使用と一致する携帯電話ネットワークの異常』を分析したと語った」ってさ。" userName="exe34" createdAt="2025/09/09 17:48:33" color="#785bff">}}




{{<matomeQuote body="IMSIキャッチャーは広範囲に機能するから、特定の人物を狙うにしても広範な盗聴になっちゃう。まるで一つの家を盗聴するのに近所全部の電話を盗聴するようなもんで、昔からプライバシー問題とされてるよ。" userName="dmix" createdAt="2025/09/09 17:52:20" color="#38d3d3">}}




{{<matomeQuote body="SANは怪しい基地局トラフィックの発生源を特定しないけど、Marlinシステムは位置特定や送信元特定を試みるのかな？通常の携帯会社もStingrayとか令状なしで、加入者のIDを勝手に集めて保存できるんじゃないの？彼らは位置情報とか通信内容も集めてるみたいだし。" userName="notherhack" createdAt="2025/09/09 22:33:28" color="">}}




{{<matomeQuote body="Attach Rejectは個々のスマホで起きるけど、それがたくさんのデバイスで同時に起こるってことは、ネットワーク側の問題を示してるんだ。それに、セルタワーのハンドオフは普通Attach Rejectを必要としないし、ごく普通のルーティン作業だよ。" userName="542354234235" createdAt="2025/09/10 12:29:26" color="#ff33a1">}}




{{<matomeQuote body="ベネズエラみたいな権威主義政府が、たった一人の殺人犯をアメリカに送り込むだけで、アメリカも同じような権威主義政府に変えちゃうなんて、もしそうならすごいね。9.11の犯人たちはビルを壊したかったんじゃなくて、アメリカ社会を破壊したかったんだ。そして、どうやら彼らは成功したみたいだよ。" userName="xrd" createdAt="2025/09/09 17:21:53" color="">}}




{{<matomeQuote body="カストロも1980年のMariel Boatliftで同じようなことをしたよ。でもアメリカの衰退は外部の誰かのせいじゃなくて、ギリシャやBabylonとかと同じで、全ての覇権国家が経験する100～200年の「興隆→支配→衰退」っていうサイクルの一部なんだ。Oswald Spenglerの「Rise and Fall of the West」を読んでみて。" userName="kps30" createdAt="2025/09/09 17:46:01" color="">}}




{{<matomeQuote body="誰も歴史なんて気にしないみたいだね。ここ10年のアメリカはひどいSci-Fiホラー映画みたいだよ。みんな政治の話はするけど、政治家が法律を守ってるかどうかなんて気にしない。ほとんどのSCOTUSは政党の手先だし、POTUSはマフィアみたいなチンピラ。この「サイクル」は世界中に影響を与えてて、もう既にそうなってる部分もあるんだ。" userName="bloomingeek" createdAt="2025/09/09 19:19:01" color="">}}




{{<matomeQuote body="前のコメントで言ってたベネズエラの殺人犯は、実際に存在しなくてもそういうことって起こりえるんだよ。" userName="pjc50" createdAt="2025/09/09 19:02:30" color="">}}




{{<matomeQuote body="例えば、MS-13ギャングの危険人物だと決めつけて、適正な手続きなしに国外追放し、加工したタトゥー写真を使って主張することもできるんだ。犯罪防止とか雇用の保護って名目で、やりたい放題ね。そんなこと、「法と秩序」の国であるアメリカで起こるわけないよね。って、皮肉だよ。" userName="xrd" createdAt="2025/09/09 22:19:32" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="WacoでのFBI襲撃に右翼が怒ってた頃を覚えてるよ。誰もConstitutionなんて気にしてなくて、結局はイデオロギーが全てなんだ。ICEが移民をターゲットにしてるから、みんな強制捜査なんて気にしないんだね。" userName="Yeul" createdAt="2025/09/10 10:34:46" color="">}}




{{<matomeQuote body="簡単に起こりうることだよ。メキシコの治安トップが、カルテル幹部の家族17人がTrump政権との取引で先週アメリカに入国したって認めたんだ。<br>https://www.nbcnews.com/news/amp/rcna206917<br>共和党がなんでこんな政権を支持し続けるのか、俺には理解できないね。大統領が犯罪者を助けてるって知らないのかな？" userName="dpkirchner" createdAt="2025/09/09 18:49:02" color="#ff5733">}}




{{<matomeQuote body="カルトの元ボスが米国当局と交渉してるらしいな。他の犯罪組織のメンバーを売る代わりに、家族は保護してもらうって話だろ。Department of Justiceがオファーを出してるって。証言と引き換えに身の安全を確保してる感じだな。" userName="like_any_other" createdAt="2025/09/09 20:13:19" color="">}}




{{<matomeQuote body="大統領は犯罪者だろ。在任中に法律やConstitutionを何度も破ってるし。もう、こんな政権を支持してる奴らは臆病か悪意があるかのどっちかだよ。" userName="autoexec" createdAt="2025/09/09 20:33:10" color="">}}




{{<matomeQuote body="大統領が犯罪者だって言ってるけど、POTUSとしてはまだ有罪判決は出てないぞ。全部「らしい」でしょ。" userName="dylan604" createdAt="2025/09/09 21:30:56" color="">}}




{{<matomeQuote body="大統領の有罪判決は無理じゃないか？Supreme Courtが彼の支配下にあって、「公務」における犯罪は許されるって判決を出してるからな。ケースバイケースだってさ。" userName="autoexec" createdAt="2025/09/09 22:08:28" color="">}}




{{<matomeQuote body="裁判所だけじゃない。弾劾して有罪にするって方法もあるぜ。Trumpはそれも、自分の党がCongressを牛耳ってるから無理だと考えてたんだろ。大統領の不品行をどうするかって話で。" userName="dylan604" createdAt="2025/09/10 13:46:13" color="">}}




{{<matomeQuote body="彼は有罪判決を受けた犯罪者だろ。New Yorkで詐欺の罪で有罪になったんだからな。" userName="malcolmgreaves" createdAt="2025/09/11 08:46:22" color="">}}




{{<matomeQuote body="だからあのオレンジマンは国境を守ってるんだろ。" userName="GLdRH" createdAt="2025/09/09 17:36:15" color="">}}




{{<matomeQuote body="5億ドルもかけて壁を塗るのが、Venezuelanの殺人犯から身を守ることになるってのが理解できないな。カラフルな毒カエルみたいに避けるのか？<br>https://factually.co/fact-checks/politics/border-wall-paint-..." userName="xrd" createdAt="2025/09/09 17:43:03" color="#38d3d3">}}




{{<matomeQuote body="国境の壁なんて意味ないだろ。だから人種プロファイリングがまた始まったんだ。市民はICEに身分証を見せる必要はないはずなのに、昨日のSCOTUSで覆された。Home Depotで肌が茶色いだけでICEに逮捕されるって話だぞ。" userName="vkou" createdAt="2025/09/09 17:57:18" color="#38d3d3">}}




{{<matomeQuote body="「壁を建設しろ」ってのがTrump 45の時は超重要だったのに、Trump 47では完全にスルーされてるのが面白いな。たった4年でなんでこんなに重要じゃなくなったんだ？…あー、もういいや。" userName="dylan604" createdAt="2025/09/09 21:32:42" color="">}}




{{<matomeQuote body="9/11でWTCに飛行機をぶつけた人たちは、建物を壊すのが目的じゃなく、アメリカ社会を破壊するのが目的だったって読んだことあるよ。建物破壊はただの足がかりだったんだ。で、彼らは成功したように見えるって話だけど、いや、それって後付けで誰かが全部作り話にしただけだよ。" userName="apwell23" createdAt="2025/09/09 18:41:28" color="">}}




{{<matomeQuote body="アル・ザワヒリの『預言者の旗の下の騎士たち』っていう本で、派手な攻撃はU.S.にやり過ぎさせ、経済的に疲弊させ、その弱点を露呈させるべきだって主張されてたんだって。これ2001年の出版で、9/11のわずか2ヶ月後だよ。" userName="vlabakje90" createdAt="2025/09/09 20:11:17" color="">}}




{{<matomeQuote body="今の政権の専制的な政策が、ブッシュ2世やオバマ政権時代の政策に根ざしてるって疑うのは間違ってるかな？当時はもっと地味なニュースが出た時に、将来の起こりうる結果について警告されてなかったっけ？" userName="tolerance" createdAt="2025/09/09 18:50:28" color="">}}




{{<matomeQuote body="まさにこのことについて俺は話してたんだ。みんなは俺をイカれた変人だと思ってただろうね。こうなるよ、見ててごらん：強制収容所ができる。大量の国外追放にはそれが必須だ。送る側と受け入れる側の両方の同意が要るからね。受け入れ側で滞ったり、送る側が無能だと倉庫にぶち込むしかない。これはどんな物流でも避けられない。俺が狂ってるって感じるだろうけど、それこそ俺が言ってることだよ。また1年くらいしたら会おう、このコメントにリンクするからさ。" userName="kristopolous" createdAt="2025/09/09 20:18:51" color="">}}




{{<matomeQuote body="普段は政治的なコメントは避けてるんだ。このアカウントが俺の身元と職業に紐付いてるから、普通はそういうのを結びつけない方がいいって言われてるしね。だから、決して軽い気持ちじゃなく、同意するし、これは俺にとって本当に深刻な懸念だよ。" userName="stuartjohnson12" createdAt="2025/09/09 20:37:02" color="">}}




{{<matomeQuote body="心配するべきだったのは10〜15年前だよ。あの時すでに、こうした戦術が常態化されてたし（手段に問題があるならね）、今の移民問題につながる政策が考えられてたんだから（結果に問題があるならね）。" userName="potato3732842" createdAt="2025/09/09 21:37:13" color="">}}




{{<matomeQuote body="日陰のために木を植える話になぞらえると、『次に心配するのに最適な時期は、今だ』ってことだよ。" userName="boston_clone" createdAt="2025/09/10 16:30:13" color="">}}




{{<matomeQuote body="大規模な不法移民を許してきた人たちは、結果を考えるべきだったんじゃないかな。" userName="account42" createdAt="2025/09/10 10:57:46" color="">}}




{{<matomeQuote body="この件に対する一般的な意見は、過去20年間でオーバートン・ウィンドウがかなり変化したことを示唆してるね。じゃあ、また後で確認しようか…5〜10年後に会おう。" userName="tolerance" createdAt="2025/09/09 23:59:33" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
