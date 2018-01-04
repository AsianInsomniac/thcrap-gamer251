#========================================================================
#	魔理沙ストーリー
#	ステージ5　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「本当の恐怖の国」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(707);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,marisa,魔理沙_驚2,0,0
,th145_Show,marisa,-1280	,

,SetFocus,marisa		,
"Whoa, is this the Outside World of now?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
"It is seen that the civilization of today\nhave advanced more than I expected...\",a15x3,0,0
,ClearBalloon,marisa

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,usami,菫子_嬉1,0,0
,th145_Show,usami,-1280,

,SetFocus,usami		,
"Very Well, a spirit that comes from Gensokyo.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
"I hope you do\nnot attack me...\",a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
"I already suffered enough\npunishment with this problem...\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
"I already said that I do not\nknow how to solve it...\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
"Well, I introduce myself, my\nname is Sumireko Usami.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
"I am a high school student from\nthe Higashifukami academy.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
"And an exorcist who silences\nthe crying children.\",a15x3,0,0
,ClearBalloon,usami

#紹介カット表示　菫子は「菫子_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,usami
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_余1,0,0
"And well, what are you coming to?\",a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
"I come to stop this madness\nof Urban Legends.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,菫子_怒1,0,0
"Did you hear me before?\",a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa	,
,ImageDef,marisa,魔理沙_普1,0,0
"Em, yes\",a11x2,0,0
,ClearBalloon,marisa

,Function,"StopBGM(500);",# BGM停止
,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
"But anyway I must defeat you to get a home.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,菫子_嬉1,0,0
"Your words do not serve me because my\npower is superior to normal humans.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_決1,0,0
"It's time to show you my power!\",a11x2,0,0
,ClearBalloon,usami

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End

# -----------------
# 戦闘中に会話が入ります（スペルカード一つ使った後くらいかな）
#
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_決1,0,0
,ImageDef,usami,菫子_決1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,usami,-1280,#魔理沙フェイス表示開始

,SetFocus,usami		,
"You already made me angry,\nI prepared!\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
"If you say it, for me\nthere is no problem.\",a11x2,0,0
,ClearBalloon,marisa

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,usami,-1280,

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
,ImageDef,usami,菫子_余1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,usami,-1280	,#魔理沙フェイス表示開始

,SetFocus,usami
"That happens to you because I trusted spirit.\",a15x3,0,0

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
,ImageDef,marisa,魔理沙_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,usami,-1280	,#魔理沙フェイス表示開始

,SetFocus,usami
本文\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#オープニング開始

,End

# -------------------------------------------------------
# サブルーチン
# -------------------------------------------------------
:TestMessage
サブルーチン実行\
,ClearBalloon
,Return
