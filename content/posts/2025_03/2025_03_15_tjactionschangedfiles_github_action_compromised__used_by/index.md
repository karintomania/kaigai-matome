+++
date = '2025-03-15T00:00:00'
months = '2025/03'
draft = false
title = '緊急速報！GitHubの超人気Action「tj-actions/changed-files」が乗っ取り被害！2万3千以上のリポジトリに影響か'
tags = ["GitHub", "サプライチェーン攻撃", "セキュリティ", "CI/CD", "GitHub Actions"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> 緊急速報！GitHubの超人気Action「tj-actions/changed-files」が乗っ取り被害！2万3千以上のリポジトリに影響か

引用元：[https://news.ycombinator.com/item?id=43367987](https://news.ycombinator.com/item?id=43367987)

{{<matomeQuote body="やあ、Renovateの作者兼メンテナーだよ。<br>問題のあったリポジトリはもう削除されちゃったから、記憶を頼りに書くね。たぶんこんな感じ。<br>1. 攻撃者がtj-actions/changed-filesリポジトリへの書き込み権限を持ってた。<br>2. 攻撃者はRenovateのコミットを装った。実際には、同じリポジトリの最新のコミットを偽装したんだ。それはRenovateからのものだった。<br>3. 重要：このコミットの偽装は、メンテナーを「騙して」PRを受け入れさせるためじゃなくて、ちょっとわかりにくくするためだけ。孤立したコミットで、mainとか他のブランチの上にあるわけじゃない。<br>4. 予想通り、コミットは未検証として表示された。でも、現実的にほとんどの人はそこを見ないし、署名付きコミットだけを強制しない（本物のボットはコミットに署名する）。<br>5. ちょっと関係ないけど、「本物」のRenovate Botは、Dependabotと同じように、アクションをアップデートするPRを提案し始めた。<br>6. 自動マージを有効にしてる人もいたけど、これはRenovateのデフォルトの動作じゃない。自動マージしなくても、PRの一部として実行されれば、目的を達成できるかもしれない。<br>7. 今回の件で、多くの人がgitタグが不変だと誤解してることを思い知らされた。セマンティックバージョンの形式でも、タグは変更できないわけじゃない。" userName="rarkins" createdAt="2025-03-15T12:59:18" color="#ff5c5c">}}

{{<matomeQuote body="＞7. 今回の件で、多くの人がgitタグが不変だと誤解してることを思い知らされた。セマンティックバージョンの形式でも、タグは変更できないわけじゃない”<br>たぶん、これは「思い出す」より「学ぶ」って感じだね。多くの人がタグに基づいて成果物を作成するパイプラインを設定してる（例えば、「特定のパターンを持つタグで、成果物：＄tagを作成する」）。<br>みんながやってるからってだけで、基本的なトレードオフを知らずに採用してるんだよね。Semverも同じようなケースで、特定の文字列でソフトウェアをラベル付けすると、魔法のように動作が保証されると信じてる人が多い。" userName="srvaroa" createdAt="2025-03-15T19:37:07" color="#ff33a1">}}

{{<matomeQuote body="新しいコミットで自動マージが無効にならないことに気づいた時、この脆弱性について考えたことがあったんだ。これはGitHubのありえないデフォルト設定だよ。<br>追記：GitHubもついに気づいた（または気にするようになった）みたい。テストしてみたら、自動マージがサイト全体で無効になってるみたい。設定は有効になってるのに、PRを自動マージするオプションが表示されない。<br>やっぱり心配してた通りだ！<br>追記2：GitLabのCIでも同じことをテストしてみた。あっちではちゃんとやってるみたい。自動マージの有効化は、有効にしたコミットに対してのみ有効で、新しいプッシュは自動マージを無効にする。こっちの方がずっと安全だ。" userName="junon" createdAt="2025-03-16T07:04:41" color="#785bff">}}

{{<matomeQuote body="タグは署名できるし、署名を検証することもできるよ。コミットの署名や検証と同じくらい簡単。タグを作成する時に、署名をデフォルトのオプションにすることだってできる。<br>今回は役に立たないけどね。なぜなら、正当なボットが悪意のあるコミットで動作するように騙されたから。騙されたボットは、正当なキーでタグに署名することもできる。<br>「不変のタグ」はもちろん存在する。それはコミットハッシュだけど、情報がないね…。" userName="nine_k" createdAt="2025-03-15T21:21:57" color="#ff33a1">}}

{{<matomeQuote body="コミットハッシュで。" userName="sunnybeetroot" createdAt="2025-03-16T20:07:02" color="">}}

{{<matomeQuote body="SHAで固定するだけじゃ不十分みたい。Renovate botがSHAで参照されるアクションをアップデートしてた。<br>例：https://github.com/chains-project/maven-lockfile/pull/1111/f...<br>これは`renovate.json`で設定された`pinGitHubActionDigests`ヘルパーによって制御されてるみたい。" userName="bboreham" createdAt="2025-03-16T20:51:00" color="#ff33a1">}}

{{<matomeQuote body="＞6. 自動マージを有効にしてる人もいたけど、これはRenovateのデフォルトの動作じゃない。自動マージしなくても、PRの一部として実行されれば、目的を達成できるかもしれない”<br>PRを作るだけでどうやって悪用できるのかわからないな。もし理由があって、知らないコントリビューターによるビルドに対してシークレットを有効にしてるなら、それは明らかに間違いだ。通常、シークレットを使用するビルドは、特定のブランチでのみ実行され、そこには承認されたコードが配置されているはず。<br>＞多くの人がgitタグが不変だと誤解してる”<br>もしGitHubでライブラリを配布していて、多くの人がそれを使っているなら、`protected branches`と`protected tags`を設定する必要がある。変更をある程度防げるよ。" userName="diggan" createdAt="2025-03-15T14:57:55" color="">}}

{{<matomeQuote body="＞PRを作るだけでどうやって悪用できるのかわからないな。もし理由があって、知らないコントリビューターによるビルドに対してシークレットを有効にしてるなら”<br><br>今回の件では、Renovate botがインストールされたリポジトリにPRを作成するから、信頼されたコントリビューターとしてCIビルドをトリガーできる。" userName="semiquaver" createdAt="2025-03-15T15:36:48" color="#ff5c5c">}}

{{<matomeQuote body="Branch Protectionも新しいRulesetsも、リポジトリへのプッシュアクセス権を持つ人からシークレットを保護することはできないんだよね。私が理解している限り、environment secretsだけがこの機能を提供してる（同じ組織内の複数のリポジトリ間で共有できないという欠点があるけど、GitHub APIを使ってコピーできる）。" userName="jonenst" createdAt="2025-03-15T20:49:24" color="">}}

{{<matomeQuote body="コメントありがとねー。前からそうだったけど、今回の件でサプライチェーンのセキュリティについて、マジで色々考えさせられるよね。" userName="mlor" createdAt="2025-03-15T13:51:35" color="">}}

{{<matomeQuote body="記事サンキュー！#1がマジ弱点だったみたいだね。攻撃者がtj-actions/changed-filesに書き込み権限を得た方法って特定できた？今回の件で、プロジェクトへの貢献方法とか変わったりしたのかな？" userName="afitnerd" createdAt="2025-03-16T20:01:08" color="#785bff">}}

{{<matomeQuote body="ステップ1から4までは理解できたんだけど、ステップ5がどうトリガーされたのか分からん。リリースとかmainブランチの外でorphan commitしたってこと？" userName="3np" createdAt="2025-03-16T04:45:44" color="">}}

{{<matomeQuote body="最近、サードパーティの依存関係とか拡張機能とか、マジで信用できなくなってきた。npmパッケージもtransitive dependenciesが少ないやつしか入れなくなったし、vscodeとかChrome拡張機能もあんま入れなくなったわ。<br>だって、乗っ取られて悪意のあるコードが追加されたり、開発者自身が裏切って悪意のあるコードを注入したり(Moqとか)、会社に売られてライセンスが変わって金払わないと使えなくなったり(FluentAssertionsとか)するんだもん。eslintのdependency tree見てみ？全部信用できる？" userName="mubou" createdAt="2025-03-15T01:16:11" color="#ff5733">}}

{{<matomeQuote body="＞本当に全部信用できる？<br>もっと良い仕組みが必要だよね。<br>例えば、`fd`とか`rg`みたいなツールを実行するとき、なんでインターネットアクセスが必要なんだ？<br>IMHO、全てのツールのインターネットアクセスを禁止する（パワーモードとかで）だけで、この問題解決するかも。<br>あと、CIとCDが一緒になってるのも問題。production/release tokensは、通常のCIとは別のシステムにあるべき。CIはCDよりも多くのユーザーがアクセスする必要があるからね。<br>似たような事例だと、数ヶ月前にこんなのもあったよ。<br>https://blog.yossarian.net/2024/12/06/zizmor-ultralytics-inj…" userName="ashishb" createdAt="2025-03-15T02:38:39" color="#ff5733">}}

{{<matomeQuote body="仮想マシンで開発するようにして、色々制限してる。ブラウザもVMで使うようにした。<br>PCの性能も上がってるから、VMのオーバーヘッドも気にならないしね。<br>開発環境にはVagrantを導入するのが良いと思う。" userName="redserk" createdAt="2025-03-15T02:52:12" color="#785bff">}}

{{<matomeQuote body="https://www.qubes-os.org/<br>これも同じ考え方だね。" userName="bombcar" createdAt="2025-03-15T05:05:04" color="">}}

{{<matomeQuote body="Qubesは使い勝手が微妙だから、オススメしにくいかな。<br>何回か試したけど、まだ改善が必要だと思う。ユーザーエクスペリエンスを誰かが見直すべき。<br>Qubesが何やってるか完全に理解できてないから、逆にセキュリティが下がってるんじゃないかって不安になる時がある。個々の要素(Xenとか)は理解してるんだけどね。<br>あと、3D系のパフォーマンスは期待できないと思う。それと、Snowdenの名前を大々的に出してるのは怪しい気がする。<br>メインのワークステーションはMacで、ParallelsでVMを立ててる。Qubesの方が安全かもしれないけど、使い勝手が悪い。" userName="redserk" createdAt="2025-03-15T15:42:28" color="">}}

{{<matomeQuote body="OpenBSDのpledge[0]システムコールは、この問題に対処するためのものだね。ただ、これはメンテナー側のdefense-in-depthであって、ユーザー向けではないけど。<br>＞The pledge() system call forces the current process into a restricted-service operating mode. A few subsets are available, roughly described as computation, memory management, read-write operations on file descriptors, opening of files, networking (and notably separate, DNS resolution). In general, these modes were selected by studying the operation of many programs using libc and other such interfaces, and setting promises or execpromises.<br>[0]:<br>https://man.openbsd.org/pledge.2" userName="hypeatei" createdAt="2025-03-15T03:07:50" color="#ff33a1">}}

{{<matomeQuote body="Pledgeは自己隔離のためのもので、ミスには有効だけど、意図的なサプライチェーン攻撃には効果ないよ。" userName="yencabulator" createdAt="2025-03-15T03:22:07" color="">}}

{{<matomeQuote body="え、マジで？パッケージレベルじゃ効果ないのは明らかだけど、GitHub runnersとかNode自体が”制限”モードに入る機能を付けて、それを約束したら良くない？" userName="hypeatei" createdAt="2025-03-15T03:30:44" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="openbsd.orgの論文によると、pledgeはexecveでオフになるらしいよ。ランナーで使うには制約がキツすぎかも。基本的にはCベースのアプリの脆弱性に対する防御策って感じかな。Nodeランタイム自体の脆弱性は少ないから、もっと細かい制限を実装できるかもね。" userName="_flux" createdAt="2025-03-15T08:48:53" color="">}}

{{<matomeQuote body="firejailが便利だよ(github.com/netblue30/firejail)。opensnitch(github.com/evilsocket/opensnitch)で予期しないネットワークリクエストを監視してる。ArgoCDみたいなのを使えば、CIからprodへの直接アクセスを防げる。gitリポジトリへの書き込みアクセスは必要だけどね。" userName="mnahkies" createdAt="2025-03-15T09:24:01" color="#ff33a1">}}

{{<matomeQuote body="FreeBSDにはCapsicumがあるよ。プロセスがcapabilityモードに入ると、開かれたファイルディスクリプタしか使えなくなる。サブプロセスをspawnしたり、ネットワークに接続したりはできない。[0] wiki.freebsd.org/Capsicum [1] docs.kernel.org/userspace-api/landlock.html" userName="ptx" createdAt="2025-03-15T18:50:03" color="#ff33a1">}}

{{<matomeQuote body="書き込みアクセスもブロックしないと、埋め込まれた公開鍵でファイルを全部暗号化されちゃうよ。読み込みアクセスもブロックしないと、タイミングサイドチャネル攻撃で機密ファイルを読み取って、ネット権限のある別のプロセスに情報を渡されるかもね。わかるでしょ？" userName="CamJN" createdAt="2025-03-15T02:45:50" color="#38d3d3">}}

{{<matomeQuote body="＞You also need to block write access, so they can’t encrypt all your files with an embedded public key. And read access so they can’t use a timing side channel to read a sensitive file and pass that info to another process with internet privileges to report the secret info back to the bad guy. You get the picture, I’m sure.”<br>マジそれ。<br>攻撃対象領域を減らすには、ざっくり以下の能力を制限するのが有効だよ。<br>1. 読み取り専用アクセス vs 読み書き<br>2. カレントディレクトリとそのサブディレクトリのみへのアクセス<br>3. 設定可能なインターネットアクセス<br>Dockerはだいたいできてる。Dockerでコマンドを簡単に実行できたらいいのにな。" userName="ashishb" createdAt="2025-03-15T03:13:44" color="#785bff">}}

{{<matomeQuote body="＞1. Mount current read-only directory to Docker without Internet access (and without access to local network or other processes) 2. Run `fd` 3. Print the results 4. Destroy the container<br>Systemdには便利なサンドボックス機能があるんだけど、あんまり知られてないんだよね。systemd-runを使えば、かなり良い感じにできるよ。<br>bubblewrapも使えるけど、sudoいらないかも。" userName="mivirl" createdAt="2025-03-15T04:13:39" color="#45d325">}}

{{<matomeQuote body="マジつまんなくなるよね。オンラインで買い物するときにSSL使わないといけなくなった時みたい。SSLは悪くないよ。今じゃデフォルトだし。でも、昔はちょっとリスキーだったし、今は必須。車をロックしないと盗まれるからロックしないといけないみたいな。" userName="from-nibly" createdAt="2025-03-15T04:25:31" color="">}}

{{<matomeQuote body="キーフォブの時代だと、車をロックするのはほぼ自動だよね。車が自動でロックしてくれることもあるし。特に何も思わないなぁ。" userName="asveikau" createdAt="2025-03-15T16:35:36" color="">}}

{{<matomeQuote body="マジそれなー。ブラウザのプラグインも同じ。無料プラグインの作者が、プロジェクトの買い取りオファーを頻繁に受けてるって話、よく聞くじゃん。絶対、そのオファーに乗るやついるって。" userName="usef-" createdAt="2025-03-15T02:11:55" color="#785bff">}}

{{<matomeQuote body="こういうオファーのヤバいリストの例としては、https://github.com/extesy/hoverzoom/discussions/670　を見るといいよ。" userName="ronjouch" createdAt="2025-03-15T02:26:05" color="">}}

{{<matomeQuote body="だから、俺はuBlock以外は拡張機能をフォークしてるんだよねー。GitHubで見つからない場合は、拡張機能のフォルダをコピーするだけ。そうすれば、コードを監査できるし、ヤバいものが勝手に紛れ込んでくる心配もないし。過去に2つの拡張機能が、明らかに必要のない許可を求めてきたことがあって、多分これが原因だと思うんだよね。<br>ちなみに、拡張機能のソースコードをインストールする前に確認できるサイトはここだよ：https://robwu.nl/crxviewer/" userName="mubou" createdAt="2025-03-15T07:00:44" color="#ff5733">}}

{{<matomeQuote body="マジ感謝！crx explorerへのリンクもありがとね！俺も似たようなことしてて、機能の一部しか使わないアドオンをいくつか置き換えるために、自作のアドオン書き始めたんだよね。例えば、Chromium使うとき、１．新しいタブページをカスタマイズしたい、２．タブのピン留め／ピン解除のキーボードショートカットを追加したい。どっちも拡張機能の一部だけど、セキュリティリスクもあるし、重いんだよね（全部入りじゃなくて、必要なのは２つのマイクロ機能だけ！）。だから、リソース消費ゼロの、たった２つの機能だけの個人的なアドオン作ってる。小さいし（20行のコード！）、gitでバージョン管理してるし、変わることも乗っ取られることもない。マイクロ機能が必要になったら、アドオンのドキュメント検索したり、LLMに聞いたりすれば簡単に追加できるしね。" userName="ronjouch" createdAt="2025-03-15T13:04:32" color="#ff33a1">}}

{{<matomeQuote body="メニュー項目のキーボードショートカットを追加するためだけに拡張機能を使う必要ないんじゃない？OSでマッピングできるんじゃないの？macOSならキーボード設定でできるよ。" userName="juliob" createdAt="2025-03-16T04:43:00" color="">}}

{{<matomeQuote body="無駄じゃないよ。拡張機能の作者がどれくらいの規模で買収オファーを受けてるかを示してるんだから。買い手が誰かは重要じゃない。" userName="xboxnolifes" createdAt="2025-03-15T05:40:24" color="">}}

{{<matomeQuote body="俺は、ちゃんとした会社が作ってない拡張機能は、もうずっと使ってないなー（パスワードマネージャーとか）。インストールしたときはマルウェアじゃなくても、売られたらそうなるから。" userName="Gigachad" createdAt="2025-03-15T03:01:02" color="#45d325">}}

{{<matomeQuote body=".NETとかJavaって、ライブラリごとに権限を設定するみたいな考え方があったんだよね。それって、今の時代にマジで必要だと思う。評判とか簡単に操作できるし。例えば、このactionがネットワークにアクセスする必要なんてマジでないじゃん。" userName="XorNot" createdAt="2025-03-15T02:00:34" color="#45d325">}}

{{<matomeQuote body=".NET以外で、こういうタイプのactionって他に例ある？FluentAssertionsの件は知ってたけど、Moqは初めて聞いた。全然知らなかったわ。" userName="scrapcode" createdAt="2025-03-15T01:57:17" color="">}}

{{<matomeQuote body="node-ipcってのが最近あったね。作者がアップデートで、geolocationのwebserviceにアクセスして、ローカルのファイルを消すかどうか決めるコードを仕込んだんだって。" userName="do_not_redeem" createdAt="2025-03-15T02:04:20" color="">}}

{{<matomeQuote body="暗号通貨を盗むのがめっちゃ儲かるからね。今まではなかった市場があるんだよ。だからセキュリティがマジで重要になってる。EmacsとかPythonのパッケージも信用できないから、サンドボックス化し始めたわ。" userName="puffybuf" createdAt="2025-03-15T03:10:07" color="#45d325">}}

{{<matomeQuote body="根本的な解決策は、オープンソースの持続可能な資金調達モデルを見つけることだと思う。みんな生活のためにプロジェクトを売るしかないから裏切りが起きるんだよ。<br>問題は経済的、社会的なもの。<br>今は企業がオープンソースのメンテナーを搾取してる。webpackみたいに人気で資金が集まるプロジェクトは稀で、webpackが依存してるプロジェクトのメンテナーは一銭ももらってないってのは不公平じゃない？<br>資金調達に加えて、再現性のあるビルド環境が必要。GitHubがコードの唯一のソースみたいになってるけど、リスク高すぎ。go mod vendorみたいに依存関係を固定するのはいいけど、サプライチェーンで問題が起きたときの対応が大変。" userName="h4ck_th3_pl4n3t" createdAt="2025-03-15T04:22:21" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これマジ笑える。<br>＞Lewis Ardernって人がSemgrepのルールを書いたから、tj-actionsを見つけられるよ。ローカルで実行できるって。<br>「リモートのコードがヤバいから、リモートのコードをダウンロードして実行して探せ」ってこと？" userName="ta1243" createdAt="2025-03-15T09:52:37" color="">}}

{{<matomeQuote body="スマホのアップデートも止めてる？みんなアプリの自動アップデートをオンにしてるけど、アップデートにはexploitが含まれてる可能性もあるんだよ。<br>パッケージマネージャーとか信用しないのはわかるけど、生活は同じようなもので溢れてる。ほとんどのアプリはサードパーティのライブラリで出来てるし。スマホは常にアップデートされるし、アップデートの度にexploitがインストールされる可能性がある。<br>AppleとかMicrosoftとかGoogleはサードパーティの依存関係をチェックしてると思うけど、他の会社は信用できない。でも気にしすぎてもしょうがない。アップデートしないとセキュリティホールが修正されないし、アップデートするとexploitが紛れ込む可能性がある。" userName="fumufumu" createdAt="2025-03-15T02:16:45" color="#ff5c5c">}}

{{<matomeQuote body="だから、標準ライブラリが充実してる言語が好きになってきた。依存関係が少なくて済むからね。依存関係の管理がマジで大変になってきて、CVEの分析に時間取られすぎ。" userName="lenkite" createdAt="2025-03-15T10:47:00" color="#785bff">}}

{{<matomeQuote body="言語を肥大化させる代わりに、信頼できる組織がライブラリをforkして、安全性を確認して、”お墨付きライブラリ”として再配布すればいいんじゃない？安全なライブラリを開発する方が、言語の機能を追加するより簡単だと思う。" userName="imoreno" createdAt="2025-03-15T20:23:47" color="">}}

{{<matomeQuote body="信用はできるけど、盲目的にアップグレードしちゃダメ。ベンダーに頼るか、依存してるファイルの暗号学的ハッシュで固定するべき。アップグレードするときは、みんながアップグレードするまで待って、diffを自分で確認する。<br>Goの「ちょっとコピーする方が、ちょっと依存するよりマシ」って格言もあるし。複雑なライブラリの簡単な関数が必要なら、自分のコードにコピーすればいい。" userName="jrockway" createdAt="2025-03-15T07:41:21" color="#45d325">}}

{{<matomeQuote body="これって今に始まったことじゃないんだよねー。Thompsonが40年前に「Trusting Trustに関する考察」で警告してたじゃん（もっと前から言ってた人もいると思うけど）。<br>最近、90年代初頭の議論をいろいろ調べてて、その時に考えさせられてるんだよね。当時「モバイルコード」って呼ばれてたものの安全な実行について。怪しいクライアントがリモートサーバーで実行するために送ってくるコードのことね。<br>w3のおかげで、当時の議論がまだたくさん残っててありがたいんだけど、論文のほとんどは会社とか大学のリンク切れだらけなんだよね。<br>WWWの初期に、すごく賢い人たちが考えてたのに、いつの間にか忘れ去られちゃったのが不思議だわ。Denoのpermissionsは、当時のアイデアの現代版としては一番面白いけど、ちょっと物足りないかな。「利用規約に同意しますか？」疲れの問題もあるし、特にweb開発だとね。web開発で使うパッケージって、ネットワークアクセスが必要なものが多いから、「まあ、そうだよね」って思っちゃうのも無理ないよね。<br>それに、ビジネスニーズ（あるいはそう思われてるニーズ）のために存在するコードのことも考えるとね。レポート作成アプリの何千ものパッケージを監査するために1週間か2週間必要だってボスに言ってみてよ。" userName="harrisi" createdAt="2025-03-15T02:51:25" color="">}}

{{<matomeQuote body="依存関係を信頼するための解決策は、署名付きの公開ビルドと、手動レビューが必要なMLの”変なところ”検出器だね。" userName="throwaway48476" createdAt="2025-03-15T02:28:58" color="">}}

{{<matomeQuote body="免責事項：私はStepSecurityの共同創業者です。<br>StepSecurity Harden-Runnerは、GitHub Actionsワークフローからのアウトバウンドネットワーク呼び出しを継続的に監視し、予想される動作のベースラインを生成することで、このセキュリティインシデントを検出しました。侵害されたtj-actions/changed-files Actionが実行されたとき、Harden-Runnerは、ネットワークトラフィックに予期しないエンドポイントが出現したため、フラグを立てました。これは、確立されたベースラインから逸脱した異常です。プロジェクトはこちらから確認できます：https://github.com/step-security/harden-runner" userName="kurmiashish" createdAt="2025-03-14T23:21:00" color="#38d3d3">}}

{{<matomeQuote body="cyrnelさん、フィードバックありがとうございます！コミュニティに貢献できるよう頑張ります。現在、一般ユーザーとエンタープライズのお客様向けに個別の復旧手順を用意しています。" userName="kurmiashish" createdAt="2025-03-15T16:12:27" color="">}}

{{<matomeQuote body="編集ありがとう！「インシデント対応モード」では、一瞬たりとも無駄にできないからね！" userName="cyrnel" createdAt="2025-03-15T17:48:27" color="">}}

{{<matomeQuote body="これを検出するもっと簡単な方法は、GitHub actionのタグハッシュを保存して、タグが変更された場合にactionをフリーズすることだね。" userName="shawabawa3" createdAt="2025-03-15T14:01:01" color="#ff5733">}}

{{<matomeQuote body="CI/CDのやり方が、GitHub上のランダムなリポジトリをただ列挙するだけってのが、いつもショックなんだよね。監査可能でバージョンを固定してるのは知ってるけど、サーバーにsshで接続する推奨方法が、GitHubのランダムなユーザーからランダムなパッケージにsshキーを渡すことだってのは、どうかしてると思う。<br>LLMの台頭で、これは特に問題になってくると思う。”GitHub actionsからこのプロジェクトをビルドしてデプロイする必要がある”みたいなのから生成されたGitHub actionsがたくさんあると思うんだよね。自分はsshとかキー関連の重要なことは手動で実行するようにしてるけど、そうじゃない人もいるだろうし。" userName="harrisi" createdAt="2025-03-15T02:39:41" color="#ff33a1">}}

{{<matomeQuote body="みんなバージョンを固定してないんだよね。タグを参照するのはバージョンを固定することじゃないし、GitHubの公式actionでも更新されることあるし。" userName="remram" createdAt="2025-03-15T02:50:03" color="">}}

{{<matomeQuote body="GitHub Actionsのインストールって、READMEからコピペするのが普通じゃん？actions/checkoutの例だと`uses: actions/checkout@v4`って書いてあるから、みんなそのまま使うよね。v4が書き換え可能だなんて思わないって。npm/yarnみたいにlockfileでバージョン固定してくれないし。せめてActionの作者がREADMEにsha256載せてくれたらいいのにね。GitHubがデフォルト良くないから、みんな同じことするんだよ。" userName="jakub_g" createdAt="2025-03-15T16:34:50" color="#ff5733">}}

{{<matomeQuote body="GitHubと第三者を信用するのって違うと思うんだよね。GitHub信用できないなら、最初からGitHub Actionsなんて使う意味ないじゃん。タグの使い方はマジで問題あり。GitHubはタグの再発行禁止にすべき。どうしてもって言うなら、`uses: actions/checkout@v4.5.6@abcdef9876543210`みたいな構文で、タグとcommit両方指定できるようにしてほしい。根本的な解決にはならないけどね。結局、信用できないリポジトリ使わないのが一番大事。" userName="xign" createdAt="2025-03-18T12:43:14" color="">}}

{{<matomeQuote body="ちゃんとバージョン固定してる人もいるよ。例えばこんな感じ:<br>- uses: Swatinem/rust-cache@f0deed1e0edfc6a9be95417288c0e1099b1eeec3 # v2.7.7<br>- uses: subosito/flutter-action@f2c4f6686ca8e8d6e6d0f28410eeef506ed66aff # v2.18.0<br>ちょっと手間だけど、用心に越したことないってポーランドのことわざにもあるし。" userName="0rzech" createdAt="2025-03-16T00:29:13" color="#ff5733">}}

{{<matomeQuote body="＞It's a bit more manual work<br>今回の件で、GitHub workflows全部ハッシュで固定するようにしたよ！手作業でやるのめんどくさくなったから、[0]に簡単なスクリプト作った。workflowファイルを全部更新してくれるし、pre-commit hookとしても使える。大したもんじゃないけど、時間節約になるから共有するね。<br>[0] https://github.com/brokenpip3/pre-commit-hooks?tab=readme-ov..." userName="brokenpip3" createdAt="2025-03-16T00:59:59" color="#45d325">}}

{{<matomeQuote body="github action dependencyを特定のtagのhashで指定して、dependabotが更新できるtagも指定する[1]ってやつ、結局botにやらせたら攻撃されやすくなるだけじゃん。<br>[1] https://github.com/brokenpip3/pre-commit-hooks/blob/f01df657..." userName="0rzech" createdAt="2025-03-18T23:43:08" color="">}}

{{<matomeQuote body="RenovateとかDependabotがhash更新PR作ってきたら意味ないよ。うちも先日こんなPRが自動で作られたし:<br>-uses: docker/login-action@9780b0c442fbb1117ed29e0efdff1e18412f7567 # v3<br>+uses: docker/login-action@74a5d142397b4f367a81961eba4e8cd7edddf772 # v3<br>しかもこのPR、書き込み権限のあるユーザーから来るから権限ありで実行されちゃう。" userName="matsemann" createdAt="2025-03-17T08:40:45" color="#ff33a1">}}

{{<matomeQuote body="Dependabotに直接commitさせちゃダメ。PRだけ作らせて、人間が確認してmergeするのが一番。真面目なリポジトリなら、botにcommit権限与えるのはセキュリティ的にヤバい。毎週何百も依存関係更新しなきゃいけないなら、技術スタックを見直すべき。" userName="xign" createdAt="2025-03-18T12:46:52" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="自動mergeしなくても、botは高い権限持ってること多いし（プライベートリポジトリ見れるとか）、PR作るだけでビルドジョブが実行されて、更新されたバージョンでsecretsが暴露される可能性もある。" userName="matsemann" createdAt="2025-03-19T09:23:58" color="">}}

{{<matomeQuote body="セキュリティの観点から言うと、GitHub actionのhash更新を自動化するのは、ピン留めする意味がなくなる。" userName="0rzech" createdAt="2025-03-18T23:30:45" color="#ff5c5c">}}

{{<matomeQuote body="GitHub actionの“パッケージ”って、メジャーバージョンで指定するんじゃないの？ checkout@v4とか。それってv4の単一リリースを指定してて、更新されないと思ってたんだけど…違ってたらマジでヤバい。" userName="harrisi" createdAt="2025-03-15T02:54:28" color="">}}

{{<matomeQuote body="いやいや、”v4”タグはv4.1からv4.2みたいに、マイナーバージョンがリリースされるたびにアップデートされるんだよ。機能的にはブランチみたいなもんさ。" userName="remram" createdAt="2025-03-15T02:57:48" color="">}}

{{<matomeQuote body="その通り。今回起きたのはまさにそれで、悪いやつがそれらのバージョンタグを全部、自分の悪意のあるコミットを指すように変更しちゃったんだ。<br>詳しくはここを見て<br>https://github.com/tj-actions/changed-files/tags<br>すべてのタグがコミット`^0e58ed8`を指してる。<br><br>https://github.com/tj-actions/changed-files/commit/0e58ed867..." userName="werrett" createdAt="2025-03-15T03:06:08" color="#ff33a1">}}

{{<matomeQuote body="もし間違ってたら訂正してほしいんだけど、”Rules”を使えば、タグのアップデートをブロックして、今回の問題を防げたんじゃないかな？<br>https://github.blog/news-insights/product-news/github-reposi..." userName="diggan" createdAt="2025-03-15T15:02:46" color="">}}

{{<matomeQuote body="そうだけど、タグのアップデートはリポジトリのパッチをリリースするための事実上のメカニズムだから、そんなことするGitHub Actionはないと思うよ。" userName="sestep" createdAt="2025-03-15T15:41:09" color="">}}

{{<matomeQuote body="マジか、教えてくれてありがとう（他の人も指摘してくれて）。ヤバすぎ。" userName="harrisi" createdAt="2025-03-15T03:02:12" color="#38d3d3">}}

{{<matomeQuote body="gitのSHAでActionを固定すれば防げるけど、普通はやらないよね。Actionの作者はアップデートが自動で適用されるのを好むだろうし。" userName="semiquaver" createdAt="2025-03-15T15:39:06" color="">}}

{{<matomeQuote body="もっとヤバいのは、みんなバージョンを固定してないこと！コミットハッシュを指定できるのに、タグやブランチ名を使うことが多い。それって簡単に変更できるし、実際よく変更されるよね（例えば、`v3`が`v3.5.1`から`v3.5.2`に更新されるとか）。" userName="sestep" createdAt="2025-03-15T02:43:52" color="#785bff">}}

{{<matomeQuote body="マジかよ。またデフォルトが安全じゃないのか。バージョン指定子はハッシュだけであるべきだと思う。セマンティックバージョンなんて忘れろ（互換性の判断は別の方法でやれ。どっちにしろアップデートごとにセキュリティ監査が必要だ）。プロセスは、古いハッシュ、新しいハッシュ、diffコード、セキュリティ監査、互換性監査（semverはメタデータ）、テスト実行、新しいハッシュへのアップグレード。" userName="nextts" createdAt="2025-03-15T03:03:16" color="#785bff">}}

{{<matomeQuote body="あなたともう一人が指摘してたね。GitHub-orgのActionしか使ってないから、全部を管理するルールがあると思ってたんだけど…どうやって監査するんだ？<br>GitHub Actionsで特定のコミットハッシュを指定するように推奨されてるのを見たことない。いつもv1とかv2とか。" userName="harrisi" createdAt="2025-03-15T02:56:54" color="#45d325">}}

{{<matomeQuote body="一応、ここでおすすめとしてドキュメントに書いてあるよ：<br><br>https://docs.github.com/en/actions/security-for-github-actio..." userName="evntdrvn" createdAt="2025-03-15T14:06:46" color="">}}

{{<matomeQuote body="それやるには`foo/bar@commitshagoeshere`って書くんだって。<br>例：`uses: RafaelGSS/bad-action@e20fd1d81b3f403df56f5f06e2aa9653a6a60763 # v1.0.1`<br>([https://blog.rafaelgss.dev/why-you-should-pin-actions-by-com...](https://blog.rafaelgss.dev/why-you-should-pin-actions-by-com...)から)" userName="sundarurfriend" createdAt="2025-03-15T18:41:57" color="#785bff">}}

{{<matomeQuote body="ほんとそれ。`tags`は公式の`GitHub actions`だけにしとくべき。他は全部`pin`止めしとくべきだね。" userName="0rzech" createdAt="2025-03-16T00:59:24" color="#45d325">}}

{{<matomeQuote body="`OpenSSF scorecard`は、`hash`で`pin`止めされてない依存関係(`GitHub actions`含む)にフラグ立てるよ。<br>[https://scorecard.dev/](https://scorecard.dev/)<br>[https://github.com/ossf/scorecard/blob/main/docs/checks.md#p...](https://github.com/ossf/scorecard/blob/main/docs/checks.md#p...)" userName="mcpherrinm" createdAt="2025-03-15T03:37:41" color="#ff5c5c">}}

{{<matomeQuote body="`ssh`/`rsync`に`actions`使わなきゃいけないのがずっとイヤだったんだよね。最近、直接コマンド使うように変えたんだ(ちょっと面倒だけど)。<br>`GitHub Actions`の欠点は、サードパーティの`actions`が広まりすぎてることだと思う。「`GitHub actions ssh`」で検索したら、公式ドキュメントが一番上に来るべきなのに、サードパーティの`actions`の例ばっかり出てくる。" userName="tommasoamici" createdAt="2025-03-15T19:08:55" color="">}}

{{<matomeQuote body="マジそれ。`GitHub Actions`使おうとしたけど、公式ツールとドキュメントが充実してた`GitLab`にしたわ。俺のニーズはシンプルなんだ。ちょっとしたスクリプト書くだけでも、コードと`deps`が多いサードパーティの`repo`を監査するよりマシ。<br>あと、初心者だと、`action`がただのランダムな`repo`だって気づかないかも。" userName="kalaksi" createdAt="2025-03-15T09:06:03" color="#38d3d3">}}

{{<matomeQuote body="＞CI/CDのやり方が、`GitHub`上のランダムな`repository`をリストアップするだけってのが信じられない。<br>わかる？俺のCIのイメージは「定義済みの環境で、自動化されたコマンドの連続」なんだよね。再現性と並列処理のために、ちょっといい感じにした`bash scripts`の集まりみたいな。<br>それを、ベンダーロックされたブラックボックスな”`Actions`”に変えるのは…CI本来の価値を薄めてる気がする。" userName="12_throw_away" createdAt="2025-03-16T17:52:12" color="">}}

{{<matomeQuote body="イミュータブルな`github actions`[1]の話が出てないのが意外。2022年からずっと待ってるんだよね。これが実現すれば影響はかなり小さくなるはず。`github`には頑張ってほしい。<br>俺はいつも`actions`をフォークするか、少なくとも`commit hash`を使うようにしてる。<br>[1] [https://github.com/features/preview/immutable-actions](https://github.com/features/preview/immutable-actions)" userName="Sytten" createdAt="2025-03-15T05:31:11" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
