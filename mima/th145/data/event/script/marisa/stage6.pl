#========================================================================
#	�}�~�]�E�X�g�[���[
#	�X�e�[�W4�@VS�ؐ�
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�����܂Ŗ{�C�������K�v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#�t�F�C�X�摜
,DefineObject,mamizou,-360,0,false
,DefineObject,kasen,-360,0,true

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
,DefineObject,mamizou_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,mamizou,�}�~�]�E_�{1,0,0
,th145_Show,mamizou,-1280	,

,SetFocus,mamizou		,
�Ȃ����\n����͎�̍��񂾃{�[����̂�\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�O�̐��E�̐��n�̐΂�\n�W�߂����̂���\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
������p���[�X�g�[��\n�Ƃ����z�����\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�f1,0,0
�R�����g���ΒN������\n���E��j�邱�Ƃ��o����\,a11x2,0,0
,ClearBalloon,mamizou

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,ImageDef,kasen,�ؐ�_�{2,0,0
,th145_Show,kasen,-1280,

,SetFocus,kasen		,
�c�c�������Ă���\n�܂������O\,a11x2,0,0
,ClearBalloon,kasen


#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�������Ă���������\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�f1,0,0
�����ɂ�����\n��l�������Ă�ƌ������̂�\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�ʓ|���ƂɊ������܂ꂽ���Ȃ�\n�Ƃ��������Ă��̂�\n�t�F�C�N��������\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���O����\n�N�𕎂��Ă��Ȃ������H\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
����ȃ{�[�������Ă�\n�O�̐��E�ƍs�������邱��\n���炢���R���݂̙N����\,a15x3,0,0
,ClearBalloon,mamizou

,Function,"StopBGM(500);",# BGM��~

,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
����ȏ�͌������Ȃ���\n���O�͊��X�Ƃ��ĊO�̐��E��\n�߂��Ă��������ɂ��Ă�낤\,a15x3,0,0
,ClearBalloon,kasen



#���҃t�F�C�X�P��
,th145_Hide,mamizou,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

,SetFocus,kasen
���Ə�����l�������Ă�����\n㩂���������\,a15x3,0,0

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
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,kasen,�ؐ�_�{1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#�}�~�]�E�t�F�C�X�\���J�n


,SetFocus,mamizou		,
��Ȃ���Ȃ�\n����ȏ��ł�����΂��鎖��\n�Ȃ鏊�������\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�S�z�����\n�����̊�݂͗\�z�t���Ă���\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�{1,0,0
�c�c\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�I�J���g�{�[���̎d�|���l��\n�O�̐��E�ɋ���񂶂��\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�c�c�I\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
�����炻�̂܂܂ł�\n�܂Ƃ��Ɏ肪�o���Ȃ�\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�����Ő�����\n���z���ɗU���񂹂悤�Ƃ��Ă�\n���ď�����Ȃ����ˁH\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�悭���������\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�얲�Ɩ������̗l�q����������\n�̂����ĉ����閧���Ƃ�����\n�Ǝv�����񂶂�\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���̓�l�ɂ�\n���͂����Ă���񂶂��H\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�@1,0,0
���̓�l�͓G�����z����\n�������荞��ł����\n�Ō�̎��s�����̗\���\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�Ȃ����\n����œ�l�̓{�[���W�߂�\n���S���ĂȂ��̂�\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�f1,0,0
�����ǂ����\n�댯�ȓq�ɂȂ�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�����ȗ��R������Ƃ͂���\n���z���̃��[����j�邱�Ƃ�\n�Ȃ�񂾂����\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���������\n�O�̐��E�ł̎��s������\n�N������Ă�낤\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�́H\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���傶�Ⴀ�A�O�Ƃ̊���\n�o�����Ƃ��ɂ���ʋ^����\n�|�����邶��낤��\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
�N�Ȃ牽�������Ă�\n���C���Ⴉ���\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
�Ȃ��ɊO�̐��E�̎���\n�N����Ԃ悭�m���Ă���\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���̃{�[�����g����\n�t��㩂��d�|���Ă�邼��\,a11x2,0,0
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
