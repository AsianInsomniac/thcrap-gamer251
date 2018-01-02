#========================================================================
#	にとりストーリー
#	ステージ3　VS妹紅
#	場所：神霊廟
#	ステージタイトル
#	   「上客には徹底的に媚びます」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
,DefineObject,mokou,-360,0,true

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

,Function,"GameStory_PlayBGM(704);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2Pキャラステージ下から登場
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

# 1P上から登場
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普2,0,0
,th145_Show,marisa,-1280	,#霊夢フェイス表示開始
"I see an immortal\nperson next to me.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#発言中キャラを指定
,ImageDef,mokou,妹紅_汗1,0,0
,th145_Show,mokou,-1280	,#妹紅フェイス表示開始
"Yes I am. So?\",a05x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,#発言中キャラを指定
,ImageDef,mokou,妹紅_普1,0,0
"What do you want, spirit?\",a05x2,0,0
,ClearBalloon,mokou

#紹介カット表示　妹紅は「妹紅_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

#1P上から登場
#,Function,GameStory_1P_In_Side(),
#,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普2,0,0
"Just looking for a place to stay.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#発言中キャラを指定
,ImageDef,mokou,妹紅_汗1,0,0
"This is no place for a spirit like you.\",a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_決1,0,0
"Then why do you live here?\",c11x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#発言中キャラを指定
,ImageDef,mokou,妹紅_余1,0,0
"To protect humans from people like you.\",a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚3,0,0
"I do not attack humans.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#発言中キャラを指定
,ImageDef,mokou,妹紅_決1,0,0
"I don't buy a single thing you say. Prepare\nyourself, for I'll burn you to ashes evil spirit.\",a15x3,0,0
,ClearBalloon,mokou





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End

# -----------------
# 戦闘中に会話が入ります（スペルカード一つ使った後くらいかな）
#
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,mokou,-1280,#魔理沙フェイス表示開始


,SetFocus,marisa	,#発言中キャラを指定
"Come on, you were serious\nbecause I'm going there.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#発言中キャラを指定
"I won't let the humans being tormented\nby bad spirit like you.\",a15x3,0,0
,ClearBalloon,mokou


#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,mokou,-1280,

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
,ImageDef,mokou,妹紅_余1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,mokou,-1280	,#魔理沙フェイス表示開始

,SetFocus,mokou		,#発言中キャラを指定
"I do not allow strange beings here.\",a15x3,0,0
,ClearBalloon,mokou


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
,ImageDef,marisa,魔理沙_汗1,0,0
,ImageDef,mokou,妹紅_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,mokou,-1280	,#魔理沙フェイス表示開始


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_余1,0,0
"That's what you get for crossing the line.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa        ,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普2,0,0
"Well, if I can't stay here\n then where can I?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#発言中キャラを指定
"You should try the Tanuki Forest.\n They are very welcoming.\",a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_決1,0,0
"Okey\",c11x2,0,0
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
