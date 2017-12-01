CREATE OR REPLACE VIEW DM_ORD_PL AS
SELECT
  '����' AS �v����ы敪
  , TRJ.KI_KBN AS ���敪
  , MC.YM_NM  AS �N��
  , MC.HLF_NM AS ����
  , MC.QRT_NM AS �l����
  , TRJ.ORG_CD AS �g�D�R�[�h
  , TRJ.ORG_NM AS �g�D��
  , TRJ.ORD_CD AS �I�[�_�R�[�h
  , TRJ.ORD_NM AS �I�[�_��
  , MOK.MKT_KBN AS �}�[�P�b�g�敪
  , TRJ.TKI_CD AS �����R�[�h
  , TRJ.TKI_NM AS ����於
  , TRJ.JCU_KKD AS �󒍊m�x
  , TRJ.TKN_KBN AS ���ԋ敪
  , TRJ.JCU_KIN_SEN AS �󒍋��z
  , TRJ.URI_KIN_SEN AS ������z
  , TRJ.KYK_KEN_KIN_SEN AS �ڋq�����z
  , TRJ.TYK_JNK_KIN_SEN AS ���ڐl����
  , TRJ.TYK_KEI_KIN_SEN AS ���ڌo��
  , TRJ.TYK_GAI_KIN_SEN AS ���ڊO����
  , TRJ.KAN_JNK_KIN_SEN AS �Ԑڐl����
  , TRJ.KAN_GAI_KIN_SEN AS �ԐڊO����
  , TRJ.KAN_KEI_KIN_SEN AS �Ԑڌo��
  , TRJ.KIS_SIK_KIN_SEN AS ����d�|
  , TRJ.KIM_SIK_KIN_SEN AS �����d�|
  , TRJ.SZO_GEN_KIN_SEN AS ��������
  , TRJ.URI_REK_KIN_SEN AS ���㑍���v
FROM
  TRN_REK_JSK TRJ
  INNER JOIN DSS1_2.MST_CAL MC
    ON TRJ.KI_KBN = MC.KI_KBN 
    AND TRJ.MON_DT = MC.MON_DT
  INNER JOIN MST_ORD_KBN MOK
  ON MOK.PLN_JSK_KBN = '����'
  AND TRJ.KI_KBN = MOK.KI_KBN
  AND TRJ.ORD_CD = MOK.ORD_CD
UNION ALL
SELECT
  '�\�Z' AS �v����ы敪
  , TRJ.KI_KBN AS ���敪
  , MC.YM_NM  AS �N��
  , MC.HLF_NM AS ����
  , MC.QRT_NM AS �l����
  , TRJ.ORG_CD AS �g�D�R�[�h
  , TRJ.ORG_NM AS �g�D��
  , TRJ.ORD_CD AS �I�[�_�R�[�h
  , TRJ.ORD_NM AS �I�[�_��
  , MOK.MKT_KBN AS �}�[�P�b�g�敪
  , TRJ.TKI_CD AS �����R�[�h
  , TRJ.TKI_NM AS ����於
  , TRJ.JCU_KKD AS �󒍊m�x
  , TRJ.TKN_KBN AS ���ԋ敪
  , TRJ.JCU_KIN_SEN AS �󒍋��z
  , TRJ.URI_KIN_SEN AS ������z
  , TRJ.KYK_KEN_KIN_SEN AS �ڋq�����z
  , TRJ.TYK_JNK_KIN_SEN AS ���ڐl����
  , TRJ.TYK_KEI_KIN_SEN AS ���ڌo��
  , TRJ.TYK_GAI_KIN_SEN AS ���ڊO����
  , TRJ.KAN_JNK_KIN_SEN AS �Ԑڐl����
  , TRJ.KAN_GAI_KIN_SEN AS �ԐڊO����
  , TRJ.KAN_KEI_KIN_SEN AS �Ԑڌo��
  , TRJ.KIS_SIK_KIN_SEN AS ����d�|
  , TRJ.KIM_SIK_KIN_SEN AS �����d�|
  , TRJ.SZO_GEN_KIN_SEN AS ��������
  , TRJ.URI_REK_KIN_SEN AS ���㑍���v
FROM
  TRN_REK_PLN TRJ
  INNER JOIN DSS1_2.MST_CAL MC
    ON TRJ.KI_KBN = MC.KI_KBN 
    AND TRJ.MON_DT = MC.MON_DT
  INNER JOIN MST_ORD_KBN MOK
  ON MOK.PLN_JSK_KBN = '�\�Z'
  AND TRJ.KI_KBN = MOK.KI_KBN
  AND TRJ.ORD_CD = MOK.ORD_CD
