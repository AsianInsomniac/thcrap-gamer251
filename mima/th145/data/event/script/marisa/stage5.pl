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
"So this is the\nShrine at night?\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"That's strange.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_�{1,0,0
"It looks like somebody broke down a \nhuge part of the ground.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"And down there you can \nsee the Outside World!\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"But how did they breach the barrier?\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
I can tell you how.\,a05x2,320,0
,ClearBalloon,miko

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,miko,-1280,

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
"Those orbs that you got are the \ncause of this mess.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"And the person who made the orbs is in the \nOutside World as you already know.\",a15x3,0,0
,ClearBalloon,miko

#�Љ�J�b�g�\���@�_�q�́u�_�q_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,miko
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"And I'll have to take \naway those orbs.\",a11x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Ha as if you will find \nit easy with me.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"So what are you doin here \nnameless spirit?\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_�]2,0,0
"I'm here to stop the person who caused \nall this mess with\nthe Urban Legends.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
"And I'm also looking for a certain Kasen.\",a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(4000);",# BGM��~

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"Oh I see at this moment \n she is not here.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,�_�q_�]1,0,0
"So go away.\",a05x2,0,0
,ClearBalloon,miko

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
"I will not go anywhere without being \nable to see that Kasen.\",a15x3,0,0
,ClearBalloon,marisa


,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,miko		,
,ImageDef,miko,�_�q_��1,0,0
"Very well you have wanted it \nI will force you out.\",a15x3,0,0
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
"I can't afford myself to let someone like \nyou make the situation\nget worse.\",a15x3,0,0
,ClearBalloon,miko

,SetFocus,marisa		,#�������L�������w��
"Is it so hard for \nyou to defeat me?\",a15x3,0,0
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
"And with that strength you \nthought to beat me?\",a15x3,0,0

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
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
