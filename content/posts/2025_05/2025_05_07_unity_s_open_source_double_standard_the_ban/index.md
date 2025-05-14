+++
date = '2025-05-07T00:00:00'
months = '2025/05'
draft = false
title = 'Unityに二重基準か オープンソースVLCを禁止で波紋'
tags = ["Unity", "オープンソース", "ライセンス", "VLC", "法律"]
featureimage = 'thumbnails/purple1.jpg'
+++

> Unityに二重基準か オープンソースVLCを禁止で波紋

引用元：[https://news.ycombinator.com/item?id=43914832](https://news.ycombinator.com/item?id=43914832)




{{<matomeQuote body="たぶん法務チームが誤解して契約に入れちゃったんだろ。Unity自体もアセットもLGPL使ってるのにね。GPLとLGPLは全然違うんだよ。LGPLは条件満たせばプロプライエタリなアプリでも使えるように設計されてる。特にユーザーがライブラリを別に修正できる場合ね。でもGPLはもっと厳しくて，使ったら全体のソース公開が必要になる。" userName="jdlyga" createdAt="2025/05/07 13:05:53" color="#ff5733">}}




{{<matomeQuote body="＞LGPLはソース公開不要で使える<br>そんな単純じゃないよ。LGPLはユーザーがライブラリを修正・再ビルドしてアプリに再統合できる必要があるんだ。開発者はそれを”可能”にしないと。これが解釈の余地ありまくりで，弁護士や企業に嫌われる理由だよ。GPLより分かりにくいんだ。" userName="jsiepkes" createdAt="2025/05/07 14:22:20" color="#785bff">}}




{{<matomeQuote body="＞＞LGPLは…特にユーザーがそのLGPLライブラリをアプリとは別に修正したり置き換えたりできる形で使う場合ね。<br>それ，ライブラリが動的リンクされてる場合の話だよね。今回そうなのかはちょっと分からないけど。" userName="phkahler" createdAt="2025/05/07 13:42:10" color="#785bff">}}




{{<matomeQuote body="Afaik，必ずしもそうじゃないよ。LGPLライブラリを修正して（API変更とかも），それをプロプライエタリなアプリで使うことだってできる。修正版ライブラリはLGPLのままだろうけど，一般の人にはほぼ役に立たないだろうし，残念ながら(L)GPLはソースコードをどう共有すべきか具体的に規定してないんだ。「リクエストくれたら修正ソースをメールするよ」って言うのでも完全に合法なんだよね。" userName="torginus" createdAt="2025/05/07 14:33:13" color="#ff33a1">}}




{{<matomeQuote body="UnityアプリがLGPLの条件（ユーザーが修正できる必要性とか）満たすように配布されてるか怪しいな。ストア経由の署名付きアプリとかだと難しそう。<br>弁護士じゃないけど，LGPLはGPLよりマシでも結構厳しいよね。ちゃんとやるには弁護士とかに相談して慎重にならないと。UnityがLGPL禁止するのも，アセット全部の法的レビューとか現実的じゃないからだろうし，理解できるよ。" userName="jmull" createdAt="2025/05/07 15:02:24" color="#ff33a1">}}




{{<matomeQuote body="そんなことないよ。これ見て→ https：//www.gnu.org/licenses/gpl-faq.en.html#LGPLStaticVsDyn" userName="jcelerier" createdAt="2025/05/07 13:43:41" color="">}}




{{<matomeQuote body="もしあなたのアプリケーションにLGPLコードが含まれてるなら，そのアプリケーションのユーザーとして，そのLGPLコードに変更を加えることができる必要があるんだ。つまり，アプリケーション全体のコードか，少なくともオブジェクトファイルと，変更したLGPLコードをあなたのアプリケーションに再リンクするためのインフラが必要になるってこと。" userName="em-bee" createdAt="2025/05/07 14:58:53" color="#38d3d3">}}




{{<matomeQuote body="＞少なくともオブジェクトファイルとインフラ…<br>この部分は正しいけど，そのインフラはユーザー側が自分で用意する必要があるって強調したいな。アプリケーションの配布者がそのインフラを提供する義務はないんだよ。" userName="Maxatar" createdAt="2025/05/07 15:24:51" color="">}}




{{<matomeQuote body="ソフトウェアライセンスの話って，いつも混乱するよね。なんで2025年にもなって，LGPLの詳細を誰もはっきり分かってないんだ？なんでこんな複雑で解釈の余地だらけなんだよ？<br>もっと分かりやすい新しいシステムが必要だよね。MITライセンスみたいに。GPLとか複雑なライセンスは，もっと良いものに置き換えられるべきだと思うな。" userName="thegrim33" createdAt="2025/05/07 20:22:09" color="">}}




{{<matomeQuote body="これが関連する部分だね：＞LGPLedライブラリに対して静的にリンクする場合，ユーザーがライブラリを修正してアプリケーションを再リンクする機会を持てるように，アプリケーションをオブジェクト（必ずしもソースではない）形式で提供する必要がある。<br>それで，これって簡単なの？これがどう機能するのかよく知らないんだけど，Unityが statically linked されたLGPLライブラリを含むUnityのバージョンを，簡単に再リンクできるように配布するって，そんなに簡単なことなのかな？" userName="Epa095" createdAt="2025/05/07 14:25:55" color="#785bff">}}




{{<matomeQuote body="＞俺はさ，例えばストア経由で配布されてて，署名が必要なプラットフォーム向けのアプリは，LGPLコンポーネント含められないと思ってたんだよね．だって，LGPLコンポーネントを修正できないでしょ．（もしかしたら，ソフトが自由にダウンロードできて，サイドローディングもそんなに難しくなければOKなのかも？？？分かんないけど．）俺の記憶が正しければだけど，それはLGPLv2とLGPLv3の違いなんだよねー．LGPLv3はGPLv3と同じ反tivoization条項があるけど，LGPLv2にはないの．だから，俺が理解する限り，LGPLv2でライセンスされてるライブラリを使う場合，ユーザーがライブラリを修正できない形でソフトを配布しても全然OKなんだよ．VLCはLGPLv2.1でライセンスされてて，これはtivoization条項の対象じゃないんだ．" userName="roblabla" createdAt="2025/05/07 15:35:21" color="#45d325">}}




{{<matomeQuote body="それ，どうかなー．アプリを再構築するのに必要なもの全部，もらえるんじゃないの？標準のコンパイラならいいけどさ．でも設定ファイルとか，リンクするための標準じゃないツールとか，例えばLGPLじゃない部分が社内独自の言語で非公開のコンパイラとかリンカーで書かれてたら，オブジェクトを再リンクするためのツールも提供する必要があるはずだよ．まあ，そういう状況になるのはすごくありえないけど，もしそうなったら，そういうツールも共有しないといけないんだよ．" userName="em-bee" createdAt="2025/05/07 17:15:56" color="#ff5733">}}




{{<matomeQuote body="うん，それは本当だね．非公開のコンパイラとかリンカーとかOSとか，何でもそうだけど…それら全部のソースコードを提供する必要があるんだ．" userName="Maxatar" createdAt="2025/05/07 17:45:30" color="">}}




{{<matomeQuote body="ソースコードじゃなくて，同じターゲットマシンで動くバイナリでしょ．" userName="em-bee" createdAt="2025/05/07 21:55:57" color="">}}




{{<matomeQuote body="＞署名が必要なアプリはLGPL含められないというけど，修正はできるよ．LGPL部分の変更だけ公開すればOKで，他のプロジェクトは大丈夫．プライベートキーとか署名ファイルは含めなくていいと思う．LGPLの狙いは，プロプライエタリ環境でもLIBREライブラリを使ってもらうことなんだ．GPL/LGPL FAQを読むと，意図がよくわかるよ．https://www.gnu.org/licenses/gpl-faq.html" userName="giancarlostoro" createdAt="2025/05/07 16:55:18" color="#45d325">}}




{{<matomeQuote body="ライセンスにはっきり書いてあるんだよ，ソースコードじゃないとダメって．バイナリじゃ足りないんだ．" userName="Maxatar" createdAt="2025/05/07 22:25:23" color="#ff5733">}}




{{<matomeQuote body="＞だから，俺が理解する限り，LGPLv2でライセンスされてるライブラリを使う場合，ユーザーがライブラリを修正できない形でソフトを配布しても全然OKなんだよ．法的にはそうかもしれないけど，その解釈はライセンスの意図に真っ向から対立してるんだよね．そういう観点から見ると，その抜け穴を使うのは間違いなく非倫理的だよ．" userName="voakbasda" createdAt="2025/05/07 15:43:19" color="#ff5c5c">}}




{{<matomeQuote body="最初にプロジェクトをビルドするのと同じくらい簡単だよ．アプリをビルドする時はいつでも，そのためのオブジェクトファイルも一緒にビルドされるんだ．エンドユーザーとして，そのオブジェクトファイルを取ってきて再リンクするのは確かに大変かもしれないけど，それは配布者がやらなきゃいけないことじゃないんだよね．配布者は，ビルドプロセスですでに生成される追加ファイルをいくつか提供すればいいだけだよ．" userName="Maxatar" createdAt="2025/05/07 15:20:34" color="">}}




{{<matomeQuote body="Unityみたいな規模とか複雑さだと完全に些細なこととは言わないけど，確実に可能だよ．" userName="voxic11" createdAt="2025/05/07 14:31:52" color="">}}




{{<matomeQuote body="厳密には動的リンクを要求してるわけじゃないけど，LGPLライブラリに静的リンクされてるアプリには追加の要件があるんだよ．＞LGPLライブラリに静的リンクする場合，ユーザーがライブラリを修正してアプリを再リンクできるように，アプリをオブジェクト形式（必ずしもソースコード形式ではない）でも提供する必要があるんだ．" userName="voxic11" createdAt="2025/05/07 14:30:39" color="#45d325">}}




{{<matomeQuote body="これ解釈次第？いや、DLL使えば簡単だよ．LGPLも共有ライブラリならOKって言ってるし．AndroidやXboxはややこしいだろうけど、普通のデスクトップなら楽勝じゃない？追記：これLGPLv3の話なんだ．だからあまり使われてないのかもね．" userName="nightpool" createdAt="2025/05/07 14:57:25" color="#ff33a1">}}




{{<matomeQuote body="もちろん、そういうビルドファイルはストリップされないから、リバースエンジニアリングされやすくなるってことだよね．それは配布側が望まないかもしれないけど．" userName="Sophira" createdAt="2025/05/07 18:03:43" color="">}}




{{<matomeQuote body="それって、あのanti-tivoization条項があるせいで、たいていのモバイルプラットフォームでLGPL3のソフトが使えなくなるってことじゃない？みんなライブラリの署名にこだわるからさ．" userName="Pxtl" createdAt="2025/05/07 16:17:36" color="#ff5733">}}




{{<matomeQuote body="GPが言ってるのは、ユーザーがLGPLのコンポーネントを改造版と置き換えられる必要があるっていうLGPLの要件のことだと思うよ．署名されたアプリのサブシステムを勝手に第三者のコードと置き換えられるようにするのは、複雑になるしセキュリティリスクもあるけど、LGPLの要件なんだよね．" userName="dwaite" createdAt="2025/05/07 20:42:45" color="">}}




{{<matomeQuote body="Unity本体がLGPL使ってるかは関係ないよ．問題はUnity Asset Storeで何が許されてるか．StoreにLGPLアセットは売れないって契約になってたみたいだね．Storeが独自ルール持つのは普通だし、リスク回避とか理由はある．でも、今もLGPL使ってる他のアセットに平等にルール適用してないのはもっと問題だよ．" userName="ack_complete" createdAt="2025/05/07 16:17:42" color="#ff5733">}}




{{<matomeQuote body="これは追加の要件じゃなくて、LGPLのコア要件をC言語での静的リンクの場合にどう適用するかの別の方法なんだ．そのコア要件ってのは、「エンドユーザーがアプリのLGPL部分をパッチしたり置き換えたりできる必要がある」ってことだよ．" userName="jcelerier" createdAt="2025/05/08 01:02:40" color="">}}




{{<matomeQuote body="こういう複雑なライセンス条項はアメリカの古い著作権法が原因だよ．あれが直るまで、こんな法的ハックが必要．何か意図がないなら、パブリックドメインとかUnlicenseみたいにシンプルな選択肢もあるけどね．" userName="dcow" createdAt="2025/05/07 21:22:09" color="">}}




{{<matomeQuote body="＞GPLとかいろんな複雑なライセンスは、もっと良いものにすべきって言うけど、じゃあ何？著作権法とか法律に詳しい人がやっても無理だったんじゃないかな。GPLとかLGPL、Afferoはソフトをオープンに保つ目的があるから、その目的を達成するライセンスをシンプルにするのは難しいと思うよ。" userName="kelnos" createdAt="2025/05/07 20:42:54" color="">}}




{{<matomeQuote body="Unityの弁護士たちは会社をぶっ壊し続けてるね。別に驚かないけど。俺Unityで働いてたことあるけど、技術的な成果はマジで誇りだったけど、それ以外のほとんど全ては恥ずかしかったな。" userName="firtoz" createdAt="2025/05/07 13:21:35" color="">}}




{{<matomeQuote body="Edit: いや、やっぱ関係あるみたい。VLCのコア開発者のほとんどがVideoLabsで働いてるんだね。元のコメントは下に残しとくわ。<br>このブログ記事には”VideoLab Store”へのリンクがあるんだけど、https://videolabs.io ってサイトで、VLC（VideoLANのことね、VideoLabじゃないよ）のロゴにめっちゃ似てるけど違うロゴを使ってるんだ。ホームページには”Hire the VLC team”ってデカく書いてるし。<br>俺が知る限り、VideoLabはVideoLANって非営利団体とは関係ないはずで、意図的に自分がVLCの開発者だと誤解させようとしてるようにしか見えないな。" userName="ItsHarper" createdAt="2025/05/07 15:45:01" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="（President of VideoLAN here）。VideoLabsはVLCのコア開発者のほとんどを雇ってるんだ。彼らがVLC開発の主力だよ。こういう体制にしてるのは、たとえVideoLabsが将来なくなっても、VLCは永久に無料であり続けられるようにするため。非営利団体は存続するってわけ。オープンソースプロジェクトでは結構よくあるやり方だよ。VideoLANの場合、こういうコンサルティング会社が3つか4つあるんだ。" userName="jbk" createdAt="2025/05/07 15:54:44" color="#785bff">}}




{{<matomeQuote body="俺が想像するに、害っていうのは、”彼らが意図的にVLCの開発者だと誤解させようとしてる”って信じた人たちからの評判へのダメージのことじゃないかな。NoahKAndrews（コメント3の人ね）は、後で実は彼らが本当にVLCの開発者だと知らされて、前の間違った発言がVideoLabsについて悪く思わせる人があまり出ないことを願ってるんだよ。" userName="jdbernard" createdAt="2025/05/07 17:25:32" color="">}}




{{<matomeQuote body="＞As far as I’m aware, VideoLab has nothing to do with the VideoLAN non-profit<br>VideoLabsは、VLC/VideoLANの創設者の一人で、VideoLANの非営利団体の代表でもある人が設立した会社だよ。<br>基本的に”for-profit”だけど、VLCの主要な貢献者のほとんどを雇ってて、その人たちに給料を払ってエコシステムで働いてもらってる。コンサルティングとか他のサービスで資金を得てるんだ。<br>VLCのコードベースにはかなり貢献してるよ。<br>以前、パートナーとして彼らと一緒に仕事した経験から言うと、”for-profit”っていうのはほぼ法的な形式だけで、マインドセットはそうじゃない感じだよ。" userName="Ragnarork" createdAt="2025/05/07 15:55:00" color="#785bff">}}




{{<matomeQuote body="えっと、筆者はちゃんとVideoLANプロジェクトのgit forgeへのリンクをブログに載せてるし、そっちのプロジェクトにも貢献してるよ。例えばこれ: https://code.videolan.org/videolan/LibVLCSharp<br>それに、VideoLabsはhttps://www.videolan.org/videolan/partners.html にもちゃんとリストされてるんだ。<br>プロジェクト側はこの法人（VideoLabs）のことをしっかり認識してるみたいだね。" userName="bionade24" createdAt="2025/05/07 15:51:18" color="#45d325">}}




{{<matomeQuote body="Videolabsのaboutページにはこうあるよ。<br>VideoLANコミュニティ出身で、元々はVLCのモバイル版メンテからスタート。今はVLCのメインコントリビューターで、昔からの開発者を雇ったり、VLCやFFmpeg周りで色んなソリューション開発してるんだって。" userName="spyder" createdAt="2025/05/07 15:56:36" color="">}}




{{<matomeQuote body="CTOがVideoLANの代表なんだから、それは合ってるみたいね。約情報だと、VLCのメインメンテナーだってさ。" userName="paulbgd" createdAt="2025/05/07 15:53:01" color="">}}




{{<matomeQuote body="間違ってたら教えてほしいんだけど。<br>私の理解だとね、LGPL v2のコードをコンソール版に使うのは大丈夫。v2には「tivoization」条項がないから、たとえSwitchみたいにロックされててユーザーが再リンクできなくてもOK。<br>でもwebsockify.jsとか他の依存関係はLGPL v3で、これはユーザーが部品を置き換えられないSwitchみたいなプラットフォームには使えないはず。<br>Unityってこういうのをロックされたプラットフォームで外してるのかな、それとも単にLGPL v3違反してるの？" userName="w4rh4wk5" createdAt="2025/05/07 14:37:10" color="#ff5c5c">}}




{{<matomeQuote body="”間違ってたら教えて”についてね、多くの人が勘違いしてるGPLv3の「Tivoization」条項の話。あれは”User Product”（家電とか）のロックされたOSにGPLv3入れるのを止めるために狭く書かれてるんだ。Nintendo Switch本体にはGPLv3入れちゃダメだけど、後からストアで買うソフトには適用されないよ。<br>問題があるとすれば、Appleとかのストア規約が再配布とかリバース禁止してること。GPLv3はこれを許可してるから矛盾する。自分のコードだけなら大丈夫だけど、誰か他の人が作ったGPLv3ライブラリをアプリに入れてる場合、ストアがそのライブラリを配布する権利を持ってないからストアで売れないってことになるかもね。" userName="tzs" createdAt="2025/05/07 16:02:48" color="#785bff">}}




{{<matomeQuote body="GPLv3はTivoが実際にやったこととは違うし、GPLv2もGPLv3も「Tivoization」（勝手に変更させないこと）自体は止めてる。Tivoが本当にやったのは、GPL部分をいじると自社ソフトが壊れるようにしたことなんだよ。関連リンク貼っとくね。" userName="pabs3" createdAt="2025/05/08 05:38:44" color="#785bff">}}




{{<matomeQuote body="ストア規約の話ね。LGPLは、LGPL部分を置き換えたり修正したりできる形でアプリを配布しろって決まりがあるんだ。動的リンクか、オブジェクトファイルを別に配るか。Nintendo Switchみたいなコンソールは、開発キットが高いしSDKも非公開だから、これでLGPL守るのめっちゃ難しくない？もしかしたらUnityとか、コンソールにゲーム出したインディー開発者のほとんどがLGPL違反してるかも。ヤバいのは、GPLv2って一度違反したらもうそのライブラリ使えなくなる一発退場ルールがあること。<br>iOSは開発プロファイル作れるけど、App Storeのアプリは暗号化されてて、オブジェクトファイル手に入れるのが大変。全部オープンソースならGitリンク貼ればいいけど、普通は無理だよね。VLCが昔iOSで揉めたのは、非営利だとDUNS番号取るのが大変だったせいだよ。" userName="kmeisthax" createdAt="2025/05/07 17:21:57" color="#ff33a1">}}




{{<matomeQuote body="うん、君の言う通りだよ。Appleも同じ問題抱えてて、macOSでbash 3.2（GPLv2最後のバージョン）を使い続けてる。GPLv3に上げられないからね。LGPL 2.1の「or later」って変で、ユーザーは好きなバージョンのGPLに変換できるんだけど、作者が「2.1 only」とか「or later」とか明記しないとダメらしい。UnityがLGPLコードを「もう使わない」ってしたのは、もしライブラリ側がLGPLv3に変わったら困るからかもね。<br>VLCのライセンス表記、場所によって「2.1 only」だったり「v2 (or later)」だったり矛盾してるんだ。だからUnityがv3を心配するのは分かる。でもさ、Unityが本当に恐れてるのは、VLCが使ってる技術に特許を持ってる第三者との問題で、LGPLの話は単なる口実かもしれないってのが私の推測だよ。" userName="hedora" createdAt="2025/05/07 15:14:05" color="#ff5c5c">}}




{{<matomeQuote body="Godot最高！Unityは最近マジでビジネス判断がダメダメだね。もし商用で選ぶなら、Epic Gamesの方がまだマシかな。少なくともApple相手に弁護士使って戦うし、オープンソース開発者とモメたりしないから。" userName="minima" createdAt="2025/05/07 14:59:58" color="">}}




{{<matomeQuote body="面白いね、Unityのプロバイダー契約に5.10.4条項が見当たらないみたい？以前はGPLとかLGPLのコード使っちゃダメっていう規約があったんだけど、Wayback Machineで見たら12月3日から12日の間に消されたっぽいよ。" userName="adzm" createdAt="2025/05/07 13:00:27" color="#ff5733">}}




{{<matomeQuote body="どうやら「Submission Guidelines 1.2.b」に移されたみたいだよ、「5.10.1」からリンクされてるここね<br>https://assetstore.unity.com/publishing/submission-guideline..." userName="axus" createdAt="2025/05/07 13:27:24" color="">}}




{{<matomeQuote body="この記事、もう1年以上前のやつだよ（2024年1月）" userName="daveoc64" createdAt="2025/05/07 13:19:15" color="">}}




{{<matomeQuote body="関連するメールなんて、2023年8月31日付けだよ" userName="red_trumpet" createdAt="2025/05/07 13:27:21" color="">}}




{{<matomeQuote body="本当はUnityでプロジェクトやりたいんだよね。エディターもAPIも、技術に詳しくない人向けに簡単にツール作れるとこもすごく好き。<br>でもUnityって、ユーザーに敵対的だったり、来年こそ安定版出すって言いながらいつまでもベータなパッケージが大量にあったり、何もないプロジェクトですらパフォーマンスがひどく落ちたりで、常に大変なんだ。<br>今はGodotを主に使ってるけど、良いけどUnityとはちょっと違うんだよね。" userName="lyntier" createdAt="2025/05/08 04:20:03" color="">}}




{{<matomeQuote body="Unityって、一方的に非推奨になったって決めたパッケージをアップロードしただけでアカウント永久BANしてんの？マジで何吸ってんの？？" userName="jillyboel" createdAt="2025/05/07 13:29:32" color="">}}




{{<matomeQuote body="うん、言ってない別の理由でVLCが嫌いなんじゃないかって気がするね。<br>自社のメディアプレイヤーとかと競合してるのかな？それともVLCの開発者がUnityの役員の元カノと付き合ってたとか？笑" userName="mcv" createdAt="2025/05/07 15:39:07" color="">}}




{{<matomeQuote body="VLCはDMCAに違反してるし、特許のかかったMPEG系コーデックも含んでるんだよね。<br>それ使うエンドユーザーは（主にアメリカの法的枠組みのもと？）特許権者にロイヤリティ払うことになってるんだけど、多分ほぼ払ってないでしょ？<br>だから、アメリカの誰かがUnityに圧力をかけた可能性もあるんじゃない？" userName="BlueTemplar" createdAt="2025/05/08 11:20:13" color="#45d325">}}




{{<matomeQuote body="＞...一方的に非推奨になったって決めたパッケージをアップロードしただけで？<br>Unityは「deprecated（非推奨）」って言葉を「removed（削除）」とか「deleted（削除）」って意味で使ってるみたいだね。<br>こういうの本当にバカげてるし、皆でやめさせたいトレンドだよ。<br>僕の解釈だと、UnityからのメモはVLCライブラリをストアから削除して、規約違反でVLCグループのストアアカウントを永久BANしたってこと。<br>企業用語って分かりづらいんだよね。（それが主な目的かもしれないけど）" userName="simoncion" createdAt="2025/05/07 20:59:32" color="">}}




{{<matomeQuote body="またUnityが敵対的な態度見せてんじゃん。<br>こんな理由で開発者を永久BANするとか正気じゃないよ。" userName="tobyhinloopen" createdAt="2025/05/07 13:52:05" color="">}}




{{<matomeQuote body="「またか」っていうよりは、「やつらがさらに酷くなって完全にUnityになる前」の話だね。<br>これ、「インストールごと」の料金問題より前、2023年8月に起きたんだ。" userName="TheRealPomax" createdAt="2025/05/07 15:03:48" color="">}}




{{<matomeQuote body="Unityがライセンスプラン変えた数年前にUnityやめたんだ。すぐ撤回したと思うけど、やめて正解だったと思ってるよ。" userName="99nala" createdAt="2025/05/07 15:29:20" color="">}}




{{<matomeQuote body="以前の議論（2024年1月）: https://news.ycombinator.com/item?id=38964972" userName="falcor84" createdAt="2025/05/07 14:32:47" color="#ff5c5c">}}




{{<matomeQuote body="ソフトウェア特許がある国ではVLC自体が合法かどうかもわかんないね。" userName="Dwedit" createdAt="2025/05/07 14:26:16" color="">}}




{{<matomeQuote body="＞ 数ヶ月メールでやり取りして妥協点探ったけど、アセットからLGPLコード除くって提案しても、結局Unityにはもうストアに戻ってこなくていいって言われたんだ。UnityパッケージからLGPLコード全部消してもダメだって。EUもそろそろUnityを取り締まって、ゲートキーパーに指定するべきだね。この対応は完全にイカれてる。" userName="mschuster91" createdAt="2025/05/07 13:31:21" color="#ff33a1">}}




{{<matomeQuote body="Unityだけじゃなくて、EUは10年前からの米国の情報通信企業への規制をそろそろ実行すべきだよ（Patriot Act =＞ Snowden scandal =＞ Schrems 2）。もうアメリカを味方と見なせないんだから、EU住民の基本的人権を侵害してるときに見て見ぬふりする理由はないでしょ。" userName="BlueTemplar" createdAt="2025/05/08 11:28:46" color="#ff5c5c">}}




{{<matomeQuote body="誰かのアプリ丸ごと削除しといて、”ご不便おかけしました”だってさ。" userName="m3kw9" createdAt="2025/05/07 13:14:05" color="">}}




{{<matomeQuote body="もし誰かがUnityストアを全部調べて、LGPLのアセットを片っ端からUnityの法務部に通報したら、大変なことになるだろうね。" userName="mystified5016" createdAt="2025/05/07 15:41:09" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞Unityで作られたゲームはデフォルトでLGPLコード（glibcとか）に依存してるって話だけど、ちょっと細かいこと言うと、glibcは正確にはGPLなんだよね。LGPLじゃない。でもglibcにリンクするプログラムには別のライセンスがあって、GPLが非フリーなコンパイラの一部としてglibcを配布するのを防ぐ意図があるみたい。法律的な細かいところはわかんないけど、俺の理解はこうだよ。" userName="snickerbockers" createdAt="2025/05/08 10:44:42" color="#38d3d3">}}




{{<matomeQuote body="＞面白いのはさ、今Unity StoreにはLGPL依存（FFmpegとか）を含むアセットが数百、いや数千もあるってこと。取り締まりは完全にランダムみたいで、誰かに報告されない限り大丈夫っぽい。試すほど意地悪かな？って気はするけど、他の違反者を片っ端から報告すれば注目されて、うまくいけばポリシーが変わるかもね。" userName="ErikBjare" createdAt="2025/05/09 06:47:29" color="#ff33a1">}}




{{<matomeQuote body="てっきり、ほとんどの開発者向けストアはGPLとかLGPLコードを禁止してると思ってたよ。EpicのFabの配布規約には、動的に共有ライブラリをリンクしてる場合を除いてLGPLは使えないって書いてるけど、これenforcingするの明らかに無理だし、一部のゲームプラットフォームでは技術的にも難しい。GodotストアはLGPLv3コードを許可してるみたいで面白いね。Unity自身がLGPLコードを使ってるのは話が別だよ、たぶん彼らはサードパーティのプラグインとは違ってどう使うかをコントロールできるから。" userName="pnw" createdAt="2025/05/07 23:58:02" color="#ff33a1">}}




{{<matomeQuote body="この前の大失敗の後でUnityで何か開発するなんて、どうかしてるぜ。" userName="Fokamul" createdAt="2025/05/07 21:33:47" color="">}}




{{<matomeQuote body="この記事とgitlabのリポジトリリンクをちょっと読んだけど、VLCのデスクトッププレイヤーでUnityのアセットやゲームを再生する話なのか、それともUnityの中にVLCプレイヤーを入れるプラグインの話なのか、全くわからないんだよね…それとも何か別のこと？" userName="ttoinou" createdAt="2025/05/07 13:10:39" color="">}}




{{<matomeQuote body="ゲームの中にVLCメディアプレイヤーを組み込む、って感じの話だよ。カットシーンプレイヤーとして使ったり、プレイヤーがゲーム内で操作できるコントロール経由でメディアを再生したり。この記事のこの一文に本質があると思うんだ。「UnityベースのゲームでVLC技術に基づいた独自のメディアプレイヤーを構築することを可能にする」。" userName="bayindirh" createdAt="2025/05/07 13:12:40" color="#45d325">}}




{{<matomeQuote body="＞この統合は、UnityゲームエンジンとVLCマルチメディアエンジンの間の橋渡し的なものだったんだ。これにより、Unityベースのゲーム内でVLC技術に基づいた独自のメディアプレイヤーを構築できるようになった。" userName="Telemakhos" createdAt="2025/05/07 13:15:33" color="">}}




{{<matomeQuote body="残念だけど、彼らにとってね、たとえ正しい解決策（彼ら自身のストア）を思いついたとしても、商業的な成功の観点からはどうでもいいことなんだ。正しい解決策が必ずしも財政的に成功するわけじゃないんだよ、よくあることだけど。" userName="doctorpangloss" createdAt="2025/05/07 16:43:49" color="">}}




{{<matomeQuote body="君のアプリ、もしかして奴らの広告ネットワークとか収益を脅かしたんじゃないの？" userName="globalnode" createdAt="2025/05/07 14:41:50" color="">}}




{{<matomeQuote body="VLCが昔iOS App Storeに入れなかったのって、同じ理由だった気がするな．その話はみんな大騒ぎしてたよね．FfmpegがApp Storeにあるのは、こういう騒ぎがないからってだけ．" userName="WesolyKubeczek" createdAt="2025/05/07 14:19:22" color="">}}




{{<matomeQuote body="それとは別の話だよ．App Storeでの騒動は、VLCが、2011年に、GPLライセンスだったから．VLCの開発者の一人がAppleにGPLライセンスがApp Storeの配布モデルと互換性がないって訴えて、それで一旦取り下げられたんだ．<br>VLCのエンジン部分はその後LGPL-2．1に、それ以外の部分はMPLに再ライセンスされたんだ．VLCは2013年からまたApp Storeに戻ってるよ．" userName="Reason077" createdAt="2025/05/07 14:55:27" color="#ff33a1">}}




{{<matomeQuote body="大企業はGPLが嫌いなんだよ<br>別に驚かないけどね" userName="mouse_" createdAt="2025/05/07 12:48:46" color="">}}




{{<matomeQuote body="でもさ、奴ら自身はGPLライセンスのライブラリを普通に使ってるんだよ．<br>＞これってさらにヤバい話…Unity本体、Editorもruntime（つまり君が出荷するゲームも）すでにLGPLの依存関係を持ってるんだ！UnityはLameとかlibiconv、libwebsockets、websockify．jsなんかのライブラリで動いてる（少なくともね）．Full list of open-source Unity dependencies here．<br>ってことは、奴らが嫌ってるのは”パブリッシャーとかUnityユーザーがGPLライブラリを使うこと”であって、自分たちで使うことじゃないみたいだね．" userName="diggan" createdAt="2025/05/07 12:50:25" color="#ff33a1">}}




{{<matomeQuote body="他人の作品を使って自分で儲けるのは別に悪くない．<br>でも、他人の作品を使って他人に儲けさせるのはかなりマズい．<br>単純化しすぎてるのは分かってるけど…そうだろ？<br>The Ferenghi would be proud of Unity！" userName="HenryBemis" createdAt="2025/05/07 12:53:06" color="">}}




{{<matomeQuote body="オープンソースは善意ある開発者から企業や億万長者のポケットに財産や資本がただ移されるだけ．開発者は、作ったもの全部にAGPLv3を常に適用するのが一番だよ．AGPLv3か全権利保留かのどっちか．その中間は全部意味ない．https://zedshaw．com/blog/2022-02-05-the-beggar-barons/<br>＞Beggar Baronにとって、オープンソースの価値はタダの寄付．<br>＞道端に立って、数ドル寄付しようとしてる人から財布を買い取ろうなんてしないだろ．<br>＞馬鹿げてるよ．彼らはタダで金くれてんだ．受け取って逃げろ．" userName="matheusmoreira" createdAt="2025/05/07 13:08:58" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
