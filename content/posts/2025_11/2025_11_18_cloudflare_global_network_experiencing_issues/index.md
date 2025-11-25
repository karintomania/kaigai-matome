+++
date = '2025-11-18T00:00:00'
months = '2025/11'
draft = false
title = 'Cloudflareグローバルネットワークに障害発生！サイトへの影響と緊急回避策'
tags = ["Cloudflare", "障害", "ネットワーク", "Webサービス", "セキュリティ"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> Cloudflareグローバルネットワークに障害発生！サイトへの影響と緊急回避策

引用元：[https://news.ycombinator.com/item?id=45963780](https://news.ycombinator.com/item?id=45963780)




{{<matomeQuote body="Cloudflare APIトークンがあるなら、プロキシをオフにするコマンドはこれだよ！ゾーンIDは`curl -X GET ”https://api.cloudflare.com/client/v4/zones” -H ”Authorization: Bearer $API_TOKEN” -H ”Content-Type: application/json” | jq -r ’.result[] | ”\(.id) \(.name)”’`で、DNSレコードは`curl -X GET ”https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records” -H ”Authorization: Bearer $API_TOKEN” -H ”Content-Type: application/json”`で取得。最後に該当レコードを`curl -X PATCH ”https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$RECORD_ID” -H ”Authorization: Bearer $API_TOKEN” -H ”Content-Type: application/json” --data ’{”proxied”:false}’`でPATCH更新だ。でも注意点もね。SSL/TLS証明書は失われるし、セキュリティやパフォーマンスは低下、そして元のIPアドレスがバレるよ。" userName="abelanger" createdAt="2025/11/18 13:57:53" color="#ff5c5c">}}




{{<matomeQuote body="古いグローバルAPIキーを使ってるなら、ベアラーじゃなく`-H ”X-Auth-Email: $EMAIL_ADDRESS” -H ”X-Auth-Key: $API_KEY”`で認証できるよ。あと、Cloudflare以外のトラフィックをオリジンでブロックしてたなら、それも解除するの忘れずにね！" userName="duggan" createdAt="2025/11/18 14:33:42" color="#ff33a1">}}




{{<matomeQuote body="次回はAPIトークンを生成しようと決めたよ。今回はトークンがなくて何もできなかったからね。あ、戻ったみたい！" userName="sam-cop-vimes" createdAt="2025/11/18 14:05:28" color="">}}




{{<matomeQuote body="Turnstileが（一時的に）復活したよ。リフレッシュしてみて！ちょうどAPIキーを作ってプロキシDNSをオフにできたところさ。" userName="biinjo" createdAt="2025/11/18 14:41:05" color="">}}




{{<matomeQuote body="Chrome拡張機能の“tweak”をインストールして、MITMでJSを他の場所から強制的に読み込む手もあるよ。" userName="fragmede" createdAt="2025/11/18 17:47:55" color="">}}




{{<matomeQuote body="Warp経由なら今でもキーを生成できるよ。ログインはすごく時間かかるけど、ちゃんと動くね。" userName="basch" createdAt="2025/11/18 15:10:48" color="">}}




{{<matomeQuote body="Terraformプロバイダ経由でやったけど、ダッシュボードにアクセスできない人にはこのコマンドはすごく助かるね。ありがとう！" userName="mig4ng" createdAt="2025/11/18 14:00:48" color="">}}




{{<matomeQuote body="もしネットをまた動かしたいなら、Cloudflare WARPをオンにすると壊れたサイトが直るみたいだよ。Cloudflareダッシュボードに入ってAPIキーを生成するためにも使えるかも。たぶん1.1.1.1を使っても同じ効果があるんだろうけど、WARPをオンにするのが早かったな。でも、Cloudflareにトンネル接続しても、まだ一部のサイトは使えないみたい。" userName="basch" createdAt="2025/11/18 14:36:38" color="#785bff">}}




{{<matomeQuote body="超助かった！ありがとう！Cloudflareダッシュボード以外は全部アクセスできるようになったみたいだね。" userName="adi_kurian" createdAt="2025/11/18 14:43:38" color="#ff33a1">}}




{{<matomeQuote body="めちゃくちゃ遅いけどね（CAPTCHAのせいでログインページが完全に読み込まれるのに数分かかったよ…）。でも、Cloudflareダッシュボードにはログインできたんだ。中に入るとエラーだらけだけど、一部は操作できる感じ。人によるけどね。プロファイル（APIトークン含む）とウェブサイトのページは全部動くけど、左側のアカウントタブは使えないな。" userName="basch" createdAt="2025/11/18 14:47:52" color="#785bff">}}




{{<matomeQuote body="良いアドバイスだね！curlでGETリクエストする時、-X GETはいらないんだよ。デフォルトでGETだからさ。-dで何かコンテンツを送ったらPOSTリクエストになるから、その時も-Xは不要。PATCHの場合は-Xオプションを使うのが正解だね。" userName="jlundberg" createdAt="2025/11/18 17:46:07" color="">}}




{{<matomeQuote body="これありがとう！もっと詳しく書いて、将来見つけやすいように記事にしたよ: https://www.coryzue.com/writing/cloudflare-dns/" userName="czue" createdAt="2025/11/19 07:44:38" color="#785bff">}}




{{<matomeQuote body="同僚がパニックになってオフィスに飛び込んできたんだよ。Cloudflareの設定をいじった直後に障害が起きたから、自分のせいでサイトをダウンさせちゃったと思ったらしい。この投稿を見て、かなりホッとしたみたいだ。" userName="itzjacki" createdAt="2025/11/18 11:37:47" color="">}}




{{<matomeQuote body="自分がやっちゃったと思ったことが、実は他人のせいだって分かった時の、あのホッとする感じを表す言葉ってあるのかな？" userName="Freak_NL" createdAt="2025/11/18 11:40:44" color="">}}




{{<matomeQuote body="お前が冗談だと思ってて面白いけど、ジュニアエンジニアとしては、俺がちょっと手を加えただけであのCloudflareをダウンさせられたら、かなり誇りに思うだろうな。" userName="mlrtime" createdAt="2025/11/18 13:20:19" color="">}}




{{<matomeQuote body="まあ、彼がやらなかったなんて断言できないよな。見てみろよ：https://www.fastly.com/blog/summary-of-june-8-outage" userName="sakisv" createdAt="2025/11/18 11:59:28" color="#ff5733">}}




{{<matomeQuote body="シャーデンフロイデ（他人の不幸を喜ぶ気持ち）" userName="StanAngeloff" createdAt="2025/11/18 11:43:59" color="">}}




{{<matomeQuote body="面白いことに、歳を取るにつれて安堵の気持ちが不安に変わるんだよな。自分が引き起こした問題は、自分で直す裁量があるのがいいところ。Cloudflareがダウンしたら、座って第三者が直してくれるのを待つしかないだろ？" userName="spamizbad" createdAt="2025/11/18 12:52:19" color="">}}




{{<matomeQuote body="フーフォリア（安堵感と高揚感を合わせた造語）" userName="jpmonette" createdAt="2025/11/18 11:44:14" color="">}}




{{<matomeQuote body="俺がCloudflareだったら、即座に市場価格よりずっと高い給料で仕事を提供しちゃうね。あのジュニアエンジニアは天才か、Pierson’s Puppeteersに育てられたみたいにめちゃくちゃ運がいいか、完璧な人間ファザーみたいなスキルを持っているかのどれかだろ。そのスキルは絶対活用すべきだ。" userName="throwup238" createdAt="2025/11/18 13:27:26" color="">}}




{{<matomeQuote body="なんで不安なの？俺はいつも大手がやらかすと気分が良いんだよ。以前の自分の失敗がマシに思えるからね。" userName="mewpmewp2" createdAt="2025/11/18 13:12:56" color="">}}




{{<matomeQuote body="いや、それは他人の不幸を喜ぶ気持ちだろ。これは自分の不幸じゃなかったことに喜ぶ気持ちだから、ちょっと違うんだよ。" userName="gnfargbl" createdAt="2025/11/18 11:47:07" color="">}}




{{<matomeQuote body="問題は、AWSとかCFがダウンしても、俺たちがとばっちりを食らうことなんだよ！経営陣は当然ながら気にもしない。彼らはただ金が入り続けることを望んでる。これがかなり大きな問題だと納得させるのは難しい。彼らを少しでも落ち着かせられる唯一の方法は、Twitterもダウンしたって伝えること。それでダメなら、ChatGPTもダウンしたって言うんだ。そしたら誰も仕事できなくなるだろ！笑" userName="jspash" createdAt="2025/11/18 12:05:36" color="#ff33a1">}}




{{<matomeQuote body="君は冗談を言ってるけど、ジュニアエンジニアとして、もし僕がちょっとした変更で強大なCloudflareをダウンさせられたら、かなり誇りに思うだろうね。Cloudflareの最近の（ないに等しい）稼働率を考えると、そうすることでの名声は薄れてると思うけどね。今じゃ芝刈り機がCloudflareのそばを通ってバックファイアするだけで、全体が崩壊しちゃうくらいさ。" userName="amypetrik8" createdAt="2025/11/19 04:23:47" color="">}}




{{<matomeQuote body="心配しなくていいよ。僕らは彼が根本原因だったかのように、この世界的な障害について話してるからさ。良い同僚だからね :)" userName="itzjacki" createdAt="2025/11/18 12:01:30" color="">}}




{{<matomeQuote body="ドイツ語の”schadenfreude”は、他人の不幸を楽しむって意味だよ。安心するんじゃなくて、楽しむってこと。" userName="bookofjoe" createdAt="2025/11/18 13:06:59" color="">}}




{{<matomeQuote body="もしかしたら良くないことかもしれないけど、飛行機で赤ちゃんが泣いてるのを聞くと、ちょっとそんな気持ちになるんだ。何年か前は、赤ちゃんが泣いてたらそれは多分うちの子で、僕が対処しなきゃいけなかった。でも今はうちの子はもうその時期を過ぎたから、泣き声を聞いても、最初の焦りを感じた後で、これは僕の問題じゃないって気づいて、妙な安心感があるんだ。赤ちゃんやその親には気の毒に思うけどね。" userName="mcphage" createdAt="2025/11/18 12:48:40" color="">}}




{{<matomeQuote body="僕の顧客は、それがサードパーティのせいだなんて気にしないし（気にするべきじゃない）。もし僕が原因なら、直せる可能性があるからね。" userName="kasey_junk" createdAt="2025/11/18 13:16:27" color="">}}




{{<matomeQuote body="くそっ、あの障害の原因になった顧客になることを想像してみてよ、うわぁ大変だね。" userName="CableNinja" createdAt="2025/11/18 13:02:20" color="">}}




{{<matomeQuote body="全く関係ないスレッドで、そんな精神的にいかれた暴言を吐くのはやめてくれないか。まじで狂った行動だよ。" userName="throwmoe" createdAt="2025/11/19 20:42:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この特殊な感情を表すドイツ語って絶対あるはずだよね、そういう感情を表す言葉ってないのかな？" userName="puilp0502" createdAt="2025/11/18 13:07:17" color="">}}




{{<matomeQuote body="GPのことは分からないけど、もし自分のサービスが原因なら、顧客に直接何かできるからマシだな。このゾッとする感覚は失敗のせいじゃなくて、サービスが止まったせいで給料払えなくなるとか、家賃払えないとか、顧客の従業員にまで影響が出ちゃうことへの共感なんだ。こういう障害って予想外の人間のコストがかかる時があるんだよね。幸い火曜日だから、ほとんどの会社は給料日じゃないし。" userName="twodave" createdAt="2025/11/18 13:28:13" color="#785bff">}}




{{<matomeQuote body="Schadenは「損害」でFreudeは「喜び」だから、なんて言えばいいか分からないけど、もしかしたらSchadeleichtigかな？うーん…。" userName="bryanrasmussen" createdAt="2025/11/18 13:15:30" color="">}}




{{<matomeQuote body="それはちょっと違うかな。それは他人の不幸を喜ぶって感じだね。近いんだけど、自分の不幸じゃないことへの特定の安堵感は捉えられてないよ。" userName="simonklitj" createdAt="2025/11/18 11:46:51" color="">}}




{{<matomeQuote body="ドイツ語を4年も勉強してるけど、まだ完全に「分かった」って感じじゃないんだよね :^) ありがとう！" userName="StanAngeloff" createdAt="2025/11/18 11:48:52" color="">}}




{{<matomeQuote body="CTOからの情報によると、Cloudflareのボット対策機能の基盤となるサービスに潜在的なバグがあって、ルーティンな設定変更後にクラッシュし始めたんだって。それがネットワークや他のサービス全体に影響を及ぼしたらしい。これは攻撃じゃなかったんだね。<br>情報源: https://x.com/dok2001/status/1990791419653484646" userName="aavshr" createdAt="2025/11/18 16:14:12" color="#ff33a1">}}




{{<matomeQuote body="大手企業がまだ設定の段階的ロールアウトをしてないなんて、本当に驚きだよ。コードも設定もデータなんだから、同じものだろ。去年のCrowdStrikeの巨大障害も同じ問題で、設定をグローバルに直接適用したせいで、間違った設定が広まって全部ぶっ飛んだんだ。コードのロールアウトみたいに、設定も段階的にロールアウトするべきなんだよ。" userName="__turbobrew__" createdAt="2025/11/18 16:39:48" color="#38d3d3">}}




{{<matomeQuote body="大企業も設定は段階的に展開してるよ。でも2つ弱点があってさ。一つはロードバランサーみたいにグローバルな設定は一箇所でしかできないこと。もう一つは、たとえ1%のサーバーに設定しても、それが連鎖的にネットワーク全体に悪い影響を広げちゃうことだね。" userName="crazygringo" createdAt="2025/11/18 18:50:24" color="#ff5c5c">}}




{{<matomeQuote body="グローバル設定は段階的にできないって話だけど、だからこそ”いつもDNSのせい”って言われるんだよ。DNS自体が不安定ってわけじゃなくて、たとえ他の全てが冗長でも、たった一つのコマンドでシステム全体をぶっ壊せる唯一の領域なんだよね。" userName="creatonez" createdAt="2025/11/18 21:12:25" color="#45d325">}}




{{<matomeQuote body="DNSの設定って、別に全部グローバルにする必要はないんじゃない？サービスを「my-service-1.example.com」とか複数名で分割すれば、各フェーズのDNSを叩くスモークテストもできるし、エラーが出たら展開を止められるもんね。" userName="__turbobrew__" createdAt="2025/11/18 21:28:53" color="#45d325">}}




{{<matomeQuote body="確かに、でもそれってユーザー向けサービスにはあんまり役に立たないんだよね。みんなブラウザにドメイン名を入力したり検索結果をクリックしたりして、毎回あなたのサイトにたどり着くことを期待してるからさ。あと、DNSサービスのアクセス制御も、細かい設定ができないことが多くて、誰かが手順を無視して一気に全部のサブドメインを変えちゃうのを防げない場合もあるんだ。" userName="creatonez" createdAt="2025/11/18 21:45:01" color="#ff5733">}}




{{<matomeQuote body="”ユーザー向けには役に立たない”って意見だけど、いや、役に立つよ！例えばうちの会社には「company-staging.com」と「company.com」って二つの公開エンドポイントがあるんだ。まず「company-staging.com」に変更を展開して、スモークテストで問題なければ「company.com」にも展開する。もし失敗したら「company.com」への展開は止めるんだ。ユーザーは「company.com」を使うからね。" userName="__turbobrew__" createdAt="2025/11/18 22:04:57" color="#785bff">}}




{{<matomeQuote body="それじゃあ「company.com」のDNSアップデートの段階的展開には全然役に立たないじゃん。ここが肝なんだよ。結局”いつもDNSのせい”ってなるのは、本番のDNS設定を、事前プロダクションのスモークテストで試せないからなんだからさ。" userName="cowsandmilk" createdAt="2025/11/18 22:54:00" color="#ff33a1">}}




{{<matomeQuote body="俺の理解が正しければさ、「company-staging.com」のDNS設定って、「company.com」と全く同じってことだよね？IPもサーバーも、DNSプロバイダー、ドメインレジストラも。違うのはHostヘッダーくらいで、全部同じサーバーにアクセスするんだろ？なら、「company-staging.com」のDNS設定を更新して大丈夫なら、「company.com」の更新も大丈夫って考え方かな。" userName="FLHerne" createdAt="2025/11/19 17:37:38" color="#ff5c5c">}}




{{<matomeQuote body="段階的展開の目的って、プライベートなステージング環境でテストした後に、実際のプロダクショントラフィックの一部を使って検証することだろ。あなたのステージングURLじゃ、それはできないよね？公開されてない限りさ。現実世界とシミュレーションの差が、失敗のリスクなんだ。良いアイデアだけど、本格的な段階的展開の代わりにはならないよ。" userName="creatonez" createdAt="2025/11/20 15:26:53" color="#ff5c5c">}}




{{<matomeQuote body="でもユーザーは「example.com」に行くんだよ。「my-service-33.example.com」じゃない。だから、ルートレベルドメインでしか起きないような設定の問題があったら、いくらサブドメインでテストしたって見つけられないだろ。" userName="crazygringo" createdAt="2025/11/18 23:06:37" color="#38d3d3">}}




{{<matomeQuote body="設定が原因の障害があったからって、彼らが段階的な設定展開をしてないって決めつけるのは意地悪だと思うな。それに、彼らをCrowdStrikeと比較するなんて、もっと失礼だよ。" userName="siegecraft" createdAt="2025/11/18 18:18:29" color="">}}




{{<matomeQuote body="Cloudflareの事後検証を読んでると、システムへの信頼度が低いんだよね。昔はコントロールプレーンを単一のデータセンターで動かしてたとか、時価総額600億ドル超の企業としてはアマチュアすぎる。Crowdstrikeと比較するのは意地悪じゃないと思う。両社とも多くの人の生活に影響するクリティカルなシステムを動かしてて、障害発生率も似てるし、むしろCloudflareの方がよく壊れてるくらいだよ。" userName="__turbobrew__" createdAt="2025/11/18 19:47:58" color="#45d325">}}




{{<matomeQuote body="https://blog.cloudflare.com/18-november-2025-outage/<br>想定よりデカいFeature Fileがネットワーク中の全マシンにばら撒かれたんだって。<br>その結果、5分ごとに良いか悪いかの設定ファイルが生成されて、ネットワーク中に急速に広がる可能性があったってさ。やっぱりね。悪いデータによるグローバル設定のロールアウトだ。Crowdstrikeとほぼ同じ障害モードだよ。" userName="__turbobrew__" createdAt="2025/11/19 00:37:23" color="#38d3d3">}}




{{<matomeQuote body="これってかなり論理的だと思わない？設定変更でサービスがクラッシュしたらロールアウトは止まるべきだよね…少なくとも俺が今まで作ったどんなフェーズドロールアウトシステムでもそうだったけどな。" userName="cyberpunk" createdAt="2025/11/18 18:46:08" color="">}}




{{<matomeQuote body="昔いた会社で、IACで”global CI/CD”を導入した時も同じような議論をしたよ。変更してコミット、プッシュすると、いきなり40以上のサーバクラスタにグローバルに適用されちゃう。最悪だった。上層部は”cattle not pets”とか言って喜んでたけど、みんな大きな変更を加えるのが怖くなって、結果的に作業はかなり遅くなったね。" userName="JohnMakin" createdAt="2025/11/18 16:44:10" color="#785bff">}}




{{<matomeQuote body="そうすると、顧客にも見える形で遅延が発生するよね。" userName="wbl" createdAt="2025/11/18 17:15:15" color="">}}




{{<matomeQuote body="敵対者がすぐに適応するから、彼らは対抗策のビットをフェーズ分けせずに迅速にデプロイするシステムを持ってるんだよ。それがコードだろうと設定だろうとね。Crowdstrikeを見てみろ。" userName="immibis" createdAt="2025/11/18 20:30:05" color="">}}




{{<matomeQuote body="フェーズドロールアウトじゃ、潜在的なバグを防ぐことはできないよ。" userName="himinlomax" createdAt="2025/11/18 22:24:44" color="">}}




{{<matomeQuote body="Cloudflareにとって設定変更は危険みたいだね。今日、Cloudflare株はほぼ4%下がったよ。これらの障害が業界全体にどんな影響を与えるんだろうね？" userName="imdsm" createdAt="2025/11/18 16:19:40" color="">}}




{{<matomeQuote body="今日は障害が発生する前から、全てのテクノロジー株がプレマーケットで赤字だったよ。" userName="sammy2255" createdAt="2025/11/18 18:40:12" color="#ff5c5c">}}




{{<matomeQuote body="Cloudflareがこれほど普及していることを知らない投資家が多いから、今回の障害はむしろCloudflareにとって良い兆候じゃない？" userName="hbbio" createdAt="2025/11/19 00:34:36" color="">}}




{{<matomeQuote body="設定変更がCloudflareには危険で、今回も株価が下がった。数ヶ月ごとに大規模障害が起きる“ニューノーマル”は、一部プラットフォーム依存と運営の拙さの証だ。航空券やクレカシステムは滅多に障害起こさないのに、CloudflareやAWS、Google Cloudは品質管理が甘い。顧客が障害を「攻撃じゃないからマシ」と受け入れるのはストックホルム症候群だ。規模が大きくても、顧客はもっと改善を要求すべき。そうでなきゃ悪くなるだけだよ。<br>[0] https://en.wikipedia.org/wiki/Airline_reservations_system<br>[1] https://en.wikipedia.org/wiki/Stockholm_syndrome" userName="nobody9999" createdAt="2025/11/19 00:32:14" color="#785bff">}}




{{<matomeQuote body="オランダから確認したら、ほとんど全てダウンしてる。Cloudflareのダッシュボードまで障害中だ。Funnyじゃないのは、Betterstackのダッシュボードはダウンしてるのに、Betterstackでホストしてるステータスページは生きてるってこと。ダッシュボードにアクセスできないから、障害情報を作成して顧客に知らせることもできないよ。" userName="farhadhf" createdAt="2025/11/18 12:02:18" color="#785bff">}}




{{<matomeQuote body="またこの時期が来たか。AWSとCloudflareにここまで依存するのは危険だって皆わかってるけど、今となっては乗り換えるのも難しいんだよね。唯一ポジティブな点は、障害が大規模すぎて、顧客が大抵は理解してくれるってことかな。" userName="pell" createdAt="2025/11/18 12:11:39" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ああ、俺も同じ経験だよ。Hacker NewsはCloudflareを使ってないけど、それは不要だとわかってるからだ。俺も「必要ないならサイトをCloudflareの裏に置くな」ってブログを書いたところさ。<br>[1]: https://huijzer.xyz/posts/123/" userName="huijzer" createdAt="2025/11/18 13:04:12" color="#38d3d3">}}




{{<matomeQuote body="大規模DDoS攻撃から身を守るための代替策や、他にどこに行けばいいか、誰かの提案を聞きたいな。最近はほとんどのCDNプロバイダーが、こういう攻撃を捌くのに十分なキャパシティを積んでるけど、DDoS攻撃を自分で対抗しようとするのは無理ゲーだよね？" userName="fusl" createdAt="2025/11/18 12:14:59" color="">}}




{{<matomeQuote body="悲しいことに、AIボットやクローラーのせいで、過度な画像配信コストなしでサイトを維持するにはCloudflareが唯一手頃な方法なんだ。TikTokのAIクローラーが俺のサイトを破壊してたんだよ。ByteSpiderボットに何百万もの画像が繰り返し配信されて、止まらなかった。執拗な嫌がらせだった。今は全部Cloudflareでブロックしてるよ。" userName="firecall" createdAt="2025/11/18 13:24:19" color="#ff33a1">}}




{{<matomeQuote body="DDoS攻撃は起こりうると受け入れて、どうすることもできないってことを諦めるしかないよ。それでいいんだ、それがインターネットの仕組みだから。" userName="q3k" createdAt="2025/11/18 12:51:05" color="">}}




{{<matomeQuote body="AnubisやBunnyは、君の具体的なニーズによるけど、良い代替案や組み合わせになるよ。<br>- https://anubis.techaro.lol/<br>- https://bunny.net/" userName="isodev" createdAt="2025/11/18 12:19:58" color="#ff5733">}}




{{<matomeQuote body="はい、Cloudflareみたいな集中型サービスへの執着が全く理解できないんだよね。公平に言うと、うちのちっちゃなブログが月100人くらいの訪問者しかいないなら、1日止まっても関係ないんじゃない？" userName="MinimalAction" createdAt="2025/11/18 13:15:15" color="">}}




{{<matomeQuote body="これ、大きなビジネスチャンスがあると思うな。企業がローカルのVPSにステータス更新を置けるサイトを作って、100ドルとかで提供するんだよ。" userName="celltalk" createdAt="2025/11/18 12:20:37" color="#ff5c5c">}}




{{<matomeQuote body="クローラーのIPをブロックするUWFを書くなんて簡単じゃない？こんな時は、セルフホストで本当に良かったって思うよ。" userName="zenmac" createdAt="2025/11/18 13:31:43" color="#38d3d3">}}




{{<matomeQuote body="もし空港で手荷物クレームの手続きをしてたり…薬局で処方箋をもらおうとしてたりするなら別だけどね。コミュニティとして、この状況よりは良くする責任があると思うんだ。" userName="isodev" createdAt="2025/11/18 12:16:44" color="#ff33a1">}}




{{<matomeQuote body="一部は、証明書（certs）の心配をしなくていいのが、プロキシ（proxy）の裏に隠れる良い理由だと思うな。IPアドレスを隠すのにも役立つだろうしね。もちろん、一方でCloudflareの証明書に頼るのは、基本的にMITM攻撃を招くようなものだって知ってるよ。" userName="ThunderSizzle" createdAt="2025/11/18 13:27:02" color="#ff5733">}}




{{<matomeQuote body="それは、DDoSが通常、悪意のある攻撃者によるたまの攻撃だった頃の話だね。最近DDoSされる時は、Facebook直だったり、Azureだったり、あとはランダムなAIだったりするんだ。" userName="herbst" createdAt="2025/11/18 13:03:18" color="#ff5733">}}




{{<matomeQuote body="これらのサービスが信頼できる限り、これは維持できると本当に思うよ。いくつかの障害はあったけど、現時点では信じられないほど信頼性が高いと主張するね。でも、もしこれが変わったら、競合他社への移行コストは、特にAWSの場合、リポジトリを別の場所にプッシュするほど簡単じゃないだろうね。そこに潜在的な危険があると思うんだ。" userName="pell" createdAt="2025/11/18 12:18:57" color="#45d325">}}




{{<matomeQuote body="もしAWS／Cloudflareを選んでいて、インターネットの半分と一緒にサービスが落ちたら、上司の上司に説明する必要もないんだよ。だって、主流メディアで記事になるからね。もし他のサービスを選んでいて、うちは落ちて、競合は大丈夫だったら、えらい人たちからたくさんの質問が来始めるだろうな。" userName="lbreakjai" createdAt="2025/11/18 12:15:38" color="#ff33a1">}}




{{<matomeQuote body="復旧したら、自分自身のために、OVHとかHetznerみたいなプロバイダから他国の月5ドルのVPSを借りて、そこにステータスページを置くと良いよ。「でもそれも落ちたら？」って思うかもしれないけど、メインの製品／サービスと同じ理由で落ちる可能性があるところでホストするのは災害の元だから、それは関係ないんだ。" userName="esskay" createdAt="2025/11/18 12:12:35" color="#ff33a1">}}




{{<matomeQuote body="5ナインって年間7分くらいなんだよね。彼らはSLAを破って、みんなが頼ってるサービスに影響を与えてる。正直、これは他の企業のせいでもあるんだけどね。「みんな」がAWSとCloudflareを使ってるから、他の企業もそれに続く。今や、自分たちの卵が全て同じカゴに入っているだけでなく、みんなの卵も同じカゴに入ってるんだ。そのカゴが必然的に湖に落ちたら…。プロバイダは障害発生時のグローバルな影響をもっと認識すべきだし、顧客は分散をもっと多様化すべきだよ。" userName="CableNinja" createdAt="2025/11/18 13:09:46" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
