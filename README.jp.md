プログラマブル準AI 華和梨 Phase 8.2.8

#これは何ですか


華和梨 Phase8 正式リリース版です。
ライセンスを始め、新仕様に関するかなりの情報がドキュメント化されています。
document/index.htmlを、ご使用のブラウザでご覧下さい。

ディレクトリ構成は以下のようになっています。

    kawari-828/       …… プロジェクトルート
           readme.1st     …… この文書
           license.txt    …… 修正BSDライセンス文

           bin/           …… 各種実行ファイル
               shiori.dll         …… SHIORI (栞サブシステム)
               kosui.exe          …… 幸水 (デバッグ用コンソールアプリ)
               kawari_encode2.exe …… 辞書暗号化ツール
               kawari_decode2.exe …… 辞書複合化ツール

           document/      …… ドキュメント
               index.html         …… ドキュメントトップページ

           build/         …… ビルド環境
               BUILD.TXT          …… ビルド方法
               contrib/           …… 取り込んだパッチ

#備考

リリース版のコンパイルはMinimalist GNU Win32環境で行っています。

2008/03/30
KAWARI Developer Team (Meister/Nise-Meister/Sato/Shino/Suikyo)


#ChangeLog

2008/03/30 Phase 8.2.8
 * textsaveコマンドが複数のエントリを同時の保存できないバグを修正
   (Thanks: Don, ukiya, xenon)

2008/02/16 Phase 8.2.7
 * insertstrコマンドの動作がinsertコマンドと同じになっていたバグを修正
 * entrycountコマンドが正しいエントリ総数を返さないバグを修正
   (Thanks: おば９)

2008/01/27 Phase 8.2.6
 * gsubコマンドが連続したpatternを""で置換すると、置換漏れを起こすバグを修正
   (Thanks: C.Ponapalt)

2008/01/26 Phase 8.2.5
 * 辞書中に半角中点(･)があると異常動作を起こすバグを修正
   (UPXによるエンバグ？gcc最適化を-O1にすることで対応)
 * isexistコマンドがルートフォルダで動作しないバグを修正
 * 幸水にquietモード追加。コマンドラインオプションで「--quiet」を指定する
   ことにより、初期化ファイルを読み込むと直ちに終了する。
 * ninix-aya用コンパイル時のエラー修正(Thanks: paulliu)

2005/10/30 Phase 8.2.4
 * rfindコマンドが検索に失敗したり、仕様にない数値を返すバグを修正。
   libkawari/kawari_ns.cppのTEntry::RFindを修正。
 * Visual C++ 7.1用でコンパイルする際のプロジェクトファイルを添付。
   (Thanks: 芝やんさん)
 * 華和梨がVisual C++ 7.1でコンパイルできない問題を修正。
   misc/l10n.cppのctow関数の式解釈順序依存部分を削除。(Thanks: 芝やんさん)
 * メイクファイル(gcc.mak)ninix-aya向け部分のtypoを修正(Thanks: jadoさん)

2005/07/03 Phase 8.2.3
 * 辞書系コマンドのインデックス管理コードを整理
 * inc/decの添え字を範囲指定可能に機能拡張。指定範囲の単語を全てinc/decする。

2005/06/21 Phase 8.2.3RC (非公開)
 * 演算式で数値/文字列自動判定が間違っていたバグを修正。
 * リリースに使用するコンパイラをMinGW 4.1.0(gcc 3.4.2)に
 * リリースのバイナリを、gccによる直接dll生成に切り替え(dllwrapはobsolute?)。
 * gcc3.xのwarning対応。
 * splitのぬるぽbugをfix.
 * inc/decが負の添え字でハングするbugをfix
 * mktimeコマンド追加

2004/09/05 Phase8.2.2
 * Phase 8.2.1において、辞書系コマンドのインデックスで負の値が使えなくなって
   いたバグを修正

2004/09/04 Phase8.2.1
 * 辞書系コマンドに共通で、「ー」など一部の文字を含むエントリ名のインデックス
   指定が出来ないバグを修正(Thanks 89さん@OpenKEEPSスレ)
 * あべさんのninix-aya向けパッチ、phonohawkさんの偽林檎向けパッチをソースに
   取り込み(Thanks あべさん、phonohawkさん)

2004/02/01 Phase8.2.0
 * dateコマンドに第2引数をepocからの経過秒数と解釈し、現在の時刻と同じように
   フォーマット出力するよう機能追加
 * splitに第3引数として""を与えた時ハングアップするバグを修正
 * splitに第3引数として""を与えた場合と第3引数を省略した場合が等価になるよう
   機能追加。どちらも文字ごとに分割する
 * splitにあわせ、joinも第3引数省略時は""を与えた場合と等価になるよう機能追加
 * listsubコマンドが、既に消去したエントリツリー構造まで見つけるバグを修正
 * 文字列検索/置換系コマンドにおいて、マッチパターンに""を指定した場合、
   マニュアル通りに全ての文字境界にマッチするよう修正
 * 文字列検索/置換系コマンドにおいて、存在しないインデックスを指定した場合、
   ハングアップしたり、正しくない検索結果を返すバグを修正。存在しない
   インデックスを与えた場合、失敗(""もしくは-1、コマンド依存)を返す。
 * rsubコマンド追加
 * getenvコマンド追加
 * textappendコマンド追加
 * continue 構文コマンド追加。このコマンドはループ構文中でのみ機能する。
 * 上記に合わせ、break 構文コマンドはループ構文中でのみ機能するよう変更

