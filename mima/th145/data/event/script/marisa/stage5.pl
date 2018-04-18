#========================================================================
#	�������X�g�[���[
#	�X�e�[�W4�@VS�_�q
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u���ɂ�����̕s���ҁv
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,miko,-360,0,true

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

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,miko_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,miko,�_�q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,th145_Show,marisa,-1280	

,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
"So this is the Shrine at night?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"That's strange.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"It looks like somebody broke\ndown a huge part of the ground.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"And down there you can\nsee the Outside World!\",a15x3,0,0
,ClearBalloon,marisa

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"But how did they breach the barrier?\",a15x3,0,0
,ClearBalloon,marisa



,ImageDef,miko,�_�q_�{1,0,0
,th145_Show,miko,-1280	,

,SetFocus,miko		,
"I can tell you how.\",a11x2,0,0
,ClearBalloon,miko

#�Љ�J�b�g�\���@�_�q�́u�_�q_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,miko
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
"Those orbs that you got are\nthe cause of this mess.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"And the person who made the orbs is in\nthe Outside World, as you\nalready know.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��2,0,0
"And, I'll have to take away\nthose occultists balls.\",a11x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Ha, as if you will\nfind it easy with me.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"So, what are you doin here, nameless spirit?\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"I'm here to stop the person who caused\nall this mess\nwith the Urban Legends.\",a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(2000);",# BGM��~

,SetFocus,miko		,
,ImageDef,miko,�_�q_�f1,0,0
"Oh, I see\",a11x2,0,0
,ClearBalloon,miko

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,marisa	,
,ImageDef,marisa,������_��2,0,0
"Come on. Will I have to use force.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"Do what you must, if you dare.\",a11x2,0,0
,ClearBalloon,miko

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,miko,�_�q_��1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,miko,-1280,#�������t�F�C�X�\���J�n

,SetFocus,miko		,
"I can't afford myself to let someone like\nyou make  the situation get worse.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
"Is it so hard for you to defeat me?\",a11x2,0,0
,ClearBalloon,marisa

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,miko,-1280,

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
,ImageDef,miko,�_�q_�{1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,miko
"With that little force you were expecting\nto beat the maker of the occult orbs?\",a15x3,0,0

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
,ImageDef,miko,�_�q_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,miko		,
"Dang it. I lost to an evil spirit.\",a11x2,0,0
,ClearBalloon,miko

,SetFocus,marisa	,
,ImageDef,marisa,������_��2,0,0
"That's what you get for\ngetting in my way\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"Now, if you may, I'm off to\ndefeat the occult orbs maker.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"(Good, she took the bait. I hope\nshe comes back in one piece)\",a15x3,0,0
,ClearBalloon,miko


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
