+++
date = '2025-02-26T00:00:00'
draft = false
title = 'VS CodeマーケットプレイスからMaterial Themeが削除！悪意あるコードが発見された理由とは？'
tags = ["VS Code", "セキュリティ", "拡張機能", "開発者", "悪意のあるコード"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> VS CodeマーケットプレイスからMaterial Themeが削除！悪意あるコードが発見された理由とは？

引用元：[https://news.ycombinator.com/item?id=43178831](https://news.ycombinator.com/item?id=43178831)

{{<matomeQuote body="こんにちは、VS Code チームの Isidor です。コミュニティのメンバーがこの拡張機能のセキュリティ分析を行ったところ、悪意のある意図を示す複数の赤信号が見つかり、私たちに報告されました。マイクロソフトのセキュリティ研究者たちがこれを確認し、さらに疑わしいコードを見つけました。発行者をVS Marketplaceから禁止し、拡張機能をすべて削除しました。この削除は著作権やライセンスに関するものではなく、潜在的な悪意のある意図に関するものです。詳細についての発表をお待ちください。" userName="isidorn" createdAt="2025-02-26T07:40:44" color="#ff5733">}}

{{<matomeQuote body="ちょっと矛盾してると思うんだけど：＞コミュニティのメンバーが深いセキュリティ分析を行い、悪意のある意図を示す赤信号を見つけた。＞VS Marketplaceは常にセキュリティに投資している。コミュニティに問題を知らせてもらうのに頼ってるなら、人気の拡張機能を自分たちで監査する投資が足りないんじゃない？VSCode の信頼モデルは根本的に壊れてると思う。クライアントマシンでサンドボックスなしで第三者のコードを実行してるのは、Azureでやるようなセキュリティとは言えない。仕事は評価してるけど、サンドボックスなしって常に気になってた。" userName="vlovich123" createdAt="2025-02-26T16:24:26" color="#ff33a1">}}

{{<matomeQuote body="注意喚起：ブラウザ拡張や npm/composer などのパッケージマネージャからインストールするすべてのパッケージにはマルウェアのリスクがある。オープンソースコミュニティはすべてのバージョンのパッケージを検証する財源がないから。無料で提供されるソフトにそのレベルのセキュリティを求めるのは不合理。必要ならセキュリティを確保できる企業の IDE を買って、その提供の限界を受け入れな。仮想マシンで実行することなどで開発ワークステーションを保護できるかもしれないが、実稼働コードは守れない。" userName="CodeWriter23" createdAt="2025-02-26T16:57:38" color="">}}

{{<matomeQuote body="＞無料で提供されるソフトにそのレベルのセキュリティを求めるのは不合理。VS Code は単なる趣味のプロジェクトではなく、世界で最も価値のあるテック企業のフラッグシップ IDE だよ。企業の目標に従って赤字でリリースされてる。そんな企業が無料の IDE を出して、スクリプトなオープンソースプロジェクトを一つずつ駆逐していくなら、テック企業基準でその責任を持つのは当然じゃない？" userName="lolinder" createdAt="2025-02-26T17:14:55" color="#ff5c5c">}}

{{<matomeQuote body="マーケットプレイスは、有料契約に基づいた検証済みの拡張で運営されてるわけじゃない。使う拡張は自分で精査するが、多くの人はそれをしない。マイクロソフトに責任をシフトしないでほしい。彼らは提供する必要はないんだから。" userName="rat9988" createdAt="2025-02-26T17:32:30" color="">}}

{{<matomeQuote body="Mozilla は、いろいろ言われるけど、ユーザーからお金をもらわなくても人気の拡張を検証するリソースを見つけてる。俺が使う拡張は全てチェックされてる。Raymond Hill（uBlock の人）はそのパフォーマンスにあまり感動していなかったが、それでも何もないよりはマシだよ（MSは果たして何をしてるんだか）。VSCodeはIDEの名の下の栄光ではあるが、結局はただのテキストエディタで、あまり良いものとは思えない。IDEといったら「統合」されてるべきだ。JetBrainsの製品とか、あるいはリアルなVisual Studioみたいに。" userName="homebrewer" createdAt="2025-02-26T17:40:00" color="">}}

{{<matomeQuote body="JetBrainsの製品がIDEで、VSCodeがそうでない理由って何？素朴な質問として、彼らの製品を使ったことがないもので。" userName="nkmnz" createdAt="2025-02-26T17:45:29" color="">}}

{{<matomeQuote body="＞オープンソースコミュニティが全てのパッケージのバージョンを検証する財源がない。比較的セキュリティの高いオープンソースソフトウェアのみで構成されたディストリビューションを数十年発表しているDebian、Red Hat、Canonicalの存在を考えるとこの意見は無意味だ。MSとNPMがこの手の問題で引っかかる理由は、オープンソースが原因ではないだろう。" userName="ajross" createdAt="2025-02-26T19:30:41" color="#38d3d3">}}

{{<matomeQuote body="攻撃面が小さく、脆弱性から価値を引き出すのが難しいはず。動機のある攻撃者ほど防御が難しいことは何度も証明されていて、人気のプラットフォームは攻撃を受けやすい。NPMやMSはずっと大きなプラットフォームを代表しているんだ。" userName="vlovich123" createdAt="2025-02-27T17:43:43" color="">}}

{{<matomeQuote body="Microsoftが関わってるって分かってる？単なる素人がやってるわけじゃないし、VSCodeのコードには絶対に有料で書かれた部分があるよ。" userName="LocalH" createdAt="2025-02-26T17:21:06" color="#ff33a1">}}

{{<matomeQuote body="再アップロードの追跡も必要かもね。https://marketplace.visualstudio.com/items?itemName=t3dotgg...." userName="anakaine" createdAt="2025-02-26T08:33:56" color="">}}

{{<matomeQuote body="＞”ここで詳細を発表するはずだから期待しておいて”<br>https://github.com/microsoft/vsmarketplace/<br>Isidor、楽しみだね！Open VSXで、悪意のある拡張分をフラグ立てたいんだけど、どのバージョンに悪意のあるコードが含まれてたか分かる？https://open-vsx.orgでは公開されたバージョンがないんだ。" userName="filiptronicek" createdAt="2025-02-26T11:55:36" color="">}}

{{<matomeQuote body="ライセンス変更についての議論から、悪意のあるコードが見つかるのが偶然だとは思えないけど、これって関係あるの？" userName="bagels" createdAt="2025-02-26T08:59:24" color="">}}

{{<matomeQuote body="よくある流れだよね：<br>- オープンソースを作る<br>- みんなが使い出したら<br>- ライセンス変更＆ソースを閉じる<br>- 悪意のあるコードを実装<br>- アップデートを出す<br>- 利益！詐欺的なソフトが何百万台も動くようになる！" userName="dark-star" createdAt="2025-02-26T09:22:32" color="#785bff">}}

{{<matomeQuote body="悪意のある部分は大抵、元の開発者が人手不足で管理できなくなったオープンソースを奪った第三者によって行われることが多い。多くのChrome拡張は数百ドルで売られることがある。オンラインで無料のものを維持するのは大変だよね。" userName="jeroenhd" createdAt="2025-02-26T13:02:02" color="#45d325">}}

{{<matomeQuote body="著作権侵害やYouTube広告の話が出ると、HNでは誰もクリエイターにお金を払わないって話になるけど、VSCodeのテーマに対して金を求められるのはどうなんだろうね。" userName="hombre_fatal" createdAt="2025-02-26T14:06:07" color="">}}

{{<matomeQuote body="広告をブロックしつつ、好きなクリエイターに直接送金するのが誇りだよ。少数派かもしれないけど、メメティック衛生のために広告を避けてる。" userName="skyyler" createdAt="2025-02-26T14:59:58" color="">}}

{{<matomeQuote body="YouTubeはプレミアムを購入すれば、広告がなくなるから楽だよね。ただし、Youtuberが自分で付けた広告は見なきゃいけないけど。" userName="Thorrez" createdAt="2025-02-26T15:09:29" color="">}}

{{<matomeQuote body="私はYouTube Premiumに加え、広告ブロックやショートを排除する拡張、スポンサーシップをスキップする拡張も使ってる。2025年にはAI関連を排除する拡張も必要になるかも。YouTubeを使うのが大変だ。" userName="skyyler" createdAt="2025-02-26T15:16:07" color="">}}

{{<matomeQuote body="フォークは同じセキュリティ問題を抱えてるのか、フォークのオーナーと連携して確認してくれないかな。https://github.com/t3dotgg/vsc-material-but-i-wont-sue-you<br>" userName="joshka" createdAt="2025-02-26T08:07:40" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="フォークのオーナーです。フォークした時にコードをしっかり確認したし、再度監査したけど怪しいところは見当たらないよ。オープンコレクティブとチェンジログのコードも全部削除して確認するから、安心して。<br>" userName="theobr" createdAt="2025-02-26T08:37:09" color="#ff5733">}}

{{<matomeQuote body="Microsoftは拡張機能に対する権限モデルを考えてくれるのかな？<br>" userName="ande-mnoc" createdAt="2025-02-26T08:11:44" color="">}}

{{<matomeQuote body="これはこのフィーチャーリクエストで追跡されてるよ。https://github.com/microsoft/vscode/issues/52116<br>今後6ヶ月の間には権限モデルを追加する予定はないよ。" userName="isidorn" createdAt="2025-02-26T08:15:09" color="">}}

{{<matomeQuote body="＞ 今後6ヶ月の間には権限モデルを追加する予定はないよ。<br>”Copilotの機能がセキュリティの優先事項を超えてしまったようだね。https://blogs.microsoft.com/blog/2024/05/03/prioritizing-sec...<br>" userName="yukIttEft" createdAt="2025-02-26T09:12:54" color="#785bff">}}

{{<matomeQuote body="最近のVSCodeのリリースノート、面白い新機能のリストじゃなくて、全部“Copilot”関連になっちゃってるよね。<br>" userName="misnome" createdAt="2025-02-26T11:32:17" color="">}}

{{<matomeQuote body="正直、開発者を批判するつもりはないけど、VSCodeのリリースノートは何年も自分の使い方には関係ない内容になってるよ。ターミナルクライアントを追加した後、ずっとその内容ばかりで全然新鮮さがなくなった。AI機能は最近のエディタの大きな革新だけど、その前にGithubやAzureとの統合をもっと推すと思ってたのに。<br>" userName="Cthulhu_" createdAt="2025-02-26T13:00:03" color="">}}

{{<matomeQuote body="だからEmacsを使ってるし、Sublime Text IIやAtom、VSCodeが流行ってもEmacsをやめることはなかったんだ。MicrosoftがVSCodeに飽きたら、AIばかりの”雰囲気コーディング”に強制させるかもしれないけど、Emacsはずっとここにあるよ。新しいバージョンが出たばかりで、リリースノートにはいい内容がたくさんあった。<br>" userName="dingnuts" createdAt="2025-02-26T14:07:03" color="#38d3d3">}}

{{<matomeQuote body="Emacsを15〜20年使ってきたけど、問題もあって、基本的に古い編集方法に縛られてる。効果的に使おうとすると、複雑な設定ファイルを維持する必要があるし。今は一部だけで使ってるけど、基本アーキテクチャを持ちつつ、1980年代からの古臭さを解消した新しいEmacsが必要だと思うんだ。<br>" userName="adamc" createdAt="2025-02-26T15:20:35" color="">}}

{{<matomeQuote body="リンク先の問題が今は404エラーになってるけど、どういうこと？<br>" userName="WhyNotHugo" createdAt="2025-02-26T08:17:51" color="">}}

{{<matomeQuote body="毎日使ってる感染したパッケージの数考えると恐ろしいよな。おそらく20以上の政府が俺たちの行動を見てるんじゃないか。" userName="BigParm" createdAt="2025-02-26T10:37:15" color="">}}

{{<matomeQuote body="政府をそんなに心配する必要ある？お前が知らないだけで、いろんな企業が見てるぜ？その中に信用できる企業がどれほどあるの？＞”https://www.wired.com/story/gravy-location-data-app-leak-rtb...”" userName="cratermoon" createdAt="2025-02-26T14:37:56" color="">}}

{{<matomeQuote body="企業は意図的に自分たちの顧客を1億人も殺したわけじゃないからな。" userName="CamperBob2" createdAt="2025-02-26T20:00:16" color="">}}

{{<matomeQuote body="今は拡張機能を「Fanny Theme」って名前にリブランドしてバンを回避してるみたいだな。＞”https://marketplace.visualstudio.com/items?itemName=fanny.vs...”" userName="galagladi" createdAt="2025-02-26T12:24:12" color="">}}

{{<matomeQuote body="これ、もしかしてトロール名なの？Fannyって結構有名なスラングだし。＞”https://en.wikipedia.org/wiki/Fanny#In_slang”" userName="preommr" createdAt="2025-02-26T12:42:53" color="">}}

{{<matomeQuote body="確かイギリスだけだったはず。" userName="napolux" createdAt="2025-02-26T12:51:58" color="">}}

{{<matomeQuote body="多くの英語圏の国では、アメリカが例外的なんじゃないかな。もちろん、「git」も侮辱的な意味があるし。" userName="Cthulhu_" createdAt="2025-02-26T12:57:48" color="">}}

{{<matomeQuote body="Gitはかなり軽い侮辱だと思うよ、誰かを煩わしいって言う感じ。俺たちの中にはGit（そのツール）に名前がピッタリだと思った人も少なくないはず。" userName="esperent" createdAt="2025-02-26T13:47:55" color="">}}

{{<matomeQuote body="“fanny”ってそもそも侮辱なのか？" userName="johnisgood" createdAt="2025-02-26T15:09:27" color="">}}

{{<matomeQuote body="35年以上前、友達がそれがイギリスの意味だって主張して、それ以来その言葉を聞くたびにその友達のこと思い出してた。彼は言葉の基本的で最も無害なスラングすら知らなかったんだよ。" userName="kgwxd" createdAt="2025-02-26T13:31:19" color="">}}

{{<matomeQuote body="サンキュー。今日この拡張のセキュリティ監査をするから、必要だったら対処するよ。" userName="isidorn" createdAt="2025-02-26T13:00:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="やあ、みんな、僕がこの拡張の主要なフォーク『Material Theme (But I Won't Sue You)』を作ったんだ。メンテナーは昨年おかしくなって、（元々Apache 2だった）ソースをオフラインにしたり、他のIDEに含める人を脅したりしてる。本当におかしいよ。リスク回避のため、僕のフォークでは以下のことをしたよ。<br>1. VS Codeチームが今監査中で、もしマルウェアが見つかったらすぐにマーケットプレイスから削除して強制アンインストールする許可を出した。<br>2. コードベースを徹底的に監査したが、特に問題は見当たらなかった。<br>3. チェンジログ、分析、Open Collective、HTMLレンダリング関連のコードを全部削除したよ。少し気になる点は、チェンジログのためのHTML + サニティローダーくらいだったから、それを完全に取り除いた。2つのPRでほとんどの依存関係や7000行以上を削除したよ。<br>誰か監査してみたい人はここを見てね。<br>https://github.com/t3dotgg/vsc-material-but-i-wont-sue-you" userName="theobr" createdAt="2025-02-26T09:23:31" color="#38d3d3">}}

{{<matomeQuote body="テーマが分析や依存関係を積み重ねるなんてバカみたいだと思う。テーマって普通は自己完結してるもんだし、ユーザーの機械から何でも強制アンインストールできるなんてもっとおかしい。VS Codeユーザーじゃなくて良かったよ。マーケットプレイスやプラグイン周りでひどいことが起きてるみたい。" userName="zelphirkalt" createdAt="2025-02-26T10:52:45" color="#785bff">}}

{{<matomeQuote body="Qtテーマを試してみて。あれはC++コードからコンパイルされたバイナリだよ。" userName="bmicraft" createdAt="2025-02-26T12:17:52" color="">}}

{{<matomeQuote body="安全のために強制アンインストールができるなら、ユーザーの同意なしに拡張を自動アップグレードするのが危険ってことにならない？" userName="qbane" createdAt="2025-02-26T11:32:11" color="#ff5c5c">}}

{{<matomeQuote body="そうだね、でもこれが現実なんだ。自動更新や”エバーグリーン”リリースは、Chromeが広めたし、多くの頭痛を解消したと思う。これ以前は、Microsoftのような企業が古いバージョンを数年間サポートしたり、セキュリティ問題に対処する必要があったからね。<br>ウェブ開発者は新しい機能を取り入れたくても、ユーザーの一定％が古いバージョンを使ってるから、トランスパイラを使ったり複雑なシステムが生まれたりしてたんだよね。" userName="Cthulhu_" createdAt="2025-02-26T13:04:45" color="">}}

{{<matomeQuote body="それは頭痛を解消するんじゃなくて、ユーザーにサプライズでワークフローを壊すリスクを押し付けるだけだよ。" userName="account42" createdAt="2025-02-27T11:42:27" color="#45d325">}}

{{<matomeQuote body="VS Codeには権限モデルがないから、すべての拡張が何でもできちゃうのが問題なんじゃない？" userName="e40" createdAt="2025-02-26T17:33:50" color="#ff5733">}}

{{<matomeQuote body="それはそうなんだけど、SublimeやVim、Emacs、Gedit、pico/nano、IntelliJ、Android Studio、Eclipse、そして全てのエディタにも同じ問題があるよ。<br>Xcodeは例外かもしれないけど、Xcodeプラグインもあまりできることがない。" userName="tabony" createdAt="2025-02-26T17:39:46" color="">}}

{{<matomeQuote body="EmacsやVimはVS Codeよりも狙われる確率が低いと思うけどね。" userName="e40" createdAt="2025-02-28T22:39:58" color="">}}

{{<matomeQuote body="リポジトリやマーケットページにスクリーンショットが全くないのはどういうこと？見逃してたのかな。" userName="notwhereyouare" createdAt="2025-02-26T16:51:08" color="">}}

{{<matomeQuote body="見た目は悪いから心配しなくて大丈夫。<br>でも、悪意のある作者のサイトからこれを見つけたよ：<br>＞”https://framerusercontent.com/images/G17CYe9tTL2GP1Rw4mUI8YC...”" userName="drywipes" createdAt="2025-02-27T01:48:39" color="#45d325">}}

{{<matomeQuote body="7ヶ月前にRedditで誰かがこの拡張機能の怪しい変更に気づいてたな。オープンソースの難読化は通常極めて危険なサインだよ。MicrosoftはVS Codeの拡張のセキュリティモデルを見直すべきだね。<br>悪意のある拡張が多すぎるんだから。" userName="sigmoid10" createdAt="2025-02-26T12:18:21" color="#ff33a1">}}

{{<matomeQuote body="願い事には気をつけた方がいいよ。VS CodeはMicrosoftが出した最高の製品の一つだけど、拡張マーケットがあるからなんだ。もしMicrosoftがマーケットをもっと厳しく管理したら、VS Codeの品質が落ちる可能性がある。全体的に使える拡張の数が減るから、逆にMicrosoftはVS Codeの機能を増やすインセンティブを得るかもしれない。でも機能が増えすぎると、VS Codeが膨れ上がるんだよね。だから、監査が進むと逆効果になるかも。" userName="bun_at_work" createdAt="2025-02-26T16:31:59" color="">}}

{{<matomeQuote body="全部を監視する必要はないと思う。Mozillaのやり方を真似して、トップのX個の拡張を手動で監査して信頼できるとマークすればいいんじゃないかな？<br>それ以外のものには”この拡張はあなたのデータを盗む可能性があります”って警告をでかく表示してもいいかも。" userName="homebrewer" createdAt="2025-02-26T17:55:42" color="">}}

{{<matomeQuote body="MicrosoftはWindows Defenderでかなり良くなったからこれは期待できる。すべての他のアクティブスキャナーを黙って排除したんだ。無償の製品にどれだけ努力をかける気があるかの問題だね。" userName="sigmoid10" createdAt="2025-03-01T09:28:19" color="#45d325">}}

{{<matomeQuote body="この人、まるで自分が色のhexコードを所有してるみたいに思ってる。技術がダメで、優れた人たちが去っていった。彼のソフトは使ってないけど、早くこの騒動から抜け出してほしいし、Materialを発明したなんて思わないでほしい。" userName="compootr" createdAt="2025-02-26T02:42:14" color="">}}

{{<matomeQuote body="＞「彼は色のhexコードを所有してると思ってる」<br>Pantoneが何か言いたそうだ。" userName="ukuina" createdAt="2025-02-26T04:13:04" color="">}}

{{<matomeQuote body="Pantoneはhexコード以上のもので、色の物質科学の全体的なシステムなんだ。" userName="donatj" createdAt="2025-02-26T04:26:01" color="">}}

{{<matomeQuote body="Pantoneは正当な仕事をしてるが、色のhexコードを所有してるかのように思ってるところがある。" userName="Dylan16807" createdAt="2025-02-26T07:19:26" color="">}}

{{<matomeQuote body="そうだね。Pantoneの色とMaterialを教えてあげれば、その色の材料をどのように取得するか教えてくれる。" userName="Krutonium" createdAt="2025-02-26T04:32:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="そうは思わないな。透明なアルミニウムのネオンブラウンのPantoneを聞いたら、連絡が来なくなった。" userName="Waterluvian" createdAt="2025-02-26T05:05:14" color="">}}

{{<matomeQuote body="他の人が彼のことを狂人だと表現してた。でも、これはセキュリティの問題で、悪意のあるコードを開発者のIDEに入れている人を狂気だとは思わず、むしろ巧妙で欺瞞的だと思うべきだ。" userName="Telemakhos" createdAt="2025-02-26T14:34:05" color="#38d3d3">}}

{{<matomeQuote body="＞「狂気や狂人ではなく、巧妙で欺瞞的だ」<br>これは相互排他的ではないね。" userName="Bjartr" createdAt="2025-02-26T15:44:21" color="">}}

{{<matomeQuote body="誰かが代わりのやつ、Material Theme（でも訴えないから）をアップロードしたね。" userName="do_not_redeem" createdAt="2025-02-26T02:51:15" color="">}}

{{<matomeQuote body="元の作者は開発・メンテナンスの資金についてよく話してたから、どれだけのものをメンテナンスする必要があるのか気になった。GitHubのリポジトリを見てみたけど、ほとんどがボイラープレートな内容だった。じゃあ、そのメンテナンスに何がそんなにかかるのか。" userName="oefrha" createdAt="2025-02-26T03:57:13" color="#45d325">}}

{{<matomeQuote body="数千行のコードからなるプロプライエタリソフトを作る事自体は問題ないし、労働の対価を求めるのは当然。ただ、人気のあるFOSSプロジェクトをプロプライエタリ化するのは問題がある。" userName="bad_user" createdAt="2025-02-26T04:28:47" color="#ff5c5c">}}

{{<matomeQuote body="彼は約7.6kドルの資金をOpenCollectiveで集めたみたいだね。特にVScodeテーマにしてはいい金額だ。" userName="miyuru" createdAt="2025-02-26T05:01:38" color="">}}

{{<matomeQuote body="素材デザインテーマにしては悪くはないね。でも最も退屈で使い古された、果ては醜くてスタイル重視のデザインだ。" userName="nsonha" createdAt="2025-02-26T10:25:44" color="">}}

{{<matomeQuote body="＞数千行のコードからなるプロプライエタリソフトを作る事自体は問題ないし、労働の対価を求めるのは当然。問題なのは、実際には色の設定にお金が必要だと言うことが問題なんだ。これをグリフターが金を取る手段にしてるってことをはっきり言おう。" userName="Capricorn2481" createdAt="2025-02-26T15:47:45" color="#45d325">}}

{{<matomeQuote body="＞バイトアンドスイッチは道徳的には悪いが、法的にはそうでもない。元々MITライセンスだし、プロプライエタリバージョンにすることも可能。許可されたコードの使用権は減らないしね。" userName="weinzierl" createdAt="2025-02-26T06:08:31" color="">}}

{{<matomeQuote body="＞バイトアンドスイッチは道徳的には悪いが、法的にはそうでもない。法的な事は無関係だが、自由市場は消費者が選択の自由を持つから機能する。多くのプロジェクトがFOSSな理由で広まるのもそのせいだ。" userName="bad_user" createdAt="2025-02-26T07:27:08" color="#ff5733">}}

{{<matomeQuote body="＞自由市場は消費者が選択の自由を持つから機能する。それは消費者が完全に情報を得られた場合のみ成り立つ。バイトアンドスイッチの場合、しばしば消費者が情報を得る前に切り替えが行われることが問題だ。" userName="dspillett" createdAt="2025-02-26T17:17:24" color="">}}

{{<matomeQuote body="この条項どう思う？＞”上記の著作権表示とこの許可表示はソフトウェアの全てのコピーまたは重要な部分に含まれなければならない”<br>著作権表示を消したのは間違ってるのかな？<br>実はこれ結構影響あるんだよね…" userName="buttercraft" createdAt="2025-02-26T06:18:46" color="">}}

{{<matomeQuote body="元の著作権者ならできるってこと？旧Apacheライセンスのやつは消えないけど。" userName="oynqr" createdAt="2025-02-26T06:29:03" color="">}}

{{<matomeQuote body="もし全ての著作権を持ってるなら可能だけど、他の人のオープンソースの貢献から著作権表示を消したら著作権侵害だよ。" userName="lmm" createdAt="2025-02-26T07:26:16" color="">}}

{{<matomeQuote body="Apache2だったんだよ、これ見て。＞”https://github.com/Dramaga11/vsc-material-theme/blob/main/LI...”" userName="cmcaleer" createdAt="2025-02-26T15:06:46" color="">}}

{{<matomeQuote body="歴史的合意を変更するのは詐欺だね。リポジトリの履歴を編集してライセンスを変えてしまったら。" userName="TZubiri" createdAt="2025-02-26T10:12:06" color="#45d325">}}

{{<matomeQuote body="問題だよね。PatreonとかGithubスポンサーで簡単にお金を要求できるようになったら、たくさんの人たちが少ない努力でお金を得ようとする。これが実際のところ。" userName="gamedever" createdAt="2025-02-26T08:01:03" color="">}}

{{<matomeQuote body="お金を要求することが問題なわけじゃない。ただ、この人は他の人が正当に使ってるオープンソースのApache2版からお金を抽出しようとしたんだよね。市場での拡張機能を閉じたコードに切り替えた上に、悪意があるかもしれないし、もともと7600ドル集めた後にこれだから。" userName="oefrha" createdAt="2025-02-26T08:43:53" color="#ff5c5c">}}

{{<matomeQuote body="テーマ作りは簡単なことじゃないから、99.9999％の人が自分で作らずに既存のテーマを使うってこと。行数は関係ないよ。何千人もの人が彼の行数をローカル開発環境に依存させることにしたわけだし、これは大事なポイントだよ。" userName="hombre_fatal" createdAt="2025-02-26T14:10:32" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
