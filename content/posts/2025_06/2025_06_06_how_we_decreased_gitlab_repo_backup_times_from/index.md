+++
date = '2025-06-06T00:00:00'
months = '2025/06'
draft = false
title = 'GitLabリポジトリのバックアップ、48時間が41分になった方法！'
tags = ["GitLab", "バックアップ", "パフォーマンス改善", "Git", "エンジニアリング"]
featureimage = 'thumbnails/purple5.jpg'
+++

> GitLabリポジトリのバックアップ、48時間が41分になった方法！

引用元：[https://news.ycombinator.com/item?id=44201975](https://news.ycombinator.com/item?id=44201975)




{{<matomeQuote body="GitLabがGitに貢献したパフォーマンス改善は、v2.50.0でリリースされる予定だよ！<br>詳しくはこちらを見てね→https://github.com/git/git/commit/bb74c0abbc31da35be52999569..." userName="divbzero" createdAt="2025/06/06 17:41:46" color="#38d3d3">}}




{{<matomeQuote body="GitLabがGit本家で頑張ってるのいいね！もしかしてGitの主要な貢献者ってGitLab社員が多い感じ？" userName="Nemo_bis" createdAt="2025/06/07 21:19:27" color="">}}




{{<matomeQuote body="どうしてそう思ったの？過去2年のトップ4貢献者を見るとね、Googleに1人(gitster)、GitHubに2人、GitLabに1人(pks-t)だよ。[1]を見てみて！<br>[1]: https://github.com/git/git/graphs/contributors?from=6%2F3%2F..." userName="dfc" createdAt="2025/06/07 21:59:04" color="#785bff">}}




{{<matomeQuote body="あー、月間の活動を見てたんだ。確かに、もっと長い期間で見ると全然違うね。教えてくれてありがとう。" userName="Nemo_bis" createdAt="2025/06/08 07:38:42" color="">}}




{{<matomeQuote body="あれ、不思議だな。私も月間を見たけどGitLabの人は見当たらなかったんだよね。ひょっとして、別のGitリポジトリでも見てたんじゃない？" userName="dfc" createdAt="2025/06/08 20:14:56" color="">}}




{{<matomeQuote body="記事を書いた者だけどさ、最近GitLabにはGit専門のチームができたんだ[1]。だから、Gitへの貢献はこれからもっともっと増えると思うよ！:)<br>[1]: https://handbook.gitlab.com/handbook/engineering/infrastruct..." userName="nayak" createdAt="2025/06/09 08:25:52" color="#45d325">}}




{{<matomeQuote body="経験上、コードにあるO(n^2)の処理を無くすのは常に正しい判断だったよ。別に難しいアルゴリズムを書くわけじゃないけど、nが小さくても問題になるからいつも驚かされる。" userName="LgWoodenBadger" createdAt="2025/06/06 16:52:38" color="#785bff">}}




{{<matomeQuote body="Bruce Dawsonがね、こう言ってるんだ。「これをDawsonの第一法則って呼びたいね。O(n^2)は、ダメなスケールするアルゴリズムの『ちょうどいい落としどころ』なんだ。本番投入できるくらい速いけど、データが増えるとすぐにダメになる。」<br>元の投稿はこちら→https://bsky.app/profile/randomascii.bsky.social/post/3lk4c6..." userName="EdwardCoffin" createdAt="2025/06/06 19:21:26" color="#38d3d3">}}




{{<matomeQuote body="面接でO(n^2)より遅い、もうヤバすぎる二つの解法を同じレベルで語るっていう「間違い」を犯したんだよね。私が言いたかったのはDawsonの法則みたいな意味で、どっちも議論する価値もないくらい馬鹿げてるってこと！" userName="hinkley" createdAt="2025/06/06 20:58:25" color="">}}




{{<matomeQuote body="まあ、そんな馬鹿げた方法でも、それよりマシな解決策が他に一つも存在しないなら、アリなのかもしれないけどね。" userName="dieortin" createdAt="2025/06/06 21:48:08" color="">}}




{{<matomeQuote body="絶対ダメだね。何かをするコストが二次（O(n^2)）を超えるなら、やるべきじゃないんだ。顧客とのやり取りごとにコストが増える一方で、その増え方に対応できないからね。金を穴に埋めて火をつけてるようなもんだ。うまくできないならやめるか、直す見込みがないなら外部に任せるべきだよ。" userName="hinkley" createdAt="2025/06/07 03:47:22" color="#38d3d3">}}




{{<matomeQuote body="（誰かの）第二法則は、O(n * log n)は実際的にはO(n)と同じくらいだ、って話だよ。" userName="paulddraper" createdAt="2025/06/06 20:07:18" color="">}}




{{<matomeQuote body="はっきり言うと、それは彼の第二法則じゃないよ、少なくとも2ヶ月前時点ではね。このリンク（https://bsky.app/profile/randomascii.bsky.social/post/3lk4c6...）によると違うらしいから。" userName="EdwardCoffin" createdAt="2025/06/06 20:10:33" color="">}}




{{<matomeQuote body="まあフェアだけど、俺の頭の中では`n log n`が歴史的な「安心して夜眠れる」レベルなんだ。大学でデータ構造を習った時、先生がしょっちゅう言ってたからね。「メモリはCPUよりずっと安い」って賢い言葉もね。毎回20〜100MBのJsonをパースするより、メモリに構造体としてキャッシュする方がよっぽど効率いいのにって思うこと、結構あるんだ。" userName="to11mtm" createdAt="2025/06/06 20:51:40" color="#45d325">}}




{{<matomeQuote body="最近のPCは小さいメモリブロックを繰り返しスキャンするのが得意だから、小さいNならマップ使うよりn^2が速いこともあるんだ。Blinkでn^2を直すのに時間かけたけど、面白い発見もあったよ。例えば、:nth-childマッチングは、兄弟が多いとn^2スキャンで遅いけど、少ない場合はキャッシュのオーバーヘッドの方がn^2より悪かったりする。線形探索が定数時間のマップより速いとか、n^2が洗練されたアルゴリズムより良いとか、意外な場所でそうなるんだよね。メモリの遅延とか命令のタイミングが、現実世界のアルゴリズムの落とし穴だったりするわけ。<br>https://source.chromium.org/chromium/chromium/src/+/main:thi..." userName="esprehn" createdAt="2025/06/07 01:45:05" color="#45d325">}}




{{<matomeQuote body="俺の経験則で問題の80〜90％はね、複雑なアルゴリズムが必要なら、それはデータモデルが間違ってるってことだと思うんだ。もちろん、コンパイラとかDBの内部とか経路探索とか、そういうのは複雑なのいるけど、まあ少数派だよね。" userName="parthdesai" createdAt="2025/06/06 17:01:00" color="#785bff">}}




{{<matomeQuote body="滅多にないけど、たまにバグがないのが明らかなn log nのアルゴリズムを、見た感じバグがないO(n)のアルゴリズムより選ぶことがあるよ。壊れにくさの方が数パーセント以上の価値があるんだ。特にそれが他の（時間）複雑さを見つけやすくしてくれるならね。" userName="hinkley" createdAt="2025/06/06 21:01:18" color="#ff5c5c">}}




{{<matomeQuote body="俺から言わせりゃ数パーセントどころじゃないと思うけどね。:)<br>でも俺はこの分野にそこまで詳しくないから、O(n)を実装・検証するのが何年も泣きと苦労の連続だったのかどうかは分からないんだけど。<br>表はNが5から100までのnとn log nを比較してるね。" userName="SAI_Peregrinus" createdAt="2025/06/06 18:47:23" color="">}}




{{<matomeQuote body="Nが10くらい未満で、ハードウェアに制約されるもの（例えばOBDIIコネクタにあるCANインターフェースの数とか）を数える場合は、O(n^2)でもいい例外だと思うね。なぜなら、Nを増やすには物理的にハードウェアを交換しなきゃいけないからさ。でも、そうじゃない場合は、絶対O(n^2)の操作は避けるべきだよ。たとえそうでも、Nが大きくなりすぎたら明示的に失敗させる、ってことも慎重に検討すべきだね。" userName="refulgentis" createdAt="2025/06/07 02:25:30" color="#ff5733">}}




{{<matomeQuote body="＞Nが大きすぎたら明示的に失敗させる<br>それが問題なんだよ。こういう二次時間のアルゴリズムの多くは、制限を設定してないんだよね。階乗(n!)だって小さい’n’ならいいけど、本番のユースケースじゃ’n’は小さくないからね。" userName="echelon" createdAt="2025/06/06 19:33:30" color="#ff5c5c">}}




{{<matomeQuote body="現代のNeural Network AIってさ、GEMMっていうO(n^2)の計算が基本なんだ。O(n^3)より速いやつもあるらしいけど、キャッシュのせいで実際には速くならないみたい。あと、nって大体”customers”とかと関係ないから、nが増えなきゃ計算量とかあんま気にしなくていいんだよ。" userName="delusional" createdAt="2025/06/07 05:26:26" color="">}}




{{<matomeQuote body="これ、そんな難しいアルゴリズムじゃないよ。Pythonだと、重複なくすならいつもhash map（dictionary）かhash set使うのが一番簡単だしコードも少なくて済む。でもCだと違くて、hash mapよりarraysとnested loopsの方が全然書きやすいんだよね。" userName="anttihaapala" createdAt="2025/06/06 18:53:46" color="">}}




{{<matomeQuote body="＞ where linear search beats constant time maps<br>ってとこ、例を挙げてくれない？記事は良かったけど、そこだけちょっと信じられないんだ。実際のwall clock timesとかreal world impactとかも見たかったな。" userName="throwaway2037" createdAt="2025/06/07 02:47:41" color="">}}




{{<matomeQuote body="Good call. O(N^2)ってマジ最悪のtime complexityだよ。testing環境だと一瞬なのに、prod環境だとexplodeするくらいslowになるんだ。こういうのseveral times前に見たことあるし、exactly what happened hereだと思ったよ。" userName="koala_man" createdAt="2025/06/06 18:18:35" color="#ff5733">}}




{{<matomeQuote body="I feel this is too hardline and e.g. eliminiates the useful things people do with SAT solvers." userName="endgame" createdAt="2025/06/07 08:30:47" color="">}}




{{<matomeQuote body="Skiena has a great table in his algorithms book mapping time complexity to hypothetical times for different input sizes.<br>For n of 10^9, where lgn takes 0.03 us and n takes 1 s, nlgn takes 29.9 s and n^2 takes 31.7 years." userName="sn9" createdAt="2025/06/06 23:31:13" color="#ff5c5c">}}




{{<matomeQuote body="The GEMM is O(n^3) actually. Transformersはquadratic in the size of their context window." userName="saagarjha" createdAt="2025/06/07 11:04:48" color="">}}




{{<matomeQuote body="We just had this exact problem. Tests ran great, production slowed to a crawl." userName="david422" createdAt="2025/06/06 21:03:24" color="#38d3d3">}}




{{<matomeQuote body="I read that as a typo given the next sentence.<br>I’m on the fence about cubic time. I was mostly thinking of exponential and factorial problems. I think some very clever people can make cubic work despite my warnings. But most of us shouldn’t. General advice is to be ignored by masters when appropriate. That’s also the story arc of about half of kung fu movies.<br>Did chess solvers really progress much before there was a cubic approximation?" userName="hinkley" createdAt="2025/06/07 17:25:50" color="">}}




{{<matomeQuote body="＞ That is not the case in C though, as it is much easier to use arrays and nested loops instead of hash maps.<br>I am confused. There are plenty of open source, fast hash map impls in C." userName="throwaway2037" createdAt="2025/06/07 02:49:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="アルゴリズムの速さは定数とかnの値で変わるんだよ。もしO(n log n)の定数がO(n)の5倍なら、nが100以下ならO(n)の方が速いんだ。もしnが常に100以下って分かってるなら、両方のアルゴリズムを書いたり、いつ切り替えるか探す時間を使うより、O(n)だけ実装して、nが250とかになったら警告出す方がいいかもね（1000超えたらエラーとか）。" userName="Someone" createdAt="2025/06/08 13:24:40" color="">}}




{{<matomeQuote body="チェスエンジンは二次関数よりひどいスケーリングに直面したけど、乗り越えてきたんだよね。ソフトウェアってマジで色んな分野があって、制約も全然違うんだ。" userName="Retric" createdAt="2025/06/07 04:25:22" color="">}}




{{<matomeQuote body="でも、定数（C）が十分に大きければ、どの解決策が利益を出すか変わってくることもあるんだ。" userName="hinkley" createdAt="2025/06/06 20:59:10" color="">}}




{{<matomeQuote body="N^3の処理がボトルネックになってて、1万要素なのにめっちゃ遅いんだ。どうしたらいいか分からないや。" userName="vlovich123" createdAt="2025/06/06 23:02:33" color="">}}




{{<matomeQuote body="クールな発見だけど、記事は10分の1くらいの長さで十分伝わったよね。少なくともビデオじゃなかったのは良かった！おかげで重要な詳細だけざっと読めたし。" userName="SoftTalker" createdAt="2025/06/06 18:27:26" color="">}}




{{<matomeQuote body="複数の人が同じことに気づいてるのが面白いね。私にとって、この記事はこう書けば十分だったかも：<br>“GitLabのリポジトリバックアップに48時間かかってた大きな原因は、`git bundle create`の中の、コマンドライン引数で渡された参照の重複をチェックする関数だったんだ。このチェックにネストされたforループ（O(N2)）があって、これをMapデータ構造に変えてGit本家に修正パッチを送ったんだ。パッチは採用されたけど、次のGitバージョンを待たずに修正をバックポートしたら、バックアップ時間が41分になったよ。”" userName="hliyan" createdAt="2025/06/07 14:50:50" color="#ff33a1">}}




{{<matomeQuote body="それは「Impact」スタイルの技術文書だね。問題と規模を強調して、ソリューションをビジネスや顧客成功の視点で見せるやり方。寛大に見れば、チームや個人のビジネス価値を示すためで、昇進とかにつながる。でも、確かにこのスタイルは読むのがイライラすることもあるね。" userName="m104" createdAt="2025/06/07 19:44:21" color="#45d325">}}




{{<matomeQuote body="そうそう。記事全部読んでさ、これLLMが書いたんじゃない？って思ったんだよね。文体がLLMっぽいんだもん。" userName="kokada" createdAt="2025/06/06 20:40:31" color="">}}




{{<matomeQuote body="彼らはエムダッシュを取りに来た時、俺は黙っていた。そして箇条書きを取りに来た時も、俺は黙っていた…" userName="jorvi" createdAt="2025/06/07 13:55:27" color="">}}




{{<matomeQuote body="俺だけじゃなくてよかった！あとさ、技術記事なのにコードスニペットがないのが残念。コード見せてくれよ。ChatGPTのせいで箇条書きが台無し…正直、この記事書くのに数分だろ？LLMでダメにするなよ。文法チェックとかに使えばいいじゃん。" userName="jaygreco" createdAt="2025/06/07 04:44:57" color="">}}




{{<matomeQuote body="まさに俺も同じこと思った。もっと短い文章なら、記事の読む体験は絶対によくなったはず。" userName="djdeutschebahn" createdAt="2025/06/07 14:37:09" color="">}}




{{<matomeQuote body="まだ記事読んでない人へ。フレイムグラフまでスクロールして、修正をバックポートする話が始まるとこまで読め。そこでストップ。" userName="davidron" createdAt="2025/06/07 00:21:21" color="#ff33a1">}}




{{<matomeQuote body="”GitLabリポジトリのバックアップ、48時間が41分になった方法！”を読む時間を4.8分から41秒に減らす方法" userName="wgjordan" createdAt="2025/06/07 02:43:15" color="">}}




{{<matomeQuote body="もっと長くてもよかったな。なんで彼らが2つの参照（refs）でバックアップバンドルを作ってたのか、いまだに分からないんだよね :)" userName="1oooqooq" createdAt="2025/06/06 21:33:38" color="">}}




{{<matomeQuote body="修正を見るとね、パフォーマンスが悪かったのは、デデュープ処理が参照が多い全部のケースで走ってたからみたいだよ。修正内容はこのリンク見てね→https://github.com/git/git/commit/bb74c0abbc31da35be52999569..." userName="6LLvveMx2koXfwn" createdAt="2025/06/07 03:22:18" color="#ff5c5c">}}




{{<matomeQuote body="でもさ、実際バックアップする前にさ、コマンドラインで参照をデデュープできなかったのかな？参照なんてブランチごとにせいぜい数百個くらいでしょ？" userName="rjmunro" createdAt="2025/06/07 18:21:52" color="">}}




{{<matomeQuote body="要するに、パフォーマンスが悪かったのは重複の数じゃなくて、参照の数が多かったのが原因だったんだよ。" userName="6LLvveMx2koXfwn" createdAt="2025/06/08 14:14:13" color="#ff33a1">}}




{{<matomeQuote body="そうそう！GitLabのリポジトリの中にはね、何百万もの参照があるところもあるんだよ。" userName="nayak" createdAt="2025/06/09 08:28:13" color="#45d325">}}




{{<matomeQuote body="Gitのフォルダ圧縮に48時間はありえないよ、数GBなのに！41分でも長い気がするな。<br>Git bundleじゃなくて、スナップショットとアーカイブじゃダメなの？ZFSのバックアップと比べてGit bundleって何がいいの？" userName="Arcuru" createdAt="2025/06/06 17:03:04" color="#45d325">}}




{{<matomeQuote body="Gitの公式FAQによると、Gitの整合性チェックをバイパスするリスクがあるからバックアップは推奨されてるけど、安全な方法は載ってないんだって。個人的にはSyncthingとBtrfs snapshotsで十分いけるよ。ストレージとかネットワークと同じくらい速いし。https://git-scm.com/docs/gitfaq#_transfers" userName="bombela" createdAt="2025/06/06 17:20:30" color="#ff5c5c">}}




{{<matomeQuote body="俺はSyncthing使ったときに、初めてGitのリポジトリを壊しちゃったことがあるんだよね。" userName="nightfly" createdAt="2025/06/06 18:46:43" color="">}}




{{<matomeQuote body="Btrfs snapshotsってところがポイントだと思うんだ。直接.gitディレクトリを同期するのは危険だよね。Btrfs snapshotsなら、Gitの整合性が保たれた状態だけバックアップできるんじゃない？" userName="hobofan" createdAt="2025/06/06 19:16:12" color="#785bff">}}




{{<matomeQuote body="確かに俺のやり方はSyncthingを先に使って、それをBtrfsスナップショットでバックアップするっていう変なやり方だけどね。個人の範囲なら、同時に作業しない限り大丈夫。<br>Git fsckとかスナップショットとかSyncthingのバージョン管理、Gitの期限切れファイル削除でリカバリーできるし。10年で一度だけ壊したけど、すぐ直せたよ。" userName="bombela" createdAt="2025/06/06 19:31:24" color="#38d3d3">}}




{{<matomeQuote body="もしファイルシステムのスナップショットが安全じゃないってんなら、停電とかクラッシュしたときもGitは壊れるってこと？それってGitのバグじゃないの？" userName="ndriscoll" createdAt="2025/06/07 11:01:15" color="">}}




{{<matomeQuote body="ZFSスナップショットをS3みたいなZFSじゃないとこにオフサイトするのは難しいよね。でも、`git clone --bundle-uri`っていうあんまり知られてないGitの機能があるんだ。これはクライアントがbundleの場所指定したり、サーバーがクライアントにbundleの場所を教えて、クライアントがbundle取ってきて展開、それから差分をサーバーから取るっていうやり方。大きいリポジトリのクローンでサーバーの負担が軽くなるし、クライアントの初回クローンがめっちゃ速くなるよ。" userName="unsnap_biceps" createdAt="2025/06/06 17:29:27" color="#45d325">}}




{{<matomeQuote body="ZFSじゃないところにちゃんと一貫性のあるスナップショットバックアップ取りたいなら、スナップショットをクローンしてそこからrsyncするのが一番安全だと思うよ。これだと一手間かかるけど、スナップショットのアトミック性は保てるんだ。追記だけど、`.zfs`スナップショットディレクトリが有効になってるなら、そこからrsyncするのもありだよ。" userName="benlivengood" createdAt="2025/06/06 20:12:43" color="#ff5733">}}




{{<matomeQuote body="ZFSはファイルとか好きなものにパイプして送れるんだよ。インクリメンタル送信もできるし、送信側でブックマークに変換すれば、送った後に古い履歴データ残しておく必要もなくなるんだ。" userName="nightfly" createdAt="2025/06/06 18:48:37" color="">}}




{{<matomeQuote body="・・・ってことは、キャッシュされるべきものにキャッシュを追加しただけなの？<br>これってホントにみんながGitリポジトリを”バックアップ”するやり方なの？だってGitって分散バージョン管理システムでしょ。別のリポジトリに変更をミラーして、そっちでZFSとかスナップショットとかバックアップソフト使うようにすればいいんじゃないの？バージョン管理の情報は・・・分散させるべきでしょ？" userName="AtlasBarfed" createdAt="2025/06/06 20:37:49" color="">}}




{{<matomeQuote body="記事読んで全く同じこと思ったよ！ZFSだったらどれくらい時間かかるのかめっちゃ知りたいな。" userName="broken_broken_" createdAt="2025/06/07 10:17:34" color="">}}




{{<matomeQuote body="”アルゴリズム変更でバックアップ時間が指数関数的に短縮”って表現だけど、もしバックアップ時間がO(n^2)だったのがO(n^2 / 2^n)になったってこと？そんなわけないよね。" userName="hiddew" createdAt="2025/06/06 16:19:36" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これは”指数関数的”っていう言葉の正確な数学的な定義じゃなくて、口語的な意味で”めちゃくちゃ”ってことだよ。" userName="umanwizard" createdAt="2025/06/06 16:23:49" color="">}}




{{<matomeQuote body="正確な数学的意味を持つ単語を、まさに数学的表記を使って正確に話そうとしてる文章で使うべきじゃないし、読み手がその単語を正確な数学的な意味で解釈しないと思っちゃダメだよ。" userName="cvoss" createdAt="2025/06/06 18:23:00" color="">}}




{{<matomeQuote body="意味なくて非建設的な重箱の隅をつつくような行為だね。" userName="marcellus23" createdAt="2025/06/06 16:46:35" color="">}}




{{<matomeQuote body="ちょっと同意だけど、他にいい言葉ないかな？「二次関数的に」じゃパンチ効かないよね。" userName="blharr" createdAt="2025/06/06 19:22:24" color="">}}




{{<matomeQuote body="n^2のアルゴリズムをlog(n)のルックアップに置き換えたら指数関数的なスピードアップになる…わけないか。ハッシュマップは普通O(1)だから、それよりさらに速いんだけどね。" userName="csnweb" createdAt="2025/06/06 19:10:17" color="">}}




{{<matomeQuote body="普通の人間なら文脈でわかるって期待するならそうすべき。細かいことつつくのが大好きな、文脈わかるくせに揚げ足取るHN読者相手じゃなきゃね。" userName="IshKebab" createdAt="2025/06/06 19:25:20" color="">}}




{{<matomeQuote body="それ違うよ。n^C ＼ e^n = log(n) とかなら別だけど、そうじゃないから。log(n)と多項式の差は対数的であって、指数関数的じゃないんだ。" userName="ryao" createdAt="2025/06/06 22:40:47" color="">}}




{{<matomeQuote body="僕は反対だな。「指数関数的」の誤用はマジでイラつくポイント。嘘くさい文章でよくある「数学的に正確な表現を使って賢そうに見せる」ってやつの典型だよ。ここでは成長関数を指してる珍しいケースだし、正直な書き方（これも珍しい）だけど、それでも間違ってる。二次関数的とか二次関数vs線形って書くべきだったね。どっちにしても、だらしない言葉遣いはだらしない思考につながるんだよ。" userName="msgodel" createdAt="2025/06/06 17:21:46" color="#38d3d3">}}




{{<matomeQuote body="＼u003epedantry<br>指数関数的な削減を探して人生の2分を無駄にしたよ。他にもいっぱいいるでしょ。今もこうやってクソ投稿してさらに人生を無駄にしてるけど、それは意識的な選択だからマシかな。" userName="morepedantic" createdAt="2025/06/07 06:55:59" color="">}}




{{<matomeQuote body="修正した関数自体（6倍改善）ではアルゴリズムの複雑性は下がったけど、アルゴリズムをどう使ってたかって文脈では全体的な影響はずっと大きかった（1％になった）。これなら「指数関数的」って言ってもおかしくないかもね。実際の複雑性を計算するのは関係ないし、時間の無駄だよ。" userName="sn9" createdAt="2025/06/06 23:41:02" color="">}}




{{<matomeQuote body="最近、雑な書き方が桁違いに増えてる気がするね。" userName="keybored" createdAt="2025/06/06 19:06:15" color="">}}




{{<matomeQuote body="個人的に特にイラつくのは、「指数関数的に」っていう言葉をたった2つのデータポイント間の変化に使うことかな。君が言ってるやつの特定バージョンだね。「わかってないって言わずに、わかってないって言う方法」みたいな感じ。" userName="sneak" createdAt="2025/06/06 21:31:54" color="#785bff">}}




{{<matomeQuote body="君に返信してるOPじゃないけど、フェアに言えば、Big-Oの性能特性について話してて「アルゴリズム」って言葉まで使ってる文で、「指数関数的に」を日常的な意味で使うのは、絶対に最悪な言葉の選択だね。" userName="chrisweekly" createdAt="2025/06/06 17:00:58" color="">}}




{{<matomeQuote body="ああ、うん、だって”普通の人間”はO(n^2)の意味は知ってるけど、クソっ、exponentialは間違って使うんだもんな。" userName="globular-toast" createdAt="2025/06/07 07:25:29" color="">}}




{{<matomeQuote body="”言葉には意味がある”。これに同意できないなら、喋ったり書いたりすべきじゃないね、個人的には。違う意味の言葉が実際には等しいって主張する奴は、言語を扱う仕事なんてするべきじゃないよ。" userName="sneak" createdAt="2025/06/06 21:19:51" color="">}}




{{<matomeQuote body="それは”speedup”をランタイムを割ることだって考えるか、ランタイムに関数を適用することだって考えるかに依るよね。つまり、君はf(n) speedupがT(n)＼f(n)だって言ってるけど、他の人はf(T(n))かその変形だって言うだろうね。" userName="wasabi991011" createdAt="2025/06/07 00:05:11" color="">}}




{{<matomeQuote body="でも、たまたまn=2^cなら、logarithmic complexityのアルゴリズムはcしか時間かかんないんだ。だから計算量理論では通常、O(2^n)からO(n)みたいにexponential speedupって呼ばれるんだよ。もっと具体的に言えば、最初のアルゴリズムが1024秒かかるなら、二番目はどっちの場合もたった10秒だよ。だから、意味は通じると思うな。" userName="csnweb" createdAt="2025/06/06 23:54:57" color="#38d3d3">}}




{{<matomeQuote body="いやいや、君は読解力を高めるのに2分を費やしただけだよ。" userName="account42" createdAt="2025/06/10 08:30:36" color="">}}




{{<matomeQuote body="＞pedantic<br>`git bundle create`のアルゴリズムに関する記事の対象読者って誰だと思うんだよ？O(n^2)アルゴリズムがどういう風にexponentialに影響を与えてるのか理解しようと俺の人生の約2分を使ったよ。Exponentialはbig-Oと同じ文で太字になってた。50＼50で荒らしか筆者の見落としだね。" userName="morepedantic" createdAt="2025/06/07 06:45:34" color="#ff33a1">}}




{{<matomeQuote body="＞実際の計算量を理解するのは関係ないし経済的な時間の使い道じゃない<br>修正は入れ子ループをmapに置き換えることだったんだ。言葉の意味を知ってて、問題を特定して修正するくらい理解してるなら、これがO(n^2)からO(n)になる（バケット数みたいな詳細は別として）って理解するのはすぐできることだよ。" userName="ndriscoll" createdAt="2025/06/07 12:14:34" color="#ff5733">}}




{{<matomeQuote body="コンピュータサイエンスではbig O notationを簡略化するんだよ。これは標準的なやり方だからね。" userName="MyFedora" createdAt="2025/06/07 10:18:51" color="">}}




{{<matomeQuote body="もし技術的な意味じゃなく単に”すごく”って意味で言ってるだけなら、いっぱい言葉があるじゃん。enormouslyとか、immenselyとか、tremendouslyとか、remarkablyとか、incrediblyとか、vastlyとかさ。" userName="jrochkind1" createdAt="2025/06/06 22:29:07" color="">}}




{{<matomeQuote body="mapをループの中でまだ使ってるなら、tree-based mapならO(n log n)か、hash mapならO(n)になるだろうね。" userName="ndriscoll" createdAt="2025/06/07 12:20:54" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
