+++
date = '2025-06-07T00:00:00'
months = '2025/06'
draft = false
title = '先延ばしを乗り越える方法'
tags = ["先延ばし", "モチベーション", "生産性", "習慣", "ライフハック"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> 先延ばしを乗り越える方法

引用元：[https://news.ycombinator.com/item?id=44207095](https://news.ycombinator.com/item?id=44207095)




{{<matomeQuote body="行動がモチベーションになるってホントだね。俺が見つけたコツは、明日一番にやる簡単な作業を残しておくこと。それにメモも添えて。これがエディタ開いたり、コード動かしたりするきっかけになって、すぐにエンジンがかかるんだ。ソフト開発以外でも使えるよ。" userName="rented_mule" createdAt="2025/06/07 04:41:19" color="#ff5733">}}




{{<matomeQuote body="そうだね。やることがはっきりしない時は、明日続きをやる場所に構文エラーをわざと残しておくことがあるんだ。これがすごく効果的。”どこまでやったっけ？”って考えずにすぐ始められるから、一つハードルが減るよ。" userName="jraph" createdAt="2025/06/07 07:34:43" color="#ff5c5c">}}




{{<matomeQuote body="こういうちょっとしたコツで、瞬時に作業コンテキストを思い出せるの、面白いよね。だから休憩中とか夜は仕事のこと忘れられる。まさに使える”ハック”だよ。仕事終わりに頭にある3つのタスクをさっとメモしておくのも、コンテキストを思い出すのに役立つね。" userName="euroderf" createdAt="2025/06/07 08:14:54" color="#38d3d3">}}




{{<matomeQuote body="あとコードにTODOコメントをどんどん入れとけばいいよ。Gitの魔法で、すぐ作業中のインデックスで見つけられるから、すぐに作業に戻れる。ただ、コミットする前に消すのを忘れないでね。" userName="bravesoul2" createdAt="2025/06/07 08:48:38" color="#ff33a1">}}




{{<matomeQuote body="Gitでどうやってファイル中の特定のテキスト見つけるの？`grep`で十分じゃない？”TODOコメントをコードに入れる”って、コードはディスクにあるんだよね？" userName="diggan" createdAt="2025/06/07 10:09:15" color="">}}




{{<matomeQuote body="`diff`に表示されるよ。`grep`でも見つかるけど、`diff`にあるやつは自分が追加したって確実にわかるからね。" userName="cjbillington" createdAt="2025/06/07 10:16:24" color="">}}




{{<matomeQuote body="コミットしてない作業がどこまで進んだか確認するには、`git status && git diff HEAD`とかやってみるといいよ。これでどのファイルを触ったか、差分が見れる。必要ならdiff内で検索もできるし、repo全体で`TODO`を探すなら`git grep TODO`とか、大文字小文字区別しないなら`git grep -i TODO`だよ。" userName="MaxBarraclough" createdAt="2025/06/08 10:09:55" color="#38d3d3">}}




{{<matomeQuote body="それってヘミングウェイのトリックだね。”まだ調子が出てて、次に何が起こるか分かるところまで書いたら止めて、次の日までなんとか生きて、またそこから始めるんだ”ってやつ。URLはこちら: https://www.theparisreview.org/interviews/4825/the-art-of-fi..." userName="tmoertel" createdAt="2025/06/07 08:39:02" color="#45d325">}}




{{<matomeQuote body="行動がモチベーションを生む、逆はありえないって著者が言ってるのは絶対違うね。もちろんモチベーションが先に来ることもある。ただ、それが現れるのを待ってちゃダメってだけだよ。当たり前のこと言ってるだけだけど、著者の主張がおかしいと思って。" userName="jspash" createdAt="2025/06/08 07:51:07" color="">}}




{{<matomeQuote body="常に、作業を離れる時（ランチでも帰宅でも）は、失敗テストの状態で終わらせるようにしてるんだ。できる限りね。" userName="apwell23" createdAt="2025/06/07 10:23:01" color="#ff33a1">}}




{{<matomeQuote body="親コメントがインデックスから見つけたって具体的に言ってるのに、なぜdiffから探す必要がある？ファイルに既にあるんだから、git経由よりgrepとかの1コマンドで見つかるでしょ？" userName="diggan" createdAt="2025/06/07 10:18:58" color="">}}




{{<matomeQuote body="grepでもできるよ。俺はgitとかそれをラップするツールをよく使うから、エディタ開くとstatusやdiffをチェックするのが無意識の癖になっちゃってるだけ。" userName="bravesoul2" createdAt="2025/06/07 10:18:56" color="">}}




{{<matomeQuote body="私はいつも”$$”を使ってるよ。多分サブリミナル的なものかな。" userName="dogman1050" createdAt="2025/06/07 11:31:04" color="">}}




{{<matomeQuote body="gitの使い方は知ってるよ :P ファイルにあるTODOを探すのに、なぜgitを使うのかが疑問。grep単体でできることしかしてないよね？" userName="diggan" createdAt="2025/06/11 15:40:51" color="">}}




{{<matomeQuote body="gitの利点は、未コミットの変更が見えること。TODOを使わなくても、翌日どこまでやったか文脈を把握するのにすごく役立つよ。" userName="bravesoul2" createdAt="2025/06/07 11:56:26" color="#45d325">}}




{{<matomeQuote body="これを頻繁にやるなら、これらのマーカーを検索して見つかったらコミット失敗にする簡単なコミットフックを作れるね。" userName="rmwaite" createdAt="2025/06/07 17:39:49" color="#785bff">}}




{{<matomeQuote body="すごく凝った`gq`っていうgitエイリアスで、保留作業を見つけて終わらせるのに役立ててる。`gq`が何も返さないのが理想で、それはクリーンな状態だから次に進めるってこと。そうじゃないなら、やるべきことがあるってことだね。変更ファイル、stash、ローカルブランチなどをリストアップする。これを空にするのは、特に集中できない時に効果的な生産性維持法だよ。git版のinbox-zeroかな。クリーンなワークツリー好きな人向けだけどね。" userName="gcarvalho" createdAt="2025/06/08 15:10:57" color="#ff33a1">}}




{{<matomeQuote body="私もそれやる！特に作業途中で止めるとき。コンパイルOKでもテスト失敗でもない未完成なら、構文エラーを仕込むのはセーブデータみたい。明日戻ってきても、1分で思い出す。" userName="devrandoom" createdAt="2025/06/08 03:34:34" color="#38d3d3">}}




{{<matomeQuote body="私もやってるよ。私の工夫は、構文エラーを「次にやること」の一文にすること。翌日それをコメントにして、作業してコメントを消す。タスク完了とコード削除で、達成感が二重に来るんだ。" userName="dugmartin" createdAt="2025/06/08 11:34:15" color="#38d3d3">}}




{{<matomeQuote body="たぶん言いたいことと同じだと思うけど、僕は直せるって分かってる失敗テストを残して帰るのが好きだな。そうすれば夜中ずっとそのこと考えなくて済むし。何で壊れてるか分からないまま帰るのはイライラするからね。" userName="martinpw" createdAt="2025/06/08 20:32:38" color="#ff5733">}}




{{<matomeQuote body="似たような方法だと、簡単な文章を半分だけ書きかけで置いとくとか。そうすると戻ってきた時に、まずやるべきことが明確で、すぐに再開できるよね。" userName="jenny91" createdAt="2025/06/07 15:11:00" color="#ff5733">}}




{{<matomeQuote body="これいいじゃん。ナイスな方法だね。" userName="getlawgdon" createdAt="2025/06/07 20:01:00" color="#45d325">}}




{{<matomeQuote body="これ、“坂道に下向きに駐車する”って呼ばれてるって聞いたことあるな。" userName="parpfish" createdAt="2025/06/07 12:39:51" color="">}}




{{<matomeQuote body="Pragmatic Programmers（あの本の著者たちね）とのセッションに参加した時、仕事終わりにわざとコンパイルエラーを起こしておくのを勧めてたのを思い出したよ。翌日コードをコンパイルしてエラーが出て、それを直してから作業を続けるんだ。もう作業してるって状態になるでしょ？これが前の日から頭を正しい方向に向けてくれるんだ。僕も少し使ってみたけど、結構うまくいくよ。" userName="kennethh" createdAt="2025/06/08 09:03:26" color="#ff5c5c">}}




{{<matomeQuote body="これ、色々な呼び方があるよね。タイムブロック（time blocking）もそうだけど、本当に効果あるんだ。ちょっとしたリマインダーだけどさ。僕みたいに重度のADHDの人にも効くことがあるんだよ。ちょっとやり方が違うし、両極端な場合もあるけどね。全く効かないか、効きすぎるか。でも、いつも効くんだ。何が言いたいかっていうと、もし効率的じゃないと感じても、それが自分にとってどんな形で機能するかを見つけるまで試してみるべきだよってこと。" userName="roudaki" createdAt="2025/06/07 14:01:32" color="#ff33a1">}}




{{<matomeQuote body="わかるわ〜、限界だって時にやめるのが一番楽だよね。<br>解決策を探したページを2分でブックマークして、後でやろうと思うことをメモしておくと、再開がすごく簡単になるよ。" userName="agumonkey" createdAt="2025/06/07 20:27:49" color="">}}




{{<matomeQuote body="先延ばしを”常に”克服することが目標である、って考えには反対かな。<br>だって、先延ばしが本質的に悪いとは思わないんだよね。”非生産的”だってレッテルを貼られてるけど、素晴らしい洞察につながることもあると思うんだ。<br>あなたの脳が「今のタスクに興味ないよ」って言ってるんだとしたら、問題は「なぜ？」だよね？働きすぎで休憩が必要？もっと別のことを探求したい？それとも失敗の痛みから自分を守ってる？<br>「克服する」って力ずくでやるより、「なぜ？」を調べる方が、個人的にはずっと実りがあるよ。<br>「行動がモチベーションにつながる」って考え方は、根本的な原因の一つ（たぶん失敗への恐れとかimposter syndrom）には役立つかもだけど、全部じゃないと思うな。" userName="kriro" createdAt="2025/06/07 15:15:02" color="#38d3d3">}}




{{<matomeQuote body="難しいタスクだとすごく先延ばししちゃうんだけど、大抵は設計に関するそれぞれの決定に伴うリスクをまだ完全に理解できてないからなんだ。<br>若いエンジニアには「早く失敗しろ」がすごく理にかなってると思う。経験の土台がなくて、何が正しくて何が間違ってるか分からないから、学ぶ唯一の方法が失敗だからね。<br>経験豊富なエンジニアにとっては、”これはこう失敗する可能性があるな。どうやってそれを回避した設計にしよう？”っていう感覚が強いんだ。<br>経験豊富なエンジニアが失敗する exact な方法を知ってるわけじゃないけど、過去に遭遇した失敗のパターンがあるから、目標は柔軟性や選択肢を考慮した設計にすることなんだ。そして時々、これは path を carved する前に、ちょっとした”gestation”とか”percolation”が必要になるんだ。<br>経験豊富な彫刻家が、ノミで最初の strike をする前に大理石の塊を sizing up する感じに似てると思うんだ。一種の先延ばしだけど、 real には、 path を可視化する process なんだよね。" userName="CharlieDigital" createdAt="2025/06/07 15:26:53" color="#ff5733">}}




{{<matomeQuote body="私の expert machinist の友達（mold/tool maker）は、これを”couch machining”って呼んでるよ。<br>彼は働いてないように見えるけど、 real には頭の中で全 process を最初から最後まで組み立ててるんだ。<br>それで CAM を使う時、すごくスムーズに進むし、 entire part はすでにほとんど計画済みなんだ。<br>頭の中で可視化しない人には、これが理解できないことが多いと思うな…非活動に見えるんだ。<br> real には、それは hyperactivity なんだ…先延ばしは、未解決の solution を持つ too many tasks と directions から来るんだ。（私の case では…）<br>別の言い方で聞いたことがあるのは、「Thinking is working」ってこと。<br>働いてないように見えたら…私は likely thinking してるってこと。" userName="Ccecil" createdAt="2025/06/07 23:44:28" color="#ff33a1">}}




{{<matomeQuote body="へぇ、それは本当にinsightful な視点だね。<br>開発タスクをやるべきだって分かってる時に、hacker news とか他の IT 関連の post をネットで読んでしまうことに、よくちょっと shame を感じるんだ。<br>あなたの description が、私の先延ばしの理由をかなり正確に描写してるよ。<br>ありがとう。" userName="mnemonk" createdAt="2025/06/07 20:41:35" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これは確かな observation だね。<br>先延ばしが悪いのは、silly TikTok videos を見るような、非生産的だけど addictive な behavior に駆り立てる時だと思うよ。<br>「structured procrastination」をするなら、実際には良いこともあるんだ。task X をやる気になれないけど、problem Y をすごく neatly に解決することに solace を見出すとかね。<br>別のアプローチは、散歩したり、push-ups したり、 mental tasks から焦点を変える何かしら、できれば脳にもっと oxygen を送ることをすることだよ。<br>もう一つのアプローチは analytical なもの。「そのことをやるのがstomachできない！でもどんな thoughts や feelings が、そんなに loathe させるんだろう？それらはどこから来るんだろう？」ってね。Interesting insights が follow する可能性があるよ。" userName="nine_k" createdAt="2025/06/07 22:20:36" color="#ff5c5c">}}




{{<matomeQuote body="＞It can be actually good if you do ”structured procrastination”<br>これはまさに、Stanford の emeritus professor of philosophy である John Perry がそう呼んでるんだ。<br>「Structured Procrastination」という essay（と whole website）すらあるよ [1]：<br>＞Structured procrastination とは、持っている tasks の structure を、この事実（タスクを避けるために別のタスクをする）を exploite するように形作ることを意味する。<br>心にある task のリストは重要度で並べられる。most urgent で important な task は top にある。<br>でも、リストの lower down には、perform する価値のある tasks もある。<br>これらの task をすることは、リストの higher up にある things をやらない方法になるんだ。<br>このような appropriate task structure があれば、 procrastinator は useful citizen になる。<br>実際、procrastinator は、私のように、a reputation for getting a lot done を acquire することすらできるんだ。<br>[1] https://www.structuredprocrastination.com/" userName="selcuka" createdAt="2025/06/08 14:39:23" color="#785bff">}}




{{<matomeQuote body="人口の large part では、先延ばしは mental disorder（例えば ADHD など）の symptom であり、しばしば particularly severe なものだ。<br>それを「benefit」として dismiss するのは constructive じゃないよ。<br>あなたが word procrastination を too general に使って、all possible cases を含めてるんじゃないかと疑ってる。<br>人が5分か1時間 lazy なら、それは procrastination じゃないんだ。<br>Procrastination は、person が do したい something を do できない severe case なんだ。そして、「duh, work may be unpleasant」って誰かが interjects する前に言っておくけど、それは ALL other spheres of life にも extend するんだ。<br>ゲームを play したいのに、literal に Start を click できないと imagine してみて。<br>あるいは saved watch list を scrolling していて、watch したいものを anything picking できないとか。<br>そんな stuff なんだ。<br>Procrastination と related issues は severe mental disorder であり、私は人々がそれを normalizing したり something good or beneficial として dismissing するのにうんざりしてるんだ。<br>PS: all that above を rephrase すると—「Why?」という question への answer は exclusively something external（「not interesting」のような）だけでなく、often an internal one、person の brain の chemical disbalance、some brain structures under- or over-developed etc なんだ。" userName="Yizahi" createdAt="2025/06/09 11:46:36" color="#ff5c5c">}}




{{<matomeQuote body="うん、多分 different types の procrastination があるんだろうけど、私の type に良いことは何もないね。<br>もし私が 20s と 30s を procrastination しなかったら、 retired して 50s を fishing して過ごせてたかもしれないのに、生計を立てるために work してる。<br>今は boss たちを happy に保つ程度には handle できてるけど、still a struggle な時もあるし、もっとやりたいこと（plenty more things I want to do）もたくさんあるけど、may never get around to なんだ。<br>それは a bad thing だ。" userName="aaronbaugher" createdAt="2025/06/10 21:13:12" color="#38d3d3">}}




{{<matomeQuote body="それは nice and all だが、your procrastination が anything at all を for months もするのを prevents する時は、それが good thing とは really feel しないんだ。" userName="Kiro" createdAt="2025/06/07 17:10:12" color="">}}




{{<matomeQuote body="先延ばしって、なんか精神的な痛みに反応してるのかもね。やるべきことが嫌で、無意識に違うことをしちゃう感じ。でも、痛みは大事なサインだから、痛みを薬でごまかすより、その痛みの根本原因を探って解決する方がずっと価値があると思うよ。" userName="HappMacDonald" createdAt="2025/06/08 03:15:20" color="#ff33a1">}}




{{<matomeQuote body="私も同じことだと思うな。例えば何ヶ月も先延ばししてるなら、もしかして今の仕事がめちゃくちゃ嫌いなんじゃない？それなら転職も考えてみたらいいかもね。" userName="andoando" createdAt="2025/06/08 19:51:00" color="">}}




{{<matomeQuote body="いつも先延ばししちゃうんだよね。心の声に耳を傾けすぎたり、楽しいことだけ追ってても前に進めない。多分それってただの気晴らしで、心が怠けてるからだよ。私たちの体って、エネルギーを節約したがるんだよね。寒い朝にジムに行くなんて、体も心も嫌がるし。だから行かないっていう考えを聞いちゃうとダメ。筋肉だって最初は怠けたいけど、ちょっとでも動かすと liking it and ask for more。私たちは変だし、無理にでも自分にやらせる必要があるんだ。それが君の仕事だよ、自分の体を commanding するんだ。" userName="mromanuk" createdAt="2025/06/07 15:37:00" color="">}}




{{<matomeQuote body="タスクが難しくなって先延ばしし始めるときは、そのやり方を見直すべきサインだっていつも思うんだ。「行動がモチベーションを生む」より「何もやらないより何かやる」の方が役に立つかも。モチベーションはたっぷりあるけど、集中しようとしても脳が言うこと聞かない時があるんだよね。そんな時は、easy to engage with な全く関係ないタスクをやるんだ。これで脳が集中するチャンスを得て、それが more focus を生む。十分な集中力ができたら、本来のタスクに purpose を持って取り組めるんだ。" userName="growingkittens" createdAt="2025/06/07 23:05:04" color="#45d325">}}




{{<matomeQuote body="この記事とか似たようなアドバイスって、先延ばしで苦しんでる人向けだよね。あなたは多分そういうタイプじゃない。だって、先延ばし自体は inherently bad なことじゃないから。みんながみんな、薬物とか食べ物とか、そういうものに struggle するわけじゃないのと同じだよ。" userName="thenoblesunfish" createdAt="2025/06/07 21:42:45" color="">}}




{{<matomeQuote body="オリジナルポスターの人は、先延ばしの underlying cause が何らかの barrierだって認識してるから、きっと先延ばしに intimately familiar なんだろうね。人によって barrier の組み合わせが違うから、他の人の experience を認識するのは difficult かもね。" userName="growingkittens" createdAt="2025/06/08 00:12:09" color="">}}




{{<matomeQuote body="＞あなたの脳は今のタスクに interested じゃないと言っています。問題は: Why?多くの人にとって、理由は「だってくだらない busywork で、私は care about してないから」って感じじゃないかな。先延ばししたって何も help しないし、絶対に bad だよ。だって uncompleted task が残って financial distress につながるからね。ドーパミンが出るかどうかに関わらず、終わらせないとダメなんだ。考えるのをやめて、さっさと片付けて、やりたいことに focus するのが一番だね。私は overwork してるわけじゃなくて、ただこのタスクをやりたくないだけなんだ。他に explore したいことはあるけど、今それは choice じゃない。やりたいことだけする privilege はないんだ。Pain of failure？いや、別に失敗するようなことじゃないよ。単なる drudgery avoidance だね。残念ながら、完了しないといけない drudgery はたくさんあるんだ。" userName="tejohnso" createdAt="2025/06/07 16:45:33" color="">}}




{{<matomeQuote body="脳を shut off して task を slogging through すると、仕事の quality が AI slop 並みになるって気づいたんだ。だから、output の質をあなたが言うほど気にしないなら、ClaudeとかGeminiとかCleverbotに問題を dump して、結果を verbatim で copy/paste/act upon して「done」にチェックつけて次に進むのが actually better かもしれないね。個人的には、そういう努力の pain って、input が largely guesswork や speculation で、poor documentation の morass を hunt したり、irritating problem の workaround を seek したり、future で various decision の risk がどう prove するか rolling the dice したりすることから来るんだ。「えー、これを duct tape で fixed すれば hold するだろう」みたいな。そして最も notably なのは、こういう作業を more するほど、将来同じ結果を maintain するのに similar work の volume が exponential に rise する correlat するってこと。こういう時こそ、一旦 step back して、問題の busywork を support する entire framework を questioning するのが一番 serve されるんだ。もしかしたら、starting from scratch とか huge change をすることで、effort の garbage portion を reduce して、それらが further proliferating するのを keep from できるかも？" userName="HappMacDonald" createdAt="2025/06/08 03:24:40" color="#ff5c5c">}}




{{<matomeQuote body="この approach に disagree するわけじゃないけど、これは some digital task にしか効かないんだよね。AI は私の家を clean したり、私の body を exercise させたり、obligatory social interaction に engage させたりはしない。こういう場合は、脳を shut off して just getting it done のが often the best way to get it going だよ。それに、all or nothing じゃない。進行中にタスクにもっと engage することを decide して、それが higher quality output に contribute することもあり得る。難しいのは usually starting なんだ。" userName="kcoddington" createdAt="2025/06/08 14:26:31" color="">}}




{{<matomeQuote body="うん、for awhile トレッドミルで walking/jogging しながら headphones で YouTube 見て、drudgery 中も脳を entertained しようとしたんだ。でも yeah, jostled される noise の中に constant に drown するんだ。私の場合、脳を完全に shut down する（if I’m even capable of doing so）ってのは、ただ sleep が activate される function なんだよね。これを exercising 中に tried ことはないけど、mere に standing up の時に tried して lesson learned したよ。result は very much falling down だね。" userName="HappMacDonald" createdAt="2025/06/09 02:03:52" color="">}}




{{<matomeQuote body="その通り！生産性至上主義者たちは、俺らが理性の命令に逆らうのを自分を嫌わせたいんだ。そんなのクソくらえだ。" userName="satisfice" createdAt="2025/06/07 16:14:59" color="">}}




{{<matomeQuote body="なんでかって？答えは簡単だよ。仕事が意味のない会社のくだらないことだから。それが実際にプロダクトになるかすら分からない。でも給料はめっちゃいいし、金が必要なんだ。良いものって高いんだな。" userName="ponector" createdAt="2025/06/07 20:06:55" color="#ff33a1">}}




{{<matomeQuote body="君のコメント見るまで、似たようなこと書こうと思ってたよ。完全に同意。自分がやってる仕事が、実はやる価値ないって分かってる時、やる気を出すのって難しいよね。" userName="hirvi74" createdAt="2025/06/08 00:36:08" color="">}}




{{<matomeQuote body="こういうケース、いっぱいあるよね。理由は明らか。みんなタスクXをやるのが嫌いなんだ、楽しくないし自分にとって価値もないから。でも、義務だからやらなきゃいけない。" userName="Existenceblinks" createdAt="2025/06/08 16:01:54" color="">}}




{{<matomeQuote body="俺アプリ開発してるんだけど、重要な作業の80%終わった後、残りの20%はアプリ内課金追加とか、開発者へのフィードバック機能、レビュー依頼、アプリアイコン、App Storeのスクリーンショットデザイン、App Storeの説明文のメタデータ書きとか、つまんなくて頭使わないことなんだ。このつまらない20%のタスク、たぶん2日で全部できるのに、超先延ばししちゃうんだ。" userName="busymom0" createdAt="2025/06/07 23:01:24" color="#785bff">}}




{{<matomeQuote body="俺にとって先延ばしは、脳が将来のタスクの不快さを過大評価（あるいは単に評価）してることなんだ。不快さは、タスクをやるのが全然楽しくない、スキルやリソース不足でイライラしそう、タスクをうまく完了できないかもっていう不安、結果が期待通りにならないかも、とかから来る。例えば、家から出る時。服着て、車乗って運転するって考えるだけで嫌なんだけど、一度運転し始めると「あれ、全然悪くないじゃん」っていつも思う。服着る部分だけ単体で考えれば、それもそんな悪くない。どうも、複雑に見える一連のタスクを予期しちゃうのが、脳を遠ざけるみたいだね。" userName="hliyan" createdAt="2025/06/07 12:17:22" color="#ff5c5c">}}




{{<matomeQuote body="これ見てみて。<br>https://www.youtube.com/watch?v=N65NPYRN8z8" userName="rofrol" createdAt="2025/06/13 21:05:21" color="">}}




{{<matomeQuote body="「MetaやPinterestみたいな超成長テック企業で10年働いてきて、ずっと先延ばしに悩まされてたんだ…本当に大事なことには進歩がなかった。」たぶん、毎日の仕事が（チームや会社の指標のためじゃなく）本当に大事だって心から納得できないと、潜在意識的な無意味さの症状として先延ばししちゃうんだろうね。" userName="imjonse" createdAt="2025/06/07 08:04:30" color="#ff5733">}}




{{<matomeQuote body="世界中の情報を可能な限りログイン壁の後ろに閉じ込めようと必死になってたら、俺も先延ばしに苦労するだろうな。たぶん答えは、心に新しいトリックを使うことじゃなくて、強いリーダーの権力を増やすとか、職場の男らしさ向上とか、その日の政治問題とか、そういうことに関わらない何かを見つけることなんじゃないかな。" userName="xorcist" createdAt="2025/06/07 10:41:43" color="#ff5c5c">}}




{{<matomeQuote body="人々の人生やパブリックイメージを支配するのが彼らの興奮源なんだ。そんな仕事でどうやって目的意識を持てるか俺には分からないよ。だから革新が先延ばしで妨げられるってのは本当だ――もし彼らに「次のビッグウェーブ」を与えたら、tcp/ipが最初は皆に与えられたみたいじゃなくて、独占されて武器化されるだろうからね。キーワードは分散化だ。デジタルポリスの層に守られた閉じ込められたデータセンターのために、それがぶち壊されそうだけど。" userName="etcimon" createdAt="2025/06/08 14:10:54" color="">}}




{{<matomeQuote body="仕事自体が意味ないって深層で感じてる時、ホントのモチベーション出すの難しいよね。どんな生産性システム組んでも、仕事が空虚じゃさ…" userName="veunes" createdAt="2025/06/07 09:59:12" color="#45d325">}}




{{<matomeQuote body="俺は逆のパターンだな。重要なことほど手をつけるのが怖いんだ。重要だからこそ先延ばしちゃう。" userName="ndr42" createdAt="2025/06/07 10:53:28" color="#38d3d3">}}




{{<matomeQuote body="それは失敗を恐れてるからだと思うよ。重要なタスクであるほど、失敗した時の結果がデカいからさ。" userName="layer8" createdAt="2025/06/07 11:36:36" color="#ff33a1">}}




{{<matomeQuote body="俺は真逆。失敗が現実味を帯びるまで何もできねぇ。そうしたら、失敗しないためのモチベーションが鬼のように湧いてくる。" userName="pfannkuchen" createdAt="2025/06/08 05:23:09" color="#ff5733">}}




{{<matomeQuote body="問題は人生後半になって始まるんだ。タスクを急いで終わらせるのに必要な時間やリソース、それに失敗の影響を間違え出す。大学時代の失敗は笑い話だが、後年の失敗は刑務所、強制送還、離婚、立ち退き…につながることも。先延ばしに慣れて悪化させるのはマジでヤバいよ。" userName="Yizahi" createdAt="2025/06/09 11:55:38" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="MetaやPinterestで、そんな先延ばし癖抱えてどうやって仕事得て維持できたんだ？俺は先延ばしひどすぎて応募すらできず、やっと手に入れた仕事も同じ理由で速攻失くしたよ。" userName="annie_muss" createdAt="2025/06/07 11:31:13" color="">}}




{{<matomeQuote body="これすげー考えてたんだけど、プログラマーは多くの現場で、どれだけやったかみたいなハードな指標で判断されにくいんだよね。何かやったかどうか、それも質の高い貢献だったかで見られる。議論への貢献や後輩指導も、先延ばし屋は仕事と思わないかもだけど高く評価される。それに先延ばし中でも脳は問題考えてるし、時間は完全に無駄じゃない。結局、ヤバい病理じゃなければ、先延ばし屋も言われるほど悪くないと思うな。" userName="kuboble" createdAt="2025/06/07 16:57:40" color="#ff5c5c">}}




{{<matomeQuote body="ほとんどみんな、多かれ少なかれ先延ばし問題抱えてると思うよ。特に複雑なことに集中必要な仕事だとね。でも無限に先延ばしするわけじゃなく、仕事は溜まるけど、ホントにやらなきゃいけない時に一気にやるだけ。これ、短期的なアウトプットは変わらないけど、ただ疲れるんだよね。<br>それに、どんなに fancy な職場でも、仕事の生産性要求って君が思うよりずっと低いのが普通。そこにいただけて、積極的に問題起こさなきゃ、それで十分ってことも多いんだ。表で見せるのは、調子良い時か、相当な例外か、単なる建前だよ。" userName="jampekka" createdAt="2025/06/07 15:06:16" color="#ff5733">}}




{{<matomeQuote body="このサイトで同じようなコメントしたことあるよ。この業界入る時、職人技に情熱燃やす人たちと働くと思ってたのに、現実は同僚は誰も仕事にちっとも興味なくて、ただの飯の種って感じだった。同僚を責める気はないけどね。情熱ってコントロールできないし。例えるなら、美しくて芸術的な写真撮る写真家になりたかったのに、現実では学校写真撮って生活してる感じかな。情熱的なプログラマーの仕事もあるだろうけど、どこで見つけるかも分からないし、自分のスキルじゃチームの足引っ張るだけ。もう10年以上やってるのに。だからこの先延ばしループにハマってるんだ — 状況変えるスキルがないのに、追いつけない気がしてて。あなたの先延ばしの理由は知らないけど、兄弟/姉妹よ、全く責めないよ。" userName="hirvi74" createdAt="2025/06/08 00:46:08" color="#ff5c5c">}}




{{<matomeQuote body="これ、どうやって乗り越えて、まともな生活維持してるの？正直、知りたいわ。" userName="southernplaces7" createdAt="2025/06/10 19:08:25" color="">}}




{{<matomeQuote body="上司に「金曜までにこれ終わらせて」って言われて、その週はめっちゃやる気出てテキパキ仕事してたんだけど、金曜になったら何も連絡なし。進捗とか聞かれないし、必要な仕事なのに放置って感じで、一気にやる気なくなったわ。" userName="polishdude20" createdAt="2025/06/07 16:04:12" color="">}}




{{<matomeQuote body="最初のコメントの人へ。金曜に上司から連絡なくてやる気なくなったって言うけど、それは上司に言われたから頑張れたってことの裏返しだよ。仕事自体に興味とか内発的な動機がないんじゃないかな。そこを掘り下げてみたら？自分から終わったって報告したり、上司がフォローしない理由を知るのも良いかもね。" userName="caminante" createdAt="2025/06/07 17:00:46" color="#45d325">}}




{{<matomeQuote body="こういうのって、他のやることに支障が出なくて、結果的に仕事が早く終わるだけなら別にいいかなって思う。優先順位って変わるもんだしね。おかげで先延ばしが減った！っていうのが唯一の結果なら、むしろ文句ないよ。" userName="em-bee" createdAt="2025/06/07 16:14:26" color="">}}




{{<matomeQuote body="おいおい、プロなんだからさ。金曜までに終わったら自分で報告するもんでしょ。それくらいやろうぜ。" userName="aryehof" createdAt="2025/06/08 11:30:19" color="">}}




{{<matomeQuote body="たまに先延ばしするのは普通だけど、しょっちゅうならホントの原因を調べた方が良いよ。ADHDかも。ADHDかどうかって、めちゃくちゃ重要。定型発達の人向けのアドバイスは、君には逆効果で「自分はダメだ…」って思わせちゃうから。自分の脳の仕組みを知って、やっと変われるんだ。" userName="cardanome" createdAt="2025/06/07 12:25:40" color="#38d3d3">}}




{{<matomeQuote body="私は逆かな。ADHDだけど、仕事の先延ばしが劇的に良くなったのは、本当に興味のある仕事に就いたこと。国内トップのソフトウェア会社をいくつか経験したけど、結局大学の研究者になったのが一番効いた。給料は減ったけど幸せ。毎日、自分が重要で面白いって思える仕事をするのが助けになるんだ。今の若い研究者は恵まれてるのに気付いてないのかもね。" userName="tsurba" createdAt="2025/06/08 08:30:26" color="#ff5733">}}




{{<matomeQuote body="ずっと先延ばしに悩んでる人には、「まず行動すればやる気が出る」とか「やる気より規律だ」みたいなアドバイスは効かないんだよね。「単純だよ、ただ細かく分けて最初の一歩を踏み出すだけ」とかも。<br>その最初の一歩すら先延ばしちゃうし、やってもすぐ飽きたり集中切れたりして終わらない。多くの自己啓発本は、みんな聞き飽きた効かないアドバイスを繰り返してる。理屈は分かるけど、心にブロックがあって動けないんだ。<br>※アドバイス自体が悪いんじゃなくて、自分に効いたからってみんなに効くわけじゃないってこと。" userName="jasode" createdAt="2025/06/07 13:06:05" color="#45d325">}}




{{<matomeQuote body="もし「一生続く先延ばし」で、簡単なことにも常に overwhelmed されてるなら、うつ病を疑うべきだと思う。もっと大きな問題に聞こえるな。" userName="parpfish" createdAt="2025/06/07 13:34:43" color="">}}




{{<matomeQuote body="うつ病がADHDより「大きい」ってどういうこと？それ超失礼だよ。<br>簡単なことで overwhelmed されるのは、むしろ典型的なADHDの特徴だし。治療してないADHDの人はうつ病にもなりやすいんだ。どっちかだけじゃないし、症状も overlap してる。<br>ADHDの診断は、うつ病とか他の病気じゃないかちゃんとチェックしてくれるんだ。うつ病の診断って、なんかポンポン出されるイメージない？なんで最初に「なぜ」うつ病なのか掘り下げないんだろ。うつ病の人をどうこう言うつもりはないけど、神経多様性の人が「うつ病」って簡単に診断されちゃうのは、医療側がちゃんと調べないからだってイラつくんだよね。ADHDの診断って本当に大変なんだから。" userName="cardanome" createdAt="2025/06/07 15:46:44" color="#ff5733">}}




{{<matomeQuote body="俺はうつ病がADHDより重いなんて言ってないよ。うつ病は”ちょっとした生産性ハックでどうにかなる”レベルじゃないって話さ。" userName="parpfish" createdAt="2025/06/07 15:49:16" color="">}}




{{<matomeQuote body="俺もモチベーションとか先延ばしに悩んでた頃、何年も”うつ病”って診断されてたんだ。でもね、結局薬なしのADHDと先延ばし、うつ病は全部一緒にあるもんなんだってわかったよ。" userName="bluefirebrand" createdAt="2025/06/07 16:38:09" color="">}}




{{<matomeQuote body="記事の助言も重度のADHDには役に立つこともあるけど、簡単じゃない。すごく工夫して、強制的に従うシステム（QRコード、ボディダブル、セラピーとか）を作る必要があるんだ。俺はソフトウェア開発のスキルをADHD克服に応用しようとしてて、そのブログ記事を書いてる途中。いつ終わるかわからないけど、完成したら面白いかもね。" userName="mtlmtlmtlmtl" createdAt="2025/06/07 17:44:57" color="#ff33a1">}}




{{<matomeQuote body="この記事の方法が効かなくて、ADHDが基本タスクもダメなら、一体何が効くんだ？正直知りたいんだけどさ。そんなに辛い人が、人生諦めるべきだなんて思えないから。" userName="southernplaces7" createdAt="2025/06/10 19:11:19" color="">}}




{{<matomeQuote body="じゃあ結局何が効くんだ？答えは人それぞれ違うんじゃない？俺はある方法は効くけど、ある方法はダメって感じだし。ADHDかどうかって関係ない気もする。リストとか細かく分けるのは効くって言う人もいるし、助言を否定するのは変だよ。退屈とかも”普通”の人にもあることだし。結局は色んな方法を挙げて、自分で合うのを探すしかないんじゃないかな。で、ADHDの人には何が効くの？" userName="em-bee" createdAt="2025/06/07 13:19:18" color="">}}




{{<matomeQuote body="ADHDの人に何が効くかって？薬だよ。7割に効くし、あと自分の脳の仕組みを理解すること。定型発達の人は実行機能障害がないから、やりたいと思えばできる。ADHDはドーパミン不足で退屈なことがマジで辛いんだ。薬はそれを補うため。刺激の管理が大事。簡単なことが苦手で、難しいことが得意だったりする。結局人それぞれだけど、自分を理解するのが一番だよ。" userName="cardanome" createdAt="2025/06/07 15:25:58" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
