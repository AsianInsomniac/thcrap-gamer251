#========================================================================
#	�������X�g�[���[
#	�X�e�[�W7�@VS�_�q
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�����̓��X����v
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


,th145_Show,marisa,-1280	,


,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
a\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
b\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
c\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
d\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
e\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
g\,a05x2,320,0
,ClearBalloon,miko

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,miko,-1280,

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
h\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
i\,a15x3,0,0
,ClearBalloon,miko

#�Љ�J�b�g�\���@�_�q�́u�_�q_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,miko
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
j\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
k\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
l\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
o\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
p\,a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(4000);",# BGM��~

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
q\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
r\,a05x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
t\,a15x3,0,0
,ClearBalloon,marisa


,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
u\,a15x3,0,0
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
w\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,#�������L�������w��
x\,a15x3,0,0
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
,ImageDef,miko,�_�q_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,miko
a\,a15x3,0,0

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
z\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
a\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
b\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
c\,a15x3,0,0
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
