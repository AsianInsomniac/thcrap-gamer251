#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W2�@VS���
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u�����Č��グ��ȁv
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,ichirin,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�{1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
"I see that there is another\ntemple besides Reimu's.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
"Let's see if I am well received here...\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
"Oh, somebody is coming.\",a15x3,0,0
,ClearBalloon,marisa

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
#,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
,th145_Show,ichirin,-1280	,#��փt�F�C�X�\���J�n
"And who are you?\",a15x3,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


# ********************************************
# ********************************************

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
"My name is Mima and I once an evil spirit.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�f1,0,0
"Evil spirit...\",a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
"So what?\",c15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�]1,0,0
"If you are an evil spirit that means\nyou are full of sin.\",a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
"I'm already at peace with my evil deeds\nfrom the past.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
"I don't care. I'll beat you up right\nhere so I can purify you from all evil.\",a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
"Fine, if that's how you want it.\",a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,ichirin,���_�f1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
"I thought that a Nyuudou user would\nbe more strong than that!\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,
"I will not even show my true power.\",a15x3,0,0
,ClearBalloon,ichirin


#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,ichirin,-1280,

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
,ImageDef,ichirin,���_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,ichirin,
Welp turns out she was right.\,a15x3,0,0

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
,ImageDef,marisa,������_��2,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Pfft, if you use brute force only,\n you'll never amount to anything.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin
"Maybe you're right.\",a05x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa
,ImageDef,marisa,������_��1,0,0
"Next time show a bit more trust on others.\",a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Well, off I go.\",a11x2,0,0
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
