+++
date = '2025-11-19T00:00:00'
months = '2025/11'
draft = false
title = 'Linuxでのゲームがついにここまで簡単に！'
tags = ["Linux", "ゲーム", "Proton", "Steam", "互換性"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Linuxでのゲームがついにここまで簡単に！

引用元：[https://news.ycombinator.com/item?id=45985506](https://news.ycombinator.com/item?id=45985506)




{{<matomeQuote body="先日Framework Desktopが届いたから、Fedora 43を入れてSteamからCyberpunk 2077をインストールしたら、何も設定せずに動いちゃった！Valveのおかげで超スムーズだったよ。ただDeus Ex: Mankind DividedはLinuxビルドが問題で動かず、ログをAIに見せたら判明。Windowsビルドで解決したよ。" userName="vinkelhake" createdAt="2025/11/19 23:47:02" color="#ff33a1">}}




{{<matomeQuote body="Deus Ex: MDの件、Linuxで一番安定してるAPIはWin32って皮肉だよね。Wineのおかげだけど、Microsoftが敵対的なことをしたりAPIを開発したりしたら、Valve/Protonは追いつくために開発に時間を使わなきゃいけなくなるし、長期的に維持できるのか心配だ。" userName="ascagnel_" createdAt="2025/11/20 00:22:07" color="#ff5c5c">}}




{{<matomeQuote body="僕もネイティブLinuxビルドはProtonとかが良くなる前に作られてメンテされてないのが多くて、Windows版をProton経由で動かす方がうまくいくって経験があるよ。LinuxのネイティブサポートはGPUとかどんどん変わるから大変だよね。Protonにはみんなの努力が集中するから、こっちの方が確実に動くんだ。" userName="p1necone" createdAt="2025/11/20 02:01:30" color="#785bff">}}




{{<matomeQuote body="MicrosoftがProtonに何かできるとしたら、それは新しいAPIの時だけだよ。それに、みんながその新しいAPIを使わなければ、Wineが対応する必要もないんだからね。" userName="danielheath" createdAt="2025/11/20 02:17:28" color="">}}




{{<matomeQuote body="ゲーム開発者がWin32の中でもLinuxとWindowsでうまく動く部分だけを使ってプログラミングする世界が見てみたいな。そうすればMicrosoftがいくら邪魔しようとしても、10%（僕の空想だけど）のLinuxゲーマーを失いたくない開発者は新しいAPIを使わないだろうね。" userName="pkulak" createdAt="2025/11/20 03:12:22" color="">}}




{{<matomeQuote body="聞いてくれ！コンテナとかVMを使うんだ！GPU仮想化とかメモリ共有とか、必要な技術は全部揃ってるし、それでうまくいきそうじゃない？ちょっと無駄が多いかもしれないけど、予測可能なバイナリ環境をずっと使えるし、ハードウェアとOSの間の“インターフェース”も明確になる。アンチチート問題も、最小限のVMホストで解決できるかも。" userName="LaGrange" createdAt="2025/11/20 07:13:33" color="#ff5c5c">}}




{{<matomeQuote body="それに、もしMicrosoftが邪魔するようなことが起こるなら、みんな新しい厄介なことを学ぶ必要が出てくる。Linuxが普及してるんだから、いっそLinuxを最優先のプラットフォームとして扱えばいいじゃん。" userName="Grimblewald" createdAt="2025/11/20 04:24:56" color="">}}




{{<matomeQuote body="VulkanがLinuxネイティブビルドでかなり貢献してくれるといいなって思うんだけど、僕はまだその分野に入り始めたばかりなんだ。" userName="ehnto" createdAt="2025/11/20 03:56:58" color="">}}




{{<matomeQuote body="「Linuxを最優先のプラットフォームに」って言うけど、Linuxには“Linux API”なんてものは存在しないんだよ。だからWin32がLinuxで一番安定してるAPIって言われるんだ。Ubuntu 16.04 LTS用に作られたアプリを24.04 LTSで動かそうとしてみてよ。大変だから。Linuxは好きだけど、現実はかなり複雑なんだよね。" userName="roflcopter69" createdAt="2025/11/20 12:33:30" color="#38d3d3">}}




{{<matomeQuote body="Microsoftは、ValveやProtonを困らせるために、APIをいじる必要もなくWindowsネイティブのアンチチートやアンチパイラシー機能を出す可能性があるよね。そうなると開発チームはそれに対応するための作業に時間を取られちゃうかも。" userName="michaelt" createdAt="2025/11/20 07:20:21" color="">}}




{{<matomeQuote body="Windowsネイティブのアンチチート機能をリリースするって？それが現在のシステムより大幅に改善されるような競争ゲームでもない限り、ゲーム開発者がそんなのを実装する理由がわからないな。Microsoftを喜ばせるためだけに、Windows以外のプレイヤーを減らすことになるだけだしね。しかも、それを回避しようとしたら0リングレベルで対応する必要があるとか、セキュリティリスク高すぎでしょ？" userName="bilekas" createdAt="2025/11/20 08:02:23" color="">}}




{{<matomeQuote body="Linuxネイティブビルドの多くはVulkanを使ってると思うけど、DX12とVulkanの機能差はかなり小さいし、vkd3dレイヤーはめちゃくちゃ安定してるって信じてるよ。正直、Linux向けにゲームを作るのはWindowsよりずっと難しいんだ。何が使えるか、安定したバージョンがあるかなんて当てにならないからね。今のLinuxの文化だと、翻訳レイヤーを使うか、Linux自体とその文化を改善するしかないと思うな。" userName="59nadir" createdAt="2025/11/20 11:13:16" color="#ff5c5c">}}




{{<matomeQuote body="UnityとUnrealエンジンの支配がもう始まってるよね。Steamの新作タイトルのおよそ80%、売上の60%を占めてるらしいし（PDF: https://app.sensortower.com/vgi/assets/reports/The_Big_Game_...）。だからWINEやValveはこれらに集中すればいいだけ。互換性がないタイトルは、たいてい独自エンジンを使ってるみたいだよ。" userName="cyberrock" createdAt="2025/11/20 06:07:31" color="#ff5733">}}




{{<matomeQuote body="/r/linux_gamingで開発者が投稿すると、コミュニティは「Protonが動けばOK」って言うのが大半で、これはかなり示唆的だね。昔ながらの人間としては、ネイティブ互換性、いやネイティブを気にする気持ちが薄れてるのを見るとちょっと寂しいけど、Linuxゲーマーとしても開発者としてもProtonの便利さは痛いほどわかるよ。Valveのゲーブさんが引退して方向転換したらどうなるか、ちょっと心配だな。" userName="GCUMstlyHarmls" createdAt="2025/11/20 03:04:31" color="#ff33a1">}}




{{<matomeQuote body="Windows 10をデスクトップから消して、cachyosとSteamをインストールしてみたんだ。そしたらPath of Exile 2が意外にも動いてびっくり！みんなが「win32がLinuxで唯一安定したAPI」ってジョークを言うのもわかる気がするね。Red Dead Redemption 2もLinuxでうまく動くらしいから、次はこのゲームをチェックしてみようかな。" userName="dragonelite" createdAt="2025/11/20 10:08:55" color="">}}




{{<matomeQuote body="消費者向けのGPU共有って、今のところ完全にパススルーするしかなくて、共有はできないんだよね。ホストから切り離さないといけないし。" userName="whatevaa" createdAt="2025/11/20 16:12:17" color="">}}




{{<matomeQuote body="僕の経験だと、SteamクライアントやほとんどのゲームはDebianやUbuntuでめちゃくちゃ動くよ。でも、GNU／Linuxシステムで公式にサポートされてるのはUbuntuだけなんだ。Steamのサイトでは情報が見つからないけど、前にDebianのGNOMEでSteamクライアントのUIバグを報告した時に、Steamサポートからそう言われたんだよね。" userName="rpigab" createdAt="2025/11/20 12:57:14" color="">}}




{{<matomeQuote body="1. 互換性を目標にするのは、ネイティブを目標にするのと99%同じくらい良いと思うな。<br>2. ソフトウェア環境は変わりつつあるよ。Steam OSとLinuxはPCゲーミング市場でシェアを伸ばしてるし、macOSを見れば、少ない市場シェアでも広く（完全にじゃないけど）互換性を強制できるって証明されてる。<br>3. Linuxゲーミングに純粋主義的な考え方って、価値を感じないな。ゲームの目的はエンターテイメントでしょ？大事なソフトウェアが直接オープンソースライブラリを呼んでるかどうかってことより、ゲームがそうかどうかってのは、僕はあんまり気にしないよ。" userName="bitmasher9" createdAt="2025/11/20 03:44:21" color="#ff33a1">}}




{{<matomeQuote body="SteamDeckやSteamMachine（とクローン、自作PC）のおかげで、Linuxの市場シェアはすぐに増えると思うな。VRヘッドセットもニッチだけどLinuxだしね。Valveのこの分野へのサポートは素晴らしいよ。Half Life 3をリリースしなかったことを、ほとんど許しちゃいそうなくらいだ。" userName="ehnto" createdAt="2025/11/20 03:53:42" color="">}}




{{<matomeQuote body="Windowsのチート対策ソフトはring 0で動くけど、WineじゃエミュレートできないからLinuxで競技ゲームが動かないんだ。Linux版はユーザー空間で動くからチートされやすく、開発者はLinuxユーザーを公式マッチングに入れないことも多いね。つまりMicrosoftが公式ソリューションを出しても、競技ゲーム開発者には悪くない。WindowsバンドルのMicrosoft製チート対策ソフトなら、プライバシー重視のゲーマーにも「ルートキット」と思われずにPRも向上するかも。もしMicrosoftが参入したら、この市場は独占されそうだね。" userName="indigo945" createdAt="2025/11/20 10:34:07" color="#38d3d3">}}




{{<matomeQuote body="BazziteでRDR2のストーリーモードをクリアしたけど、問題なかったよ。マルチプレイヤーはやってないけどね。" userName="lbschenkel" createdAt="2025/11/21 11:13:41" color="">}}




{{<matomeQuote body="グラフィックスAPIがDX11/OpenGLからDX12/Vulkanに移行したのは良いけど、これらは使うのが難しいらしいね。ゲームってすごく幅広いから、もっと低技術レベルでも十分なエンジンを作れる人は多いはず。要求が控えめならニーズに合うよね。あと、開発者の確保も気になるな。高度なAPIや最新ハードウェアを扱えるなら大手のスタジオを目指すだろうし、もっと簡単な技術なら幅広い開発者にとって手が届きやすく、社内でも管理しやすいはずだよ。" userName="keyringlight" createdAt="2025/11/20 10:19:49" color="#785bff">}}




{{<matomeQuote body="Godotも同じだよ。デスクトップアプリを開発してるけど、クロスプラットフォーム対応が最初から手に入るんだ。再コンパイルもプラットフォーム固有のコードを書く必要もないし、Win32 APIもいらないよ。" userName="sph" createdAt="2025/11/20 09:13:31" color="">}}




{{<matomeQuote body="「Linuxで一番安定してるAPIはWin32」って冗談で言われるけど、APIの安定性を考えると90年代の最初のフリーOS戦争でFreeBSDが勝ってたらもっと良かったのかなって思うこともあるよ。でも、見落とされてる妥協点があると思うんだ。Linux開発者がFreeBSDアプリケーション用の互換性レイヤーとして、安定したAPIレイヤーを実装できるんじゃないかな。" userName="scythe" createdAt="2025/11/20 04:14:20" color="#785bff">}}




{{<matomeQuote body="Steam Linux Runtimeをチェックしてみて。コンテナでLinuxネイティブで動くゲームを開発できるよ。VMでチート対策ソフトを動かすのは全く意味がないね。チーターがホストからVMを操作できるのに、チート対策ソフトが検知できないから、むしろ彼らがそうしたがるだろうね。" userName="Rohansi" createdAt="2025/11/20 07:52:34" color="#38d3d3">}}




{{<matomeQuote body="一般消費者向けの「本当の」GPU仮想化ってないんだよね。AMDもNVIDIAもサーバー向けGPUのためにそれを囲い込んでるから。IntelがECC RAMを何十年も囲い込んでるのと同じ話だよ。コンテナでゲームを動かすとしても、VulkanやOpenGLを動かすにはDRMキャラ/ブロックデバイスを公開する必要があるよ。<br>https://en.wikipedia.org/wiki/GPU_virtualization#mediated" userName="revanx_" createdAt="2025/11/20 08:58:37" color="#ff5733">}}




{{<matomeQuote body="古い2DのWindowsゲームをQEMU（昔はVirtualBox）で動かそうとしてるよ。動くのは少ないけど、動いたやつは常に動作し続けるはずだよ（自分の寿命の間はね）。WINEとProtonはいつも手助けが必要で、ホストOSやハードウェアへの依存が漏れるみたい。何十年も使ってるから素晴らしいけど、フルVM（またはDOSBox）みたいに「一度動けばずっと動く」って安心できないんだよね。" userName="1313ed01" createdAt="2025/11/20 10:58:42" color="#45d325">}}




{{<matomeQuote body="「Windows以外のゲームプレイヤーを困らせるためだけ？」って話だけど、こういうのって意図的な反競争的な側面があっても、常に一般的なセキュリティ向上策として売られるんだよね。MSが最近のPCゲーム市場にどれだけ価値を見出してるかは分からないけど、もし全部ロックダウンすることに価値を見出して、それが実現可能だと思ったら、少なくとも試すだろうね。理論的には、OS内蔵のチート対策フレームワークは、個々のゲームが押し付けてくる countless crap より効果的で、煩わしくない可能性があるよ。実際どうなるかは誰にも分からないけどね。" userName="close04" createdAt="2025/11/20 10:49:01" color="#ff5c5c">}}




{{<matomeQuote body="MSのGPU仮想化技術(gpu-pv)はHyper-Vで昔からあるよ。Windows SandboxやWSL2で自動で使われるけど、Powershellを使えば普通のVMでも使えるんだ。" userName="froggit" createdAt="2025/11/21 13:51:04" color="#785bff">}}




{{<matomeQuote body="Intelの12世代以降のiGPUはSR-IOVに対応してるよ。" userName="throwaway48476" createdAt="2025/11/20 16:43:46" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="インストールでトラブったらフォーラムとかDiscordをさまようって話は、MicrosoftやAdobeのひどいサポートと比べたらまだマシかもね。あそこのフォーラムは関連薄いリンクだらけで役立たず。Linuxフォーラムは自力で解決する人向けなのかな。" userName="seemaze" createdAt="2025/11/19 22:01:10" color="#38d3d3">}}




{{<matomeQuote body="MicrosoftとかAdobeみたいな大企業のコミュニティサポートってマジで使い物にならないよね。「ヘルプ読んだ？」「うちの担当じゃない」でスレッド閉鎖がいつもの流れ。" userName="ronsor" createdAt="2025/11/19 22:05:04" color="#ff5c5c">}}




{{<matomeQuote body="「sfc /scannow」で終了とか、MSもAdobeもフォーラムが冗談みたい。LLMの方がずっとマシなサポートしてくれるよ。" userName="thewebguyd" createdAt="2025/11/19 22:07:14" color="#ff33a1">}}




{{<matomeQuote body="Qualcommのサポートよりはマシだよ。「この機能は営業に聞いて。[スレッド閉鎖]」って言われるよりはね。" userName="ACCount37" createdAt="2025/11/19 22:20:10" color="">}}




{{<matomeQuote body="LLMにはMicrosoftの複雑なドキュメントを整理してほしかったんだけど、製品名やバージョンがコロコロ変わるせいで、LLMも私と同じくらい混乱してるみたい。残念。" userName="seemaze" createdAt="2025/11/19 23:33:39" color="#785bff">}}




{{<matomeQuote body="Oracleのフォーラムは正直で、「このバグは安いバージョンじゃ直せない、直したいなら上位パッケージX買って」ってハッキリ書いてるのが逆に清々しいね。" userName="marcosdumay" createdAt="2025/11/19 22:46:42" color="#ff5c5c">}}




{{<matomeQuote body="評判とは裏腹に、トラブルシューティングは商用OSよりもLinuxの方が断然簡単だよ。比べるまでもないね。" userName="soraminazuki" createdAt="2025/11/19 22:50:43" color="#ff33a1">}}




{{<matomeQuote body="これって全然問題ないよ。エンタープライズOSS企業はみんなこうだし。お金払ってる人が要求できて、それ以外の人は無料ソフトで満足するかPR出すだけ。悪くない取引だよね。Oracleみたいに使うだけで高い会社でも、高い顧客向けに要望を優先するのは不合理じゃないと思うな。" userName="jm4" createdAt="2025/11/20 00:15:34" color="#ff5c5c">}}




{{<matomeQuote body="sfc /scannowの次にはWindowsの再インストールを勧められるの、まさにそれな。" userName="gerdesj" createdAt="2025/11/19 22:12:05" color="#ff5733">}}




{{<matomeQuote body="ハハ、これマジ笑ったわ。まさにこんな状況に何度も陥ったことあるんだよね。MicrosoftとかAdobeに限った話じゃないし。" userName="robotnikman" createdAt="2025/11/19 23:06:33" color="#38d3d3">}}




{{<matomeQuote body="これはひどい不公平だね。`dism /cleanup-image /(scan|check|restore)-health`って「雨乞いの踊り」を完全に省いてるじゃん。" userName="KwanEsq" createdAt="2025/11/19 23:39:14" color="#ff33a1">}}




{{<matomeQuote body="多くのOpenSourceのフォーラムやソフトウェアってこんな感じだよね。システムを使うためのヘルプじゃなくて、どうでもいい深い知識を習得させようとするんだ。<br>だから言ってきたけど、どこかのLinuxディストリビューションは、ハードウェアのラインを採用して、System 76よりいい感じの動作保証済みPCを出すべきだよ。" userName="2muchcoffeeman" createdAt="2025/11/19 22:43:11" color="#45d325">}}




{{<matomeQuote body="Microsoftの認証関連ライブラリ/APIを使おうとすると、3つのドキュメントがそれぞれ少し違うことを言ってて、結局必要な情報はStack Overflowの投稿に埋もれてるんだよね（しかもそれも公式ドキュメントとまたちょっと違う）。" userName="p1necone" createdAt="2025/11/20 02:07:46" color="#ff33a1">}}




{{<matomeQuote body="あるいは「再起動してみた？」だよね。" userName="Jigsy" createdAt="2025/11/19 22:25:56" color="">}}




{{<matomeQuote body="ソフトウェアの販売規約にある「特定の目的に対する適合性の保証なし」ってのはデタラメだよね。ある機能を持つソフトウェアを売っておいて、その機能を動かすために別のソフトウェアを買わせるのはおかしい。<br>でも、大手企業のほとんどよりはまだマシだけどね。" userName="marcosdumay" createdAt="2025/11/20 01:28:38" color="#ff33a1">}}




{{<matomeQuote body="あるいはヘルパーが「これは素晴らしい提案ですね、チームにサポート追加を検討するように伝えておきます（5年前）」って言うパターンね。" userName="xmprt" createdAt="2025/11/19 22:20:38" color="#ff5733">}}




{{<matomeQuote body="最悪なサポートのオンラインフォーラムは営利企業のだね。mongoshで印刷の挙動を変えようとした時、複数のユーザーがドキュメントに載ってる別の質問の誤った答えをよこしてきて、自分を解決者として質問を解決済みにするよう懇願してきたんだ。<br>彼らはまるで俺が甘やかすべき「幼い王様」みたいに書かれてた。<br>こんなフォーラムのゲーム化は、正しい回答よりも「返答すること」を奨励しちゃう。<br>逆にLinuxフォーラムの人たちは、最高に丁寧でほとんどがマジで詳しい。彼らはファームウェアのバグにたどり着くまで問題解決に付き合ってくれて、その過程でスキルも身につくんだ。" userName="Affric" createdAt="2025/11/19 23:37:11" color="#38d3d3">}}




{{<matomeQuote body="Lmao、それな。" userName="fHr" createdAt="2025/11/19 22:55:18" color="">}}




{{<matomeQuote body="記事の筆者はLinuxに何かあった時用にWindowsマシンを持ってるって言ってたけど、俺からしたらMSやAdobeに依存してる筆者の方が問題だと思うよ。Linuxはほとんど問題ないし、俺の環境では5年近く安定稼働してるからね。" userName="seemaze" createdAt="2025/11/19 23:30:09" color="#ff5733">}}




{{<matomeQuote body="ラテン語の複数形「fora」って表現がすごく響くなぁ。まるでデジタルなテラリウムの中で進化してる、独自の生物みたいだよね。" userName="seemaze" createdAt="2025/11/19 23:42:23" color="">}}




{{<matomeQuote body="「こんにちは、投稿ありがとう。Xで問題が発生してるんだね。心からお見舞い申し上げるよ。この問題を解決するためなら何でもするから安心してね。’sfc /scannow’試してみた？<br>セーフモードで再起動は？<br>バックアップしてからWindowsを再インストールしな。OneDriveでバックアップできるよ、サブスク買ってたらだけど」って感じだよね。" userName="jawilson2" createdAt="2025/11/21 17:53:30" color="#38d3d3">}}




{{<matomeQuote body="まさに「The Microsoft Way（tm）」って感じだね。" userName="esafak" createdAt="2025/11/19 22:38:48" color="">}}




{{<matomeQuote body="ほとんどのコミュニティヘルプフォーラム（商用もオープンソースも）は、俺が”HaveYouTrieditis”って呼んでる病気にかかってるんだ。「X試した？」「Y試した？」「Z試すべきだよ」って、原因分析もなく、なぜ効くかも説明せずに、みんなランダムなことを勧めてくる。俺はただランダムなことを試したくて助けを求めてるわけじゃないんだ。" userName="ryandrake" createdAt="2025/11/20 18:52:59" color="#45d325">}}




{{<matomeQuote body="Stack Overflowでは解決しなかったのに、ChatGPTがAzureでdotnetの環境変数配列を設定する方法を教えてくれたんだ。正しくは’foo__0’で、’foo:0’じゃないなんてね。これで一日もプロダクションが止まったよ。MicrosoftのAzureやdotnetのドキュメントに書いてないなんて信じられない。両方ともMicrosoftの製品なのに、これってすごくよくあるユースケースじゃないの？" userName="wincy" createdAt="2025/11/20 05:06:36" color="#ff33a1">}}




{{<matomeQuote body="Bing AIにMS Purview（M365のデータセキュリティ製品）について聞くと、どれもこれも間違った古い回答ばかり。リンク先のドキュメントも間違ってるか、存在しないんだからひどいよ。" userName="HugoTea" createdAt="2025/11/20 15:24:09" color="#ff5733">}}




{{<matomeQuote body="まあ、正直なところ、現状よりは改善されてると思うな。たいていの場合、AIの方が俺より混乱してるからね。" userName="bigstrat2003" createdAt="2025/11/20 04:10:52" color="">}}




{{<matomeQuote body="まさにその通り！" userName="ElijahLynn" createdAt="2025/11/20 00:42:31" color="">}}




{{<matomeQuote body="もし企業にその条項を削除してって頼んだら、法的なサポートの責任が大きくなって、価格の末尾にゼロが2、3個増えるだろうね。逆に、その条項を違法にしたら、全てのソフトウェアの価格にそのゼロが加わることになるだろうな。" userName="hiAndrewQuinn" createdAt="2025/11/20 09:40:49" color="#785bff">}}




{{<matomeQuote body="ごめんね。Windowsはv1か2から使ってて、昔学校にあったRM Nimbus（80186！）のCADワークステーションを思い出すよ。1984年頃のCommodore 64もまだ持ってるし、今じゃUSBも付いてるんだ。<br>telnetでインターネット（gopher、WAISなど）にアクセスしてたのも覚えてるし、1994年頃に上司からこのwwwってやつを調べてくれって言われたなぁ。メニューシステムをたくさん辿って見つけたよ。TBL卿が語る本当の違いについての議論はこちら: https://www.w3.org/History/1992/WWW/FAQ/WAISandGopher.html<br>僕のレポートは「他とほとんど同じに見える」って内容で、いかに僕が先見の明がなかったかを示してるね！正直、当時はtelnetセッションで何が起こってるのか分かりにくかったんだ。テレビのハイパーリンクシステム（CEEFAX）とか、世界中に似たようなシステムがあった時代だったね。今思うと、グラフィックがwwwの支配を確立したんだと思う。Mosaicブラウザを見つけて、MSの社長がウェブはどこにも行かないって言ってた頃にtelnetをやめて、「やべぇ、これこそ未来だ！」って思ったのを覚えてるよ。" userName="gerdesj" createdAt="2025/11/20 00:56:16" color="">}}




{{<matomeQuote body="そういう投稿をする人たちは、この変更や、半世紀も放置されてる自分たちのリクエストリストの他の変更が進まないことに、漠然とイライラしてるんじゃないかな。みんなが3回も開発サイクルを使って中途半端なAIのクソ機能を追加してる間にね。" userName="egypturnash" createdAt="2025/11/19 23:49:20" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Linuxなら、ターミナルからアプリ起動すれば、たいてい何してるか教えてくれるって知ってるだけでも違うよね。<br>Windowsだと、ログファイルを探すのに、うーむ… %appdata%のどこか？それともC:\Windows\Temp？debugview？それともクラッシュダンプが…どこだっけ…ってなるんだ。" userName="HugoTea" createdAt="2025/11/20 15:26:28" color="#785bff">}}




{{<matomeQuote body="今週、13年間続いた僕らのLinuxゲーミングポッドキャストが終了したんだ。特に騒ぎもなく、ひっそりとね。Steam Machine IIの発表（初代のローンチもカバーしたよ）があったし、ちょうどいい時期だったと思う。<br>Protonはほとんどのゲームがそのまま動くレベルに進化しちゃったから、ネイティブサポートを気にする人も少なくなったし、新しい話題を見つけるのが難しくなっちゃったんだ。本当に「リビングルームでのLinuxの年」に向けて全てが整った感じがして、素晴らしいことだね。" userName="Venn1" createdAt="2025/11/20 00:12:38" color="#ff5c5c">}}




{{<matomeQuote body="ポッドキャストは聞いたことないけど、言いたいことはよく分かるし、続けてくれてありがとう。20年前、大学時代は安物のAcerのノートPCにDebianを入れてて、Wineで動かせたゲームはFallout 1と2、それからCiv IVがクラッシュするまでの3時間くらいだったかな。ゲームを動かすこと自体が「一大イベント」だったから、そのためのポッドキャストはすごく意味があったと思う。<br>今はフルタイムの仕事をしてて、3年前に高いPCからWindowsパーティションを消しちゃったんだけど…それからプレイしたかったゲームはほとんど「ただ動く」んだ。最近のWindowsよりも快適なくらい。話すこと、あんまりないよね。Valveには「Proton spec」を公開して、みんながそれに合わせて開発できるようにしてほしいけど、IPの問題で難しいだろうね。" userName="J_McQuade" createdAt="2025/11/20 01:23:50" color="#ff33a1">}}




{{<matomeQuote body="アンチチートって誰も言及しないけど、大きな問題だよね。オンラインゲームのためにWindowsに戻らなきゃいけなかったし、LinuxでのアンチチートはWindowsと同じやり方ではできない、深い技術的な理由があるって理解してるんだ。" userName="johanvts" createdAt="2025/11/20 07:09:17" color="#ff5733">}}




{{<matomeQuote body="何を言ってるのか分からないけど、どのスレッドでもアンチチートがProtonじゃダメな理由だって強調する人がいるよね。最新の90ドルのAAAマルチプレイヤーFPSをプレイしなくても「真のゲーマー™」にはなれるんだ。僕はプロプライエタリなルートキットがないのが特徴だと思うし、スパイされても平気な人にはWindowsがあるでしょ。" userName="sph" createdAt="2025/11/20 09:18:51" color="">}}




{{<matomeQuote body="アンチチートが唯一の理由で、数ヶ月前にゲーム専用のWin11マシンを組まなきゃいけなかったんだ。10年以上Windowsに触れてなかったけど、やっぱり思い出した通りひどいね。全てがぎこちなくて、デザインもひどいし、全然洗練されてない。開発者がLinuxでアンチチートを動かす方法を見つけたら、もう二度とWindowsマシンを起動する理由なんてないんだけどね…。" userName="piva00" createdAt="2025/11/20 09:30:57" color="#ff5c5c">}}




{{<matomeQuote body="「開発者がLinuxでアンチチートを動かす方法を見つけたら、もう二度とWindowsマシンを起動する理由なんてないんだけどね…」ってことだけど、カーネルレベルのアンチチートは役に立つように聞こえるけど、実際には何の意味もないんだ。チート開発者はゲームコードと同じようにアンチチートコードも解析して改変しちゃうからね。チートしてない人のPCでカーネルモードで動いてるからって、チートしてる人のPCではアンチチートコードが改変されずに動いてるわけじゃないから何も得られないんだ。チート開発者はそのために分析する手間をかけなきゃいけないけど、ユーザーモードのアンチチートでも同じことだよ。カーネルモードであることは何も解決しないし改善しない、ただ危険を作るだけなんだ。なぜなら、アンチチートコードのバグやマルウェアがシステム全体を侵害する可能性があって、承認してないものにアクセスする権限を事実上与えてしまうからね。例えば、子供のアカウントで動くゲームは通常、親の納税記録にはアクセスできないけど、カーネルモードだとできちゃう。だから、そういうことはやめてほしいんだ。<br>一方、WindowsカーネルとLinuxカーネルは完全に別物だから、WindowsカーネルのアンチチートコードをLinuxカーネルで動かすことはできない。チートしようとしてなくてもね。Linux専用のものを作ってもらう必要があるけど、彼らには作ってほしくない、なぜならそもそもやるべきじゃないから。" userName="AnthonyMouse" createdAt="2025/11/20 10:43:02" color="#ff5733">}}




{{<matomeQuote body="これはTDX/SEV-SNPを使えば完全に可能だよ。ホストOSと一緒にVMで動かすんだ。ただ、かなり大規模なエンジニアリング作業にはなるけどね。彼らはもう間違いなくそれに取り組んでるはずだよ。" userName="CuriouslyC" createdAt="2025/11/20 13:30:02" color="#785bff">}}




{{<matomeQuote body="アンチチートってLinuxゲーミングでよく言われるけど、大した問題じゃないって。人気ゲーム5つくらいが対応してないだけで、Linuxのゲームエコシステム全体から見たら小さいことだよ。" userName="wiseowise" createdAt="2025/11/20 08:42:01" color="">}}




{{<matomeQuote body="アンチチートが人気ゲームをブロックしてるのが問題なんだよ。多くのゲーマーは遊びたいゲームを諦められないし、Linuxに移行できない原因になってる。詳細はこのサイトを見てね→ https://areweanticheatyet.com/" userName="snowram" createdAt="2025/11/20 08:57:54" color="#ff5733">}}




{{<matomeQuote body="そういうゲームって大体中毒性のあるF2Pのクソゲーばっかじゃん。システムから遠ざかるのはむしろ良いことだよ。" userName="wiseowise" createdAt="2025/11/20 11:04:04" color="">}}




{{<matomeQuote body="ほとんどのゲーマーがプレイするゲームを妥協できないって？でも98%のビデオゲームって、対戦型のマルチプレイヤーとか課金ゲーじゃないんだぜ？" userName="nottorp" createdAt="2025/11/20 11:03:59" color="">}}




{{<matomeQuote body="Linuxでアンチチートが難しいのは、セキュリティモデルがカーネルレベルのアクセスを拒むからだ。侵襲的でもチートが減るなら、ほとんどのユーザーは歓迎するはず。Linux開発者は思想的にそれを許さないから永久的な問題だね。<br>ValveがSecureBootとか安全なアンチチートをSteamOSに組み込めば、人気FPSもLinuxで遊べるようになる。Linuxファンは文句言うだろうけど、そっちの方が重要だと思うな。" userName="Gareth321" createdAt="2025/11/20 08:12:07" color="#ff5733">}}




{{<matomeQuote body="99%のユーザーが侵襲的なアンチチートを喜んで受け入れるって？ほとんどの人はアンチチートなんて知らないし、気にしないよ。ただゲームをしたいだけなんだからさ。" userName="hhmc" createdAt="2025/11/20 11:42:29" color="">}}




{{<matomeQuote body="みんなチーターがいない状態でゲームしたいんだよ。だからゲーム会社はアンチチートを使うんだよ。" userName="Gareth321" createdAt="2025/11/21 08:54:45" color="">}}




{{<matomeQuote body="Underlying hardwareと署名済みドライバーに組み込めば不可能じゃないって。Valveならチップセットに何か入れて、Steam Deckのドライバーに署名し、SecureBootみたいなApple SIP的なものを作れるはず。他のLinux環境では動かないし、みんな文句言うだろうけどね。" userName="Mindwipe" createdAt="2025/11/20 14:45:05" color="#ff5c5c">}}




{{<matomeQuote body="Linuxはシステムを自由にできるから、DRMの話に似てるんだ。ユーザーがシステムをいじれるのに、ダメなことを阻止しようとしても、信頼なんて始まらないよね。" userName="keyringlight" createdAt="2025/11/20 10:28:11" color="">}}




{{<matomeQuote body="俺はSteamをFlatpakで動かしてるから、ゲームはサンドボックス化されててホームディレクトリにはアクセスできないんだ。だから誰のことも信用する必要はないってわけ。" userName="sph" createdAt="2025/11/20 16:08:43" color="#45d325">}}




{{<matomeQuote body="それは保護を追加するけど、完璧じゃないよ。悪意のあるゲームやアプリは、Flatpakのサンドボックスをすり抜けて個人データを盗んだり、マルウェアを仕込んだり、ネットワークでデータを送ったり、仮想通貨を掘ったりできるんだ。あと、ホームディレクトリを操作したり、キーロギングやスクリーンショットを撮ったり、Wine/Protonの脆弱性を使ってサンドボックスから抜け出すことも可能だよ。" userName="Gareth321" createdAt="2025/11/21 09:04:22" color="#ff5c5c">}}




{{<matomeQuote body="ちょ、ポッドキャストを辞めた理由って何？「ネイティブサポートにこだわる人が少なくなったから」ってこと？ポッドキャストはLinuxへの移植を増やそうとしてたのに、ProtonやSteam Machine IIがその努力を無駄にしたってことかな？" userName="abnercoimbre" createdAt="2025/11/20 00:24:46" color="">}}




{{<matomeQuote body="たぶんこれだよ: https://linuxgamecast.com/podcasts/" userName="watermelon0" createdAt="2025/11/20 07:05:54" color="">}}




{{<matomeQuote body="うーん、そのサイトには終了するって話は載ってないみたいだね？" userName="pabs3" createdAt="2025/11/20 10:22:48" color="">}}




{{<matomeQuote body="「ほとんどのものがすぐに使える」ってところにはかなり疑問があるな。俺が間違ってるといいんだけど。" userName="tropicalfruit" createdAt="2025/11/20 12:47:22" color="">}}




{{<matomeQuote body="2024年はじめはWindows 8.1を使ってたんだけど、予想より早くLinuxに移行することになったんだ。今はLinuxをすごく楽しんでるよ。久しぶりにコンピューティングに情熱を感じさせてくれるんだ。" userName="Jigsy" createdAt="2025/11/19 22:21:35" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
