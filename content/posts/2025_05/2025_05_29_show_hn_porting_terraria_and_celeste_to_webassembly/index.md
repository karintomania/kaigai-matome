+++
date = '2025-05-29T00:00:00'
months = '2025/05'
draft = false
title = 'TerrariaとCelesteをWebAssemblyに移植！技術力がすごすぎる'
tags = ["WebAssembly", "ゲーム開発", "プログラミング", "Web開発", "C#"]
featureimage = 'thumbnails/blue2.jpg'
+++

> TerrariaとCelesteをWebAssemblyに移植！技術力がすごすぎる

引用元：[https://news.ycombinator.com/item?id=44101175](https://news.ycombinator.com/item?id=44101175)




{{<matomeQuote body="ゲームをWebに移植するのって楽しい趣味なんだよね！Quake IIIとCave Storyを移植したことあるよ。この記事みたいに、マジで細かいところが勝負なんだ。ゲームが動くだけじゃなくて、スマホのタッチ操作とか、マルチプレイ、セーブ管理、今の画面サイズやフレームレート対応とか、最初の移植よりずっと時間かかるんだよね。詳しくはリンク見てね。" userName="modeless" createdAt="2025/05/29 14:04:46" color="#ff33a1">}}




{{<matomeQuote body="＞”ブラウザで動くべきじゃないものがブラウザで動いてる”っていう変なプロジェクトのジャンルが好きなんだ。お気に入りは… Minecraft 1．12の直接再コンパイルとかね。へえ、Minecraftって元々Javaアプレットだったから、ブラウザで動くのはまさにふさわしいと思ってたよ。言いたいことは分かるんだけど、ちょっと面白いなと思って。" userName="delusional" createdAt="2025/05/29 07:28:54" color="">}}




{{<matomeQuote body="初期Minecraftは独立したアプリになる前にブラウザで動いてたし、最近それが再現されたんだ。classic．minecraft．net" userName="voidUpdate" createdAt="2025/05/29 10:24:19" color="#785bff">}}




{{<matomeQuote body="＞最近だって？6年前のことじゃない？https：／／news．ycombinator．com／item？id＝19861584" userName="HelloUsername" createdAt="2025/05/29 20:03:45" color="">}}




{{<matomeQuote body="もっと面白いのはね、サーバー側WebAssemblyをコンテナで動かして、それをオーケストレーションして、サンドボックス環境同士で通信させるっていうアイデアかな。なんか何かに似てる気がするんだけど、最近記憶が曖昧になってきてるな。／ｓ" userName="pjmlp" createdAt="2025/05/29 07:54:15" color="">}}




{{<matomeQuote body="きっと1972年のVM／370のこと言ってるんでしょ？" userName="baq" createdAt="2025/05/29 10:22:30" color="">}}




{{<matomeQuote body="WebSphereだ！" userName="pjc50" createdAt="2025/05/29 12:47:51" color="">}}




{{<matomeQuote body="C＃のバイナリを逆コンパイルして、WASMっていう全然違うターゲット向けに再コンパイルしたのが、どれだけそのまま動いたかっていうのは、本当にすごいね。" userName="dwattttt" createdAt="2025/05/29 02:15:23" color="#ff5c5c">}}




{{<matomeQuote body="それから、最後にちゃんと完成させるために彼らがどんだけ頑張ったかも、本当にすごいと思うよ。" userName="underdeserver" createdAt="2025/05/29 04:51:30" color="">}}




{{<matomeQuote body="この記事、C#/WASMとかC#のネイティブコードリンクの知識がちょっと必要だね。前に、C#エンジンをWASMでウェブにコンパイルする可能性について、もっと基礎的な部分から説明した記事を書いたんだ。それも補足として読むといいかも。<br>So You Want To Compile Your C# Game Engine To The Web With WASM<br>https://kylekukshtel.com/csharp-wasm-game-engine-compile-web..." userName="kkukshtel" createdAt="2025/05/29 11:41:19" color="#ff5c5c">}}




{{<matomeQuote body="デモ試そうとしたら、Firebaseで”bandwidth quota exceeded”エラー出たよ。ただの静的サイトなら、こういう心配しなくていいはずなのに。<br>CloudflareとかGithub PagesみたいなCDNでホストしたらいいのに（無料だよ！）。" userName="jasonjmcghee" createdAt="2025/05/29 03:19:38" color="#785bff">}}




{{<matomeQuote body="あ、ごめん！<br>Github Pagesに切り替えたよ。Cloudflare PagesはWASMファイルが容量制限超えるし、Github PagesはSharedArrayBufferに必要なヘッダー送れないんだ。<br>どちらもservice workerで回避できるけど、不安定になるから避けたいんだよね。" userName="coolelectronics" createdAt="2025/05/29 03:25:24" color="#45d325">}}




{{<matomeQuote body="重いアセットに関しては、Cloudflare R3の方が向いてるかもね。AWS S3みたいなもんだけど、データ転送料がかからないのがクールなところだよ（最後に確認した時だけどね！笑）。<br>あと何年も経ってTerraria買っちゃいそう。アセット手に入れて、これ試したいだけのために。すごいね :)" userName="truemotive" createdAt="2025/05/29 04:15:43" color="#ff5c5c">}}




{{<matomeQuote body="ああ、Terrariaは絶対買う価値あるよ。友達と洞窟探検する時とか特にね。<br>個人的にはMinecraftより好きだな。" userName="NortySpock" createdAt="2025/05/29 11:40:08" color="">}}




{{<matomeQuote body="service workerの“jank”って言われてるやつ、概念的にはハックっぽいけど実際は全然不安定じゃないしユーザーもほぼ気づかないよ！<br>他のservice workerと組み合わせたい時以外は使いっぱなしで大丈夫（組み合わせは全然できないけど）。<br>参考リンクはこちら：<br>https://github.com/gzuidhof/coi-serviceworker<br>https://github.com/WebReflection/mini-coi" userName="bakkoting" createdAt="2025/05/29 20:04:24" color="#785bff">}}




{{<matomeQuote body="ファイルがどれだけうまく圧縮できるかにもよるけど、これ試してみるのもいいかも：<br>https://developer.mozilla.org/en-US/docs/Web/API/Compression..." userName="tech234a" createdAt="2025/05/29 04:18:05" color="#38d3d3">}}




{{<matomeQuote body="そうそう：これ、最初にロードした時にservice workerがまだ読み込まれてないから、手動でリロードするまで真っ白なページになっちゃうよ。<br>service workerのインストールイベントでページを強制リロードすると直せるかも。<br>あとね：これめちゃくちゃクールだよ。書いてシェアしてくれてありがとう！" userName="hoten" createdAt="2025/05/29 03:38:29" color="#ff5733">}}




{{<matomeQuote body="最近WASM+OpenGL+SDLでウェブ向けゲーム開発始めたんだけど、簡単にできてびっくり！<br>コードをウェブで動かすよりCMakeファイルいじってる時間の方が長かったくらい。<br>ウェブプラットフォームにはまだ粗い部分もあるけど、WindowsやMacOS向けにコンパイルするよりWASMの方がずっと楽だったよ。" userName="James_K" createdAt="2025/05/29 09:16:39" color="#ff33a1">}}




{{<matomeQuote body="バカな質問なんだけどさ：Wasm使う時ってブラウザの便利なテキスト描画機能とか使えるの？それとも結局canvasに描画するだけ？" userName="Fraterkes" createdAt="2025/05/29 10:25:32" color="">}}




{{<matomeQuote body="この状況だとWASMとJSに違いはないんだ。<br>canvas使うことになったら自分でテキスト描画する必要があるよ。これはJSとかWASMのせいじゃなくて，壊れたweb APIスタックのせいなんだ（ちゃんとレイヤーになってないし，全体的に逆さまなんだ。例えばDOMの上にcanvasがあるべきなのに，canvasがDOMの上に座ってるんだ。）" userName="flohofwoe" createdAt="2025/05/31 07:52:39" color="#ff33a1">}}




{{<matomeQuote body="Emscriptenっていうライブラリがあってさ，色んなものをWASMにクロスコンパイルできるんだ。<br>つまりね，SDL_ttfみたいなフォント描画のための依存関係を普通に引っ張ってこれるってことだよ。" userName="James_K" createdAt="2025/05/29 18:07:15" color="#ff5733">}}




{{<matomeQuote body="著作権について心配してるよ。個人的な利用だけだよね？<br>ちなみにWASMでクラウドゲームサービスをやってるんだ（https://gaming.inlinestyle.it）。よかったら見て，改善点教えてくれると嬉しいな！" userName="inlinestyle_it" createdAt="2025/05/30 10:04:31" color="">}}




{{<matomeQuote body="あなたの（？）ウェブサイト，リソース食いすぎてヤバすぎるんだけど。i5-7500Tでもまともに動かすのに苦労するよ。ブラウザ全体が崩壊する感じ。" userName="71bw" createdAt="2025/05/29 06:11:26" color="">}}




{{<matomeQuote body="そのサイトでjavascript無効にすると完璧に動くよ。<br>たぶんパフォーマンスを破壊してるのはこれだね：https://velzie.rip/static/background.js" userName="doix" createdAt="2025/05/29 07:47:09" color="#785bff">}}




{{<matomeQuote body="WASMで動くCeleste Classic：https://midzer.de/wasm/celeste/" userName="midzer" createdAt="2025/05/29 06:27:13" color="#45d325">}}




{{<matomeQuote body="なぜかゲームが倍速で動いてるみたい。めっちゃ難しいね。" userName="badmintonbaseba" createdAt="2025/05/29 08:34:17" color="">}}




{{<matomeQuote body="たぶんゲームはフレームレートが60hz固定だけど、君は120hzのディスプレイ使ってるんじゃない？ ChromeとFFはこういう場合requestAnimationFrameを120hzで動かすらしいよ（Safariは60hzのままだけど）。" userName="flohofwoe" createdAt="2025/05/29 08:46:28" color="#ff33a1">}}




{{<matomeQuote body="ああ、たぶんそうかも。確かに120hzのディスプレイ使ってるわ。それでも1600mまで行けたよ、良い挑戦になった。追記：改めて見たら2000mになってた。クソ難しいな。" userName="badmintonbaseba" createdAt="2025/05/29 09:38:24" color="">}}




{{<matomeQuote body="倍速で山頂まで登ったよ。:strawberry:x14 3:17:46 deaths:1981" userName="badmintonbaseba" createdAt="2025/05/29 12:09:08" color="">}}




{{<matomeQuote body="ゲームの状態更新をフレームレートに紐づけるのはやめてほしいな。 requestAnimationFrameがある場合でも、「AI」でさえ知ってるんだぜ。俺、聞いたことあるから分かる。でも、描画とゲームの更新を切り離すように具体的に指示しないと、ダメな答えを出すんだよね。" userName="nottorp" createdAt="2025/05/29 18:05:03" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ、未だに意外と難しい問題なんだよね。単純にフレーム時間測るだけだと（rAFのタイムスタンプ使っても）タイミングの揺れ（ジッター）が大きくて、マイクロスタッターの原因になるんだ（あと別の問題として、SpecterとかMeltdownの影響で、一部ブラウザはタイマー精度をミリ秒単位に制限してる。でも、ここではランダムな揺れのおかげで、十分なフレーム数で平均すれば正確なフレーム時間、例えば16.667とか8.333msの値が、１５＜＝＞１７とか７＜＝＞９msみたいにぶれる代わりに得られるから役に立つんだけどね）。" userName="flohofwoe" createdAt="2025/05/31 07:46:23" color="#38d3d3">}}




{{<matomeQuote body="俺に言わせれば、それは言い訳にならないね。ブラウザは固定ハードウェアのコンソールじゃないんだから。正直、今どきコンソールだって固定ハードウェアじゃないんだけどさ…。" userName="nottorp" createdAt="2025/05/31 20:21:31" color="">}}




{{<matomeQuote body="言い訳じゃなくて、可変タイムステップを実装しようとすると起きるマイクロスタッターの問題を解決するための、もっと良い方法をウェブプラットフォームは提供すべきだってことだよ。だって、今は「ユーザー空間」でちゃんとした解決策を出すのが無理なんだからさ（例えば、どんなノイズ除去フィルターも、ブラウザウィンドウを別のリフレッシュレートのディスプレイに移すとかでリフレッシュレートが突然変わると問題が起きる）。" userName="flohofwoe" createdAt="2025/06/01 06:15:13" color="#38d3d3">}}




{{<matomeQuote body="これはめちゃくちゃクールだね。だけど、ブログ自体が俺のFirefoxだと60 FPS出てないんだ。たぶんあの背景エフェクトのせいかな？" userName="01HNNWZ0MV43FF" createdAt="2025/05/29 04:23:47" color="">}}




{{<matomeQuote body="あのエフェクト、邪魔だし集中できなくて嫌だったわ。インスペクターから消せるcanvas要素で描画されてるよ。" userName="dgb23" createdAt="2025/05/29 08:08:34" color="">}}




{{<matomeQuote body="これ超いいね。Terrariaやったの2014年以来だわ。ちょっと不満なのは解像度高すぎて全部ちっちゃく表示されちゃうことかな。200％にスケールできたら文字とかアイコン見やすくていいんだけどなー。" userName="acheong08" createdAt="2025/05/29 23:52:31" color="#785bff">}}




{{<matomeQuote body="クールだと思うんだけど、まだ動かせないんだよね。SteamからのオプションでTerrariaのassetsダウンロードしてるんだけど、1時間経ってもまだ5％だよ。" userName="Spunkie" createdAt="2025/05/29 17:19:27" color="">}}




{{<matomeQuote body="FNA／XNAのプロジェクトがブラウザで動くの見れるのいいね" userName="rlmineing_dead" createdAt="2025/05/26 21:27:33" color="#ff5733">}}




{{<matomeQuote body="これマジで最高！即行でChromebookで使うつもりだよ" userName="caminanteblanco" createdAt="2025/05/29 04:52:45" color="">}}




{{<matomeQuote body="iosのSafariだとマジでダメみたい、デモ3つともロード中にクラッシュしちゃうわ笑" userName="parallax_error" createdAt="2025/05/29 10:47:07" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
