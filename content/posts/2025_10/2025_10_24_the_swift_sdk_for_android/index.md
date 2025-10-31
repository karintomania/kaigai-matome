+++
date = '2025-10-24T00:00:00'
months = '2025/10'
draft = false
title = 'SwiftのAndroid SDK登場！クロスプラットフォーム開発に新たな波が来るか？'
tags = ["Swift", "Android", "クロスプラットフォーム", "SDK", "モバイルアプリ開発"]
featureimage = 'thumbnails/purple6.jpg'
+++

> SwiftのAndroid SDK登場！クロスプラットフォーム開発に新たな波が来るか？

引用元：[https://news.ycombinator.com/item?id=45698570](https://news.ycombinator.com/item?id=45698570)




{{<matomeQuote body="クロスプラットフォームフレームワークで一番大事なのはUIがどうなるかだよね。Adobe製品はどこでも異質なデザインだったし。FlutterはCupertinoテーマでiOSにピクセルパーフェクトを目指すし、React NativeはプラットフォームのUIに任せる。AppleがAndroidでAppleのUIを使わせるのか、それとも高品質なUIを作るのか、コミュニティがどう関わるのか、それが知りたいな。" userName="bsimpson" createdAt="2025/10/24 22:08:17" color="#ff5c5c">}}




{{<matomeQuote body="UIよりビジネスロジックの共有が一番重要だと思うな。KMP (Kotlin Multiplatform) がそうであるように、Swift for AndroidでもSwiftライブラリを共有できるようになるのがメリットだよね。複雑なアプリでUIを共有するのは、結局「書いてはデバッグ」の悪夢になりがちだからね。" userName="palata" createdAt="2025/10/24 22:26:21" color="#785bff">}}




{{<matomeQuote body="クライアントチームと長く働いてきたけど、ビジネスロジックの共有は本当に大変だったよ。前のスタートアップでは、ビジネスロジックを全部GraphQLサーバーに載せて、ViewModelをクライアントに送るようにしたら、クライアント側の複雑さが劇的に減ったんだ。これは本当に効果的だったね。" userName="virtue3" createdAt="2025/10/24 22:50:13" color="#ff5733">}}




{{<matomeQuote body="ビジネスロジックはサーバーでやるべきってこと？それって昔からそうじゃなかったっけ？" userName="weird-eye-issue" createdAt="2025/10/24 23:15:50" color="">}}




{{<matomeQuote body="The Browser CompanyがSwiftUIをWindowsに移植したのはすごいよね。Swift for Androidも、SwiftUIの要素がJetpackの要素にマッピングされるような形になったらクールだね。SwiftUIって、iOSやmacOSでも「ネイティブ」ってよりは、フレームワークが解釈してUIを作る記述言語だからね。" userName="kridsdale3" createdAt="2025/10/24 22:50:09" color="#ff5c5c">}}




{{<matomeQuote body="KMPも経験あるけど、開発者体験が最大の課題だよ。iOS開発者はデバッグしにくいし、KotlinとSwiftでモデルの不一致もある。結局、Kotlin MultiplatformもKotlin for Androidとは違うから、実質3つ目の言語を導入してるようなものなんだよね。" userName="andrekandre" createdAt="2025/10/24 23:54:22" color="#ff5733">}}




{{<matomeQuote body="OPはたぶんローカルのビジネスロジックについて話してるんだよ。例えば、パスワードが最低3文字必要みたいなやつ。ユーザーに即座にフィードバックするために、フロントエンドでバリデーションするって話だね。" userName="sunnybeetroot" createdAt="2025/10/25 21:09:24" color="">}}




{{<matomeQuote body="すごく unpopular opinion だけど、俺は「ネイティブ」な見た目より、独自のUXを持つアプリが好きだな。ゲーム開発が好きだから、退屈で面白くないネイティブアプリより、クレイジーなデザインの方が断然いい。最近のAppleのアップデートも、この考えをさらに強くしたよ。" userName="rustystump" createdAt="2025/10/24 23:48:57" color="">}}




{{<matomeQuote body="APIが十分速くてエッジにホストされていれば、サーバーサイドでのバリデーションでも即座にフィードバックできるよ。" userName="weird-eye-issue" createdAt="2025/10/26 02:04:32" color="">}}




{{<matomeQuote body="クライアントにビジネスロジックを置くなんてありえないでしょ。サーバー側で必ず検証が必要になるし、二重挿入とか競合状態も防げない。ソロ開発者なら特に、サーバーが真実の唯一のソースであるべきだよ。<br>TypeScriptでクライアントとサーバーが同じコードベースを共有する場合を除き、サーバーと同じ言語じゃないなら論外だね。" userName="noduerme" createdAt="2025/10/25 04:39:53" color="#45d325">}}




{{<matomeQuote body="Swift SDK for AndroidはUIを強制しないよ。Skip.toolsを使えばSwiftUIをJetpack Composeにブリッジして、UIもビジネスロジックも同じコードベースで書けるんだ。<br>詳しい情報はhttps://skip.tools/blog/fully-native-android-swift-apps/を見てね。Skip Showcaseアプリも試してみて！https://skip.tools/docs/samples/skipapp-showcase-fuse/<br>（注: 僕はSkipの社員で、Swift Android Workgroupの創設メンバーでもあるよ。）" userName="marcprux" createdAt="2025/10/24 23:05:45" color="#ff5733">}}




{{<matomeQuote body="この実装はUIの作り方を強制しないよ。Jetpack ComposeとKotlinでAndroidのネイティブUIを使いつつ、Swiftのビジネスロジックを呼び出せるんだ。Swiftで書かれたUIフレームワークも使えるよ。<br>Swiftの特性（参照カウント、GCなし、共通のライブラリや並行処理モデル、メモリモデル）は他のプラットフォームと同じで、今後の革新に繋がるだろうね。<br>（注: 僕はAppleのデベロッパーツールとフレームワークに関わってるよ。）" userName="timsneath" createdAt="2025/10/24 22:17:18" color="#ff33a1">}}




{{<matomeQuote body="遅延は自分のAPIだけじゃなくて、ユーザーのネット環境とか外部要因にも左右されるからね。開発環境みたいに何でもうまくいくって思い込んじゃダメだよ。現実のユーザーはもっと厳しい状況で使ってるから、そこを考慮するのは大事だ。" userName="sunnybeetroot" createdAt="2025/10/26 05:33:45" color="">}}




{{<matomeQuote body="返信ありがとう！でも正直、Skip.toolsのデモはAndroidだとニセモノっぽく見えるよ。Androidを最初からサポートしないアプリならマシかもしれないけど、全ての顧客に配慮したいならこの方向はおすすめしないな。<br>元のブログ記事に「UIにはSwiftでビジネスロジックを書き、AndroidのSDKでインターフェースを作るか、Skip.toolsのようなライブラリを使ってSwiftUIアプリを直接書ける」みたいな言及があると良いと思う。" userName="bsimpson" createdAt="2025/10/24 23:39:01" color="#ff33a1">}}




{{<matomeQuote body="もうすでに実現してるよ！SwiftUIをJetpack ComposeにするSkip.toolsもあるし、SwiftCrossUIっていうmacOS/Linux/Windows/Android/TUIをサポートする面白いプロジェクトもある。<br>それと、SwiftUIはもう「ネイティブ」化が進んでて、Liquid Glass UIもSwiftUIで書かれてるんだ。UIKitやAppKitがSwiftUIビューをラップするようになり、SwiftUIの部品がUIKit/AppKitの実装から置き換えられてきてるんだよ。" userName="wahnfrieden" createdAt="2025/10/25 02:05:00" color="#45d325">}}




{{<matomeQuote body="もしアプリをオフラインで動かしたいなら、どうすればいいの？" userName="forgotusername6" createdAt="2025/10/25 09:05:16" color="">}}




{{<matomeQuote body="それは前のコメントの人が提案してることと真逆だよ。前の人は、ビジネスロジックをGQL/Apolloサーバーに移して、クライアントはそれを簡単に取り込めばいいって言ってるんだ。" userName="throwup238" createdAt="2025/10/25 05:22:06" color="">}}




{{<matomeQuote body="FlutterはiOSのLiquid GlassやAndroidのMaterial 3で苦戦してるよ。これらの新しいUI言語の実装には相当な労力が必要なのに、今のところFlutterのロードマップには入ってないみたいだ。" userName="dvtkrlbs" createdAt="2025/10/25 10:22:10" color="#ff33a1">}}




{{<matomeQuote body="React Nativeはクロスプラットフォームにかなり向いてるけど、最初から全プラットフォームでちゃんとテストしないとダメだね。iOSだけのReact Nativeアプリを後からAndroidに移植しようとすると、最初は最初は結構大変なことになるかも。" userName="raspasov" createdAt="2025/10/25 03:10:49" color="">}}




{{<matomeQuote body="Liquid Glassなんてどうでもいいよ。AppleにとってのWindows Vistaみたいなもんさ。" userName="zigzag312" createdAt="2025/10/25 11:13:00" color="">}}




{{<matomeQuote body="彼らが言ってたことは分かったよ。なんで前のコードの持ち主たちが、ビジネスロジックをクライアント側に置くって決めたのか不思議だね。" userName="noduerme" createdAt="2025/10/25 06:45:26" color="">}}




{{<matomeQuote body="GCなしでトランスピレーションってどう動くの？Kotlinで相当するものは全部GCヒープに割り当てられるオブジェクトだと思うんだけど。" userName="wffurr" createdAt="2025/10/24 22:41:01" color="#45d325">}}




{{<matomeQuote body="＞デモがAndroidでは偽物に見えるって意見に対して、Android側ではSkipアプリはJetpack Composeを直接使ってるよ。これは最近のAndroidアプリ開発でGoogleが公式に推奨してるツールキット（https://developer.android.com/compose）なんだ。他のクロスプラットフォームツールみたいにネイティブUIを真似してるわけじゃなくて、Google推奨のAPIを実際に使ってるんだぜ。" userName="marcprux" createdAt="2025/10/25 00:14:45" color="#785bff">}}




{{<matomeQuote body="ごく一部のユーザーがフォームのバリデーション結果を受け取るのに1秒かかっても、ビジネスには影響ないでしょ。" userName="weird-eye-issue" createdAt="2025/10/26 07:20:02" color="">}}




{{<matomeQuote body="アプリのそんな中核部分に、クローズドソースのソリューション（プラットフォームのネイティブソリューション以外）を使うのは大反対だな。" userName="dvtkrlbs" createdAt="2025/10/25 10:19:04" color="">}}




{{<matomeQuote body="議論はもう決着したんじゃないかな。Facebook、Whatsapp、Youtube、Tiktokみたいなトップアプリはどれもネイティブデザインを使ってないし、ユーザーは単に気にしてないんだよ。" userName="realusername" createdAt="2025/10/25 07:02:36" color="#ff5733">}}




{{<matomeQuote body="うん、すごく不安になるのはわかる。でも、僕の理解では、ほとんどオープンソースなんだ（追記：ビルドツールは違うけどね）。彼らのトランスパイラソリューションは少なくともメンテナブルなKotlinコードを生成するから、Skipなしで直接作業を始められるよ。ただ、トランスパイラ方式はAndroid上のネイティブSwift SDKより制限が多いけどね。<br>僕は主にiOS/Macに注力してきたから、これをきっかけに使うことを考えてる。もしAndroidで十分な新しい収益源を生み出せれば、SkipなしでそれをやるAndroid開発者を雇う余裕もできるだろうしね。" userName="wahnfrieden" createdAt="2025/10/25 15:44:44" color="#ff5733">}}




{{<matomeQuote body="＞もしウェブサイトも持っていたら、そのロジックをフロントエンドで二重に実装することになる…それはReact Nativeを支持する意見だね、欠点があってもね。" userName="fragmede" createdAt="2025/10/25 09:39:13" color="">}}




{{<matomeQuote body="＞例えばKotlinの例外はSwiftからキャッチできないって意見に対して、ちなみにswift-javaがJava（とKotlinも）の関数呼び出しの相互運用性を管理する方法だと、JVMがスローした例外を、キャッチしてSwiftのエラーとして再スローするラッパーを使って完全にキャッチできるよ。だから、Android上で動くJVMベースのコードにSwift呼び出しを持ち込むことに関しては、ここが異なる点だろうね。" userName="airspeedswift" createdAt="2025/10/25 02:12:12" color="#785bff">}}




{{<matomeQuote body="アプリの見た目は自由でいいけど、システムとの連携はネイティブにすべきだね。2025年なのにiOS版Gmailアプリでドラッグ＆ドロップできないのはありえない。GmailのアカウントだとメールアプリでIMAPのリアルタイムプッシュ通知もないし、ほんと困るよ。" userName="planb" createdAt="2025/10/25 10:43:14" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これが公式プロジェクトになったのはめちゃくちゃ嬉しいね！これまでRNとかFlutterとかのマルチプラットフォームフレームワークを触ってみたけど、どうもしっくりこなかったんだよね。やっぱりプラットフォームごとのネイティブUIを使って、ビジネスロジックだけ共有できるのが理想だよ。KMPもあるけど、普通はまずiOS用に作って、うまくいったらAndroidに移植するってパターンが多いと思うし。Swift Packageでコードを共有できるなら、ますます便利になるから期待してる！" userName="trevor-e" createdAt="2025/10/24 21:11:41" color="#785bff">}}




{{<matomeQuote body="JavaScriptでビジネスロジックをクロスプラットフォームで共有するってのは、もっと注目されるべきだと思うんだ。JavaScriptCoreとかQuickJSを使えば、iOS (v7.0+), Android、ウェブ、サーバーサイドで動くし、何よりホットリロードできるのが最高だよ。モバイル開発って一度アプリをリリースしたら、いつまでも古いバージョンが使われ続けるのがフラストレーションなんだよね。SDKのアップデートはもっと大変だし。9年も上司に提案してるけど、まだOKが出ないんだ。" userName="frankus" createdAt="2025/10/24 21:46:37" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、君、何か見落としてるよ。みんな、アプリと一緒にChromiumをバンドルするなんて絶対嫌だし、Discordのモバイルアプリは嫌われてるけど、あれがChromiumを使ってるって知ってる？" userName="bpavuk" createdAt="2025/10/24 22:02:40" color="">}}




{{<matomeQuote body="iOSを先に作って、後からAndroidに移植するってのが一般的なのかな？Java開発者は1億人規模でいるし、Androidアプリは簡単に作れるよ。それに比べてSwift/Objective-Cのデベロッパーはその10分の1くらいしかいないと思うな。アメリカ以外ではiPhoneはニッチな製品だし。会社だとiPadや仕事用iPhoneは使うけど、Windowsやブラウザが主要プラットフォームで、モバイルは二の次って感じじゃない？" userName="a3w" createdAt="2025/10/24 21:51:27" color="#ff5c5c">}}




{{<matomeQuote body="開発者の数じゃないんだよ。アメリカでビジネスするなら、収益のほとんどはiOSユーザーから来るんだから。" userName="twof" createdAt="2025/10/24 21:55:23" color="">}}




{{<matomeQuote body="アメリカではiOSの市場シェアは相変わらず強いよ。スマホの出荷台数も50%を下回ることはないんだ。<br>https://counterpointresearch.com/en/insights/us-smartphone-m..." userName="makeitdouble" createdAt="2025/10/24 22:14:34" color="">}}




{{<matomeQuote body="これって.NETとMvvmCrossを使えば、もう実現できてることだよ。共有のコアライブラリに、各プラットフォームごとのネイティブUIを組み合わせるんだ。C#でUIKitを扱うのはすごくいい感じだし、Xamarinの時代からNugetのエコシステムと一緒にずっとうまく動いてるんだから。" userName="ivm" createdAt="2025/10/24 21:30:34" color="#ff5c5c">}}




{{<matomeQuote body="React.NativeはChromiumを使ってないよ。" userName="cyberax" createdAt="2025/10/24 22:23:52" color="">}}




{{<matomeQuote body="Xamarin (.NETとMvvmCross) もRNやFlutterと同じクロスプラットフォーム開発のカテゴリだと思うよ。最近見てないから変わってたらごめんね。" userName="trevor-e" createdAt="2025/10/24 21:49:02" color="">}}




{{<matomeQuote body="世界のOSシェアを無視しても、iOSユーザーはApp StoreでGoogle Playよりずっと多くお金を使うんだ。稼ぐにはお金が集まる所に行くべきだよね。iOS App Storeの収益はスマホ市場の約30%しかないのに、Google Playより圧倒的に大きいんだよ。参考記事：https://sqmagazine.co.uk/iphone-vs-android-statistics/" userName="giobox" createdAt="2025/10/24 22:43:39" color="#ff5733">}}




{{<matomeQuote body="ちょっと知りたいんだけど、React.NativeってChromiumを使わないのに、どうやってネイティブUIを実装してるの？" userName="liqilin1567" createdAt="2025/10/25 02:34:14" color="">}}




{{<matomeQuote body="OTAアップデートは便利だよね。RNやFlutterが対応してるのに、ネイティブiOSでできないのは意外。技術的には動的フレームワークを使えば可能らしいけど、実際はサーバー設定でカバーしやすいかな。" userName="trevor-e" createdAt="2025/10/24 21:59:59" color="">}}




{{<matomeQuote body="Xamarin (今の.NET) とXamarin.Forms UIフレームワーク (今のMAUI) は混同しない方が良いよ。前者はC#用のネイティブバインディングで、ネイティブUIをプラットフォームごとに作ってロジックだけ共有する。後者はRNみたいに一度書けばどこでも動くアプローチだからね。" userName="ivm" createdAt="2025/10/24 22:03:31" color="#ff33a1">}}




{{<matomeQuote body="OTAアップデートは昔は許されてたけど、Appleが完全に禁止したんだよ。RNを使っても、技術的にはダメなはずだけどね…。" userName="giancarlostoro" createdAt="2025/10/24 23:07:22" color="">}}




{{<matomeQuote body="Protonでは、共通ロジックにRustを使ってるんだって。コードベースの80%以上がRustらしいよ。残りはプラットフォーム固有の部分だって言ってた。" userName="icar" createdAt="2025/10/24 22:12:38" color="#ff5733">}}




{{<matomeQuote body="RNにはChromiumは入ってないよ。最適化されたJSランタイムのHermesを積んでるんだ。あと、DiscordのiOSアプリはRNを使ってなくて、ネイティブアプリだよ。" userName="wiseowise" createdAt="2025/10/25 07:38:07" color="#ff5c5c">}}




{{<matomeQuote body="iOS開発はAndroid開発に比べて15年くらい遅れてる気がする。Xcodeが最悪だし、Appleの投資不足でエコシステムが疲弊してるから、簡単なことでもすごく大変なんだ。いろんな会社で聞いたけど、iOSのリポジトリはひどいパッチワークで、iOSを更新するとすぐ壊れるって話ばかり。今の会社だと、iOS開発者4人の方がAndroid開発者1.5人より実装に時間がかかってるよ。GoogleのKMPチームも、一番熱心なユーザーはiOS開発者で、ツール地獄から救ってほしいって懇願してたらしい。iOS開発者の採用やプロジェクトの維持にはどこも苦労してるね。" userName="crowbahr" createdAt="2025/10/25 14:14:10" color="#ff5733">}}




{{<matomeQuote body="平均支出額は、親コメントの米国企業の収益って文脈ではあまり意味ないんだ。例えばNetflixやHertz、Walmartみたいな企業の場合、iOSユーザーからの収益は、結局iOSとAndroidどっちのユーザーが多いかで決まるからね。ゲーム会社が「whale」狙いなら話は別だけど。" userName="makeitdouble" createdAt="2025/10/25 03:21:01" color="#785bff">}}




{{<matomeQuote body="React NativeはFlutterやCompose Multiplatformと違って、プラットフォームネイティブUIを使うんだ。5年前と比べてものすごく進化してて、特に今年は速度面で多くの改善があったよ。新しいアーキテクチャやReact Compiler、Hermes v1、Nitro Modules、Flash List v2、Legend List、React Native Skia、React Native WebGPU、Expo Use DOMなど、たくさんの技術革新があったんだ。JS/TSのツールも大幅に良くなってるよ。" userName="pzo" createdAt="2025/10/24 21:59:37" color="#ff33a1">}}




{{<matomeQuote body="なるほど、説明ありがとう。.NET製アプリの欠点は、ランタイムのせいでバイナリサイズが大きくなっちゃうことなんだ。これは今も変わらないかな？Swift for Androidでも同じ問題があるかもしれないけど、まだ確認してないよ。" userName="trevor-e" createdAt="2025/10/24 22:48:30" color="">}}




{{<matomeQuote body="ソーシャルメディア企業みたいにネットワーク効果が重要な場合でも、iOSファースト戦略は有効だよ。Snapも最初はそれで、会社が潰れるなんてことはなかったし。これはクロスプラットフォーム互換性が本当に重要なケースだよね。SnapChatにはWebクライアントがないから。HertzやCostcoなら、AndroidユーザーをWebに誘導しても特に問題ないと思うよ。" userName="xethos" createdAt="2025/10/25 04:33:42" color="#ff5733">}}




{{<matomeQuote body="地域によるだろうけど、アメリカではiOSファーストが一般的だよ。両方開発した経験から言うと、これは納得。iOSは圧倒的に収益性が高くて、サポートの手間も少ないんだ。バージョンも少なくて済み、フォームファクターも単一。メーカーごとのバグ対応も不要。コア製品を立ち上げるのに良い環境だよ。Androidは、素早いイテレーションが終わって、対応する余裕ができてからでいいと思う。" userName="cosmic_cheese" createdAt="2025/10/24 22:54:04" color="#45d325">}}




{{<matomeQuote body="うちの会社ではPixelフォンを使ってるよ。iPhoneも選べるけど、みんなPixelが良いって言うんだ。だから僕はMacBookとPixelの組み合わせ。iPhoneだけってのは、アメリカだけの現象じゃないかな。" userName="disiplus" createdAt="2025/10/24 22:04:48" color="">}}




{{<matomeQuote body="ビジネスロジックをJSで動かすなら、ブラウザは不要だよ。iOSにはJavaScriptCoreがあるし、小さいJavaScriptランタイムもたくさんある。でも、JSが全てのアプリに最適とは限らないし、もっと良い言語機能やパフォーマンスに慣れてるデベロッパーもいるだろうね。" userName="NSUserDefaults" createdAt="2025/10/24 22:31:31" color="#785bff">}}




{{<matomeQuote body="新しいレンダラーが導入されてから複雑になったけど、基本的にはReactのUIツリーをJSON形式に変換し、ネイティブ側に渡して、ネイティブ側でそれを解析してコンポーネントをレンダリングする仕組みだよ。" userName="hokumguru" createdAt="2025/10/25 02:55:14" color="#ff33a1">}}




{{<matomeQuote body="いくつかの”低レベル”なコンポーネントを、プラットフォームのプリミティブにマッピングすることで実現してるよ。詳しくは公式ドキュメントを見てね: https://reactnative.dev/docs/intro-react-native-components" userName="notpushkin" createdAt="2025/10/25 02:48:59" color="#785bff">}}




{{<matomeQuote body="React Nativeはネイティブ層にUIをネイティブでレンダリングするよう要求するんだ。" userName="adityapurwa" createdAt="2025/10/25 02:53:03" color="#ff33a1">}}




{{<matomeQuote body="え、そうだったんだ。Androidのことだと思ってたよ。最近までこれは完全にネイティブだったんだね。" userName="wiseowise" createdAt="2025/10/26 08:58:54" color="">}}




{{<matomeQuote body="ありがとう。もうReact NativeとFlutterは消えてくれ。数日経つとタッチが効かなくなる四角いUIアプリにはうんざりだよ。" userName="ls-a" createdAt="2025/10/24 21:04:03" color="">}}




{{<matomeQuote body="Flutterではコーナーラディウスを好きなように設定できるし、フレームワークもかなり速いよ。アプリがタッチに反応しないなら、それはアプリの作りが悪いんだろうね。" userName="turtlebro" createdAt="2025/10/24 21:31:38" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Flutterには、iOSで全てのインタラクションに1フレームの遅延が生じる長年の問題があるんだ（2022年からP2）。<br>https://github.com/flutter/flutter/issues/110431<br>シェーダーコンパイルのラグとかも挙げたらキリがないしね。" userName="ryeights" createdAt="2025/10/24 21:52:59" color="#45d325">}}




{{<matomeQuote body="確かに、しっかり探せばいくつか問題は見つかるさ。でも実際のところ、Flutterで高性能で機能的なアプリを出荷することは十分に可能だし、もう長い間そうだったよ。Dartや一貫した宣言型パラダイム、ホットリロードで最高の開発体験も得られる。何事もトレードオフさ、俺には2つのネイティブアプリを維持するメリットはほとんどないね。Flutterアプリを出荷している人も使っている人もたくさんいるんだ。だから、もう批判はやめてくれないか？" userName="turtlebro" createdAt="2025/10/24 22:33:02" color="#ff33a1">}}




{{<matomeQuote body="嫌いってわけじゃないよ、実は今Flutterのプロジェクトで働いてるんだ。なぜこのプラットフォームが完璧だってふりをする必要があるのか理解できないんだよね。" userName="ryeights" createdAt="2025/10/24 22:39:43" color="">}}




{{<matomeQuote body="Flutterの客観的な欠点を指摘したことへのかなり防御的なコメントだね。トレードオフだと認めるのは良いけど、トレードオフってことは必ずデメリットがあるってことだろ。iOS上のFlutterアプリがネイティブに感じられないのは事実だ。Flutterを使っている人が悪いってわけじゃないけどさ。" userName="marcellus23" createdAt="2025/10/25 18:08:09" color="#ff5c5c">}}




{{<matomeQuote body="それは事実じゃなくて、ごく一部のエリートなiOSスーパーユーザーの意見だよ。最近のネイティブなんて完全に過大評価された概念だし、良いUXのアプリを作る解決策にはならない。ユーザーはSwiftUI、Components、Widgetsのどれを使っているかなんて気にしないし、ネイティブアプリが何かなんて知らないよ。それが唯一の正しい聖なる道であるかのように振る舞うのはやめてくれ。" userName="turtlebro" createdAt="2025/10/26 01:22:49" color="#ff5733">}}




{{<matomeQuote body="“ネイティブ”ってちゃんとした意味がある言葉なのに、Flutterはネイティブじゃないんだよね。" userName="marcellus23" createdAt="2025/10/26 02:14:21" color="">}}




{{<matomeQuote body="これがそんなに問題になるってのが気になるな。Flutterアプリを試したけど、UIがちょっと違和感あるくらいで他はスムーズだったよ。Kagi Newsみたいなアプリはどうかな？" userName="rumori" createdAt="2025/10/24 22:45:39" color="#785bff">}}




{{<matomeQuote body="致命的じゃないけど、iOSユーザーには違和感があるんだよね。AndroidはGoogleがネイティブコードにアクセスできるから、もっと良いかも。Flutterのもう一つの問題は、良いライブラリや見本アプリが少ないこと。ほとんどが未完成に感じるんだ。Kagi Newsアプリは例外だけど、他のFlutterアプリ同様、Material Designが強すぎてiOSでは浮いて見える。タイポグラフィもまだ変で、スクロールやタッチ操作も『Flutterっぽい』感じ。これはプラットフォーム固有の問題だよ。" userName="ryeights" createdAt="2025/10/24 23:14:22" color="#ff33a1">}}




{{<matomeQuote body="Kagi Newsは確かに良くできたアプリだけど、iOSのネイティブっぽい見た目や操作感じゃないのは確かだね。" userName="marcellus23" createdAt="2025/10/25 18:09:28" color="#ff33a1">}}




{{<matomeQuote body="シェーダーコンパイルのラグなんて、もう何年も前の話だよ。" userName="mdhb" createdAt="2025/10/25 12:33:48" color="">}}




{{<matomeQuote body="RNとFlutterは好きじゃないけど、Swift on AndroidがFlutterやRNと比べて、どれくらい成功すると思う？Appleはこれを出してすぐ忘れちゃうんじゃないかな。" userName="bitpush" createdAt="2025/10/24 21:47:12" color="#ff5733">}}




{{<matomeQuote body="AppleはSwiftにすごい影響力があるけど、リンクにもある通りSwift for Androidはコミュニティ主導だよ。コミュニティが必要とすれば自分たちでメンテナンスするし、Appleは邪魔しないだろうね。邪魔する理由がないでしょ？" userName="bpavuk" createdAt="2025/10/24 22:05:24" color="#ff5c5c">}}




{{<matomeQuote body="なるほど、それならもっと大きな話になるね。投稿者はSwift for AndroidがFlutterとRNの問題を解決するって言ってたけど、それはAppleがお金と力でやるって意味だと思ってた。もし草の根プロジェクトなら、もっと先行き不透明じゃないかな？成功は祈るけどね。" userName="bitpush" createdAt="2025/10/24 22:53:01" color="#ff33a1">}}




{{<matomeQuote body="それは間違った二分法だよ。僕はReact、Flutter、Swift on AndroidのどれよりもKMPに賭けるね。Reactはなくならないだろうけど、5年後にはKMPがネイティブアプリのスタートアップの定番ツールになると思うな。" userName="crowbahr" createdAt="2025/10/25 14:15:47" color="#ff33a1">}}




{{<matomeQuote body="RNとFlutterを葬ってくれ、って？無理だよ。iOSストアの30%以上を占めるアプリをなくせるわけない。Flutterは、あのひどいSwiftUIと比べると、開発体験が圧倒的に優れてるんだ。SwiftUIは情けないから、今やアプリの3分の1以上がFlutterで書かれてるんだよ。「コンパイラはこの式を妥当な時間内に型チェックできません」なんてエラー、本当に最悪。人類のためにも、SwiftUIを早く葬ってくれ！" userName="lenkite" createdAt="2025/10/25 06:27:45" color="#ff5c5c">}}




{{<matomeQuote body="Flutterやってる身からすると、Xcodeや半分もドキュメントがないAppleフレームワークには金積まれても使いたくないね。アプリのビルドとアップロードプロセスはマジで苦痛だよ、これ以上は勘弁してほしい。" userName="realusername" createdAt="2025/10/25 07:12:06" color="">}}




{{<matomeQuote body="Xcodeのアップロードプロセスって大変？俺はかなり良いと思うけどな。Android Studioにはそんな機能ないし、APK/AABはブラウザから手動でアップロードしないといけないんだからね。<br>（RNで働いてるよ）" userName="anta40" createdAt="2025/10/25 14:28:12" color="">}}




{{<matomeQuote body="Appleがそのプロセスをバイパスするために社内ツールを作ったくらい酷いってことだよ。" userName="realusername" createdAt="2025/10/25 15:54:04" color="">}}




{{<matomeQuote body="このプロジェクトってSKIPトランスパイラ（https://skip.tools/blog/bringing-swift-to-android/）と関係ある？既存のSwift / SwiftUIアプリをAndroidに移植したいんだけど、React Nativeには移行したくないんだよね。" userName="TheJoeMan" createdAt="2025/10/24 20:33:15" color="#ff5733">}}




{{<matomeQuote body="うん、Skipは1年以上前からSwift SDK for AndroidのプレビューリリースをFuseモードで使ってて、すごく好評だよ！ネイティブなSwiftUIアプリをAndroid向けにビルドした記事（https://skip.tools/blog/fully-native-android-swift-apps/）も見てみて。トランスパイルとコンパイルについて補足すると、Skipには2つのモードがあるんだ。SwiftコードをKotlinにトランスパイルする「Skip Lite」と、Swift SDKを使ってAndroid向けにネイティブにコンパイルする「Skip Fuse」だね。両方動くし、Skip LiteはKotlinフレームワーク（Lottie, Firebase, Stripeとか）へのブリッジ統合に使われてるよ。モード比較は（https://skip.tools/docs/status/）、モジュールは（https://skip.tools/docs/modules/）で確認して。Swift SDK for Androidが正式になったのは本当に嬉しいよ！これで自分たちのプレビュービルドから公式版に切り替えられるからね。" userName="marcprux" createdAt="2025/10/24 22:41:34" color="#45d325">}}




{{<matomeQuote body="もうトランスパイラを使う必要はないよ。Skipは最近、AndroidでのネイティブSwift実行を追加したからね。トランスパイラよりも互換性がずっと高いんだ（両方維持はしてるけど）。" userName="wahnfrieden" createdAt="2025/10/24 21:06:34" color="#ff5c5c">}}




{{<matomeQuote body="うん、Skipはこの取り組みに大きく貢献してるよ！" userName="joanniso" createdAt="2025/10/24 20:47:08" color="">}}




{{<matomeQuote body="彼らはSDKに貢献してるの？それとも何かの統合が進んでるの？俺の理解だとSDKはAndroidバイナリに直接コンパイルされるけど、Skipはトランスパイルするんだよね？どうやって一緒に動くの？" userName="tomovo" createdAt="2025/10/26 10:01:46" color="#785bff">}}




{{<matomeQuote body="これを続けてくれるといいんだけどな。Swift Embeddedなんて、実用的なプラットフォームっていうより概念実証みたいなもんだし、解決したい問題よりそっちと戦うことになることが多いんだ。美的にはSwiftって現代の安全な言語の中で一番いいのに、もったいないよ。プロジェクトのリーダーシップに関するコミュニティの変な噂が台無しにしてるんだよね。" userName="mosura" createdAt="2025/10/24 20:59:27" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
