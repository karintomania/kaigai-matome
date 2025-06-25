+++
date = '2025-06-18T00:00:00'
months = '2025/06'
draft = false
title = 'MiniMax-M1、ついに発表！ 大規模オープンウェイトのハイブリッドアテンション推論モデル'
tags = ["AI", "大規模言語モデル", "オープンソース", "機械学習", "モデル"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> MiniMax-M1、ついに発表！ 大規模オープンウェイトのハイブリッドアテンション推論モデル

引用元：[https://news.ycombinator.com/item?id=44307290](https://news.ycombinator.com/item?id=44307290)




{{<matomeQuote body="MiniMaxは今週発表ラッシュ！月曜M1、火曜Hailuo 2。<br>このペース続くかな？<br>LLMと動画以外はまだあまり知られてないけど、最新情報はここをチェック→ https://x.com/MiniMax__AI<br>M1の技術レポートは読む価値あり→ https://github.com/MiniMax-AI/MiniMax-M1/blob/main/MiniMax_M...<br>Lightning AttentionやCISPOについてすごい主張をしてるよ。<br>（関係者じゃないけど情報共有）" userName="swyx" createdAt="2025/06/18 08:47:37" color="#45d325">}}




{{<matomeQuote body="MiniMaxは音声モデル、特にTTSもすごいんだよ。<br>一部リーダーボードでトップらしい（私も好き）→ https://artificialanalysis.ai/text-to-speech/arena?tab=leade..." userName="drewbitt" createdAt="2025/06/19 02:21:02" color="#38d3d3">}}




{{<matomeQuote body="月曜M1、火曜Hailuo 2ね。<br>AppleみたいにM1, M1 Pro, M1 Ultraって名付けたら面白かったのにねー。" userName="behnamoh" createdAt="2025/06/18 15:39:43" color="">}}




{{<matomeQuote body="MiniMax M1を動かすのに何が必要かって？<br>8台のH200 141GBだって [1]。費用は約25万ドル [2]！<br>[1] https://github.com/MiniMax-AI/MiniMax-M1/issues/2#issuecomme...<br>[2] https://www.ebay.com/itm/335830302628" userName="reedlaw" createdAt="2025/06/18 11:26:40" color="#ff5733">}}




{{<matomeQuote body="それ、フル量子化での話でしょ？<br>Q4かQ8なら、1万ドルもしない機器で動かせるよ。" userName="incomingpain" createdAt="2025/06/18 12:12:19" color="#ff33a1">}}




{{<matomeQuote body="重く量子化したモデルの経験だと、同じサイズの量子化してないモデルよりはいいけど、元のモデルの性能には全然届かない感じなんだよね。" userName="tgtweak" createdAt="2025/06/18 14:30:34" color="#45d325">}}




{{<matomeQuote body="みんなテストしてるよ。<br>Q8は品質ほぼ変わらないし、Q4も差はあるけど実際使う上では問題ないって。<br>気になるなら商用のSaaS使えばいいじゃん。" userName="incomingpain" createdAt="2025/06/18 14:37:41" color="#ff33a1">}}




{{<matomeQuote body="それって、ベンチマークが実際の使い方を表してるって前提だよね？<br>悪く言うつもりはないけど、LLMのベンチマークってすごく難しいんだよ。" userName="haolez" createdAt="2025/06/18 15:03:34" color="#45d325">}}




{{<matomeQuote body="うん、言いたいことはわかるけど、結局’わかんない’だね。<br>シンプルなコードになるから逆に良くなるって考え方もできるけど。" userName="incomingpain" createdAt="2025/06/18 15:31:02" color="">}}




{{<matomeQuote body="フル量子化以外を動かす意味ないね。" userName="deadbabe" createdAt="2025/06/18 13:27:20" color="">}}




{{<matomeQuote body="量子化効かないって？マジ？" userName="esafak" createdAt="2025/06/18 14:32:33" color="">}}




{{<matomeQuote body="しかも重い疎化を足せば、ラズベリーパイでも動くはずだよ。" userName="cma" createdAt="2025/06/18 12:36:52" color="">}}




{{<matomeQuote body="半年後くらいには、リストにあったH200を$250kで買った人が騙されたってわかるよ。だって、モデルに特定の量子化とちょっとした最適化を加えるだけでローカルで動かせるって気づくから。自分のモデルを訓練したいとかなら別だけど、推論のために$250kで買うのは不要だし、本格的なプロダクション展開には全然足りないよ。" userName="rvz" createdAt="2025/06/18 12:50:33" color="#45d325">}}




{{<matomeQuote body="それ、150兆パラメータのモデルからすでに疎化されてるんだよ‥。" userName="vFunct" createdAt="2025/06/18 12:53:37" color="">}}




{{<matomeQuote body="150兆パラメータが人間の脳のシナプス数への言及だと気づくのに何時間もかかっちゃったよ。" userName="yorwba" createdAt="2025/06/18 19:35:06" color="">}}




{{<matomeQuote body="Mac Studioの512GBモデルじゃ動かせないの？それなら$8,500くらいだけど。" userName="kridsdale1" createdAt="2025/06/18 16:17:30" color="">}}




{{<matomeQuote body="あと、速度が20分の1だよ。だからあんまり使えないね。" userName="hu3" createdAt="2025/06/19 22:00:57" color="">}}




{{<matomeQuote body="このモデルってパラメータ数いくつなの？" userName="GTP" createdAt="2025/06/18 15:15:00" color="">}}




{{<matomeQuote body="4560億だよ、同時には約460億がアクティブ（MoEだからね）。" userName="7moritz7" createdAt="2025/06/18 20:09:21" color="#45d325">}}




{{<matomeQuote body="MiniMax-M1のArXiv論文に公開URLが載ってて、それが空のリポジトリじゃないのがいいね！もうこの人たち好きになったよ。" userName="vintermann" createdAt="2025/06/18 09:50:06" color="#38d3d3">}}




{{<matomeQuote body="LinkedInだとシンガポールの会社みたいだね。すごくいいLLMを作るのに、そんなに参入障壁はないのかも。<br>オープンなモデルとStrix Halo / Ryzen AI Maxの進化で、数年後にはローカルでLLMを動かすのがかなり安くなりそうで期待してるよ。" userName="noelwelsh" createdAt="2025/06/18 09:23:33" color="#785bff">}}




{{<matomeQuote body="MiniMaxはシンガポールじゃなくて、上海拠点の中国企業だよ。<br>SCMPの記事によると、もうすぐ香港でIPOするらしいよ。<br>https://www.scmp.com/tech/tech-trends/article/3314819/deepse..." userName="ulfw" createdAt="2025/06/18 12:26:50" color="#ff33a1">}}




{{<matomeQuote body="そのIPO、注目しとくね。" userName="7moritz7" createdAt="2025/06/18 20:12:50" color="">}}




{{<matomeQuote body="どんどんローカルでモデルを動かすのが避けられない流れになってきたみたいだね。楽しみでもあるし、心配な面もあるよ。<br>この分野で尊敬してる人とかいたら、考えを聞いてみたいな。" userName="manc_lad" createdAt="2025/06/18 10:17:57" color="">}}




{{<matomeQuote body="今はハードウェアが一番のボトルネックだと思うな。GPUはVRAM、CPUは帯域とかベクトル演算能力が足りないんだ。だからStrix Haloはすごく楽しみなんだよ。帯域も演算力もあってメモリもたくさん積める。まだ専用GPUには及ばないけど、数世代後には置き換えられるかもね。専門家じゃないから他の意見も聞きたいな。" userName="noelwelsh" createdAt="2025/06/18 10:34:36" color="#38d3d3">}}




{{<matomeQuote body="Apple SiliconのGPU向け共有メモリはどう関係してくる？コンシューマー向けでそんな安くはないけど、CPUとGPUでメモリを共有するから、ミドルレンジのマシンでも100GBとか大容量メモリが使えるじゃない。" userName="jb1991" createdAt="2025/06/18 10:51:31" color="#ff5c5c">}}




{{<matomeQuote body="M4はStrix Haloと似てるね。M4は帯域が約2倍、演算力が半分、同等メモリだと値段が2倍くらいかな。<br>俺はコストとLinuxデスクトップで使えるからAMDチップに興味あるんだ。Apple tax払うの気にしないならMacもいい選択肢かもね。Apple SiliconでのLLMソフトは大丈夫だと思うし。<br>Strix Halo搭載のFrameworkデスクトップもあるよ。<br>https://frame.work/gb/en/products/desktop-diy-amd-aimax300/c..." userName="noelwelsh" createdAt="2025/06/18 11:05:46" color="#45d325">}}




{{<matomeQuote body="俺もLLMをローカルで動かすためにAMDのStrix Haloにすごい期待してるんだ。Framework Desktopも注文したよ（バッチ1！）。<br>Alex Ziskindって人がYouTubeでStrix HaloとかM4 Mac mini、RTX 5090なんかを比較してる動画を出してるよ。消費電力とかも。データが動画内にしかないのがちょっと難点かな。最近の動画はこちらだよ。<br>https://www.youtube.com/watch?v=B7GDr-VFuEo" userName="ezschemi" createdAt="2025/06/18 20:12:27" color="#785bff">}}




{{<matomeQuote body="Appleはメモリバスを倍にしてStrix Haloの2倍とか3倍くらいの帯域幅を持つマシンがあるけど、高くなるんだよね。" userName="justincormack" createdAt="2025/06/18 11:47:20" color="">}}




{{<matomeQuote body="率直な質問なんだけど、それの何が懸念されることなの？" userName="pantulis" createdAt="2025/06/18 10:38:02" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LLMをローカルで動かすのが、他のソフトをローカルで動かすのと比べて何が悪いのかな、私には分からないな。<br>社会の端で自由を持つことに何か根本的に新しいことなんてないよ。もちろん、誰かが近所の人を殺したり、皆が使える新しいツールを使うことで、ひどい状況になることもあるかもしれない。<br>でも、それよりは、強力な新しいツールが、最も強欲な人間たちの完全に集中した支配下にあることの方がよっぽど心配だよ。彼らは、自分たちの見解に合わないことがあれば、喜んでどんな妨げでもジェノサイドまでエスカレートさせるだろうからね。" userName="psychoslave" createdAt="2025/06/18 12:03:13" color="">}}




{{<matomeQuote body="＞ LinkedInによるとシンガポールの会社<br>いや、ここは上海ベースの会社だよ。" userName="rfoo" createdAt="2025/06/18 09:33:09" color="">}}




{{<matomeQuote body="中国の親会社、上海稀宇科技有限公司のウェブサイトは https://www.minimaxi.com だよ。中国国外の事業を扱うシンガポールベースの会社、Nanonoble Pte Ltdの国際ウェブサイトは https://minimax.io だね。" userName="Deathmax" createdAt="2025/06/18 11:46:31" color="#ff5c5c">}}




{{<matomeQuote body="どんな情報源が欲しい？僕にはそこで働いている友人が何人かいて、ほとんどが上海か北京に住んでるよ。彼らがシンガポールとか他のどこかに拠点があるなんて言ってるのを見たことないな。これで十分？" userName="rfoo" createdAt="2025/06/18 13:52:06" color="">}}




{{<matomeQuote body="https://en.wikipedia.org/wiki/MiniMax_(company)" userName="noelwelsh" createdAt="2025/06/18 11:32:26" color="">}}




{{<matomeQuote body="Wikipedia自体は情報源にならないし、前のメッセージを読んで見に行ったけど、驚いたことにどちらの記述にも情報源がついてないね。リンクされてる記事にも、彼らの本社がどこにあるかについての情報は全くないよ。<br>もし、それをはっきり述べている信頼できる記事を知ってる人がいたら、自由に共有してほしいな。" userName="diggan" createdAt="2025/06/18 11:37:45" color="">}}




{{<matomeQuote body="LinkedInで確認してから、シンガポールだと言った元の投稿者だけど、その後、上で投稿したWikipediaページを見つけたんだ。ここのコメントの中には、BloombergのIPOに関する記事へのリンクもあるね。特にどちらか肩入れするつもりはないよ。ただ見つけた情報を伝えただけ。" userName="noelwelsh" createdAt="2025/06/18 11:43:27" color="">}}




{{<matomeQuote body="Twitterの投稿で約50万ドル（53万4700ドル？）で学習したらしいよ。<br>どうやったんだろ？<br>RLで驚きの効率って書いてるね。<br>https://x.com/MiniMax__AI/status/1934637031193514237" userName="freeqaz" createdAt="2025/06/18 13:36:31" color="#ff5c5c">}}




{{<matomeQuote body="公式ページにはどこにも書いてないけど、MiniMaxって中国の会社なんだって。<br>Wikipediaに載ってるよ。<br>https://en.wikipedia.org/wiki/MiniMax_(company)" userName="npteljes" createdAt="2025/06/18 09:57:32" color="#ff5c5c">}}




{{<matomeQuote body="みんなMiniMaxが中国だって知ってるんじゃない？<br>動画生成AIの名前“Hailuo”がめっちゃ中国っぽいし、今までこれで有名だったからさ。" userName="7moritz7" createdAt="2025/06/18 20:12:11" color="">}}




{{<matomeQuote body="会社が自分でどこにあるか言うのが一番だね。<br>言ってない、隠してるってこと自体も情報だよ。<br>Hailuoって名前は中国っぽいけど、台湾とかシンガポール、それか外国風ブランド名って可能性もあるよね。<br>Häagen-Dazsみたいに。" userName="npteljes" createdAt="2025/06/19 14:56:45" color="">}}




{{<matomeQuote body="なんでMiniMaxのプロジェクトページで会社がどこにあるか言うこと期待するの？" userName="iLoveOncall" createdAt="2025/06/18 10:14:42" color="">}}




{{<matomeQuote body="理由？<br>1. 慣習だし、<br>2. 法的な義務の国もある（英国の例：https://www.gov.uk/running-a-limited-company/signs-stationer...）、<br>3. 求職者にも役立つからじゃない？" userName="noelwelsh" createdAt="2025/06/18 10:20:33" color="#785bff">}}




{{<matomeQuote body="＞1. 慣習だから。<br>モデルやウェイトのリリースで、著者や会社の国が載ってるの見たことないな。<br>学習言語とか関係性は載ってるけど。<br>論文に会社の国とか書くのって慣習？<br>むしろ、そっちの方が目立つと思うけどね。" userName="diggan" createdAt="2025/06/18 11:21:26" color="">}}




{{<matomeQuote body="OPは“公式ページ”って言ってたけど、会社のウェブサイト（https://www.minimax.io/）のことだと思ったんだ。<br>リポジトリとか論文のことじゃないよ。" userName="noelwelsh" createdAt="2025/06/18 11:31:02" color="">}}




{{<matomeQuote body="OK、“会社のプロジェクトページに所在地を載せるのが慣習”って話に変えよう。<br>どこの会社がやってるの？<br>OpenAIやAnthropicもやってないみたいだけど。" userName="diggan" createdAt="2025/06/18 11:40:06" color="">}}




{{<matomeQuote body="もしGitHubのREADME.mdみたいなページのこと言ってるなら、そこに国の情報が載ってるとは思わないな。" userName="noelwelsh" createdAt="2025/06/18 12:09:49" color="">}}




{{<matomeQuote body="もしGitHubページのこと言ってるなら、どこに国の記載があると思うの？言いたいことがよく分からないな〜。" userName="diggan" createdAt="2025/06/18 12:57:53" color="">}}




{{<matomeQuote body="そうするのが慣例？どこで見た？OpenAIのサイト https://openai.com/about/ 見ても拠点は書いてないし、スタートアップの拠点は探すの結構大変なんだよね。" userName="spinningarrow" createdAt="2025/06/18 11:19:46" color="">}}




{{<matomeQuote body="規約に書いてあるじゃん！ https://openai.com/policies/terms-of-use/<br>各ページの下にもあるよ。" userName="laurentb" createdAt="2025/06/18 12:14:53" color="#45d325">}}




{{<matomeQuote body="知的財産権の侵害について連絡先はこれね。 OpenAI, L.L.C. 1455 3rd Street San Francisco, CA 94158 <br>これのこと言ってるの？" userName="nashashmi" createdAt="2025/06/18 15:23:57" color="">}}




{{<matomeQuote body="1. GitHubには会社の登録場所なんて普通書かないよ。Googleの例 https://github.com/google/material-design-icons 見てみ。2. UKの会社に必要だけど、お前のリンクもサードパーティサイトについては何も言ってない。3. 求人情報とか、もっと重要なことあるだろ。お前が気にすんのは中国企業だからだろ！アメリカとか他の国なら何も言わないくせに！" userName="iLoveOncall" createdAt="2025/06/18 11:19:23" color="#785bff">}}




{{<matomeQuote body="お前のリンクの親ページ https://github.com/google に United States of America って書いてあるから、それは良い例じゃないね。<br>私は素人だけど、個人的にどこで作られたか気になるんだ。ITプロジェクトで使うときは特に重要だよ。" userName="npteljes" createdAt="2025/06/18 12:04:09" color="#785bff">}}




{{<matomeQuote body="OPは「公式ページ」って言ってたから、会社のサイト https://www.minimax.io/ のことだと思ったんだけど。<br>それに、勝手に決めつけないで！もしメキシコとかジンバブエから最先端モデルが出たら、めっちゃ面白いと思うよ。" userName="noelwelsh" createdAt="2025/06/18 11:30:23" color="">}}




{{<matomeQuote body="MinimaxのサイトとOpenAIの比べたけど、大差ないね。どっちもアメリカとか中国の会社って書いてないし。<br>国内向け、食品とかだと国名書くこと多いけどね。" userName="powerapple" createdAt="2025/06/19 19:13:26" color="">}}




{{<matomeQuote body="プロジェクトページじゃなく、どの公式ページにも明確な情報なかった。<br>LinkedInではシンガポール、他ではサンフランシスコって書いてて、中国の会社って言わないのは正直ズルい！<br>素人にはどうでもいいけど、プロジェクトマネージャーなら超重要。なんで隠すの？って疑問だよ。" userName="npteljes" createdAt="2025/06/18 11:56:56" color="#ff33a1">}}




{{<matomeQuote body="このモデル名、もうちょっとなんとかして！私のMac Studioに入ってるプロセッサみたいに聞こえるんだけど（笑）" userName="markkitti" createdAt="2025/06/18 11:01:29" color="">}}




{{<matomeQuote body="Minimaxっていう古典的なAIアルゴリズムにちなんで名付けたんだね。Wikipedia見るといいよ。<br>https://en.wikipedia.org/wiki/Minimax" userName="chvid" createdAt="2025/06/18 11:12:27" color="">}}




{{<matomeQuote body="ざっと読んだ感じでは、Minimaxアルゴリズムは使ってないみたいだね。知ってる人は知ってるだろうけど、Minimaxが初めて使われたのはクロード・シャノンが作ったAIチェスプログラムだったんだ。<br>https://en.wikipedia.org/wiki/Claude_Shannon#Shannon’s_compu..." userName="JoeDaDude" createdAt="2025/06/18 12:30:44" color="#ff33a1">}}




{{<matomeQuote body="この会社はLLMとか動画生成みたいな現代のAIソリューションを提供してるよ。名前はTeslaみたいに単なる引用（リファレンス）だよ。アメリカ化学会のロゴにあるkaliapparatみたいな感じ。" userName="npteljes" createdAt="2025/06/18 13:45:41" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Facebookのモデルはllama（ラマ）を使ってるの？名前なんだから、意味に100％合ってなくてもいいじゃん。" userName="thawab" createdAt="2025/06/18 23:38:44" color="">}}




{{<matomeQuote body="それは会社名だよ。" userName="bjord" createdAt="2025/06/18 13:25:40" color="">}}




{{<matomeQuote body="でも”M1”っていう部分もあるよね。" userName="badc0ffee" createdAt="2025/06/18 20:51:15" color="">}}




{{<matomeQuote body="君のMacは’Apple’（リンゴ）が作ってて、文字通りリンゴの品種名から取られてるじゃん。" userName="seydor" createdAt="2025/06/18 13:26:52" color="">}}




{{<matomeQuote body="それって、松の木にならないパイナップルみたいなもん？" userName="kridsdale1" createdAt="2025/06/18 16:19:10" color="">}}




{{<matomeQuote body="…でも、その品種名は人にちなんで付けられたんだよね。:)" userName="quesera" createdAt="2025/06/18 23:40:14" color="">}}




{{<matomeQuote body="どうやらIPOに向けて話題作りしてるっぽいね。詳しくはここ見て→https://www.bloomberg.com/news/articles/2025-06-18/alibaba-b..." userName="htrp" createdAt="2025/06/18 10:19:36" color="#ff5733">}}




{{<matomeQuote body="「僕らのAttention設計では、7つの lightning attention の transnormer block の後に1つの softmax attention の Transformer block が続く」って書いてあるね。ってことはさ、linear attention が87.5%で full attention が12.5%ってことだ。正直、linear attention っていう言葉遣いは紛らわしいと思うな。 Softmax attention は情報ルーティングの仕組みだけど、linear attention は各レイヤーで使える固定サイズの’register bank’みたいなもんで、attention っていうのはレイヤー単位の計算と互換性があるって意味だけだよ。" userName="killerstorm" createdAt="2025/06/18 17:06:10" color="#ff5733">}}




{{<matomeQuote body="もし欧米のクラウドインフラなしでこの規模を学習させたなら、そのトークンスループットの仕組みがどうなってるか知りたいね。" userName="b0a04gl" createdAt="2025/06/18 12:39:25" color="">}}




{{<matomeQuote body="512台の H800 GPU で3週間学習させたらしいよ。コストは約50万ドルだって。詳しくはここね→https://xcancel.com/MiniMax__AI" userName="jaggs" createdAt="2025/06/18 16:28:47" color="#45d325">}}




{{<matomeQuote body="それは強化学習の部分の話だよ。ベースモデルは多分もっと多くの GPU で、もっと長い時間学習させてるはず。" userName="yorwba" createdAt="2025/06/18 19:41:24" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
