#========================================================================
#	�ɂƂ�X�g�[���[
#	�X�e�[�W3�@VS���g
#	�ꏊ�F�_��_
#	�X�e�[�W�^�C�g��
#	   �u��q�ɂ͓O��I�ɛZ�т܂��v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,mokou,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mokou,���g_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

# 1P�ォ��o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
"I see an immortal\nperson next to me.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#�������L�������w��
,ImageDef,mokou,���g_��1,0,0
,th145_Show,mokou,-1280	,#���g�t�F�C�X�\���J�n
"Yes I am. So?\",a05x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,#�������L�������w��
,ImageDef,mokou,���g_��1,0,0
"What do you want, spirit?\",a05x2,0,0
,ClearBalloon,mokou

#�Љ�J�b�g�\���@���g�́u���g_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

#1P�ォ��o��
#,Function,GameStory_1P_In_Side(),
#,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
"Just looking for a place to stay.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#�������L�������w��
,ImageDef,mokou,���g_��1,0,0
"This is no place for a spirit like you.\",a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
"Then why do you live here?\",c11x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#�������L�������w��
,ImageDef,mokou,���g_�]1,0,0
"To protect humans from people like you.\",a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��3,0,0
"I do not attack humans.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#�������L�������w��
,ImageDef,mokou,���g_��1,0,0
"I don't buy a single thing you say. Prepare\nyourself, for I'll burn you to ashes evil spirit.\",a15x3,0,0
,ClearBalloon,mokou





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,mokou,-1280,#�������t�F�C�X�\���J�n


,SetFocus,marisa	,#�������L�������w��
"Come on, you were serious\nbecause I'm going there.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#�������L�������w��
"I won't let the humans being tormented\nby bad spirit like you.\",a15x3,0,0
,ClearBalloon,mokou


#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,mokou,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End

# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mokou,���g_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,mokou		,#�������L�������w��
"I do not allow strange beings here.\",a15x3,0,0
,ClearBalloon,mokou


,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�]1,0,0
"That's what you get for crossing the line.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa        ,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
"Well, if I can't stay here\n then where can I?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,#�������L�������w��
"You should try the Tanuki Forest.\n They are very welcoming.\",a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
"Okey\",c11x2,0,0
,ClearBalloon,marisa

,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
