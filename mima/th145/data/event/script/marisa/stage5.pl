#========================================================================
#	魔理沙ストーリー
#	ステージ7　VS神子
#	場所：異変の神社
#	ステージタイトル
#	   「悪夢の堂々巡り」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
,DefineObject,miko,-360,0,true

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
,DefineObject,miko_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,miko,神子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,marisa,-1280	,


,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普2,0,0
"So this is the\nShrine at night?\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普1,0,0
"That's strange.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_怒1,0,0
"It looks like somebody broke down a \nhuge part of the ground.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚2,0,0
"And down there you can \nsee the Outside World!\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
"But how did they breach the barrier?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
I can tell you how.\,a05x2,320,0
,ClearBalloon,miko

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,miko,-1280,

,SetFocus,miko		,
,ImageDef,miko,神子_余1,0,0
"Those orbs that you got are the \ncause of this mess.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
"And the person who made the orbs is in the \nOutside World as you already know.\",a15x3,0,0
,ClearBalloon,miko

#紹介カット表示　神子は「神子_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,miko
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
"And I'll have to take \naway those orbs.\",a11x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_嬉1,0,0
"Ha as if you will find \nit easy with me.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
,ImageDef,miko,神子_嬉1,0,0
"So what are you doin here \nnameless spirit?\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_余2,0,0
"I'm here to stop the person who caused \nall this mess with\nthe Urban Legends.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_余1,0,0
"And I'm also looking for a certain Kasen.\",a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(4000);",# BGM停止

,SetFocus,miko		,
,ImageDef,miko,神子_驚1,0,0
"Oh I see at this moment \n she is not here.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_余1,0,0
"So go away.\",a05x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_余1,0,0
"I will not go anywhere without being \nable to see that Kasen.\",a15x3,0,0
,ClearBalloon,marisa


,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,miko		,
,ImageDef,miko,神子_決1,0,0
"Very well you have wanted it \nI will force you out.\",a15x3,0,0
,ClearBalloon,miko




#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -----------------
# 戦闘中に会話が入ります（スペルカード一つ使った後くらいかな）
#
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_決1,0,0
,ImageDef,miko,神子_嬉1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,miko,-1280,#魔理沙フェイス表示開始

,SetFocus,miko		,
"I can't afford myself to let someone like \nyou make the situation\nget worse.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,#発言中キャラを指定
"Is it so hard for \nyou to defeat me?\",a15x3,0,0
,ClearBalloon,marisa

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,miko,-1280,

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
,ImageDef,miko,神子_余1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,miko,-1280	,#魔理沙フェイス表示開始

,SetFocus,miko
"And with that strength you \nthought to beat me?\",a15x3,0,0

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
,ImageDef,miko,神子_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,miko,-1280	,#魔理沙フェイス表示開始

,SetFocus,miko
"Dang it. I lost to\nan evil spirit\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa
"That's what you get for \ngetting in my way.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa
"Now if you allow me I'm \ngoing to look for Kasen.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko
"If you want to know where it is. \nThis fence just\nwaits a bit.\",a15x3,0,0
,ClearBalloon,miko

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
