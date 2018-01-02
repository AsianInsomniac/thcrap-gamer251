#========================================================================
#	�������X�g�[���[
#	�X�e�[�W5�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u�{���̋��|�̍��v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(707);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,marisa,������_��2,0,0
,th145_Show,marisa,-1280	,

,SetFocus,marisa		,
"Whoa, is this the Outside World of now?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"It is seen that the civilization of today\nhave advanced more than I expected...\",a15x3,0,0
,ClearBalloon,marisa

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,usami,俎q_��1,0,0
,th145_Show,usami,-1280,

,SetFocus,usami		,
"Very Well, a spirit that comes from Gensokyo.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"I hope you do\nnot attack me...\",a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"I already suffered enough\npunishment with this problem...\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
"I already said that I do not\nknow how to solve it...\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"Well, I introduce myself, my\nname is Sumireko Usami.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"I am a high school student from\nthe Higashifukami academy.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"And an exorcist who silences\nthe crying children.\",a15x3,0,0
,ClearBalloon,usami

#�Љ�J�b�g�\���@俎q�́u俎q_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,usami
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_�]1,0,0
"And well, what are you coming to?\",a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"I come to stop this madness\nof Urban Legends.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,俎q_�{1,0,0
"Did you hear me before?\",a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa	,
,ImageDef,marisa,������_��1,0,0
"Em, yes\",a11x2,0,0
,ClearBalloon,marisa

,Function,"StopBGM(500);",# BGM��~
,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"But anyway I must defeat you to get a home.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"Your words do not serve me because my\npower is superior to normal humans.\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
"It's time to show you my power!\",a11x2,0,0
,ClearBalloon,usami

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280,#�������t�F�C�X�\���J�n

,SetFocus,usami		,
"You already made me angry,\nI prepared!\",a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
"If you say it, for me\nthere is no problem.\",a11x2,0,0
,ClearBalloon,marisa

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,usami,-1280,

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
,ImageDef,usami,俎q_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,usami
"That happens to you because I trusted spirit.\",a15x3,0,0

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
,ImageDef,usami,俎q_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,usami
�{��\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
