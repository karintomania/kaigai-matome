+++
date = '2025-09-15T00:00:00'
months = '2025/09'
draft = false
title = 'Reactが『当たり前』に選ばれるのはなぜ？ イノベーションを阻害してるってホント？'
tags = ["React", "JavaScript", "フロントエンド", "フレームワーク", "Web開発"]
featureimage = 'thumbnails/purple4.jpg'
+++

> Reactが『当たり前』に選ばれるのはなぜ？ イノベーションを阻害してるってホント？

引用元：[https://news.ycombinator.com/item?id=45252715](https://news.ycombinator.com/item?id=45252715)




{{<matomeQuote body="Reactが“デフォルトで勝ってる”わけじゃないよ。ReactはJavaScriptの関数合成が核だから勝ってるんだ。コンポーネントは関数だし、条件分岐は`if/else`、ループは`map()`だろ？ JSXだって関数呼び出しのシンタックスシュガーに過ぎない。SvelteはJavaScriptの島が埋め込まれたXMLを書いてるようなもんだ。`{#if}{:else}{/if}`なんて、JSの上に貼り付けられたミニ言語じゃん。誰も今日XMLで制御フロー書きたいなんて思わないだろ。コンパイラのトリックはすごいけど、ReactはJSを書き続けることを求めるから自然なんだよ。" userName="gloosx" createdAt="2025/09/16 07:41:46" color="#38d3d3">}}




{{<matomeQuote body="JSXは純粋なJavaScriptじゃないし、JavaScriptに埋め込まれたXMLの方言でもないの？ 前者に見えるけど後者にコンパイルされるよね。ReactはJavaScriptじゃないんだ。JavaScriptとXMLが表面上混ざったようなフランケン言語で、どちらのルールにも従っていない。だからReactコンパイラなんてものがあるんだし、それこそJSを書いてない証拠だ。JSにはコンパイラなんてないでしょ。他にも従うべき新しいルールがたくさんあるのもヒントだよ。Hooksとかは関数に見える魔法の構文だ。例えば`if`文の中で呼べないとか、冗長に依存（読み込む変数）を宣言しなきゃいけないとかね。Reactコードのセマンティクスは、命令型で直線的なコードとは全然違うよ。" userName="mike_hearn" createdAt="2025/09/16 08:08:43" color="#ff33a1">}}




{{<matomeQuote body="JSXはJSの構文拡張にすぎないし、Reactアプリを作るのに必須ですらないんだよ。Reactの“コンパイラ”は実際にはトランスパイラで、JSではすごく一般的なものだ。<br>“Reactは関数に見える魔法の構文だらけ”って言うけど、たった5つの分かりやすいHooksのこと？ 確かに完全に自由なJavaScriptじゃないけど、少なくとも構文自体がDSLに変わってるわけじゃないよね。" userName="gloosx" createdAt="2025/09/16 08:28:18" color="">}}




{{<matomeQuote body="JSXは`createElement()`関数のシンタックスシュガーと考えるのが一番いいと思うよ。山括弧でJSXに入って、中括弧で式を挿入するんだ。<br>“Reactは関数に見える魔法の構文だらけだけど、例えば`if`文の中で呼べないとか、依存を冗長に宣言しなきゃいけないとか”って言うけど、それは魔法の構文じゃないよ。単にレンダーのティック間で特定の順序で処理されなきゃいけない関数ってだけだ。そうやって動作する“普通のJS”関数を書くのは難しいことじゃないよ。クロージャをよく使ってたら、どういう仕組みか想像できるはずだ。" userName="jbreckmckye" createdAt="2025/09/16 08:14:40" color="#45d325">}}




{{<matomeQuote body="Hooksは普通の関数とは全然違うよ。async functionsみたいに新しい“色の”関数なんだ。コンポーネントか他のHooksの中でしか呼べないし、条件付きで呼べない、ループの中で呼べない、とかね。いわゆる“Hooksのルール”だよ。（よくある反論に先回りして言うと、もちろんJavaScriptで実装されてるからJSだけど、SvelteやVueだってそうだよね）" userName="WickyNilliams" createdAt="2025/09/16 08:25:07" color="#ff5c5c">}}




{{<matomeQuote body="`useEffect`が分かりやすいって？ Cloudflareが最近（文字通り4日前だよ）[1]かなり大規模な障害を起こしたんだ。`useEffect`の不適切な使い方（やっぱり依存配列の問題だよ）が原因でね。`useEffect`は悪名高すぎて、“When should I use `useEffect`”って検索したら、9兆件くらいのヒットがあって、ほぼ全部が違うことを言ってる。Dan Abramov自身も、このAPIがいかにひどいか、使うなってブログ記事を複数書かなきゃいけないくらいだよ。<br>[1] https://blog.cloudflare.com/deep-dive-into-cloudflares-sept-..." userName="sensanaty" createdAt="2025/09/16 08:42:17" color="#ff5733">}}




{{<matomeQuote body="Hooksは疑いなく魔法の構文だよ。すべての魔法の構文は非魔法的な部分からできてるってのがポイントだ。それが魔法だってわかるのは、参照透過性の原則を破壊するからさ。この原則は変数がそれ自体であることを教えてくれる。Hooksはシンプルなメンタルモデルを使えるように見せかけてるけど、実際はそうじゃないし、そうしちゃいけないんだ。" userName="conartist6" createdAt="2025/09/16 11:04:17" color="#785bff">}}




{{<matomeQuote body="いやー、Cloudflareにとっては本当に恥ずかしいことだね…。依存関係を介した副作用での再帰なんて、初歩的なミスだよ。適切なプロセスを経てプロダクションに入り込むなんて、想像しがたいね。彼らは感覚でコーディングして、テストやレビューなしでプロダクションにデプロイするのをやめるべきじゃない？" userName="gloosx" createdAt="2025/09/16 08:58:08" color="">}}




{{<matomeQuote body="確かにHooksは普通のJavaScript関数じゃないんだけど、少なくとも構文自体がSvelteやVueみたいにDSLに変わってないのが大きな違いなんだよ。" userName="gloosx" createdAt="2025/09/16 08:31:06" color="">}}




{{<matomeQuote body="async関数がPromiseを返すのは当たり前で、何が混乱するのか理解できない。Hooksも単なるJavaScriptの関数で、ビルドツールなしでも書けるって。一体何が問題なんだ？" userName="patates" createdAt="2025/09/16 09:34:20" color="">}}




{{<matomeQuote body="colored functionsは混乱させるものじゃなくて、その本質を観察したものだよ。Promiseとかasync/awaitだけじゃなくて、継続渡しスタイルにも当てはまるんだ。この元の記事を読むといいよ → https://journal.stuffwithstuff.com/2015/02/01/what-color-is-..." userName="WickyNilliams" createdAt="2025/09/16 09:42:10" color="#45d325">}}




{{<matomeQuote body="Hooksは魔法じゃないし、構文の問題でもない。Reactの連中が「Hooks」って言葉の意味を都合よく解釈してるのが問題なんだよ。Reactの関数コンポーネントは本来の関数型プログラミングの精神に反してて、隠れたグローバル変数を使ってて、実はOOPを隠してるだけだろ。関数型ぶってるけど、ただの関数だよ。" userName="imtringued" createdAt="2025/09/16 11:50:15" color="#785bff">}}




{{<matomeQuote body="えっ、ReactってJavaScriptじゃん、言語じゃないよ。JSXはただのシンタックスシュガーで、HTMLっぽく見せるためってだけだよ。" userName="lerp-io" createdAt="2025/09/16 08:43:06" color="">}}




{{<matomeQuote body="「シンタックスシュガー」ってのは、新しい構文を持つ新しい言語ってことだよ。" userName="burnerzzzzz" createdAt="2025/09/16 09:31:27" color="">}}




{{<matomeQuote body="あのcolored functionsの議論って、混乱じゃなくて摩擦だよね。スレッドなしで並行処理するなら、それは避けられないこと。React Hooksで「色」の定義が違うって文句言う人もいるけど、組み込み開発とDSL作りを一緒にするようなもんだよ。結局は「そういうもの」ってこと。" userName="patates" createdAt="2025/09/16 10:10:02" color="#45d325">}}




{{<matomeQuote body="JavaScriptもReactも、Svelteもどの技術にも欠点はあるよね。useEffectは使い方に問題あるけど、React全体が悪いわけじゃない。Dojo, jQuery, Angular, Vueとか色々使ってきたけど、Reactが一番分かりやすいし、生産性も高い。最速じゃないし、最小限でもないけど、俺はこれで十分って感じ。" userName="patates" createdAt="2025/09/16 09:23:11" color="#ff5733">}}




{{<matomeQuote body="「ReactはJavaScriptの関数合成だ」って意見には賛成できないな。Hooksが状態やライフサイクルイベントを持ち込んじゃってるから、関数合成の域を超えてるよ。むしろクラスコンポーネントの方がまだ分かりやすかったんじゃないかな。" userName="motorest" createdAt="2025/09/16 11:50:45" color="#ff33a1">}}




{{<matomeQuote body="const [a, b] = useState(’x’)ってVanilla JSでもTypeScriptでも書けるじゃん。だから魔法の構文じゃないんだよ。" userName="snemvalts" createdAt="2025/09/16 14:47:15" color="">}}




{{<matomeQuote body="他のママのご飯食べたことない子が「うちのママのご飯が一番！」って言うのと同じだよ。お前がReactで生産的だって言うのはさ、結局「Reactで仕事があるから使える」って言ってるだけだろ。" userName="thedelanyo" createdAt="2025/09/16 09:56:37" color="#ff5733">}}




{{<matomeQuote body="Reactのクラスコンポーネントが基本だった頃は、今より簡単じゃなかったよ。バニラReactだけならHooksはそんなに難しくないけど、SSRやルーター、クエリキャッシュとかを追加すると、”ライフサイクルと状態”がややこしくなる。これはNext.jsやTanStackみたいなフレームワークの複雑さの問題で、React本体のせいじゃないんだ。React（とRedux）だけでアプリを作るのは、慣れればシンプルで自然だよ。" userName="cjonas" createdAt="2025/09/16 13:24:34" color="#ff5733">}}




{{<matomeQuote body="細かいことだけど、React Compilerはトランスパイラじゃないよ。JSXのトランスパイルはTS Compilerが普通やってる。React Compilerは比較的新しい、オプションのツールなんだ。<br>https://react.dev/learn/react-compiler/introduction#what-doe..." userName="patates" createdAt="2025/09/16 09:36:24" color="#ff33a1">}}




{{<matomeQuote body="苦情はね、もう”関数合成”だけじゃないってことなんだよ。今は”コンポーネントのライフサイクル”を扱ってる。Hooksだと合成がうまくいかないんだ。参考までに、おもちゃじゃないReactのコードベースを見てみればわかるよ。" userName="the_gipsy" createdAt="2025/09/16 14:36:38" color="">}}




{{<matomeQuote body="Reactを使うのにJSXは必須じゃないし、ずっとそうだよ。うちの会社サイトの最初のバージョンはビルドステップなしで、createElementを手動で呼んでた。Reactを10年書いてるけど、React Compilerは使ったことないな。あと、”ReactはJavaScriptじゃない”っていうのは、V8があるからJavaScriptは複雑だって言うのと一緒だよ。ルールだって全部従わなくていいし、クラスコンポーネントもまだ使えるし、ちゃんと動くよ。" userName="bastawhiz" createdAt="2025/09/16 10:46:58" color="#38d3d3">}}




{{<matomeQuote body="JSXを”if”文の中に入れたいと思ったことは一度もないし、レンダーフェーズの戻り値以外の文脈で使いたいと思ったこともないよ。だから個人的な経験では、君が言ってたことは実際には問題にならないと思うんだけど、君は違う経験がある？" userName="TomaszZielinski" createdAt="2025/09/16 12:40:51" color="">}}




{{<matomeQuote body="うん、わかるよ。”Just JavaScript”っていうレッテルはもうReactには当てはまらないと思う。クラスベースの世界では通用したけど、Hooks以降は違う。自分はテンプレート言語が大嫌いだったんだけど、Vueを18ヶ月使ってみたら、意外とすごく楽しかったんだ。最大の欠点は、1ファイル1コンポーネントが徹底されてることくらいかな。誤解のないように言うけど、Reactの初期からのユーザーだし、今でも仕事で使ってるよ。" userName="WickyNilliams" createdAt="2025/09/16 08:37:37" color="#38d3d3">}}




{{<matomeQuote body="HTMXはReactの解毒剤みたいなもので、新しい芽がいくつも出てきてるよ。僕のお気に入りは<br>https://harcstack.org<br>…他にもいろんなサーバーサイド言語に代替案がたくさんあるんだ。（告白：僕が作者だよ）" userName="librasteve" createdAt="2025/09/16 15:39:43" color="#785bff">}}




{{<matomeQuote body="10年近く経っても多くの人がライブラリの特定メソッドの同じ使い方で同じ間違いをするなら、問題は何百、何千人ものユーザーじゃなくて、そのメソッドのデザインが壊れてるんだ。VueやSvelteでは、React開発者がVueを書くときにwatcherを濫用する傾向があるとしても、こういう問題は単純に存在しない。あと、Dan AbramovがuseEffectの使い方についてめちゃくちゃ長いガイドを書かなきゃいけなかったことにもう一度触れたい。あの記事は1万語くらいでuseEffectの仕組みを詳しく説明してるんだ。<br>[1] https://overreacted.io/a-complete-guide-to-useeffect/" userName="sensanaty" createdAt="2025/09/16 09:05:14" color="#ff5733">}}




{{<matomeQuote body="”ReactはJavaScriptを書き続けることを求めないから自然に感じる”って言うけど、ウェブページでカウンターを増やしたいとき、どれが自然だと感じる？<br>```increment = () =＞ { this.setState((prevState) =＞ ({ count: prevState.count + 1 })); };```<br>```const increment = () =＞ setCount((count) =＞ count + 1);```<br>```function increment() { count += 1; }```<br>誰も”簡単な状態を関数呼び出しで変更させてください”なんて言いながら起きないよ。" userName="hbrn" createdAt="2025/09/16 15:15:24" color="#785bff">}}




{{<matomeQuote body="フロントページの例を見たけど、あれがReactより良いなんて、どうやったらそう思えるのか理解できないな。" userName="CooCooCaCha" createdAt="2025/09/16 15:47:18" color="">}}




{{<matomeQuote body="うん、それはVanilla JSの構文だね。でも意味合いはかなり魔法的だよ。useStateを呼ぶコンポーネント関数って、普通の関数じゃないんだ。Reactランタイムが特殊な方法で呼ばないとダメで、Reactが裏で管理してる隠れた状態を全部整列させて、useStateの呼び出しがマッピングされるデータを魔法のように推論するんだ。で、そのデータの寿命を維持するためにも、さらに魔法が使われてるんだよね。" userName="rictic" createdAt="2025/09/16 17:31:24" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="createElement()関数呼び出しのシンタックスシュガーと考えるのがベストだよね＞<br>それこそが新しい言語にしてるんだよ。C言語だってアセンブリのシュガーに過ぎないし。JSXはビルドステップが必要なのに、classじゃなくてclassNameみたいに、追加できたはずの明白なエルゴノミクスをたくさん見逃してるのはすごく変だよね。ビルドステップがあれば、コンテキストに基づいてclassがキーワードかどうかを判断できるはずなのにさ。" userName="burnerzzzzz" createdAt="2025/09/16 09:30:30" color="">}}




{{<matomeQuote body="Web Componentsこそ、この罠から抜け出す方法だよ。React以外のフレームワークは全部、Web Componentsを全面的にサポートして、Reactとそのエコシステムに対抗するようなものを一から作る必要なしに、実行可能なコンポーネントとユーティリティのエコシステムにアクセスできるようにすべきなんだ。<br>Web Componentsをフレームワークの競合と見る人も多いけど、別にそうである必要はないんだ。ただコンポーネントの実装とブラウザ間のインターフェースを定義して、相互運用と信頼性の高いコンポジションを可能にするだけ。<br>低レベルAPIの上には、フレームワークがイノベーションを起こし、カスタマイズする余地がたくさんあるんだ。<br>「新しいFlugleフレームワークを使ってね、他のフレームワークとも相性抜群で、素晴らしい足場を提供してくれるよ」って言えるのは、Reactのモノカルチャーに対する良いセールスポイントと緩衝材になるはずなんだ。違う、もっと小さなサイロを築くのとは対照的にね。" userName="spankalee" createdAt="2025/09/15 22:07:10" color="#38d3d3">}}




{{<matomeQuote body="強く反対するよ。Web ComponentsはReactの別バージョンみたいなもんだろ。ブラウザ向けのアプリケーションを書くのに、こんなコンポーネントベースのフレームワークスタイルのアーキテクチャなんて必要ないんだ。<br>ブラウザ向けのアプリケーションを書くのは全然難しくないって約束するよ。大げさなフレームワークとか、結局同じようなコンポーネント地獄なんていらないんだ。" userName="austin-cheney" createdAt="2025/09/16 02:03:29" color="#38d3d3">}}




{{<matomeQuote body="大げさなフレームワークとか、結局同じようなコンポーネント地獄なんていらない。って言うけど、十分に複雑なアプリだと、結局自分たちで「ミニフレームワーク」みたいなものを作ることになるんだよ。何回も出てくるものを全部抽象化していくうちにね。そのフレームワークは最初はすごく良くても、プロジェクトが進むにつれてどんどんハッキーになっていくんだ。特にリソースが限られてるとね。結局、標準的なものを使わなかったことを後悔するよ。<br>プロジェクトに開発者が数人以上いる場合、1、2年もすれば誰も好きじゃないものになる。若手開発者が多い場合は、「古くてレガシーなコード」の一部になりたくないから、チームを辞めたがる理由になる。そうなると、参加したい人を見つけるのが難しくなるんだ。<br>最終的には、誰も知らない変なレガシーフレームワークだから、チームに人を採用するのが難しくなって、もっと標準的なものにリファクタリングする大きなプロジェクトが立ち上がる。それは多分Reactだろうね。同時に、シニア開発者のほとんどが、コードベースを完全に破棄して作り直すべきだと言い出すだろう（ほとんどの場合、それは間違いなんだけど、彼らは気にせず、新しいものを試せるグリーンフィールドプロジェクトが欲しいんだ）。<br>これは、大規模な組織で社内アプリを構築するあらゆる場所で起きてきた話で、成熟して開発者をもっと雇う必要のある多くのスタートアップでも多分そうだろうね。だったら最初から標準的なフレームワークを使っとけって話だよ。" userName="onion2k" createdAt="2025/09/16 03:33:51" color="#ff5733">}}




{{<matomeQuote body="俺にとってはそんなこと一度もないよ。内部フレームワークなんて作ったことない。代わりに、特定の問題を解決してコードを再利用するライブラリを書くんだ。それは結局、ファイルに制限された関数かデータストレージオブジェクトだね。少なくとも、俺は普遍的にコードをライブラリとして考えてる。特にブラウザでは問題空間がずっと小さいから、そんなに起こらないんだ。実際、ブラウザではイベント処理と画面にテキストを表示することを中心にコードを整理するだけ。これを難しく考えすぎないようにしよう。<br>とにかく、この内部フレームワークっていう考え方自体、いつも変だなって思ってた。ブラウザ以外のコードでこんなこと言う人いないのに、なんでブラウザの中だとこうなるんだ？そういう風に考えると、これは明らかに単純な組織の問題になって、親に「あれやれこれやれ」って言われるみたいに、整理方法を教えてくれるフレームワークなんていらないんだ。" userName="austin-cheney" createdAt="2025/09/16 07:59:21" color="#785bff">}}




{{<matomeQuote body="状態をリアクティブにレンダリングするのに、どんなコードを使ってるの？それとも、DOM操作は全部手動で書いてて、状態爆発の問題は受け入れてるの？" userName="WA" createdAt="2025/09/16 09:24:35" color="">}}




{{<matomeQuote body="ここに例があるよ。<br>/lib/dashboard/dashboard_script.ts<br>https://github.com/prettydiff/webserver<br>フレームワークのようなコンポーネントを使ってない場合、状態復元はページロード時に一度だけ実行される単一の関数なんだ。状態爆発なんて起きないし、localhostではSPAがHTTPリクエストから約105msで完全にレンダリングされて状態復元も終わるよ。" userName="austin-cheney" createdAt="2025/09/16 10:35:05" color="#ff33a1">}}




{{<matomeQuote body="ブログくらいならフレームワークなしでも作れるのは確かだよ。でも複雑なアプリケーションだと、生のDOM操作とか独自でやるより、フレームワークを使った方がはるかに良いし簡単だよ。" userName="daveidol" createdAt="2025/09/16 02:13:22" color="">}}




{{<matomeQuote body="同意だね。Web Componentsはどんなフレームワークも不要だし、Reactでできることは全部できるんだ（attributeChangedCallbackによるリアクティビティも含めてね）。Web Componentsの学習曲線って、Reactよりずっと緩やかだよ、ゼロから始める人の視点で見ればね。<br>さらに、Web Componentsは良いパターンを強制してくれるんだ。属性として文字列しか渡せないっていうのは、実は天才的で、シンプルでミニマルなコンポーネントインターフェースを促すし、ReactコミュニティがReduxのようなまったく新しいパラダイムを発明して守ろうとした参照渡し問題を避けることができるんだ。<br>そして、皮肉なことに、今でもReactを推してるトップの人たちの多くは、Facebookの株で金持ちになって、もう働く必要がないんだよ。事実上、彼らの多くは、選択の余地がない若者たちにこの技術を強制してる一方で、彼ら自身はもうそれを使う必要もコードを書く必要もないんだ。<br>一方、俺はどれだけひどい状況で、どれだけ意思決定を許されないかという理由で、業界を辞めたい（または辞めた）開発者をたくさん知ってるよ。サイドプロジェクトでより良いツールがあることを知ってるのに、劣ったツールで働くのは士気をくじかれるよね。「会社が私のツール選択で非効率を強制するなら、他の方法でも非効率になるライセンスを与えられたようなものだ」って思うようになるんだ。<br>個人的には、もうコードは書いてないよ（サイドプロジェクトだけ）。クリーンでミニマルなコードを書くのが俺の主な才能の一つだから残念だけどね。今の仕事では、n8nやFlowise（AI用）のようなドラッグ＆ドロップUIプラットフォームを使ってるんだ。ノード内でVanilla JSを使えて、コンパイルステップなしで、実際に稼げる現実世界のプロジェクトで使えるのは新鮮だよ。これらのUIプラットフォームは、Reactよりはるかに予測可能に動作するんだ。Reactを使っていた（約10年間）時は、奇妙なグリッチや状態管理の問題を常にデバッグしてたけど、Web Componentsやn8nのようなプラットフォームではそんな経験は一度もないね。" userName="jongjong" createdAt="2025/09/15 22:32:20" color="#785bff">}}




{{<matomeQuote body="Reactから事業を全部移したよ。これでMetaが2年ごとにReactを再発明する心配もなくなったね。Web Componentsは素晴らしいし、これこそが本当の未来だよ。" userName="andrewmcwatters" createdAt="2025/09/15 22:35:08" color="">}}




{{<matomeQuote body="「Web Componentsの属性は文字列しか渡せない」って話、完全に嘘だよ。Reactエンジニアが昔言い出したデマが未だに消えないんだよね。Web Componentsはオブジェクトなんだから、他のオブジェクトと同じようにプロパティを持てるし、Reactとかのテンプレートシステムもプロパティを設定して使えるよ。" userName="spankalee" createdAt="2025/09/15 22:46:21" color="#ff5c5c">}}




{{<matomeQuote body="Web Componentsはあくまで実装の詳細で、フレームワークみたいな機能、特にリアクティビティは提供してくれないんだ。jQuery時代みたいに、自分でDOMを命令的に操作しなきゃいけないからね。これは単なるパッケージングで、モダンなフロントエンド開発に重要なものは何も提供してないと思う。Web Componentsは好きだし使ってるけど、これをReactの罠からの脱出策として売るのはちょっと違うかな。" userName="WA" createdAt="2025/09/16 09:20:40" color="#45d325">}}




{{<matomeQuote body="React Nativeみたいなものが作れない限りWeb Componentsは無理だよ。ブラウザ技術はネイティブコードよりずっと遅いし。Reactの最大の価値は今や、プラットフォームをまたいでGUI開発を重複させずに済むことなんだから。" userName="indolering" createdAt="2025/09/16 03:50:31" color="">}}




{{<matomeQuote body="Lit Web Componentsで作ったビジネスアプリを扱ったけど、プロパティが全部文字列型なのが本当に大変だったんだ。リアルタイム優先のコンポーネントライブラリとは比べものにならないね。" userName="TehShrike" createdAt="2025/09/16 03:34:47" color="#38d3d3">}}




{{<matomeQuote body="コンポーネントがReactに縛られずに、色々なライブラリを使えるのがWeb Componentsの最大のポイントだよ。Reactの人気はネットワーク効果が大きいんだ。React-onlyのコンポーネントが多すぎるからね。Web Componentsの目的は、自分たちが作ったコンポーネントをほとんど全てのUIライブラリと互換性を持たせることなんだ。そのためにはこれ以上の解決策はないと思うよ。" userName="nikitaga" createdAt="2025/09/16 09:59:57" color="#38d3d3">}}




{{<matomeQuote body="そのやり方はDOMじゃなくてJavaScriptで値を渡してるんだよね？前のコメントはDOM属性の話で、それだと文字列しか渡せない（boolean属性は別として）。Web ComponentsはJSでオブジェクトを渡せるけど、HTMLでそれができるって話は初めて聞いたよ。" userName="_heimdall" createdAt="2025/09/16 01:54:01" color="">}}




{{<matomeQuote body="ウィジェットツールキットをCanvas用に作って、通信にはWebSocketsを使うべきだよ。DOM操作は完全にハックなんだ。パフォーマンスとダークパターンにかかるコストが大きすぎる。インタラクティブなアプリケーションを作るなら、ちゃんとアプリケーションとしてCanvasにウィジェットを描画するべきだね。" userName="netbioserror" createdAt="2025/09/16 02:22:56" color="#ff5c5c">}}




{{<matomeQuote body="Reactを使わずに同じことができれば、Reactを使う意味ないってのはわかるよ。Reactなしじゃ動かない優れたフロントエンドコンポーネントが多いのはムカつくね。Web Componentsを長くサポートしてこなかったし。でも、Web Componentsってそのままじゃ何も付いてこないし、Reactと比べるのは的外れ。Litはいいけど、それはフレームワーク。ReactとLitを比べるのは、Reactと素のWeb Componentsを比べるのとは違う話だよ。" userName="WA" createdAt="2025/09/16 10:09:37" color="#ff5733">}}




{{<matomeQuote body="React UIライブラリの中でWeb Componentsをうまく使えた人っている？独自のデザインシステムでコンポーネントライブラリを作るとき、RACみたいなヘッドレスライブラリを使えば、アクセシブルでタッチデバイスでも動くコンポーネントを実装できるから助かってるんだ。Web Componentsは理論的には補完的なツールになり得るけど、実際どこで使うのがベストなのかはよくわからないんだよね。" userName="squidsoup" createdAt="2025/09/15 22:59:01" color="">}}




{{<matomeQuote body="Web Componentsを真剣に使ったことがないか、Web開発の経験がほとんどない人だけがこんな議論をするって確信してるよ。例えば、議論好きでつまらないバックエンド開発者が、ほとんど経験がないくせに的外れな意見を言うんだけど、彼も最近Web Componentsを推してたな。彼はほぼWeb開発経験ゼロだったよ。" userName="IceDane" createdAt="2025/09/16 05:28:14" color="">}}




{{<matomeQuote body="それだけじゃないよ。Web Componentsの最大の問題は、結局ビルドステップが必要になること。すべてのコンポーネントがインタラクティブでJSに依存するわけじゃないし、アバター画像みたいな静的な要素でも、すぐに描画したいけどスタイルやロジックはスコープを分けたいって時がある。Declarative Shadow DOMは役立つけど、最終的な出力には重複コードがたくさん出てきて、「そもそもなんでWeb Components使ってるんだっけ？」って疑問にぶつかるんだ。" userName="diiiimaaaa" createdAt="2025/09/16 04:33:46" color="#38d3d3">}}




{{<matomeQuote body="あぁ、それはよくある誤解だよ！propertiesとattributesを混同してるね。attributesはHTMLで設定されて文字列型だけど、LitJSのpropertiesはどんなJavaScript値でも扱えるんだ。例えば、俺のプロジェクトでは、duckdb wasmコネクションからのデータを表示する小さなWebコンポーネントがあるんだけど、コネクションオブジェクトをpropertyとして渡したら完璧に動くよ。" userName="jdkoeck" createdAt="2025/09/16 06:40:47" color="#785bff">}}




{{<matomeQuote body="それってバンドルされたコードなの？それとも4000行くらいのコードが、そのケースのためだけに書かれてるの？自分のコードすら再利用しないの？俺なら、もっとまともで論理的な方法でコードを整理するところから始めるね。でも、もし君がこのコーディングを楽しんでるなら、それでいいんじゃないかな。" userName="brazukadev" createdAt="2025/09/16 17:04:24" color="">}}




{{<matomeQuote body="TypeScriptインターフェースで定義されたオブジェクトとして整理されてるよ。たくさんの小さなファイルに分割しても同じように整理できるけど、そうするとコードが複数箇所に散らばるだけで、一つのファイルの行数が減る以外のメリットはないよ。フロントエンドのコードをJSXとしてしか見てない人は、ただのJavaScriptになった時にどう進めればいいか分からないみたいだね。ブラウザ外でコードを書いてないなら、実際のアプリケーションコードに触れたことがないだろうから、テンプレートの抽象化しか見てないんだろう。現実には、JavaScriptはブラウザでもNodeでも変わらない。APIが違うだけだよ。もしそうなら、JSXじゃないものは何でもパニックの原因になる、特に120行を超えるとね。コードが読めないなら、どんな代替ガイドも意味ないよ。" userName="austin-cheney" createdAt="2025/09/16 18:37:32" color="#ff33a1">}}




{{<matomeQuote body="ReactみたいなものとWeb Componentsを使う場合、attributesを渡すのは簡単だけど、propertiesを設定するのはずっと難しいよ。useRefやuseEffectみたいなエスケープハッチを使う必要があるし、間違ったことをしがちだから少し注意が必要だね。" userName="chrismorgan" createdAt="2025/09/16 08:50:54" color="#ff33a1">}}




{{<matomeQuote body="Reactは毎年再発明されてるってマジ？関数コンポーネントの話？何か見逃してる大きな変更ある？俺的には結構変化ないように思えるけどな。" userName="echelon" createdAt="2025/09/16 02:46:10" color="">}}




{{<matomeQuote body="おい、俺もそれに関わったことあるぜ！nordhealth.designもね。どっちもReact使ってたよ。あとVueとかAngular、Djangoみたいなサーバーレンダリングアプリも。" userName="WickyNilliams" createdAt="2025/09/16 08:50:59" color="">}}




{{<matomeQuote body="うちの会社では社内アプリはReactライブラリを使わなきゃいけないんだ。「Reactが当たり前」じゃなくて、「Reactしか選択肢がない」状態。中央ライブラリをWeb Componentsに作り直せば、どのフレームワークでも選べるようになるって意見にはマジで同意するね。" userName="cowsandmilk" createdAt="2025/09/15 22:43:32" color="#38d3d3">}}




{{<matomeQuote body="Reactは自然に勝ったわけじゃない。効果的でよく設計されたから、デファクトスタンダードになっちゃった結果、悪者扱いされてるんだよ。Reactがイノベーションを阻害してるなんて主張はマジで馬鹿げてる。他に紛らわしいフレームワークだらけの中、Reactは唯一まともで安定した選択肢なんだからさ。" userName="whoknowsidont" createdAt="2025/09/16 03:14:03" color="#38d3d3">}}




{{<matomeQuote body="恐縮だけど反対意見だね。Reactはシンプルなサイトにはスケールダウンしにくいと思う。簡単なサインインページならDOMと＜form＞で十分なのに、ReactだとJSXやHooks、ライフサイクル、ビルドなど学習コストが高い。VueやAlpineはCDNでプログレッシブに使えるけど、ReactはJSXだからコンパイル必須で、CDNでの使い方は非現実的でドキュメントにもない。ほとんどのサイトはFacebookやNetflixじゃないし（NetflixもReactから離れてる: https://x.com/NetflixUIE/status/923374215041912833）、Reactが効果的とかよく設計されてるとは言えないな。" userName="actinium226" createdAt="2025/09/16 04:23:09" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="イノベーションって、「どれだけスケールダウンするか」で測れるもんじゃないだろ。" userName="auggierose" createdAt="2025/09/16 04:49:56" color="">}}




{{<matomeQuote body="Reactがどこがどう設計されてるって？ReactとAngularのクイックスタートを見比べればわかる。片方はちゃんと構造化されてるのに、もう片方は魔法と慣習で無理やりまとめたスパゲッティスクリプトだ。「PHP: a fractal of bad design」の批判がReactにも当てはまる。Reactが流行ったのは、PHPと同じで設計が良いからじゃなくて、すぐに目に見える結果が出るからさ。だけどそれは長期的な保守性を犠牲にしてる。Metaの主要プロジェクトを見ても、彼らですらReactで安定したサイトを作れないなら、誰も無理だよ。Angularで作られたGoogleのプロジェクトは、問題はあるにせよ、大体機能的だ。" userName="friendzis" createdAt="2025/09/16 07:30:59" color="#38d3d3">}}




{{<matomeQuote body="ReactってJSXもビルドチェーンも必須じゃないぜ。俺のゲーム[1]は単一HTMLファイルにReact（Preactだけど）を使ったシンプルなアプリだ。CDNを使えば速く読み込めるし、部分的にレンダリングできるからプログレッシブに使えるんだ。JSXの代わりにh関数を使えば、タグ名、属性、子要素を指定するだけでコンポーネントを作れる。超簡単だろ？<br>[1]: https://xkqr.org/ship-investor/ship-investor.html<br>（連続バージョン: https://xkqr.org/ship-investor/ship-investor-2.html、秘密の第3バージョン: https://xkqr.org/ship-investor/ship-investor-3.html）" userName="kqr" createdAt="2025/09/16 06:43:39" color="#785bff">}}




{{<matomeQuote body="NetflixはReactから離れてないよ。ランディングページはサーバーサイドレンダリングで静的なReactコンポーネントとしてレンダリングして、最小限のインタラクティブ性だけクライアント側JSで追加してるんだ。Reactのステート管理とか全部送るのを避けるためだよ。" userName="cpckx" createdAt="2025/09/16 04:58:04" color="#785bff">}}




{{<matomeQuote body="Reactは12年前は革新的だったけど、すぐに他のフレームワークが似たことやり始めたよ。それ以来、十分使えるけど、もうイノベーションをリードするフレームワークじゃないね。むしろ古いVirtual DOM設計に対応するために成熟して、今のフレームワークよりボイラープレートが増えてるくらいだ。" userName="gitaarik" createdAt="2025/09/16 03:47:28" color="#45d325">}}




{{<matomeQuote body="Reactの使い方が本来の設計と全然違うと、もはやReactじゃないよ。ブラウザでの利用が前提で、サーバーサイドのレンダリングにはあまり向いてないんだ。" userName="mike_hearn" createdAt="2025/09/16 08:11:59" color="">}}




{{<matomeQuote body="Reactが「効果的じゃない」「うまく設計されてない」ってのは的外れだよ。現代のWebが使いやすいのはReactのおかげだし、NetflixもReactから離れてない、純粋なSSRを使ってるだけだよ。https://react.dev/reference/react-dom/server/renderToPipeabl...<br>Reactは昔からSSRが基本で、クライアントでのハイドレーションも簡単。Reactのライフサイクルが難しいなんて言ってたら、ちゃんとプロダクトを作るなんて無理だよ。" userName="whoknowsidont" createdAt="2025/09/16 14:16:36" color="#ff5733">}}




{{<matomeQuote body="主要なフロントエンドフレームワークってどうやって決めるの？Angular、React、Flutter、Vue、Svelteとかあるけど、自分はReactしかがっつりやってないんだ。でもGoogleトレンドとかGitHubスターを見ると、Reactがやっぱりトップランナーみたいだね。<br>- [1] https://trends.google.com/trends/explore?cat=32%26date=today%2..." userName="spanishgum" createdAt="2025/09/16 04:23:08" color="#45d325">}}




{{<matomeQuote body="ReactとTailwindの組み合わせって、LLMがコードを生成しやすいみたい。構文がシンプルで、コード、CSS、HTMLがまとまってるのと、Tailwindの色名がわかりやすいのが理由かもね。" userName="chvid" createdAt="2025/09/16 06:38:49" color="#38d3d3">}}




{{<matomeQuote body="Reactは昔からSSRをして、その後クライアントでハイドレーションするのが基本だったじゃん。なんで「本来の使い方じゃない」って言うの？純粋なSSRなんて、クライアントでハイドレーションしなければいいだけだよ。すごく簡単だし、元々それがウリだったのに、なんで違うって主張するんだ？" userName="whoknowsidont" createdAt="2025/09/16 14:18:34" color="">}}




{{<matomeQuote body="これは間違ってるよ。君、ReactとNext.jsを混同してるんじゃない？ReactはHTMLを生成するし、最初のReactDOMは純粋なクライアントレンダリングのライブラリだったんだ。" userName="sbergot" createdAt="2025/09/16 15:59:34" color="">}}




{{<matomeQuote body="数MBダウンロードしてフォームをいくつか表示したり、数GBのメモリがあっても動かないアプリとか、UE5のフットガンで駄作ゲームばかりになったり、10年前より遅いOSとかさ。なんかWirthの法則でPCが溶けてる気がするよ。" userName="KronisLV" createdAt="2025/09/16 05:38:19" color="">}}




{{<matomeQuote body="イノベーションって昔はgigaquacksで測ってたんだよね。2025年の改善で、ウェブページ表示に16 petaquacks以下のイノベーションしか使ってないなんて、本気出してる？イノベーションを縮小してる人いるのかな？" userName="balamatom" createdAt="2025/09/16 04:58:03" color="">}}




{{<matomeQuote body="CDNからReactをインポートすると、初回ページロードが速くなるってのは怪しいよ。新しいホストにHTTPS接続する方が、自社サーバーからファイル提供するより時間がかかることが多いんだ。サーバーが遠くてもね。" userName="chrismorgan" createdAt="2025/09/16 08:38:05" color="#785bff">}}




{{<matomeQuote body="どれくらいのイノベーションが必要なんだ？多くの場合、既存のものを繰り返して改善する方が良くて、コストもかからないんじゃないかな。" userName="bluGill" createdAt="2025/09/16 03:23:53" color="">}}




{{<matomeQuote body="HTTPS接続が問題なんじゃなくて、ブラウザがES6モジュールをインポートする時に依存関係を一つずつ読み込むのが問題なんだよ。これだと大量のリクエストが発生するからね。CDNを使えば、ライブラリとその依存関係がバンドルされて一つのリクエストになるから、すごく速くなるんだよ。" userName="kqr" createdAt="2025/09/16 08:44:17" color="#785bff">}}




{{<matomeQuote body="違うよ。俺はReactが初期リリースされた時から使ってる経験があるからね。君が間違ってるっていう事実も、君の知識が限られてることも明らかだよ。Reactは常にサーバでコンポーネントを初期レンダリングして、クライアントでハイドレーションしてきたんだ。信じられないなら、初期リリースv0.4.0をダウンロードして試してみてよ: https://github.com/facebook/react/releases/tag/v0.4.0<br>「React.renderComponentToString」を使ってみて何が起こるか教えてくれよ。.NETですらReactをSSRに使うソリューションがあったんだぜ: https://reactjs.net/features/server-side-rendering.html<br>React自体がコンポーネントをサーバ側でレンダリングできないなんて言うのは、一般的なソフトウェアの仕組みについて重大な誤解をしてるってことだぞ（笑）。" userName="whoknowsidont" createdAt="2025/09/16 16:22:31" color="#ff5c5c">}}




{{<matomeQuote body="俺は退屈なスタックが大好きだよ。Node.jsとその依存地獄、コンパイル、簡単なフォームを作るのに百科事典を読まなきゃいけないようなフレームワークはもううんざり！<br>PHPや爆速のPHP-fpm、MySQL／MariaDBやPostgres、設定にはJSON、jQuery…これでもほとんどのケースで十分なんだよ。Netflix、Spotify、Facebook、Wazeみたいな何百万ものユーザーがいるような大規模なサイトなら話は別だけどね。" userName="sixtyj" createdAt="2025/09/16 06:09:04" color="">}}




{{<matomeQuote body="両方使ってみたけど、Reactの方が圧倒的に読みやすくて、作業しやすいね。" userName="watwut" createdAt="2025/09/16 07:44:23" color="">}}




{{<matomeQuote body="React自体はそんなに重くないし、もっと軽いPreactとかもあるんだよ。重いのはたいてい他の依存関係が原因だから、重くてごちゃごちゃしたソフトウェアの責任はReactじゃなくて開発者側にあるんだよ。" userName="Banou" createdAt="2025/09/16 05:53:39" color="#785bff">}}




{{<matomeQuote body="Angularだと、「この`foo`コンポーネントのコードはどこにあるの？」って聞くと、コードベースのどこにでもあるかもしれないし、モジュール設定によっては複数定義されてたりするから、どれが使われてるか見つけるのが大変だよ。<br>Reactなら、「この`Foo`コンポーネントのコードはどこにあるの？」って聞くと、同じファイルに定義されてるか、他のJavaScriptみたいにインポートされてるかのどっちかだよ。<br>なのに、Reactの方がクレイジーだって言われるんだからね。" userName="javcasas" createdAt="2025/09/16 08:19:23" color="#ff33a1">}}




{{<matomeQuote body="おい、一番人気だからって一番良いってわけじゃないんだぞ。お前ら馬鹿は高校で何も学ばなかったのか？90年代から2000年代のMicrosoftを見てみろよ。クソみたいなソフトウェアだったのに、圧倒的に広く使われてたんだぜ。" userName="cranberryturkey" createdAt="2025/09/16 06:32:48" color="">}}




{{<matomeQuote body="「主導的な革新的フレームワーク」って言ってたけど、キーワードは「革新的」だよな。一番大きなプレイヤーってのは、ほとんど革新なんてしないんだよ。たいていは、不当に市場を独占してるだけさ。" userName="danlitt" createdAt="2025/09/16 06:27:57" color="">}}




{{<matomeQuote body="Next.jsがRSC（React Server Components）をどう実装・普及させてるかに俺の意見が偏ってるかもしれないけど、ここ5年くらいのReactはRSCの反復が中心で、それが多くのプロジェクトで混乱を生んで、学習が難しくなってるんだよ。Reactは歴史的には（ライフサイクルメソッドからHooksみたいに）すごく良い進化をしてきたと思うんだけど、最近はそうでもないな。" userName="hobofan" createdAt="2025/09/16 06:23:45" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
