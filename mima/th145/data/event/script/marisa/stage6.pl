#========================================================================
#	俎q�X�g�[���[
#	�X�e�[�W6�@VS���g
#	�ꏊ�F�|��
#	�X�e�[�W�^�C�g��
#	   �u���̍Č���v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#�t�F�C�X�摜
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,usami_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,mokou,���g_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,usami,-1280	,

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���[��H\n���ɖ������݂���\,a11x2,0,0
,ClearBalloon,usami

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,th145_Show,mokou,-1280,

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���A���O�͂��̎���\n�O�̐l�Ԃ���Ȃ����I\,a11x2,0,0
,ClearBalloon,mokou

#�Љ�J�b�g�\���@���g�́u���g_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���A���v���Ԃ�[�I\n�ǂ��������A�m���Ă�l��\n�o�������[\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�����������̑�����\n�������̂��H\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���A���⍡��\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���O���������ɋ�����\n���Ԃ͋͂����낤\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�������Ǝn�߂邼�I\,a11x2,0,0
,ClearBalloon,mokou


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,mokou,���g_�]1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,mokou
�艞����������\n���z���̋�C������Ȃ���\,a15x3,0,0

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
,ImageDef,usami,俎q_��1,0,0
,ImageDef,usami,俎q_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,usami		,
�ӂ��[\n�ʂɐ킢�Ƃ����������ł�\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����A�肽����ł���\n�A���������Ȃ���ł�\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�͂͂�\n����Ⴛ�����낤��\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
�ցH\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
���������̒|�т�\n�N�����Ė����悤��\n�􂢂��|�����Ă����\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���ē����Ă���\n�����Ɍ������Ηǂ��񂾂��H\,a15x3,0,0
,ClearBalloon,mokou

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
