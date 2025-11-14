+++
date = '2025-11-07T00:00:00'
months = '2025/11'
draft = false
title = 'YouTubeがWin11回避ガイドを削除！「物理的危害の危険」ってどういうこと？'
tags = ["Windows11", "YouTube", "Microsoft", "PC", "セキュリティ"]
featureimage = 'thumbnails/purple7.jpg'
+++

> YouTubeがWin11回避ガイドを削除！「物理的危害の危険」ってどういうこと？

引用元：[https://news.ycombinator.com/item?id=45850963](https://news.ycombinator.com/item?id=45850963)




{{<matomeQuote body="Windows 11 ISOをマウントして、管理者コマンドプロンプトから指定のコマンドを実行すれば、サポート対象外のハードウェアでもWindows 10からWindows 11へアップグレードできるよ。2nd gen Intel CPUsくらいの古いPCでも、Pro、EDU、IOT版のアップグレードで使ってきたんだ。インストール画面はServerって出るけど、実際は違うから安心してね。" userName="WarOnPrivacy" createdAt="2025/11/08 00:43:45" color="#38d3d3">}}




{{<matomeQuote body="Windows 11はほとんどのハードウェアで問題なく動くのに、Microsoftはそうじゃないって言ってアップグレードを強制してるなんて、おかしいよね。" userName="fukka42" createdAt="2025/11/08 01:20:02" color="">}}




{{<matomeQuote body="MicrosoftはみんなにTPMチップを持たせたがってるんだよ。" userName="RobotToaster" createdAt="2025/11/08 10:47:20" color="">}}




{{<matomeQuote body="TPMは安全だって認識してるし、Win 11もTPMをサポートしてるよね？Microsoftがバックドアがあるって知られてるハードウェア要件を強制してるってのは、俺の誤解なのかな？" userName="luciferin" createdAt="2025/11/08 14:18:38" color="">}}




{{<matomeQuote body="TPMは全然安全じゃないよ。少なくともWindowsを使ってる時はね。<br>https://youtu.be/t1eX_vvAlUc" userName="web3-is-a-scam" createdAt="2025/11/08 15:06:40" color="#45d325">}}




{{<matomeQuote body="Microsoftは金儲けのために嘘をついてるんだよ。よくある手口だよね。" userName="yard2010" createdAt="2025/11/08 10:11:21" color="">}}




{{<matomeQuote body="サポートされてないCPUsは、Windows 11の主要なセキュリティ機能であるVirtualization Based Securityに対応してないんだ。<br>https://learn.microsoft.com/en-us/windows-hardware/design/de..." userName="p_ing" createdAt="2025/11/08 16:54:05" color="#ff5c5c">}}




{{<matomeQuote body="Windowsは提供されたコマンドラインオプションを解析できないよ。" userName="jqpabc123" createdAt="2025/11/08 21:18:58" color="">}}




{{<matomeQuote body="YouTuberじゃない情報源も持ってる？HSMっていうより、スパイチップだってことについて、もっと詳しく読める情報があると嬉しいな。" userName="jabwd" createdAt="2025/11/08 15:34:22" color="">}}




{{<matomeQuote body="LTSCとかIoTみたいなMicrosoftが作るファクトリーデブロード版でもこれ動く？アップグレードしたバージョンでもIoTとかLTSCの指定とデブロード状態は維持されるのかな？" userName="Der_Einzige" createdAt="2025/11/08 19:18:57" color="">}}




{{<matomeQuote body="LTSCとかIoT版で動くかって？Win11 LTSC/IoT 24H2 ISOでコマンド使ったよ。Win10 LTSC/IoT 21H2からWin11 24H2 LTSC/IoTにアップグレードできた。Dell Core2DuoとThinkpad T430っていう古いノートPC2台で試したんだ。" userName="WarOnPrivacy" createdAt="2025/11/08 19:39:18" color="#38d3d3">}}




{{<matomeQuote body="もっと多くのハードウェアで動けばWindows 11はもっと売れるのに。これでどうやって金儲けするんだ？<br>答えはね、OSをクラウドへのインターフェースに変えて、定期的な収益を得やすくしたいんだよ。そのためには、モバイルOSみたいにもっとロックダウンする必要がある。TPMがその手助けになるんだ。" userName="api" createdAt="2025/11/08 16:14:50" color="">}}




{{<matomeQuote body="HNのフォーマットで何か失われたのかもね。コマンドラインはこんな感じだよ: https://i.postimg.cc/VLHfF4H3/commandline.png<br>もしこれで正しいなら、もしよければ詳細を教えてほしいな。今使ってるOSとISOのこと。これで失敗したことないから、もし失敗するケースがあるなら知りたいんだ。" userName="WarOnPrivacy" createdAt="2025/11/08 21:33:13" color="">}}




{{<matomeQuote body="これで正しいよ。更新済みのWin10とMicrosoftから直接ダウンロードした最新の25H2 ISOを使ったんだ。少し特殊なのは、これは以前Win10 ProにアップグレードしたWin10 Homeのインストールだったことかな。あと、RufusでブータブルUSBドライブを作ったら、どうもインストールがこれをチェックしてるみたいなんだ。再フォーマットしてWinRARでISOをUSBドライブに展開したら、今インストール中（30％完了）だよ。最終結果はまた報告するね。" userName="jqpabc123" createdAt="2025/11/09 14:31:21" color="#38d3d3">}}




{{<matomeQuote body="Windows 10のサポートを打ち切るのは、人々をWindows 11にアップグレードさせるための大きな圧力だよね。ああ、それに動かすには新しいハードウェアも”必要”になるってわけか。" userName="dymk" createdAt="2025/11/08 16:32:38" color="">}}




{{<matomeQuote body="VBSはWindows 10にもあるし、Windows 11で”サポートされていない”CPUでも問題なく動くよ。" userName="rstat1" createdAt="2025/11/08 18:46:40" color="">}}




{{<matomeQuote body="通常のWindows 10からデブロード版Windows 11にするために、コマンドを修正できるかな？自動で動かすには、デブロード版ISOが必要なだけ？" userName="Der_Einzige" createdAt="2025/11/08 20:00:13" color="">}}




{{<matomeQuote body="Windows 10のサポート終了はすごく合理的な判断だよ。今やWindows 11に集中すべきだし、もうすぐ5年経つ。Windows 12も1、2年で出るんじゃないかな。完全に機能するOSを3つもサポートするのは大変だろ。新しいハードウェアのサポートも理解できる。Windows 11で32bitを廃止して、命令セットを少し上げたんだ。どこかで区切りをつけなきゃいけないし、モダンなCPUの性能向上を使わせてくれるのは嬉しいよ。不満なこともたくさんあるけど、これは納得できるね。" userName="Fabricio20" createdAt="2025/11/08 16:57:41" color="#ff5733">}}




{{<matomeQuote body="TPMについて学んだけど、”ネオクリッパーチップ”じゃないよ。ハードディスク盗難防止や起動時の整合性検証には優れてるけど、ルートオブトラストの確立が課題だね。resident codeがあるとTPMの秘密に簡単にアクセスできちゃうし、パスワード保護もバススニッフィングのリスクがある。平均的な消費者にとってのメリットはあまりないし、ゲームのアンチチートに使うのも馬鹿げてる。APIも分かりにくいし、万能薬というよりは自滅の道具みたい。" userName="verandaguy" createdAt="2025/11/08 20:14:16" color="#ff33a1">}}




{{<matomeQuote body="彼らはOSを売ってるから、ハードウェアじゃなくて、どっちにしても同じだけ儲かるよ。新しいハードウェアを要求するのは、攻撃の対象を減らして互換性リストを短くするためだよ。" userName="austin-cheney" createdAt="2025/11/08 15:00:05" color="">}}




{{<matomeQuote body="これは違うよ。Windows 10でサポートされてたCPUの全てがVBS機能をサポートしてたわけじゃない。MicrosoftはOEMに対してVBSを必須にしてるから、CPUのサポートが必要で、だからWindowsのCPU要件は約7年前までなんだ。セットアップ中にVBSを無効にすることはできるけど、それはあくまで回避策。なぜシステムをより安全じゃなくしたいのかは、読者のみんなが2週間後にWindowsのセキュリティについて文句を言う時に考えてみてよ。" userName="p_ing" createdAt="2025/11/08 19:55:10" color="#ff5c5c">}}




{{<matomeQuote body="君の投稿に追記の返信をしたよ。ISOをWindowsの外でドライブとしてマウントしたら、君と同じ問題にぶつかったんだ。<br>https://news.ycombinator.com/threads?id=WarOnPrivacy#4586361...<br>Windows内からISOをマウントすると、アップグレード中心のインストーラーが起動するみたいだね。" userName="WarOnPrivacy" createdAt="2025/11/09 18:33:00" color="">}}




{{<matomeQuote body="もう32ビットx86のサポートは辞めてもいいと思うな。でも、それ以外のことは全部恣意的で、現状で何も問題ない人たちに新しいハードウェアを買わせる口実をハードウェアメーカーに与える以外、具体的なメリットは何もないよ。（陰謀論だと許してほしいんだけど、彼らはおそらくTPMを使ってPCをスマートフォンみたいなプラットフォームに変えようとしてるんじゃないかな）" userName="tyami94" createdAt="2025/11/08 17:27:55" color="">}}




{{<matomeQuote body="stacksmashingの動画で、TPMの実装がいかに無効なものがあるかを示してるよ。もしTPMがCPUダイに統合されていれば、この攻撃は不可能だっただろうね。<br>https://www.youtube.com/watch?v=wTl4vEednkQ<br>TPMは秘密を保存するセキュアな領域として良いアイデアだけど、企業がシステム”完全性”の証明ができるようになることで、PCプラットフォームがより閉鎖的になるのが心配だよ。私たちはモバイルデバイスで今経験しているような地獄に向かっているのかもしれない。一般の人はLinuxとかを動かそうとしないから、セキュアブートが必須になってMicrosoft署名済みカーネルしか動かせなくなっても、ほとんどの人は気づかないだろうね。Androidでも同じことが起こったとき、誰も気づかなかったり介入しなかったりしたから、今ではデバイスをルート化したりカスタムファームウェアを動かしたりすると、アプリが使えなくなるんだ。これは技術的な問題というより社会的な問題だよ。規制の変更や大規模な反乱が有効だけど、現実的には一般の人がボイコットするしかないだろうけど、それも期待薄だね。結局、私たちはこの地獄に運命づけられているのかもしれない。" userName="tyami94" createdAt="2025/11/08 17:18:35" color="#38d3d3">}}




{{<matomeQuote body="こういうことはMicrosoftが公式に文書化してないわけじゃないよ。彼らの二枚舌を翻訳できる必要があるだけさ。" userName="web3-is-a-scam" createdAt="2025/11/08 16:24:01" color="">}}




{{<matomeQuote body="うん。25H2のISOを使ってWin10からWin11にアップグレードしたよ。WUがアップグレードを提供してないときに、24H2から25H2に上げるためにも使ったことがある。" userName="WarOnPrivacy" createdAt="2025/11/08 01:09:38" color="">}}




{{<matomeQuote body="W10 IoTからW11 IoTにアップグレードするメリットって何？何か特別な機能あるの？W10 IoTは2032年までサポートされるらしいし。" userName="uxcolumbo" createdAt="2025/11/08 21:55:23" color="">}}




{{<matomeQuote body="YouTubeの審査時間が45分から5分に短縮されたのって、自動化なしじゃありえないでしょ。魔法としか思えないね。" userName="rs186" createdAt="2025/11/07 21:18:24" color="">}}




{{<matomeQuote body="「著作権保護のため」って名目でデータ収集の回避を禁止する、新しいDMCAが作られそうだね。誰か考えてるだろうな。" userName="candiddevmike" createdAt="2025/11/07 22:01:46" color="">}}




{{<matomeQuote body="DRMがあなたをスパイできないなら、あなたは海賊の可能性がある！" userName="ronsor" createdAt="2025/11/08 05:36:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="人間が行動を選んだから、自動的に異議申し立てが却下されてるってことだと解釈してるよ。" userName="cortesoft" createdAt="2025/11/08 01:47:39" color="">}}




{{<matomeQuote body="最初の決定を裏付ける調査内容を記録して、2回目はそれに頼れば、すぐに説明がつくよね。" userName="dlgeek" createdAt="2025/11/07 22:45:56" color="">}}




{{<matomeQuote body="「深刻な身体的危害または死」ってことについて、ちゃんと記録された証拠を見てみたいけど、きっと恐ろしいものだろうね。" userName="baobun" createdAt="2025/11/08 00:06:46" color="">}}




{{<matomeQuote body="GoogleとMicrosoftは世界を検閲してる。世界が彼らを検閲すべきだね。情報制限はダメ。みんな抜け道を見つけるだろうし、これは「Streisand effect」だよ。情報を隠そうとすれば、かえって注目される。俺はWindows 11を絶対使わないことで回避する。Recallみたいなスパイウェアは嫌だ。動画は復元されたけど、やっぱりYouTubeの代替が必要だね。GoogleはYouTubeで権力持ちすぎ。" userName="shevy-java" createdAt="2025/11/07 22:03:21" color="#ff33a1">}}




{{<matomeQuote body="「Streisand effect」ってコメントは違うよ。動画はもう上がってるし、MicrosoftやGoogleが秘密裏に検閲してたわけじゃない。たぶん競合チャンネルが自分の動画を上位にするために、大量に他の動画を報告したんだよ。「物理的危害の危険」みたいな報告オプションは、動画を早く削除させるために悪用されてるんだ。" userName="Aurornis" createdAt="2025/11/07 22:31:59" color="#45d325">}}




{{<matomeQuote body="高齢者はLinuxに切り替えるのに最適だよ。ブラウザやZoom、メールクライアントしか使わないし、変なアプリ入れることもないからね。Debian stable入れておけば完璧だよ。" userName="abdullahkhalids" createdAt="2025/11/07 23:15:49" color="#785bff">}}




{{<matomeQuote body="GoogleとかMicrosoftが裏で共謀してこのチャンネルを検閲してたわけじゃないって話じゃないんだ。酔っぱらい運転と一緒で、過去の選択が後の結果を左右する。大企業はリスクを計算した上で、利益優先の判断をしてるだけさ。" userName="ddtaylor" createdAt="2025/11/08 02:46:13" color="">}}




{{<matomeQuote body="Microsoft製品なくても平気だけど、GoogleはYouTubeとGoogle Mapsを毎日使うから無理だわ。Google Mapsは代替できても、YouTubeはコンテンツが膨大すぎて代替できないのが現状。YouTubeが独占状態になって、見れるものが決められちゃうのは困るね。クリエイターもYouTubeのために頑張ってるから、この状況を変えるのは大変だ。" userName="nalekberov" createdAt="2025/11/07 23:28:01" color="#ff33a1">}}




{{<matomeQuote body="DMCA法で手続きが決まってるから、GoogleがDMCAの訴えが有効かどうかを勝手に判断するなんてできないんだ。文句があるなら、こんな仕組みを作った議会に言ってくれよ。" userName="lazide" createdAt="2025/11/08 09:40:54" color="">}}




{{<matomeQuote body="Googleは今、板挟み状態だよな。もし”物理的危害の可能性”って報告に迅速に対応しないと、たとえそれが根拠のない報告でも、「YouTubeが放置したせいで自殺者が出た」ってNY Timesとかに書かれちゃうかもしれないし。" userName="miki123211" createdAt="2025/11/08 10:00:08" color="#45d325">}}




{{<matomeQuote body="迅速かつ正確な対応は可能だよ。1日の報告数や動画の長さを計算して、必要な人員を雇えば24時間以内に解決できるはずさ。それができないってことは、プラットフォームが機能不全だってこと。ユーザーの報告を処理できないなら、やり方を根本的に見直すべきだよ。" userName="franga2000" createdAt="2025/11/08 10:34:32" color="#ff5733">}}




{{<matomeQuote body="これは昔からよくある話なんだ。DDoS対策の仕事をしてた頃、最初の客は競合するギャンブルサイトやオンラインメガネ小売業者だったよ。彼らが互いにDDoS攻撃を仕掛けるためにお金を払ってたからさ。バカみたいだけど、ビジネスとしては儲かったな。" userName="silisili" createdAt="2025/11/07 22:47:57" color="">}}




{{<matomeQuote body="眼鏡屋さんとの取引ってあんまりないんだけど、なんで（DDoS攻撃を仕掛けたりするの）？" userName="worthless-trash" createdAt="2025/11/08 05:14:44" color="">}}




{{<matomeQuote body="2ドルのワイヤーと15ドルのレンズをバカみたいに高い値段で売ってるからだよ。それにLuxotticaがほとんどのブランドを独占してて、価格を勝手に決めてるんだ。" userName="ornornor" createdAt="2025/11/08 06:59:02" color="">}}




{{<matomeQuote body="企業はこういう戦略に賢く対応できてないみたいで、クリエイターたちがこの攻撃のせいで損してるってのが問題だね。" userName="braiamp" createdAt="2025/11/07 23:02:49" color="">}}




{{<matomeQuote body="これは著作権の問題じゃないし、DMCAも関係ない話だね。" userName="iamtedd" createdAt="2025/11/08 10:48:59" color="">}}




{{<matomeQuote body="フロントエンドなら、yt-dlpとかInvidious、MPVなんかに置き換えられるんだよ。" userName="kelvinjps10" createdAt="2025/11/07 23:49:59" color="">}}




{{<matomeQuote body="短期間に大量の通報があれば動画は一時的に消されるけど、これは偽のDMCA通知でもできること。Googleは通知が多すぎて、とりあえず削除して後から確認してるんだ。偽のDMCA通知を送っても、金銭的・法的ペナルティがゼロなのはヤバいね。" userName="fastily" createdAt="2025/11/08 01:20:21" color="#38d3d3">}}




{{<matomeQuote body="そのうちYouTubeは動画ストリームに直接広告を入れ始めて、実際の再生速度でしか見られなくなりそう。Sponsorblockみたいな対策を邪魔するために、ユーザーごとに広告の場所を変える可能性もあるね。" userName="ranger_danger" createdAt="2025/11/08 00:19:16" color="">}}




{{<matomeQuote body="コンテンツホストは板挟みだね。慎重だとゴミがあふれるし、早く排除しようとすると無関係なものも巻き込む。一番の問題は、YouTubeが動画削除やランクダウンの理由をクリエイターに説明しないこと。メール一本で解決できるような大きな変更でも、長年のクリエイターは放置されてるんだ。" userName="xboxnolifes" createdAt="2025/11/08 00:15:15" color="#785bff">}}




{{<matomeQuote body="英語圏外や非主流コンテンツだとさらにひどいことになるね。言語関係なく有効なカスタマーサポートシステムが作れるのか、それとも結局は人員不足で無理なのか、誰か明確な答えを教えてほしいな。それが分かれば、この問題の解決策や、僕たちが何を期待すべきかが見えてくるはずだよ。" userName="intended" createdAt="2025/11/08 12:33:27" color="#ff5733">}}




{{<matomeQuote body="偽のDMCA申請は、こういう動画を削除するのに頻繁に使われる手法だよ。" userName="lazide" createdAt="2025/11/08 11:51:13" color="">}}




{{<matomeQuote body="そんなにYouTube見てて気にするのに、お金を払わないのが信じられないな。サービスなんだから、金を払うか広告を我慢するか、どっちかしかないだろ。" userName="mapontosevenths" createdAt="2025/11/08 02:34:32" color="">}}




{{<matomeQuote body="「有効なカスタマーサポートシステム」っていうけど、結局は人間が重要なんだよ。テクノロジーで補強されても、人間が起こすイレギュラーな問題は人間が裁くしかないからね。もしプラットフォームが、効果的な判断ができる熟練したモデレーション人材を十分に雇えないなら、それは成り立たないビジネスってことだね。" userName="ethbr1" createdAt="2025/11/08 13:25:08" color="#38d3d3">}}




{{<matomeQuote body="VisaやMastercardも大手で意見を黙らせる力を持ってるんだよね…" userName="tacker2000" createdAt="2025/11/07 22:26:27" color="">}}




{{<matomeQuote body="これって音楽業界が欲しがった武器なのに、予期せぬ結果になってるよね。<br>Googleが著作権執行の場で、裁判官、陪審員、死刑執行人の役目をやめるべき時だと思うな。" userName="chii" createdAt="2025/11/08 04:33:09" color="#45d325">}}




{{<matomeQuote body="”プラットフォームが効果的にモデレーションするリソースを雇えないなら、ビジネスとして成り立たない”って言うけど、実際は成り立ってるよ。これにお金をかけない儲かってる企業はたくさんあるし。<br>もし、そういったビジネスを成り立たなくしたいって意味なら、今気に入ってるビジネスモデルにも影響が出るか真剣に考えるべきだね。例えば、ユーザーは投稿ごとにお金を払う必要があるのかな？それって割に合う？" userName="john01dav" createdAt="2025/11/08 21:20:51" color="#ff33a1">}}




{{<matomeQuote body="”2$と15$”っていうのは高すぎる見積もりだよ。全体で90ユーロセント（約1$）くらいじゃない？組み立て済みの小売価格はこれを見て：https://www.action.com/de-de/search/?q=lesebrillen" userName="kees99" createdAt="2025/11/08 08:41:10" color="#ff5c5c">}}




{{<matomeQuote body="残念だけど、これって当然の疑問が湧くよね。こんなことまで検閲するなら、本当に重要な問題についてプラットフォームをどう信用できるんだろう？" userName="g42gregory" createdAt="2025/11/07 21:47:34" color="#38d3d3">}}




{{<matomeQuote body="無理だよ、COVID-19の時から明らかだった。YouTubeは事実を提示する医師すら検閲して、プラットフォームから排除したんだからね。検閲しないって約束してる唯一の競合動画プラットフォームはRumble（https://rumble.com）だけど、COVID-19のソーシャルメディア検閲時代に保守派が殺到したせいで、すごく右翼寄りになっちゃってるんだ。" userName="vlucas" createdAt="2025/11/07 22:20:10" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="プラットフォームを信頼する”って考え方自体がもうおかしいんだよ。<br>NYTimesやWashington Postを信頼してるわけじゃないでしょ？あれらは”大量の塩と一緒に受け取るべき情報源”で、信頼できるものを見つけるには追加の調査が必要だって常に理解してた。<br>スーパーや小売業者に正確な価格情報を信頼してるわけでもない、行動する前には自分で調べる。じゃあ、なんでYouTubeには”信頼”が関わってくるの？" userName="makeitdouble" createdAt="2025/11/08 02:17:11" color="">}}




{{<matomeQuote body="NYTやWashington Postと違って、YouTubeは誰でも数秒で動画をアップロードできるから、それが合理的なレベルの言論の自由を意味するんだよ。" userName="hsbauauvhabzb" createdAt="2025/11/08 04:50:02" color="">}}




{{<matomeQuote body="どうして言論の自由が信頼につながるの？むしろ逆だよ。誰でも自由にできるなら、誰でも嘘をついて、その嘘が増幅されちゃうじゃないか。" userName="throwaway290" createdAt="2025/11/08 13:08:14" color="">}}




{{<matomeQuote body="彼らが検閲を始めた瞬間、それが失敗するって分かってたよ。一度でも間違えれば信用は台無しだ。法的に義務付けられて定義されていること以外は、絶対にコンテンツを検閲しようとすべきじゃなかったんだ。" userName="chasd00" createdAt="2025/11/07 22:24:16" color="">}}




{{<matomeQuote body="僕たちは彼らに期待しすぎたんだよ。実体がバーチャルだと、権威があるように見せるのは簡単だもんね。" userName="damnesian" createdAt="2025/11/07 22:21:06" color="">}}




{{<matomeQuote body="嘘や他の有害な言論は、言論の自由に反するんだよ。" userName="oddmiral" createdAt="2025/11/09 03:47:11" color="">}}




{{<matomeQuote body="Rumbleのトップページだけ見たけど、右翼の過激な意見やネオナチばかりで溢れてる。プラットフォームがホワイトスプレマシストを受け入れるのは一つの話だけど、それがトップページに直接あるってことは、積極的に宣伝してるってことだよ。Rumbleがインターネットを救うなんて無理だね。" userName="autoexec" createdAt="2025/11/07 23:09:03" color="#ff5733">}}




{{<matomeQuote body="検閲を避けたいなら、Peertubeを自分でホストすればいいよ。そうすれば安心できるからね。" userName="MYEUHD" createdAt="2025/11/07 23:14:36" color="#ff33a1">}}




{{<matomeQuote body="そう、それはあからさまにネオナチのプラットフォームだよ。" userName="myko" createdAt="2025/11/08 00:39:08" color="">}}




{{<matomeQuote body="面白い見方だね。あとは何が有害で何が真実かを決める仲裁人さえいればいいってことかな？" userName="throwaway290" createdAt="2025/11/09 09:18:37" color="">}}




{{<matomeQuote body="言論の自由のためには、バカで嫌悪すべきことを言う自由も必要だ。ヘイトスピーチやCovid陰謀論は禁止すべきかもだけど、Windows 11バイパス削除は、Googleが他の大企業の犬だって明確なメッセージだよ。" userName="hsbauauvhabzb" createdAt="2025/11/09 00:02:40" color="#38d3d3">}}




{{<matomeQuote body="それはただの自主規制だよ、だって誰もそこで君の動画を見ないでしょ。" userName="davidmurdoch" createdAt="2025/11/07 23:23:07" color="">}}




{{<matomeQuote body="もしそうしなかったら、同じくらいの影響力を持つ代替の情報伝達方法って何かあったかな？" userName="zahlman" createdAt="2025/11/08 01:56:24" color="">}}




{{<matomeQuote body="偽情報拡散を止めなかったから社会は滅びる。ナチスのプロパガンダやアンチワクチンによるはしか増加を見れば明らかだ。YouTubeを責めるのは難しいが、検閲への苦情は儲けたい奴らの”オオカミ少年”状態だ。今回はWindows 11の不正コピーであって社会を破壊する検閲とは違う。彼らには良い言い訳がない。" userName="immibis" createdAt="2025/11/08 23:11:15" color="#ff5c5c">}}




{{<matomeQuote body="私たちはできないし、すべきじゃない。彼らはもっとお金を稼ぐことしか考えてないよ、ティーンエイジャーが病気になってもね。そのお金で世論を形成してる。成功すればするほど彼らが惨めになるように、社会規範を変えるべきだと思うよ。" userName="yard2010" createdAt="2025/11/08 10:20:00" color="#38d3d3">}}




{{<matomeQuote body="＞そう、それはあからさまにネオナチのプラットフォームだね。<br>今どき、そういうのを”言論の自由”プラットフォームって呼ぶんだよ、だって明らかに唯一の言論の自由はナチスの言論だからね。" userName="krapp" createdAt="2025/11/08 00:41:42" color="">}}




{{<matomeQuote body="”もう”の部分以外は同意するよ。私たちは最初から彼らを信頼できなかった。ただ、今ほど明白じゃなかっただけさ。" userName="pdonis" createdAt="2025/11/07 23:25:38" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
