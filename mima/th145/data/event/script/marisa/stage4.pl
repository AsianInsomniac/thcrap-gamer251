#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W4�@VS�ؐ�
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�I�J���g�{�[���̐^���v
#
# �ŏ��́A��̐_�Ђŉ�b�̓r���Ŕw�i���ω����܂�
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,mamizou,-360,0,true

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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mamizou,�}�~�]�E_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,marisa,-1280	,,#�������t�F�C�X�\���J�n

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Phew, finally a place where I can relax a bit.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
"I hope they'll let me.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"I just want to live in peace among the people.\",a15x3,0,0
,ClearBalloon,marisa

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,th145_Show,mamizou,-1280	,,#�j���ۃt�F�C�X�\���J�n

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"Well, what do we have here. A\npeace-seeking spirit.\",a15x3,0,0
,ClearBalloon,mamizou

#�Љ�J�b�g�\���@�}�~�]�E�́u�}�~�]�E_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"I see you're looking\nfor a place to lodge.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
"How do you know\nthat? Were you\nlistening to me?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"Actually, yes. That's why I'm here.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"I'll let you stay at our place\nonly under the following conditions.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
"First: You must defeat me.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"Second: You must go to the outside world and\nbeat the person that caused all of this.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Deal. Defeating you would be easy.\",a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(500);",# BGM��~
,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"Ok, let the battle begin.\",a15x3,0,0
,ClearBalloon,mamizou

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,mamizou,-1280,

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



 -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,mamizou,�}�~�]�E_�{1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,mamizou,-1280,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
"This is being easy.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
"That was just the beginning.\",a15x3,0,0
,ClearBalloon,mamizou


#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,mamizou,-1280,

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
,ImageDef,mamizou,�}�~�]�E_�f1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,mamizou
"Come on, I know you can win against me.\",a15x3,0,0

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
,ImageDef,mamizou,�}�~�]�E_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,mamizou,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,
"There, I won. Now tell me where is tha\nperson I must beat.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
"Go to the Hakurei Shrine and talk to Kasen. She'll help\nyou get to the Outside World.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
"How does she look?\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
"She's a pink haired hermit. You'll\nrecognize her immediately.\",a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
"Good luck with the\nsecond condition.\",a15x3,0,0
,ClearBalloon,mamizou








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
