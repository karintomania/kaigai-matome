+++
date = '2025-02-21T00:00:00'
draft = false
title = '5日間で5つのAIリポジトリをオープンソース化！DeepSeekの新しい取り組みが話題に'
tags = ["AI", "オープンソース", "テクノロジー", "リポジトリ", "DeepSeek"]
featureimage = 'thumbnails/blue2.jpg'
+++

> 5日間で5つのAIリポジトリをオープンソース化！DeepSeekの新しい取り組みが話題に

引用元：[https://news.ycombinator.com/item?id=43124018](https://news.ycombinator.com/item?id=43124018)

{{<matomeQuote body="リリース楽しみだけど、深く考えすぎてるのは俺だけ？このスレッドは個人的な解釈が多くて、DeepSeekはビジネスなんだから期待が大きすぎる気がするな。" userName="infecto" createdAt="2025-02-21T13:27:19" color="">}}

{{<matomeQuote body="具体的な情報がないから、議論が一般的になっちゃうんだろうな。アナウンスのアナウンスみたいなのはHNでは話題になりにくいし、リリースが面白くなるまで待つべきだと思う。" userName="dang" createdAt="2025-02-21T16:28:10" color="">}}

{{<matomeQuote body="中国ではビジネスは法的に個人とは見なされてないから、言葉の意味が違うんだよ。" userName="mudlus" createdAt="2025-02-21T23:56:52" color="">}}

{{<matomeQuote body="“純粋なガレージエネルギー”って表現いいね。推論スタックに興味津々。多くの人がR1を一台のH200ノードで回してるけど、DeepSeekはGPU当たりのRAMが少ないから、クラスタベースのMoE展開してるんじゃないかな。" userName="thundergolfer" createdAt="2025-02-21T06:14:53" color="#45d325">}}

{{<matomeQuote body="彼らの技術報告によると、一つの推論展開は約400GPUらしいぜ。" userName="mmoskal" createdAt="2025-02-21T06:56:55" color="">}}

{{<matomeQuote body="負荷バランスを最適化するには必要だな。残念ながら、この利益は小規模な展開には期待できないけど。" userName="fspeech" createdAt="2025-02-21T23:08:47" color="">}}

{{<matomeQuote body="H800のRAMサイズは削減されてないと思うけど、GPU間のメモリ帯域幅に問題があるみたい。最適化について興味深いな。" userName="sva_" createdAt="2025-02-21T06:31:28" color="">}}

{{<matomeQuote body="その通り。高性能GPUをトレーニング用に制限する主な方法は3つあるんだ。H800は前の2つは変更なしで、インターコネクト速度だけ半分になってるらしいよ。" userName="NitpickLawyer" createdAt="2025-02-21T11:15:56" color="">}}

{{<matomeQuote body="“純粋なガレージエネルギー”って10,000のA100sがあるらしい。そんなガレージが欲しいなあ。" userName="golly_ned" createdAt="2025-02-21T06:55:53" color="#ff33a1">}}

{{<matomeQuote body="＞“DeepSeekは約10,000のH800と10,000のH100を持っているはず。さらに、Nvidiaが中国向けのGPUをこの9ヶ月で100万台以上生産したよ。”" userName="blackeyeblitzar" createdAt="2025-02-21T06:57:56" color="">}}

{{<matomeQuote body="リポジトリの論文に書いてあるのは『DLトレーニングのために、Fire-Flyer 2に10000のPCIe A100 GPUを導入した』ってことだね。" userName="golly_ned" createdAt="2025-02-22T04:59:08" color="">}}

{{<matomeQuote body="そのレポートは雑だね。親会社（ヘッジファンド）がオープンに報告したすべてのGPUを、投資先企業で使ってると思ってるなんて馬鹿げてる。コカ・コーラがバークシャー・ハサウェイの全オフィスにアクセスできるって言ってるようなもんだよ。それに、DeepSeekの歴史を褒めるコメントも誇張されてて、実際には会社が1年も運営されてないからね。マーケティングのための曖昧な話はやめて、目の前の事実とコードに集中しよう。" userName="1oooqooq" createdAt="2025-02-21T09:37:40" color="">}}

{{<matomeQuote body="来週から5つのリポジトリをオープンソースにするって言ってるけど、実際のリポジトリが公開されるまで待ってから議論したほうがいいかも。オープンソースにされる詳細は何もないっぽいし、ただの予告みたいだね。" userName="oefrha" createdAt="2025-02-21T06:21:23" color="">}}

{{<matomeQuote body="確かに実際のリポジトリが出るまで待つべきだね。でも、これをGitHubのREADME.mdで見るのとEUのスライド式アプローチを比べると、EUに価値が提供できる人には賭けにくいかな。ヨーロッパはいい場所だと思ってるけど、EUの研究プロジェクトをいくつか経験してきたから、その成果には疑問を感じてる。" userName="tigroferoce" createdAt="2025-02-21T09:04:26" color="">}}

{{<matomeQuote body="間違ってないよ。実際に手に取れるものが出てくる中で成長するプレイヤーを見守る方が、政府に選ばれたプレイヤーが何も面白いものを見せる前に空虚な発表をするより遥かにエキサイティングだよね。" userName="oefrha" createdAt="2025-02-21T09:43:04" color="#ff33a1">}}

{{<matomeQuote body="それだけじゃないよ。世界の他の地域が光の速さで動いている中で、EUがこのプロジェクトを生き残らせたいなら、相当な態度の変化が必要だね。EUのプロジェクトが失敗するのに構わないと思うなら、未来はどうなるか冷静に考える必要がある。過去50年間、ヨーロッパは小さくなってしまったけど、計画や対応がないと正直難しい。" userName="tigroferoce" createdAt="2025-02-21T13:16:23" color="">}}

{{<matomeQuote body="＞ヨーロッパは小さくなったわけじゃなく、過去50年間でEUの国々は小さくなったと言ってるけど、CERNやESA、Airbusはどう考えても巨大企業だよね。彼らの分野では間違いなくトップだし。SpaceX対Arianneの再利用性の比較についても考慮に入れてるけど、BoeingとAirbusの結果や文化もあるし。ヨーロッパは工学やハードサイエンスで1位か2位（アメリカの後）なのは動かない事実だし、ソフトウェアやAIの分野で4位や5位になっても諦める理由はないと思うよ。アメリカの投資家がAI投資のリターンを求めるようになった時、今素晴らしく見える「先進的」なAI企業の多くが破産するだろうけど、ヨーロッパのプロジェクトはまだ資金が確保されてるだろうし。" userName="alienthrowaway" createdAt="2025-02-21T17:35:57" color="#ff5733">}}

{{<matomeQuote body="そうそう、これを投稿したのは、君がすでにそのポイントを指摘したのを見た後だったよ。" userName="dang" createdAt="2025-02-21T16:39:38" color="">}}

{{<matomeQuote body="全く無関係なことだけど、エレクトロニック・ダンス・ミュージックやヒップホップで使われる「ドロップ」って言葉がソフトウェアでも使われるのが面白いな。" userName="dkga" createdAt="2025-02-21T07:09:11" color="">}}

{{<matomeQuote body="「ドロップ」って言葉がエレクトロニック・ミュージックで広まる以前から、ヒップホップでは「新しいトラックをドロップする」って言い回しは永遠に使われていたと思うよ。" userName="locusofself" createdAt="2025-02-21T07:13:27" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="飛行機とパラシュートでの配送から来た表現だと思う。UPSの配達ドライバーや麻薬密売人から広がって、今は単に『届ける』って意味になってるよ。" userName="yencabulator" createdAt="2025-02-25T17:51:15" color="">}}

{{<matomeQuote body="正直、これはドロップがドロップシッピングに関するものだと思う。" userName="nialv7" createdAt="2025-02-21T07:40:22" color="">}}

{{<matomeQuote body="これはOpenAIの12日間のクリスマスよりもワクワクするよね。" userName="ipsum2" createdAt="2025-02-21T05:46:37" color="">}}

{{<matomeQuote body="感情的には同意するけど、o1はパラダイムシフトだった。DeepSeekがやったことはそこまでのレベルじゃないと思う。それはDeepSeek自身も同意してるよ。" userName="sanxiyn" createdAt="2025-02-21T05:51:03" color="#ff5c5c">}}

{{<matomeQuote body="パラダイムシフトは実際の『オープン』部分で、OpenAIはそれに苦戦しているようだね。" userName="h0l0cube" createdAt="2025-02-21T05:58:58" color="">}}

{{<matomeQuote body="科学知識の進展に関してはそうかもしれないが、DeepSeekはopexからcapexへのパラダイムシフトを達成した。このおかげで、リクエストごとに支払ったり、NVIDIAや制裁と戦ったりする必要がないアプリケーションが経済的に実現可能になった。" userName="Maxious" createdAt="2025-02-21T06:31:02" color="#ff5c5c">}}

{{<matomeQuote body="そのコストはどれだけ隠されてたり、補助されてるかはどうなんだろう？たくさんの主張があるけど、ぼやけたものも多いし。API料金の話を持ち出すと、CCPは地元企業を国際舞台で損失を出しながら運営させることが有名だし。" userName="w0m" createdAt="2025-02-21T16:49:00" color="">}}

{{<matomeQuote body="本当にそうだよ。中国の企業の主張をそのまま受け入れるのをやめてほしい。CCPが地政学的・経済的な理由で利害関係を持ってるから。Bytedanceもそういう例だし。" userName="astar1" createdAt="2025-02-22T04:06:43" color="">}}

{{<matomeQuote body="そうだね。OpenAIの12日間なんて純粋なアルトマンの妄言だよ。" userName="noname120" createdAt="2025-02-21T13:17:40" color="">}}

{{<matomeQuote body="DeepSeekと彼らが出しているすべてのイノベーションや研究に対して深い敬意を表したい。“共有されたすべてのラインが集団の勢いとなり、旅を加速する”って言葉はすごくいいね。" userName="vinhnx" createdAt="2025-02-21T06:35:53" color="#45d325">}}

{{<matomeQuote body="実際、OpenAIを完全に dismantle しようとしてるよね。そんなつもりはないみたいだけど。LLMは、CIOマガジンの「あなたのブロックチェーン戦略は？」みたいな無理矢理な内容があった時よりも、ずっと legit なブロックチェーンだった。AIのバブルは崩壊する、2026年末には確実に。" userName="wg0" createdAt="2025-02-21T10:08:57" color="">}}

{{<matomeQuote body="OpenAIって今、週に4億人のアクティブユーザーいるんじゃないの？" userName="sebzim4500" createdAt="2025-02-21T13:21:54" color="">}}

{{<matomeQuote body="それってアプリ/ウェブサイト、それともAPIのこと？" userName="FergusArgyll" createdAt="2025-02-21T13:47:01" color="">}}

{{<matomeQuote body="アプリ/ウェブサイトみたいだね。> chatgptは最近400M WAUを突破した、世界の5％にサービスできてるのは嬉しい。2M以上のビジネスユーザーが仕事でchatgptを使ってるし、APIの使用もo3ミニローンチ以降5倍に増えてる。" userName="sohzm" createdAt="2025-02-21T14:00:53" color="#ff33a1">}}

{{<matomeQuote body="君の意見にはほぼ同意。Googleはコストを下げる戦略があるから驚いてる。原版のDeepSeek R1やその distilled バージョンをホストしてるAPIプロバイダーが結構多い。コストがゼロに近づくと、ユースケースが指数関数的に増えるし。" userName="mark_l_watson" createdAt="2025-02-21T14:01:44" color="">}}

{{<matomeQuote body="＞ そんなつもりはないみたいだけど。これはとても naïve な考えだと思う。創設者は定量分析者で、何十年も中国での投資や市場設計、価格設定に関与してきた。政治に関与していないなんてことは、中国ではあり得ない。この人は何をしているかを分かってるよ。" userName="thenaturalist" createdAt="2025-02-21T12:51:34" color="#ff5c5c">}}

{{<matomeQuote body="アメリカ人を聖人扱いして、他の国の人を悪者にするなんて思考はないけど、あなたは何が言いたいの？" userName="Rodmine" createdAt="2025-02-22T15:18:41" color="">}}

{{<matomeQuote body="AIバブルって何を指してるのか分からない。企業の評価のこと？確かにいくつかの企業はうまくいかないだろうけど、今や多くの人が業務を加速するために使っているから、戻れないよ。あの時の動画ストリーミングのバブルが2020年に崩壊するって言ってるのと同じ。バブルが崩れる企業はあるけど、それ以外は特別なことじゃないよ。" userName="lugu" createdAt="2025-02-21T10:43:38" color="">}}

{{<matomeQuote body="バブルが崩れるってのは、業界自体が消えるわけじゃない。市場の過剰な期待が消えて、実際に価値のあるものだけが残るってこと。AIに関しては、実際に多くは fluff だから、バブルって呼ぶのは妥当。" userName="alternatex" createdAt="2025-02-21T12:10:47" color="">}}

{{<matomeQuote body="ドットコムバブルが崩れても世界中がインターネットを使い続けているし。「AI企業」の多くは、前例のない収益マルチプライヤーで評価されてる。OpenAIなんて44倍だし。戻ることはないと思うけど、このバブルは崩れるよ。" userName="mdjt" createdAt="2025-02-21T11:58:52" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="AIの世界では、どこに強みがあるか興味深いよね。良いベースモデルはAPIにアクセスすればいつでも抽出できるし、システムプロンプトは漏れちゃうし、UIの工夫もコピーされる。でも結局、強みはハードウェアと垂直統合にあるのかも。" userName="antupis" createdAt="2025-02-21T05:53:44" color="#ff33a1">}}

{{<matomeQuote body="＞”ハードウェアと垂直統合が強みかも。”<br>強みは作れる製品さ。差別化された製品はコモディティにならないから、LLM自体は製品じゃない。Google、MSFT、Metaはすでに利益を上げる製品を持ってて、他の企業は製品作りに金を使いまくってる。実際に競争できるのはChatGPTだけ。LLMを作るのはデータベースを作るのと同じで、消費者はデータベースのためには買わないんだ。" userName="vineyardmike" createdAt="2025-02-21T07:23:40" color="#ff5c5c">}}

{{<matomeQuote body="データベースにはオペレーターが必要だけど、LLMは必要ないって意見もある。でも、サーバーやGPUの運用、システムプロンプトの作成、モデルのファインチューニングは誰がやるの？大手クラウドAPIでも、自社内でも必要な作業なんだ。多くのLLMの利用例は、ChatGPTのチャットボットだけじゃないし、自動要約や文書分析などいろんな道具になるよ。" userName="dsco" createdAt="2025-02-21T08:14:05" color="#38d3d3">}}

{{<matomeQuote body="LLMにはオペレーターが絶対に必要。サーバーやGPUを運営したり、プロンプトを作る人がいるから。LLMの利用例はチャットボットだけじゃなくて、自動的な要約や分類、OCR、翻訳などいろんなツールになるよ。" userName="vineyardmike" createdAt="2025-02-21T11:02:11" color="#ff33a1">}}

{{<matomeQuote body="Oracleはデータベースを売ってすごく成功しているよね。データを持つことが強みになるんだ。" userName="esafak" createdAt="2025-02-21T13:49:06" color="">}}

{{<matomeQuote body="過去に何度も同じ道をたどったよね。オープンプラットフォームがいつも他を打ち負かす。サービス提供者になるほうがよっぽどいいんじゃない？" userName="deelowe" createdAt="2025-02-21T06:14:21" color="#ff5c5c">}}

{{<matomeQuote body="オープンソースが勝つんだ。十分に良いもの+オープン（無料）って魅力的な提案だよね。" userName="runlevel1" createdAt="2025-02-21T08:12:51" color="">}}

{{<matomeQuote body="＞”AI空間での強みがどこにあるか興味深い。”<br>進む先に、強みは必要ないよ。" userName="panny" createdAt="2025-02-21T09:36:15" color="">}}

{{<matomeQuote body="＞”良いベースモデルはAPIにアクセスしさえすればいつでも抽出できる。”<br>それってどういう意味なの？" userName="sumedh" createdAt="2025-02-21T09:01:21" color="">}}

{{<matomeQuote body="閉じたソースモデルの出力を使って、合成トレーニングデータセットを作り、賢いモデルの利点をバカなモデルに取り込むことができるんだ。これがOpenAIが思考過程を見せない理由だよ。" userName="mptest" createdAt="2025-02-21T09:17:53" color="#38d3d3">}}

{{<matomeQuote body="なんでモートが必要なの？" userName="rfoo" createdAt="2025-02-21T07:42:56" color="">}}

{{<matomeQuote body="俺たちは必要ない。でも投資家は必要だ。制限をかけなければ、LLMにお金は入らないからな。" userName="lompad" createdAt="2025-02-21T07:54:17" color="">}}

{{<matomeQuote body="その通りだ。投資家はLLMにお金を注ぎ込むのをやめた方がいい。純粋な数学にはお金が入らないのと同じように。" userName="rfoo" createdAt="2025-02-21T09:49:20" color="">}}

{{<matomeQuote body="会社が次のブレイクスルーやトレーニングの資金を稼ぐためさ。" userName="FergusArgyll" createdAt="2025-02-21T13:50:38" color="">}}

{{<matomeQuote body="GPUファームのオープンソース代替はない、それがモートだ。だからオープンソースのモデルを出しても大丈夫なんだ、実行するのが難しいし、何百万のユーザーのSLAを維持するのはもっと大変だし。" userName="tonyhart7" createdAt="2025-02-21T06:36:09" color="#ff33a1">}}

{{<matomeQuote body="ラップトップは高性能モデルをどれくらいで運用できるようになるの？エンドユーザーがサーバーファームを必要とするユースケースは何？" userName="randomvariable" createdAt="2025-02-21T14:10:36" color="">}}

{{<matomeQuote body="多分次の5〜10年かな。でもその頃にはさらなる技術革新が進んで、例えば10兆パラメータのクラウドホスティングが普通になって、600Bモデル使うのが馬鹿らしく感じるかも。" userName="tonyhart7" createdAt="2025-02-21T14:23:08" color="">}}

{{<matomeQuote body="これ見るのはいいね！インフラツールのオープンソースはAIのイノベーションを加速できる。よく文書化されたリポジトリがあると、実験や既存の作業の上に構築するのが簡単になるし。これらのリポジトリは分散トレーニングやモデルサービングに特化しているの？" userName="codelion" createdAt="2025-02-21T05:51:31" color="#ff5733">}}

{{<matomeQuote body="FacebookとDeepSeekにしっかりオープンソースされた基盤モデル企業の評価はどう競争するの？中国やFacebookがほぼ無料で提供しているから、これらのモデルを作っても数百億の価値が得られない気がする。" userName="andy_ppp" createdAt="2025-02-21T07:31:51" color="">}}

{{<matomeQuote body="あの評価は創業者が投資家に信じさせた架空の未来に基づいてるよね。ホントにAGIに最初に到達したらお金を独占できるって考えは、モデルが漏れたり再現できることを深く考えてないんだ。DeepSeekがそれを証明したし、OpenAIもAnthropicも、実はほぼモーテが無いってことがわかると思う。現実に評価がぶつかるとき、またAIの冬が来そうだ。" userName="lompad" createdAt="2025-02-21T07:52:14" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="AGIが存在する未来で、お金が存在しないなんて考えられない。すぐに全てが価値を失うか、創造者が富を独占してしまうか、もしくはユートピアが来てお金が必要ない社会になる。" userName="mcslurryhole" createdAt="2025-02-21T10:09:16" color="#ff5733">}}

{{<matomeQuote body="経済の法則は人間に対してもAIに対しても同じ。むしろAIの方がより合理的な経済人かもしれない。仮にAIが全人類を滅ぼしても、AI同士の取引にはお金が必要だと思う。" userName="logicchains" createdAt="2025-02-21T11:15:05" color="">}}

{{<matomeQuote body="ほとんど無限にエネルギーを生み出せるようになったら、取引する必要がある？リソースが限られてるから取引するんじゃないかな。" userName="esafak" createdAt="2025-02-21T13:51:17" color="">}}

{{<matomeQuote body="リソースの配分は必要。AI自身もリソースをめぐって「議論」することになると思う。だからペーパークリップを最大化するみたいな話になる。" userName="cellis" createdAt="2025-02-21T14:34:13" color="">}}

{{<matomeQuote body="AGIは人間のように賢いって意味で、新しいことを発明するわけじゃない。無限の無料エネルギーを生み出すとは思えないな。" userName="Jensson" createdAt="2025-02-21T19:14:43" color="">}}

{{<matomeQuote body="今回は冬が来るのが待ちきれない。" userName="1oooqooq" createdAt="2025-02-21T09:40:04" color="">}}

{{<matomeQuote body="PostgresやMySqlは無料だけど、Oracleが毎年何百億も稼ぐのを止められない。" userName="aurareturn" createdAt="2025-02-21T09:15:25" color="">}}

{{<matomeQuote body="Oracle DBからの移行は難しいと思うよ。Oracleに依存してるビジネスは、技術的に奴隷状態にあるから。AIモデルに依存してるビジネスは全然違うと思うけど。" userName="alternatex" createdAt="2025-02-21T12:16:29" color="">}}

{{<matomeQuote body="まだ早すぎる。多くのAIラボは潰れたり買収されたりするだろう。結局、大きな企業が残って、小さい企業は残り物を争うことになる。" userName="aurareturn" createdAt="2025-02-21T16:56:17" color="#ff5733">}}

{{<matomeQuote body="DeepSeekがFacebookや中国について言うのは恥ずかしいことだね。" userName="new_user_final" createdAt="2025-02-21T12:02:34" color="">}}

{{<matomeQuote body="DeepSeekとOpenAIの名前を交換できないかな？" userName="ryao" createdAt="2025-02-21T13:40:17" color="">}}

{{<matomeQuote body="OpenSeekとDeepAIって名前はどう？" userName="miohtama" createdAt="2025-02-21T14:06:07" color="">}}

{{<matomeQuote body="GPが言いたいのは、DeepSeekは実際にはオープンだからOpenAIと名付けるべきってことじゃないかな。" userName="abustamam" createdAt="2025-02-22T04:58:00" color="">}}

{{<matomeQuote body="楽しみだな！使えるケースではオープンモデルを使うように努力するよ。オープンモデルが進化して人気になることで、他のモデルもオープン化されるかも。" userName="mythz" createdAt="2025-02-21T06:12:04" color="#38d3d3">}}

{{<matomeQuote body="これは本当にオープンソースになるのか、それとも重みだけの公開になるのか？トレーニングコードが見たいな。モデルがCCPのプロパガンダや検閲を組み込んでいるのは問題だと思う。" userName="blackeyeblitzar" createdAt="2025-02-21T06:42:10" color="">}}

{{<matomeQuote body="彼らは単にNvidiaの株をショートしてるだけなんじゃない？" userName="voxelizer" createdAt="2025-02-21T06:11:26" color="">}}

{{<matomeQuote body="モデルのリリースの仕方やオープンソースの精神を保ってるのを見ると、期待しちゃうね！" userName="nicetryguy" createdAt="2025-02-21T06:18:42" color="">}}

{{<matomeQuote body="これがNvidiaを押し上げるかもね。<br>＞“経済学におけるJevonsの逆説は、技術の進歩が資源の利用効率を高め（その用途に必要な量を減少させる）、その結果、全体の需要が増えて資源消費が増加することを示している。”" userName="matsemann" createdAt="2025-02-21T10:48:08" color="">}}

{{<matomeQuote body="Tencentが最近10万から20万のH20を買ったけど、オープンソースがNvidiaの価格を下げるかはまだ不明だね。" userName="WiSaGaN" createdAt="2025-02-21T09:32:17" color="">}}

{{<matomeQuote body="＞”なぜなら、共有される全てのラインが集団的な勢いを生み出して、旅路を加速させるから。”彼らのやり方には本当に感心するし、他の人たちのための素晴らしいパラダイムだと思う。理由はどうでもいいけど、彼らが何か義務があったのかとも思う。" userName="macns" createdAt="2025-02-21T06:45:10" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