2003/05/18 Phase8.1.0
 * splitの空要素に関する扱いがPhase7.3.1の頃と異なっていたバグをfix
 * 要素を区切り文字で結合するコマンドjoin追加
 * コンパイルに用いるUPXのバージョンを1.2.4に変更
 * saorilistコマンド追加
 * "function <関数名>" で関数定義を取れるようにした
 * rmfunc 構文コマンド追加
 * xargsの第一引数に、存在しない、もしくは空のエントリ名を指定するとエラー
   になるバグをfix
 * shiftcodeがshiftと同じ実装になっていたバグをfix(Thanks ふぁんとむ９さん)
 * 空文字列とのマッチがtrueとならないことがあったバグをfix
 * 華和梨エンジンを完全オブジェクト化(ログストリームなども含む)。同一プロセ
   ス内に複数インスタンスの生成が可能。1スレッド/インスタンス制限有り。主に
   偽林檎, ninixへの適用を前提。
   なお、現状では複数インスタンス生成をサポートするSAORIが存在しない。native
   なSAORIについては、唯一性保証クラスでガードしている。追って、オブジェクト
   SAORI規格の策定が必要。
 * 勝手規格 SHIORI OBJECT Interface API(so_*)の追加
 * POSIXプラットフォーム向けSHIORIインターフェースの再定義と、SHIORI-POSIX
   メンテナンスの凍結
 * Java, PythonのSHIORI-Server, SAORI-Client I/Fに仮対応。主に偽林檎、ninix
   対応の叩き台。

2002/09/05 Phase8.1.0 beta1 (非公開)
 * 引数によりreverseが動かなくなっていたバグをfix
 * ファイル/ディレクトリの存在確認コマンド群isdir/isexist/isfile追加
 * dateコマンドに%s(1970/1/1 00:00:00 UTCからの経過秒数)追加
 * ユーザーズマニュアルの「!~」記述ミスとKISリファレンスのdate説明不備を
   修正。(Thanks たくるさん)
 * マニュアルの「置換できないケース」に「集合演算式の演算子」記載漏れを
   修正。(Thanks ダイスさん)
 * find、rfindが存在しないエントリを検索した時、必ず0を返すバグをfix(Thanks
   とりあたまさん)
 * SAORIの多重ロードなどに関する対策(Thanks りゅうさん、lmmさん)

2002/07/05 Phase8.0.0
 * KISコマンドオブジェクトがデストラクトされていなかったバグをfix(Thanks
    今井さん)
 * 幸水起動時に、デフォルトのSystem.DataPathとしてフルパスを設定するよう
   にした。
 * ドキュメント追加(幸水によるデバッグなど)、整備。
 * KIS強化短期決戦プロジェクトであったProject KIUは、当初のスケジュール
   からは大幅に遅れたものの、より現実に即した形で、より高い品質を達成し
   たものと信ずる。Project KIUは、本日をもって解散される。
 * 以降のメンテナンスは、通常モードの華和梨開発チームがメンテナとなって
   行われる。
 * 正式公開

2002/06/23 Phase8.0.0 RC3 patch1 (非公開)
 * 各種メッセージの日本語化、一晩で作業完。時間って貴重。
   日本語化メッセージを使うには、rccharsetコマンドを使ってください。
   ex) rccharset Shift_JIS;

