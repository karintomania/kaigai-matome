+++
date = '2025-04-22T00:00:00'
months = '2025/04'
draft = false
title = '速報！macOS向け爆速Rust製パッケージマネージャー「Sapphire」登場！Homebrewに不満ならコレ試すしかない'
tags = ["macOS", "パッケージマネージャー", "Rust", "Homebrew", "開発"]
featureimage = 'thumbnails/blue4.jpg'
+++

> 速報！macOS向け爆速Rust製パッケージマネージャー「Sapphire」登場！Homebrewに不満ならコレ試すしかない

引用元：[https://news.ycombinator.com/item?id=43765011](https://news.ycombinator.com/item?id=43765011)




{{<matomeQuote body="よっ、これ作ったのは俺だよー。まだHomebrewより優れてる点は少ないけどね。bottleインストールの相対パス設定はまだ完璧じゃない。でもrust以外は全部動くよ。bottleを100%動くようにするのは可能だと思う。ソースからのビルドはまだクソだけど、json APIの情報が足りないからなぁ。RubyからRustへのトランスパイラは無理だし。自動ビルドシステム検出で落ち着くかな。Caskは動くっぽいけど、まだ.dmgとか.pkgしか試してない。Homebrewがマジで合わなくて自分で作り始めたんだよね。mac用の宣言的なパッケージ+システムマネージャーを作りたくて。ansibleはオーバースペックだし、nix-darwinはシステムに深く食い込むし。Brewコマンドのラッパーは遅すぎるから、これを作り始めたってわけ。バグレポートとかIssueとかpull requestとかマジ感謝！" userName="alexykn" createdAt="2025/04/22 19:18:18" color="">}}




{{<matomeQuote body="なんでbrewをRustで実装することに興味持ったの？パフォーマンスが上がることを期待してるのかな？今のbrewでパフォーマンスのボトルネックになってるところとかある？動機とか希望とか、もっと詳しく教えて！" userName="jrochkind1" createdAt="2025/04/22 19:20:02" color="">}}




{{<matomeQuote body="これマジすごい！uvサポートはある？brewの依存関係管理がマジで嫌なんだよね。開発者の哲学が矛盾してて、ブロートウェアになるんだよ。パッケージメンテナは設定を定義しなきゃいけないんだけど、常に最新のPythonバージョンを使うべきだって言うんだ。意味わかんない。メンテナは壊れないとアップデートしないから、いろんなPythonバージョンが動いてるんだよね。しかもシステムPythonを使わないし！uvなら各パッケージにvenvを作って、指定したdepsだけを使うから、ブロートウェアが減ると思うんだよね。" userName="godelski" createdAt="2025/04/23 02:32:24" color="#ff5733">}}




{{<matomeQuote body="Linuxのパッケージマネージャーからすると、brewはなんか間違ってる気がする。でも、言語の問題じゃないと思うんだよね。apt/dnfのパフォーマンスはマジすごいけど、dnf（少なくともyum）はPythonで書かれてるし。明らかに何か違うと思うんだ。アーキテクチャがどう違うんだろう？" userName="dijit" createdAt="2025/04/22 19:38:45" color="">}}




{{<matomeQuote body="HomebrewはPythonで書かれたソフトウェアをインストールするためだけに使うべきで、自分のPythonプロジェクトの依存関係には使うべきじゃないよ。そうすれば、Pythonのバージョンは関係なくなるし、パッケージが動くために必要なバージョンを使うだけだよ。" userName="Kwpolska" createdAt="2025/04/23 05:17:34" color="">}}




{{<matomeQuote body="クールなプロジェクト、頑張って！もし役に立つなら、昔CIジョブのためにMacをたくさん管理してたんだけど、ビルドプロセス（UnrealのUAT）が同時に複数のビルドプロセスをサポートしてなくて、Dockerも遅かったから、別のアカウントを使って並列化しようとしたんだ。Homebrewはシステム全体にインストールするから、それがマジで難しかった。だから、ユーザーのホームディレクトリ内のどこか（オーバーライド可能）で動作するパッケージマネージャーが欲しい。" userName="Scramblejams" createdAt="2025/04/22 20:46:14" color="">}}




{{<matomeQuote body="ここ1年くらいのHomebrewを試したことある？Homebrewのパフォーマンスが悪いっていうイメージを持ってる人が多いと思うんだけど、昔はすべての操作を行うために、すべてのローカルformulaファイルを評価する必要があったんだよね。今はだいぶ改善されてて、brew listとかはほぼ一瞬で終わるよ。" userName="woodruffw" createdAt="2025/04/22 19:42:20" color="">}}




{{<matomeQuote body="＞ 自分のPythonプロジェクトの依存関係じゃないって<br>そんなことしてないよ。むしろ、どうやるのかもわからないし、面倒くさそう。<br>＞ Pythonのバージョンは関係ないって<br>違うよ。brewがインストールしたPythonのバージョンを確認してみて。システムのバージョンじゃないでしょ？「動くもの」じゃなくて、「メンテナが指定したもの」だよ。brewの開発者によると、「動く最新バージョン」を使うべきらしい。Pythonの変更だけではアップデートしないよ。自動化がないと無理だよ。" userName="godelski" createdAt="2025/04/23 09:28:03" color="">}}




{{<matomeQuote body="Homebrewが「システム」Pythonを使わない主な理由は、Appleが何度も削除したいと言ってるからだよ。それと、パッケージごとにPythonのバージョン要件があるから、単一のシステムPythonを使うのは無理なんだ。Homebrewで複数のPythonインタプリタがあるのは、uvやpyenvでも同じだよ。uvは複数のインタプリタを透過的に処理するから、気づかないかもしれないけど。ディスク容量は安いから、正しいPythonバージョンとパッケージを紐付ける手間を考えると、複数のPythonバージョンを配布する方が良いんだよ。" userName="woodruffw" createdAt="2025/04/23 14:00:55" color="">}}




{{<matomeQuote body="試したよ。M1でもマジで遅い。M1でbrewパッケージを1つインストールする間に、10年前のSATA SSDのintelシステムでsudo apt update && sudo apt dist-upgradeが終わっちゃうよ。マジでHomebrew嫌い。sudoが難しいとか言ってる態度も嫌い。プロジェクトの人たちはクソだし、メンテナはリリースに遅れてるし、インストールされたすべてのバージョンのキャッシュを保持して、SSDの容量を10GB以上無駄にしてるし。壊れたときに原因を特定するのがマジで難しいし、助けを求める人もいないし、ドキュメントもクソだし、一番早いのはディレクトリを全部消して最初からやり直すことだよ。マジでHomebrew好きな人を知らない。みんな諦めて使ってるだけ。" userName="KennyBlanken" createdAt="2025/04/23 15:41:33" color="">}}




{{<matomeQuote body="Appleが削除したがってるから使わないってのは理由にならなくね？同じPythonのバージョンを2つも持つ意味がわからん。`uv`にあるかどうかは試した？ディスク容量が安いってのも違うと思う。みんながそう思ったら安くなくなるし。M2 Airでも bloat は忍び寄ってくるんだよね。" userName="godelski" createdAt="2025/04/23 18:15:38" color="">}}




{{<matomeQuote body="brew のパスがパッケージのビルド時にハードコードされてるのが主な理由だった気がする。だから bottles が使えないんだよね。ソースからビルドしてもパスがハードコードされてる可能性もあるから意味ないかも。" userName="watermelon0" createdAt="2025/04/22 21:39:48" color="">}}




{{<matomeQuote body="Ruby スクリプトの互換性のために、https://github.com/artichoke/artichoke みたいなのを埋め込むのはどう？" userName="nicoburns" createdAt="2025/04/22 20:25:34" color="">}}




{{<matomeQuote body="Homebrew の formula は7000個くらいあるらしいけど、AI で書き起こして、エラーが出たら LLM に修正させるってのはどうかな？" userName="miki123211" createdAt="2025/04/23 17:13:29" color="">}}




{{<matomeQuote body="chroot か Docker でビルドすれば、ハードコードされたパスも指定したディレクトリに解決されるんじゃない？" userName="scribu" createdAt="2025/04/22 22:29:41" color="">}}




{{<matomeQuote body="それ、めっちゃ実現可能だと思う。いいアイデアだね。今週は忙しいから、週末にでも git で Poll を開いて、ソースからのパッケージングシステムについて話し合いたいな。パッケージは bottle 互換にしたい。" userName="alexykn" createdAt="2025/04/23 18:25:51" color="#ff5733">}}




{{<matomeQuote body="nix のインストーラーが _nixbld$N っていう macOS ユーザーを32個も作る理由ってこれか。" userName="benwaffle" createdAt="2025/04/22 22:39:18" color="">}}




{{<matomeQuote body="ソースからビルドしても、ninja とか cmake とか cargo とかのビルドシステムに依存するから、そんなに速くならないと思う。Brew の見た目とか使い心地が好きじゃないから Sapphire を作ってるんだ。UI/UX はまだ全然だけど、これから良くしていくつもり。" userName="alexykn" createdAt="2025/04/22 19:48:48" color="#ff33a1">}}




{{<matomeQuote body="declarative なパッケージマネージャーいいね。Homebrew Bundle を数年使ってるけど、新しいラップトップとか VM の構築がすごく楽になったよ。Brewfile の形式も簡単だし。Sapphire で拡張するのもいいかもね。" userName="samhclark" createdAt="2025/04/22 22:39:22" color="#45d325">}}




{{<matomeQuote body="https://mise.jdx.dev/ は pipx backend 経由で uv をサポートしてて、全体的に見てマジ優秀なパッケージ・ツールマネージャーだよ。" userName="saint_yossarian" createdAt="2025/04/23 07:44:36" color="">}}




{{<matomeQuote body="uv 大好き＜3。統合を検討するつもり。独自のパッケージング/ソースビルド DSL をどう実装するかはまだ決めてなくて、近日中に git poll を開くかも。" userName="alexykn" createdAt="2025/04/23 18:30:29" color="#785bff">}}




{{<matomeQuote body="マジ逆の経験したわ。パッケージの Python バージョンを自動で上げたせいで、そのパッケージが動かなくなった。アップストリームが対応してなかったから。報告したらすぐ直してくれたけど。" userName="pm215" createdAt="2025/04/23 11:38:39" color="">}}




{{<matomeQuote body="casks と bottles っていう言葉からすると、Homebrew との互換性を意図してるのかな？説明には明記されてないけど。" userName="stevage" createdAt="2025/04/23 02:22:14" color="">}}




{{<matomeQuote body="自動検出の前に、ユーザーが手動で設定できるようにしてほしい。自動マジックはマジ勘弁。yarn が良い例。" userName="3np" createdAt="2025/04/22 22:29:46" color="">}}




{{<matomeQuote body="Homebrew は Mac 使う上での小さなイライラの一つって感じ。昔、Homebrew がマジックに頼りすぎてるって嫌ってた人がいた。今は戦ってる気分。" userName="inferiorhuman" createdAt="2025/04/23 21:50:55" color="">}}




{{<matomeQuote body="それを使うのをやめる理由にならない？<br>いや、マジで最高の理由だよ。Homebrew は数千万台のマシンで動いてる。Python は簡単にビルドできるし、複数のバージョンが必要だから、これは当てはまらない。<br>uv python list で確認できるよ。uv と pyenv の方が Homebrew より容量食ってると思うよ。" userName="woodruffw" createdAt="2025/04/23 19:07:03" color="#785bff">}}




{{<matomeQuote body="それって ports system のことだよね。macports とか alpine packages とか nixpkgs とか色々ある。Nix と distri を見てみると良いかも。Nix packages は macOS 上でもビルドできるよ！" userName="NewJazz" createdAt="2025/04/22 23:33:03" color="#ff5c5c">}}




{{<matomeQuote body="brew でイライラしてたのは、起動に brew を呼び出す必要があったこと。パスを見つけるために Ruby interpreter が起動して、bash スクリプトを実行するだけなのにマジ遅かった。" userName="WD-42" createdAt="2025/04/22 23:30:06" color="">}}




{{<matomeQuote body="それはもう直ってるよ！少なくとも1年前には！でも、確かに昔はめっちゃ遅かった。特にすべての formula を読み込むときは。" userName="woodruffw" createdAt="2025/04/23 02:06:56" color="">}}




{{<matomeQuote body="あのね、aptとdnfはバイナリパッケージ管理システムだけど、Homebrewはソースベースのビルドシステムで、バイナリパッケージ（“bottles”）が上に追加されてるんだよね。" userName="amarshall" createdAt="2025/04/22 21:32:55" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Homebrew側の立場から言うと、これめっちゃクールだと思う。Homebrewには2つの側面があると思うんだ。1つはbrewコマンドを使うユーザー向けの簡単なボトルインストール。もう1つは開発・リポジトリ・CI/CDのインフラ全体。Homebrewの差別化は、新しいパッケージの貢献と更新のしやすさにあるんだよね。並列ダウンロードはHomebrewの制限じゃなくて、GitHubへの配慮なんだ。" userName="woodruffw" createdAt="2025/04/22 19:37:47" color="#785bff">}}




{{<matomeQuote body="RIIRって「Rewrite It In Rust（Rustで書き直せ）」って意味だよ。（文脈でわかるかもだけど一応）" userName="chrisweekly" createdAt="2025/04/22 21:12:44" color="">}}




{{<matomeQuote body="わからんかった、ありがと" userName="j16sdiz" createdAt="2025/04/23 04:44:58" color="">}}




{{<matomeQuote body="Homebrewが素晴らしいのはインフラだけじゃないんだ。CIのバグで困ってた時、チームからリアルタイムで助けてもらったのがマジでありがたかった。地味なメンテ作業こそが特別なんだよね。バックエンド部分をもっと自動化して、CI実行前にローカルでバグを見つけられたりすると良いな。" userName="xiphias2" createdAt="2025/04/22 20:57:05" color="#ff33a1">}}




{{<matomeQuote body="「チームから受けたヘルプ」って意味？年月を経て何か変わってそう言わせてるのかな？" userName="KolenCh" createdAt="2025/04/23 01:51:47" color="">}}




{{<matomeQuote body="誰かの体験を否定して、何が変わってそう感じたのか聞くのは失礼じゃない？" userName="saagarjha" createdAt="2025/04/23 04:47:33" color="">}}




{{<matomeQuote body="ダウンvoteしてる人は説明してくれない？HomebrewコミュニティはGitHub Issuesでのユーザー対応が悪いことで有名だけど、状況がどう変わったのか教えてほしい。" userName="KolenCh" createdAt="2025/04/23 17:05:47" color="">}}




{{<matomeQuote body="Homebrewが成功したのはrubyのおかげじゃなくて、バックエンドのパッケージングの使いやすさのおかげだと思うなー。MacPortsからHomebrewに乗り換えたのは、新しいバージョンのソフトが出た時に、すぐにbrewパッケージが更新されるから。MacPortsは遅れてたし、そもそもパッケージがないことも多かったし。" userName="fastball" createdAt="2025/04/23 01:24:44" color="#ff33a1">}}




{{<matomeQuote body="Homebrewが上手くいってるのは、コミュニティの規模もそうだけど、自動アップデートの仕組みを色々用意してるからじゃないかな？ GitHub releaseのチェックとか、ページスクレイピングとか、他のFormulaeへのリンクとか。MacPortsやSapphireも同じ戦略を取ればいいのにね。" userName="mdaniel" createdAt="2025/04/23 02:42:47" color="">}}




{{<matomeQuote body="Homebrewが始まった頃はMacPortsよりコミュニティ小さかったんだよ。今Homebrewが強いのは、自動アップデートの仕組みと、それによって育ったコミュニティのおかげ。MacPortsやSapphireも同じことができるけど、Homebrewが既にやってることをやるメリットって何？言語が重要じゃないなら、Rustで書き直しても意味ないじゃん。Sapphireは「BrewをRustで書き直しただけ」に見える。" userName="fastball" createdAt="2025/04/23 03:00:26" color="">}}




{{<matomeQuote body="MacPortsも同じような”livechecks”機能はあるよ。ただ、それを定期的にやってる人が少ないだけ。" userName="saagarjha" createdAt="2025/04/23 04:48:35" color="">}}




{{<matomeQuote body="MacPortsはシステムからの分離が〜とかunixyで〜とか聞いて２回試したけど、毎回壊れた。アンインストールは簡単だったけどね。Homebrewは壊れたことないな。パッケージが動かないことはあっても、システム自体が壊れることはなかったし、簡単に元に戻せた。brewup aliasが失敗したことないし。" userName="EasyMark" createdAt="2025/04/26 16:39:59" color="#ff33a1">}}




{{<matomeQuote body="ほんとそれ。RubyはFormula DSLがあるから良い選択だと思う。DXの話になるけど、言語そのものの話ではないよね。" userName="woodruffw" createdAt="2025/04/23 02:09:45" color="#ff5c5c">}}




{{<matomeQuote body="Rubyはいつもコードベースにいるなら最高だけど、一般的には発見性が低いんだよね。何を書けばいいかわからないし、シンボルがどこから来たのかもわかりにくい。LSPとかRubymineとかあるけど、気軽にコントリビュートするのは難しいかもね。" userName="mdaniel" createdAt="2025/04/23 02:45:51" color="">}}




{{<matomeQuote body="Rubyを好きになろうと毎日使ってるけど、RoRのdev experienceの良いところは、仕事があることと、全部自分で書いたなら最高ってことくらいかな。" userName="kusokurae" createdAt="2025/04/25 15:38:52" color="">}}




{{<matomeQuote body="ボトルとかDMGの並列ダウンロードは、Homebrewのアーキテクチャの問題じゃなくて、ダウンロード元のサービスへの配慮のために、速度を犠牲にしてるってことだよね。でも、大量のトラフィックを送ってるんだから、いつダウンロードしても変わらないと思うよ。データの総量だけが問題で、並列処理とは関係ないはず。" userName="IshKebab" createdAt="2025/04/22 20:29:12" color="">}}




{{<matomeQuote body="Homebrewのトラフィックは均一じゃないんだよ。パッケージのアップデートが出ると、MDM管理のHomebrewや、cronjobs、CI/CDシステムとかで一気にダウンロードされるから、スパイクが発生する。GitHub PackagesはCDNがあるからマシだけど、Casksは個人のサーバーにあることが多いから、影響が大きいんだ。" userName="woodruffw" createdAt="2025/04/22 20:35:12" color="">}}




{{<matomeQuote body="GitHubとかS3をホワイトリストに入れて、ヒューリスティクスに基づいて賢く並列化できたら良くない？" userName="internetter" createdAt="2025/04/23 04:15:09" color="">}}




{{<matomeQuote body="数年前に聞いたんだけど、brewのメンテナーが「大規模な並列化はGitHubに負荷をかける。なぜなら私はGitHubで働いているから」って言ってたよ。" userName="SonOfLilit" createdAt="2025/04/23 06:13:04" color="">}}




{{<matomeQuote body="それって「面倒くさいからやりたくないけど、そう認めたくないから技術的な理由をつけてる」言い訳に聞こえるな。深夜にスパイクが問題なら、深夜だけ自動で並列ダウンロードを無効にすればいいじゃん。またはターミナルで実行してる時だけ使うとか。GitHubにとって大した問題だとは思えないけど。" userName="IshKebab" createdAt="2025/04/23 07:12:59" color="#ff33a1">}}




{{<matomeQuote body="もっと好意的な理由を考えられない？Homebrewがパフォーマンス向上に興味がないなんて信じられないよ。それは常に議論されてるし、ユーザーからの要望も多いんだ。（深夜やターミナルだけじゃないし、GitHubだけじゃないのもそう。）" userName="woodruffw" createdAt="2025/04/23 12:31:17" color="">}}




{{<matomeQuote body="誤解しないで欲しいんだけど、「めんどくさいし、複雑なことに対処したくない」ってのは全くもって正当な理由だと思うよ。私もやりたくないことたくさんあるし。ただ、「やるべきじゃない」ってのは本当の理由じゃないと思うんだよね。そっちの方が強く聞こえるからそう言いたくなるんだろうけど、自覚してない人もいると思う。" userName="IshKebab" createdAt="2025/04/23 16:41:47" color="#45d325">}}




{{<matomeQuote body="（このスレッドではGitHubだけの話をしてるんだよ。GitHubだけ並列化を有効にすることについてね。ターミナルの提案は「CIではシングルスレッドを維持する」って意味だよ）" userName="SonOfLilit" createdAt="2025/04/23 15:23:22" color="">}}




{{<matomeQuote body="なるほどね。GitHubの場合でも問題は残るけど、程度は小さいよね。「誰にとっても同じ体験」を実現しようとすると、こういう複雑化は避けられない。CIでシングルスレッドにすると、ローカルインストールがすごく速いのにCIが遅いってユーザーに説明するのが難しいんだよね。お金もかかるし！それに、ミラーとか、GitHub以外のダウンロード元を含むグループとかの話もややこしくなる。\n不可能だって言ってるわけじゃないよ。別のスレッドでリンクされてるように、積極的に取り組んでいることなんだ。でも、「並列化すればいいじゃん、なんでやらないんだ、バカなの、怠け者なの」みたいな反応が、文脈を理解してないし、思いやりがないって思ってもらえたら嬉しいな。" userName="woodruffw" createdAt="2025/04/23 16:10:17" color="">}}




{{<matomeQuote body="brewの開発者がバカとか怠け者だとは思わないよ（文句言ってる人たちにツールが人気があることからもわかるように）。\nただ、「他のパッケージマネージャーはみんな解決してる」ってヒューリスティックに基づいて、この件に関しては間違ってるんじゃないかなって疑ってる。でも、簡単な問題じゃないのは間違いない。\n個人的には、PRを送るって提案して「受け付けないよ、考えてないわけじゃない、うちの立場からすると悪いアイデアなんだ」って返事が来たから、もう関わらないことにした。彼らが間違ってるかもしれないし、間違ってないかもしれない。でも、私はほぼ何も知らないから、私が間違ってるのは確かだね。" userName="SonOfLilit" createdAt="2025/04/24 05:24:54" color="#ff5733">}}




{{<matomeQuote body="面白そうなプロジェクトだね、ナイスワーク！\nHomebrewの用語は使わないでほしいな。formulaとかkegとかcaskとかcellarとかtapとかbottleとか、何が何だかさっぱりわからん。packageとかrepositoryとか、標準的な用語を使ってくれよ。ビール醸造の用語も、ビール醸造とパッケージ管理の類似点も知らないし、ツールがそれを求めてくるのは勘弁してほしい。" userName="mort96" createdAt="2025/04/22 19:29:17" color="#38d3d3">}}




{{<matomeQuote body="Homebrewの用語はやめてくれ！独特な名前がマジで苦痛なんだ。2010年なら可愛かったかもしれないけど、それ以来ずっとイライラしてる。\nあんな可愛こぶった名前覚えたくないんだよ。名前だけで何をするものなのか教えてくれ。" userName="Philpax" createdAt="2025/04/22 20:39:48" color="#ff33a1">}}




{{<matomeQuote body="RustでウェブサーバーにAxumを選んだ理由の一つが、Rocketの余計な間接層が嫌だったから。fairingsのインストールとかrocketsの打ち上げとか、ignitionがliftoffとどう違うのかとか、考えるのめんどくせー。名前はシンプルイズベスト。" userName="mort96" createdAt="2025/04/22 20:53:20" color="#38d3d3">}}




{{<matomeQuote body="別に退屈な名前が好きってわけじゃないんだよね。どっちかっていうと、説明的な名前がいい。caskとかtapとかbottleが何なのか調べる暇があったら、さっさと問題を解決したい。" userName="kergonath" createdAt="2025/04/22 22:16:29" color="#ff5733">}}




{{<matomeQuote body="Löve（luaのグラフィック/ゲーム用）は昔、名前が全部sex関連だったんだよね（SECS、LUBE、COCKとか）。プロジェクト名と機能が全然関係なくて。最近はマシになったけど、古い名前がコードとかドキュメントに残ってたり、フォーラムの古い投稿で出てきたりする。" userName="philsnow" createdAt="2025/04/23 16:28:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="たぶん用語は変えると思うよ。最初はbrewを理解するより、そのままの方が楽だったんだよねー（少なくとも俺にとっては）。brewはマジで巨大プロジェクトだし。" userName="alexykn" createdAt="2025/04/22 19:57:08" color="">}}




{{<matomeQuote body="謙虚でいいね！Homebrewの用語が不適切でわかりにくいのはマジ同意。まずは内部構造をしっかり作って、それから慎重にAPIを調整するのが正解だと思う。" userName="moritzwarhier" createdAt="2025/04/22 20:16:04" color="#38d3d3">}}




{{<matomeQuote body="ベテランのホームブルワーだけど、ビールの知識があっても全然わかんねー。なんでDockerをCaskからインストールする必要があるんだ？MacではCaskはMacパッケージ（DMGとかPKGとか）のことらしいけど、ただのビール風味の用語じゃん。Windowsレジストリがミツバチ/ハチの巣のメタファーを使ってるのと同じくらい意味不明。" userName="QuercusMax" createdAt="2025/04/22 20:39:14" color="#ff5c5c">}}




{{<matomeQuote body="それ、俺もよくわかんなかった。でも、名前をつける必要性には同情するよ。もし、誰が見てもわかる名前があったら、とっくにそれ使ってるって。" userName="Lammy" createdAt="2025/04/22 20:54:20" color="">}}




{{<matomeQuote body="確かにね。でも、”cask”より説明的な名前があるはずじゃん！" userName="Philpax" createdAt="2025/04/23 00:04:33" color="#ff33a1">}}




{{<matomeQuote body="新しい用語のいいところは、既存の用語と意味が被らないことだよね。それに、なんでそんなに面白味をなくしたいんだよ？" userName="chuckadams" createdAt="2025/04/23 14:27:56" color="">}}




{{<matomeQuote body="A HIVEってレジストリの中で意味不明な名前だよね。他はキーとかサブキーとか値なのに。まあ、レジストリは30年くらいあるし、Windowsユーザーにはおなじみの用語だけど。昔からあった用語を基にしてないんだよね。Homebrewはプロジェクト名から適当に用語を作っただけじゃん。Microsoftも変な名前つけるの好きだけどね。" userName="p_ing" createdAt="2025/04/23 01:52:49" color="">}}




{{<matomeQuote body="マジそれ！Homebrewの用語、マジで意味不明でイライラする！tapとかinstallとかマジ勘弁。バイナリとかmacOSパッケージとか呼んでくれよ。そういう言葉も専門用語だけど、他のソフトウェアでも使える概念じゃん。" userName="atonse" createdAt="2025/04/22 22:47:03" color="#ff33a1">}}




{{<matomeQuote body="わかる。Homebrewって全体的に使いにくいんだよね。コンパイルされたバイナリの一覧と、場所とバージョンが知りたいだけなのに。" userName="seumars" createdAt="2025/04/22 19:56:07" color="#ff5733">}}




{{<matomeQuote body="`brew ls --versions`と`brew list | xargs brew list`で全部わかるじゃん。" userName="meesles" createdAt="2025/04/22 23:20:10" color="">}}




{{<matomeQuote body="いやいや、必要でしょ。caskがkeg-onlyとか、リポジトリ追加する時にcellarをtapするとか、Homebrewが何を言ってるのか理解できないと困るんだよ。ドキュメントとか--helpの出力も、ビール醸造の用語ばっかりで、普通のパッケージ管理用語じゃないし。" userName="mort96" createdAt="2025/04/22 20:08:02" color="#ff33a1">}}




{{<matomeQuote body="なんか笑っちゃった。これ作る時マジ苦労したんだよね、最初意味不明すぎて。/opt/sapphire/caveとか、opt/sapphire/coveとか、opt/sapphire/quarryとかにしようかな、自分のやつはw" userName="alexykn" createdAt="2025/04/22 20:39:24" color="">}}




{{<matomeQuote body="こういう用語って面白いと思うけどな。99%の操作では知らなくてもいいし、formulaを作る時くらいしか必要ないし。なんでエンジニアってこんなに文句言うの？楽しいプロジェクトじゃん？全部マジメにする必要ある？" userName="tekknik" createdAt="2025/04/25 15:44:46" color="">}}




{{<matomeQuote body="同意だけど、用語の「標準」ってある？repoはgit repoのことだと思うけど、packageとかlibraryとかmoduleって、言語によって使い方が違う気がする。" userName="ks2048" createdAt="2025/04/23 01:15:29" color="#45d325">}}




{{<matomeQuote body="macportsユーザーだったけど、新しいプロジェクトがHomebrewに移行したから乗り換えたんだよね。formulaとか書きやすいし。でもHomebrew自体は好きじゃないんだ。brewのインフラ上に新しいパッケージマネージャーを作っても良くならないと思うな。caskとかformulaってDSLだけ使ってるのか、カスタムのruby関数とかも使ってるのか知らないけど、新しいツールは互換性のためrubyスクリプトを実行する必要があるかもね。" userName="larusso" createdAt="2025/04/22 19:16:35" color="">}}




{{<matomeQuote body="macportsマジ好きだったんだよねー。プロジェクトごとに新しいユーザーアカウント作りたかったんだけど、homebrewの権限周りでハマっちゃってさ。sudo打つの全然苦じゃないし。" userName="skydhash" createdAt="2025/04/22 22:03:35" color="">}}




{{<matomeQuote body="最近のMacPortsどうなってんの？インストールしたいパッケージが信じられないくらい壊れてたり、古かったりするんだけど。Finkから乗り換えてからそんなことなかったのに。AppleがMacPortsを内部で使っててリソースも投入してたけど、もうやめたのかな？" userName="tannhaeuser" createdAt="2025/04/23 04:16:19" color="">}}




{{<matomeQuote body="しばらく使ってないなー。一時期nix packagesに乗り換えて満足してたんだよね。brewとも一緒に使えたんだけど、共有のLinux環境でglibcの問題が解決できなくて。今はLinuxでnixos使ってて、macOSでもflakesでnix試したけど、まだ完全移行はできてないかな。" userName="larusso" createdAt="2025/04/23 15:01:05" color="">}}




{{<matomeQuote body="良いパッケージマネージャーの定義のほとんどを満たしてるのに、なんでそのプロジェクト嫌いなの？例えば、インストールが簡単とか、アップデートがすぐできるとか以外に、パッケージマネージャーに何を求めてるの？" userName="fastball" createdAt="2025/04/23 03:14:46" color="">}}




{{<matomeQuote body="macportsの方がパッケージがキレイだったんだよね。macportsは独自のベースライブラリを作って、パッケージがmacOSのシステムライブラリに依存しないようにしてたから、brewみたいにシステムアップデートで壊れることがなかったんだよ。ただ、インストールとコンパイルに時間がかかったんだよね。ボトルがまだなかった頃の話だけど。Brewは速いけど不安定。個人的には劣ったプロジェクトが勝ったと思う。でもbrewも年々改善してるよね。brewプロジェクトがmacportsと比較して、ベースライブラリをリコンパイルしないから速いって言ってたのを覚えてる。それが良くないって気づいたんだよね。今はパッケージがOSバージョンごとに分かれてるし、macOSのバージョンによって違うボトルが提供されてる。あと、複数ユーザーでパッケージをインストールできたんだよね。brewは/usr/local/binとかをユーザーごとに管理するから、複数ユーザーのシステム管理が大変だった。macportsはsudoが必要だったけど、他のパッケージマネージャーと同じだった。sudoなしってのが普及のきっかけだったんだよね。今はセキュリティリスクかもしれないけど。" userName="larusso" createdAt="2025/04/23 03:51:43" color="#45d325">}}




{{<matomeQuote body="macportsもバイナリをダウンロードできるようになったから、ローカルでコンパイルする必要なくなったんだよね。だから速度の問題はなくなったんだけど、Homebrewが先に広まっちゃったんだよね。" userName="pasc1878" createdAt="2025/04/23 08:49:33" color="#ff5c5c">}}




{{<matomeQuote body="パッケージのインストールとかアップデートのUXが良いのが欲しいんだよね。インストールしたい小さいものがPythonのメジャーバージョンをアップデートしようとするのが嫌なんだよ。" userName="sofixa" createdAt="2025/04/23 05:17:03" color="">}}




{{<matomeQuote body="メンテナーがオプトアウトできない分析機能とか、強制的な自動アップデートとか、ユーザーに優しくないことをやってきた過去があるんだよね。" userName="dur-randir" createdAt="2025/04/23 10:21:39" color="">}}




{{<matomeQuote body="提案：READMEにGoals/Motivation/Rationaleのセクションを作って。Homebrewの何が問題で、それをどう解決しようとしてるのか？なんでHomebrewじゃなくてこのツールをインストールして試すべきなのかを書いて。" userName="ARandomerDude" createdAt="2025/04/22 21:39:09" color="#785bff">}}




{{<matomeQuote body="Homebrewには改善の余地があるのは確かだし、より良いものに置き換えようとする努力は素晴らしいと思う。でも、Homebrewの問題はコードベースそのものじゃないんだよね。Homebrewの開発者やパッケージャーが、Debianで言うところの”unstable”なディストリビューションを作ろうとしてるように見えるのが嫌なんだよね。Homebrewの開発者を責めるつもりはないけど。自分はもう自分のコンピュータをメンテする時間がないから、自分が書いたソフトウェアを直すだけで手一杯なんだよ。" userName="selkin" createdAt="2025/04/22 20:12:25" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
