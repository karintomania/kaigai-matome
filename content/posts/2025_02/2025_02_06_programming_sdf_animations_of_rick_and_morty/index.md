+++
date = '2025-02-06T00:00:00'
draft = false
title = 'RickとMortyのSDFアニメーションをプログラミングしてみた！その魅力とは？'
tags = ["アニメーション", "プログラミング", "SDF", "Shader", "Rick and Morty"]
featureimage = 'thumbnails/orange3.jpg'
+++

> RickとMortyのSDFアニメーションをプログラミングしてみた！その魅力とは？

引用元：[https://news.ycombinator.com/item?id=42958696](https://news.ycombinator.com/item?id=42958696)

{{<matomeQuote body="いい仕事だし、すごく良い投稿だね。ちょっと付け加えると、二回目のスーパーサンプリングなしで滑らかなアンチエイリアスエッジを得たいなら、SDFで標準的な微分を使うと良いよ。”aastep”に置き換えるだけさ。 https://github.com/glslify/glsl-aastep" userName="mattdesl" createdAt="2025-02-06T08:49:08" color="#785bff">}}

{{<matomeQuote body="これすごい！Shader開発者ってマジで次元が違う。ウェブやプロトコル、アプリ開発とは全然違うし、数値を変えてshift-enter押してすぐに結果が見えるのはめっちゃ満足感あるよね。お見事！" userName="joenot443" createdAt="2025-02-06T07:49:20" color="#45d325">}}

{{<matomeQuote body="Shader開発者の話してるのは、javascriptのcanvasとかp5.jsのようなものかな？グラフィックスプログラミングの話？それともGPUシェーダーの具体的なこと？" userName="nonethewiser" createdAt="2025-02-06T19:32:30" color="">}}

{{<matomeQuote body="canvasのフレームバッファをループするのも似た体験だね。ただしパフォーマンスは劣るし、GPUシェーダーよりコードの状態やメモリに簡単にアクセスできるのがいいところ。" userName="vekatimest" createdAt="2025-02-06T23:52:02" color="#38d3d3">}}

{{<matomeQuote body="とても良い記事だね！Inigo QuilezのYouTubeチャンネルのプレイリストが役立つよ。 https://www.youtube.com/watch?v=0ifChJ0nJfM&list=PL0EpikNmjs..." userName="djmips" createdAt="2025-02-06T08:25:53" color="">}}

{{<matomeQuote body="ここでの作業も説明のクオリティも素晴らしいし、読者への挑戦も考えられている。シェアしてくれてありがとう。" userName="vallode" createdAt="2025-02-06T10:20:22" color="#ff5733">}}

{{<matomeQuote body="＞私はリファレンス画像をプレビューの上に表示して比較することで、コードを変えながらオリジナルと比較できたんだ。それが手描きアニメの方法なんだよ！Shaderプログラミングは別物だけど、すごくいい記事だね。" userName="bobsmooth" createdAt="2025-02-06T09:52:58" color="#785bff">}}

{{<matomeQuote body="このGLSLの導入はすごくよく組み立てられてるね。VulkanやWebGPU/WebGLでどうなるか、誰か教えて！" userName="anotherhue" createdAt="2025-02-06T06:23:29" color="">}}

{{<matomeQuote body="ほぼ同じだよ。VulkanやWebGLはGLSLをそのまま使えるし（GLSL→SPIR-Vへ）。WebGPUはブラウザだと使えないけど、ネイティブではGLSLをサポートしてるし、トランスパイルもできる。WGSLはGLSLのRust風の文法版みたいなものだね。" userName="jms55" createdAt="2025-02-06T07:32:44" color="#45d325">}}

{{<matomeQuote body="実際にはWebGPUとMetalはGLSLをVulkanと同じようにサポートしてる。トランスパイルするだけで、違いはないと思うよ。ただVulkanに慣れてるからそのステップがあるだけだね。" userName="gamedever" createdAt="2025-02-06T18:00:53" color="">}}

{{<matomeQuote body="ユーザーから見るとそうかもしれないが、内部では違うんだよね。VulkanではGLSLからSPIR-Vに変換、WebGPUではGLSLからWGSL、HLSLからDXIL、MSLからIR、SPIR-V、GLSL(コンパクトバックエンド用)に。ここでドライバーがGLSLやDXIL、Metal IR、SPIR-Vなどを使って独自のバイトコードを生成する。LLVMの複数のコピーがいろいろなところで関わってる。複雑で、はっきり言って面倒なパイプラインだよ。" userName="jms55" createdAt="2025-02-06T18:13:24" color="">}}

{{<matomeQuote body="このアニメーション完成までに8ヶ月かかったのは、本当に根気強さを反映してるね。" userName="unfixed" createdAt="2025-02-06T07:31:35" color="#785bff">}}

{{<matomeQuote body="作者の開発過程は、少数値をあれこれ調整するループだったのか、何かエディターを使ったのか？240行の適切な小数値を生み出すのは、かなり時間がかかりそうなんだけど。" userName="metadat" createdAt="2025-02-06T17:30:39" color="">}}

{{<matomeQuote body="そのページに встроенныйコードエディタを使っただけだよ。バイナリサーチは手作業でも速いしね。" userName="dhooper" createdAt="2025-02-06T17:38:33" color="">}}

{{<matomeQuote body="こういうことをするときは、スライダーや入力を取ってユニフォームに結びつけるだけだよ。ユニフォームはシェーダーに渡され、再コンパイルなしで更新可能。" userName="hwillis" createdAt="2025-02-06T17:38:44" color="">}}

{{<matomeQuote body="彼はシェーダー・リックだ！" userName="worthless-trash" createdAt="2025-02-06T12:49:45" color="">}}

{{<matomeQuote body="ピクセル・リック！ピクセル・モーティに変身したぜ！" userName="ilumanty" createdAt="2025-02-06T14:19:25" color="">}}

{{<matomeQuote body="“Pixel Rick”は記事に入れないとダメだね。追加したよ。ありがとう！" userName="dhooper" createdAt="2025-02-06T16:13:09" color="">}}

{{<matomeQuote body="実際の声をテキストメッセージにどうやって入れたの！？" userName="matt3210" createdAt="2025-02-06T15:56:50" color="">}}

{{<matomeQuote body="みんなに良いニュース！" userName="robertlagrant" createdAt="2025-02-06T16:22:30" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="すごいね。これがどれほど印象的か表現するのが難しいわ。" userName="kubb" createdAt="2025-02-06T09:30:17" color="#ff5733">}}

{{<matomeQuote body="Balatroのポータルアニメーションも同じ方法で作られてるか誰か知ってる？" userName="slig" createdAt="2025-02-06T14:02:50" color="">}}

{{<matomeQuote body="Balatroの背景はシェーダーだと思うけど、効果は違うね。こっちは静的なリングが地平線に向かって縮んでいくけど、Balatroは流れるような動きがある。<br＞＞Balatroの背景はデモシーンのエフェクトを意図的に思い出させるね、すごく好き！" userName="jasongill" createdAt="2025-02-06T14:59:10" color="#ff5733">}}

{{<matomeQuote body="＞＞Balatroの背景はデモシーンのエフェクトを意図的に思い出させるね、すごく好き！<br＞うん、私もすごく好き！" userName="slig" createdAt="2025-02-06T17:59:10" color="">}}

{{<matomeQuote body="ゲーム持ってるなら、解凍してコード見れるよ。" userName="hiccuphippo" createdAt="2025-02-06T15:34:22" color="">}}

{{<matomeQuote body="ありがとう、知らなかった。最近モバイル版手に入れたばっかりなんだ。" userName="slig" createdAt="2025-02-06T17:41:23" color="">}}

{{<matomeQuote body="GLSL/SDLの別の応用として、ThreeJSでShaderMaterialを使って自分専用のカスタムシェーダーマテリアルが作れるよ。シェーダーコードをマテリアル内の文字列で書くと、マテリアルが付いてるメッシュに適用されるんだ。<br＞これで後処理フィルターなしでフレネルみたいなかっこいいエフェクトが作れる。" userName="Townley" createdAt="2025-02-06T21:25:53" color="#ff33a1">}}

{{<matomeQuote body="真面目な質問だけど、いつになったらこれがリターンキー押す度にRickの顔が点滅するゴーストシェーダーになるの？" userName="riddley" createdAt="2025-02-06T16:52:10" color="">}}

{{<matomeQuote body="このページの品質はすごいよ。" userName="hombre_fatal" createdAt="2025-02-07T17:08:12" color="#ff5c5c">}}

{{<matomeQuote body="シェーダープログラミングは次のレベルだね！これらのアニメーションを作るのにどれだけの努力と細部への注意が払われてるか信じられないよ。传统开发に比べて、プロセスがもっと手動で進むんだ。" userName="BoujidStack" createdAt="2025-02-07T10:20:07" color="#45d325">}}

{{<matomeQuote body="埋め込みコードにはどんなツール使ってるの？すごく良いよ！フォーカスしてないスニペットが折りたたまれるのが好き。" userName="matt3210" createdAt="2025-02-06T15:54:45" color="">}}

{{<matomeQuote body="自分でライブシェーダーエディタを作ったんだけど、CodeMirrorでコードを表示して、WebGLのキャンバスでプレビューしてるんだ。" userName="dhooper" createdAt="2025-02-06T16:03:36" color="#785bff">}}

{{<matomeQuote body="Processing使った方が簡単な気がする…" userName="q2dg" createdAt="2025-02-06T15:23:07" color="">}}

{{<matomeQuote body="Edgeではアニメーションがレンダリングされないけど、Chromeと驚くことにSafariでは動いてる。" userName="Archit3ch" createdAt="2025-02-06T19:19:24" color="">}}

{{<matomeQuote body="自分はEdgeで動いてるよ。macOSとWindowsの両方で。" userName="dhooper" createdAt="2025-02-06T21:12:45" color="#ff5c5c">}}

{{<matomeQuote body="自分にとっては幸せすぎる、もっとDimension J19 Zeta 7のRickみたい。" userName="p0w3n3d" createdAt="2025-02-06T10:22:24" color="">}}

{{<matomeQuote body="Math Rick、ピクルRickの宿敵だね。" userName="axismundi" createdAt="2025-02-07T01:51:35" color="">}}

{{<matomeQuote body="あなたには頭が下がるよ、ビックリするほど素晴らしい。" userName="zombiwoof" createdAt="2025-02-06T18:04:18" color="#ff33a1">}}

{{<matomeQuote body="「私はピクルだ、REEE！」" userName="Uptrenda" createdAt="2025-02-06T08:44:54" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
