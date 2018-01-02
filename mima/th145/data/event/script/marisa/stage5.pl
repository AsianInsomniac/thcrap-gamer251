#========================================================================
#	魔理沙ストーリー
#	ステージ4　VS華扇
#	場所：異変の神社
#	ステージタイトル
#	   「死にたがりの不死者」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
,DefineObject,kasen,-360,0,true

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

,Function,"GameStory_PlayBGM(705);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,marisa,-1280,


,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_怒1,0,0
"So this is the Shrine at night?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普2,0,0
"That's strange.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普2,0,0
"It looks like somebody broke\ndown a huge part of the ground.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚2,0,0
"And down there you can\nsee the Outside World!\",a15x3,0,0
,ClearBalloon,marisa

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚2,0,0
"But how did they breach the barrier?\",a15x3,0,0
,ClearBalloon,marisa



,ImageDef,kasen,華扇_怒1,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,
"I can tell you how.\",a11x2,0,0
,ClearBalloon,kasen

#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,kasen		,
,ImageDef,kasen,華扇_余1,0,0
"Those orbs that you got are\nthe cause of this mess.\",a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
"And the person who made the orbs is in\nthe Outside World, as you\nalready know.\",a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普2,0,0
"Although it's being controlle\nby the lunarians.\",a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_汗1,0,0
"Marisa herself told me all of this.\",a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,魔理沙_驚1,0,0
"So, what are you doin here, nameless spirit?\",a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
"I'm here to stop the person who caused\nall this mess\nwith the Urban Legends.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普1,0,0
"Also, to complete Mamizou's challenge while I'm at it.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
"Oh, I see\",a11x2,0,0
,ClearBalloon,kasen

,Function,"StopBGM(2000);",# BGM停止

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
"Being Mamizou's challenge or not, I\nwon't let any spirit to pass\nthrough here.\",a15x3,0,0
,ClearBalloon,kasen

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,marisa	,
,ImageDef,marisa,魔理沙_普2,0,0
"Come on. Will I have to use force.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
"Do what you must, if you dare.\",a11x2,0,0
,ClearBalloon,kasen

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End

# -----------------
# 戦闘中に会話が入ります（スペルカード一つ使った後くらいかな）
#
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_決1,0,0
,ImageDef,kasen,華扇_汗1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280,#魔理沙フェイス表示開始

,SetFocus,kasen		,
"I can't afford myself to let someone like\nyou make  the situation get worse.\",a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,
"Is it so hard for you to defeat me?\",a11x2,0,0
,ClearBalloon,marisa

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,

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
,ImageDef,kasen,華扇_怒1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280	,#魔理沙フェイス表示開始

,SetFocus,kasen
"With that little force you were expecting\nto beat the maker of the occult orbs?\",a15x3,0,0

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
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,kasen,華扇_驚1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280	,#魔理沙フェイス表示開始

,SetFocus,kasen		,
"Dang it. I lost to an evil spirit.\",a11x2,0,0
,ClearBalloon,kasen

,SetFocus,marisa	,
,ImageDef,marisa,魔理沙_普2,0,0
"That's what you get for\ngetting in my way\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普2,0,0
"Now, if you may, I'm off to\ndefeat the occult orbs maker.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
"(Good, she took the bait. I hope\nshe comes back in one piece)\",a15x3,0,0
,ClearBalloon,kasen


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
