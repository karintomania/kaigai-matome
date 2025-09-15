+++
date = '2025-09-08T00:00:00'
months = '2025/09'
draft = false
title = 'NPM人気パッケージ debug と chalk が乗っ取られる！開発者アカウント侵害で広範囲に影響の恐れ'
tags = ["NPM", "セキュリティ", "フィッシング", "サプライチェーン攻撃", "Node.js"]
featureimage = 'thumbnails/color2.jpg'
+++

> NPM人気パッケージ debug と chalk が乗っ取られる！開発者アカウント侵害で広範囲に影響の恐れ

引用元：[https://news.ycombinator.com/item?id=45169657](https://news.ycombinator.com/item?id=45169657)




{{<matomeQuote body="NPMの人気パッケージが乗っ取られた件のセキュリティアドバイザリだよ。詳しくはこっちを見てね: https://github.com/advisories/GHSA-8mgj-vmr8-frr6" userName="universesquid" createdAt="2025/09/08 15:37:57" color="">}}




{{<matomeQuote body="やあ、そうだよ、僕が乗っ取られたんだ。みんな、本当にごめんね、すごく恥ずかしいよ。<br>もっと詳しい情報はこちら: <br>- https://github.com/chalk/chalk/issues/656<br>- https://github.com/debug-js/debug/issues/1005#issuecomment-3...<br>影響を受けたパッケージ（僕が知る限り）は、ansi-styles@6.2.2、debug@4.4.2、chalk@5.6.1などたくさんだよ。<br>これは標的型攻撃っぽい感じだね。編集期限が切れるまで、このコメントを更新し続けるつもりだよ。NPMアカウントはアクセスできないし、パスワード忘れシステムも機能しないんだ。今は待つしかないね。<br>メールは support at npmjs dot help から来たんだけど、一見正規っぽく見えたんだ。言い訳じゃないけど、疲れてて、急いでたからスマホでリンクをクリックしちゃったのが間違いだったな。またごめんね。" userName="junon" createdAt="2025/09/08 15:49:01" color="#785bff">}}




{{<matomeQuote body="フィッシングメールには何て書いてあって、それで君はクリックしてログインしちゃったの？" userName="nodesocket" createdAt="2025/09/08 15:58:35" color="">}}




{{<matomeQuote body="「前回の更新から12ヶ月以上経ったから」って書いてあったよ。NPMは以前にもセキュリティ変更の連絡をしてきたことがあったから、特に怪しまなかったんだ。スクリーンショットはここ: https://imgur.com/a/q8s235k" userName="junon" createdAt="2025/09/08 16:12:32" color="#38d3d3">}}




{{<matomeQuote body="僕がバカでごめん、”2FAリセットメール”について、他の人が同じことをしないように詳しく教えてくれる？" userName="dboreham" createdAt="2025/09/08 15:56:32" color="">}}




{{<matomeQuote body="僕たち`Socket`でもすぐにこれを検知したよ。詳しくはこれを見てね: https://socket.dev/blog/npm-author-qix-compromised-in-major-...<br>こんなことが起きて残念だけど、エコシステムが迅速に動いたのは良いことだね。こういうインシデントは、オープンソースのパッケージリポジトリを保護するためにパッケージスキャンがいかに重要かを示してると思うよ。" userName="33a" createdAt="2025/09/08 18:19:20" color="#45d325">}}




{{<matomeQuote body="NPMから予期せぬものが来たら無視すること。リンクはクリックせず、直接ウェブサイトに行って対処すること。僕がやるべきだったのに、急いでたからできなかったんだ。それに、完全に起きてないときはセキュリティ関連のことはしない方がいいよ。学んだね。<br>メールは「2FA更新」で、12ヶ月間2FAを更新してないって言ってたんだ。これは赤信号であるべきだったんだけど、ちゃんとしたサイトからも似たようなヘマなメールが来たのを見たことがあったから、信じちゃったんだ。メールはNPM専用の受信箱に来てたんだけど、`npmjs.help`っていうドメイン名は、もう少し起きてたら気づいたはずだよ。<br>実際のメール内のリンクは、NPMの実際のサイトで期待するものと一致してたんだ。どうやってアクセスされたのか、まだ正確に解明しようとしてるよ。EDIT: ああ、彼らは実際に本物の2FAコードを手に入れてたみたいだ。`TOTP`プロキシ攻撃ってやつだね。全てが終わったら、事後分析を公開するつもりだよ。またごめんね。" userName="junon" createdAt="2025/09/08 16:03:36" color="#ff33a1">}}




{{<matomeQuote body="大変な状況なのに、透明性があって素早い対応、素晴らしいね！<br>君はもうフィッシングに騙されることはないだろうけど、みんなへの`PSA`だよ。「ドメインが正しいか」とか「メールが正しいか」とか、自分の感覚を信じるのは失敗しがちだよ。フィッシング対策に本当に役立つのは、1. メールリンクからは絶対にログインしないこと。2. `U2F/WebAuthn`キーを2段階認証に使うこと。`TOTP`はダメだよ。これだけだよ。<br>ストレスがあったり、疲れてたり、急いでたりすると、誰でもフィッシングに遭う可能性があるんだ。今回は君だったってだけ。頑張って、そして対応お疲れ様！" userName="cataflam" createdAt="2025/09/08 22:52:05" color="#785bff">}}




{{<matomeQuote body="（そして対応も早くて）正直に謝ってくれてる君に、みんなが感謝してることに同意するよ。僕も大学時代に酔っぱらってフィッシングに遭ったことがあるから（ずいぶん昔だけど）、誰にでも起こりうることだね。NPMの対応が遅めなのはちょっと驚きだけどね。それだと攻撃がより儲かるようになるだけな気がするな。" userName="winwang" createdAt="2025/09/08 16:21:03" color="">}}




{{<matomeQuote body="パスワードマネージャーの自動入力や、`Passkeys`みたいなフィッシングに強い2FAを使ってない人には誰にでも起こりうるね。ほとんどの人はパスワードマネージャーを使ってないから、ドメインが間違ってることに気づけないんだ。`TOTP`（数字コード）の2FAはフィッシングに遭う可能性があるから、`U2F/WebAuthn/Passkeys`が利用できるならそっちを使うのをやめるべきだよ。僕はベストプラクティスに従ってるから、フィッシングに遭ったことはないよ。ほとんどの人はそうじゃないけどね。" userName="sneak" createdAt="2025/09/08 22:46:08" color="#785bff">}}




{{<matomeQuote body="パスワードマネージャーを使えよ、お前らみたいにさ。パスワードマネージャーがオートフィルを表示しなかったら、ドメインが違うってことだから、一旦立ち止まって全部確認してから先に進めよ。TOTPも同じか別のパスワードマネージャーに入れとけ（トレードオフは考えろよ）、そうすればドメインが正しいときしか入力されないだろ？" userName="diggan" createdAt="2025/09/08 23:33:09" color="#ff33a1">}}




{{<matomeQuote body="業界の皆、どこでもそうだけどさ、緊急性は毒だよ。誰かがユーザーにこういうクソみたいなことを押し付けようとしたら、お願いだから止めてくれ。1ヶ月前通知をゴールデンスタンダードにしようぜ。詐欺メール（物理的なものも含む）でいつも見る手口だよ。不合理に短い通知を付けて、相手がパニックになるのを期待するんだ。この詐欺は通用するし、だからこそ「善意で」これをやろうとする正当な企業も恥をかくべきなんだ。本当のアラートは、ただ通知すればいい。即座に、予防的な、だけど非破壊的な行動を取って、ユーザーが自分のペースでどう解決するか手伝ってやれよ。" userName="rollcat" createdAt="2025/09/08 16:31:24" color="#ff5733">}}




{{<matomeQuote body="で、どうやってこういう攻撃を見つけるんだ？" userName="Yoric" createdAt="2025/09/08 21:12:56" color="">}}




{{<matomeQuote body="同意だね、でもこの例はそんなに焦らせるような緊急性もなかったし、OPも緊急性に焦ったわけじゃなく、ただToDoリストをこなしてただけって言ってたし。問題は今のメールの使い方だよ。解決策はメールを使わないことだな。" userName="notmyjob" createdAt="2025/09/08 17:28:14" color="">}}




{{<matomeQuote body="なるほど（たぶん）：彼らはあなたをだましてTOTPコードを自分たちのサイトに入力させ、それを本物の名前のサイトにプロキシして、あなたのアカウントとして認証したってこと？それで合ってる？" userName="dboreham" createdAt="2025/09/08 16:17:31" color="">}}




{{<matomeQuote body="TOTPがフィッシングに対しては役に立たないってことを証明しただけじゃん。" userName="sugarpimpdorsey" createdAt="2025/09/08 16:23:26" color="">}}




{{<matomeQuote body="俺もパスワードマネージャー使ってるよ。携帯で、オートフィルの機能はインストールしてないんだ、スマホではあんまり使わないからね。15年間OSSをメンテしてきて、今まで一度もやられたり、フィッシングに遭ったりしたことないんだぜ。意見ありがとうな :)" userName="junon" createdAt="2025/09/08 22:48:37" color="#ff33a1">}}




{{<matomeQuote body="大体同意だし、俺も使ってる。でも、このスレッドを全部読めば、パスワードマネージャーだけじゃ足りない理由がわかるはずだよ。パスワードマネージャーがオートフィルしないときとか、モバイルで拡張機能がないときとかさ…。実際、彼（OP）は使ってたけど助からなかったんだ。見てみろよ: https://news.ycombinator.com/item?id=45175125" userName="cataflam" createdAt="2025/09/09 00:28:28" color="#ff33a1">}}




{{<matomeQuote body="いや、問題は今のメールの使い方じゃない。メールを使わないのが解決策でもないんだ。問題は、署名されてないパッケージリポジトリだよ。解決策は、パッケージを証明書でIDに紐付けることだ。一番手っ取り早いのは、パッケージをドメインにリンクさせて、リポジトリがドメイン証明書を使って、パッケージへの変更が来たときに署名を常にチェックできるようにすることだな。" userName="lelanthran" createdAt="2025/09/08 20:30:02" color="#785bff">}}




{{<matomeQuote body="フルメッセージヘッダーをどこかに上げてくれないか？送信側のMTAが何だったのか、すごい興味あるんだけど。" userName="SSLy" createdAt="2025/09/08 16:19:52" color="">}}




{{<matomeQuote body="「パスワードマネージャーが自動入力しない」って？じゃあ、できるやつ選べば？それが一番の機能だろ。<br>「使ってる」って言うけど、自動入力なしじゃ使ってないのと同じ。セキュリティと便利さのメリット、全部無駄にしてるぞ。" userName="eviks" createdAt="2025/09/09 01:01:07" color="#ff33a1">}}




{{<matomeQuote body="うちは静的解析とAIを組み合わせてるんだ。怪しいパッケージは人間がレビューして、悪意のあるものを見つけたらユーザーに通知、インストールをブロックして、レジストリに報告するよ。今回の事件でもすぐに検知して、すぐ削除されたし、分析も公開したんだ。<br>Socketの仕組みは透明性を大事にしてる。論文や講演でも詳しく話してるから、これ見てみてね：<br>https://arxiv.org/html/2403.12196v2<br>https://www.youtube.com/watch?v=cxJPiMwoIyY" userName="33a" createdAt="2025/09/08 23:54:51" color="#38d3d3">}}




{{<matomeQuote body="うん、これ見てみて！<br>https://gist.github.com/Qix-/c1f0d4f0d359dffaeec48dbfa1d40ee..." userName="junon" createdAt="2025/09/08 16:38:40" color="">}}




{{<matomeQuote body="毎日「なんでmutual TLSのアイデア、捨てちゃったんだ？」って疑問に思うよ。<br>その代わりにモバイルOTP、HOTP、TOTP、FIDO-U2Fを発明して、結局Passkeysで同じコンセプトをより複雑な形で再発明しただけじゃないか。" userName="goku12" createdAt="2025/09/08 16:33:52" color="#38d3d3">}}




{{<matomeQuote body="マルウェア検出に、HallucinationsだらけのLLMに頼ってるわけ？" userName="ATechGuy" createdAt="2025/09/09 02:55:59" color="">}}




{{<matomeQuote body="やばい、本物に見えるな。宛先アドレスはどこなんだ？どれくらいコインを盗んでるか、監視したいよ。" userName="nodesocket" createdAt="2025/09/08 16:24:26" color="">}}




{{<matomeQuote body="正直、個人のせいってわけじゃないよ。誰でもフィッシングメールには引っかかる可能性があるんだ。問題は、npmjsが全員にパッケージを同時に公開することにあると思う。<br>Aikidoみたいなところが先に怪しいパッケージ（パッチリリースの大幅変更とか、難読化されたコードとか）をスキャンできるように公開を遅らせたり、NPMやGitHubに直接フラグシステムを設けるだけでも、だいぶ良くなるはずだ。" userName="Cthulhu_" createdAt="2025/09/08 19:34:40" color="#ff5c5c">}}




{{<matomeQuote body="「何をすべきじゃないか？」って？具体的なことは言えないけど、フィッシング詐欺を簡単に避けたいなら、パスワードマネージャーを使うのを強く勧めるよ。<br>今回の攻撃みたいに、本物そっくりの偽サイトに行っちゃっても、パスワードマネージャーがパスワードを見つけられないことでおかしいって気づけるし、ちゃんとドメインを確認してから進めることができるからね。" userName="diggan" createdAt="2025/09/08 16:54:18" color="#45d325">}}




{{<matomeQuote body="リリースに署名できる機能も役に立つだろうね。俺はいつも同じ場所から公開してるから、喜んで有効にするよ。" userName="junon" createdAt="2025/09/08 19:48:20" color="#ff33a1">}}




{{<matomeQuote body="Gmailとかデスクトップクライアントでメールを開いただけなのに、どうやってNPMパッケージが乗っ取られたの？みんなの注意喚起と学習のために、単に知りたいだけなんだ。詳細を見落としてるかもだけど、ほとんどのコメントは読んだよ。" userName="alexellisuk" createdAt="2025/09/08 17:37:40" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「メールリンクからログインするのは絶対にダメ。EVER」って言うけど、ワンタイムメールリンク（ユーザー名＋パスワードの代わりに）でのログインがどんどん普通になってて、それが唯一の選択肢になってる現状もあるんだよね。" userName="graemep" createdAt="2025/09/09 18:40:24" color="">}}




{{<matomeQuote body="このマルウェアの陰湿な部分なんだけど、置き換えるウォレットアドレスの選び方が巧妙なんだ。ランダムじゃなくて、正規のアドレスと攻撃者のアドレスのレーベンシュタイン距離を計算して、視覚的に一番似てるやつを選ぶんだって。これ、アドレスの最初と最後だけ確認するセキュリティ習慣を打ち破るためのソーシャルエンジニアリングだよ。僕たちでペイロードを解析してこの機能を見つけたんだ。詳細はこちらで書いたから見てね: https://jdstaerk.substack.com/p/we-just-found-malicious-code... 気をつけて！" userName="DDerTyp" createdAt="2025/09/08 16:16:34" color="#38d3d3">}}




{{<matomeQuote body="記事の「package-lock.jsonが1.3.2以降を指定したから1.3.3がインストールされた」って部分でちょっと混乱してるんだ。ロックファイルは単一の固定バージョンを指定するはずだし、アップデートされるならロックファイルも更新されるべきで、CIパイプラインでは通常更新されないはずだよね？僕、npmとかのロックファイルの仕組みを間違って理解してるかな？npmのドキュメントもそう言ってるし: https://arc.net/l/quote/cdigautx" userName="josefbud" createdAt="2025/09/08 18:32:54" color="#ff5c5c">}}




{{<matomeQuote body="親コメじゃないけど、デフォルトの`npm install`や`yarn install`は、全部満たせない限りロックファイルを無視することがあるんだ。ロックファイルを尊重させたいなら`npm ci`か`yarn install --frozen-lockfile`を使う必要があるよ。僕の経験だと、CIパイプラインがこう誤設定されてたり、Node開発者がロックファイルの目的を誤解してたりすることはよくあるんだ。" userName="sigotirandolas" createdAt="2025/09/08 18:49:02" color="#45d325">}}




{{<matomeQuote body="ハッシュを表示するときは、ハッシュ値に基づいて決まる配色（文字ごとにハッシュ値から決まる前景色と背景色で、十分なコントラストを確保）にすべきだよ。そうすれば、一つのハッシュを別のハッシュに見せるのがずっと難しくなるはずさ。" userName="__MatrixMan__" createdAt="2025/09/08 20:33:22" color="">}}




{{<matomeQuote body="赤緑色覚異常の僕としてはね、もしそれをやるなら、僕みたいな人が多くの色合いを区別できないことを忘れないでほしいな。この場合、それはすごく不利になるよ！" userName="9dev" createdAt="2025/09/08 21:42:10" color="#ff5733">}}




{{<matomeQuote body="Web開発者じゃないけど、ロックファイルがデフォルトで無視されることがあるってのはとんでもない設定に思えるな。普通、明示的に無視されない限り使われると素朴に思ってたよ。" userName="0cf8612b2e1e" createdAt="2025/09/08 19:07:55" color="">}}




{{<matomeQuote body="この技術、特定のグループが使ってるって言えるの？" userName="bflesch" createdAt="2025/09/08 16:38:56" color="">}}




{{<matomeQuote body="コードに仕込まれた見事なソーシャルエンジニアリングって評価は、ちょっと考えれば過大評価だってわかるよ。<br>ウェブは何十年も前からそっくりな攻撃と戦ってるし、これはその動的なバージョンでしょ。<br>正直、この記事全体がAIが書いたみたいで、しっかり分析されてない気がするな。" userName="oasisbob" createdAt="2025/09/08 16:35:19" color="">}}




{{<matomeQuote body="この問題については、開発者たちが全色を表示して、色覚異常の人たちにも見える色を見せる以外、できることなんて実際ないんじゃないかな。" userName="zarzavat" createdAt="2025/09/09 07:32:02" color="">}}




{{<matomeQuote body="今日初めて知ったよ！僕のCIパイプラインを直さなきゃいけないな。Jiraチケット作っておくか…ありがとう！" userName="DDerTyp" createdAt="2025/09/08 18:55:01" color="">}}




{{<matomeQuote body="npm v5までロック機能がなかったんだよね（記憶とググった感じだから間違ってるかもだけど）。<br>欲しいもの全部できるまで時間かかったし、7年経って`npm install`コマンドを変えるのは”安定”とは言えないよ。<br>結局これってバージョンを置き換えたんだから、ロックも役に立たないんじゃないの？" userName="Already__Taken" createdAt="2025/09/08 22:58:22" color="">}}




{{<matomeQuote body="ウェブの世界へようこそって感じ。<br>全てがめちゃくちゃだよ。苦労して培ったソフトウェアエンジニアリングの真理が捨て去られてる。<br>みんなソフトウェアエンジニアリング3年目で止まってて、3年ごとに人が入れ替わってるような感覚だね。" userName="metafunctor" createdAt="2025/09/08 20:38:19" color="">}}




{{<matomeQuote body="まだない、新しく作られた機能なのに、もう問題があるって？<br>簡単だよ。色を強制する代わりに、色なしオプションを残せばいいんじゃない？<br>解決！<br>全ての出力にこのオプションがあるべきだね。僕は色覚に問題はないけど、どんな出力でも色がうるさく感じるからね。こういうのを好む人も多いんだよ。" userName="bbarnett" createdAt="2025/09/09 07:48:53" color="#ff5733">}}




{{<matomeQuote body="なんでダウンボートされてるのか分からないけど、OpenSSHはrandomartを実装してて、鍵のASCII”絵”を生成して人間が検証しやすくしてるよね。<br>あなたのキーアートを生成するスキームがうまくいくかは分からないけど、カラー”バーコード”になるって感じだね。" userName="Spivak" createdAt="2025/09/08 20:52:56" color="">}}




{{<matomeQuote body="ほぼ間違いなくLazarusだよ。" userName="pants2" createdAt="2025/09/08 19:27:45" color="">}}




{{<matomeQuote body="フィッシングメール、なんか素人っぽいよね。「we kindly ask that you complete this update your earliest convenience」って部分とかさ。メールの本文はここにあったよ: https://cdn.prod.website-files.com/642adcaf364024654c71df23/...<br>元記事はこれ: https://www.aikido.dev/blog/npm-debug-and-chalk-packages-com..." userName="sflanagain" createdAt="2025/09/08 20:05:10" color="#ff33a1">}}




{{<matomeQuote body="君の言う通りで、引用した部分の表現は下手で分かりにくいね。lockfileってのはまさに君が言ったことのためにあるんだよ。package.jsonがファイルを^1.3.2にロックしてても、もしpackage.jsonの範囲を満たす新しいバージョン（^1.3.2に対する1.3.3みたいに）がオンラインにあれば、npm installはよくその新しいバージョンを取ってきてpackage-lock.jsonファイルを自動的に更新するんだ。俺の理解はこうなんだけど、誰か確認してくれると嬉しいな！" userName="DDerTyp" createdAt="2025/09/08 18:49:05" color="#38d3d3">}}




{{<matomeQuote body="他の人も言ってるけど、npm installはインストール時にlockfileを変更する可能性があるよ。彼らが提供してるclean-installコマンドの注意点としては、node_modulesディレクトリ全体を削除するからめちゃくちゃ遅いんだ。多くの人が不満を言ってるけど、何も改善されてない: https://github.com/npm/cli/issues/564<br>npmチームは結局、この改善のために誰かがRFCを持ってくることを求めたみたいだけど、そのRFCも放置されてると思うな。" userName="Mattwmaster58" createdAt="2025/09/08 19:04:01" color="#ff33a1">}}




{{<matomeQuote body="＞結局、これでバージョンが置き換えられたんだから、lockingも役に立たなかったんじゃないの？<br>lockfileってtarballのハッシュを含んでるよね？" userName="jffry" createdAt="2025/09/09 05:17:29" color="">}}




{{<matomeQuote body="＞3年ごとに人が入れ替わるってやつね。<br>それは、ある意味「置き換えられてる」からだよ！Web開発みたいに業界が5年ごとに倍増してた時期は、数学的に言って平均的な開発者の経験年数は5年以下になるんだ。ベテランも最終的には10年、15年の経験を積むけど、急増する新人たちの数に圧倒されちゃうんだよね。だからJavaScript界隈のあらゆるものが幼稚な態度や行動になっちゃうんだ。" userName="jiggawatts" createdAt="2025/09/08 23:40:39" color="#785bff">}}




{{<matomeQuote body="＞正直、この記事全体がAIが書いたみたいで、綿密な分析って感じじゃないよね。<br>発見されてからまだ数時間だよ？発表する代わりに分析に時間をかけるとでも？それに最近はほとんどの人がAIでコンテンツを編集してるでしょ。だから人間が書いてないってことにはならないよ。" userName="withinboredom" createdAt="2025/09/08 17:20:28" color="">}}




{{<matomeQuote body="npm ciはCI環境でずっと速いはずだよ。lockfileから正確な依存関係のバージョンを直接インストールできるから、依存関係解決アルゴリズム全体を通す必要がないんだ。CI環境では、毎回クリーンな状態から始めるべきだから、既存のnode_modulesディレクトリを削除するのを待つ必要もないしね。" userName="rimunroe" createdAt="2025/09/08 19:54:52" color="#ff5c5c">}}




{{<matomeQuote body="数年前、似たようなことやったNFTのコントラクト攻撃について読んだ記憶があるな。だから今もあるのは確かだと思うよ。" userName="suzzer99" createdAt="2025/09/08 17:04:46" color="">}}




{{<matomeQuote body="アルゴリズムがどの色を選んでも、背景と前景が可能な限り多くの人にとても区別できるなら問題ないよ。prev/nextもたいてい区別できるだろうし。色覚異常のタイプとその発生率を考慮した賢い色の計算をするための柔軟性がそこにはたくさんあるんだ。" userName="__MatrixMan__" createdAt="2025/09/09 10:38:22" color="">}}




{{<matomeQuote body="ウェブ開発界は「これで十分」って思想があったけど、さらに悪い状況になってるよね。" userName="anonymars" createdAt="2025/09/09 03:23:24" color="">}}




{{<matomeQuote body="ハッシュコントラストはデフォルトで最大にすべきで、もし低い方が良ければ自分で設定を変えればいいって話。セキュリティ意識が高い人は自分で調整するだろうから、この機能はそういう人向けじゃないってこと。" userName="__MatrixMan__" createdAt="2025/09/09 10:43:15" color="">}}




{{<matomeQuote body="`no-color.org`を支持するよ。Chalkが`FORCE_COLOR=0`なんて、独自の道を突き進んでるのが信じられない。GitHubのissueでその対応を見つけたんだけど、「文句言うな」みたいな態度で最悪だよ。<br>詳細はこちら: `https://github.com/chalk/chalk/issues/547#issuecomment-11268...`<br>関連issue: `https://github.com/chalk/chalk/issues?q=is%3Aissue%20NO_COLO...`" userName="mdaniel" createdAt="2025/09/09 15:26:05" color="#785bff">}}




{{<matomeQuote body="またこの手の話か。以前Nxの件でも言ったけど、こういうのは防げたはずなんだ。これはソフトウェア業界全体の失敗だよ。サプライチェーン攻撃の影響はデカいんだから、コード署名や2FAとかの基本的なセキュリティ対策は全てのパッケージングプラットフォームで必須にすべき。AIの進化でこれからもっと悪くなるぞ。" userName="0xbadcafebee" createdAt="2025/09/08 18:49:49" color="#ff5733">}}




{{<matomeQuote body="週に何千回もダウンロードされるようなパッケージは、リリース速度が速すぎるんじゃない？NPMに新しいバージョンがアップロードされたら、すぐに公開じゃなくて、メンテナーに通知して「○月×日に公開されますがキャンセルしますか？」みたいな猶予期間を設けるべきだと思うんだ。" userName="TheJoeMan" createdAt="2025/09/09 01:20:27" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Linuxディストリビューションのパッケージリリースプロセスって、新バージョン提出→メンテナー承認→不安定版→テスト版→安定版って流れがあるじゃん？だからタイポスクワッティングなんて起きにくいんだ。でもプログラミング言語のパッケージマネージャーは、野良パッケージを無審査で公開してるから問題なんだよ。これはLinuxディストリビューションでは考えられないことだね。もちろんLinuxもサプライチェーン攻撃に無縁じゃないけど、対策は自動化できるし簡単だよ。" userName="0xbadcafebee" createdAt="2025/09/09 01:45:32" color="#785bff">}}




{{<matomeQuote body="この問題は昔から解決済みだったのに、開発者がセキュリティや信頼性を面倒くさがって無視してきた結果だよね。でも、もうすぐ収まるんじゃないかな。俺が知ってる多くの会社が、NPM/NodeとかComposerから離れ始めてるよ。エコシステムがリスク高すぎだってね。" userName="bbarnett" createdAt="2025/09/09 07:58:14" color="#38d3d3">}}




{{<matomeQuote body="Arch Linuxユーザーのみんな、AURも無法地帯だから気をつけろよ。" userName="papyrus9244" createdAt="2025/09/09 14:19:20" color="">}}




{{<matomeQuote body="セキュリティ対策にはトレードオフがあるよ。例えばヒューリスティクスやアッテステーションみたいな制御は、自動化システムとか多くの一般的なソフトウェアを排除しちゃう可能性があるんだ。「Linuxユーザーかどうか」とか「Firefoxを使ってるか」みたいな単純なヒューリスティクスは馬鹿げてるけど、結構使われてるから問題。2FAもSMSは安全じゃないし、メールはフィッシングに繋がりやすい。TOTPはいいけど、これもフィッシングされる可能性はある。ハードウェア認証だけは安全だけど、NPMがそれを導入するのは難しいだろうね。" userName="const_cast" createdAt="2025/09/08 23:44:01" color="#ff5733">}}




{{<matomeQuote body="2FAはほとんどの状況でめちゃくちゃ効果的だと強く思うな。「新しいパッケージをアップロードしたことを確認する」みたいな機能がデフォルトであったらいいよね。NPMが、週にX回以上ダウンロードされるパッケージのリリース時に人間がCAPTCHAを使って承認する仕組みを義務付けるべきだと思う。これで攻撃をかなり難しくできるはずだよ。" userName="rtpg" createdAt="2025/09/09 00:15:30" color="#45d325">}}




{{<matomeQuote body="2FAは普通のパスワードよりはるかに良いんだけど、今回もダメだったね。パッケージ開発者は2FAを設定してたのに、フィッシングページにログインさせられて、そこで2FAコードを本物のログインページにプロキシされちゃったんだ。" userName="SchemaLoad" createdAt="2025/09/09 03:25:21" color="#785bff">}}




{{<matomeQuote body="でも前のコメントで「公開前のアップロードごとに」って言ってたじゃん。もし「今アップロードしたパッケージを公開しますか？」ってメールがたくさん来たら、この攻撃は100%阻止されたはずだよ。(開発者の話を読むと、これがうまくいったって分かるはず)" userName="bbarnett" createdAt="2025/09/09 08:02:31" color="#38d3d3">}}




{{<matomeQuote body="これのもう一つの利点はCI/CD向けだね。MFAはCI/CDだと面倒だし。CIで公開トークンやOIDC認証を使ってアップロードした後、Web UIで手動承認が必要な形にできたら、かなりうまくいくと思うな。CIシステムの侵害リスクも減らせるし。「パッケージ公開済み」通知はもう手遅れだからね。" userName="mnahkies" createdAt="2025/09/09 10:26:20" color="#785bff">}}




{{<matomeQuote body="うん、まさにその通り。2FAや認証スキームの多くは自動化を壊しちゃうから、このシナリオでは本当に困るよね。難しい問題だよ。" userName="const_cast" createdAt="2025/09/09 21:30:18" color="">}}




{{<matomeQuote body="開発者のアカウントが乗っ取られたと仮定したら、その公開ボタンもクリックできちゃうんじゃないの？" userName="hvb2" createdAt="2025/09/09 12:11:26" color="">}}




{{<matomeQuote body="「誰かが標準のセキュリティ対策を実装すれば、こういう侵害は防げる」って言うけど、この一文はすごく多くのことを含んでるよね。「残りのフクロウを描け」と同じくらい難しい話だよ。" userName="ropable" createdAt="2025/09/09 02:46:12" color="">}}




{{<matomeQuote body="僕らはエンジニアだよ。アーティストがフクロウの残りを描けるのと同じように、毎日「どうせ無理」って諦めがちになってるこの分野に対して、できないって言うのはおかしいだろ。" userName="sussmannbaka" createdAt="2025/09/09 06:57:49" color="">}}




{{<matomeQuote body="フクロウの一部は消費者のアップグレード方法かもしれないね。最新パッチだけじゃなくて、良いバージョンと時期の二次情報源を活用して、脆弱性が発見される時間を稼いでからアップグレードする。多くの人がインストールする前に脆弱性を検出できると仮定すれば、いけるはず。あとは緊急のセキュリティ修正だけは例外にすればいい。" userName="giveita" createdAt="2025/09/09 03:47:37" color="#45d325">}}




{{<matomeQuote body="そんなに単純じゃないよ。どんなに厳重なセキュリティ対策をしても、結局は人間のミスでシステムは破られる。人間が一番の弱点だから、安全なシステムなんて存在しないんだ。npm内のプロセスは改善できるだろうけど、今回のフィッシング攻撃みたいなのは常に脆弱性になる。AIツールで攻撃が巧妙化するなら、僕らもAIを使って対抗するしかない。火には火で戦うのが唯一の賢い戦略だよ。" userName="imiric" createdAt="2025/09/08 22:24:25" color="#785bff">}}




{{<matomeQuote body="面白いね。https://www.wiz.io/blog/s1ngularity-supply-chain-attack によると、最初の侵入経路は「GitHub Actionsの欠陥ワークフローで、サニタイズされていないプルリクエストのタイトルからのコード注入を許していた」らしい。これは8月29日には検出されて緩和されたって。それから10日以上経つのに、昨日も主要なパッケージが侵害されたって？どういうことだろ？" userName="zestyping" createdAt="2025/09/09 23:09:20" color="#ff33a1">}}




{{<matomeQuote body="みんなWindowsユーザーが多いからWindowsを狙うよね。でも、今やJavaScriptやPythonでプログラミングする人がもっと増えてるって言ったらどうかな？そう、これからはもっとひどくなるだけだよ。" userName="ivape" createdAt="2025/09/08 20:36:13" color="#45d325">}}




{{<matomeQuote body="NPMはここで非難されるべきだと俺は思うね。数え切れないほどのサードパーティのインテリジェンスやセキュリティスタートアップがこの悪意ある活動を検出できるのに、パッケージの唯一の真の情報源であるNPMは、あらゆるデータイベントやセキュリティシグナルにアクセスできるのに、この種の攻撃の犠牲になり続けるのを止められないって？もはや意図的な無知だよ。" userName="cddotdotslash" createdAt="2025/09/08 17:05:31" color="#ff5733">}}




{{<matomeQuote body="NPMはGitHubが所有してるからMicrosoftのものだね。Microsoftは、ジェネレーティブAIを導入する理由がまったくないアプリにCopilotを組み込むのに忙しすぎなんだよ。" userName="PokestarFan" createdAt="2025/09/08 17:18:00" color="">}}




{{<matomeQuote body="でもGitHubはセキュリティ関連でいろんなことやってるよね、侵害されたNPMパッケージの報告とかも。NPMが最近Microsoftに買収されたのは知らなかったけど、考えてみれば、Microsoftこそこのサプライチェーン攻撃の対策を真っ先にやるべきだよ。彼らは何十年もセキュリティ問題でひどい目に遭ってきたからね、特に90年代半ばから2000年代初頭にかけては、数億台のデバイスがインターネットに接続されたのに、OSがまだ対応できてなかったからさ。" userName="Cthulhu_" createdAt="2025/09/08 19:40:25" color="#38d3d3">}}




{{<matomeQuote body="Microsoft以前のNPMが、プロフェッショナルな管理やエンジニアリングの模範だったわけじゃないしね…" userName="wutbrodo" createdAt="2025/09/08 19:56:15" color="">}}




{{<matomeQuote body="忘れてる人のために言うと、MicrosoftがNPMを買収したのは、NPM社が破綻寸前だったから、基本的にはコミュニティサービスだったんだよ。https://www.businessinsider.com/npm-ceo-bryan-bogensberger-r...<br>https://www.businessinsider.com/npm-cofounder-laurie-voss-re..." userName="Maxious" createdAt="2025/09/09 01:05:05" color="#ff33a1">}}




{{<matomeQuote body="違いは利用できるリソースにあるよね。時間とお金なしには”プロフェッショナル”にはなれないし、買収後のNPMは、おそらく両方をもっと持ってるはず。認めざるを得ないのは、NPMには収益モデルと呼べるものがおそらくないから、Microsoftもあまり注意を払ってないんだろうってことだけどね。" userName="mixologic" createdAt="2025/09/08 21:18:13" color="#ff33a1">}}




{{<matomeQuote body="おいおい。なんでもかんでもAIについての意見にする必要はないだろ。" userName="bnchrch" createdAt="2025/09/08 19:40:27" color="">}}




{{<matomeQuote body="GitHubはMicrosoftの”CoreAI”チームに組み込まれたんだって。あまり信頼できない話だね。" userName="PokestarFan" createdAt="2025/09/08 21:12:10" color="">}}




{{<matomeQuote body="実際、パッケージの各更新が悪意があるか、難読化されてるかを見るのにAIを使えるだろうね。" userName="jay_kyburz" createdAt="2025/09/08 20:41:50" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
