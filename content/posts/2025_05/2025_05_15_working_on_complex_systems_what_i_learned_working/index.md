+++
date = '2025-05-15T00:00:00'
months = '2025/05'
draft = false
title = 'Googleの複雑システムでの仕事 学んだこと'
tags = ["Google", "システム開発", "複雑システム", "エンジニアリング", "キャリア"]
featureimage = 'thumbnails/purple4.jpg'
+++

> Googleの複雑システムでの仕事 学んだこと

引用元：[https://news.ycombinator.com/item?id=43971177](https://news.ycombinator.com/item?id=43971177)




{{<matomeQuote body="個人的に気になるのが，”複雑性”って言葉を使うとき，自分でコントロールできる複雑性（境界あり／任意）と，どうしようもない複雑性（ドメイン／偶発的／環境）を区別しない記事が多いことなんだ．Googleはすごいけど，海運や製造業みたいにデータがない分野の複雑さは，Googleの問題より難しいことが多いと思うな．Googleの人たちを低く見てるわけじゃないけど，そういう区別がないのは残念だよ．" userName="braza" createdAt="2025/05/15 07:46:53" color="#ff5c5c">}}




{{<matomeQuote body="Googleで過ごす時間の90％は，偶発的な組織の複雑性との戦いだろ．これがほぼ無限にあるんだよ．" userName="kubb" createdAt="2025/05/15 09:01:18" color="">}}




{{<matomeQuote body="よく言われてたのが”collaboration headwind”（共同作業の逆風）って言葉．プロジェクトの成功が1人の95％の成功率にかかってるなら，プロジェクトも95％の成功率だ．でも10人それぞれが95％で成功する必要があるなら，プロジェクトの成功率は突然60％になっちゃうんだ．<br>実際は，めんどくさいドメインのオーナーがプロセス，会議，ドキュメント，複数の承認を積み重ねて，ボタンのテキストを変えるのに6ヶ月もかかったりするんだよ，あーあ．" userName="repeekad" createdAt="2025/05/15 10:55:12" color="#45d325">}}




{{<matomeQuote body="Googleには「これが俺にとって何かにならないと承認しない」っていう文化があるんだ．だから今や，ボタンのテキストを変えるのに，2つの小さなリファクタリング，10個の明白だけど無視されてたバグ修正，それに本当に良くなってるかの5つの実験がついてくるんだよ．" userName="pclmulqdq" createdAt="2025/05/15 12:37:38" color="#ff5c5c">}}




{{<matomeQuote body="これってかなりイライラするだろうけど，少なくともちょっとした良い面もあるんだ．少なくとも明白だけど無視されてたバグ修正には取り組めるんだから．<br>小さいとこだとそこまで手が回らないし，大きいとこでもやりたがらないとこが多いからね．<br>まあ，そのリファクタリングで混入するかもしれないバグを補えるかは分からないけどね．" userName="moregrist" createdAt="2025/05/15 13:05:23" color="">}}




{{<matomeQuote body="まあ，オーナーがフィックスのために存在しなかったテストスイート全体を書けって言ってきたら，一番可能性が高いのは，そのドラフトCLで時間を無駄にして，それがそのままお蔵入りになることだよね．" userName="dietr1ch" createdAt="2025/05/15 14:15:40" color="">}}




{{<matomeQuote body="この話の別の側面として，プロジェクトの予想される利益が，組織が取り組んでる無関係なプロジェクト数に依存するってのがあるんだ．これすごく逆直観的だと思うんだけどね．<br>どのプロジェクトにも3つの可能性がある．成功（会社が儲かる），失敗（会社が儲からない），そして”致命的な失敗”（大きな訴訟，規制違反の罰金，PR災害で，プロジェクトで得られるはずだった以上にお金がかかる）だ．<br>スタートアップなら，最悪でも会社の価値が0になるだけ．投資家から見たら，お金を全部燃やす（1000万ドル）のと，プロダクトマーケットフィットを見つけられない（通常の失敗）のと，30億ドルの訴訟を起こされて倒産する（致命的な失敗）のに大差ない．結果は同じで，投資は失われる．でも大企業にとっては，30億ドルの訴訟は1000万ドルを失敗したプロジェクトに費やすよりはるかに高くつくんだ．<br>この3つの可能性はトレードオフできる．面倒な法務レビューや国際化・アクセシビリティテストのチェックリストを各リリースで強制すると，成功率は10％下がるかもしれないけど，”致命的な失敗率”を1％から0.5％に減らせるかもしれない．スタートアップから見たらこれは悪いトレードオフだけど，大企業のギリギリ儲かってるR＆Dプロジェクトなら，そのチェックリストは正しい判断なんだよ．<br>この問題は，管理層の数とか，社内文化とか，”組織の瘢痕組織”とか，通常官僚主義の原因とされるものとは別なんだ．ただ法務とブランド安全の観点から見ても，組織が大きいほど，どれだけ組織を効率化できても，官僚主義は理にかなってるんだよ．" userName="miki123211" createdAt="2025/05/15 15:52:13" color="#45d325">}}




{{<matomeQuote body="彼らがテストを書けって言ってるのは，”彼らのためになるから”じゃなくて，プロのエンジニアとしてテストを書くべきだからだよ．yolo（やったぜ）で済ませるんじゃなくてさ．<br>まあ，テストが現実的じゃないちゃんとした理由がある時もあるだろうね．そういう時は反論したり，別のレビューアを探したりして良いんだ．社内には何十万人も人がいるんだから，コンパイルさえすれば何でも通してくれる一人か二人くらいは見つけられるはずだ．<br>でもほとんどの場合，レビューアがくれてるアドバイスは聞くべきなんだよ．" userName="vkou" createdAt="2025/05/15 17:16:30" color="">}}




{{<matomeQuote body="ボタンをちょっと違う青に変えるだけで，そのボタンのオーナーじゃない場合，ボタンのオーナーがお前にそのボタンのテストを書けって要求するのはおかしいだろ．" userName="pclmulqdq" createdAt="2025/05/15 18:08:35" color="">}}




{{<matomeQuote body="それはつまり，関連するコード領域にテストが（十分なだけ）なかったってこと？フィックスに加えて，その足りないテストをバックフィルするように求められてるの？" userName="specialist" createdAt="2025/05/15 17:45:16" color="">}}




{{<matomeQuote body="小さい会社にいると、時間の90％は社会的な複雑さと戦ってるんだよ。これも限界はないけど、もっと急な坂道って感じ。本当にすごい奴なら、現実が驚くほど複雑だって教えてくれるだろうし、それを整理して戦うリソースがある時もあれば、他の人たちより賢くリソースを使って教訓を共有できる時もある。時には、自分の教訓が役に立つかどうかも全然分からない。記事自体を評価して、そこから学べること学ぼうぜ。" userName="Demiurge" createdAt="2025/05/15 12:49:23" color="">}}




{{<matomeQuote body="これは記事の「複雑 vs 難解」の導入で説明されてると思うな。制御できない変数が多い問題のほとんどは、少しずつ解決していくアプローチになるだろうね。例えば、自分で変数を制限したり、問題を手動で解決したり、自動化をあっさり諦めたりとか。これは「難解」に分類される。難解な問題に深入りするのは主にビジネスチャンスが動機で、スケールには常に限界があるし、大手企業は手を出したがらない傾向があるよ。" userName="tuyiown" createdAt="2025/05/15 10:11:00" color="">}}




{{<matomeQuote body="あの数学の前提はどっちにしろ間違ってるよ。10人に依存する場合、それぞれが「95％うまく実行する」確率がゼロになるわけじゃない。これはプロジェクトメンバー全員がA++プレイヤーであることの不可能さだけが原因じゃない。調整のオーバーヘッドだけじゃなくて、調整リスク（coordination RISK）があるんだ。夫婦で複数の飛行機や電車、ホテル、美術館やレストランの予約を含む2週間の旅行を計画するのを想像してみて。必然的に、お互いの間で何か誤解や伝達ミスがあって、それが間違って実行される。これでコミュニケーションノードが増えると、エラー率が爆発するのを見てごらん。" userName="steveBK123" createdAt="2025/05/15 14:17:55" color="#ff5733">}}




{{<matomeQuote body="あのさ、FAANGみたいな規模のシステムを設計、構築、保守したことは一度もないけど、かなり複雑なシステム（例えば、5000社の異なる法人クライアント向けに、個別に交渉されたハードウェア補助金（常に変わる）とサービスプラン、手数料体系、さらに物流を含む5000種類の異なる料金・補助金ルール。物流は配送だけでなく、デバイスが従業員に届く前に構成するための特定の部署への配送も含む、など）に関わったことはあるんだ。<br>ぶっちゃけ、問題の95％は技術的なものじゃなくて、人間関係の問題だったね。" userName="apercu" createdAt="2025/05/15 13:16:31" color="#38d3d3">}}




{{<matomeQuote body="ここにあるアイデアは好きだけど、30億ドルで訴えられる実際の可能性は、コストの文脈では無視できるほど小さいと思うな。さらに、追加のプロセスやオーバーヘッドがその可能性にどれだけ影響するかも疑問だよ。大企業はまた、こういう訴訟に対する様々な「盾」を持ってる。例えば、政治家にロビー活動したり、弁護士を雇ったり、法務・知財保護部門があったりね。人生の他のことと同じで、現在の価値を見て、大きなリスクには保険をかけるべきだよ。そうは言っても、スタートアップがもっとリスクを取れることには同意するけど、それが大企業がプロセスまみれで遅い主要因だとは私は思わないな。" userName="YZF" createdAt="2025/05/15 19:07:18" color="">}}




{{<matomeQuote body="そうそう。明らかな修正なのに、初めて正式にコードのテストを要求されるっていう反発を経験したことあるよ。全部、誰かを壊すかもしれないから、っていう理由でね。ドキュメントやコメントに基づいて本当の欠陥を示して直した時でさえ。もし本当に壊れることを気にしているなら、私が簡単に始められるように、そこには既にいくつかのテストがあるはずだって思うだろ。" userName="dietr1ch" createdAt="2025/05/15 18:52:25" color="">}}




{{<matomeQuote body="それが数学が示してるところだよ。プロジェクトは10人全員がうまく仕事をすれば成功する。各人の成功確率は95％。0.95の10乗は約60％だから、10人全員がうまく仕事をする確率は約60％だ。その仕事にはマネジメントやプロダクトデザインも含まれてるから、マネージャーがコミュニケーションでヘマをするリスクもその5％に含まれてるんだ。（マネージャーとしては、その確率は5％よりかなり高いと思うし、だから全体の成功率はさらに低いんだ。）" userName="nostrademons" createdAt="2025/05/15 14:46:34" color="">}}




{{<matomeQuote body="もし君が説明するような単純なケースなら、承認できるコードのオーナーがきっと複数人いるはずだよ、たとえ一人が非合理的でもね。もし実際にパッケージの変更を承認できるオーナーが一人しかいないなら、そのプロジェクトのセットアップには何かすごく変で珍しいことがあるか、それは誰かの個人的な趣味プロジェクトで、5年前に書いて、まあまあメンテナンスしてる感じだろ。その場合、君がそこに一行の変更を提出するのがなんでそんなに大事なのか不思議に思うよ。みんな大人だし、みんな一緒に働いてるんだから、みんなで解決できるだろ。もし誰かが絶対にアホみたいに強情なら、エスカレーションすればいい。マネージャーがいるのはそのためだし、彼らには彼らのマネージャーがいる。私の経験だと、非合理的なアホなんてごく少数だね。どんな数十億ドル企業にも、組織、ビジョン、戦略、実行の問題は常にたくさんあるけど、「コードレビューで人が非合理的だ」ってのはトップ10に入るような問題じゃないと思うな。一日の気分を害すことは一度や二度あるかもしれないけど、それをシステム的だとは言えないよ。" userName="vkou" createdAt="2025/05/15 18:23:01" color="">}}




{{<matomeQuote body="あの古い格言通りだね、「早く行きたいなら一人で行け。遠くまで行きたいなら一緒に行け」。" userName="xnx" createdAt="2025/05/15 14:34:22" color="">}}




{{<matomeQuote body="それな、”たった5%”ってのがミソ。通信とか実装とか調整とか、全部の失敗パターンをひっくるめて5%は超低いってこと。その過小評価が積もり積もって、トップレベルの60%成功ってのを実際よりだいぶ高く見せてるんだよ。失敗率が7.5%だとトップの成功確率は50%切って46%だし、現実的な10%だと35%まで下がる。まあそんな感じ。" userName="steveBK123" createdAt="2025/05/15 14:49:40" color="#ff5733">}}




{{<matomeQuote body="記事の「込み入った」と「複雑」の区別じゃ、これに十分に対応できてないと思うんだ。特に税金と気候変動みたいな単純化された例ではダメなんだよね。なんか違う気がするな。ePOD（電子配達証明）で考えてみて。技術実装は「込み入った」かも。でも、実際の導入率が46%しかなくて、ほとんどが紙でやってる状況は「複雑」だよ。Independent contractorsなTruck drivers、インフラ不足のRural regions、incentive structuresの不一致、紙やWhatsAppの混在とか。Socio-technical constraints、Behavioral incentives、Operational logistics、Fragmented accountability、Incomplete or delayed dataの複雑さが絡む。高度に管理された技術実装だけじゃなく、現場の不確実性に対応するのが本当の複雑さだね。" userName="braza" createdAt="2025/05/15 11:22:37" color="#ff5c5c">}}




{{<matomeQuote body="infraとかtoolingみたいに使えるabstractionsによって、どれだけ時間が節約できるかも同じくらい大事だよね。" userName="simianwords" createdAt="2025/05/15 11:00:09" color="">}}




{{<matomeQuote body="＞ If someone absolutely insists on being an asshole, escalate.<br>それは貢献しようとしてる時間にさらに上乗せするってことだよ。本来よりずっと難しくなるって気づいたら、問題を回避する方がたいてい安いんだよ（全然難しくないのに）。" userName="dietr1ch" createdAt="2025/05/15 18:54:55" color="">}}




{{<matomeQuote body="君は正しいけど、問題のニュアンスが抜けてるね。僕は長年F500企業の情報セキュリティのコンサルタントをやってたんだ。問題を解決するのに、ただ適切な人を知ってるだけでいいってことがよくあった。でもエンジニアが10万人もいると、それが桁が一つ（か二つ！）難しくなる。小さなエンジニア組織で解決するのと同じやり方で解決しようとすると、行き詰まって何もできなくなるし、それに費やした時間で損をするだろうね。技術的な問題もそんな感じだよ。スケールアウトされてたり、不慣れなエッジがあったり、単に違うから推論モデルを調整しなきゃいけない。典型的なf500でもできるようなことでも、big techのscaleじゃただじゃできないこともある。君の方向性は正しいし、多くの傷は自業自得なんだけどね。でもGoogleとかFacebookみたいな会社を運営するのはバカみたいに大変で、簡単な答えなんてない、僕たちはただ最善を尽くしてるだけなんだ。" userName="bitexploder" createdAt="2025/05/15 15:14:53" color="#ff5733">}}




{{<matomeQuote body="この説明はlawsuitsだけじゃなかったよね。同じようなカテゴリの他のことはこれだよ：<br>- negative media attention（media scrutiny increases proportionally to organization size）<br>- influential groupをupsetさせて、businessの他の部分に影響が出る可能性（Apple、Google、MicrosoftがUberができる前に”Uber” appを作ろうとしたら、どれだけoutrageになったか考えてみて）<br>- 作業してるserviceをbring downさせて、potentially breaking SLAs<br>- customer / legal commitmentsを満たせないこと、particularly in regards to internationalization, accessibility etc.<br>- security incidents。これはたぶんもっと大きな問題になる、だって君のprojectはinfrastructureの他の部分と繋がってるからね。<br>- cancelled onlineされること。これはemployees（projectとunrelatedな人たち）がquitする原因になる。<br>- projectのためにcompanyがadditional employeesをhireする必要があるというfactからresultする、natural, random and serious consequences。例えば、populationにはsexual assault or financial fraudをcommitする意思のある人がcertain numberいるわけで、more peopleをhireすればするほど、そういう人がget one of themする可能性が高くなる。" userName="miki123211" createdAt="2025/05/15 21:16:04" color="#45d325">}}




{{<matomeQuote body="Coordination Headwind：https://komoroske.com/slime-mold/" userName="sollewitt" createdAt="2025/05/15 14:30:00" color="">}}




{{<matomeQuote body="＞ lazy domain owners<br>面白いね。過去25年のほとんどでconsultantをやってた僕の経験だと、domain ownersはたいていinvestedしてて、自分のjobsにimpactすることにはstrong opinionsを持ってるんだ。一方でExecutive leadershipは、実際にはissuesを知りたくなくて、tee timeがあるからwatches見てeyes glaze overする、って感じだね。" userName="apercu" createdAt="2025/05/15 13:20:10" color="">}}




{{<matomeQuote body="＞ All because it may break someone. Even when I presented a real defect based on docs/comments and fixed it.<br>素晴らしいね、bugを見つけてfixedしたんだから。問題は、他のregressionsがないってどうやってわかるの？Codeはliabilityだよ。一度check it inしちゃうと、それをownsするteamがresponsibleになる。Untested codeはliability of unknown scopeだよ。contributor自身がultimately any of the consequencesをdealing withしないのに、someone’s contributionsを受け入れたがらないのは、quite understandable whyだよ。If you think they are being mean and lazy, imagine if the tables were reversed. I don’t accept puppies or elephants as gifts for similar reasons.<br>existing test coverage sucksなのはunfortunateだね。In this case, the best way forward should be for the team in question to improve coverage, and for you to then submit your fix + a test for it. And if they don’t have budget to do this, then that sucks, but that’s their call to make, and that’s a signal that the project in question is abandonware.<br>And it’s fine for a large company to have a bunch of abandonware. If it works, and produces value, the optimal amount of ongoing development effort to invest into a piece of software may, depending on the circumstances, be near-zero." userName="vkou" createdAt="2025/05/15 20:36:47" color="#38d3d3">}}




{{<matomeQuote body="Also why the optimal business strategy seems to be to go as far as you can alone and then bring on other people when you’re running out of steam." userName="nostrademons" createdAt="2025/05/15 14:48:22" color="">}}




{{<matomeQuote body="良いマネジメントとか技術リーダーシップってさ、個々の失敗（例えば10人の例）からくるリスクをちゃんと見つけて、それに対処することなんだよね。それに、関わる人がリスクや問題点を早めに指摘できるようにして、君が言うみたいにプロジェクト全体の成功率が下がらないようにすること、これが大事なの。" userName="zenogantner" createdAt="2025/05/15 16:21:12" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「これ無理じゃん」ってすぐに頭に浮かんだんだ。でも、チームメイトが「でも俺たちGoogleだよ？なんとかできるっしょ！」って言ったんだよね。Googleってとこはさ、不可能なことが単に難しいことにレベルダウンして、簡単なことが逆に難しくなっちゃう場所なんだ。" userName="dmoy" createdAt="2025/05/15 07:09:29" color="">}}




{{<matomeQuote body="これ、多分一番正確な言い方だわ。「ちょっとどこかに5TiB保存したいだけなんだけど」「はぁ？Bigtableのセルを複数予約したんですか？」って感じね。https://youtu.be/3t6L-FlfeaI?si=C5PJcrrLepABZsVF" userName="dijit" createdAt="2025/05/15 07:48:23" color="">}}




{{<matomeQuote body="すごく助けてくれた人に、お礼として報酬をあげられるっていう仕組みだよ。会社に頼んで、社内ストアで使えるクレジットか、1ヶ月分の給料に直接上乗せしてもらえるんだ。もちろん、上限とかお金かクレジットかとか決まりはある。自分から”peer bonus’ください”って言うのはあんまり”googly”じゃない（Googleがちょっとカルトっぽいって証拠かな）。こういうのをサービスで提供してる会社もあるよ。例えばBonuslyとか。https://bonusly.com/" userName="dijit" createdAt="2025/05/15 08:13:42" color="#45d325">}}




{{<matomeQuote body="前の職場にも似た制度あったな。報酬はキッチンのお椀にあるお菓子とかだったけど（お互いを信じて勝手に持ってくやつ）。あとSlackで褒められて、ちょっとした嬉しい気持ちになれたり。毎日の小さなことを認めるための象徴的なものだったけど、個人的には良かったと思うよ。" userName="Sharlin" createdAt="2025/05/15 08:29:55" color="">}}




{{<matomeQuote body="すごく助けてくれた人に報いるための仕組み、って話だけどさ、昔の大企業では「キャリアを狭める」って思われてたことを、（初期の）大手テック企業が受け入れて、むしろ推してたのがいつもすごいなって思うんだよね。" userName="blitzar" createdAt="2025/05/15 09:59:25" color="">}}




{{<matomeQuote body="まあ要は、会社が社員にちゃんとカネ払わないために、どれだけバカなことしてるかって話でしょ。報酬システム壊れてるし、フーズボール台とかさ。俺は会社のコスト何倍も節約したけど、プロ意識から勝手にやっただけ。HNでも似た話見るし、AWSの技術者がデカいボーナスもらったって話は例外。資本主義は効率とか評価するはずなのに。CEOとかは報酬要求うまいのにね。お菓子？幼稚園かよ。こういう会社ってさ、自由市場で争ってるはずなのに、硬直した階層的で独裁的で、計画経済みたいだよ。ミドルマネジメントの話はやめとくわ。お菓子の件、おめでとうさん。" userName="AtlasBarfed" createdAt="2025/05/16 02:01:58" color="#ff5c5c">}}




{{<matomeQuote body="”the difficult we do immediately. The impossible takes a little longer” WW2 US army engineer corp" userName="newsclues" createdAt="2025/05/15 12:22:33" color="">}}




{{<matomeQuote body="従業員のやる気を根こそぎ奪うように設計されたやつだね。" userName="socalgal2" createdAt="2025/05/15 09:39:50" color="">}}




{{<matomeQuote body="幼稚園の頃のシールみたいに、Gift cardsとかって給料上げずにタダ働きさせるSocial engineering techniqueだろ。”Employee of the Month”とか”Pizza Party”と同じ。うちの会社もGift cardsでやってるけど、HRに「雨の中のWet rage in the rainくらいUseful」ってメールしたら怒られたよ。俺はFranchisesとかWall Streetの店ではEatしないタイプで、WalmartよりLocal brick and mortarが好き。AmazonにはNever financial support。本当にHonorしたいならRaiseかMore PTO。WalmartのGift cardなんてRADARやLiDAR development kitみたいなQuality purchaseには0 valueなんだから。" userName="yndoendo" createdAt="2025/05/15 15:45:29" color="#38d3d3">}}




{{<matomeQuote body="君の言う”traditional big corporations”は知らないけど、俺のBanking megacorpにはA decade+ at least前からInternal reward system across various ”virtues”があるよ。Direct reward -＞ money link (thats rather for hiring success)とは違うけど、Karmaみたいなものを作れて、Bonuses, raises and promotionsをConsiderする時にTaken into accountされるんだ。Processは見えないからDetailsは知らないけどIgnoredはされてないし、これでPeopleはMotivated to generally do good workでHelps。" userName="jajko" createdAt="2025/05/15 11:40:09" color="#785bff">}}




{{<matomeQuote body="たぶん良い社員だったってことでCandy barしかくれなかったことについて言ってるんだろうね。でもさ、良い仕事してるからそれなりのSalaryもらってるわけで、良いEmployeeであることはそのSalaryをもらうためのJob descriptionの一部なんだよ。Anything extraはNice。" userName="seanw444" createdAt="2025/05/15 14:59:32" color="">}}




{{<matomeQuote body="Yeah. The chocolateはA trivialityだけど、More importantだったのはPublic thanksをGiveし合うEncouragingとKarma pointsのIdea。This culture (Finnish)ではPraiseをGivingのもReceivingのもNot very goodだから、Established ritualがあるとHelps。Also, At least one of the original goalsはThe silo effectをMitigateして、Other projectsのCoworkersをHelpし合うEncourageだったと思う。" userName="Sharlin" createdAt="2025/05/15 17:05:36" color="#38d3d3">}}




{{<matomeQuote body="They weren’t getting a sticker. They were getting a Dopamine hit." userName="latentsea" createdAt="2025/05/16 05:42:56" color="">}}




{{<matomeQuote body="Big bankね。当時のManagement theoryはThe silosの間でResources, time, budget, headcount, good desk locations in the bi-annual room desk shuffle, bonuses and even time of day from managementをCreate competitionするのが目的だったんだ。Even sales and trading - the most symbiotic of functions competed。" userName="blitzar" createdAt="2025/05/15 13:54:01" color="#ff5c5c">}}




{{<matomeQuote body="基本的に人助けしてくれた人に「チップ」を渡す方法って感じかな。「チップ」は自分のじゃなくて会社持ちだけどね。<br>変な使い方されないように理由が必要で、もらう側のマネージャー承認もいるし、四半期ごとの上限もあるんだって。" userName="decimalenough" createdAt="2025/05/15 10:30:05" color="#ff5c5c">}}




{{<matomeQuote body="資本主義とか報酬システムに皮肉屋なのは同じだけど、これは”会社のコスト削減”とかじゃなく、助け合った人に感謝を伝えるシンプルな話だよ。従業員同士だけで回ってて、管理構造とか一切なし。会社のクレカでオヤツ買って始めることもできた、昔の小さくて社員思いな会社だったからこそね。" userName="Sharlin" createdAt="2025/05/16 03:48:59" color="#38d3d3">}}




{{<matomeQuote body="前職では、ピアボーナスはマジで給料日に少額ボーナスとして振り込まれたんだ。ギフトカードとかじゃなくて、メール通知来て口座にお金が入るだけ。今まで見た中で一番やる気出る形のピア評価だったね。" userName="perryizgr8" createdAt="2025/05/15 17:37:15" color="#ff33a1">}}




{{<matomeQuote body="こういうのをシステム化したりゲームっぽくしたりすると、実際には役員チーム内の権力争い（リアルポリティクス）から人々の目をそらすのに役立つんだ。非役員レベルの人が会社内で本当はどう権力が使われてるか気づかないように邪魔すると、組織内の潜在的な権力競争相手を大量に排除できる。" userName="__alexs" createdAt="2025/05/15 10:22:06" color="">}}




{{<matomeQuote body="$175のボーナスを特別に助けてくれた人や頑張った人に贈れるよ。年間20個まで誰でも贈れるから、もらうのもそんな大変じゃない（まあ、20個全部使う人は少ないし、しばらく上限も守られてなかったけどね）。形式的にはマネージャー承認いるけど、重複とかじゃなきゃマネージャーが拒否するのはマナー違反って感じ。" userName="Rebelgecko" createdAt="2025/05/16 04:41:54" color="#ff5733">}}




{{<matomeQuote body="あと、誰でも誰かの昇給を提案できたし、俺の知る限り大体実現してたよ。それに中間管理職もいなかった。（分かってる、人気投票みたいなのは、控えめな優秀な人が評価されにくいっていう問題ももちろんあるよね。）" userName="Sharlin" createdAt="2025/05/16 04:01:31" color="#785bff">}}




{{<matomeQuote body="金融業界でボーナスが意味あるのは、結局金儲けが全てだからね。内発的動機と金儲けが一致する。元々は顧客騙すのを防ぐために導入されたんだって。個人の貢献が簡単に数字で測れるのも大きい。もちろん、セールスとか『コスト削減』みたいな明確な目標がある仕事なら他の業界でも同じような特徴はあるけどね。" userName="dgb23" createdAt="2025/05/15 10:14:07" color="">}}




{{<matomeQuote body="内発的動機<br>それって『サービス残業』ってこと？笑" userName="wiseowise" createdAt="2025/05/15 11:58:18" color="">}}




{{<matomeQuote body="それか、『たった30秒で終わる作業のために、何日もかけて、何個のMDBグループの参加承認を得なきゃいけないの？』って感じ？恋しくないね。" userName="cmrdporcupine" createdAt="2025/05/15 11:07:22" color="">}}




{{<matomeQuote body="このビデオが参考になるかも: https://youtu.be/QIrM9vKKvTs<br>みんな金のために働いてるのであって、金色の星バッジが欲しいわけじゃない。<br>キャンディバーとかマッサージとかでごまかそうとするより、金銭ボーナスの方がずっとマシだし、上から目線じゃない。<br>”なんで良いことできないんだ”って思うなら、そういうインセンティブが本当のやる気をどう壊すか理解してないってことだ。<br>高給取りのSWE席にまで持ち込まれたチップ文化みたいなもんで、マジでいらない。<br>公平な報酬が基本として要求されるべき。" userName="bigyabai" createdAt="2025/05/16 18:44:19" color="">}}




{{<matomeQuote body="＞”難しいことはすぐやる。不可能なことは少し時間がかかる”<br>昔からあった考え方だね。<br>オレもWWIIから学んで実践してる。<br>Googleみたいな複雑なシステムと、自然科学の絶対的なカオスは全然違うスケールだ。<br>軍隊組織っぽい産業界で働いてるけど、チームワークとか計画だけじゃ解決できない問題もある。<br>それは個人の異常な能力が必要な場合だ。<br>だから軍隊にNavy Sealsみたいなのがいるんだ。 army全体じゃ無理なヤバい問題があるからね。" userName="fuzzfactor" createdAt="2025/05/15 15:56:53" color="">}}




{{<matomeQuote body="Googleの現役とか元社員にたくさんインタビューしたけど、彼らが手がけたシステムの規模や複雑さに過度に注目するのは危険だってわかった。<br>Googleは確かにデカくて複雑だけど、開発者を助けるクソ素晴らしいツールも持ってる。<br>”2億5千万ユーザーに影響するプロジェクトに関わった”とか聞くとすごいけど、彼らの視点からすると、複雑なGoogleの開発・QA・デプロイプロセスを数ヶ月かけてこなしただけで、比較的単純な変更だったりするんだ。<br>彼らの経験はユニークだけど、大体予想と違う。<br>本当に意味のある何かをゼロから作った人に出会うのは稀だね。<br>そういう人は大体Staff+レベルで、10年以上Googleにいる。<br>むしろ小さいプロジェクトに関わってたGoogle社員の方が、リソースをゼロから使って、マジで面白いことに挑戦してる場合が多いよ。" userName="gilbetron" createdAt="2025/05/16 12:37:09" color="#785bff">}}




{{<matomeQuote body="＞僕の頭の中での即座の反応は：”これは不可能だ”。<br>でも、チームメイトが言ったんだ：「でも、俺たちはGoogleだ。それが管理できて当然だろ！”<br>「俺たちにはできる！」っていう自信は、大体素晴らしいことだね。（ただし、失敗の可能性も考慮する必要があるけど。）<br>それが傲慢さや例外主義にどうねじ曲がっていくのか、その完璧なルールが俺にはわからないんだ。<br>例えば、「俺の理論は正しいから、この実験を改ざんできる」とか。<br>「俺にはキャリアポテンシャルがめちゃくちゃあるから、出世のためにズルするのはみんなのためだ」とか。<br>「もちろん、この無制限の権力を正しいことに使うさ。俺たちは道徳的に優れてるんだから」とか。<br>「俺たちは他の奴らより優れてる。だから奴らは根絶されるべきだ」とか。<br>解決策の一部は、意志の力、努力、忍耐、プロセスなんかを尊重することだと思うけど、<br>人々が同時に謙虚さの力と真実を尊重せず、個人やグループ自身を生まれつき優れてると考え始めたら、それは心配だね。" userName="neilv" createdAt="2025/05/15 15:30:28" color="#ff33a1">}}




{{<matomeQuote body="悪いけど、それはちょっとファンタジーっぽく聞こえるな。<br>ほとんどのGoogle社員は、自分たちが特別に優れてるとか思ってないと思うよ。<br>Googleでさえ、インポスター症候群（自分なんて偽物だって思うやつ）の人がたくさんいる。<br>実際、人生で何をやっても、結局は同僚の中ではごく普通になる状況に落ち着くのが常だよ。<br>Googleに入れた！って数ヶ月は誇りに思うかもしれないけど、すぐ謙虚になるもんだ。" userName="yodsanklai" createdAt="2025/05/15 20:04:04" color="#38d3d3">}}




{{<matomeQuote body="わかってるよ。でも、Googleに特化したことじゃなくて、もっと一般的な問題について聞きたかったんだ。<br>（あと、例について明確にしておくけど、Googleが論文研究を捏造してるとか、Googleが大量虐殺してるとかは思ってないよ。）<br>もし、謙虚さがありつつ、「でも俺たちにはできる！」っていうのがうまくいくなら、そのあたりのニュアンスをもっと知りたいな。" userName="neilv" createdAt="2025/05/16 13:56:00" color="">}}




{{<matomeQuote body="複雑なシステムについての記事で、クッキーポリシー同意がバグってるっていうのは、ある種の皮肉だね。<br>「必須のみ」をクリックすると、クッキーポリシー同意がまた表示されるんだ。" userName="RenThraysk" createdAt="2025/05/15 11:30:48" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="私も同じ。サードパーティのクッキーをブロックしてるのが原因だよ。" userName="wooque" createdAt="2025/05/15 21:30:26" color="">}}




{{<matomeQuote body="あのバグは、たぶん地域限定のエッジケースで、テスト不足じゃないかな。<br>EUのGDPRとか関係あるけど、USにいるエンジニアにはテストしにくいだろうし。<br>EUに住んでる私はクッキーバナーにうんざりしてる。<br>非必須だけか、全部拒否。無理ならリーダーモードかタブ閉じ。<br>ダークパターンには戦うし、簡単にオプトアウトできるサイトを応援するよ。" userName="junto" createdAt="2025/05/17 07:34:51" color="#ff5c5c">}}




{{<matomeQuote body="「複雑システムは悪い」「単純システムは常に良い」っていう二つの誤解について話してるね．軍隊みたいに複雑だけど必要なシステムもあれば，DNAみたいに単純に見えて実は深い複雑さを持つシステムもある．シンプル化が良い場合もあるけど，全てに当てはまるわけじゃないんだ．" userName="ggm" createdAt="2025/05/15 08:15:59" color="#785bff">}}




{{<matomeQuote body="引用されてる火薬の話だけど，アルケブス銃はMiddle Ages終わり頃の登場だよ．Middle Agesの戦争の限界は食料供給や兵士が農民だったことの方が大きかったんだ．略奪なしで食料調達できる国家は少なかったんだよ（EuropeだとByzantinesくらい）．" userName="jcranmer" createdAt="2025/05/15 12:25:26" color="#ff5c5c">}}




{{<matomeQuote body="記事の定義でいくと，軍隊はcomplex systemじゃなくてcomplicated systemだと思うんだよね．構造化されてて再現性がある解決策があるし，記事にあるようなemergent behaviorsみたいなcomplex systemsの特徴は示さないと思う．" userName="zmb_" createdAt="2025/05/15 09:58:55" color="#38d3d3">}}




{{<matomeQuote body="この記事，その理由だけであんまり好きじゃないな．良いポイントもあるんだけど，ちゃんと機能する言葉が既にあるのに，わざわざ再定義する必要ないでしょ．" userName="cowboylowrez" createdAt="2025/05/15 18:50:50" color="">}}




{{<matomeQuote body="同意だね．問題はcomplexity自体じゃなくて，システムが処理しなきゃいけない情報量に見合うcomplexityが必要なんだ．根本的な問題は，complexity，特に手に負えないcomplexityを管理できるシステムをどう設計するかだよ．" userName="p_v_doom" createdAt="2025/05/15 11:18:58" color="#38d3d3">}}




{{<matomeQuote body="引用されてる火薬の話だけど，UkraineはRussiaが兵站みたいなcomplexなタスクでincompetentじゃなかったらすぐconqueredされてただろうね．2022年の64kmのheavy machinery渋滞とか，fuelやfoodみたいなlogisticsのbasicsすらできてなかったんだよ．" userName="jajko" createdAt="2025/05/15 11:44:35" color="#ff33a1">}}




{{<matomeQuote body="math backgroundだから，software engineersがそういうbasicなsystems modelingのvocabulary持ってないのちょっとsurprisingなんだよね．みんなMeadowsの「Thinking in Systems」読むべきだよ．" userName="destring" createdAt="2025/05/16 08:49:26" color="">}}




{{<matomeQuote body="このサイトで「必須のみ」ってクリックしたら、Cookieバナーが無限に再表示されるんだけど笑っちゃうね。" userName="Pavilion2095" createdAt="2025/05/15 11:00:23" color="">}}




{{<matomeQuote body="ごめんね、俺のニュースレタープロバイダー（Substack）なんだけど、時々かなりバグるんだよ。" userName="teivah" createdAt="2025/05/15 11:54:51" color="#ff33a1">}}




{{<matomeQuote body="多分、過度に複雑なシステムだからじゃないかな。" userName="romanovcode" createdAt="2025/05/15 13:26:31" color="">}}




{{<matomeQuote body="意図的なのか無能なのか分からないけど、だって今はHTTPでテキストを配信するのなんて、すごくうまく抽象化されてるのにさ。" userName="owebmaster" createdAt="2025/05/15 14:47:04" color="">}}




{{<matomeQuote body="Cookieとか他の余計なものなしで静的サイトをホストする簡単な方法があればなあ<br>https://cloud.google.com/storage/docs/hosting-static-website + 好きなOSS CMSを選べばいいじゃん。" userName="codydkdc" createdAt="2025/05/15 14:19:44" color="">}}




{{<matomeQuote body="もしくはublock入れて、Cookieブロッカーリスト全部追加するとか。" userName="EasyMark" createdAt="2025/05/16 03:02:22" color="">}}




{{<matomeQuote body="「複雑なシステムの一つの特徴は、各部分を見るだけでは予測しにくい振る舞いをし、デバッグや管理を難しくする」って記事にあったけど、正直俺がやった中小PJでも非同期とかタイミングの問題でデバッグ超大変だったから、そんなに変わらないと思うよ。" userName="kossTKR" createdAt="2025/05/15 07:14:57" color="#45d325">}}




{{<matomeQuote body="複雑と込み入ってるの定義が、本当に閉じたシステムかどうかの問題でごっちゃになってると思う。外部要因を含まないモデルを「複雑」って言ってるだけの場合が多い。でも、本当に閉じたシステムで「創発的な振る舞い」があるって記述に出会ったことないんだよね。LLMがそれに当たるかは分からないけど。" userName="tunesmith" createdAt="2025/05/15 19:11:41" color="#ff5733">}}




{{<matomeQuote body="コンピュータは理想世界で数学をモデル化しようとしてる点を除いてね。数学的にモデル化できないコンピュータの副作用から問題が発生してるのでなければ、問題を数学的にモデル化して数学で解くのを技術的に止めるものはないんだ。LLMの出力みたいにモデル化できないわけじゃない。俺たちは文字通り理解してないんだ。SREが直面する問題は全く同じ？システムにBを入力したら、数学的にAという出力を予測できないわけ？方程式一つじゃなくてもいい。シミュレーションでできることだよ。" userName="ninetyninenine" createdAt="2025/05/15 13:52:32" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
