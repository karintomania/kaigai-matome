+++
date = '2025-03-25T00:00:00'
months = '2025/03'
draft = false
title = 'ドイツ議会の投票がGitのコントリビューショングラフみたいになってて草'
tags = ["議会", "Git", "ドイツ", "法案", "オープンガバメント"]
featureimage = 'thumbnails/orange2.jpg'
+++

> ドイツ議会の投票がGitのコントリビューショングラフみたいになってて草

引用元：[https://news.ycombinator.com/item?id=43466509](https://news.ycombinator.com/item?id=43466509)

{{<matomeQuote body="GitHubにmarkdown形式で法律が置いてあるリポジトリもあるんだって。議会の政党が提案した実際の変更に対して、PRまで使ってるらしいよ。しかもコミットにはちゃんとした日付が入ってて、`git blame`で法律の責任者までわかるし、誰が承認したかもわかるんだって。残念ながら、今はメンテされてないみたいだけどね。<br>https://github.com/bundestag/gesetze" userName="nikeee" createdAt="2025-03-25T01:24:16" color="">}}

{{<matomeQuote body="ドイツの法律を全部集めたリポジトリをメンテしてるよ。ちゃんと最新の状態にしてるんだ。<br>https://github.com/jandinter/gesetze-im-internet<br>公式ウェブサイト（https://www.gesetze-im-internet.de）を週一でスクレイピングしてるんだ。リポジトリには「公式」のXMLファイルが入ってるんだけど、法律の論理構造よりも見た目を重視したフォーマットになってるのが残念なんだよね（https://www.gesetze-im-internet.de/dtd/1.01/gii-norm.dtd）。<br>前に、ドイツのデジタルサービスの人から連絡があって、俺のユースケースについて聞かれたんだ。もしかしたら、いつか「Git law」の公式バージョンができるかもね…。" userName="jandinter" createdAt="2025-03-25T06:46:45" color="#ff5c5c">}}

{{<matomeQuote body="めっちゃクールじゃん！実は去年、https://digebu.de を作ってるときに、君のプロジェクトを見つけたんだ。<br>「IDEっぽい」法律リーダーを作りたくてね。選択ハイライトとか、同じウィンドウ内で参照を開けるようにしたんだ。gesetze-im-internet.deを毎日スクレイピングして、XMLをJSONに変換して、静的なHTMLページを作って、Github pagesでホストしてる。6000ページ以上のビルドプロセス全体でも5～10分しかかからないんだ。Github proについてくるactions minutesの20%も使わないんだよ。<br>めっちゃ楽しい体験だった。<br>一番面白かったのは、ドイツの法律の公式バージョンって存在しないみたいなんだよね。国は「法律Xを以下のように変更します」、「法律Xを削除します」、「法律Xを追加します」みたいな公式発表をするだけ。だから、ドイツの法律の公式バージョンって、git treeみたいなものに近いんだと思う。AFAIK、統合されたバージョンは全部、民間の団体が作ってるんだよね。<br>試しに法律をランダムに選んで、最初に公開された日を見つけて、その後の変更を全部適用してみたんだ。そしたら、どのバージョン（gesetze-im-internet、dejure.org、buzer.de）にも、少なくともいくつかの小さな間違いがあったんだ。これはマジで面白いし、ちょっと怖いと思った。<br>あと、もう存在しない法律がよく参照されてるのも面白いよね。法律のコレクションは、80年前のシステムを想像してもらうとわかると思うんだけど、メンテナーが5年ごとに変わるから、全然整理されてないんだ。" userName="Bewelge" createdAt="2025-03-25T10:24:01" color="#ff33a1">}}

{{<matomeQuote body="gitは80年前の法律に適切な日付を入れられるようにアップデートされたことある？最後に確認したときは、unix epochより前のものはgitに入れられなかったはずだけど。" userName="NoMoreNicksLeft" createdAt="2025-03-25T17:09:50" color="">}}

{{<matomeQuote body="＞ Turns out all available versions (gesetze-im-internet, dejure.org, buzer.de) had at least a couple of small mistakes.<br>その小さな間違いってどんなものだったか、もっと詳しく教えてくれる？法律の解釈に影響するようなものだったのかな？" userName="hulium" createdAt="2025-03-25T11:45:39" color="">}}

{{<matomeQuote body="俺がチェックした例では、間違いは解釈を変えるようなものではなかったよ。コンマが多かったり少なかったり、スペースがなかったり、冠詞がなかったりする程度のミスだった。<br>buzer.deには、gesetze-im-internet.deとの違いがリストアップされてるよ。<br>https://www.buzer.de/quality.htm<br>このリストには、解釈を変えるような間違いもあるよ。でも、実際はそこまで深刻じゃないと思う。結局、どのソースを使うにしても、1000ページ以上のPDFを統合するときに、ミスがないことを誰か1人を信じるしかないってことだよね。" userName="Bewelge" createdAt="2025-03-25T11:56:20" color="#38d3d3">}}

{{<matomeQuote body="じゃあ、最新バージョンを手に入れる公式の方法って何？<br>つまり…国自体はどうやって法律を管理してるの？まさか、ドイツの裁判所とか政府機関はみんな本を買ってるの？" userName="atVelocet" createdAt="2025-03-25T18:34:54" color="">}}

{{<matomeQuote body="まだ本を買ってるかはわからないけど、ドイツの裁判官だった人から聞いた話だと、オンラインで十分になったから、本を買うのをやめたのは5～10年前くらいらしいよ。<br>俺が言いたいのは、最終的なテキストの公式バージョンは存在しないってこと。公式発表はBundesgesetzblatt（昔は民営化されてたけど、それは別の話）で行われる。例えばこんな感じ。<br>1947年：「以下の文章を法律とし、Grundgesetz「第I条：人間の尊厳は不可侵である」とする」<br>2026年：「Grundgesetzの第1条を「人間または異星人の尊厳」に変更する」<br>これらの変更を最終的なテキストにまとめる団体はたくさんある。でも、この統合は公式には行われないんだ。だから、この例では2026年の法律が「人間と異星人の尊厳は不可侵である」と簡単にわかるけど、80年以上にわたって変更が繰り返され、PDFでしか入手できない場合はわかりにくくなるんだ。" userName="Bewelge" createdAt="2025-03-25T22:37:00" color="#785bff">}}

{{<matomeQuote body="法律はBundesgesetzblattを通じて配布される。これはドイツ連邦議会の法律の公式発表出版物。オンラインはこちら：<br>https://www.recht.bund.de/de/bundesgesetzblatt/bundesgesetzb...<br>[EDIT：リンク修正]" userName="Propelloni" createdAt="2025-03-25T19:42:59" color="">}}

{{<matomeQuote body="ユースケースについて何て言ったの？<br>ユースケースが必要だって前提に同意できないから聞いてるんだ。透明性と公共の情報は民主主義社会にとって当然の価値だと思う。" userName="couscouspie" createdAt="2025-03-25T09:35:16" color="">}}

{{<matomeQuote body="透明性どうこうより、Gitリポジトリで公開すること自体が目的なのか、それともGitをベースにしたツールがあるのかって話かもね。Gitリポジトリなんてほとんどの人には使い物にならないし、透明性確保にはならなくね？使いやすいツールがあれば別だけど。俺もその辺の回答に興味あるわー。" userName="jraph" createdAt="2025-03-25T11:09:17" color="">}}

{{<matomeQuote body="公式ウェブサイトにアーカイブがないから、公式のXMLファイルをアーカイブしたいだけなんだよね。だからXMLファイルも変更しない。仕様書もあるし、みんな好きにJSONとかに変換できるでしょ。" userName="jandinter" createdAt="2025-03-25T17:34:51" color="#45d325">}}

{{<matomeQuote body="Gesetze im Internetの代わりに公式APIを開発中で、数週間以内には公開されるらしいよ。" userName="nicbou" createdAt="2025-03-26T14:49:56" color="#ff33a1">}}

{{<matomeQuote body="ナイスな試みだね。XMLデータを前処理して、XML全体じゃなくてコンテンツの差分だけが見れるようにしたらどうかな？" userName="tapia" createdAt="2025-03-25T08:05:15" color="">}}

{{<matomeQuote body="それも考えたんだけど、アーカイブが目的なんで前処理はしないことにした。XMLの仕様書もあるし。前処理で構造を変えちゃうと、読むのは楽になるかもしれないけど、アーカイブとしては微妙かなって。具体的なユースケースがある人は自分で前処理すればいいんじゃない？" userName="jandinter" createdAt="2025-03-25T17:39:53" color="">}}

{{<matomeQuote body="ドイツの法律がどうなってるかは知らんけど、ソフトウェアのバージョン管理って法律作りには向いてない気がするんだよね。ソースコードはダメなところを修正していくけど、法律ってアドオンだらけの迷路みたいなもんでしょ。「1992年の漁船の安全に関する法律の第12条3項5行目の「中小企業」を「核ロケット」に置き換える」みたいな表現で新しい法律が導入されるんだぜ。バージョン管理じゃこんな変更絶対見つけられないって。" userName="mrweasel" createdAt="2025-03-25T07:26:12" color="">}}

{{<matomeQuote body="それってdiffを手動で記述してるようなもんじゃん。バージョン管理されてればそんな記述いらないのに。法律こそバージョン管理が必要だと思うわ。" userName="amai" createdAt="2025-03-25T07:38:14" color="">}}

{{<matomeQuote body="そういう相対的なテキストパッチを、メタデータとか参照場所の配列と一緒にコミットすればいいんじゃない？そしたら、変更前のテキストに打ち消し線を入れるツールとか作れるかも。" userName="jxramos" createdAt="2025-03-25T17:07:01" color="">}}

{{<matomeQuote body="＞バージョン管理されてればそんな記述いらないのに。<br>じゃあ、国中の法律を全部書き換えてバージョン管理に対応させればいいってこと？マジ？<br>実際には、変更履歴を見るためのコミットと、変更内容を説明する記述の両方が必要だと思うよ。" userName="throwaway290" createdAt="2025-03-25T11:01:14" color="">}}

{{<matomeQuote body="＞バージョン管理されてればそんな記述いらないのに。<br>いやいや、バージョン管理を始めるためにバージョン管理を始める必要があるってだけじゃん。「最初のgit commit」みたいなもんよ。" userName="plextoria" createdAt="2025-03-25T11:17:30" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="GrundgesetzのMVPコミットって感じだな。" userName="globalise83" createdAt="2025-03-25T12:22:46" color="">}}

{{<matomeQuote body="システムによってはうまくいくかもしれないけど、イングランドは制定法の上に判例が積み重なってるから、それをコードに戻すのは難しいかもね。" userName="harvey9" createdAt="2025-03-25T07:54:50" color="">}}

{{<matomeQuote body="判例は基本的にモンキーパッチ（またはラッピング／デコレーション）みたいなもんだよ。法律自体は変更しないけど、実行中の法律の一部ってこと。" userName="masklinn" createdAt="2025-03-25T08:02:30" color="">}}

{{<matomeQuote body="ここでのゴールは単なる「変更追跡」以上のものだと思ってたんだよね。それならWordでもできるじゃん。" userName="harvey9" createdAt="2025-03-25T15:13:40" color="">}}

{{<matomeQuote body="それ、まさにドイツの法律の仕組みと同じだよ。というか、common/case lawじゃない法律システムは全部そうだと思う。変更は既存の法律を追加、削除、または変更する形になる。ドイツには2006年からの変更を全部見れるサイトがあって、差分表示もできるんだって。例えば、＞https://www.buzer.de/gesetz/5041/v322454-2025-03-25.htm　だよ。" userName="Bewelge" createdAt="2025-03-25T10:30:45" color="#38d3d3">}}

{{<matomeQuote body="ほとんどの国の法律（例外はあるけど、主要な法律の標準）は、更新されることが前提の固定された法律なんだ。フランスの家族法の2025年版は全部含まれてて、2024年版との差分を見れば、どの部分が削除／更新／置換されたかわかる。最初から最後まで読めば、家族に関するすべての法律がわかるってわけ。common lawの時代遅れなシステムだと、法律を理解するには、関連する先例で補強されたランダムな法律の蜘蛛の巣が必要になるけどね。" userName="sofixa" createdAt="2025-03-25T11:26:46" color="#45d325">}}

{{<matomeQuote body="フランスのすべての法律がそうってわけじゃないよ。実際、フランスで適用されてる法律の中には、ドイツ語で書かれてて、法典にまとめられてないものもあるんだ。そういう法律を研究する専門の研究所もあるくらい。[1]https://idl-am.org/<br>労働者が「短い」病気休暇に対して全額補償されるべきだって書いてある原文を探したら、ドイツ語の短い文章が見つかったってことがあったよ。うちの会社は会計士に相談して法律を遵守してくれたけどね。" userName="gwervc" createdAt="2025-03-25T17:44:01" color="#ff5c5c">}}

{{<matomeQuote body="これはアルザスとロレーヌ（モゼル）の一部っていう特殊なケースで、数十年ドイツにいたから、混合法体系になってて、祝日が多いとか面白い点もあるんだよね。" userName="sofixa" createdAt="2025-03-25T22:05:28" color="">}}

{{<matomeQuote body="法律＝コンテンツって思ってるのかもだけど、そうじゃなくて、刑法とか民法がコンテンツなんだ。法律自体はパッチファイルみたいなもので、周りにメタデータが付いてる（法案が修正される過程でメタバージョンの履歴も残る）。新しいファイルを追加することも、編集することもできる。どっちにしても、それがコンテンツじゃなくて、コンテンツの変更内容の説明なんだよ。だから、バージョン管理システムが役に立つってわけ。" userName="peeters" createdAt="2025-03-26T04:00:53" color="#785bff">}}

{{<matomeQuote body="例外だらけの状態って、意外とすぐにソフトウェアじゃ再現できないものになっちゃうんだよね。法律の設計が悪いんじゃなくて、プログラミング言語が対応できてないって考え方もできるけど。法律で一番笑えるのは、エンジニアなら利用可能なスペースにきれいに収まるように図面を作るのに、法律家は数字とか説明をランダムにばらまいて、誰も作れないようにするんだよ。" userName="6510" createdAt="2025-03-25T11:27:11" color="#ff33a1">}}

{{<matomeQuote body="ドイツの法律は違うかもだけど、法律制定にソフトウェアのバージョン管理が合うとは思えないって意見には賛成できないなー。<br>名前と日付を紐づけたり、状態の変化を見たり、誰が賛成したかとかも簡単にわかるじゃん。<br>今の法律みたいに、修正じゃなくて「前のやつ無視してOK」ってコードを追加する方がおかしいと思う。<br>＞ドイツの法律はソースコードみたいに動かない部分を置き換えるんじゃなくて、付け足しだらけの迷路みたいになってるってこと？<br>そうそう。紙でやってるからそうなっちゃうんだと思うよ。" userName="NoMoreNicksLeft" createdAt="2025-03-25T17:13:42" color="#45d325">}}

{{<matomeQuote body="＞ドイツの法律は違うかもだけど<br>やっぱり秩序が大事だよね。" userName="dopa42365" createdAt="2025-03-25T07:55:12" color="">}}

{{<matomeQuote body="ローカルの法律をリファレンスとして使うとき、PDFからMarkdownに変換してるよ。そうすると、どこを指してるのか特定しやすいんだよね。<br>一般的な法律をMarkdownにするのは大変だけど、marker[1]を試してる。今のところ一番いい感じ。<br>[1]: https://github.com/VikParuchuri/marker" userName="majkinetor" createdAt="2025-03-25T06:40:36" color="">}}

{{<matomeQuote body="こういうデジタル化はいいね。<br>法律や規制ができた理由を一般の人が簡単に見れるようにするべきだと思う。良い理由があっても、誰も知らないってことあるから。" userName="ZuLuuuuuu" createdAt="2025-03-25T08:42:30" color="#785bff">}}

{{<matomeQuote body="法律って、普通は理由を説明する長い文章と一緒に通るんだよね。裁判所は、法律の解釈で問題があったらそれを見るんだよ。" userName="jampekka" createdAt="2025-03-25T09:10:34" color="">}}

{{<matomeQuote body="なんか、lawmaking-by-gitは一般の人にはアクセスしにくい気がするんだよね。" userName="zesterer" createdAt="2025-03-25T08:55:22" color="">}}

{{<matomeQuote body="US Constitution in GitHubもあるよ: https://github.com/JesseKPhillips/USA-Constitution" userName="LorenDB" createdAt="2025-03-25T02:37:17" color="">}}

{{<matomeQuote body="いいね。全部やって、コミットの詳細を実際の作成日にしてほしいな。gitってpre-epoch timestampsと相性どうなんだろう？" userName="fashion-at-cost" createdAt="2025-03-25T03:30:38" color="">}}

{{<matomeQuote body="ちょっと調べてみた。<br>gitは最初u32 timeで作られたんだけど、2038年問題があるから拡張してるみたい。<br>gitの内部はもう面白いタイムスタンプに対応できそうなんだけど、git toolingとかUIがpre-epoch timestampsに対応してないんだよね。<br>git’porcelain’とかlibgit2で試したけど、ちょっと面倒だった。<br>まとめると、gitのtoolingをハックする必要があるけど、心臓外科手術ってほどじゃないと思う。内部はもう準備できてるから。" userName="eru" createdAt="2025-03-25T04:02:40" color="#ff33a1">}}

{{<matomeQuote body="昔まで遡ると、存在しなくなった管轄区域が違うタイミングでカレンダーを切り替えてたりしてややこしくなるよね。Unix timestampsは1600年代より前の日付には向いてないと思う。<br>少なくとも、歴史的なうるう秒のことは気にしなくて済むね。" userName="fc417fc802" createdAt="2025-03-25T08:57:19" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Gitベースで政府が動けば、決定とか貢献が全部オンラインで追跡できてめっちゃ透明化できるじゃん？マジ最高！アメリカだと予算上限危機で、両党が政府閉鎖防ぐために借金上限引き上げ法案をごり押ししようとするんだよね。クリスマスの前とかにさ。でも実際は、ロビー活動でいろんな特別利益団体向けの抜け穴とか盛りだくさんの法案が通っちゃうんだよ。誰がいつ、どうやって条項追加したか、超党派の合意がどうやってできたか、事後じゃなくてリアルタイムで知りたいよね。" userName="slt2021" createdAt="2025-03-25T03:02:08" color="#ff5733">}}

{{<matomeQuote body="＞どうやって超党派の合意がリアルタイムでできてるか”を知りたいって？<br>それ、実際にはマジ無理ゲーだよ。公開されてると清廉潔白さのテストになっちゃうから。交渉には譲歩が必要不可欠なのに、公開されたら揚げ足取りの材料にされそうで誰も動けなくなるって。特にアメリカは予備選挙があるから、議員はさらに攻撃に弱くなっちゃうし。議員は有権者の代理人じゃないんだよ。判断するために選ばれてるんだから、リコールとか投票制限がないのはそういうこと。会議とか全部録画・放送なしにしたら、政治はもっと良くなると思う。議事録は公開してもいいけど、短い動画とか作れなくすれば、今よりずっと生産的になるってマジで。" userName="arlort" createdAt="2025-03-25T06:51:24" color="">}}

{{<matomeQuote body="＞会議とか全部録画・放送なしにしたら、政治はもっと良くなると思う”って、それもう報道機関いらないじゃん。だって、誰の責任も追及できなくなるよ？極論、君主制に戻って有権者の意見とか聞かなくて済むようにすれば？国民の政治に対する認識が soundbite に左右されてるのはマジで問題だけど、民主主義を維持したいなら、誰が何をしてるか、誰がどんな決定に関わってるか、どんな取引が行われてるかを知る手段は絶対必要だよ。じゃないと、有権者はどうやって賢明な選択をするの？ soundbite 問題に対処するには、競争的な民主主義より合意形成型の民主主義（比例代表制、国民投票とか）の方が安定してると思う。アメリカは特にそういう変化が必要じゃないかな。今は怒りに支配されてる感じ。" userName="Shacklz" createdAt="2025-03-25T10:11:52" color="">}}

{{<matomeQuote body="＞報道機関いらないじゃん。だって、誰の責任も追及できなくなるよ？”<br>議事録って知ってる？全部非公開にするって言ってないし。ジャーナリストとか一般人がいるのは全然OK。<br>＞誰が何をしてるか、誰がどんな決定に関わってるかを知る手段は絶対必要”<br>選挙とか roll calls とか議事録があるじゃん。<br>＞どんな取引が行われてるか”<br>それ実際に可能だと思ってる？絶対無理だって。取引は秘密裏に行われるし、密約は交わされる。透明化を徹底しても、公式の場で効果的な妥協ができなくなるだけ。" userName="arlort" createdAt="2025-03-25T10:41:51" color="">}}

{{<matomeQuote body="＞オンラインで追跡できてめっちゃ透明化”なんて、政府とか役人は絶対に嫌がるよ。だって、金と権力はそこにあるんだから。" userName="ekianjo" createdAt="2025-03-25T03:28:02" color="">}}

{{<matomeQuote body="イデオロギーで動いてる人もいるから、もっと面白いことになるかもね。" userName="yard2010" createdAt="2025-03-25T08:06:48" color="">}}

{{<matomeQuote body="＞Gitベースで政府が動けば、決定とか貢献が全部オンラインで追跡できてめっちゃ透明化できるじゃん？マジ最高！”<br>理想はそうだけど、実際にはやめた方がいいと思う。議会での演説とかはもう公開されてるけど、だからこそ無意味なんだよね。ただの国民向けのパフォーマンスに使われてるだけ。妥協点を見つけるための本当の作業は、密室で行われるんだよ。そうすれば、次の選挙で攻撃材料にされるような発言を避けられる。特に、党内のライバルから「純粋じゃない」って責められるのを避けられる。" userName="eru" createdAt="2025-03-25T03:46:58" color="">}}

{{<matomeQuote body="マジかよ、透明性はマジでヤバいってこと？本当の問題は、有権者が政治家に完璧さを求めすぎることじゃね？" userName="scroblart" createdAt="2025-03-25T04:29:05" color="">}}

{{<matomeQuote body="透明性が全くないのも問題だよね。中途半端な透明性で何とかするのが、実際には一番マシな妥協点かも。特に投票がある民主主義、特にfirst-past-the-postの投票方式だとね。sortitionで議員を選ぶってのも、透明性のデメリットをなくせるかもね。" userName="eru" createdAt="2025-03-25T05:06:06" color="">}}

{{<matomeQuote body="国民は誰が、いつ、どうやって法案に手を加えてるのか、超党派の合意がどうやってリアルタイムで形成されてるのかを知るべきだよね。事後じゃなくてさ。今は報道機関とか独立系のグループがやってるけど、カバーできる範囲が限られてるし、ほとんどの人はニュースを見るくらいしかしないじゃん。深掘りしたジャーナリズムもあるけど、探さないと見つからないんだよね。" userName="KennyBlanken" createdAt="2025-03-25T06:56:27" color="#38d3d3">}}

{{<matomeQuote body="gitを使ったからって何が変わるの？議員が何千ページもある法案を読まずに提案する代わりに、何千ページもあるcommitのpull requestを出すだけでしょ？" userName="umanwizard" createdAt="2025-03-25T06:50:09" color="">}}

{{<matomeQuote body="もし政府の手続きをblockchainに載せるなら、SHA1よりもっと強力なものを使うべきじゃない？" userName="__MatrixMan__" createdAt="2025-03-25T03:15:15" color="">}}

{{<matomeQuote body="だってSHA1は古くて、敵対的な状況には向いてないからだよ。<br>＞https://security.googleblog.com/2017/02/announcing-first-sha... “を見てみな。<br>ほとんどのgit repoは敵対的じゃないからSHA1でも大丈夫だけど、議会の法的手続きを追跡するなら、歴史を改ざんされたくないよね。法案が成立するかどうかの重要な結果に関わるんだから。" userName="__MatrixMan__" createdAt="2025-03-25T05:20:22" color="#ff5c5c">}}

{{<matomeQuote body="gitリポジトリに対するSHA1 collision attackは現実的じゃないって説明じゃなかったっけ？gitリポジトリにこっそり何かを紛れ込ませることを気にしないってことじゃなくて。" userName="dullcrisp" createdAt="2025-03-25T05:41:24" color="">}}

{{<matomeQuote body="ちょっと調べてみたよ。<br>＞https://marc.info/?l=git&m=115678778717621&w=2 “に書いてあった。<br>「gitリポジトリにこっそり何かを紛れ込ませることを気にしない」んじゃなくて、collisionが起きたとしても、攻撃者の悪意のあるコードが勝手にrepoに入り込むわけじゃないんだって。攻撃者ができるのは混乱を引き起こすことくらい。プロジェクトのメンテナーなら、PRを拒否するだけで済むし、そんなことのためにcollisionにお金を使う価値はないよね。でも、法律を変えるかどうかの投票で、結果が混乱したら大変なことになるから、敵対者はcollisionを起こすことを考えるかもしれないね。gitがダメな理由は他にもあるかもしれないけど、とりあえず思いついたのはそれ。" userName="__MatrixMan__" createdAt="2025-03-25T06:54:31" color="#ff33a1">}}

{{<matomeQuote body="マジレスすると、アメリカの会計年度が10月1日に始まるから、資金調達の法律がそれまでに制定される必要があるって理由で、カレンダーに関連付けられてることが多いと思うよ。" userName="dh5" createdAt="2025-03-25T03:20:16" color="">}}

{{<matomeQuote body="マジそれな。債務上限の引き上げは別のイベントで、理論的には10月1日に予算案が通らなかったら閉鎖になる可能性もあるし、2000年まではそうだった。<br>債務上限に関連して予算に関するイベントがあって、ソリューションを急いで作って、無駄なものが追加されるって考えは、完全に間違ってる。10月って言ってるってことは、予算のこと考えてて、議会の少数党がソリューション作るのに同等の立場にあるとか、予算を作るのに必要だとか思ってるのかも。それなら、無駄遣いの話も納得できる。" userName="refulgentis" createdAt="2025-03-25T04:06:16" color="#45d325">}}

{{<matomeQuote body="最近の出来事をなかったことにしようとしてる？<br>https://thehill.com/homenews/senate/5046873-rand-paul-johnso...<br>https://thehill.com/homenews/senate/475831-mcconnell-flexes-..." userName="slt2021" createdAt="2025-03-25T06:41:12" color="">}}

{{<matomeQuote body="いやいや、Hacker NewsのFAQ見てよ。好奇心を持って参加して、良いコメントは学ぶきっかけになるし、スレッドが進むにつれてコメントはもっと詳しくなる。<br>あと、記事がどう関係してるのかわからない。<br>別にアメリカの政治で債務上限の問題がなかったなんて言ってないからね。" userName="refulgentis" createdAt="2025-03-25T15:33:47" color="">}}

{{<matomeQuote body="もしかして俺がバカなだけかもだけど、Githubで広まって、Gitlabがパクった貢献カレンダー以外に、どこがそんなに“Git”なの？" userName="yallpendantools" createdAt="2025-03-25T04:23:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="自分で答え言ってるじゃん…<br>わかるけど、英語は流動的だし、“git”から“github/lab/service”に飛躍するのはそんなに遠くない気がするけど。言いたいことはわかるよ（git != githubだから完全に正しくなくても）。" userName="trashchomper" createdAt="2025-03-25T04:46:39" color="">}}

{{<matomeQuote body="やったー、バカ帽子かぶらなくて済むみたい。というか、“git”の定義に細かいこと言うつもりもないんだよね。貢献カレンダーが“git”固有のものだと思われてるのが嫌なだけ。Githubが特許取れるとも思えないし---あれは習慣トラッカーみたいなもんだよ。<br>（URLに`git`って書いてあるのも気づいた。ページ作った人はそう思ってるんだろうけど…）<br>フォーラムのトップにあるのが納得いかない。もう関わらない。興味ない。" userName="yallpendantools" createdAt="2025-03-25T05:09:00" color="">}}

{{<matomeQuote body="貢献グラフって読んだとき、コミットと作者のリビジョン履歴グラフのことだと思った。" userName="nyanpasu64" createdAt="2025-03-25T05:24:09" color="">}}

{{<matomeQuote body="わかる。<br>https://gource.io/<br>みたいなやつ期待した。" userName="account42" createdAt="2025-03-25T11:11:58" color="">}}

{{<matomeQuote body="公平に言って、gitとGitHubは違うってことを理解してない人が多いんだよね。うちのマネージャーがそうでさ。「GitHubプルして」とか「新しいマシンでリポジトリにログインできるの？」とか「git wikiの設定チュートリアルが見つからない」とか言ってたよ。" userName="Liquix" createdAt="2025-03-25T15:38:57" color="">}}

{{<matomeQuote body="前に、法律の条文をgitに追加してる人を見たことあるけど、あれってマジで意味ないと思う。そういう人って、商用の法律データベースを見たことないんじゃないかな？<br>普通は、相互参照とかが必要じゃん？例えば、「認証は関連機関によって発行される」みたいな条文があったら、「関連機関」のところに、その機関を指定してる政府の命令へのハイパーリンクが欲しいよね。あと、条文に関連する裁判例へのリンクとかも。法律の改正予定があるなら、「9月1日に改正予定」みたいな注釈が欲しいし。国によって法律が違うから、場所で絞り込みたいこともあるよね。GitHubは生のドキュメントを保存するデータベースとしては使えるかもしれないけど、法律に関する疑問を解決するには役立たないよ。法律をGitHubで読むのは、シンタックスハイライトやナビゲーションがないソースコードを読むようなもんじゃないかな。" userName="codedokode" createdAt="2025-03-25T03:20:27" color="">}}

{{<matomeQuote body="法律の条文の変更案をgitで管理したことがあるけど、あれはあれで結構役に立ったよ。" userName="seba_dos1" createdAt="2025-03-25T04:52:37" color="#ff5c5c">}}

{{<matomeQuote body="法律とか小説みたいな、人間が読むテキストでgitを役立てるには、一行に一文ずつ書くのが一番だと思うな。デフォルトだと、gitのdiffとかmergeは、コードの行を意味のあるものとして扱うように設定されてるからね。" userName="eru" createdAt="2025-03-25T10:58:15" color="#38d3d3">}}

{{<matomeQuote body="git diff --word-diffがあるじゃん。だから、Gitリポジトリで法律の変更を追跡してるウェブサイトなら、デフォルトでそのフラグを使ってdiffを表示すればいいんじゃない？" userName="mojifwisi" createdAt="2025-03-25T12:27:18" color="#45d325">}}

{{<matomeQuote body="そうだね。<br>自分でdiff（とmerge）ドライバーを書いてプラグインすることもできるし、gitはそれくらい柔軟だよ。少なくとも理論上はね。元々はバイナリ形式の追跡を助けるために考えられたんだと思う。<br>でも、この機能が広く使われてて、十分に洗練されてるかどうかは分からないな。<br>だから、実際には、テキストの行を意味のあるものにするために、データ形式を少し変更して、gitをほぼそのまま使う方がいいかもしれない。" userName="eru" createdAt="2025-03-26T01:16:26" color="">}}

{{<matomeQuote body="＞I'm not sure this feature is actually widely used enough to have gotten enough polish to be useful.”<br>役に立つコンテキストをいくつか見てきたから、イエスって言えるよ。" userName="seba_dos1" createdAt="2025-03-26T07:41:04" color="#38d3d3">}}

{{<matomeQuote body="いいね！知れてよかった。" userName="eru" createdAt="2025-03-26T09:33:30" color="">}}

{{<matomeQuote body="技術的にはそうだけど、rawな法律テキストをGitに入れることについて、同じようなコメントがいくつかあるみたいだよ。" userName="codedokode" createdAt="2025-03-25T03:28:15" color="">}}

{{<matomeQuote body="コードにも参照がいっぱいあるよね。一番わかりやすいのは’jump to definition’かな。でもそれってIDEとかエディタと、言語特有のツールでやってることで、Gitとは関係ないじゃん。法律テキストも同じように扱えばいいんじゃないの？" userName="eru" createdAt="2025-03-25T04:49:09" color="">}}

{{<matomeQuote body="Git/Githubは”Go to definition”を提供してないし、元の投稿は法律テキストをGitにコミットするのが無意味だって話だったよね。" userName="codedokode" createdAt="2025-03-25T09:39:06" color="#ff5733">}}

{{<matomeQuote body="Githubは置いといて。全然別ものだし。（Githubは一部の言語で’go to definition’を提供してるけどね。）Gitがプログラムのソースコードに役立つのは当然。で、Gitはソースコードに’go to definition’を提供してない。法律テキストでクロスリファレンスができないのは、ソースコードでクロスリファレンスができないのと同じくらい、この議論に関係ないんじゃないかな。" userName="eru" createdAt="2025-03-25T10:56:31" color="#ff33a1">}}

{{<matomeQuote body="Gitはここでは不要だよ。Gitは複数の人が同じプロジェクトで協力するのに便利。法律を作るのは協力作業？通常、法案に署名する人は一人だよね。でも法案作成中は協力するけど。法律を作る人はコンソールでgitコマンドを打ちたくないでしょ。GUIが欲しいんだよ（できればMicrosoft Wordに統合された）。GUIを作るなら、gitはやめて、従来のRDBを使った方がいいんじゃない？" userName="codedokode" createdAt="2025-03-25T16:21:56" color="">}}

{{<matomeQuote body="Gitは一人でも便利だよ。GitのUIが普通の人には難しすぎるのは確かだね。‘RDB’って言うのは、‘json’とか‘xml’って言うのと同じくらい、データの保存方法について何も言ってないのと同じ。Gitの情報をRDBに保存するのもアリだよね。（もっとマシなパラレルワールドでは、Gitはsqliteみたいなのを使ってたかもね。）UIの問題は、データの保存方法とはほとんど関係ない。" userName="eru" createdAt="2025-03-26T09:36:00" color="#ff5733">}}

{{<matomeQuote body="確か、いくつかのヨーロッパの国が、法律を機械可読な形式で表してアルゴリズムで解析できるようにする「law as code」のアイデアを検討してるはず。オーストリアはすでにいくつかの法律書をその形式に変換してある程度進捗してるみたい。EUも同じようなことをしてるみたいだよ。https://interoperable－europe．ec．europa．eu/collection/endorse…" userName="hnben" createdAt="2025-03-25T08:36:17" color="#45d325">}}

{{<matomeQuote body="https://git．tricoteuses．fr/tricoteuses/a_propos にはフランスの憲法とか(例: Code Pénal: https://git．tricoteuses．fr/codes/code_penal/commits/branch/m… )がGitで管理されてるよ。彼らはこれを自動化するためのカスタムツールも開発してるみたい: https://git．tricoteuses．fr/logiciels/tricoteuses－legifrance" userName="pcdavid" createdAt="2025-03-25T14:05:43" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
