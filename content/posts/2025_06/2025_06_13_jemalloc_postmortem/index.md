+++
date = '2025-06-13T00:00:00'
months = '2025/06'
draft = false
title = 'Jemalloc ポストモーテム その内容とは？'
tags = ["jemalloc", "メモリ管理", "パフォーマンス", "C++", "ライブラリ"]
featureimage = 'thumbnails/red1.jpg'
+++

> Jemalloc ポストモーテム その内容とは？

引用元：[https://news.ycombinator.com/item?id=44264958](https://news.ycombinator.com/item?id=44264958)




{{<matomeQuote body="Jemallocリポジトリのアーカイブ、気持ちは分かるけど悲しいわ。僕がいた頃もメンテ大変だったしね（Itaniumでテスト失敗した報告とか面白かった）。Jemallocはやっぱ使いやすい汎用mallocで最高だと思う。TCMallocもいいけど、Bazel以外だとマジで使うの面倒なんだよ。Bazel 7.4.0でマシになったけどさ。メンテナーのQiに最終リリースお願いしたいな。その時にデフォルト設定も現代化したいな。キャッシュオブリビアス無効とかページサイズ大きくするとか。これ性能めっちゃ上がるんだよね（メモリ使うけど）。前に社内でやったら数%CPU改善したよ。他にもいくつか変えたい設定あるけど、これが一番でかいな。" userName="Svetlitski" createdAt="2025/06/13 03:35:43" color="#ff5c5c">}}




{{<matomeQuote body="こういう話、マジで好き！投稿ありがとう！<br>Bazel使わない時って、TCMalloc使うの何が大変なの？（別に疑ってるわけじゃなくて、ガチで気になるんだ）" userName="kstrauser" createdAt="2025/06/13 03:43:45" color="">}}




{{<matomeQuote body="単純にビルドしてリンクするのがクソ大変なんだよ。<br>Bazel 7.4.0の前はさ、ダイナミックリンク（遅いしデプロイ面倒）か、スタティックライブラリを手で作る（これがマジでダルい）しか選択肢なかったの。<br>Metaにいた時、Jemallocと比べるために、TCMallocのBazelファイルをBuck2に手作業で書き換えたくらい。それ以外良い方法なかったんだよ。<br>Googleの外で使うと、特定のLinux設定を前提にしてて、そうじゃないと色々問題起きたりするんだよ。詳しくはここね： https://google.github.io/tcmalloc/tuning.html#system-level-o..." userName="Svetlitski" createdAt="2025/06/13 04:01:03" color="#45d325">}}




{{<matomeQuote body="Googleのヤツらは、Google社内システム以外で使うとマジで全部大変なんだよ。<br>Chromiumとかも超デカいモノリポで、依存関係ぐちゃぐちゃ。ABIとか全然気にしないし、ASANとかでABI変わるし、コンパイラとかちょっと違うだけで壊れる。<br>ソースからビルドしようとすると、数十GBとかダウンロードさせられるし、ベンダーライブラリも古いまま使わされる。<br>ヘッダーファイルも整理されてなくて、”base/pc.h”とか、相対パスがおかしいのが多いんだよね。インクルードパス汚染しないといけない。<br>Abseil、WebRTC、gRPC、protobufとか、Googleのライブラリは避けてるわ。仕事で仕方なくWebRTC使う時は、プロセス分けたりする。それ以外は苦しみを受け入れるしかない。これブログに書くべきだったな。" userName="mort96" createdAt="2025/06/13 08:17:42" color="#38d3d3">}}




{{<matomeQuote body="Itaniumのテストスイート失敗報告したの、それ俺です :)" userName="matoro" createdAt="2025/06/13 04:11:05" color="">}}




{{<matomeQuote body="あんたのGoogle批判、全然足りないね ;)<br>Blinkとかコンパイル超時間かかるんだよ。Geckoより何倍も。Googleは前方宣言使わないで全部インクルードするポリシーだから。ビルド時間気にする人にはマジで意味不明だよね。Googleは多分、ハードと分散キャッシュでゴリ押ししてて、外部のビルド環境とか全く考えてないんだよ。あとビルドスレッドごとに2GB RAM必要とか、これも普通じゃないし。" userName="ahartmetz" createdAt="2025/06/13 08:44:25" color="#ff33a1">}}




{{<matomeQuote body="＞ TCMalloc is great, but is an absolute nightmare to use if you’re not using bazel<br>カスタムmalloc初心者の質問なんだけどさ、ライブラリの使いやすさを評価するのに、ビルドシステムを選ぶことがなんで重要になるの？" userName="einpoklum" createdAt="2025/06/13 08:19:58" color="">}}




{{<matomeQuote body="LLM使ってMakefileをBazelに移行させたことあるけど、まあまあいけたよ。<br>逆（Bazel→Makefile）は試してないけど、最近はそんなに大変じゃないかもね。まあ人によるけどさ、参考にしてみて。" userName="prpl" createdAt="2025/06/13 04:37:42" color="">}}




{{<matomeQuote body="Chromiumは、Google全体のポリシーと違って、前方宣言を許可してるよ： https://chromium.googlesource.com/chromium/src/+/main/styleg..., ”Forward declarations vs. #includes”." userName="bialpio" createdAt="2025/06/13 18:16:13" color="#785bff">}}




{{<matomeQuote body="すごく嬉しいけど、まだ将来変わるかもってことだよね。だって、この前のコードではインクルードだらけだったから。まあ、一つ思い出した、すごく偏った例だけど、コンパイルが特に遅かったクラスを見たんだ。Ryzen 7950Xでも40秒くらいかかって、RAMも2GBくらい使ってた。コードは200行もないし、普通はコンパイルに時間かからないようなこと何もしてないように見えた…含まれてるもの以外はね。含まれてるものも特に凝ったことはしてないように見えたんだ。でも、compile firewallsを追加しないと、推移的なインクルードって雪だるま式に増えちゃうんだよね。" userName="ahartmetz" createdAt="2025/06/13 18:42:34" color="">}}




{{<matomeQuote body="彼らはpublic header fileとsource codeを区別するために一切努力してないって言うけど、違うやり方でやってるよ。世の中は慣習で区別してる、別々のディレクトリ階層（src/, include/）に置くことでね。google3はbuild systemに依存してそうしてるんだ。「どのheader fileがpublicか」はBUILD filesに文書化されてる。だから、違いを理解するには彼らのbuild systemを使う必要があるんだよね :(。<br>彼らのpublic headersは `#include ”base/pc.h”` みたいなおかしなことしがちで、その `”base/pc.h”` パスはincludeしてるファイルからの相対パスじゃないって？<br>これについては同意できないな。相対include pathsに頼るのは最悪だよ。`-I/project/root`みたいに、プロジェクトルートからのパス指定が一番だよ。" userName="rfoo" createdAt="2025/06/13 08:44:33" color="">}}




{{<matomeQuote body="それをbuildする必要があるからだよ。もし彼らが君と同じbuild systemを使ってなかったら、彼らのシステムを呼び出すか、自分のシステムにimportするしかない。前者はそれが’heavy’だったりsubprocessとしてうまく動かないなら魅力的じゃないし、後者は replicating するbuild processがcomplexだと時間がかかるんだ。どっちもやったことあるし、様々なレベルのcomplexityのlibrariesを見てきたけど、それがvery complexだと、もう諦めて使わないでおこうって思うポイントは確かにあるね。" userName="CamouflagedKiwi" createdAt="2025/06/13 17:26:22" color="">}}




{{<matomeQuote body="なんでdownvoteされたか分かんないけど、俺もClaudeにたくさんのBUILD filesをequivalentなCMakeLists.txtにtranslateさせてみたことあるよ。できた。できたCMakeLists.txtはsuper terribleな見た目だけど、世の中のCMakeLists.txtの95%もそうだから、why bother、どっちみちdoomedだし。" userName="rfoo" createdAt="2025/06/13 08:51:40" color="">}}




{{<matomeQuote body="これはactually publicly visibleなURLでtrackedされてるよ：<br>https://commondatastorage.googleapis.com/chromium-browser-cl...<br>そしてinclude graph analysis：https://commondatastorage.googleapis.com/chromium-browser-cl...<br>annotated red dotsは、Chrome developersがbuild timeをoptimizeするためにinclude graphをpruneするbig pushをしたlast timeに対応してるんだ。それはeffectiveだったけど、push backがあった。C++ developersはただmagicが欲しいだけで、dependency managementについてthinkしたくないんだ。彼らをblameするのはhardだ。でも、at the end of the day、buildsはsources times dependenciesでscaleするから、disciplinedじゃなきゃ、superlinear build timesをexpectできるよ。" userName="stick_figure" createdAt="2025/06/13 19:22:09" color="#785bff">}}




{{<matomeQuote body="このperspective、面白かったよ。thingsが君のworkflowにあまりfitしなかったのはappreciateできるけど、俺のexperienceはoppositeだった。彼らのprojectsはliterally everythingをsourceからon the spotでbuildingするperspectiveでstructuredされてるみたいで、それが俺のmindsetにmatchesするんだ—俺はnetwork isolated environmentでscratchからbuildすることを選ぶ。As a result、google reposは、fairly easyにup and runningさせられる数少ないものの一つなんだ。alarming number of projectsはapparentlyそんなconditions underでtestedされてなくて、俺は何時間もかけてcmake scriptsをpatching upする羽目になるんだ。（Even worseは、build processの一部として’npm install’をrequireするprojects。Absurdity。）<br>Oh and you probably don’t want multiple versions of a library in your binary, so be prepared to use Google’s (probably outdated) version of whatever libraries they vendor.<br>これは俺がrelateできる唯一のcomplaintだね。Sometimes彼らはdependenciesをforward rollingするのにlagする。Not so infrequently、自分でそうしようとするとminor（or not so minor）なissuesがあって、dependenciesをpatching upするtimeをwasteしたくないから、彼らがaround to itするまでstuck for a whileになるんだ。That said、usually rolling forwardはwithout issue worksするよ。<br>if you try to build their libraries from source, that involves downloading tens of gigabytes of sysroots and toolchains and vendored dependencies.<br>Out of curiosity、which project did you run into this with? That said、isn’t the only alternative for them moving to something like nix? Otherwise how do you tightly specify the build environment?" userName="fc417fc802" createdAt="2025/06/13 09:14:38" color="#ff33a1">}}




{{<matomeQuote body="This. When step one is ”install our weird build system,” I’ll immediately look for something else that meets my needs. All build systems suck, so everyone thinks they can write a better one, and too many people try. Pretty soon you end up having to learn a majority of this (https://en.wikipedia.org/wiki/List_of_build_automation_softw...) to get your code to compile." userName="mort96" createdAt="2025/06/13 09:02:53" color="">}}




{{<matomeQuote body="This. Step oneが「install our weird build system」のときは、needsを満たす別のものをすぐ探すよ。All build systemsはsuckするから、みんなbetter oneを書けると思ってるし、too many peopleがtryする。Pretty soon君はcodeをcompileするためにthis (https://en.wikipedia.org/wiki/List_of_build_automation_softw...)の大部分をlearnする羽目になるよ。" userName="username223" createdAt="2025/06/13 20:19:33" color="">}}




{{<matomeQuote body="If TCMalloc uses bazel, then you build it with Bazel. It just needs to install itself where you tell it to, and then either it has given you a pkg-config file, or otherwise, your own build system needs some library-finding logic for it (”find module” in CMake terms). Or - are you saying the problem is that you need to install Bazel?" userName="einpoklum" createdAt="2025/06/13 21:14:21" color="">}}




{{<matomeQuote body="Ah, porting to HP Superdome servers. It’s like being handed a brochure describing the intricate details of the iceberg the ship you just boarded is about to hit in a few days.<br>A fellow traveler, ahoy!" userName="apaprocki" createdAt="2025/06/13 05:55:12" color="">}}




{{<matomeQuote body="＞ we （i.e. the Jemalloc team） weren’t really in a great place to respond to all the random GitHub issues people would file<br>Why not？ I mean this is complete drive-by comment, so please correct me, but there was a fully staffed team at Meta that maintained it, but was not in the best place to manage the issues？" userName="klabb3" createdAt="2025/06/13 12:18:24" color="">}}




{{<matomeQuote body="Oh, that wasn’t the intent. I meant two separate things. The Itanic itself was kind of fascinating, but mostly panned （hence the nickname）.<br>SGI’s decision to built out Itanium systems may have helped precipitate their own downfall. That was sad." userName="boulos" createdAt="2025/06/13 16:07:24" color="">}}




{{<matomeQuote body="I’ve hit similar problems with their Ruby gRPC library.<br>The counter example is the language Go. The team running Go has put considerable care and attention into making this project welcoming for developers to contribute, while still adhering to Google code contribution requirements. Building for source is straightforward and iirc it’s one of the easier cross compilers to setup.<br>Install docs: https://go.dev/doc/install/source#bootstrapFromBinaryRelease" userName="ewalk153" createdAt="2025/06/13 11:37:44" color="#785bff">}}




{{<matomeQuote body="＞＞ `#include ”base/pc.h”`, where that `”base/pc.h”` path is not relative to the file doing the include.<br>＞ I have to disagree on this one.<br>The double-quotes literally mean ”this dependency is relative to the current file”. If you want to depend on a -I, then signal that by using angle brackets." userName="alextingle" createdAt="2025/06/13 09:26:48" color="#785bff">}}




{{<matomeQuote body="Good that it’s being tracked, but Jesus, these numbers！<br>110 CPU hours for a build. （Fortunately, it seems to be a little over half that for my CPU. ”Cloud CPUs” are kinda slow.）<br>I picked the 5001st largest file with includes. It’s zoom_view_controller.cc, 140 lines in the .cc file, size with includes: 19.5 MB.<br>Initially I picked the 5000th largest file with includes, but for devtools_target_ui.cc, I see a bit more legitimacy for having lots of includes. It has 384 ”own” lines in he .cc file and, of course, also about 19.5 MB size with includes.<br>A C++20 source file including some standard library headers easily bloats to a little under 1 MB IIRC, and that’s already kind of unreasonable. 20x of that is very unreasonable.<br>I don’t think that I need to tell anyone on the Chrome team how to improve performance in software: you measure and then you grab the dumb low-hanging fruit first. From these results, it doesn’t seem like anyone is working with the actual goal to improve the situation as long as the guidelines are followed on paper." userName="ahartmetz" createdAt="2025/06/13 19:56:30" color="#785bff">}}




{{<matomeQuote body="Go is kinda of a pain to build from source. Build one version to build another, and another..<br>Or rather it was the last time I tried." userName="rstat1" createdAt="2025/06/13 17:35:55" color="">}}




{{<matomeQuote body="＞ I have to disagree on this one. Relying on relative include paths suck. Just having one `-I/project/root` is the way to go.<br>Oh to be clear, I’m not saying that they should’ve used relative includes. I’m complaining that they don’t put their includes in their own namespace. If public headers were in a folder called `include/webrtc` as is the typical convention, and they all contained `#include ＜webrtc/base/pc.h＞` or `#include ”webrtc/base/pc.h”` I would’ve had no problem. But as it is, WebRTC’s headers are in include paths which it’s really difficult to avoid colliding with. You’ll cause collisions if your project has a source directory called `api`, or `pc`, or `net`, or `media`, or a whole host of other common names." userName="mort96" createdAt="2025/06/13 08:57:05" color="#ff5c5c">}}




{{<matomeQuote body="＞ I picked the 5001st largest file with includes. It’s zoom_view_controller.cc, 140 lines in the .cc file, size with includes: 19.5 MB.<br>＞ Initially I picked the 5000th largest file with includes, but for devtools_target_ui.cc, I see a bit more legitimacy for having lots of includes. It has 384 ”own” lines in he .cc file and, of course, also about 19.5 MB size with includes.<br>＞ A C++20 source file including some standard library headers easily bloats to a little under 1 MB IIRC, and that’s already kind of unreasonable. 20x of that is very unreasonable.<br>I think you’re not arguing pro-forward-declarations vs anti-forward-declarations here though - it sounds more like an argument for more granular header/source files？ In .cc file, each and every include should be necessary for the file to compile （although looking at your example, bind.h seems to be unused and could be removed - looks like the file was refactored and the includes weren’t cleaned up）.<br>With that said, in the corresponding zoom_view_controller.h, the tab_interface.h include looks to be unnecessary so you did find one good example. :)" userName="bialpio" createdAt="2025/06/13 22:06:10" color="#785bff">}}




{{<matomeQuote body="I don’t really have the care nor time to respond as thoroughly as you deserve, but here are some thoughts:<br>＞ Out of curiosity which project did you run into this with？<br>Their WebRTC library for the most part, but also the gRPC C++ library. Unlike WebRTC, grpc++ is in most package managers so the need to build it myself is less, but WebRTC is a behemoth and not in any package manager.<br>＞ That said, isn’t the only alternative for them moving to something like nix？ Otherwise how do you tightly specify the build environment？<br>I don’t expect my libraries to tightly specify the build environment. I expect my libraries to conform to my software’s build environment, to use versions of other libraries that I provide to it, etc etc. I don’t mind that Google builds their application software the way they do, Google Chrome should tightly constrain its build environment if Google wants; but their libraries should fit in to my environment.<br>I’m wondering, what is your relationship with Google software that you build from source？ Are you building their libraries to integrate with your own applications, or do you just build Google’s applications from source and use them as-is？" userName="mort96" createdAt="2025/06/13 14:19:37" color="#785bff">}}




{{<matomeQuote body="Jason、君の仕事がどれだけ僕たちに影響を与えているか、話を聞いてほしいんだ。<br>僕たちは日に何億もの画像や動画を処理するそこそこの規模の会社を運営してるんだけど、5年前に始めた頃、メモリ断片化関連のデバッグに数えきれない時間を費やしたんだ。<br>ある日、Jemallocを見つけて、メモリ断片化がひどかったサービスに導入してみたんだ。Dockerfileのたった2行の変更で全部の問題が解決するなんて思ってもいなかったんだけど、嬉しい驚きだったよ。問題は一つ残らず消え去ったんだ。<br>今では、数百万ドル規模の収益がある僕たちの会社は、全てのサービス、全てのDockerfileで君のメモリallocatorを使ってるんだ。<br>心からありがとう！" userName="adityapatadia" createdAt="2025/06/13 06:56:38" color="#38d3d3">}}




{{<matomeQuote body="そうだよね！ほとんどの画像処理GolangサービスでJemallocを推奨／使用してるよ。<br>https://github.com/topics/resize-imagesのトップ3（2025-06-13現在）だよ。<br>imaginary: https://github.com/h2non/imaginary/blob/1d4e251cfcd58ea66f83...<br>imgproxy: https://web.archive.org/web/20210412004544/https://docs.imgp... (imaginaryのリポジトリの議論からリンクされてる)<br>imagor: https://github.com/cshum/imagor/blob/f6673fa6656ee8ef17728f2..." userName="thewisenerd" createdAt="2025/06/13 08:04:39" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="うん、imgproxyはlibvipsを使ってるみたいだね。libvipsがJemallocを推奨してるんだ。調べてみたら、これが面白い（面白くないけど）バグ報告だよ。<br>https://github.com/libvips/libvips/discussions/3019" userName="tecleandor" createdAt="2025/06/13 09:08:44" color="">}}




{{<matomeQuote body="こんにちは、libvipsの作者です。これがlibvipsとメモリ断片化に関する多分公式なスレッドで、一番面白いグラフがあるよ。<br>https://github.com/lovell/sharp/issues/955#issuecomment-5458...<br>（その特定のグラフはglibからmuslメモリallocatorへの切り替えのものだけど、Jemallocでも非常によく似た結果になるんだ）" userName="jcupitt" createdAt="2025/06/15 14:16:26" color="#785bff">}}




{{<matomeQuote body="あの3つは全部画像処理engineとしてlibvipsを使ってるんだよね。だから、あまり広い調査とは言えないかもね。<br>libvipsはかなり高度にマルチスレッド化されてて、大量のalloc/freeをするから、ほとんどのheap実装にとっては大変なんだ。" userName="jcupitt" createdAt="2025/06/15 16:08:35" color="#45d325">}}




{{<matomeQuote body="僕たちもlibvipsを使ってるんですよ。あなたの仕事からどれだけ恩恵を受けているか、言葉にできません！" userName="adityapatadia" createdAt="2025/06/16 14:52:09" color="">}}




{{<matomeQuote body="嫌味に聞こえたら本当にごめんね。正直な質問なんだけどさ、<br>寄付したの？やっぱり感謝を示すにはお金が一番じゃない？" userName="laszlojamf" createdAt="2025/06/13 07:54:10" color="">}}




{{<matomeQuote body="あれはmetaのプロジェクトで、開発は終了したんだ。普通のプロジェクトならその期待でいいと思うけど、ここには当てはまらないと思うよ。" userName="onli" createdAt="2025/06/13 08:22:41" color="">}}




{{<matomeQuote body="Open Collective経由でプロジェクトに定期的に寄付してるんだ。Frankly、ここはFBの関与があったからか、そこまで見てなかったんだ。" userName="adityapatadia" createdAt="2025/06/13 14:19:16" color="">}}




{{<matomeQuote body="＞jemallocがRustのバイナリから排除されたのは、開発の自然な流れより早かったのかもしれない。<br>まあ、それは一因ではあったけど、他にもいくつか理由があったんだよ。例えば、このリンクを見てみて。<br>https://github.com/rust-lang/rust/issues/36963#issuecomment-...<br>あと、jemallocが削除されたのは、そのIssueが立ってから2年も後なんだよね。<br>https://github.com/rust-lang/rust/pull/55238" userName="masklinn" createdAt="2025/06/13 05:14:49" color="#785bff">}}




{{<matomeQuote body="面白いね。そこに挙げられてる理由の一つ、arm64でのハードコードされたページサイズが、今もまだ上流で未解決の問題なんだ。<br>それがアプリ開発者に、複数のarm64 linuxバイナリを出荷させるか、一部のプラットフォームのサポートをやめさせるかって状況になってる。<br><br>動的なページサイズ（パフォーマンスのために動的なftraceスタイルのバイナリパッチングみたいな？）だと、そんなに遅かったのかな？" userName="Aissen" createdAt="2025/06/13 08:07:42" color="#785bff">}}




{{<matomeQuote body="4KBページのシステムでも、16KBページで設定されたjemallocを実行できるよ。" userName="pkhuong" createdAt="2025/06/13 15:31:48" color="#ff5c5c">}}




{{<matomeQuote body="俺はこれまで書いたどのゲームエンジンでもずっとjemallocを使ってるんだ。もうそれが当たり前って感じ。<br>win32のデフォルトアロケーターより断然速いし、どのプラットフォームでも同じアロケーターを使えるのが良いね。<br>FreeBSDに統合されてるのを見て知ったんだけど、それ以来手放せないよ。<br>jemallocはたくさんの人を楽しませるのに貢献してるんだ :)" userName="dazzawazza" createdAt="2025/06/13 10:40:00" color="#45d325">}}




{{<matomeQuote body="いいね！windowsのデフォルトアロケーターはダメダメだ。jemalloc最高！" userName="Iwan-Zotow" createdAt="2025/06/13 17:28:54" color="">}}




{{<matomeQuote body="＞windowsのデフォルトアロケーターはダメダメだ<br>うわ、まだそうなんだ？10年か15年くらい前のアロケーターベンチマークを覚えてるけど、他のアロケーターとの差が結構あったのに、windowsのは他のどれよりも20％くらいしか性能が出なかったりしてたもんね！" userName="ahartmetz" createdAt="2025/06/13 19:29:56" color="">}}




{{<matomeQuote body="それ以降、かなり改善されてるよ。" userName="ComputerGuru" createdAt="2025/06/14 17:24:27" color="">}}




{{<matomeQuote body="＞windowsのデフォルトアロケーター<br>どれのことかな？最近だとHeapAllocを指すこともあれば、uCRTのmallocを指すこともあるしね。" userName="int_19h" createdAt="2025/06/13 20:12:57" color="">}}




{{<matomeQuote body="uCRTのmallocはHeapAllocを呼んでるだけじゃないかな？Windows SDKをインストールしてたら、ucrt＼heap＼malloc_base.cppのコードを見れるよ。<br>プログラムはマニフェストで_segment_ heapを使うことも選べるけど、それが必ずしも速いとは限らないね。" userName="carey" createdAt="2025/06/13 21:43:01" color="#ff33a1">}}




{{<matomeQuote body="良い記事だったね。Facebookはもうjemallocを全く使ってないのかな？それともメンテナンスモード？<br>それか、最近はtcmallocとか他のアロケーターを使ってるのかな。<br>Facebookのインフラエンジニアリングは、コア技術への投資を減らして、投資対効果を重視するようになったんだよね。" userName="chubot" createdAt="2025/06/13 02:51:29" color="#45d325">}}




{{<matomeQuote body="MetaではJemallocがめっちゃ深く統合されてて、他のAllocatorに変えるのは超難しいみたいだよ。Meta専用のツール（Strobelightとか）と連携してたり、Jemallocの機能（arenaとかextent hooksとか）使いまくってるからさ。アプリもJemallocに合わせて最適化されてるんだって。" userName="Svetlitski" createdAt="2025/06/13 04:17:53" color="#ff5c5c">}}




{{<matomeQuote body="Metaはまだjemallocのフォークを開発してるらしいよ。ここ見てみて。<br>https://github.com/facebook/jemalloc" userName="charcircuit" createdAt="2025/06/13 04:51:53" color="">}}




{{<matomeQuote body="記事のポイントは、Metaのjemalloc開発は一般的な用途よりMetaのニーズに偏ってるってことだよ。<br>記事では「Metaの最近の変化で、一般的な用途を視野に入れた長期開発の主導者がいなくなった」とか「Facebook/Metaの手でjemallocが悲しい結末を迎えた」とか「Metaのニーズは外部ユーザーとずれ始めたから、Metaは自分たちのやり方でやるのが良い」って書いてあるね。" userName="nh2" createdAt="2025/06/13 12:37:24" color="#ff33a1">}}




{{<matomeQuote body="でも、具体的にどういう意味なのか知りたいな。Facebookの焦点が自分のニーズと合ってるかどうか、どうやったら分かるんだろう？" userName="nh2" createdAt="2025/06/13 12:41:13" color="">}}




{{<matomeQuote body="今はベンチマークで見てみればいいんじゃない？<br>長期的なことは、過去を見れば推測できると思うよ。" userName="ahartmetz" createdAt="2025/06/13 23:33:18" color="">}}




{{<matomeQuote body="ReactとかPyTorchとかRocksDBはめちゃくちゃ重要だよ。それに、Linuxカーネルへの最大の貢献者の一つだってことも忘れないでほしいな。" userName="umanwizard" createdAt="2025/06/13 18:06:55" color="#785bff">}}




{{<matomeQuote body="大きな変化は、jemallocの長期メンテナーがいなくなったことだね。でも、Facebookからは前より注目されてるらしいよ。最近ちょっと変な方向にも注目が集まっちゃったみたいだけど、今後QiさんやJasonさんが同意するような、外部ユーザーのニーズと合う方向に向かうとちょっと楽観的に見てるんだ。" userName="anonymoushn" createdAt="2025/06/13 06:06:21" color="#38d3d3">}}




{{<matomeQuote body="前にこれについて疑問に思ったことあるけど、知ってる人が周りにいなくて聞けなかったんだよね。部外者から見ると、今まで見たベンチマークだと、jemallocってglibcのmallocより厳密に改善されてるみたいだった。だから、なんでそれがデフォルトのアロケータじゃないの？" userName="kstrauser" createdAt="2025/06/13 02:54:38" color="#45d325">}}




{{<matomeQuote body="免責事項: 僕はアロケータエンジニアじゃないし、これはただの逸話ね。<br>OSアロケータをメンテしてたエンジニアの話だと、カスタムアロケータって、システム全体の他のプロセスを犠牲にして、ある一つのプロセスのメモリアロケーションを速くする傾向があるらしいんだ。システムアロケータは全体を公平にするのが苦手で。特定のプロセスを優先したいサービスで推奨されるのはそのためだって。" userName="favorited" createdAt="2025/06/13 03:21:35" color="">}}




{{<matomeQuote body="それはあまり擁護できない主張だと思うよ。jemallocもtcmallocも、特定の圧倒的なアプリケーションが一つだけじゃない、敵対的なマルチテナント環境で進化し洗練されてきたんだ。まさにそういう状況に最適なんだよ。" userName="jeffbee" createdAt="2025/06/13 03:25:46" color="#ff33a1">}}




{{<matomeQuote body="彼らが自分のプラットフォームやそのシステムアロケータについて特定のことだったのかもしれないけど、言った通り、それはあるエンジニアの言葉に関する逸話だったんだ。聞いた時は筋が通ってるって思ったのを覚えてるだけだよ。" userName="favorited" createdAt="2025/06/13 03:48:26" color="">}}




{{<matomeQuote body="”システム”アロケータはプロセス境界内でメモリを管理してるんだよ。カーネルはプロセス間を管理してるんだ。ユーザー空間のアロケータが貪欲に非効率だなんて主張は、主張してる人がアーキテクチャをよく分かってないことを示唆する、ブードゥーみたいな理屈だよ。" userName="vlovich123" createdAt="2025/06/13 04:54:40" color="#785bff">}}




{{<matomeQuote body="僕が知る限り、jemallocがデフォルトのアロケータであるべきでない技術的な理由は何も無いよ。実際、記事で指摘されてるように、FreeBSDではデフォルトなんだ。僕の理解では、それは主に政治的なものだと思うな。" userName="sanxiyn" createdAt="2025/06/13 03:00:13" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そういえば、Hurdとかではビルドできないからglibcから外されてるってのは簡単に想像できるな。" userName="kstrauser" createdAt="2025/06/13 03:49:28" color="">}}




{{<matomeQuote body="長い間、代替アロケータの大きな問題は、フリーメモリをOSに戻さずプロセス内に保持することだったんだ。これは変わったけど、優先順位の違いを示してるね。<br>あと、多くのプロセスはシングルスレッドか、ほとんど何もしないバックグラウンドスレッドしかない。だから”マルチスレッド優先アロケータ”は価値がなく、オーバーヘッドが大きいんだ。<br>余談だけど、ページのゼロ化作業量はカーネルもユーザーランドも同じだよ。" userName="o11c" createdAt="2025/06/13 04:29:08" color="#ff5c5c">}}




{{<matomeQuote body="glibcに入らなかったのって、BSD-2-Clauseライセンスだからじゃないの？それが「政治的」ってことかぁ。" userName="lloeki" createdAt="2025/06/13 06:41:46" color="">}}




{{<matomeQuote body="えっ？BSDライセンスってGPLと互換性あるじゃん。<br>問題はFacebookがシステムの大事な部分の元締めになっちゃうことだよ。<br>Facebookは今回みたいにすぐやめちゃえるしね。" userName="vkazanov" createdAt="2025/06/13 07:00:40" color="">}}




{{<matomeQuote body="「貪欲」って言ってるのは、たぶんメモリをすぐにOSに返さないことじゃない？" userName="jdsully" createdAt="2025/06/13 05:21:32" color="">}}




{{<matomeQuote body="それって変だね。<br>だってそれってglibcのアロケータの主な批判の一つだからさ。" userName="nicoburns" createdAt="2025/06/13 09:45:13" color="">}}




{{<matomeQuote body="互換性はあるけど、そこがキモじゃないんだよ。<br>もしglibcに入ったら、後で追加されるコードとかでLGPLのハードフォークになっちゃう。<br>それに、この壁もあるし→ https://sourceware.org/glibc/wiki/CopyrightFSForDisclaim AppleがC blocksをGCCに戻せなかったのもこれが理由だったような。" userName="lloeki" createdAt="2025/06/13 07:20:32" color="#ff33a1">}}




{{<matomeQuote body="ちょっと関連する話だけど、あまり考えないこと。<br>カーネルがメモリをゼロクリアするのと、ユーザーが自分のためにゼロクリアするのって、作業量は同じなんだ。<br>カーネルはSIMDを使えないから、もしかしたらユーザーの方が楽かもね。" userName="senderista" createdAt="2025/06/13 07:09:41" color="#38d3d3">}}




{{<matomeQuote body="こういうアロケータが生まれたコンテナ環境だと、メモリをOSに返してもほとんど意味ないよ。<br>コンテナが使える分は全部持ってた方がいいって。<br>だって他のコンテナが使えないし、使えるメモリ量は決まってるんだから。" userName="jeffbee" createdAt="2025/06/13 13:09:41" color="#38d3d3">}}




{{<matomeQuote body="AppleがGPL系のコードを嫌うのは、オープンにしないと使えないからだよ。<br>コードの管理権を手放したくないんだね。<br>Llvmは大丈夫。元はオープンだけど、自分たちだけのバージョンを作って配れるからさ。" userName="vkazanov" createdAt="2025/06/13 10:52:39" color="">}}




{{<matomeQuote body="えっ、なんで？<br>Linuxって暗号化にはSIMD使ってるんじゃないの？" userName="LtdJorge" createdAt="2025/06/13 09:47:20" color="">}}




{{<matomeQuote body="AppleがGPL嫌いってわけじゃなくね？<br>C blocksの件では、Appleはgccパッチを戻そうとしたけど、FSFが著作権を自分によこせってゴネて揉めたんだよ。<br>ホントにGPL嫌いなら、そんなことしないって。<br>嫌いになったのは、GPLv3とかFSFのポリシーが出てきてからだよ。<br>Lwnの記事にも書いてある→ https://lwn.net/Articles/405417/ FSFの著作権ポリシーが問題なんだ。" userName="lloeki" createdAt="2025/06/13 12:30:12" color="#ff33a1">}}




{{<matomeQuote body="カーネルでSIMD命令を勝手に使うと、結構なペナルティがあるんだよ。Linuxが具体的にどうしてるかは知らないけどさ。syscallする時、カーネルはスレッドのユーザーモードの状態をバックアップして、後で戻せるようにする必要があるんだ。もしカーネルコードがSIMDレジスタも使っていいなら、それもバックアップ・リストアしなきゃいけないんだけど、そのレジスタがデカいんだよね。簡単に syscall ごとに1KBのコピーが増える可能性があって、たいていの場合はそんなの要らないのにね。" userName="dwattttt" createdAt="2025/06/13 12:34:43" color="#ff33a1">}}




{{<matomeQuote body="＞jemalloc と tcmalloc は、一つの圧倒的なアプリケーションがない敵対的なマルチテナント環境で進化・洗練されたんだ。そういう状況にまさに最適なんだよ。<br>彼らは主に Facebook/Google のサーバーサイドシステムで最適化されたんでしょ？ それってVMごとにアプリケーションが一つとかだったんじゃない？（ユーザーが複数のアプリケーションを協調して動かしたいデスクトップ利用とは違って）。Firefox は違うケースだけど、どうも本流の jemalloc は Firefox 版には敵わなかったみたいだし、それにしても Firefox は”自己中心的”なアロケーターで恩恵を受けただけって可能性も十分あるよね。" userName="lmm" createdAt="2025/06/13 07:22:27" color="#45d325">}}




{{<matomeQuote body="なんでそうなの？ syscall 自体がSIMD呼び出しの周りでpush_simd() ＼ pop_simd()みたいなのを使えばいいんじゃない？<br>もし今syscallがSIMDを使ってないなら、安全な位置から始められると思うけどな。" userName="kstrauser" createdAt="2025/06/13 14:03:43" color="">}}




{{<matomeQuote body="ちなみに、僕が話してた”allocator engineer”はカーネルエンジニアだったんだ。彼らは自分のプラットフォームのアーキテクチャをものすごくよく理解してるよ。<br>プラットフォームのシステムアロケーターであることの最大の利点は、ライブラリ関数とカーネル実装の間に密な関係を持てることなんだ。" userName="favorited" createdAt="2025/06/13 05:57:41" color="">}}




{{<matomeQuote body="もう使わなくなった匿名メモリを解放することには、メリットがちゃんとあるんだ。<br>ページを返すと、ディスクキャッシュとして使えるようになる。カーネルがバックグラウンドでゼロクリアしておけば、また必要になった時に時間を節約できるかもしれないし、もしカーネルがフルページDMAライトの宛先として使うならゼロクリアを回避できる可能性もある。<br>それに、使われなくなったページを返すのは、より正確なメモリ使用量の測定に近づく手助けになるよ。もちろんメモリ使用量の測定はかなり難しいけど、数字が少しでも正確になるのは助かるよね。" userName="toast0" createdAt="2025/06/13 16:03:01" color="#ff33a1">}}




{{<matomeQuote body="これらのアロケーターは、起動コストが高いことが多いんだ。定常状態での高いパフォーマンス向けに設計されてるから、unixスタイルで短命なプロセスをたくさん起動するようなワークロードには向かない可能性があるね。" userName="jeffbee" createdAt="2025/06/13 03:06:37" color="#38d3d3">}}




{{<matomeQuote body="あれは皮肉だよ、Darth Vaderの声で分かったと思ったんだけどな。<br>でもライセンス変更は実際に起こるし、それで大騒ぎになることもあるよね。redisの件を思い出して。<br>著作権譲渡の原因は、実践的な理由（すべての作者や貢献者を追跡・連絡して回答を集めるのが大変で、その後の重要な決定が滞る）や思想的な理由（FSFにとってはGCCのソースコードはFSF単独の管理下に置かれなければならない）がある。<br>でも、著作権を放棄する作者たちは、その譲渡の結果をよく理解してないんだ。本質的には、コードベースが将来どういうライセンスになろうと、たとえ完全にクローズドソースになったとしても、無償で働き続けることに同意してるってことなんだよ。<br>次にCLAに署名する時は、このことを考えてみて！" userName="lloeki" createdAt="2025/06/13 17:06:32" color="">}}




{{<matomeQuote body="Googleは、”borg”の中で、1台のマシンで何十、何百もの無関係なワークロードを軽量コンテナで動かしてるんだよ。Facebookも”tupperware”っていう似たようなものを持ってるし。" userName="jeffbee" createdAt="2025/06/13 08:03:23" color="#ff5c5c">}}




{{<matomeQuote body="Googleには素晴らしいエンジニアリングがあるのは知ってるけど、これはちょっと信じがたいな？<br>ほとんどのアプリケーション、特にウェブサーバーみたいなリクエスト／レスポンス型のアプリでは、ピーク時を考慮してメモリサイズを真に正確に調整するのって、単一のリクエストに必要なアロケーション量を完全に考慮して、同時最大リクエスト数がそれを超えないようにしてOOMを防ぐリスクをなくすために、すごくエンジニアリングの労力がかかるんだ。<br>ロードバランサー、SDN、ファイルシステムみたいな極めて高スケールなコアサービスなら、これはうまくいくかもしれないね（多分、起動時にデータ構造を全部アロケートして、その後は何もアロケートしないようにして、多分それだけで何チームものエンジニアが専従してるんだろうけど）。でも、ほとんどのアプリではそうじゃないでしょ？<br>コンテナがシステムメモリを共有して、制限やリソース駆動のオートスケーリングに頼る方が、システムの回復力にとっては良いはずじゃない？" userName="atombender" createdAt="2025/06/14 19:04:11" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
