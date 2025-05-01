+++
date = '2025-04-24T00:00:00'
months = '2025/04'
draft = false
title = '韓国のバー81,998軒を巡る最短徒歩ルートがマジでヤバすぎると話題'
tags = ["韓国", "旅行", "バー", "最短経路問題", "最適化"]
featureimage = 'thumbnails/purple7.jpg'
+++

> 韓国のバー81,998軒を巡る最短徒歩ルートがマジでヤバすぎると話題

引用元：[https://news.ycombinator.com/item?id=43778105](https://news.ycombinator.com/item?id=43778105)




{{<matomeQuote body="これに感動するなら、同じ作者による13億3000万個の星のTSP解を見てみなよ。Gaia DR2ってやつで、最短ルートの1.0038倍以内の距離だってさ。URLも貼っとくねー。すごいよねー。" userName="gku" createdAt="2025/04/24 07:34:07" color="">}}




{{<matomeQuote body="でもそれって、星の相対的な動きは考慮されてないんじゃない？移動中に距離が変わるから、もっと難しい問題になるよね？俺の天文学の知識が間違ってるかな？" userName="gampleman" createdAt="2025/04/24 07:55:28" color="">}}




{{<matomeQuote body="天文学の知識は正しいと思うよ。でも、実際に移動するとなると、燃料とか補給のことも考えなきゃいけないし、星の中を突っ切るわけにもいかないしね。いろいろ大変だ。" userName="paulluuk" createdAt="2025/04/24 08:05:33" color="">}}




{{<matomeQuote body="移動のロジスティクスと、少なくとも理論的に可能なルートがあるっていう区別はつけるべきだと思うな。計算されたルートはスターゲイトみたいなシステムなら使えるかもしれないけど、最短距離にする意味が分からなくなる。" userName="gampleman" createdAt="2025/04/24 08:58:18" color="">}}




{{<matomeQuote body="バーの問題も色々あるよね。バーの数が多すぎて、歩いてる間に閉店したり、新しい店ができたりするかもしれないし。" userName="elymar" createdAt="2025/04/24 10:24:27" color="">}}




{{<matomeQuote body="星の間を飛び回る問題は、星間の距離に比べて誤差みたいなもんだから無視してよくね？" userName="consp" createdAt="2025/04/24 09:52:31" color="">}}




{{<matomeQuote body="そこまで言うなら、時間の相対性も考慮しないと、星の正確な位置を測るのが難しくなるじゃん。" userName="manmal" createdAt="2025/04/24 10:41:46" color="">}}




{{<matomeQuote body="あと、移動中に新しいバーができたり、閉店したりすることも考慮されてないよね。それに、用心棒の機嫌が悪いと、同じバーに何度も行かないといけなくなるかも。" userName="batuhandirek" createdAt="2025/04/24 08:06:39" color="">}}




{{<matomeQuote body="これって、韓国のバーを飲み歩くための手段として提示されてるわけじゃないと思うよ。TSPの面白い応用例ってだけじゃない？" userName="pverghese" createdAt="2025/04/24 10:27:45" color="#ff5c5c">}}




{{<matomeQuote body="星はめっちゃ離れてるし、だいたい同じ軌道で動いてるから、そんなに気にしなくてもいいんじゃない？" userName="nurettin" createdAt="2025/04/24 09:42:10" color="">}}




{{<matomeQuote body="うん、瞬間移動を前提にしてたんだ。星が一個でも軌道は非線形になるよね。" userName="nurettin" createdAt="2025/04/24 16:15:49" color="">}}




{{<matomeQuote body="意味わかんない。瞬間移動を仮定するなら、stellar driftを考慮する必要ないじゃん。GPは明らかに瞬間移動の話じゃないし。" userName="marcellus23" createdAt="2025/04/25 15:57:23" color="">}}




{{<matomeQuote body="残念なことに、インタラクティブビューワー(https://www.math.uwaterloo.ca/tsp/star/star10m_tour.html)で使ってるThree.jsのバージョンが固定されてないから、2022年5月から壊れてるんだよね。HTMLファイルをダウンロードしてリンクを修正したら、まだ動くよ。" userName="bscphil" createdAt="2025/04/28 15:47:07" color="#ff5c5c">}}




{{<matomeQuote body="単純なBell Labsの確率的アルゴリズムを使うと、結果ってどれくらい悪くなるんだろ？古典的なTSPのアプローチは〜を繰り返すんだけど、最適とは限らないけど、現実の問題では最適に近い結果になることが多い。" userName="Animats" createdAt="2025/04/24 06:35:11" color="">}}




{{<matomeQuote body="このツアー自体は、ヒューリスティックソルバー(https://www.math.uwaterloo.ca/tsp/korea/computation.html)を使ってすぐに見つかったんだって。今回のすごいところは、これが下限だってことを証明したこと(たぶん)。ヒューリスティックソルバー優秀！" userName="amscanne" createdAt="2025/04/24 06:57:35" color="#ff5c5c">}}




{{<matomeQuote body="OPが言ってるアルゴリズムは、一般的に2-optとして知られてるよ。今回使われたヒューリスティックはLKHって呼ばれてるみたい。Lin-Kernighan Heuristicの略かな。" userName="n4r9" createdAt="2025/04/24 07:45:02" color="#785bff">}}




{{<matomeQuote body="2-optはもうちょいシンプルだよ。LKHはちょっと違って、Lin-Kernighan+Helsgaunのこと。" userName="vjerancrnjak" createdAt="2025/04/24 07:56:00" color="#ff5c5c">}}




{{<matomeQuote body="https://www.youtube.com/watch?v=tChnXG6ulyE<br>作者のプレゼン動画" userName="neves" createdAt="2025/04/24 11:45:40" color="">}}




{{<matomeQuote body="彼らが使ったLKHヒューリスティック(たぶん簡略化版)は、各イテレーションで、ランダム化を適用して、各場所から始めて、パスを2〜n個にカットして、最適な方法で再接続して、新しいツアーがベストなら保存する、みたいな感じかな。nは4とか5みたいな小さい数。" userName="yobbo" createdAt="2025/04/24 07:41:14" color="">}}




{{<matomeQuote body="2-optってのは、部分配列を逆にする操作のことみたいだね。もっと複雑なLK heuristicってのもあるらしいけど、よくわかんないや。距離対称性があれば、新しいルートのコストを一定時間で計算できるらしいよ。へー。" userName="vjerancrnjak" createdAt="2025/04/24 08:09:16" color="">}}




{{<matomeQuote body="総距離が書かれてないのが不思議だよね。ポイント間の移動時間も大事だけど、カロリー消費とか、最短距離からのずれとかも知りたかったなー。" userName="noduerme" createdAt="2025/04/24 02:10:39" color="">}}




{{<matomeQuote body="ちゃんとしたルーティング計算は結構コストがかかるんだよね。A*とか使っても、交通規制とか一方通行とか考慮できないし。API使うのはお金がかかりすぎるんだろうね。" userName="internetter" createdAt="2025/04/24 12:38:00" color="">}}




{{<matomeQuote body="オハイオ州くらいの広さに8万軒以上のバーがあるなんて、考えただけで圧倒されるわ。" userName="notesinthefield" createdAt="2025/04/24 01:46:08" color="">}}




{{<matomeQuote body="韓国の人口は5200万人で、オハイオ州の約5倍だよ。" userName="lifthrasiir" createdAt="2025/04/24 02:24:20" color="">}}




{{<matomeQuote body="でも、オハイオ州には約4200軒のバーがあるから、人口に対するバーの割合は韓国の約1/4なんだよね。" userName="codemac" createdAt="2025/04/24 05:44:14" color="">}}




{{<matomeQuote body="韓国のバーには、オハイオ州みたいに駐車場を最低限確保する義務がないんじゃないかな。" userName="xmprt" createdAt="2025/04/24 06:48:13" color="">}}




{{<matomeQuote body="駐車場を最低限確保する義務って何？" userName="skrebbel" createdAt="2025/04/24 08:35:49" color="">}}




{{<matomeQuote body="駐車場の最低台数のことだよ。店のキャパシティに応じて、必要な駐車場の数が決まってるんだ。でも、大抵の場合、必要な数が多すぎて無駄が多いんだよね。" userName="Akronymus" createdAt="2025/04/24 09:06:21" color="#ff33a1">}}




{{<matomeQuote body="酔っ払う場所であるバーに専用駐車場があるなんて、道路交通安全上すごく悪いと思うんだけど。むしろ推奨されてるなんて信じられない。みんな飲酒運転してるの？それとも誰かコーラ飲んで運転担当してるの？" userName="skrebbel" createdAt="2025/04/24 11:23:49" color="#785bff">}}




{{<matomeQuote body="おれたちは後者を「designated driver（飲酒運転代行者）」って呼ぶけど、想像できると思うけど、たまにそのdesignated driverが「ほんの少し」酔ってるだけってこともあるんだよね。[1]: https://en.wikipedia.org/wiki/Designated_driver" userName="vulcan01" createdAt="2025/04/24 11:30:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="えーと、みんな車でパブに行くってことは、みんなdesignated driverを連れて行くってこと？それとも、みんな酔っ払って運転するけど、誰もそうじゃないふりをするってこと？" userName="skrebbel" createdAt="2025/04/24 12:11:28" color="">}}




{{<matomeQuote body="タクシーがあるじゃん。" userName="alexfoo" createdAt="2025/04/24 13:22:55" color="">}}




{{<matomeQuote body="もしこれが正しいなら、SeoulはChicagoの約4倍の人口なのに、バーの数が40倍以上ってこと？マジで？" userName="bobxmax" createdAt="2025/04/24 10:53:47" color="">}}




{{<matomeQuote body="比較のために、イギリスのツアーもあるよ。https://www.math.uwaterloo.ca/tsp/uk/index.html：49,687軒のパブがあるんだって。\n都市現象だよね。広大な田舎の州で、禁酒法があったり、車で行かなきゃいけない場所とかだと、お酒を飲む場所が少なくなる。\n飲みに行く文化は、歩きやすい都市が必要だよね。イギリスのパブの多くは車の発明以前から存在していて、「peak pub」は1800年代後半で10万軒以上あったみたい。\n韓国がイギリスより多いのはすごいけど、これは規模と韓国のバーが小さいことが関係してると思う。" userName="pjc50" createdAt="2025/04/24 09:40:05" color="#ff5c5c">}}




{{<matomeQuote body="飲みに行く文化は歩きやすい都市が必要ってのは違うと思うな。イギリスでは村にパブがあったし。徐々に村同士が結合して大きな都市になって、パブが残ったんだよ。歩きやすい都市として計画されたわけじゃない。" userName="robertlagrant" createdAt="2025/04/24 10:28:09" color="">}}




{{<matomeQuote body="あと韓国って胃がんの発生率がめっちゃ高いんだよね。" userName="ekianjo" createdAt="2025/04/24 05:58:36" color="">}}




{{<matomeQuote body="駐車場がいつも満車ってことはないんじゃない？人気のお店は確かにそうだけど、閉店時間とかガラガラだし。駐車場を小さくすると、営業中に停められなくなる問題が悪化するよね。アメリカが車社会なの、そう簡単には変わらないと思うよ。ビジネス側が駐車場をちゃんと用意するか、市が大きな駐車場を作るしかないんじゃない？" userName="Suppafly" createdAt="2025/04/24 15:52:42" color="">}}




{{<matomeQuote body="韓国ってオハイオ州の5倍の人口がいるのに、バーの数は約27倍もあるんだって[1]。マジでバーが多いんだね。[1] https://www.ibisworld.com/us/industry/ohio/bars-nightclubs/1..." userName="mherkender" createdAt="2025/04/24 14:09:41" color="">}}




{{<matomeQuote body="人口が5倍も少ないんだから当然じゃない？" userName="zamadatix" createdAt="2025/04/24 02:17:46" color="">}}




{{<matomeQuote body="車が普及する前から、歩いて行ける距離にパブとかお店とか学校とか、生活に必要なものが全部あったから、歩きやすい街並みが自然とできたんだよね。" userName="tlb" createdAt="2025/04/24 10:31:11" color="#ff5733">}}




{{<matomeQuote body="いや、もっと少ないと思うよ。レストランとかも含めた酒類提供許可のある店じゃなくて、本当に“バー”って言える店は5000軒もないんじゃないかな。" userName="fakeBeerDrinker" createdAt="2025/04/24 02:22:24" color="">}}




{{<matomeQuote body="アルコールを提供できるレストランのデータセットを手に入れたみたいだね。メニューとかで絞り込んだのかな。近所のドットをいくつかチェックしてみたら、全部フライドチキンのお店だったよ。やっぱりチメクは最高だよね！" userName="kijin" createdAt="2025/04/24 03:12:09" color="">}}




{{<matomeQuote body="アメリカではバーに駐車場が義務付けられてるところばかりじゃないよ。20年前にガールフレンドのお父さんのバーをLong Beachでオープンするのを手伝ったんだけど、市から道路沿いの駐車スペース3台分の維持費を払うように言われただけだったよ。何も新しく作る必要はなかった。" userName="nonameiguess" createdAt="2025/04/24 15:26:47" color="">}}




{{<matomeQuote body="車でバーに行って、酔っぱらってタクシーとかUberとかで帰って、次の日に車を取りに行く人が結構いるよね。個人的には意味が分からないけど、お酒飲まないからよく分からないや。" userName="apocalyptic0n3" createdAt="2025/04/24 14:53:53" color="">}}




{{<matomeQuote body="多くの国ではもっと“公共”スペースが活用されていて、みんなで一緒に過ごす時間が多いんだよね。郊外に車で帰って、家に閉じこもるっていうのは、北米独特の考え方だと思う。ヨーロッパを10ヶ月旅してきたけど、公共の場所で食事したり、おしゃべりしたり、ただ時間を過ごしたりする人の数が全然違う。LAとかChicagoがまるでゴーストタウンみたいに見えるよ。" userName="testing22321" createdAt="2025/04/24 11:34:53" color="#ff33a1">}}




{{<matomeQuote body="韓国人と結婚してる者として、全く驚かないね。会った韓国人男性はみんな酒豪だよ。あっちの飲酒文化がいかに根強いか、欧米人には想像もつかないだろうね。" userName="deepspace" createdAt="2025/04/24 16:39:03" color="">}}




{{<matomeQuote body="アメリカが車社会になるのを止められないって？それはないと思うな。郊外が都市から広がったように、歩きやすさも徐々に広がるはず。例えば、SFは比較的歩きやすいし公共交通機関もある。次は駐車場の最低基準をなくして、SF周辺を歩きやすくするんだ。そうすれば、車を使う人が減って、歩ける範囲が広がっていくと思うよ。" userName="xmprt" createdAt="2025/04/24 16:09:41" color="#38d3d3">}}




{{<matomeQuote body="「Bar」の意味は国によって違うんだよね。スペインでは、バーはあらゆる種類のアルコールを出すけど、朝食やランチも食べるし、コーヒーも飲む場所。なくてはならない社交の中心地で、150人の小さな町にもあるんだ。" userName="bigbacaloa" createdAt="2025/04/24 07:02:33" color="#ff5c5c">}}




{{<matomeQuote body="韓国の82,000軒には、アルコールを提供する許可を持つレストランやカラオケも含まれてるんだよ。個人的には80％を「バー」とは呼びたくないな。オハイオ州で言うとclass CとDの許可を持つところ全部かな。数は公表されてないけど、4,000よりずっと多いはず。ソウルのバーは小さい部屋が多いけど、「バー通り」には50軒くらい隣接してるんだ。" userName="throwaway290" createdAt="2025/04/24 07:02:29" color="#38d3d3">}}




{{<matomeQuote body="こんな難しいデータセットを見つけたのはすごいけど、もっと難しくても良かったかも。Traveling Salesmanの記録（オランダ）を破るのと、計算が終わらないのとの微妙なバランスだね。" userName="OsrsNeedsf2P" createdAt="2025/04/24 01:38:27" color="">}}




{{<matomeQuote body="ばかげてて、実際に解決可能な問題を選んだ計画に敬意を払うよ。" userName="BrtByte" createdAt="2025/04/24 13:37:13" color="">}}




{{<matomeQuote body="「計算」ページ[1]を見ると、オランダの計算は97 CPU年で6ヶ月かかったと書いてあるけど、韓国のバーは44 CPU年で3ヶ月。同じハードウェアを使ったのかわからないな。[1] https://www.math.uwaterloo.ca/tsp/korea/computation.html" userName="omoikane" createdAt="2025/04/24 04:57:26" color="#785bff">}}




{{<matomeQuote body="解決策が見つかるまで、問題のあるバーをデータセットから削除したんじゃないかって疑わない？" userName="bjornsing" createdAt="2025/04/24 03:37:52" color="">}}




{{<matomeQuote body="君も僕も知らないけど、ここは hacker news だから、誰か正直にやってるか監視してる人がいるかもね。" userName="dumbfounder" createdAt="2025/04/24 03:57:24" color="">}}




{{<matomeQuote body="昔、アイルランド軍でこんな質問があったらしいよ。「Bachelor’s WalkからCollins Barracksまで、バーを通らずに行くにはどうすればいい？」。みんな何時間も何日も考えてたけど、答えは「全部のバーに入る」だったんだって。" userName="tiernano" createdAt="2025/04/24 09:12:33" color="#38d3d3">}}




{{<matomeQuote body="マジかよ、NPってまたPみたいになったんだ。学校じゃ最大13だって習ったし、代数の教授は80年代に15まで進めてたけど。そっから20が出て、2万が出て、今回は証明付きで8万だってさ。World TSPのページには記録が100万だって書いてあるし。http://webhotel4.ruc.dk/~keld/research/LKH/ 今んとこ最大の証明済みの最適解は3178031らしいよ。これ、普通のCじゃなくてCUDAでやるべきじゃね？" userName="rurban" createdAt="2025/04/24 04:52:19" color="">}}




{{<matomeQuote body="GPUで最適化アルゴリズムを実行する研究はめっちゃあるんだよね。今の形だと、Branch and BoundとかCutting PlanesはCUDAで実装してもメリットがないんだって。PDLPっていう新しいアルゴリズムはGPUで実装できるけど、まだ初期段階らしい。詳しくはhttps://blogs.nvidia.com/blog/cuopt-open-source/を見てみて。" userName="eduardosalaz" createdAt="2025/04/24 05:24:29" color="">}}




{{<matomeQuote body="Euclidean TSPって、難しいインスタンスをエンコードするために大量のデータが必要なんだよね。N=15は60年代には解けたと考えられてたし、N=20は特にEuclidean TSPの大きなインスタンスとは見なされてないよ。誰が13が最大って言ったのかわかんないけど、10万のメモリスロットと100万回の比較が必要じゃん。そんなの昔から余裕だよ。" userName="JohnKemeny" createdAt="2025/04/24 05:29:33" color="">}}




{{<matomeQuote body="ああ、たぶんハミルトン路問題とごっちゃにしてたわ。昔の話だし。" userName="rurban" createdAt="2025/04/24 06:17:56" color="">}}




{{<matomeQuote body="「証明付きで8万」って言うなら、証明出してよ。" userName="moralestapia" createdAt="2025/04/24 07:10:39" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="COVID中に、CityStrides (https://citystrides.com/) っていうWebサービスを使って、自分の街の全ての道を歩くっていう目標を立てたんだ。歩いた道が記録されて、街の何%を歩いたかがわかるんだよね。ルートは最適化されないけど、重複しないように歩くルートを考えるのが楽しいパズルだった。自動化ツールもいいけど、手でやるのが旅の一部だったかな。CityStridesのサイトを見ると、みんなのLifeMapが見れるよ。すごい量のウォーキングしてる人もいるんだ。例えば、この人のパリのカバー率を見てみて...https://citystrides.com/users/15259/map#48.85741101618777,2...." userName="pugworthy" createdAt="2025/04/24 17:42:58" color="#ff5c5c">}}




{{<matomeQuote body="やべっ、新しいバーがいくつかオープンして、閉じた店もあるみたいだ。また計算し直さなきゃ。" userName="flerchin" createdAt="2025/04/24 02:08:17" color="">}}




{{<matomeQuote body="Branch-and-boundは俺にとって「教科書に載ってる」アルゴリズムって感じだな。LP solverをブラックボックスとして見れば、根本的にはすごくシンプルだけど、めちゃくちゃ役に立つ。" userName="blt" createdAt="2025/04/24 05:00:53" color="">}}




{{<matomeQuote body="OSRMの開発リーダーです。こんな大規模なインスタンスが解かれてるのを見るのは嬉しいな。" userName="DennisL123" createdAt="2025/04/24 05:12:22" color="#38d3d3">}}




{{<matomeQuote body="もしこのルートに人生の40年を費やしたとしても、1日に5.616軒のバーを回ることになるんだな。マジかよ。" userName="mofunnyman" createdAt="2025/04/24 01:44:18" color="">}}




{{<matomeQuote body="1日に6軒以下のバーなら余裕じゃん？　:-p" userName="kirubakaran" createdAt="2025/04/24 02:29:05" color="">}}




{{<matomeQuote body="コンマが小数点区切りじゃないの？" userName="Smar" createdAt="2025/04/24 02:40:52" color="">}}




{{<matomeQuote body="住んでる場所によるんじゃない？" userName="throwaway019254" createdAt="2025/04/24 04:36:00" color="">}}




{{<matomeQuote body="こういうのって、ちょっと計算してみればすぐわかるじゃん。今回の場合、5000 * 365 * 40 が明らかに82000より大きいってわかるし。" userName="onion2k" createdAt="2025/04/24 14:28:58" color="">}}




{{<matomeQuote body="そんなにたくさんバーがあるわけじゃないよ。" userName="speedgoose" createdAt="2025/04/24 05:09:34" color="">}}




{{<matomeQuote body="時間が経ってるから、もう店が閉まってたり、存在しなくなってたりする可能性も考慮しないとね。" userName="devonkim" createdAt="2025/04/24 03:38:10" color="#785bff">}}




{{<matomeQuote body="Traveling Salesman Problem（巡回セールスマン問題）って言うけど、酔っ払いの散歩って感じだよね。" userName="labster" createdAt="2025/04/24 01:33:16" color="#ff33a1">}}




{{<matomeQuote body="よろめきって呼ぶのが良いかも　:)" userName="The28thDuck" createdAt="2025/04/24 01:45:28" color="">}}




{{<matomeQuote body="家の近くを見てみたけど、いくつか見逃してるね。韓国では、地元のお店は地図に載ってないことが多いんだよね。" userName="Catagris" createdAt="2025/04/24 11:08:51" color="#ff33a1">}}




{{<matomeQuote body="これの逆、つまり一番長いルートを見つけることをした人はいるのかな？" userName="HPsquared" createdAt="2025/04/24 08:55:23" color="">}}




{{<matomeQuote body="マジウケるし、マジですごい。82,000軒近いバーを巡るTSPの解って？数学とビールに対する献身がハンパないって知らなかったわ。こんなの人生に必要だったんだね。" userName="BrtByte" createdAt="2025/04/24 13:32:53" color="#ff5733">}}




{{<matomeQuote body="アルゴリズムについて簡単に説明してくれたら嬉しいな。TSPを整数線形計画問題に変換して、branch and bound法を使ってるみたいだけど、よくわかんない。" userName="bjornsing" createdAt="2025/04/24 03:36:07" color="">}}




{{<matomeQuote body="プライマルヒューリスティックには古典的なLin Kernighan（http://webhotel4.ruc.dk/~keld/research/LKH/）が使われてて、最適性の証明にはConcordeが切断面生成と分岐に使われてる（https://www.math.uwaterloo.ca/tsp/book/index.html、またはhttps://www.math.uwaterloo.ca/tsp/korea/computation.htmlに詳細）。LPソルバーとしてはCPLEXが使われてる。" userName="pkhuong" createdAt="2025/04/24 03:45:38" color="#38d3d3">}}




{{<matomeQuote body="地図を拡大してみたら、数秒短縮できるショートカットを少なくとも1つ見つけちゃった。これって解が最適じゃないって証拠になるかな？　:P" userName="z3t4" createdAt="2025/04/24 09:02:16" color="">}}




{{<matomeQuote body="他の人の注文とかに影響ある？つまり、差し引き損になる？" userName="throwaway519" createdAt="2025/04/24 14:47:33" color="">}}




{{<matomeQuote body="これって、量子コンピュータがスケールアップできたら一瞬で解決できる問題なの？" userName="sylware" createdAt="2025/04/24 10:50:25" color="">}}




{{<matomeQuote body="めっちゃ興味深い…赤い丸をクリックしたら何か起こるのかな？名前とか他の情報が表示されると期待してたんだけど！" userName="kopirgan" createdAt="2025/04/24 02:38:26" color="">}}




{{<matomeQuote body="51,248軒目のバーに着いたのに、閉店してたってなったらマジ最悪。" userName="marvinkennis" createdAt="2025/04/24 03:38:49" color="">}}




{{<matomeQuote body="世界中のすべての国を旅した記録を残した人がいたんだ。終わる直前に南スーダンが独立して、特別な旅をしなければならなくなったんだって。アフリカの他の国はすべてとうに終わってたらしい。" userName="Mountain_Skies" createdAt="2025/04/24 07:55:34" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