2002/06/22 Phase8.0.0 RC3
 * 何カ所か、無条件にmax=list.length()-1しているところがあった。
 * 配列アクセスの逆コンパイルで、$[]が増殖するバグをfix
 * ifの逆コンパイルでelseが余計に入るバグをfix
 * clearで存在しない単語をインデックスすると止まる(4G回のループが回る)バグ
   をfix(Thanks みずひらさん)
 * 色々ドキュメントを手直し。(Thanks みずひらさん, 
   特にcommunicateのドキュメントバグをfix(Thanks lmmさん)

2002/06/18 Phase8.0.0 RC2 patch2
 * kosuiが、カレントディレクトリのkawarirc.kisを読まないバグをfix(Thanks 
   118さん@さおりスレ , みずひらさん)
 * ついでに、デフォルトのDataPathが空になるバグをfix
 * ついでに、kawarirc.kisを読まなくする、-norcオプションを追加
 * エラーメッセージの分離/まとめ作業開始

2002/06/17 Phase8.0.0 RC2 patch1
 * 演算式の'('～')'が逆コンパイルされないバグをfix(Thanks 時乃さん)
 * name, craftmanwのリソース問い合わせに対応。オーバーライド可。(Thanks
   たくるさん)

2002/06/15 Phase8.0.0 RC2
 * ビルドのシステムを多少変更
 * kosuiの日本語メッセージ削除
 * destruct時にwriteprotectを外す
 * コンパイラの無限ループをまた一つ潰した

2002/06/06 Phase8.0.0 RC1(非公開)
 * 単語中の空白の扱いを以前と同等のものに戻す。実際の動作は以下。
  - 行頭行末の空白を削除
  - エントリ定義の':'や文デリミタ(','や';')の直後の空白を削除
  - 単語の末尾に「空白＋文デリミタ」がある場合、その空白を削除

2002/06/02 Phase8.0.0 β10.1
 * 以下のバグ/不具合を修正
  - shiori.dllの動作がどんどん遅くなるバグ
  - ASSERT_IF_PROTECTEDが名前を正しく吐かない(直したのを忘れていた)

2002/05/27 Phase8.0.0 β10
 * エントリ内検索コマンド find/rfind
 * entry操作コマンド cleartree/listsub/listtree/copy/copytree/move/movetree
 * 華和梨デバッガON/OFFコマンド debugger
 * 試験的に完全複数行モード導入。
       エントリ名 [, エントリ名 ... ] (
          文, 文,
          文, 文
       )
   という感じ。普通っぽい。丸括弧は必須。この丸括弧は、その中で、
   ','による文のセパレートが可能な点でブロックとは異なる。
 * 演算式で真偽値を"true"/"false"で出力する(仕様どおり)よう修正
 * 以下のバグ/不具合を修正
  - 演算式の結合順序に関する大バグ(Thanks みずひらさん)
  - DataPath設定バグ(Thanks こやまさん)
  - SecurityLevel設定(されない)バグ
  - readdirの結果格納バグ(Thanks 今井さん)
  - substrの引数判定バグ
  - SAORI-ClientにてGET Version時にプロトコル名が付かないバグ(Thanks 名無しさん@里々スレ)
  - ログ設定を無視して出力する部分
  - 様々なドキュメントバグ(keeps8のトークも含む)
 * ちょびっと高速化

2002/05/04 Phase8.0.0 β9.1
 * エントリ配列呼び出しで、負の値を認識していなかった。
 * Direct SSTPにより、kdb(もどき)復活。受け側にスクリプトが必要。

2002/05/02 Phase8.0.0 β9
 * コンパイラの無限ループバグをfix. 昔直した覚えがあるんだけどなー。
 * kis_reference.html。ついに終わったよー！
 * β公開開始

2002/05/01 Phase8.0.0 β8.2(非公開)
 * compare
 * textload/readdirの引数の順番を変更
 * version,craftman,shioriidのオーバーライドを許す
 * 存在しないエントリに対するリードアクセスでログを吐くケースを実用域に限定。
   loglevel decl増設。

2002/04/28 Phase8.0.0 β8.1(非公開)
 * wordcount, entrycount
 * ライセンス問題完全決着。やっと公開できる。

2002/04/27 Phase8.0.0 β8
 * System.Resource.を守ることは無意味なので、2.5リソース取得手法を
   System.Callback.OnResourceに変更.
 * foreachがバグっていた！
 * string系KISで負のインデックスを認識
 * substrの第三引数の解釈を部分文字列の長さに変更.
 * writeprotectコマンド追加
 * Logger若干修正
 * 存在しないエントリを呼び出した時にログ

2002/04/26 Phase8.0.0 β7.1
 * 文字列の逆コンパイルバグ
 * match_atのSJIS問題
 * cncpathその他のSJIS問題

2002/04/25 Phase8.0.0 β7
 * mingw版に差し替え
 * getrandomが登録されていなかった(-_-;
 * garbage collector
 * KIS_logfileの未初期化ポインタによるリロード落ちをfix.

2002/04/24 Phase8.0.0 β6
 * programming.html
 * リソースコンパイルに失敗していたので、一時的に取り外し。

2002/04/23 Phase8.0.0 β5
 * programming.html腑分け
 * さとー氏のドキュメント導入
 * ドキュメントちまちま手直し
 * ベア文字列をモード分け。強烈。
 * ついにtest, exprコマンドを削除。dllが再び300KBを切った。

2002/04/22 Phase8.0.0 β4
 * securitylevel 指定コマンド
 * insert, match_at
 * eraseは必要なかった。clearがあった。
 * MT BSDライセンス版
 * randomseed復活 -> srand
 * start.html
 * license問題対応完了。MTライセンス表記まで含めたライセンス情報は、
   ver license;で出力。もう面倒…
 * license.html

2002/04/19 Phase8.0.0 β3
 * エントリ名を読む部分の文法と実装を若干修正。
   結局$$entry[0][1]とかできるように……
 * callsaoriで落ちる件。半ばbccのバグ。
 * SHIORI/3.0対応
 * Log機能、再々度強化
 * BNF修正とそれに合わせたコンパイラの変更。
 * index.html

2002/04/17 Phase8.0.0 β2
 * SAORI Client
 * Log機能、再度強化

2002/04/15 Phase8.0.0 β1
 * 新インタプリタとPhase7.9.0をマージ。

---
#Future

##8.2(??)
 * i18n patch (Thanks whoami)

##9.0(???)
 * boost regex
 * rexpr
 ? lambda
 ? SAORI/2.0
 ? namespace
