CREATE OR REPLACE VIEW DM_ORD_PL AS
SELECT
  '実績' AS 計画実績区分
  , TRJ.KI_KBN AS 期区分
  , MC.YM_NM  AS 年月
  , MC.HLF_NM AS 半期
  , MC.QRT_NM AS 四半期
  , TRJ.ORG_CD AS 組織コード
  , TRJ.ORG_NM AS 組織名
  , TRJ.ORD_CD AS オーダコード
  , TRJ.ORD_NM AS オーダ名
  , MOK.MKT_KBN AS マーケット区分
  , TRJ.TKI_CD AS 取引先コード
  , TRJ.TKI_NM AS 取引先名
  , TRJ.JCU_KKD AS 受注確度
  , TRJ.TKN_KBN AS 直間区分
  , TRJ.JCU_KIN_SEN AS 受注金額
  , TRJ.URI_KIN_SEN AS 売上金額
  , TRJ.KYK_KEN_KIN_SEN AS 顧客検収額
  , TRJ.TYK_JNK_KIN_SEN AS 直接人件費
  , TRJ.TYK_KEI_KIN_SEN AS 直接経費
  , TRJ.TYK_GAI_KIN_SEN AS 直接外注費
  , TRJ.KAN_JNK_KIN_SEN AS 間接人件費
  , TRJ.KAN_GAI_KIN_SEN AS 間接外注費
  , TRJ.KAN_KEI_KIN_SEN AS 間接経費
  , TRJ.KIS_SIK_KIN_SEN AS 期首仕掛
  , TRJ.KIM_SIK_KIN_SEN AS 期末仕掛
  , TRJ.SZO_GEN_KIN_SEN AS 製造原価
  , TRJ.URI_REK_KIN_SEN AS 売上総利益
FROM
  TRN_REK_JSK TRJ
  INNER JOIN DSS1_2.MST_CAL MC
    ON TRJ.KI_KBN = MC.KI_KBN 
    AND TRJ.MON_DT = MC.MON_DT
  INNER JOIN MST_ORD_KBN MOK
  ON MOK.PLN_JSK_KBN = '実績'
  AND TRJ.KI_KBN = MOK.KI_KBN
  AND TRJ.ORD_CD = MOK.ORD_CD
UNION ALL
SELECT
  '予算' AS 計画実績区分
  , TRJ.KI_KBN AS 期区分
  , MC.YM_NM  AS 年月
  , MC.HLF_NM AS 半期
  , MC.QRT_NM AS 四半期
  , TRJ.ORG_CD AS 組織コード
  , TRJ.ORG_NM AS 組織名
  , TRJ.ORD_CD AS オーダコード
  , TRJ.ORD_NM AS オーダ名
  , MOK.MKT_KBN AS マーケット区分
  , TRJ.TKI_CD AS 取引先コード
  , TRJ.TKI_NM AS 取引先名
  , TRJ.JCU_KKD AS 受注確度
  , TRJ.TKN_KBN AS 直間区分
  , TRJ.JCU_KIN_SEN AS 受注金額
  , TRJ.URI_KIN_SEN AS 売上金額
  , TRJ.KYK_KEN_KIN_SEN AS 顧客検収額
  , TRJ.TYK_JNK_KIN_SEN AS 直接人件費
  , TRJ.TYK_KEI_KIN_SEN AS 直接経費
  , TRJ.TYK_GAI_KIN_SEN AS 直接外注費
  , TRJ.KAN_JNK_KIN_SEN AS 間接人件費
  , TRJ.KAN_GAI_KIN_SEN AS 間接外注費
  , TRJ.KAN_KEI_KIN_SEN AS 間接経費
  , TRJ.KIS_SIK_KIN_SEN AS 期首仕掛
  , TRJ.KIM_SIK_KIN_SEN AS 期末仕掛
  , TRJ.SZO_GEN_KIN_SEN AS 製造原価
  , TRJ.URI_REK_KIN_SEN AS 売上総利益
FROM
  TRN_REK_PLN TRJ
  INNER JOIN DSS1_2.MST_CAL MC
    ON TRJ.KI_KBN = MC.KI_KBN 
    AND TRJ.MON_DT = MC.MON_DT
  INNER JOIN MST_ORD_KBN MOK
  ON MOK.PLN_JSK_KBN = '予算'
  AND TRJ.KI_KBN = MOK.KI_KBN
  AND TRJ.ORD_CD = MOK.ORD_CD
