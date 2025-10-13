+++
date = '2025-10-06T00:00:00'
months = '2025/10'
draft = false
title = '速報！新ブラウザ「Ladybird」がAppleのWeb標準テストで90%突破！脅威の達成率か？'
tags = ["Webブラウザ", "Web標準", "テスト", "ブラウザエンジン", "Apple"]
featureimage = 'thumbnails/color2.jpg'
+++

> 速報！新ブラウザ「Ladybird」がAppleのWeb標準テストで90%突破！脅威の達成率か？

引用元：[https://news.ycombinator.com/item?id=45493358](https://news.ycombinator.com/item?id=45493358)




{{<matomeQuote body="web-platform-testsに関わってた者だけど、テスト合格率を指標にするのはおすすめしないな。Ladybirdの進歩は impressive で、テストが開発に役立つなら win だよ。でもweb-platform-testsはエンジニアリングツールとして最適化されてて、良い指標にはなってないんだ。テストスイートはバランスが取れてなくて、エンコーディングテストが簡単に作れるからって多くを占めてたりするし。Interop Projectは別の指標だけど、それは既に実用的なウェブブラウザエンジン向けだよ。" userName="jgraham" createdAt="2025/10/06 19:46:12" color="#ff5733">}}




{{<matomeQuote body="ツイートには、これがAppleから押し付けられた恣意的な指標だって書いてあるから、きっと君の意見に反対しないんじゃないかな。月間アップデートの時も、エンコーディングテストを含まない合格数を表示してるよ、だってそれが結果を大きく歪めるからね。" userName="tssva" createdAt="2025/10/06 20:13:49" color="#45d325">}}




{{<matomeQuote body="問題は、他に良い指標がないってことだよ。昔はCSSのAcid testsがあったけど、それがない今、これはどんな指標と同じくらい良いんじゃない？" userName="troupo" createdAt="2025/10/06 20:57:17" color="">}}




{{<matomeQuote body="今風のACID-styleテストも良いアイデアかもね。" userName="nicoburns" createdAt="2025/10/07 02:20:16" color="">}}




{{<matomeQuote body="Acid testsって、もう使えないの？" userName="oblio" createdAt="2025/10/06 23:32:37" color="">}}




{{<matomeQuote body="Acid 2はデスクトップ／ノートPCで100%スケーリングの前提で pixel 精度に依存してた。2005年頃は普通だったけど、high-dpi スクリーンが増えて時代遅れに。スマホだと Acid 2は fail するよ。Acid 3は先進的すぎで rigid だった。Acid 2はIE6の改善に役立ったけど、結局 Acid testsみたいな「選りすぐりのテスト」は、標準準拠ブラウザの推進には限定的な効果しかなかったんだ。" userName="phire" createdAt="2025/10/07 02:08:18" color="#ff5c5c">}}




{{<matomeQuote body="平均的なユーザーがブラウザに求める機能を、もう反映してないんだ。Acid testsをパスしても、今や広く普及してるいくつかの重要な機能をサポートしてない可能性があるよ。" userName="alganet" createdAt="2025/10/06 23:39:17" color="#ff33a1">}}




{{<matomeQuote body="Acid testsは存在するけど、ブラウザの能力を測る良いテストじゃないんだ。例えば、FirefoxはAcid2もAcid3もパスしないよ。" userName="ac29" createdAt="2025/10/06 23:46:52" color="">}}




{{<matomeQuote body="Ladybirdは、どんな恣意的な指標を押し付けられても、他のどれよりも速くなるだろうね。" userName="munchlax" createdAt="2025/10/06 21:43:41" color="">}}




{{<matomeQuote body="この指標を作るのに、都合のいいテストだけ選んでない？" userName="koolala" createdAt="2025/10/06 23:11:43" color="">}}




{{<matomeQuote body="君の言うことはすごく納得できるけど、wpt.fyiのメインページにある”Browser-Specific Failures”のグラフは、誤解を招くようにしてるんじゃない？<br>P.S.君の仕事の大ファンで感謝してるよ。Interopページは週一でチェックしてるんだ！" userName="culi" createdAt="2025/10/07 01:48:22" color="#785bff">}}




{{<matomeQuote body="まともな思考力がある人間として言わせてもらうと、テストの合格率を指標として使うべきだと思うんだ。" userName="jebronie" createdAt="2025/10/07 09:17:01" color="">}}




{{<matomeQuote body="なんでこんなこと持ち出すの？ここでは指標として採用されてないのに、AppleがiOSで要求してるからだろ？" userName="manmal" createdAt="2025/10/06 20:12:02" color="">}}




{{<matomeQuote body="この見出しは誤読したり誤解したりしやすいからね。彼らのコメントは全然場違いだとは思わないな。" userName="Klonoar" createdAt="2025/10/06 22:18:10" color="">}}




{{<matomeQuote body="最初のコメントは、Ladybirdチームがこのテストスイートを指標に使ってないことを説教してるみたいで、それは全く筋違いだよ。俺が言いたいのはそれ。" userName="manmal" createdAt="2025/10/07 07:57:49" color="">}}




{{<matomeQuote body="”説教”っていうのはちょっと大げさすぎるよ。彼らのコメントはそんな風には読めないし、単に指標そのものが思ってるようなものじゃないって指摘してるだけだろ。" userName="Klonoar" createdAt="2025/10/08 03:39:26" color="">}}




{{<matomeQuote body="＞だけどAppleがiOSで要求するから<br>だからこれはAppleが使ってる指標なんだよ。" userName="hamandcheese" createdAt="2025/10/06 20:17:09" color="">}}




{{<matomeQuote body="悪意のあるコンプライアンスの精神からすると、それが悪い指標であることは、彼らにとってはむしろ”特徴”になるだろうね。" userName="fmajid" createdAt="2025/10/06 20:52:13" color="">}}




{{<matomeQuote body="EU DMAでSafariと同じJITへのアクセスを許可しろって言われたけど、Appleがサードパーティ製ブラウザエンジンにセキュリティ上の合理的要件を課すのは「Malicious compliance（悪意ある遵守）」なのか？<br>危険なrwxメモリへのアクセスを許す前に、使えるブラウザエンジンだと証明させるのは当然だろ。法律はどんなアプリでもJITへのアクセスを認めるんじゃなくて、Safariと競争できるブラウザアプリだけだよって言ってるんだ。" userName="anextio" createdAt="2025/10/07 02:10:52" color="#ff5c5c">}}




{{<matomeQuote body="そうだけど、それはレンダリング性能とかを要求するんじゃなくて、セキュリティ問題がないことを求めるってことだろ。<br>最低限の性能とか機能を要求するのは正当化できないよ。セキュリティバグがないことを要求するのは正当化できるけど、それはAppleがシステム全体に同じ基準を課してる場合の話だよね。" userName="impossiblefork" createdAt="2025/10/07 09:48:16" color="">}}




{{<matomeQuote body="他に指標なんて文字通りないってば。<br>Web Platform Testsは、ブラウザが色々なWeb APIの互換性を持てるようにするためのプロジェクトなんだ。OperaとW3Cが始めて、W3Cが維持してるんだよ。<br>https://www.bocoup.com/blog/wpt-an-overview-and-history" userName="troupo" createdAt="2025/10/06 21:00:46" color="#ff5733">}}




{{<matomeQuote body="ならAppleに直接言えって。この基準を設けたのはAppleなんだから。" userName="sleepybrett" createdAt="2025/10/06 19:57:32" color="">}}




{{<matomeQuote body="Ladybirdブラウザが使えるようになるのがマジで素晴らしいことだと思うよ。もっと何年もかかると思ってたから、これは本当にすごい進歩だね。" userName="daft_pink" createdAt="2025/10/06 18:05:02" color="">}}




{{<matomeQuote body="俺は試してないけど、月ごとのサマリー動画をいくつか見たよ。テストに合格することと、日常使いに十分な速さがあることは全然違うんだ。今のところLadybirdはそんなに速そうじゃないね。<br>それでも、チーム全体の開発成果は本当に驚くべきものだよ。" userName="mrweasel" createdAt="2025/10/06 19:08:34" color="">}}




{{<matomeQuote body="同じこと言おうと思ってたよ。<br>なんでテストと使いやすさがこんなにかけ離れてるんだろう？テストはユニットテストに近いけど、ページの閲覧は実質E2Eテストみたいなもんだろ。パイプラインのどこかで問題が起きると（特にJSが複雑な今は）、結果はほぼ無意味になるよね。" userName="bangaladore" createdAt="2025/10/06 19:38:19" color="#785bff">}}




{{<matomeQuote body="テストと使いやすさの間に直線的な関係はないんだ。色々な文字エンコードのテストはたくさんあるけど、実際のウェブページを見る時はそのうちの一つしか使わないだろ？<br>だから、テスト合格率が90%でも使いにくいってことは、残りの10%のテストがLadybirdがまだ対応していない、すごく目立つ使いやすさの機能に関わってるってことだよ。" userName="zdragnar" createdAt="2025/10/06 19:57:51" color="#ff33a1">}}




{{<matomeQuote body="たとえテストに100%合格したとしても、実用的には遅すぎる可能性もあるんだ。これらのテストでは速度は測られてなくて、互換性だけが対象なんだからね。" userName="achierius" createdAt="2025/10/06 23:39:43" color="">}}




{{<matomeQuote body="Web Platform Testsは、インテグレーションテストやスモークテストよりもユニットテストに近いんだよ。何万行もの仕様書や何千ものWeb APIがあるから、それらのテストを正しく書いてチェックするのは本当に難しいんだ。" userName="troupo" createdAt="2025/10/06 21:02:33" color="#38d3d3">}}




{{<matomeQuote body="3年前はLadybirdにすごく懐疑的だったんだ。でも2つの変化があったよ。まず、予想外に8人のフルタイムエンジニアの資金が確保できたこと。次に、もう3年が経ったこと。これらを踏まえると、今はもっと楽観的だよ。もちろん、Chromeと競うにはまだ長い道のりがあるけどね。既存のエンジンをフォークするのと比べて、この価値提案を理解できたとはまだ言えないな。" userName="MatthiasPortzel" createdAt="2025/10/06 19:28:13" color="">}}




{{<matomeQuote body="価値提案は、ベンダーロックインをなくし、WebKitやBlinkが事実上の標準になるのを防ぐことだよ。例えば、Ladybirdチームは色々な仕様で問題を見つけて指摘しているしね。もう一つの例はアドブロッカー。もしBlinkしか選択肢がないと、アドブロッカーの機能を難しくさせられる可能性があるけど、他のエンジンがあれば違う選択肢が生まれるんだ。" userName="rhdunn" createdAt="2025/10/06 19:57:57" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞ベンダーロックインがない<br>オープンソースエンジンをフォークすれば、定義上ベンダーロックインはないでしょ。最悪のケースは、元のメンテナーが明日から悪くなっても、自分でやるしかないってことで、それはゼロから始めるのと変わらないよ。むしろ、ブラウザの場合、数千万行もの気の遠くなるような仕様実装を自分でやる手間が省けるだけマシなんだ。" userName="Barrin92" createdAt="2025/10/07 17:23:29" color="#45d325">}}




{{<matomeQuote body="この分野の専門家じゃないけど、同意できないな。ブラウザ独占の問題は、独占企業が仕様に従う必要がなく、好きなようにやって、仕様の方を自分たちに合わせられることなんだ。もしその独占企業のエンジンをフォークしても、市場には即座に変化は生まれないよ。彼らの既存の挙動を全部取り入れるし（仕様に合ってるかどうかにかかわらず）、今後も彼らの変更を多く取り込むだろうね。全く新しい実装ははるかに難しいけど、それが成功すれば独占を防ぐ上ではずっと意味があるんだ。" userName="justusthane" createdAt="2025/10/07 20:53:27" color="#785bff">}}




{{<matomeQuote body="問題はメンテナンスや開発の負担なんだ。例えば、Manifest V2が廃止されてManifest V3になった時、EdgeみたいなダウンストリームプロジェクトはV2サポートを維持できるけど、プロジェクトが進んでコードが分岐すると難しくなる。それはより多くのコードを維持することになったり（インターフェースやユーティリティクラスが変わったり削除されたりした場合）、ロジックが変わればサポートを書き直したりすることもある。Firefox XULやGTK+ 2か3を生き長らえさせようとしているプロジェクトみたいに、外部依存の更新だけでなく、その潮流に積極的に逆らって戦うことになるんだ。それはすごく大変で、依存関係を更新するたびにより多くの作業が必要になる。だから実質的にベンダーロックインだよ。もしベンダーがプラグイン開発者（Manifest V3ターゲット）やアプリケーション開発者（GTK+ 3か4ターゲット）のようなダウンストリーム製品をコントロールしたり影響を与えたりすると、他の機能のサポート維持はさらに難しくなるんだ。" userName="rhdunn" createdAt="2025/10/08 08:46:50" color="#785bff">}}




{{<matomeQuote body="それは確かに利点だけど、それが価値提案だとは確信できないな。ChromeとV8の実装は、リソースに合わせて成長してきたんだ。Googleレベルの資金がなきゃ、彼らのエンジンのフォークを長期的に維持するのは無理じゃないかな。" userName="materielle" createdAt="2025/10/06 22:32:49" color="#38d3d3">}}




{{<matomeQuote body="誰がLadybirdを支援してるの？結構な金額だよね。スポンサーリストを見たけど、それらの企業にとって何があるんだろう？" userName="zaphirplane" createdAt="2025/10/07 02:13:14" color="">}}




{{<matomeQuote body="スポンサーはLadybirdのウェブサイトにリストされているよ: https://ladybird.org/#sponsors" userName="brantonb" createdAt="2025/10/07 04:42:21" color="#ff5c5c">}}




{{<matomeQuote body="「90%の完成には90%の時間がかかり、残りの10%にはさらに90%の時間がかかる」ってやつかな？って疑問に思うな。とはいえ、それが本当だとしても、かなり良い期間だとは思うけどね。" userName="_flux" createdAt="2025/10/06 19:37:08" color="">}}




{{<matomeQuote body="残りの10%はもっと90%以上かかるだろうし、時間と共に増え続けると予想するよ。Web標準は日々複雑になっているからね。" userName="InsideOutSanta" createdAt="2025/10/06 20:00:12" color="">}}




{{<matomeQuote body="Web標準の策定プロセスってさ、僕の意見だと大きな盲点があると思うんだ。新しい仕様は既存のブラウザの文脈でしか考慮されないし、Web標準全体としての視野がほとんど考慮されてないみたいなんだよね。" userName="_heimdall" createdAt="2025/10/06 22:57:07" color="#38d3d3">}}




{{<matomeQuote body="Web標準には「ノー」って言う方法が実際にはないんだよ。プロセス全体が仕様を次の段階へ進めるように設計されてるからね。<br>Svelteの作者、Rich Harrisも言ってるけどさ、「ノー」って言うのが良いソフトウェア設計の鍵なのに、標準だと提案がないこと自体は支持できないんだ。最善の望みはただ現状維持。<br>僕の経験だと、歓迎されるフィードバックってアイデアの詳細に関するものだけで、そもそもそのアイデアに価値があるかどうかについては決して歓迎されないんだ。そして、実装者だけが意見が実際に重要だと常に思い知らされるはずだよ。<br>同じ会話の別の人も言ってたけどさ、Shadow DOMみたいに、本来やめるべきだった機能にちょっとした改善が加えられただけの標準に、実質的に反対するなんてできないんだ。<br>Shadow DOMは最悪だけど、CSS Module ScriptsやSelection.getComposedRanges()、ElementInternals.shadowRootが追加されたら、少しはマシになったみたいだね。<br>https://x.com/Rich_Harris/status/1841605646128460111<br>https://x.com/dfabu/status/1841936377350652391" userName="troupo" createdAt="2025/10/07 05:52:00" color="#45d325">}}




{{<matomeQuote body="たぶん適合レベルを設けるべきだよね。重要なビジネスや政府のプラットフォームは、少なくともレベルXに対応する全てのブラウザで動作するように義務付けるべきだよ。<br>レベルXは全部入りじゃなくて、本当に最小限のものだけ。SPAとかじゃなくて、フォームとかそういう基本的なものだけにして、アクセシビリティはすごく高くて必須にするとかさ。" userName="zelphirkalt" createdAt="2025/10/07 00:44:44" color="#38d3d3">}}




{{<matomeQuote body="彼らは基本的に動いてる列車に追いつこうとしてるって感じだね。<br>できることだけど、簡単じゃないよ。特に列車のエンジンがGoogleのリソースでハイオク燃料をぶち込まれてる時はね。" userName="theshrike79" createdAt="2025/10/08 07:29:57" color="">}}




{{<matomeQuote body="うん、絶対そうだよ。Webに関しては、最後の0.1%が99.9%の時間を食う感じだよね。しかもそれを飛ばすこともできない。<br>Webプラットフォームの0.1%が欠けてるブラウザなんて誰も使わないよ。それって、たぶん1%のWebサイトが何かしらの形で壊れてるってことで、ひどい体験だからね。<br>ChromeやFirefoxと競合できるブラウザを作るには、何十年もの作業が必要だよ。" userName="IshKebab" createdAt="2025/10/06 23:10:41" color="#38d3d3">}}




{{<matomeQuote body="でも、あまり期待しすぎない方がいいかもね。<br>9月の進捗レポートを見ると、まだまだ調整すべきことがたくさんあるんだ。<br>すごい進歩だけど、Ladybirdが使えるようになるまでには、まだ何年もの開発が必要だよ。<br>https://www.youtube.com/watch?v=6vsjIIiODhY" userName="skywal_l" createdAt="2025/10/06 18:40:43" color="">}}




{{<matomeQuote body="本当に、献身的なチームがどれだけのこと accomplish できるかを示してるよね。<br>Ladybird以前は、新しいブラウザエンジンをゼロから作るなんて何十年もかかるって当たり前のように思われてて、口に出すだけでも笑われたのにさ。" userName="GalaxyNova" createdAt="2025/10/06 19:39:45" color="">}}




{{<matomeQuote body="まあ、何十年もかかるだろうね…<br>価値があって野心的なプロジェクトだけど、何か実際に使えるようになるまでには、まだしばらく時間がかかるだろうね。" userName="serial_dev" createdAt="2025/10/06 19:58:33" color="">}}




{{<matomeQuote body="公平に見てさ、Ladybird以前は誰かが新しいWebエンジンを作るって言うたびに、HNで一番voteされてたコメントは、ほとんどいつも「不可能だよ、Microsoftみたいな大企業ですらエンジンを諦めたんだから」って感じだったよね。<br>少なくとも今では、そういう皮肉で悲観的な意見が、「不可能、Microsoftですら無理だった」から「この小さなチームだと何十年もかかるかもしれない」に変わったってわけだ。" userName="badsectoracula" createdAt="2025/10/07 09:13:12" color="#45d325">}}




{{<matomeQuote body="公平に言わせてもらうと、彼らが始めた当初は、画像や動画のデコーダー、ネットワーキングなんかも含めて、ブラウザをゼロから書くつもりだったんだよ。<br>途中で方針を変えたけどね。" userName="Someone" createdAt="2025/10/07 13:58:16" color="">}}




{{<matomeQuote body="正直、まだ先は長いよ。" userName="typpilol" createdAt="2025/10/06 19:51:08" color="">}}




{{<matomeQuote body="いくつかのウェブサイトで使い始めたんだけど、意外と既にかなり使えるよ。" userName="potwinkle" createdAt="2025/10/06 19:01:24" color="">}}




{{<matomeQuote body="心配ないって。もしWebブラウザが十分に速くなって使えるようになっても、またJavaScriptのゴミが山ほどぶち込まれて、結局遅くなるだけだから。" userName="ChrisRR" createdAt="2025/10/09 13:58:36" color="#785bff">}}




{{<matomeQuote body="リンク先のツイートによると、これはiOSでLadybirdが代替ブラウザエンジンとして検討されるための重要なマイルストーンなんだって。" userName="dotancohen" createdAt="2025/10/06 16:57:06" color="#45d325">}}




{{<matomeQuote body="「Apple」が記事の見出しにある理由がよくわかったね。" userName="jonny_eh" createdAt="2025/10/06 16:57:53" color="">}}




{{<matomeQuote body="…少なくともEUではね。他の地域じゃ、どんなにエンジンが良くてもAppleは”ノー”って言うだろうけど。" userName="jsheard" createdAt="2025/10/06 18:35:36" color="#785bff">}}




{{<matomeQuote body="GoogleやMozillaの場合はどうなの？EU向けのiOS版では自社エンジンを使って、他の地域ではWebKitをラップしてるのかな？" userName="andrewl-hn" createdAt="2025/10/06 18:54:38" color="#45d325">}}




{{<matomeQuote body="俺が知る限り、iOS版のChromeとFirefoxはまだWebKitのラッパーだよ。<br>でも、それが変わってほしいな。iOSのWebKitはいくつかダメな点があるから。" userName="chrisldgk" createdAt="2025/10/06 19:00:21" color="#ff5c5c">}}




{{<matomeQuote body="例えばどんな？俺はパワーユーザーだと思ってるけど、対処できないこととか回避できないことに出くわしたことないんだよね。純粋に興味ある。" userName="m-s-y" createdAt="2025/10/06 19:25:25" color="">}}




{{<matomeQuote body="uBlock Originとか、ウェブをまともにするツールがサポートされてないことかな。" userName="akersten" createdAt="2025/10/06 19:42:08" color="#785bff">}}




{{<matomeQuote body="Chromeはデスクトップ版でuBlock Originのフル機能版が使えないし、モバイル版では全く使えないんだって。それなのに、なんでこんなに市場シェアが高いのか不思議だよね。" userName="GeekyBear" createdAt="2025/10/06 20:05:33" color="">}}




{{<matomeQuote body="BlinkがWebKitやGeckoよりWindows、Android、Linuxをしっかりサポートしてるのが理由の一つだよ。もしuBlockがなかったら、今頃Chromeのフォーク版を使ってたかもな。" userName="bigyabai" createdAt="2025/10/06 21:06:40" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Android版ChromeはuBlockなしだと、特に低スペック端末でWebが全く使い物にならないよ。Windows版ChromeもYouTubeで使えるuBlock Originのフル機能版を許可しないんだ。これってGoogleが広告収入のためにブラウザの独占を悪用してるだけだろ。" userName="GeekyBear" createdAt="2025/10/06 21:36:46" color="#45d325">}}




{{<matomeQuote body="Android版Chromeは拡張機能をサポートしてないけど、Blinkはしてるんだ。改変されたブラウザエンジンを許可する利点の一つだよね。" userName="bigyabai" createdAt="2025/10/06 22:39:10" color="">}}




{{<matomeQuote body="Googleは、ユーザーの意見を無視して広告ブロックを潰すために、あらゆる手段を計画的に使うことをもう証明してるよ。これはMicrosoftがオンラインアカウントなしでのPCログインを阻止するのと同じやり方だ。GoogleがAndroidのサイドローディング制限を始めたことを見ても、広告ブロックが制限される日も近いかもな。" userName="GeekyBear" createdAt="2025/10/06 23:51:53" color="#ff5733">}}




{{<matomeQuote body="Blinkはオープンソースプロジェクトだよ。もしGoogleがChromeとAndroidでサイドローディングを完全に拒否するようになっても、両方フォークできるじゃん。君の主張は証明できない仮説に頼ってて、誰も怖がらせられないね。Androidユーザーから見たら、君は嘘つき少年というよりチキン・リトルだよ。" userName="bigyabai" createdAt="2025/10/07 17:09:42" color="">}}




{{<matomeQuote body="そうかい。これでいいのか？ GoogleがAndroid開発者全員に登録と認証を義務付けることで、オープンソースアプリストアF-Droidが閉鎖の危機に瀕してるってニュースがあるよ。<br>https://www.techdirt.com/2025/10/07/googles-requirement-for-..." userName="GeekyBear" createdAt="2025/10/07 19:19:46" color="#785bff">}}




{{<matomeQuote body="uBlock Origin LiteがSafariでも使えるようになったって。<br>https://news.ycombinator.com/item?id=44795825" userName="iruoy" createdAt="2025/10/06 22:47:27" color="">}}




{{<matomeQuote body="SafariでWiprやUserScriptsが使えるのを見たら、そんなのは本当の問題じゃないってわかるよ。互換性の問題はまだあるけど、広告なんかはSafariユーザーにとっては完全に解決済みなんだ。" userName="ezfe" createdAt="2025/10/06 20:37:40" color="">}}




{{<matomeQuote body="OrionがiOSでどうにかしてるんだけど、それがどういう仕組みなのか、いまいち理解できないんだよね。" userName="WD-42" createdAt="2025/10/06 19:47:11" color="">}}




{{<matomeQuote body="そんなことないでしょ？Ublock Originが機能しないってフィードバックがあるよ。見てみて。https://orionfeedback.org/d/9145-ublock-origin-not-existent-...https://orionfeedback.org/d/11882-ublock-origin-not-function..." userName="pavon" createdAt="2025/10/06 20:17:24" color="#785bff">}}




{{<matomeQuote body="俺の知る限り、Chrome拡張機能APIをエミュレートしてるだけじゃないの？" userName="lukashahnart" createdAt="2025/10/06 20:01:46" color="">}}




{{<matomeQuote body="俺の場合、普通のCSS transformsでレイアウトやレンダリングのバグによく遭遇するんだ。<br>アニメーションのあるサイトを作ると、iOSで変なレンダリングバグが必ず一つはある。<br>あと、playsInline propを忘れると、ビューポート内の動画がブラウザを乗っ取って全画面表示になるのもマジで最悪。" userName="chrisldgk" createdAt="2025/10/06 22:32:36" color="">}}




{{<matomeQuote body="Web開発者はWebKitの問題を回避するのにめっちゃ苦労してるんだよ。新しいIE6って感じ。" userName="jampekka" createdAt="2025/10/06 21:58:06" color="#ff33a1">}}




{{<matomeQuote body="WebKitは平均的な開発者が必要とする機能はちゃんと揃ってるし、GeckoやLadybirdみたいに、回避策を見つけるのもそんなに大変じゃないよ。" userName="Klonoar" createdAt="2025/10/06 22:21:44" color="">}}




{{<matomeQuote body="独立系の非企業プロジェクトが、こんなに早くここまで来たのはめちゃくちゃすごいことだね。" userName="pizlonator" createdAt="2025/10/06 17:20:39" color="#45d325">}}




{{<matomeQuote body="ブラウザがどれだけのことやってるか考えたら、これってマジで狂気じみた偉業だよ。<br>優れたHTML/CSSレンダラーやJSエンジンを作るだけでも大変なのに、エコシステムに組み込まれて次々に登場する新機能に対応しなきゃいけない。<br>Chromeは提案に抵抗できるけど、小さなブラウザはChromiumを使うか、必死に追いつこうとするしかないからね。" userName="ericmcer" createdAt="2025/10/06 18:30:32" color="#ff5733">}}




{{<matomeQuote body="＞ Chromeは提案に抵抗できる<br>問題はChromeが提案を拒否することじゃなくて、誰がどう言おうとChromeが独自の提案を推し進めることだよ。見てみて。https://news.ycombinator.com/item?id=45371575" userName="troupo" createdAt="2025/10/06 21:04:16" color="#785bff">}}




{{<matomeQuote body="一方で、すべてのブラウザが足並みを揃えるべきなのかな？Chromeは、どんな機能でもローンチする前に全員の承認を待つべきなの？" userName="jppittma" createdAt="2025/10/06 21:53:33" color="">}}




{{<matomeQuote body="政府はGoogleに、業界団体が定めたWeb標準に従うよう強制すべきだよ。その団体には小規模なプレイヤーの参加も義務付けるべきだね。<br>もしGoogleが強引に独自の議題を推し進めるなら、標準化団体は拒否権を発動できるだけの票を持つべきだよ。<br>さらに言えば、Googleがブラウザを持つのに、標準準拠を条件にすべきだ。もし破ったら、Googleはもうブラウザを作れなくすればいいんだ。" userName="echelon" createdAt="2025/10/06 19:30:22" color="#45d325">}}




{{<matomeQuote body="標準ってのはさ、合意形成して、独立した2つの実装があって初めてそう言えるんだよ。そうでなきゃInternet Explorerみたいになっちゃう。<br>Chromeなんか、仕様の草案をポンと出して、ろくに議論もせず実装するんだから困る。WebHIDとかConstructable Stylesheetsとかさ、Googleが欲しいからって勝手に進めるなよ。URL: https://www.quirksmode.org/blog/archives/2021/08/breaking_th..." userName="troupo" createdAt="2025/10/06 22:01:02" color="#38d3d3">}}




{{<matomeQuote body="でもさ、ブラウザの全機能が標準化されなきゃダメなの？AppleやMozillaに許可なく機能開発するのは、なんかルール違反とでも言うのかね？" userName="jppittma" createdAt="2025/10/06 23:30:39" color="">}}




{{<matomeQuote body="もしLadybirdがこの調子なら、2027年末までにはマジで有力な競合になるぞ。Servoにも同じような推進があればいいんだけどな。ServoはFirefox/Mozillaがあんまり興味ないみたいだから、対応するブラウザプロジェクトがマジで必要だよ。" userName="tracker1" createdAt="2025/10/06 17:22:47" color="#785bff">}}




{{<matomeQuote body="ルール違反じゃないけど、ウェブにとっては敵対的だろ。大企業がでかいからって勝手にウェブをフォークさせるなんて、何十年も相互運用性のために頑張ってきた俺たちにはマジで侮辱だよ。" userName="asadotzler" createdAt="2025/10/07 00:42:09" color="#45d325">}}




{{<matomeQuote body="Ladybirdって本当に非営利なの？なんか企業が金出してるところを見た記憶があるんだけど。<br>FirefoxのGeckoみたいな非営利と比べて、Ladybirdはどうなんだ？" userName="didibus" createdAt="2025/10/06 20:44:12" color="">}}




{{<matomeQuote body="政府とか大多数の有権者って、ファイルが何なのかすら知らないんだぜ。健康保険みたいな基本的なニーズですら賛成票入れられないのに。<br>こんな無能な連中にイノベーションを窒息させる権限を与えるべきだと思うか？" userName="supportengineer" createdAt="2025/10/06 19:46:45" color="">}}




{{<matomeQuote body="Appleに、ブラウザに追加される機能を拒否する権限を与える方が、ウェブにとってはもっと敵対的だろ。" userName="nerdix" createdAt="2025/10/07 01:18:05" color="">}}




{{<matomeQuote body="それは覚えてないな。自分で調べてみたらどうだ？<br>Ladybirdはまだ使い物になるほどでもないし、Geckoと比べるには全然速くないよ。" userName="gpvos" createdAt="2025/10/06 23:30:50" color="">}}




{{<matomeQuote body="テストを安全にクリアする方法は、全く別の問題だよ。これはあくまで適合性テストだからね。それでもすごいけどさ。" userName="nicce" createdAt="2025/10/06 17:35:28" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
