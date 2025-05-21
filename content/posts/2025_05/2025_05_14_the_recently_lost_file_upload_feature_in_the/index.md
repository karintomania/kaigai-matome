+++
date = '2025-05-14T00:00:00'
months = '2025/05'
draft = false
title = 'Android版Nextcloudで痛手！ファイルアップロード機能が突如消失 その原因は…？'
tags = ["Android", "Nextcloud", "クラウドストレージ", "ファイル管理", "アプリ"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> Android版Nextcloudで痛手！ファイルアップロード機能が突如消失 その原因は…？

引用元：[https://news.ycombinator.com/item?id=43981170](https://news.ycombinator.com/item?id=43981170)




{{<matomeQuote body="Nextcloudの痛み、めっちゃわかるわ。ウチらEverfindチームもさ、DriveとかOneDriveとかDropboxとかをまとめて検索できるようにしたくて、この1年ずっと*drive.readonly*ってスコープのために戦ってるんだよ。<br>でもGoogleは*drive.file* + *drive.metadata.readonly*で済ませろって言ってきてさ。これだと新しいファイルとか更新されたファイルが見つけられなくて、検索結果がマジでダメになるんだわ。<br>要は、Googleの「最小権限」ってさ、建前は立派だけど、実際はGoogle自身のアプリだけ優遇されて、独立系のベンダーは中途半端な製品しか作れないか、Play Storeから追い出されるか、なんだよ。<br>結局、ユーザーは機能とか選択肢を失うし、小さい開発者はコピペ返信するだけのポリシーbotと何時間も無駄に戦わされるんだ。" userName="AmazingTurtle" createdAt="2025/05/14 11:06:13" color="#ff5c5c">}}




{{<matomeQuote body="ユーザーとしては、こういうのはGoogleじゃなくて自分で決めさせてほしいんだよね。<br>ただ、Appleの方がこういうのでもっとうまくやってるのが不思議っちゃ不思議。<br>Appleのユーザーって「自分で自分を守ってくれ」みたいな考え方の人が多いからかな。" userName="stavros" createdAt="2025/05/14 15:09:50" color="">}}




{{<matomeQuote body="（また）独禁法訴訟のタイミングなんじゃない？<br>少なくともNextcloudはヨーロッパ拠点だし、ヨーロッパは最近、こういうテクノロジー大手に立ち向かう姿勢を見せてるからね。" userName="theodric" createdAt="2025/05/14 12:42:04" color="">}}




{{<matomeQuote body="聞くべき問いはこれだね。Googleのアプリは、他のアプリよりも有利な立場にあるのか？" userName="HPsquared" createdAt="2025/05/14 13:04:23" color="">}}




{{<matomeQuote body="＞Appleのユーザーって「自分で自分を守ってくれ」みたいな考え方の人が多い<br>これはね、「スマホは道具であって趣味プロジェクトじゃない」って考え方とも言えると思う。<br>それがAndroidからiOSにメイン機種を変えた理由の半分かな。<br>アプリを好きなようにいじくり回す自由は減るけど、開発者を選んだり色々いじる手間も減るんだよね。時間優先のトレードオフだよ。" userName="devmor" createdAt="2025/05/14 18:06:20" color="#ff33a1">}}




{{<matomeQuote body="Appleのファイルアクセス実装は全然違うんだよ。<br>Googleが引き起こしたパーミッション爆弾を避けられるから、個人的にはそっちの方がずっと好きだな。<br>iOSだと、アプリはFile Provider APIを使ってFiles appの中に自分自身を表示できるんだ。<br>そこで、iOS本来のやり方でデータを移動したりコピーしたり削除したりできるし、iPadOSならマウスやキーボードショートカットも使えるよ。<br>アプリ内で同じディレクトリを表示することもできるし、クラウド連携してるアプリなら、ファイルの実体化とか解放とか、データレスでファイルが存在するみたいに表示するとか、便利なことができるんだ。<br>ただ、ファイルシステム全体に常にアクセスできるわけじゃない。<br>iOSは、同じ開発者のアプリ同士なら、同じ「Team ID」（最上位の開発者アカウント/組織）を共有するアプリすべてで使える共有ストレージにアクセスできるだけなんだ。<br>写真ライブラリ全体へのアクセス許可は、機能的にはるかに簡単なんだよ。だから、アプリが写真ライブラリを検索してバックアップするとか、そういうのはできる。<br>“本当の”ファイルシステム全体のバックアップには、iOSのバックアップ/MobileFileフックに入り込む必要があるんだ。<br>Appleは、Googleがデバイス内のデータにアクセスする誰に対しても敵対的な態度を取るほど、サードパーティに対して敵対的じゃないけど、そのプロセスはかなり面倒だよ。" userName="TheNewsIsHere" createdAt="2025/05/14 15:44:06" color="#45d325">}}




{{<matomeQuote body="これさ、Googleのファーストパーティアプリを優遇してるっていうより、単にエンジニアリングのリソースを割く優先順位が超低いだけって可能性が高いんだよね。<br>Google Workspaceで何年かPMやってたから言うんだけど、多分思われてるほど邪悪じゃないと思うよ。<br>意思決定は収益を最大化するように最適化されてるし、他の機能（特にエンタープライズ顧客向け）の方が優先順位がずっと高くなるんだ。<br>エンタープライズ収益にフォーカスすることを選んだ企業（2012年くらいからほぼ全部そうだけど）は、エンドユーザーの満足度を犠牲にしてそうしてるんだよ。" userName="jmathai" createdAt="2025/05/14 16:33:19" color="#785bff">}}




{{<matomeQuote body="その質問（Googleアプリが優遇されてるか？）には、500ドル賭けてYesって答えるね。<br>Pixel 5aの例で言うと、Google純正のカメラアプリは、Googleのギャラリーアプリしか開かないんだわ。ユーザーがシステムデフォルトに設定してるアプリは開いてくれない。<br>ユーザーはカメラアプリを終了して、本当に使いたいギャラリーアプリを手動で開かなきゃいけないんだよ。<br>これが、高品質なLinuxベースのスマホを提供してくれる会社を待ち望んでる理由の一つ。<br>それだけが、エンドユーザーが本当に望むシステム設定やアプリ選択を手に入れる唯一の方法だよ。<br>GoogleもAppleも、彼らのモバイルOSで営利目的の刑務所看守をやってるんだ。<br>追伸：システムの肥大化が引き起こす経済的、資源的、権力的な無駄を研究した人っている？" userName="yndoendo" createdAt="2025/05/14 17:25:00" color="#ff5733">}}




{{<matomeQuote body="ユーザーである君は、自分が買ったデバイスへの完全で無条件のアクセス権なんてものを、もはや信用されなくなってるんだ。<br>ブラウザも同じ道をたどってるよ。<br>そして、ここのHNにいる大勢の人が、これを「セキュリティ」のためだって言ってOKしてるんだ。" userName="pmdr" createdAt="2025/05/14 21:09:47" color="">}}




{{<matomeQuote body="＞iOSだと、アプリはFile Provider APIを使ってFiles appの中に自分自身を表示できる。<br>＞アプリ内で同じディレクトリを表示することもできるし、クラウド連携してるアプリなら、ファイルの実体化とか解放とか、データレスでファイルが存在するみたいに表示するとか、便利なことができるんだ。<br>Androidアプリだって、SAF APIを使えばこれ全部できるよ。<br>もっと重要なのは、Androidではユーザーが複数のアプリに同じディレクトリへのアクセスを許可できること。<br>これでアプリ同士がファイルを連携して使えるんだ。iOSではこれはできないと思うよ。" userName="nolist_policy" createdAt="2025/05/14 15:55:52" color="#ff33a1">}}




{{<matomeQuote body="マジそう思わないね。ベンダーにスマホを勝手にいじられるか、自分でスマホをいじれるかの違いだよ。あるいは「スマホがベンダー都合のツールか、自分で好きに使える計算機かの違い」かな。" userName="SahAssar" createdAt="2025/05/14 19:44:29" color="#45d325">}}




{{<matomeQuote body="同意できるか分からないな、俺のAndroidスマホは普通にツールとして問題ないよ。やりたければ趣味プロジェクトにだってできるし、そうじゃなきゃ単なるツールでいいんだ。" userName="stavros" createdAt="2025/05/14 19:06:16" color="">}}




{{<matomeQuote body="Linuxベースの高品質スマホを出す会社を楽しみにしてるって？<br>カメラアプリに関して具体的に何が変わるの？Google Cameraの挙動には俺もムカついてるけど、今だってAndroid用にFOSSのカメラアプリをダウンロードできるし、それで好きなギャラリーアプリを開くのは全然できる。ただ、そういうアプリはGoogleのアプリほど良くないだけ。ベースのAndroid層を普通のLinuxに変えても、そこは何も変わらないと思うけど。" userName="codethief" createdAt="2025/05/15 02:47:23" color="#38d3d3">}}




{{<matomeQuote body="Googleビルドで壊れてる機能は、他の配布チャネルで使えるようにフィーチャーゲートしたらどうかな？個人的には、PlayStoreよりF-Droidからアプリをインストールするのを優先してるよ。" userName="mindslight" createdAt="2025/05/14 18:29:13" color="#45d325">}}




{{<matomeQuote body="ブラウザって、ハードウェアアクセスを実装するのが遅くても増えてる印象だったんだけど、何のこと言ってるの？" userName="apitman" createdAt="2025/05/14 21:56:19" color="">}}




{{<matomeQuote body="これってまさに独占禁止法のための状況って感じだね。" userName="throw7" createdAt="2025/05/14 13:09:32" color="">}}




{{<matomeQuote body="まさにそれ、ずっとやってたよ、カメラアプリを変えてシステムでデフォルトに設定したギャラリーアプリを使うようにさ。これってGoogleとAppleを嫌う理由の一つなんだ。<br>デバイスのセキュリティを改善する方法がない。エンドユーザーは、特定のネットワーク、インフラ、アプリケーションへのネットワーク接続をブロックできるべきだよ。例えばZoneAlarmとかOpen Snitchみたいなアプリみたいにさ。<br>AndroidのSMS内部はAPIでラップされてて、ただのSQLiteデータベースで十分で簡単にバックアップできるはずなのに。ファイルをコピーするんじゃなくてサードパーティ製プログラムを使う必要があるんだ。コンバージェンスのアイデアも支持するね、外部モニター、キーボード、マウスをつないでデバイスを標準的なコンピューターとして使えるようにすることだよ。買ったストレージを取り戻して、ブロートウェアを削除できること。絶対に使わないメールクライアントを維持しないといけない理由はゼロであるべきだ。AppleとGoogleが今の囲い込み路線から引き返すまで、LinuxかBSDスマホがスマホの”スマート”を取り戻す唯一の方法だよ。" userName="yndoendo" createdAt="2025/05/15 15:57:55" color="#785bff">}}




{{<matomeQuote body="”自分でスマホをいじるか、ベンダーにスマホをいじられるかの違い”って？<br>Googleサービスなしで使えるAndroidスマホって、一体どれだけあるの？" userName="devmor" createdAt="2025/05/15 13:48:35" color="#ff33a1">}}




{{<matomeQuote body="SAFはネイティブコードでは動かないんだ、クロスプラットフォームアプリを作ろうとしてるとマジで困るよ。" userName="apitman" createdAt="2025/05/14 21:54:22" color="#38d3d3">}}




{{<matomeQuote body="Manifest V3のせい？ Chromeで広告ブロッカー使えなくなるやつ？" userName="DecentShoes" createdAt="2025/05/14 22:25:31" color="">}}




{{<matomeQuote body="nextcloudへの権限を消したってこと？ 削除するためだけにリソース割いてそうじゃん．何もしない一番楽な方法ならアクセスはそのままだっただろうにね．" userName="cycomanic" createdAt="2025/05/14 21:19:38" color="">}}




{{<matomeQuote body="うーん、AFAIK drive.readonlyってGoogle Driveのことだよね．この記事、ローカルファイルへのアクセスについて話してるんだし、Google Driveのアクセスじゃないよ．" userName="nolist_policy" createdAt="2025/05/14 14:27:30" color="">}}




{{<matomeQuote body="Googleがいい心で何かすることなんてないよ．彼らは企業、利益最大化しか考えてないんだ．違法じゃなきゃやるし、違法でも罰金が利益より少なきゃやる．企業を人みたいに扱うのはやめよう．CEOを行儀よくさせるには、刑務所送りとか資産没収みたいな実効性のある法律が必要だよ．そうしないと、これが現実．" userName="observationist" createdAt="2025/05/14 14:23:59" color="#ff5733">}}




{{<matomeQuote body="＞ユーザーは特定のネットワークとかアプリへの接続をブロックできるべきだよね．ZoneAlarmとかOpen Snitchみたいなさ．それAndroidでもNetGuardを使えばできるよ．" userName="nolist_policy" createdAt="2025/05/15 16:47:57" color="">}}




{{<matomeQuote body="残念だけど、全部自由にできるのとデフォルトで安全なのって両立は難しいんだよね．Appleは後者、GoogleじゃないAndroidは前者に力入れてる感じ．" userName="foobiekr" createdAt="2025/05/14 19:27:47" color="">}}




{{<matomeQuote body="クラウドアプリは何もできないんだよ．バックグラウンド転送のAPIはiCloudだけしかまともに動かなくて、Nextcloudとか他のアプリはバックグラウンドだと数kb/sしか出ないから、Appleに金払わせようとしてるみたい．Appleのひどいダークパターンで何年も続いてるんだ．" userName="antman" createdAt="2025/05/14 21:04:23" color="">}}




{{<matomeQuote body="プラットフォーム側はAPIを自分たちの都合の良いようにできる利点がある．Googleのアプリも他のアプリと同じ制限だと言う人もいるけど、その制限を決めてるのはGoogleなんだ．Googleは自分たちのビジネスモデルに合う機能だけ定義して、他の誰かが違う機能を提供できないようにしてる．彼らはプラットフォームを所有してて、その中で競争してる．それ自体がもう有利．有利じゃなくすには、Googleがプラットフォーム上でアプリと競争しないか、プラットフォームの所有権を手放すべきだよ．" userName="em-bee" createdAt="2025/05/14 13:45:12" color="#ff33a1">}}




{{<matomeQuote body="ある意味そうだよ．Google Driveを使うって決めたのは、自分のファイルに自分でアクセスしにくくするって決めたってことだ．ここは独占市場じゃないから、選択肢は他にもあるしね．" userName="immibis" createdAt="2025/05/14 18:50:29" color="">}}




{{<matomeQuote body="ほとんど？ 機能はたくさんトレードオフになるけど、選ぶ自由はあるし、好きなものインストールしたりできるじゃん．確かにgoogle play servicesへの依存は嫌だけど、少なくとも選択肢は多いしね．" userName="SahAssar" createdAt="2025/05/15 17:48:37" color="">}}




{{<matomeQuote body="単なるいじくり回しの話じゃないんだ。俺のスマホはツールボックスで、アプリはツールなのに、Googleは自社ツールを良く見せるためにそれを壊し続けてるんだ。スマホでちゃんと仕事したいし、サーバーとファイルを同期できるのはその超重要な一部。いろんな理由でGoogle Driveは使えないし、それは置いといても、これは違法な反競争行為だよ。確かAppleもこういうフォルダ同期はできないはずだから、解決策にはならないね。ていうか、Appleも俺が頼りにしてる他のツールをたくさんダメにしてるし。" userName="franga2000" createdAt="2025/05/15 07:07:42" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AOSPプラットフォーム開発者だよ。（ファイルシステムについて）これは個人の意見で、Googleを代表するもんじゃない。免責事項：nextcloudは使ってないし、具体的に見たわけじゃない。これは詳しい俺の表面的な観察からね。俺の見解は、SAFはこのユースケースで機能するはずだ、他の人が言ってるようにね。Google Driveはnextcloudが主張するようなGoogleからの優遇権限は持ってないし、nextcloudと同じようにPlayストア経由で提供されてるよ。他の人も観察してるけど、MANAGE_EXTERNAL_STORAGEみたいな権限は過去にひどいやり方で濫用されてきたんだ。" userName="moonshot5" createdAt="2025/05/14 16:07:22" color="#38d3d3">}}




{{<matomeQuote body="SAFはめちゃくちゃ遅いから選択肢にならないんだ[１][２][３][４][５]。まともなクラウド同期アプリには絶対ダメな理由だよ。＞SAFは遅い。ファイル操作はIPC呼び出しを使うから20-30msかかる。たくさんのファイルがあるか確認したり、無ければ作ったりする操作がめちゃくちゃ遅い。Googleのサンプルでさえ速くするためのハックを使ってるくらいだよ。＞SAFと標準File操作のパフォーマンス比較サンプルを追加するだけね。（中略）SAFだと15秒、ネイティブlsだと6ミリ秒！しかもファイルはたった128個だぜLOL" userName="noname120" createdAt="2025/05/14 18:32:20" color="#45d325">}}




{{<matomeQuote body="うわ、コメント[３]の対応、マジむかつくね＞報告された問題に対処するために最善を尽くしています、しかし私たちのプロダクトチームは作業優先度を変更し、この問題は含まれていません。現状、この問題は”修正しない・廃止”として閉じます。この問題が現在も存在する場合は、新しい問題を報告してください（後略）<br>これ全部、ありうる言い訳をまとめて言ってるだけだろ：”問題報告ありがとう、対応中です。あと対応するつもりは全くなくて閉じます、問題はおそらくもう存在しないでしょう、もし存在してると思うなら、同じように扱ってあげるために新しい問題を立ててね”だってさ。" userName="probably_wrong" createdAt="2025/05/14 19:01:07" color="#785bff">}}




{{<matomeQuote body="先日見たChromiumのSVGレンダリングに関するバグ報告を思い出すな。いくつか10年近く前のやつで、生き残らせるためにずっと更新し続けるか、新しい問題を立てる必要があるんだ。どういうわけか彼らのボットシステムは1年以上前のものを”おそらく修正済み”って見なしてるみたい。彼らのメッセージもああいうのと似た感じだね。" userName="spookie" createdAt="2025/05/14 20:35:23" color="">}}




{{<matomeQuote body="うん、Googleの問題は最高だね。（特定のGoogle Issueへのリンク）" userName="pigeons" createdAt="2025/05/15 01:04:23" color="">}}




{{<matomeQuote body="これは本当かもしれないし、回避策があるかもしれないし、後のAndroidバージョンで解決されるかもしれないけど、それはNextcloudがそのフレームワークを避けてる理由じゃないよ。それにGoogle DriveもSAFを使って同じ機能を提供してるから、このユースケースにとって問題なのかよく分からないんだ。" userName="tadfisher" createdAt="2025/05/14 18:54:09" color="">}}




{{<matomeQuote body="残念ながら良い回避策はないし、後のAndroidバージョンでも間違いなく解決されてないね。でもNextcloudが挙げてる理由が事実と違うこと（SAFはファイルを提供するものであって、アクセスするものではないと言ってるけど、それは全くの間違い）には同意だよ。" userName="noname120" createdAt="2025/05/14 22:30:51" color="#45d325">}}




{{<matomeQuote body="俺が理解してる限りだと、フォルダのURI権限さえあれば、ファイル名とかMIMEタイプ、ファイルサイズみたいなデータを含めてContentResolverクエリを自分で実行することで、ほとんどの問題は解決できるみたいだよ。これでNxM個のクエリがN個に減るんだ。もちろん、これはSAFレイヤーでより良いAPIによって解決されるべきだけどね。" userName="tadfisher" createdAt="2025/05/14 23:57:47" color="#ff5733">}}




{{<matomeQuote body="えー、3〜6年前の記事引っ張ってきてるじゃん。<br>パフォーマンスはその後めっちゃ改善されてるよ。" userName="izacus" createdAt="2025/05/14 21:23:45" color="#38d3d3">}}




{{<matomeQuote body="嘘でしょ。俺数ヶ月前に使ったけど、まだパフォーマンス全然ダメダメだったよ。" userName="noname120" createdAt="2025/05/14 22:28:29" color="#ff5c5c">}}




{{<matomeQuote body="＞ 他の人も指摘してるけど、MANAGE_EXTERNAL_STORAGEみたいな権限って過去にヤバい悪用例がたくさんあるんだよね。このスレでその視点が抜けてるのがゾッとする。この権限で抜き取れるデータ量ってきっとhugeだし、ユーザーをアホ扱いしてるわけじゃないんだよ。俺はどのアプリにも絶対許可したくない。全データ同期は超便利そうだけど、Googleはマジで板挟みだわ。" userName="coded_monkey" createdAt="2025/05/14 16:53:48" color="#ff5733">}}




{{<matomeQuote body="え、それが怖い？ってかさ、世界の何十億人がPCとかmacでファイルシステムの「全部」のファイル見れるソフトを普通に使ってるのに、文明が崩壊してないの、どうなってんのか分かんないくらい怖い話だよね。" userName="greatgib" createdAt="2025/05/15 00:56:47" color="">}}




{{<matomeQuote body="じゃあさ、ドデカい警告バン！って出して、あとは俺に決めさせてくれよ。" userName="apitman" createdAt="2025/05/14 22:16:56" color="">}}




{{<matomeQuote body="Googleはさ、スマホに”俺は大人だよ”って機能追加しなきゃ。このアプリの作者知ってるし信じてる、欲しい機能も分かってるし、俺はもう大人なんだから自分で選べるしリスクも受け入れるよ。" userName="mvdtnz" createdAt="2025/05/14 19:10:07" color="">}}




{{<matomeQuote body="Nextcloudが次使うべきって言われてるAPIってまさにソレなんだよね。<br>つまりユーザーの君に、Nextcloudにどのファイル見せるか選ばせるやつ。" userName="izacus" createdAt="2025/05/14 21:26:27" color="#ff5733">}}




{{<matomeQuote body="でもなんで？新しいAPI使うのサボってる変なアプリのためにそこまでやる必要ある？アプリを信頼してても、もし脆弱性があったら Android のサンドボックスが追加の壁になってくれるじゃん。ほとんどのアプリは自分で守れないし、自己サンドボックス機能があるのは Web ブラウザくらいだよ。" userName="nolist_policy" createdAt="2025/05/14 21:07:57" color="#ff33a1">}}




{{<matomeQuote body="＞ どんなアプリにも許可したくないなら、許可しなきゃいいじゃん、俺からそうする能力奪うなよ。細かく権限設定できるのは良い（特にアプリが拒否されたか確実に分からない時はね）んだけど、最終的に決めんのは俺だろ。<br>＞ Googleにとっては板挟みだね。さっき俺が言ったシナリオ — アプリが権限拒否されたこと分からない場合 — は考えたの？" userName="zb3" createdAt="2025/05/14 17:02:30" color="#ff33a1">}}




{{<matomeQuote body="＞ 特にアプリが拒否されたか確実に分からない<br>それがマジ問題なんだよ。 Android はコレ絶対必要だって分かってたはずなのにやらなかった。 Android アプリって自分が何の権限持ってるか簡単に分かるんだよね。 Google はきっと UX 重視でパワーとセキュリティは二の次にしたんだろ。ユーザーが間違って「サイレント拒否」ボタン押しちゃって、アプリが動かなくてパニくるのを恐れたんだろうね。もったいないことしたわ。" userName="IshKebab" createdAt="2025/05/14 18:26:11" color="#785bff">}}




{{<matomeQuote body="でもさ、新しいAPIだとそれがちゃんとできるんだよ。ユーザーはアプリに空のフォルダを指定できるし、Googleだってそれを使えって言ってんのさ。" userName="nolist_policy" createdAt="2025/05/14 21:16:53" color="">}}




{{<matomeQuote body=" often in horrific ways （よく恐ろしい方法で）ってさ、もしかして闇金アプリのこと？それとももっとヤバいのがあんの？（要は、ヤバい金貸しアプリがランサムウェアみたいになってて、払えないとデータ使って脅迫してくる話だよ。ヌード画像送るとか、データからわかる親戚に死の脅迫とかさ - https://www.welivesecurity.com/en/eset-research/beware-preda...）" userName="tgsovlerkhgsel" createdAt="2025/05/14 18:14:35" color="#785bff">}}




{{<matomeQuote body="ゲームとかSNSアプリとか、ほとんど全部さ、「ゲームのファイルをダウンロードするため」とか「うちの写真ピッカーを使うため」とか理由つけて、ストレージ全部へのアクセス求めてきたじゃん。それで、あなたの写真とか場所情報とか、ドキュメント、ダウンロードしたやつ全部に、いつでもバックグラウンドで自由自在にアクセスできてたわけ。PDFの銀行明細みたいなのもね。Nextcloudが要求してるのは、まさにそういうアクセスなんだよ。本来なら、API使えばあなたが「これを読んでいいよ」って選べるのにさ。" userName="izacus" createdAt="2025/05/14 21:25:03" color="#ff5c5c">}}




{{<matomeQuote body="そこまで大げさな話じゃなくてもいいさ。Outlookみたいに、全然関係ないのにスマホのデータ勝手に送ってるアプリとかあるんだぜ。マジでヤバいって。" userName="spookie" createdAt="2025/05/14 20:42:47" color="">}}




{{<matomeQuote body=" MANAGE_EXTERNAL_EXTERNAL_STORAGE 」みたいな権限はさ、昔さんざんひどい方法で悪用されてきたって言うけど、新しいアプリにこの権限あげる時は気をつけるべきってのはわかるんだ。でもさ、Nextcloudってめちゃ有名だし、ファイル管理アプリじゃん？こういうアプリこそ、この権限持たなきゃダメでしょ。もしこの権限を完全にやめるつもりなら、代わりの方法がちゃんと使えなきゃ困るけど、下のコメント見る感じじゃそうじゃないみたいだね。俺はAndroidの開発したことないから（こんな理由でこれからも絶対しないと思うけど）、よくわかんないけどさ。なんかさ、 Google Drive アプリはただのクラウドを見せる画面だけで、バックアップみたいな大事な機能は別で、 Google Drive って特別扱いされてるって聞いたよ。ああいう機能と同じことやろうとしたら、追加の権限が必要なんでしょ。" userName="dxuh" createdAt="2025/05/15 05:44:28" color="#45d325">}}




{{<matomeQuote body=" Google Drive は、Nextcloud が Google は優遇してるって言ってるような権限は持ってない」って？ Drive それ自体は持ってないかもしれないけどさ、システム全体は Google がコントロールしてるんだから、そっちは持ってるに決まってんじゃん[0]（リンク）。" userName="apitman" createdAt="2025/05/14 23:21:42" color="">}}




{{<matomeQuote body="SAF（Storage Access Framework）ってさ、クロスプラットフォームのアプリ作ろうとしてる人にはマジで最悪の解決策なんだよ。（そうじゃないなら、なんでAndroidだけ狙ってんの？って話だし）なんでかって言うと、ネイティブコードではうまく動かないから。" userName="apitman" createdAt="2025/05/14 22:13:09" color="#ff5c5c">}}




{{<matomeQuote body="JNI（Java Native Interface）ってのがあるんだから、ちょっとKotlinかJava書けばいいだけじゃんか。" userName="pjmlp" createdAt="2025/05/15 19:21:27" color="#ff5733">}}




{{<matomeQuote body="問題なのは言語じゃないんだってば。APIそのものが、ファイルシステムにアクセスする方法の考え方（パラダイム）を完全に変えちゃったってことなんだよ。" userName="apitman" createdAt="2025/05/18 00:37:49" color="#ff5733">}}




{{<matomeQuote body="全然関係ないんだけど、Android 11でAOSPがファイル名に特殊文字（：＜＞？｜＊）を禁止したのに超ムカついてるんだ。NTFS/FAT互換性のためだろうけど、古いアプリが落ちたりLinuxから同期できなくなった。元に戻すのは無理だろうけど、開発者オプションでext4みたいなファイル名を許可できないかな？君らのチームが動く可能性ある？問題提起やパッチ提供の場所を知りたいな。[0]： https：//github.com/GrapheneOS/os-issue-tracker/issues/952" userName="codethief" createdAt="2025/05/15 02:57:38" color="#785bff">}}




{{<matomeQuote body="公式のSyncThing Androidアプリが配布停止になったのもこれが理由なんだ。フォーク版はあるけどPlay Storeにはないよ。" userName="thombles" createdAt="2025/05/14 11:26:35" color="">}}




{{<matomeQuote body="SyncThing Androidアプリの問題点は、GoライブラリのSyncThingのラッパーだってこと。SAFはネイティブコードで使える簡単なファイルディスクリプタをくれないんだよね。代わりに”content：//” URLが渡されて、これをファイルディスクリプタに変換するにはJava/Kotlinのブリッジが必要なんだ。これはSyncThing本体でやる必要があった（追記：か、なんか別のトリック。syncthing-forkはできたみたいだし）。でも、俺が知る限り、この問題はNextcloudアプリには関係ないはずだよ。" userName="deng" createdAt="2025/05/14 11:32:44" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="SAFの簡単なファイルディスクリプタは取れるけど、Java API経由で要求する必要があるんだよ。" userName="izacus" createdAt="2025/05/14 13:56:16" color="">}}




{{<matomeQuote body="しかも一度にファイル1個だけ、だよね？つまり、ネイティブコードにディレクトリ全体へのアクセス権はあげられないってことか。" userName="apitman" createdAt="2025/05/14 22:18:09" color="">}}




{{<matomeQuote body="＞ ファイルディスクリプタに変換するにはJava/Kotlinのブリッジが必要なんだ。これってJavaかKotlinで書く必要があるの？それともbinderコールができるものなら何でもいいの？" userName="treyd" createdAt="2025/05/14 12:17:07" color="">}}




{{<matomeQuote body="俺の知る限り、SAFにはbinder経由ではアクセスできないよ。公式には絶対に無理。" userName="deng" createdAt="2025/05/14 12:31:30" color="">}}




{{<matomeQuote body="呼び出しってどうやってやるの？" userName="treyd" createdAt="2025/05/16 11:18:26" color="">}}




{{<matomeQuote body="システムのvulkanドライバーを読み込む必要があるのと同じような意味で必要だよ。システムライブラリ自体が特別な権限を持ってるわけじゃないけど、自分で再実装するのは手間だし、コードがバージョンやデバイスで動かなくなる可能性があるんだ。" userName="charcircuit" createdAt="2025/05/14 17:08:29" color="">}}




{{<matomeQuote body="フォーク版はPlay Storeにあるし、Android 15で俺はちゃんと動いてるよ： https：//play.google.com/store/apps/details？id＝com.github.cat...。公式クライアントが急に消えたのはちょっとびっくりしたけどね。" userName="fsh" createdAt="2025/05/14 12:34:21" color="#ff5c5c">}}




{{<matomeQuote body="syncthingの公式Android版がいきなりなくなったのはちょっとビックリしたんだ。理由はHNのスレッドにあるよ。俺はAndroid開発者じゃないけど、たぶん開発サイクルが大変で誰もやりたがらなかったんじゃないかな。forkを公式にしちゃえばいいのにって思うけど、メンテナーが独立していたいのかもね。" userName="JeremyNT" createdAt="2025/05/14 15:33:42" color="#ff5c5c">}}




{{<matomeQuote body="あと、forkしてる人が急にやめたりしたら評判が悪くなるのを避けてるんじゃないかな。" userName="kortilla" createdAt="2025/05/14 16:52:29" color="">}}




{{<matomeQuote body="ちょっと見た感じだと、syncthing-forkはSAFとか使ってて、ちゃんと動くようにしてるみたい。公式のメンテナーはGoogle Playへの公開やめたけど、今は別の人が代わりにやってるらしいよ。" userName="deng" createdAt="2025/05/14 12:54:43" color="">}}




{{<matomeQuote body="Google Play版はもう更新されないから、F-Droidに乗り換えた方がいいよ。" userName="BitPirate" createdAt="2025/05/15 04:49:53" color="">}}




{{<matomeQuote body="＞ SAFはファイル共有や他のアプリにファイルを見せるためのもので使えない<br>SAFは使えるよ。Nextcloudには合わない理由はあるけど（内部ストレージ全部とかSDカードのルートとかは共有できないとか）、Nextcloudの言ってることはおかしいと思うな。" userName="jeroenhd" createdAt="2025/05/14 10:49:18" color="#785bff">}}




{{<matomeQuote body="全くその通り。例えばここを見てね [リンク] 昨日もこのスレッドで議論があったよ [リンク]。" userName="deng" createdAt="2025/05/14 11:22:03" color="#ff5733">}}




{{<matomeQuote body="アプリの目的はフォルダ全体をバックアップすることだよ。SAFでファイルを共有するだけじゃ、その後のファイル更新を継続的にバックアップすることはできないでしょ。" userName="lozenge" createdAt="2025/05/14 10:56:16" color="#785bff">}}




{{<matomeQuote body="それ、SAFを使えばできるでしょ。”どこでも全てにアクセス”みたいな許可なしにね。" userName="jeroenhd" createdAt="2025/05/14 10:57:00" color="">}}




{{<matomeQuote body="＞ 欲しがっている許可<br>ここで言う”彼ら”ってのは俺のことだよ。自分のNextcloudサーバーを自分の家のネットで使ってるんだ。俺自身が”どこでも全てにアクセス”したいんだよ。<br>これがGoogleの囲い込みじゃないって考えるのは難しいね。" userName="sirdvd" createdAt="2025/05/14 12:24:18" color="">}}




{{<matomeQuote body="あと素朴な疑問だけど、なんでユーザーは自分のファイルにどこでも全てアクセスしちゃいけないのかな？" userName="jasonlotito" createdAt="2025/05/14 14:55:08" color="">}}




{{<matomeQuote body="ファイルマネージャーアプリを使えば、Usersはほぼどこでも何でもアクセスできるんだよね。Play Storeでは、file manager appsが全ファイルにアクセスできる例外の一つらしいよ。" userName="nolist_policy" createdAt="2025/05/14 16:04:16" color="">}}




{{<matomeQuote body="たいていの場合、その答えは”解決する問題よりも、より多くの人により多くの問題を引き起こすから”だよ。完全にアクセスできるようにするオプションを追加する作業は大変だし、攻撃対象を増やしちゃうかもしれない。<br>コストがかかる割に、一部のuserbaseにしか役立たないFeaturesは、優先されにくいんだ。" userName="criddell" createdAt="2025/05/14 16:08:39" color="#ff5733">}}




{{<matomeQuote body="Google製品のalternativeを提供したいcompetitorsにusefulなFeaturesも、prioritisedされないみたいだね。" userName="hkt" createdAt="2025/05/14 16:22:30" color="">}}




{{<matomeQuote body="Just to make sure: Google softwareは全部同じexact permission structure across the boardなの？e.g. NextCloudがseekingしてるのと同じpermissionsを使ってるGoogle productはなくて、instead、彼らはSAFを使ってるってこと？Especially for things that do what NextCloud is doing here. I just want to be sure that Googleは、彼らがNextCloudとかother app developersに出してるrulesとthe same rulesでplayingしてるのか、確かめたいだけなんだ。" userName="jasonlotito" createdAt="2025/05/14 14:53:53" color="#ff33a1">}}




{{<matomeQuote body="Drive appを開いて、”New” buttonをtapして、”Upload”を選んでみてよ。file picker UIが出てくるでしょ。This UIはStorage Access Frameworkがprovidedしてるんだけど、Nextcloudはthey cannot useって言ってるんだよね。" userName="tadfisher" createdAt="2025/05/14 18:41:36" color="#ff5c5c">}}




{{<matomeQuote body="That’s just the Drive app. The system overall certainly has more capabilities than are made available to developers[0].<br>[0]: https://support.google.com/googleone/answer/9149304?hl=en&co..." userName="apitman" createdAt="2025/05/14 23:23:08" color="#ff33a1">}}




{{<matomeQuote body="Yes, but Nextcloudはadamant that they need MANAGE_EXTERNAL_STORAGE permission, not access to the device backup system API." userName="tadfisher" createdAt="2025/05/14 23:53:15" color="#ff5733">}}




{{<matomeQuote body="This is not the same functionality that Nextcloud provides though. Thisはone time upload of manually selected files, not ongoing passive sync of an entire directory tree." userName="Macha" createdAt="2025/05/14 20:03:52" color="#ff33a1">}}




{{<matomeQuote body="Ongoing syncはstill possible through ACTION_OPEN_DOCUMENT_TREE [0], and using ContentResolver.takePersistableUriPermission [1] to maintain long-lived access to that directory. Enumerating filesはslow but that is not a major concern when the use-case is a background sync, and you can drop down to ContentResolver APIs to reduce the number of IPC calls when enumerating.<br>[0]: https://developer.android.com/training/data-storage/shared/d...<br>[1]: https://developer.android.com/reference/android/content/Cont..." userName="tadfisher" createdAt="2025/05/14 20:18:32" color="#ff33a1">}}




{{<matomeQuote body="＞Enumerating files is slow but that is not a major concern when the use-case is a background sync＞<br>Slow means it’s probably burning a lot of CPU, and that is a problem for background tasks, especially on mobile." userName="apitman" createdAt="2025/05/14 22:23:33" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
