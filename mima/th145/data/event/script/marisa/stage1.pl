#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W�P�@VS�얲
#	�ꏊ�F�_��
#	�X�e�[�W�^�C�g��
#	   �u������߂�͏o���Ȃ��v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,reimu,-360,0,true

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
,DefineObject,marisa_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 1P�ォ��o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
a\,a11x2,0,0
,ImageDef,marisa,������_��3,0,0
b\,a15x3,0,0
,ClearBalloon,marisa


,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_��1,0,0
,th145_Show,reimu,-1280	,#�얲�t�F�C�X�\���J�n
c\,a15x3,0,0
,ImageDef,reimu,�얲_�G2,0,0
d\,a15x3,0,0
,ClearBalloon,reimu


#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

,SetFocus,marisa,
,ImageDef,marisa,������_��1,0,0
e\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu,
,ImageDef,reimu,�얲_�f1,0,0
f\,c11x2,0,0
,ImageDef,reimu,�얲_��2,0,0
g\,a11x2,0,0
,ImageDef,reimu,�얲_�f1,0,0
h\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa,
,ImageDef,marisa,������_��1,0,0
i\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu,
,ImageDef,reimu,�얲_�{1,0,0
j\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa,
,ImageDef,marisa,������_��2,0,0
k\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu,
,ImageDef,reimu,�얲_��1,0,0
l\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa,
,ImageDef,marisa,������_��1,0,0
o\,a15x3,0,0
,ClearBalloon,marisa


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
p\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
q\,a15x3,0,0
,ClearBalloon,reimu


#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,reimu,-1280,

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
,ImageDef,reimu,�얲_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
r\,a11x2,0,0
,ClearBalloon,reimu



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
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
t\,a15x3,0,0
,ImageDef,marisa,������_��2,0,0
u\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
w\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
x\,a15x3,0,0
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
