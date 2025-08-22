+++
date = '2025-08-15T00:00:00'
months = '2025/08'
draft = false
title = 'Gitの巨大ファイル管理、未来はGitそのものだった！？'
tags = ["Git", "大容量ファイル", "Git LFS", "クラウドストレージ", "CI/CD"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> Gitの巨大ファイル管理、未来はGitそのものだった！？

引用元：[https://news.ycombinator.com/item?id=44916783](https://news.ycombinator.com/item?id=44916783)




{{<matomeQuote body="俺が`git-bigstore` [0]を、`Git LFS`が生まれる10年 (!) も前にこの問題解決のために作ったんだ。今でも完璧に動いてるはずだよ。`.gitattributes`でファイルを指定して、2つのコマンドで同期するんだ。<br>GitHubが`LFS`を出したから諦めてたけど、コメントを見る限りまだ需要がありそうだよ。ちょっと手を入れる必要はあるけど、アイデアはしっかりしてる。低レベルな実装については`wiki` [1]に書いたから見てみて。<br>あと、すべてのメタデータは`git notes`を使って保存されてるから、完全にポータブルでフロントエンドに依存しないんだ（もちろん、ストレージバックエンド以外はね）。<br>[0]: https://github.com/lionheart/git-bigstore<br>[1]: https://github.com/lionheart/git-bigstore/wiki" userName="theli0nheart" createdAt="2025/08/16 15:03:27" color="#ff5733">}}




{{<matomeQuote body="`Large object promisors`のアプローチはすごくいいな。S3みたいなものを使えるなら、俺も`Git LFS`から乗り換えるよ。S3は`VCS`で大きな`BLOB`を扱うのにめちゃくちゃ相性良さそうだよな。インテリジェントな階層化機能で、古いデータが自然とコールドストレージに移動するのもいい。10年前のものをプルするのに半日かかっても、全然気にしないね。" userName="bob1029" createdAt="2025/08/15 23:49:48" color="#45d325">}}




{{<matomeQuote body="記事で`git lfs`の代替として`git annex`や`dvc`がS3に対応してるって言ってるね（`windows`だとシンボリックリンクのワークフローでちょっと面倒だけど）。`GitLab`も`git lfs`をS3にオフロードしてるしね。どれも一長一短あるんだ。俺はだいたい迷わず`LFS`を選ぶけど、ワークフローやインフラの要件に合えば他のも使うよ。<br>特に2GBのファイルとか、25MBのファイルだけじゃない場合は、ハッシュアルゴリズムと変更検出（いつそれが起こるか）が違いを生むんだ。" userName="riedel" createdAt="2025/08/16 09:31:13" color="#785bff">}}




{{<matomeQuote body="今の職場で、コスト削減のためにすべての`LFS`オブジェクトをバケットにキャッシュしてるんだ。`PR`が実行されるたびに、`git lfs ls-files`でオブジェクトリストを取得して、`GCP`から同期、`git lfs checkout`でリポジトリを`LFS`オブジェクトストアから実際に埋めて、キャッシュされてない分は`git lfs pull`で取得。もし未キャッシュのオブジェクトがあれば、`gcloud storage rsync`でアップロードしてる。シンプルだし、開発者は新しいオブジェクトをプルするだけでいいから設定も不要、`GitHub UI`も混乱しない。`GitHub`が`CI`での`LFS`ファイルのプルにめちゃくちゃ課金してきたから、とりあえずこれで解決したんだ。もっとキャッシュサイズ増やせたり、キャッシュ制御が改善されたりするといいんだけどな。" userName="a_t48" createdAt="2025/08/16 00:30:31" color="#45d325">}}




{{<matomeQuote body="`RWX`でも`LFS`ファイルをプルするときに、これと似たようなアプローチを使ってるよ [1]。`git lfs ls-files`で`LFS`ファイルのリストを取得して、そのリストをタスクに渡して、`curl`を使って`LFS`エンドポイントから各ファイルをプルしてるんだ。<br>`RWX`ではタスクの出力は入力が変わらない限りキャッシュされるから、`LFS`ファイルは`RWX`キャッシュに残り、将来の`CI`でのクローン時にそこからプルされるんだ。これによって`GitHub`の`LFS`帯域幅コストを節約できる上に、`RWX`キャッシュからのリストアは`git lfs pull`よりもはるかに速いよ。<br>[1] https://github.com/rwx-cloud/packages/blob/main/git/clone/bi..." userName="tagraves" createdAt="2025/08/16 02:57:12" color="#ff33a1">}}




{{<matomeQuote body="いいね！俺もプルスルーキャッシュを検討したんだけど、バケット以上のインフラ設定が不要なソリューションを選んだんだよ。" userName="a_t48" createdAt="2025/08/16 07:29:40" color="">}}




{{<matomeQuote body="「キャッシュサイズをもっと増やせるようにしてほしい」って要望、`GitHub`の公開ロードマップによると、Q3に対応予定みたいだよ：https://github.com/github/roadmap/issues/1029" userName="cyberax" createdAt="2025/08/16 05:33:44" color="#ff33a1">}}




{{<matomeQuote body="素晴らしいね。技術的には今でも制限を超えられるけど（うちのは93/10GBって表示されてた）、追い出しポリシーが分からないんだ。もう少し払って、データが確実に残る方が安心できるな。" userName="a_t48" createdAt="2025/08/16 07:33:06" color="">}}




{{<matomeQuote body="`GitHub CI`でこれだけカスタマイズする手間をかけるなら、オープンソース`CI`をローカルで動かすとか、`Google`の`EC2`みたいなものを使えばいいんじゃない？" userName="gmm1990" createdAt="2025/08/16 02:28:07" color="">}}




{{<matomeQuote body="GHAの`action.yml`でカスタムビルドを組むのに半日かかったけど、帯域とビルド時間を節約できたから投資の価値はあったね。今のビルドは全部GHAだし、他のシステムへの移行は考えてないよ。次はGHホストからGCEワーカーに移行してDockerキャッシュを温めたいな。GCEは4倍安いし、ビルドも速くなるはず！でも、僕がこれに取り組むには機会費用が高いんだよね。" userName="a_t48" createdAt="2025/08/16 07:25:30" color="#ff5c5c">}}




{{<matomeQuote body="へぇ、面白かったよ。GitLabとかGitHubのランナーって高いって聞いたから、ベアメタルサーバーでCIランナーをセットアップするのに時間使っちゃったことがあるんだよね。" userName="gmm1990" createdAt="2025/08/16 21:09:33" color="">}}




{{<matomeQuote body="公式のDockerビルドプッシュアクションって、GitHub Actionsキャッシュを使ったキャッシングはサポートしてないんだっけ？" userName="fmbb" createdAt="2025/08/16 07:45:16" color="">}}




{{<matomeQuote body="そうなんだ。うちだとML依存関係で1イメージプッシュが10GB超えるんだよね。レイヤーキャッシュをサポートしてても、リリースブランチ間では共有できないし（https://github.com/docker/build-push-action/issues/862）。それに、複雑なビルドでキャッシュを確実に使うなら、Docker BuildXのディスク状態を使うのが一番信頼できるよ。今、リモートキャッシュだけで100%キャッシュされたリビルドができない問題があるんだ。Dockerチームに報告するべきだけど、最小限の再現手順がないし、俺のせいかもしれない可能性も10%あるんだよね。" userName="a_t48" createdAt="2025/08/16 19:20:13" color="#ff5c5c">}}




{{<matomeQuote body="Depot（https://depot.dev）を試してみてよ。俺はDepotの創設者なんだけど、これ、まさに僕らが作った目的の一つなんだ。レイヤーキャッシュを実際のNVMeデバイスに永続化して、ビルド間で自動で再アタッチするから、ネットワーク経由とかGitHub Actionsのキャッシュの制約を気にする必要がなくなるんだ。" userName="kylegalbraith" createdAt="2025/08/17 13:48:30" color="#ff5733">}}




{{<matomeQuote body="そうそう、同感だよ。なんで最初からそれがデフォルトじゃなかったのか不思議だけど、出始めの頃はまだ一般的じゃなかったのかな。だから僕は小さいGit LFSサーバーを自分で動かしてるんだ。GitがS3をネイティブでサポートするようになったら、すぐにでもそっちに切り替えるつもりだよ。" userName="nullwarp" createdAt="2025/08/16 01:11:52" color="">}}




{{<matomeQuote body="今はね、GitHubのリポジトリにあるLFSファイルを、僕のhomelabにあるMinIOインスタンスに保存するためにhttps://github.com/datopian/giftlessを使ってるよ。S3とLFSを繋ぐ他のプロジェクトもいくつかあるけど、この設定が一番うまくいってるんだ。" userName="_bent" createdAt="2025/08/16 12:55:52" color="#45d325">}}




{{<matomeQuote body="でもさ、Gitクライアントって、なんでこれに特定のサポートが必要なの？Gitホストが特定のオブジェクトのリクエストを別のホストにリダイレクトして、それらをバンドルにパックするのを、今、何が邪魔してるの？" userName="account42" createdAt="2025/08/18 09:26:42" color="">}}




{{<matomeQuote body="独自のS3互換ストレージシステムはオンプレミスにインストールできるんだよ。ScalityやJuiceFSみたいなシンプルなデーモンから、TrueNASみたいな小規模アプライアンス、Cephみたいな本格的なストレージクラスターまで色々あるね。OpenStackにはSwiftっていう独自のオブジェクトストレージサービスもあるし。データセンター向けなら、富士通、レノボ、ファーウェイ、HPEとかの大手企業が、高速なS3対応「オブジェクトストレージ」を喜んで売ってくれるよ。" userName="bayindirh" createdAt="2025/08/16 08:39:52" color="#785bff">}}




{{<matomeQuote body="CIやローカル開発テストには、DockerコンテナでAWSサービスを模倣するLocalstackが使えるよ。" userName="yugoslavia4ever" createdAt="2025/08/16 09:04:11" color="#38d3d3">}}




{{<matomeQuote body="Localstackは面白いね。うちはAWS使ってないけど、AWSユーザーにはいい選択肢だ。ScalityのオープンソースS3 Serverもコンテナで動くよ。" userName="bayindirh" createdAt="2025/08/16 09:06:25" color="">}}




{{<matomeQuote body="S3はAmazonのオブジェクトストレージサービスの名前だよ。互換APIを持つ他社のソリューションをS3と呼ぶのはちょっと違う気がするな。" userName="StopDisinfo910" createdAt="2025/08/16 10:04:47" color="#45d325">}}




{{<matomeQuote body="AWSの’クラウドストレージサービス’のことだよね。" userName="flohofwoe" createdAt="2025/08/16 07:23:22" color="">}}




{{<matomeQuote body="実際は’Simple Storage Service’の略で、S3なんだよ。" userName="dotancohen" createdAt="2025/08/16 07:50:29" color="#ff5733">}}




{{<matomeQuote body="記事がGit LFSをプロプライエタリでベンダーロックインって批判してるけど、GitHubがオープンなクライアントとサーバーを提供してるから公平じゃないね。LFSはオフライン操作を壊すけど記事は触れてない。Promisorsも同じだろうな。`git partial clone`の例はいいね！Large Object PromisorsはLFSの複雑さをサーバー側に移し、さらに複雑にしてるように見えるな。クライアントはGitサーバーにアップロードし、Gitサーバーがオブジェクトストアにアップロード、クライアントはオブジェクトストアから直接ダウンロードするのか？公開Gitサーバーが隠れたpromisorリモートにアップロードするケースがどれくらい問題になるか気になるよ。" userName="jauer" createdAt="2025/08/15 22:15:27" color="#ff5733">}}




{{<matomeQuote body="Git LFSはマジでダメ。サーバー実装がひどいし、ファイルの中身と保存方法を混同してる。オプトインのやり方も最悪で、普通にやると欲しいファイルじゃなくて、小さなテキストファイルになっちゃうんだ。彼らのソリューションが良いかは分からないけど、LFSがダメなのは間違いないよ。" userName="IshKebab" createdAt="2025/08/15 22:24:28" color="#785bff">}}




{{<matomeQuote body="大きなファイルはリポジトリに保存せず、別に管理するべきだと思う。そういう使い方には出会ってないけど、コードと一緒にデカいファイルをリポジトリに入れるメリットがよく分からないな。" userName="ozim" createdAt="2025/08/16 06:55:22" color="">}}




{{<matomeQuote body="それは多くのケースで無理だよ。デカいファイルだってコードと同じようにブランチを切ったり、いつなぜ変わったか知ったり、古いバージョンでどう動いたかチェックしたりする必要があるんだ。コードは小さいことが多いけど、だからってプログラムの全てのソースファイルが小さいわけじゃないんだからさ。" userName="tsimionescu" createdAt="2025/08/16 08:56:26" color="#38d3d3">}}




{{<matomeQuote body="そうだけど、Gitはそのためのツールじゃないんだよ。なんでみんな’Gitを使わなきゃ’って思ってるのか分からないな。バージョン管理や追跡は、他にもいろんな方法でできるんだからさ。リポジトリにはリンクみたいな参照だけ保存すればいいじゃない。" userName="ozim" createdAt="2025/08/16 11:34:50" color="">}}




{{<matomeQuote body="この新しい提案もLFSと同じ問題を抱えてる気がするなー。プロミサーにアクセスできないと、ラージファイルが壊れるっていう同じ問題が起こるんじゃない？" userName="jayd16" createdAt="2025/08/16 00:17:06" color="#ff5c5c">}}




{{<matomeQuote body="なんでだよ？この提案は `git lfs install` を実行しなくても、ちゃんとファイルを取得できるはずだけど？" userName="cowsandmilk" createdAt="2025/08/16 01:02:58" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LFSのダメなところは他にもあるんだ。リポジトリを移行すると、LFSオブジェクトがない過去のコミットにまで`.gitattributes`が追加されちゃうんだよ。例えばCコミットでラージファイルを追加しても、AやBコミットまでLFS参照が入っちゃうってこと。" userName="AceJohnny2" createdAt="2025/08/16 01:23:25" color="#45d325">}}




{{<matomeQuote body="そんなはずないだろ。前のコミットにファイルが追加されるなんてこと、あるわけないじゃん。ハッシュが変わっちゃうから、色々なものがぶっ壊れちゃうぞ！" userName="actinium226" createdAt="2025/08/16 02:48:21" color="">}}




{{<matomeQuote body="Git LFSってさ、SSHだと動かなかったんだよね。SSL証明書が必要で、GitHubもそれがセルフホストする人にはハードルだって分かってたみたい。GitLabはSSH対応のパッチを当てた気がするけど。" userName="cma" createdAt="2025/08/15 22:58:59" color="#ff5c5c">}}




{{<matomeQuote body="`git lfs migrate` はコミットを書き換えちゃうから、ハッシュは変わるんだよ。これは公式ドキュメントにも書いてある。普通は新しいコミットだけが対象だけど、俺はリポジトリ全体をLFS化したかったから、過去のコミットまで`.gitattributes`が汚染されてガッカリしたよ。詳しくはここを見てくれ！<br>https://github.com/git-lfs/git-lfs/blob/main/docs/man/git-lfs-migrate.md" userName="AceJohnny2" createdAt="2025/08/16 03:24:59" color="#ff5c5c">}}




{{<matomeQuote body="もしアーキテクチャがどうでもよくて、デフォルトでオンにするだけなら、Git LFSでもとっくにできてたはずだろ。" userName="jayd16" createdAt="2025/08/16 01:57:36" color="">}}




{{<matomeQuote body="ドキュメントの2パラグラフ目にこう書いてあるぞ、「`git lfs migrate` はデフォルトで現在チェックアウト中のブランチと、リモートにないコミットで追加されたファイルだけを操作する」って。もしかしてリモートの設定が間違ってたんじゃないの？" userName="actinium226" createdAt="2025/08/16 12:49:53" color="#ff5733">}}




{{<matomeQuote body="Let’s Encryptはさ、Git LFSが始まる3年前にローンチしてるんだぜ。" userName="remram" createdAt="2025/08/16 00:53:44" color="#785bff">}}




{{<matomeQuote body="「Gitはそういうツールじゃない」って言ってるけど、それはGitがラージファイルの追跡がまだ得意じゃないからであって、Gitの根本的な特性じゃないだろ。改善できるはずだよ。あと、「GIT」じゃなくて「Git」ね。" userName="IshKebab" createdAt="2025/08/16 11:58:37" color="#ff33a1">}}




{{<matomeQuote body="バージョン管理システムはプロジェクト管理のツールで、ソースコード専用じゃないんだ。プロジェクトを複数のストレージに分けるのは、管理上ありえない。みんな一緒にしたいのは、デジタルファイルのプロジェクト管理の基本機能として、全部まとまってるのが大事だからだよ。デジタルファイルのバージョン管理や、リリース・ビルド計画との連携は必須なんだ。それが実際のプロジェクトの要求だね。デジタルアセットを含むプロジェクトは、バイナリや大きなデータファイルがつきものだし、テキストファイルだけってプロジェクトはむしろ珍しい。Linuxカーネルは、グラフィックとか大きな固定データがないから独特なんだ。Gitプロジェクトの全てが小さなテキストファイルじゃなきゃダメって考えは、マジで変だよ。ビデオゲーム、ウェブサイト、ウェブアプリ、データ駆動API、地理データ、画像、動画、音楽、ドキュメント…どれもバイナリファイルを使うでしょ？<br>選択肢は二つ。<br>1. Gitは、現実のプロジェクトに役立つ汎用VCSである。<br>2. Gitは、バイナリや大きなファイルを許可しない。<br>大きなファイルのバージョン管理って、そんなに複雑な問題じゃないんだ。差分やマージを気にしなくていいなら、管理はもっと簡単になるよ。" userName="da_chicken" createdAt="2025/08/16 17:57:26" color="#ff5733">}}




{{<matomeQuote body="Git LFSがデフォルトでできないのは、次の理由からだね。<br>1. Gitとは別にインストールが必要。<br>2. GitフィルターやGitフックを使うから、ローカルでの設定が必要。<br>Gitに最初から組み込まれていれば、こんな問題は起きないのにね。" userName="thayne" createdAt="2025/08/16 04:50:56" color="#785bff">}}




{{<matomeQuote body="また同じこと言うけどさ、『俺の場合はリポジトリ全体をLFSに変換してた』って言ったじゃん。マニュアルの”INCLUDE AND EXCLUDE REFERENCES”ってセクションをチェックしてみてよ。" userName="AceJohnny2" createdAt="2025/08/16 17:40:04" color="">}}




{{<matomeQuote body="クラウドストレージからオブジェクトがなくなったり、ストレージが何度も移行されて、アーカイブに必要な古いストレージが使えなくなっちゃったらどうなるの？" userName="vlovich123" createdAt="2025/08/16 05:15:06" color="#785bff">}}




{{<matomeQuote body="そういう場合はエラーになるのは当然だよね、良くないけど。でも、元の人は、Git LFSにはネイティブなGitじゃ起こらない種類のエラーが他にもあるって指摘してたんだ。例えば、Gitアクションを途中で中断すると、Git LFSでは一貫性のない状態になっちゃうけど、ネイティブGitならそんなことは起こらないんだ。" userName="atq2119" createdAt="2025/08/16 14:49:06" color="#ff5733">}}




{{<matomeQuote body="Let’s Encryptは2012年に設立されて、2015年12月に一般公開されたね。Git LFSは2014年半ばだから、だいたい同じくらいの時代だ。" userName="IndrekR" createdAt="2025/08/16 10:23:16" color="">}}




{{<matomeQuote body="Gitが大容量ファイルの追跡に優れていないのが欠陥だとか、それが改善点だとかいう意見には反対したいね。" userName="ozim" createdAt="2025/08/16 20:50:33" color="">}}




{{<matomeQuote body="でも、もし問題がそれだけだったなら、LFSプラグインをGitのコア部分にすればよかっただけなんじゃないの？" userName="xg15" createdAt="2025/08/16 08:13:05" color="">}}




{{<matomeQuote body="OK、君の主な不満は、以前のコミット全てに.gitattributesが追加されることだったんだよね？もし誰かが昔のコミットに.binファイルを追加した場合、それでもLFSに入れたいと思うでしょ？“現在のコミットとの相互参照”がどういう意味なのか、俺にはちょっと分からないな。mainとか別のブランチの.gitattributesを使いたい理由も分からないし。明示的に指示されない限り、別のブランチを参照する操作って、すごくGitらしくない気がするんだけど。まあ、とにかく、LFSは履歴に適用しようとすると履歴を書き換えるのは確かだね。それが最善じゃないのは同意するよ。履歴をめちゃくちゃにして、特定のGitハッシュへのリンクを壊すリスクもあるしね。" userName="actinium226" createdAt="2025/08/16 22:31:02" color="#38d3d3">}}




{{<matomeQuote body="大事なのは、二つの履歴を分けたくないってことだよ。もし君のユースケースが大容量ファイルにすごく依存してるなら、このユースケースにもっと向いている別のSCM（SVN、Perforceとか）を選ぶべきだね。でも、ファイルごとに違うSCMを使うのは、もう最悪な結果になるだけだよ。" userName="tsimionescu" createdAt="2025/08/16 13:03:26" color="#ff5c5c">}}




{{<matomeQuote body="ラージファイルを特別扱いする現在のGit LFSのような設計は根本的な問題だと思う。公式の新しいシステムも結局同じような振る舞いになりそうだよね。UXの問題は解決してほしいけど、Gitメンテナがちゃんと改善してくれることを祈るしかないなぁ。<br>自然に解決するとは思えないんだよね。" userName="jayd16" createdAt="2025/08/16 16:26:01" color="#45d325">}}




{{<matomeQuote body="もし今の問題がなくなったら、それはもはやGit LFSじゃなくて、全然別のものになるんじゃないかな。" userName="thayne" createdAt="2025/08/19 01:18:55" color="">}}




{{<matomeQuote body="Git自体は良いツールなんだよ。ただ、このラージファイル管理の仕事には向いてないだけなんだ。" userName="mafuy" createdAt="2025/08/16 11:53:20" color="">}}




{{<matomeQuote body="問題なのは、リポジトリでGit LFSを使い始めるのとは違って、移行する時にはメタデータが「過去に遡って」伝わることなんだ。<br>これじゃあ、実際のコミットにある内容が反映されないんだよね。" userName="rcxdude" createdAt="2025/08/18 11:02:37" color="#785bff">}}




{{<matomeQuote body="LFSってオフラインでの操作を壊しちゃうって話、僕も同じこと思ったよ。<br>Git annexはもっと分散的で、いろんなリモートにあるラージファイルの存在を追跡できるんだ。<br>USBドライブみたいなファイルシステムリポジトリからでもラージファイルを引っ張ってこれる。<br>でも、めっちゃ複雑で使いにくいのが欠点だよね。" userName="gradientsrneat" createdAt="2025/08/16 16:51:09" color="#45d325">}}




{{<matomeQuote body="この記事はGit LFSを不公平に扱ってると思うな。Git LFSはGitHubにロックインするわけじゃないし、プロトコルはオープンだよ。<br>Git拡張としてのLFSの欠点は避けられないんだ。PromisorsはLFSと同じコンセプトだけど、Gitに組み込まれてるからもっと良いUXを提供できるんだよね。" userName="Ferret7446" createdAt="2025/08/16 01:07:11" color="#ff33a1">}}




{{<matomeQuote body="一度Git LFSをリポジトリで使うと、永久にロックインされちゃうんだ。<br>消費されたスペースを削除するには、GitHubからリポジトリを消すしかないって知ってた？<br>こんな振る舞いはどこにも明記されてないし、僕の会社でGitHubの統計調査してた時、ラージな圧縮データベースを保存するのに使ってて困ったよ。" userName="andrewmcwatters" createdAt="2025/08/16 02:19:41" color="#785bff">}}




{{<matomeQuote body="これってGitとGitHubを混同してるよね。GitHubはひどいってのは今に始まったことじゃない。<br>Git自体は問題ないし、Git LFSはGitの拡張機能だよ。<br>Git LFSの仕様にはストレージの課金の話なんてないし、誰だってより良いサーバーを書けるんだから。" userName="throwaway290" createdAt="2025/08/16 02:23:33" color="#45d325">}}




{{<matomeQuote body="Gitの利用は圧倒的にGitHub経由だから、GitとGitHubを切り離して考えるのは難しいよ。<br>他の使い方はほとんど誤差みたいなものだしね。<br>だから、一番人気のGitホストで一番使われてるGitのラージファイル拡張機能が、ユーザーをロックインするってのは、知っておくべきめちゃくちゃ役立つ情報なんだ。" userName="andrewmcwatters" createdAt="2025/08/16 02:27:24" color="#ff33a1">}}




{{<matomeQuote body="それって、すごく悪いロジックだよ。その論理だと、GitHubがダメだからGitもダメってことになるじゃん。みんながそれを混同するたびに、俺はイライラするんだよね。もっとちゃんと知ってるなら、なんで…？GitHubがダメだって言うだけでいいじゃん。" userName="throwaway290" createdAt="2025/08/16 02:44:06" color="#785bff">}}




{{<matomeQuote body="＞圧倒的にGitはGitHub経由で使われてる。他は誤差程度<br>これって本当？俺は商用でGitを5社で使ったけど、GitHubを商用で使ったことはないよ（オープンソースプロジェクトのプラットフォームとしては別だけど）。<br>GitHubにプロジェクトをホストしてたら、GitHubに依存してることになるけど、ロックインされてるわけじゃないよね？GitHubのリポジトリを閉じて、他のとこに移行できるんだから。何か見落としてるかな？" userName="integralid" createdAt="2025/08/16 12:51:07" color="">}}




{{<matomeQuote body="＞でもロックインされてない、他のとこに移行できるから。<br>Git LFSを使っていたら、リポジトリをフォークして書き換えて、.lfsconfigのバックエンドURLを更新しないと、まともに動く状態に戻せないよ。" userName="bobmcnamara" createdAt="2025/08/16 14:25:58" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞そして問題は大きい：<br>＞高いベンダーロックイン – GitHubがGit LFSを作ったとき、他の大容量ファイルシステム—Git Fat、Git Annex、Git Media—はサーバーサイドに依存しなかった。でもGitHubは独自のサーバー実装にユーザーをロックインして、利用料を徴収した。<br>これって今でも問題なの？<br>俺は今週Git LFSをGitLabインスタンスで使ったけど、問題なく動いたみたいだよ。<br>https://docs.gitlab.com/topics/git/lfs/<br>その1週間前にもGiteaインスタンスでGit LFSを使ったけど、これも問題なかった。<br>https://docs.gitea.com/administration/git-lfs-setup<br>LFSが将来的に非推奨になるとかいう話を聞く一方で、使ってる人をほとんど見かけないから、みんな気にせず画像とかを普通のGitに突っ込んでるのが、なんか不思議なんだよね。" userName="KronisLV" createdAt="2025/08/16 09:31:16" color="#45d325">}}




{{<matomeQuote body="Gitコアでデカいファイルをサポートしてくれるのは本当に嬉しいよ。外部のソリューションだと、結局同じようなオプトインの手続きが必要になるしね。俺はできるだけコマンド少なく、シームレスに動いてほしかったから、APIは’.gitattributes’ファイルのsmudgeとcleanフィルターに限定したんだ。<br>ベンダーロックインをなくすために、AtlassianやMicrosoftとかなり早い段階から直接協力したんだ。特にAtlassianにはファイルロックAPIでたくさん助けてもらって、素晴らしい協力関係だったよ。LFSはオープンソースとして、3つの異なるGitホストで互換性ありでリリースされたんだ。" userName="technoweenie" createdAt="2025/08/15 23:40:03" color="#38d3d3">}}




{{<matomeQuote body="いや。これは解決策じゃない。<br>Git LFSは今のところごまかしに過ぎないし、クローン操作中にフィルター引数を書くのも長期的な解決策にはならないって。<br>`git clone`って、ほとんどの人がGitを学ぶ時に最初に実行するコマンドじゃん？強調しとくけど、最初のコマンドだよ。<br>フィルターを書くことを覚えてくれるかな？多分、クールなコードベースのチュートリアルに書いてあれば覚えてくれるかもしれない。でも、もし書いてなかったら？気づかないまま時間がかかるかもしれない。もし覚えたとしても？クローンしたリポジトリはコンパイルできなかったり、使えなかったりするかもしれない。だってblobが欠けてるんだからね。<br>仮にちゃんとできたとしても、みんな理解できるかな？ほとんど無理だよ。俺たちはGitの内部構造を、みんなが最初に学ぶコマンドで晒してるんだ。「blobって何？」「なんでフィルターが必要なの？」「blobはどこに保存されるの？」って、まさに抽象化の漏洩じゃん。<br>これってRsyncがやってて、もう解決済みの問題だよ。その実装をただ持ってくるだけでいいんだ。つまり、代替の表現をサポートするか、blobを完全にやめるってことなんだけど、Gitのメンテナーたちはそうしたくないみたいだね。" userName="glitchc" createdAt="2025/08/15 22:19:21" color="#45d325">}}




{{<matomeQuote body="＞これは解決済みの問題: Rsyncがやってる。<br>どんな解決策なのか説明してくれる？Rsyncアルゴリズムの詳細じゃなくて、ユーザーから見てどうなるのかを知りたいんだ。「git clone」したら、ローカルファイルシステムにどんなファイルがあるの？" userName="ks2048" createdAt="2025/08/15 22:44:16" color="">}}




{{<matomeQuote body="シャロークローンならファイルは何も存在しないけど、フルクローンだと各バージョンの各blobがフルコピーで手に入るんだ。そして提案されてるのは、各リビジョンを最後のRsync操作として扱うってこと。ファイルをいじる回数が多いほど、それはアセットでもそうだし、コードの正確なスナップショットを取るために依存関係をチェックインした場合でもそうだけど、それがたくさんの大きなファイルの変更になるんだ。" userName="hinkley" createdAt="2025/08/15 23:06:01" color="#45d325">}}




{{<matomeQuote body="画像や音声、動画みたいなほとんどのデカいアセットは、Rsyncアルゴリズムを使ってもメリットはほとんどないよ。ファイルをちょっと「調整」しただけでも、フォーマット的にはバイトレベルでめちゃくちゃ大きな違いが出ちゃうのが普通だからね。" userName="tatersolid" createdAt="2025/08/16 03:33:47" color="#ff33a1">}}




{{<matomeQuote body="動画はGitの範囲外かもしれないね。YouTubeですら動画の「更新」はできないんだから。<br>これ、めちゃくちゃ変に聞こえるかもしれないけど、動画のソースコードをスクリプトにしちゃって、ビルドするプロセスで動画を作って、それをリリース用の成果物にするのはどうかな？" userName="TZubiri" createdAt="2025/08/16 04:58:47" color="#785bff">}}




{{<matomeQuote body="Gitってさ、昔からフラグ追加して問題解決するけど、99%のユーザーはそんなの絶対見つけないよね。デフォルト設定を直そうとしないんだよな。後方互換性壊さずにデフォルトを変えることだってできるのにさ。" userName="IshKebab" createdAt="2025/08/15 22:25:41" color="#ff5c5c">}}




{{<matomeQuote body="「デフォルトを直さない」ってのはちょっと違うんじゃない？Git 2.0でpushのデフォルト設定を”matching”から”simple”に変えたことあったじゃん。" userName="Jenk" createdAt="2025/08/15 22:39:49" color="#785bff">}}




{{<matomeQuote body="Gitの肥大化ってほとんどが過去の履歴が原因って言うのは間違ってる？もしそうなら、最新バージョンのファイルだけをrsyncみたいにダウンロードするアプローチが一番いいんじゃないかな？ほとんどの人はそれだけで十分なはずだしさ。" userName="spyrja" createdAt="2025/08/15 23:11:51" color="">}}




{{<matomeQuote body="「止まった時計が2度目に正しかったのはいつ？」って話だけど、俺は前のコメントに同意。Gitコミュニティって、チームの問題を解決するのに、デフォルト設定できないような一時しのぎの修正ばっかするんだよな。sparse checkoutとかコミット後のノート追加とかさ。これって、プルやプッシュするたびにめちゃくちゃ手間がかかるってことじゃん。IDEからは絶対使えないし。ホントの修正の邪魔をしてるだけだよ。" userName="hinkley" createdAt="2025/08/15 23:09:09" color="#ff33a1">}}




{{<matomeQuote body="「Gitの肥大化ってほとんどが過去の履歴が原因？」ってのは、俺の経験からすると違うと思う。リポジトリをシャロークローンしても、容量の節約って思ったほどじゃなかったんだ。つまり、履歴はかなり効率的に保存されてるってことだね。" userName="pizza234" createdAt="2025/08/15 23:25:56" color="#ff5c5c">}}




{{<matomeQuote body="俺はGitが出たときから使ってるけど、IDEで使ったことなんて一度もないよ。ツールをちゃんと学ぼうとしないユーザーがターゲットになるべきなの？もちろん、インターフェースが大事じゃないとは言わないけどさ。俺はjqのインターフェースは最悪だと思ってるけど、Gitで同じように使いこなせないなんて想像できないんだよね。" userName="smohare" createdAt="2025/08/16 00:17:54" color="">}}




{{<matomeQuote body="ちょっと調べてみた感じだと、Gitはガベージコレクションで余計なファイルをちゃんと消してるから、前のコメントの「履歴は効率的」って話は合ってそう。でもさ、GitはMercurialみたいに差分じゃなくて、完全なファイルを保存してるんだよね。だから、やっぱり今のスナップショットだけを先にダウンロードするってやり方が効果あるかもな。" userName="spyrja" createdAt="2025/08/16 00:23:16" color="#38d3d3">}}




{{<matomeQuote body="マジそれな！もしGitでデカいファイルが使えないなら、それはGitのバックエンドとかクローン機構が悪いってことだよ。そこをちゃんと直して、次のステップに進もうぜ。" userName="expenses3" createdAt="2025/08/16 10:44:44" color="">}}




{{<matomeQuote body="「フィルターを書くの忘れる？」って話だけど、フィルターを書くのを忘れたって全然問題ないんじゃない？もし作業に10分以上かかってるなら、その時にフィルター書けばいいんだし。" userName="TZubiri" createdAt="2025/08/16 04:55:22" color="">}}




{{<matomeQuote body="「ビデオのソースコードはスクリプトで、ビルドしたらリリース版のビデオができるって、これってありえない話？」って提案だけど、実はそういうのってある程度もう実現されてるんだよ。でもそれって、すべての元映像にアクセスしなきゃいけないし、高品質でちゃんと圧縮されたビデオファイルをレンダリングするのにはめちゃくちゃ時間かかるんだよね。詳しくはこれ見て。<br>https://en.wikipedia.org/wiki/Edit_decision_list" userName="yencabulator" createdAt="2025/08/17 16:51:07" color="#ff5733">}}




{{<matomeQuote body="これってかなりニッチだけど、アニメのファンエンコードで使われてるよ。一部のグループはVapoursynthスクリプトを公開してて、同じ元動画があれば同じ再エンコードができるんだ。例えば、LightArrowsEXEのEncoding-ProjectsやBeatrice-Rawsのencode-scriptsを見てみて。<br>https://github.com/LightArrowsEXE/Encoding-Projects<br>https://github.com/Beatrice-Raws/encode-scripts" userName="qubidt" createdAt="2025/08/16 09:00:13" color="#ff5c5c">}}




{{<matomeQuote body="え？なんで初心者に意味なく10分も待たせるわけ？自分が何間違えたのか、どれくらい待つのが普通なのか、どうやって分かるの？ChatGPTに「Gitクローンが10分かかるのはなぜ？」って聞けってこと？！ユーザー体験としてこれがベストなわけないよ。Gitはもっと改善する必要があるね。" userName="Too" createdAt="2025/08/16 05:06:39" color="">}}




{{<matomeQuote body="まさにそれだよ、今回の変更で対応してるんだけど、デフォルトにならないのは、多くの人がGitにテキストしか置いてないから、これらの変更によるデメリットを避けたいんだよね。" userName="krupan" createdAt="2025/08/17 02:58:47" color="">}}




{{<matomeQuote body="Gitは論理的には完全なファイルを保存するモデルだよ。でも物理的には、これらの完全なファイルはpackファイル内で差分（deltas）として保存されてるんだ。まだパックされてない新しいファイルは別だけどね。デフォルトでは、Gitはたくさんのloose filesがあると自動的にパックするし、ネットワークプロトコルで送受信するときも常にパックされるよ。" userName="cesarb" createdAt="2025/08/16 10:16:46" color="#785bff">}}




{{<matomeQuote body="手動フィルターが最善策かは分からないけど、これで多くの足りない部分が補われる気がするね。Gitの初回コミット時みたいに、デフォルトのグローバルフィルターサイズに引っかかるリポジトリをクローンした時に、無効化する方法を教えてくれると良いな。「クローンしたリポジトリはブロブがないからコンパイル/使用できないかも」ってあったけど、LFSみたいに大きいファイルの全履歴ダウンロードを防いで、必要なバージョンだけチェックアウトするのがフィルターの目的なんじゃないの？1バイトのフィルターでもワーキングツリーは使えるけど、過去のコミットをチェックアウトしようとすると全ファイルダウンロードが必要になるってことかな。" userName="bogwog" createdAt="2025/08/16 19:24:45" color="#785bff">}}




{{<matomeQuote body="うーん、動画自体は「アニメX シーズン1 第5話」みたいなインデックス可能な識別子で参照されるんだろうね。実際の動画のプロビジョニングは、ビルドする人が（多分Torrentネットワークか、誰もやらないだろうけどDVDから）入手することになるんだろうな。" userName="TZubiri" createdAt="2025/08/17 21:35:37" color="">}}




{{<matomeQuote body="それは「ビルド」を瞬時に終わるもの、あるいは数時間で完了するものと見なす場合に限った問題だね。科学における再現性と似てるよ。LHCみたいに再現がとてつもなく高価な実験もあるけど、技術的には再現可能なんだ。" userName="TZubiri" createdAt="2025/08/17 21:29:54" color="">}}




{{<matomeQuote body="「クローンしたリポジトリはブロブがないからコンパイル/使用できないかも」って話だけど、ブロブの履歴だけがフィルターされるんだよ。" userName="TGower" createdAt="2025/08/15 22:52:13" color="">}}




{{<matomeQuote body="多くの動画編集って、動画全体の作り直しじゃなくて、一部の映像を繋いだり削除したりすることなんだよね。こういう使い方なら、ローリングハッシュを使うrsyncがすごく役立つはずだよ。" userName="cyberax" createdAt="2025/08/16 05:41:17" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
