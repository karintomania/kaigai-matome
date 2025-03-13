+++
date = '2025-02-17T00:00:00'
months = '2025/02'
draft = false
title = 'AMD GPUでLinuxのスリープ問題'
tags = ["Linux", "AMD", "GPU", "スリープ", "トラブルシューティング"]
featureimage = 'thumbnails/purple8.jpg'
+++

> AMD GPUでLinuxのスリープ問題

引用元：[https://news.ycombinator.com/item?id=43071983](https://news.ycombinator.com/item?id=43071983)

{{<matomeQuote body="ちょっと調べてみたんだけど、S3スリープに入るとPCIe GPUに電源がカットされるっぽい。正しいかは不明だけど、Gigabyte Aorusマザーボードはスリープバグがあって、SSDが正常にスリープしたり起きたりできないことがある。それを解決するのがこのudevルールだよ：<br>＞“スリープバグ対策として任意のPCIeポートからのウェイクアップを無効にする”" userName="jorvi" createdAt="2025-02-17T17:29:52" color="#785bff">}}

{{<matomeQuote body="俺のマザーボードでは、/etc/udev/rules.d/に設定を追加して自動ウェイクを無効にした。Logitech BoltレシーバーがいろんなLinux PCをすぐに起こすみたいで、Windowsではなんでこんなことがないのか謎。とりあえず、レシーバーの待機を無効にするルールを追加した！" userName="nyanpasu64" createdAt="2025-02-17T21:02:24" color="">}}

{{<matomeQuote body="いいヒントだね！KERNELS==”0000:00:01.1”を使うのは興味深い。PCIデバイスの特定の機能をターゲットにできるからね。" userName="jorvi" createdAt="2025-02-17T23:17:45" color="">}}

{{<matomeQuote body="Aorusマザー使ってるけど、この問題でいくつかの電力を無駄にしちゃった。これらの解決策に期待してたけど、ダメだったよ。ありがとう！" userName="VMG" createdAt="2025-02-17T18:44:59" color="">}}

{{<matomeQuote body="一般的な対策は試した？それとudevルールのリロードもね。デフォルトのルールの後に適用されるようにしないと。うまくいったら、udevadmでSSDデバイスを確認して“power/wakeup”が“disabled”になっているか見てみて。もし“disabled”なら、他の何かがスリープを妨げてるよ。" userName="jorvi" createdAt="2025-02-17T20:37:46" color="#45d325">}}

{{<matomeQuote body="もっと詳しく説明すればよかったかな。俺はデスクトップPC使ってるんだけど、スリープに入るのはいいけど、起き上がるとフリーズしちゃう。" userName="VMG" createdAt="2025-02-18T08:37:45" color="">}}

{{<matomeQuote body="俺もAorus ATXマザー使ってる。スリープには入るけど、起きるとフリーズするのが問題。デバイスによって挙動が違って、うちのは98％までスリープするけどファンだけが動く状態。これがバグであることがわかった。おそらく他のポートでも解決できるはず。" userName="jorvi" createdAt="2025-02-18T11:18:05" color="#ff5c5c">}}

{{<matomeQuote body="やばいな、B550M DS3H使ってるけど、スリープからすぐに起こすと一瞬つくけど、操作できなくて電源ボタン押してもダメ。壁のコンセントから電源引っこ抜かなきゃいけなかった。これは前にBIOSアップデートで直った。" userName="nyanpasu64" createdAt="2025-02-18T22:54:07" color="">}}

{{<matomeQuote body="このヒントありがとな！X570 Aorus Masterのサスペンド問題に悩んでた。/proc/acpi/wakeupにGPP0って入れたら解決したけど、最初のスリープ後にすぐ起きちゃうのは相変わらず。udevルールを適用して、そっちも直ったみたい！" userName="mafuyu" createdAt="2025-02-18T06:13:20" color="#785bff">}}

{{<matomeQuote body="将来のユニットファイルを使うために：`Type=oneshot`と`RemainAfterExit=yes`使った？そうじゃないとウェイクアップの動作に変な影響があった気がする。でもこれはNixOS特有かも。" userName="jorvi" createdAt="2025-02-18T11:12:11" color="">}}

{{<matomeQuote body="ExecStartにmulti-user.targetを使ったけど、これが単純ユニットを示すから起動時の順序が間違ってるかもって気づいた！これから気をつけようと思う。" userName="mafuyu" createdAt="2025-02-19T07:12:49" color="">}}

{{<matomeQuote body="混乱させてごめん、実行に失敗してるわけじゃないよ。”RemainAfterExit”を入れないと、毎回起動するから注意が必要。これでお得意のシェルコードが実行される。”RemainAfterExit”はシステムの状態を変えるユニットファイルに必要で、1回実行したら手動で無効にしない限り”アクティブ”になる。”Type=Oneshot”も必要。とはいえ、udevでやるのが好みかな。シェルスクリプトは壊れやすいから。" userName="jorvi" createdAt="2025-02-19T15:55:19" color="#ff5733">}}

{{<matomeQuote body="なるほど、アドバイスありがと！systemdは簡単に使えて便利だけど、罠も多いんだよね。" userName="mafuyu" createdAt="2025-02-24T05:54:26" color="">}}

{{<matomeQuote body="この仮定が正しいかは不明だけど、S3はRAM以外の電源をカットするはず。でもGigabyte AorusのマザーボードにはNVMe SSDスリープバグがあって、システムが正しくスリープやウェイクできないことがある。ハードウェアの状態をチェックしたり、PCIeデバイスにスリープコマンドを送ったりできるといいんだけど。" userName="bArray" createdAt="2025-02-18T13:08:09" color="">}}

{{<matomeQuote body="ああ、長い間この問題に悩んでるんだけど、これもダメだったよ。ここに記録してあるから見てみて。<br>https://bbs.archlinux.org/viewtopic.php?id=302440<br>Aorusのウェイクアップ問題に関するさらなる洞察があったら教えて。特に、私の場合は`.../devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:45/wakeup/wakeup6`からウェイクアップしてるみたいだけど、意味が分からないんだ。" userName="krastanov" createdAt="2025-02-18T02:59:03" color="">}}

{{<matomeQuote body="それも分からないけど、上のコメントからのヒントで試してみるといいかも。<br>ACTION==”offline”, KERNELS==”0000:00:45.6”, ATTR{power/wakeup}=”disabled”<br>とか、ACTION==”change”やKERNELS==”0000:00:45”やKERNELS==”0000:00:45.?”もありかも。" userName="jorvi" createdAt="2025-02-18T10:59:47" color="">}}

{{<matomeQuote body="このMBで何年もこの問題に苦しんで、結局はひどいUSB CのPCIeカードを物理的に取り外すことで解決したよ。コンピュータケースにはUSBCポートがなかったからね。<br>それに、PCIウェイクアップバスを無効にしたこともあるけど、それからは触ってない。今は順調だよ。これが役に立てば。" userName="faraggi" createdAt="2025-02-18T04:39:00" color="#ff5c5c">}}

{{<matomeQuote body="これは修正なのか、それとも回避策なのか？" userName="gU9x3u8XmQNG" createdAt="2025-02-18T05:09:33" color="">}}

{{<matomeQuote body="memreserverの作者がここにいるよ。この問題について数年前にデバッグしたけど、公開されてるコメントが見つかるのは難しい。<br>大体は、Linuxに信頼性の高いスリープフックが欠けていたのが問題だったけど、これが今は可能になっている。残念ながら、FreedesktopのGitlabはインデックスできないから、その知識が失われちゃったみたい。<br>[1]  https://gitlab.freedesktop.org/drm/amd/-/issues/2125#note_17..." userName="lorenzbrun" createdAt="2025-02-17T22:21:15" color="#785bff">}}

{{<matomeQuote body="すごい成果だね！Linuxでスリープがどれだけ難しいか、その原因がわかるデータポイントだよ。今でもThinkPad P1G4を使ってるけど、スリープに入るとファンが自動で止まらないし、最近はBluetoothヘッドフォンからのスリープ復帰後に音が割れる問題も発生した。ノードのスリープも無効にしたよ。<br>（https://wiki.archlinux.org/title/PipeWire#Noticeable_audio_d...）" userName="sabujp" createdAt="2025-02-17T18:30:52" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もう2025年なのに、Linuxのノートパソコンのスリープやサスペンドがまだちゃんと動かないのは驚きだよね。15年前に初めてこの問題に出くわした気がする。" userName="Apofis" createdAt="2025-02-17T19:03:32" color="">}}

{{<matomeQuote body="Windowsでもスリープとサスペンドはうまく動かないよね。パワーコントロールは密接な統合が必要だから、PCはそれができてないんだ。メーカーはファームウェアをただのコストとみなしていて、最低限の機能しか提供してないから、完全にサポートされないことが多い。" userName="xondono" createdAt="2025-02-17T19:36:31" color="#45d325">}}

{{<matomeQuote body="AppleもPPC/x86時代にスリープの問題で苦労してたよ。いい感じにはなってるけど、Appleのノートを使ってたときも、スリープからの復帰で奇妙な問題が1/50回くらいの頻度で起きてた。LenovoはLinuxでもApple並みにスリープ管理ができてる気がする。" userName="kiwijamo" createdAt="2025-02-17T21:12:59" color="#785bff">}}

{{<matomeQuote body="ARMでも完全ではない。M1 Miniはスリープから復帰するとグリーンスクリーンになってクラッシュすることが数ヶ月に一回あるし、M1 Proもたまにスリープから復帰するとフリーズするんだ。これはOS問わず難しい問題みたいだね。" userName="nyarlathotep_" createdAt="2025-02-18T03:42:25" color="">}}

{{<matomeQuote body="＞LenovoはLinuxでもApple並みにスリープ管理ができてる気がする。俺のOpenBSD X1もそれほど悪くはないよ。MacBookほどスムーズではないけど、まあまあ使える。" userName="adolph" createdAt="2025-02-18T00:08:31" color="">}}

{{<matomeQuote body="CarbonとExtremeどっち？俺の1世代目のX1 ExtremeではWindowsで復帰すらまともにできないんだけど。" userName="winrid" createdAt="2025-02-18T12:20:17" color="">}}

{{<matomeQuote body="ARMではかなり改善されたよね。外部モニターのサポートも速くて信頼性が上がったし。ハードウェア全体をコントロールしてるのが大きいんじゃないかな。" userName="sroussey" createdAt="2025-02-17T21:51:57" color="#785bff">}}

{{<matomeQuote body="俺のM1 Pro MacBookはHDMIの音声で変な問題がある。テレビに接続すると再起動しないと音が出ないことが多いよ。" userName="tiagod" createdAt="2025-02-17T22:49:08" color="">}}

{{<matomeQuote body="それはイライラするけど、モニターやテレビのHDMI実装が原因かもしれないね。" userName="bzzzt" createdAt="2025-02-18T08:38:41" color="">}}

{{<matomeQuote body="そうじゃないと思う。その状態だと、映像が飛んだり乱れたりして、音声もかなり壊れる。音だけの問題じゃないよ。" userName="tiagod" createdAt="2025-02-19T03:23:40" color="">}}

{{<matomeQuote body="全て HDMI 実装の不具合が原因かもしれないね（リフレッシュや音声が全てエンコード・同期されてるから）。でも、M1 Mac が HDMI TV との接続に重大な問題があるかもしれないし、間違ってるかもね。" userName="bzzzt" createdAt="2025-02-20T15:58:50" color="">}}

{{<matomeQuote body="ケーブルの可能性もあるよ。自分は M2 を使ってるけど問題ないし、v1 の問題が心配だったけど、VisionPro の v2 を待つことにする。" userName="sroussey" createdAt="2025-02-20T20:40:09" color="">}}

{{<matomeQuote body="11世代 Intel NUC を買った時、スリープ・ウェイクがうまくいかなかったのには驚いた。安いクローンでなく、プロセッサを設計したメーカーの完全統合コンピュータなのに！結局、新しいマシンを買ってしまったけど、Home Server として Proxmox を動かしてるからスリープしなくてもいいから問題ないや。" userName="stephen_g" createdAt="2025-02-17T23:11:27" color="#38d3d3">}}

{{<matomeQuote body="＞ スリープ・サスペンドは Windows でもうまくいかないよ。<br>自分の $DAYJOB の Macbook も、スリープできるのは10回中2回だけ。大体失敗して翌朝にはバッテリーが切れてる。比較するなら、PopOS!を動かしている自分の System76 ラップトップは毎回完璧にスリープするよ。" userName="mindcrime" createdAt="2025-02-17T22:14:26" color="#ff5c5c">}}

{{<matomeQuote body="＞ 自分の $DAYJOB の Macbook のスリープは、10回中2回しか成功しない。<br>重要なのは、業務用ラップトップには様々なスパイウェアや管理ソフトがインストールされているから、それが原因でシステムが不具合を起こすこともある。これは Apple だけの問題ではないけど、こうしたソフトからブランドを守ってないのは問題だ。" userName="vlovich123" createdAt="2025-02-18T10:06:31" color="">}}

{{<matomeQuote body="＞ Macintosh ではどうなんだろう。自分の $DAYJOB の Powerbook が…<br>20年以上前の PowerPC ラップトップを日常業務に使ってるの？ハードウェアが長持ちしてるね！" userName="stock_toaster" createdAt="2025-02-17T22:45:02" color="">}}

{{<matomeQuote body="＞ スリープ・サスペンドは Windows でもうまくいかないよ。<br>昔は全く問題じゃなかったのに、今では5台ある Windows ノートはどれもスリープしない。なぜか Debian Stable を動かしている自分の私物ラップトップは、毎回スリープするけど、他のディストロは Windows と同じくらいの失敗率だ。" userName="bachmeier" createdAt="2025-02-17T20:22:24" color="#785bff">}}

{{<matomeQuote body="モダンスタンバイ。Windows は Apple の ”power nap” 機能を真似したかったけど、ハードウェアを完全に管理してないと、数多くの異なるハードウェアの組み合わせによって問題が発生することに気付かなかったみたい。それに、機械はオーバーヒートしたり、Windows Update によるウェイクタイマーでオフになってたりすることもあって、これを無効にできるけど、普通の人は気づかない。S3 スリープが消えた理由が理解できない。" userName="asmor" createdAt="2025-02-17T20:42:49" color="">}}

{{<matomeQuote body="Linux の S0 にとても満足してる。実装はできるだけ少ないことを行いながらも、効果的に ”オン” の状態を保つことに重点を置いてる。" userName="carlhjerpe" createdAt="2025-02-17T21:05:06" color="#785bff">}}

{{<matomeQuote body="＞ でも意味あるの？実際に何もしてないなら、なんでオンのままにするの？" userName="vladvasiliu" createdAt="2025-02-18T08:53:16" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="同僚が最近Windowsのマシンを見せてくれたんだ。ファンの周りのゴムが溶けちゃってて、電源切り忘れてバッグにしまった時にスリープが作動しなかったみたい。" userName="OvbiousError" createdAt="2025-02-17T20:46:25" color="">}}

{{<matomeQuote body="Linus Tech TipsがYouTubeで、充電中にスリープすると更新チェックで自動的に起きるバグについての動画を上げてたけど、リュックの中で起きちゃう問題が多いみたい。" userName="dhon_" createdAt="2025-02-17T21:30:21" color="">}}

{{<matomeQuote body="この機能って2020年の初め頃にリリースされたんじゃない？Windowsのスリープは昔はまあまあだったけど、ここ数年はひどいね。<br>（オフにする方法のリンクある？）" userName="whizzter" createdAt="2025-02-17T22:38:31" color="#785bff">}}

{{<matomeQuote body="Windowsに問題があるのは確かだけど、100台中80台は問題なく動くと思うよ。Linuxでちゃんと動作するのはその中の30%くらいかな。<br>俺は90年代からSlackwareを使ってるから、実際のところ、Linuxのデュアルブート環境でAMD CPUとNVIDIA GPUのデスクトップはスリープできない。今は手動で対処してる。" userName="jml78" createdAt="2025-02-17T22:50:27" color="">}}

{{<matomeQuote body="WindowsのModern Standbyは本当にひどいよ。問題について詳しく説明してるYouTubeの動画があるから、見てみて：<br>https://youtu.be/OHKKcd3sx2c" userName="dharmab" createdAt="2025-02-17T23:10:50" color="">}}

{{<matomeQuote body="新しいWindowsノートパソコンの0%が正しいS3スリープモードに対応してないんだ。Microsoftがそれを削除したから、”modern standby”の方がよくなった。" userName="weberer" createdAt="2025-02-18T11:30:45" color="">}}

{{<matomeQuote body="2017年から2019年のIntel MacBookは、HID周辺機器の電源を切る前に蓋を閉じるとセグフォルトするほど問題があったよ。<br>WindowsでもカスタムPCビルドはこの問題に悩まされるし、全てのコンポーネントがスリープ状態もうまく動作するわけじゃないんだ。<br>そういう問題を解決する手段がBIOSやLinuxになくも、どうやって調べればいいかわからない人が多いかな。" userName="washadjeffmad" createdAt="2025-02-17T19:43:29" color="">}}

{{<matomeQuote body="あれはバグじゃなくて機能だと思ってた。大きなダウンロードを続けたい時やすぐに起動したい時は、電源をつないで蓋を閉めてたから。" userName="janderson215" createdAt="2025-02-17T19:47:15" color="">}}

{{<matomeQuote body="カスタムデスクトップで、前のAM4マザーボードを使ってた時に、Windowsでハイバーネートすると普通にシャットダウンした後に、自動的に起きちゃうことがあったんだ。それを防ぐために何回もPSUの電源を切ってた。新しいマザーボードに変えたらもうなくなった。BIOSのアップデートでは解決しなかったな。" userName="burnte" createdAt="2025-02-17T20:01:46" color="">}}

{{<matomeQuote body="今すぐには役に立たないかもしれないけど、自動的に起きちゃうWindowsマシンがあったら、管理者としてコマンドウィンドウで実行して、何が起きたかチェックできるよ：<br>powercfg /lastwake" userName="iamtedd" createdAt="2025-02-18T00:21:46" color="">}}

{{<matomeQuote body="今日、閉じたゲーミングノートパソコンが煩わしいWindowsの音を出すようになったので、Windowsでもちゃんと動いてない気がする。今はハードウェアの問題を解決する手段がいろいろあって、Appleがいいのはサポートするハードウェアが少なく、スタックも管理してるから。WindowsがLinuxよりマシなのは、目が多いからだと思う。" userName="rikthevik" createdAt="2025-02-17T22:16:58" color="">}}

{{<matomeQuote body="MacとWindowsがちゃんと動く理由は、デスクトップ向けに設計されてるから。LinuxはクラウドサービスやAndroidに資金が流れて、デスクトップ機能が不足してる気がする。" userName="ch33zer" createdAt="2025-02-18T06:52:14" color="">}}

{{<matomeQuote body="実際、Windowsでも正しく動いてないよ。会社のノートパソコンの混合環境では、問題が多すぎてスリープ・ハイバーネートを全社的に無効にした。" userName="bongodongobob" createdAt="2025-02-17T19:12:25" color="">}}

{{<matomeQuote body="なぜか人々は自分のマシンをスリープさせたがるね。長い起動時間とか？" userName="Joker_vD" createdAt="2025-02-18T01:28:52" color="">}}

{{<matomeQuote body="その気持ちは分かるよ。結局、タブがいっぱい開いててNotepadが14個あるから。でも、スリープ失敗で痛い目にあったら習慣を変えざるを得ないね。" userName="bongodongobob" createdAt="2025-02-18T02:12:47" color="#ff5733">}}

{{<matomeQuote body="Firefoxは閉じるときに開いているタブを保存するし、Notepad++やSublimeもそうだよね。失うタブの大部分は重要じゃない。スリープはちゃんと動くべきなんだけど、実際は機能してないから、ドライブの電源を切るタイミングを考えた方がいいよ。" userName="Joker_vD" createdAt="2025-02-18T02:57:46" color="#38d3d3">}}

{{<matomeQuote body="もし、S0スリープをサポートしている現代のマシンを使ってるなら、かなり問題が解決されてるよ。全てのユーザープロセスを一時停止し、コアをすべて無効にして1つだけを低周波数で動かすから、システムは「オン」のままだし、デバイスは省電力状態になる。深いスリープが必要ない限り問題ない。" userName="carlhjerpe" createdAt="2025-02-17T20:52:13" color="#785bff">}}

{{<matomeQuote body="心から感謝します。私のメインノートパソコンはRyzenのThinkPadでLinuxを使っていて、スリープとハイバーネートをよく使うけど、時々この問題に遭遇します。6.14が待ち遠しい！" userName="Gormo" createdAt="2025-02-17T17:36:48" color="">}}

{{<matomeQuote body="これだ！ほんとありがとう！" userName="imp0cat" createdAt="2025-02-17T19:58:34" color="">}}

{{<matomeQuote body="なんでdm->cached_stateがポインタじゃなくて-12を保存してたの？おそらく、suspend中にdm_suspend()がdm.cached_stateにdrm_atomic_helper_suspend(adev_to_drm(adev))を代入したからだと思う。drm_atomic_helper_suspend()はポインタかエラーを示す負のポインタを返す可能性があるのに、戻り値をそのままポインタに代入してて、resume時にデリファレンスするからエラーをテストせずに使ってたんだ。RustならResult型を扱うからこういうことは起こらないよ。" userName="mkesper" createdAt="2025-02-18T09:39:52" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Cのプリプロセッサを使えば代数的合成型が作れるみたいだよ。詳細はリンク見てね。だけど、カーネルの古いコーディング習慣が改善の妨げになってるのが皮肉だね。Rustの開発者たちは、自分のサブシステムをきれいにしようとしないその抵抗にフラストレーションを感じてると思う。たぶん、これがカーネルに取り込まれれば役立つかもね。" userName="vlovich123" createdAt="2025-02-18T10:20:43" color="">}}

{{<matomeQuote body="あなたの仕事が、GPU拡張付きのFramework AMDラップトップでのLinux/Windowsのデュアルブートに役立つよ。寄付したいんだけど、私のプロフィールに連絡先があるから教えて。" userName="jph" createdAt="2025-02-17T18:57:41" color="#ff33a1">}}

{{<matomeQuote body="大好き！" userName="lelandfe" createdAt="2025-02-17T19:59:39" color="">}}

{{<matomeQuote body="昔は、名前付けとキャッシュの無効化、オフバイワンエラーがコンピュータサイエンスの二大問題だと思ってたけど、”スリープ/ウェイク”問題について知ってNP完全だと気づいたんだ。" userName="dekhn" createdAt="2025-02-17T20:51:54" color="">}}

{{<matomeQuote body="スリープ/ウェイクはキャッシュの無効化の一種だと思う。全ての周辺機器がステートレスなら問題にならないはず。" userName="verall" createdAt="2025-02-18T16:40:00" color="">}}

{{<matomeQuote body="でも、Linuxだけの話だよ。WindowsではO(n2)、MacosではO(log n)になる。" userName="nikanj" createdAt="2025-02-17T20:54:11" color="">}}

{{<matomeQuote body="新しいDellラップトップをスリープさせるのにかなり苦労したし、デスクトップもウェイク後にGPUハードウェアアクセラレーションが壊れたから、今はO(n4)くらいだと思うよ。もしかしたらO(n!)かも。" userName="ncann" createdAt="2025-02-17T21:34:55" color="#ff5733">}}

{{<matomeQuote body="でも、Hackintoshしない限りは大丈夫だね。あれは時々恐ろしいことがあったから！" userName="itsn0tm3" createdAt="2025-02-17T21:10:45" color="">}}

{{<matomeQuote body="Hackintoshの設定でKEXTやブートローダーの設定に数時間費やしたことを思い出すと、今でもゾッとするわ。特にACPIテーブル、SSDとかな。対照的に、VMでMacOSを動かすのは天国だよ。XcodeにiPhoneを通すのに最初の設定と同じくらい時間がかかったし。" userName="0x38B" createdAt="2025-02-17T22:54:14" color="">}}

{{<matomeQuote body="Linuxのメモリ管理、特にOOMの問題は本当に厄介で困ってる。不運にもOOMになると、RAMを追加せざるを得ないが、これは無駄で高価。Linuxが将来的にOOMをうまく処理するのは難しいと思う。この作業は素晴らしいし、今後のデバッグの参考になりそう。systemdのdebug-shell機能も便利そう。" userName="jchw" createdAt="2025-02-17T20:38:05" color="#ff5733">}}

{{<matomeQuote body="Windowsによると、マザーボードのシリアルポートはPciバスに接続されてるらしい。DOS万歳！TTMのビデオ、時間があれば見てみるよ。" userName="nyanpasu64" createdAt="2025-02-17T20:58:22" color="">}}

{{<matomeQuote body="cgroupsを使ってOOMを抑えるのはうまくいったことがあるんだ。LinuxでのOOMの扱いに最新の方法があるかはわからないけど、何かおすすめの本があれば教えてほしい。" userName="Skunkleton" createdAt="2025-02-17T20:44:56" color="">}}

{{<matomeQuote body="理解している限り、二つの問題があるね。・過剰割り当て。Linuxはメモリを過剰に割り当てることがあり、メモリがない時も割り当てが成功して、実際に物理ページがないときにハングする。Windows NTはこれをしないし、macOS/XNUの処理も分からない。・OOMキラー。割り当てが失敗しないので、OOM時の回復にはプロセスをスコアで評価し、メモリを使っているものを殺す。単一のプロセスがメモリを使ってない場合、これがうまく機能しない。たとえば、make -j32のような並列タスクだと、C++コンパイラはそれほどメモリを使わないから、栄光の瞬間にElectronアプリが真っ先に殺される。" userName="jchw" createdAt="2025-02-17T21:12:04" color="#785bff">}}

{{<matomeQuote body="過剰割り当てに対する他の賢い方法があるの？小さめのメモリを追加で常にmmapするのは非効率でしょ？過剰割り当ては実際にはページを書き込むまで本当に割り当ててないんだよね。forkを効率よく実装する方法は、少なくとも「これには書き込まない」とマークする必要があるだろうけど、実際には使うのが難しいAPIになるのかな。" userName="fc417fc802" createdAt="2025-02-18T05:43:54" color="#ff5c5c">}}

{{<matomeQuote body="Chromiumはタブごとに1つのPID名前空間を持つかもしれない。今のマシンでは、タブごとに1.1TiBの仮想メモリが報告されてる。実際にはChromeやFirefoxはそんなにメモリを使わないんだろうね。" userName="nolist_policy" createdAt="2025-02-18T18:37:18" color="">}}

{{<matomeQuote body="大きなmmapを許可しつつ、ページが尽きた時にプログラムをハングさせずに信号を送るのもひとつの解決策かも。ただ、ChromeやFirefoxが実際にそれだけのメモリを使ってるわけじゃないし。" userName="jchw" createdAt="2025-02-18T15:52:54" color="">}}

{{<matomeQuote body="むしろ対処法として、実際に割り当てが起きた時にアクション可能なエラーを受け取る方が良いと思う。でもそれがうまく機能するためには、スレッドごとの信号ハンドラが必要だ。これにはカーネルが対応してるけど、POSIXやglibcの更新が必要になるだろうね。あとは、書き込みなしでページを割り当てる方法もあったらな。" userName="fc417fc802" createdAt="2025-02-19T02:31:23" color="#ff5733">}}

{{<matomeQuote body="Linuxのメモリ管理とOOMの条件は本当に酷い。OOM条件の処理が適切に行われていない。cgroupsを使ったりearlyoomをインストールしたり、スワップを増やしたりしても結局はハックに過ぎない。これらは本質的に問題を解決してくれない。システムがメモリを割り当てられないためにLUKSボリュームが読み取り専用になったこともあるし、本当にユーザースペースで何かを殺してくれ。" userName="Avamander" createdAt="2025-02-18T12:29:43" color="#ff5c5c">}}

{{<matomeQuote body="zswapやzram使ってる？ zstdで8GBのRAMを20GBに増やせるし、16GBなら40GBにもできるよ。冒険心があれば（Androidもやってるし安定してる）メモリを100%超過してもいいし。" userName="jorvi" createdAt="2025-02-18T11:35:59" color="#ff5c5c">}}

{{<matomeQuote body="すごいニュースだね。AMDのLinuxグラフィックスドライバーはほとんどは快適に動いてるけど、これだけは何度も問題にぶつかった。" userName="dralley" createdAt="2025-02-17T17:27:50" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
