#========================================================================
#	霧雨魔理沙ストーリー
#	ステージ2　VS一輪
#	場所：宝船
#	ステージタイトル
#	   「決して見上げるな」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
,DefineObject,ichirin,-360,0,true

,Return
# =========================================================

# 本編
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# 初期化ルーチン呼び出し

#開始カメラ演出
,Function,GameStory_BeginCamera();
,Sleep,2,#ウェイト命令
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(703);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_怒1,0,0
,th145_Show,marisa,-1280	,#霊夢フェイス表示開始
"I see that there is another\ntemple besides Reimu's.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚1,0,0
"Let's see if I am well received here...\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普2,0,0
"Oh, somebody is coming.\",a15x3,0,0
,ClearBalloon,marisa

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
#,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_普1,0,0
,th145_Show,ichirin,-1280	,#一輪フェイス表示開始
"And who are you?\",a15x3,0,0
,ClearBalloon,ichirin

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


# ********************************************
# ********************************************

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普1,0,0
"My name is Mima and I once an evil spirit.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_惑1,0,0
"Evil spirit...\",a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普2,0,0
"So what?\",c15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_余1,0,0
"If you are an evil spirit that means\nyou are full of sin.\",a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普1,0,0
"I'm already at peace with my evil deeds\nfrom the past.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_決1,0,0
"I don't care. I'll beat you up right\nhere so I can purify you from all evil.\",a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普2,0,0
"Fine, if that's how you want it.\",a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End

# -----------------
# 戦闘中に会話が入ります（スペルカード一つ使った後くらいかな）
#
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_決1,0,0
,ImageDef,ichirin,一輪_惑1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,ichirin,-1280,#魔理沙フェイス表示開始


,SetFocus,marisa		,#発言中キャラを指定
"I thought that a Nyuudou user would\nbe more strong than that!\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,
"I will not even show my true power.\",a15x3,0,0
,ClearBalloon,ichirin


#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,ichirin,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::対再開命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_負1,0,0
,ImageDef,ichirin,一輪_余1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,ichirin,-1280	,#魔理沙フェイス表示開始

,SetFocus,ichirin,
Welp turns out she was right.\,a15x3,0,0

,Function,"::StopBGM(1500);"
#コンテニュー処理へのジャンプを予定　現在は仮で次のステージに進んでから一つ戻る処理を行い、同ステージの最初から再開します
,Thread,"::story.BeginOpening();"#オープニング開始

,End

# -------------------------------------------------------
# 勝利
# -------------------------------------------------------
:win
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_普2,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,ichirin,-1280	,#魔理沙フェイス表示開始

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_嬉1,0,0
"Pfft, if you use brute force only,\n you'll never amount to anything.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin
"Maybe you're right.\",a05x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa
,ImageDef,marisa,魔理沙_嬉1,0,0
"Next time show a bit more trust on others.\",a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
"Well, off I go.\",a11x2,0,0
,ClearBalloon,marisa


,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# サブルーチン
# -------------------------------------------------------
:TestMessage
サブルーチン実行\
,ClearBalloon
,Return
