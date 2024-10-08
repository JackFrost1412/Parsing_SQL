SELECT 
	CST_ID,
	CST_DIM_ID,
	TM_PRD_DIM_ID,
	CST_TP_DIM_ID, 
	ORG_UNIT_DIM_ID,
	COUNT(DISTINCT CASE WHEN PD_DIM.PD_CODE NOT LIKE  'SA%'   AND SRC.LVL_0_CODE = 'SIBS_DDMAST'  AND TKTL.PDCODE IS NULL  THEN F.PD_ID END)   NBR_PD_TGTT,
    COUNT(DISTINCT CASE WHEN TKTL.PDCODE IS NOT NULL THEN PD_DIM.PD_ID END)		NBR_PD_TKTL,
    COUNT(DISTINCT CASE WHEN src.LVL_0_CODE = 'SIBS_CDMAST'  THEN F.PD_ID END)	NBR_PD_TGCKH,
    COUNT(DISTINCT CASE WHEN src.LVL_0_CODE = 'SIBS_LNMAST'  THEN F.PD_ID END)	NBR_PD_LOAN,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('BSMS_BALANCESERVICES') THEN F.PD_ID END)	NBR_PD_BSMS,      COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('BIDVCORP_OD_CORPORATE_PROFILE_MB','DFCORE_OD_USERS_MB' ) THEN F.PD_ID END)	NBR_PD_IB,    
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('BIDVCSAM_WSC_USER_DETAIL' ) THEN F.PD_ID END)	NBR_PD_MB,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('TTHDOL_CUSTOMER_SMS') THEN F.PD_ID END)	NBR_PD_VNTOPUP,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('TTHDOL_CUSTOMER') THEN F.PD_ID END)	NBR_PD_TTHD,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('TTHDOL_CUSTOMER_BANKPLUS') THEN F.PD_ID END)	NBR_PD_BANKPLUS, 
    COUNT(DISTINCT CASE WHEN CARD.CARD_TP_ACQ_LVL_2_CODE = 'VISA'  THEN F.PD_ID END)	NBR_PD_VISA,
    COUNT(DISTINCT CASE WHEN CARD.CARD_TP_ACQ_LVL_2_CODE = 'MC'  THEN F.PD_ID END)		NBR_PD_MASTER,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE = 'TTLTT_CUSTOMERS' OR SRC.LVL_0_CODE = 'TTBK_CUSTOMERS' OR F.SLRY_CR_TXN_IND = 'Y' THEN F.PD_ID END)		NBR_PD_TTL,
    COUNT(DISTINCT CASE WHEN F.NBR_OF_OD_AC > 0  THEN F.PD_ID END)		NBR_PD_ODTIER,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE = 'DATATM_X1PCMS' THEN F.PD_ID END)		NBR_PD_ATM,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE='MB_CUSTOMER' THEN F.PD_ID END ) NBR_PD_SMB,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE='IB_CUSTOMER' THEN F.PD_ID END) NBR_PD_IBANK

FROM 	CST_PD_ANL_FCT_DAILY F
INNER JOIN PD_DIM ON PD_DIM.PD_DIM_ID = F.PD_DIM_ID 
INNER JOIN SRC_STM_DIM SRC ON SRC.SRC_STM_DIM_ID = F.SRC_STM_DIM_ID 
LEFT JOIN CSTB_PD_TKTL TKTL ON TKTL.PDCODE ||'_'||TKTL.PDCURR = PD_DIM.UNQ_ID_SRC_STM AND PD_DIM.PD_TP_CODE = 'DD_PRODUCT'
AND TKTL.EFF_DT <= TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD') AND TKTL.END_DT > TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD')
LEFT JOIN EX_MAP_CARD_TP_ACQ CARD ON CARD.PD_CODE = PD_DIM.UNQ_ID_SRC_STM      AND 	CARD.PD_TP_CODE = PD_DIM.PD_TP_CODE
AND CARD.EFF_FM_DT <= TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD') AND CARD.EFF_TO_DT > TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD')
WHERE F.CST_PD_ST_BRN_CODE NOT IN ( 'CLOSE ALL', 'CLOSE ALL TODAY')       GROUP BY CST_ID, CST_DIM_ID, TM_PRD_DIM_ID, ORG_UNIT_DIM_ID, CST_TP_DIM_ID;

DELETE FROM CST_PD_ANL_FCT_SMY WHERE TM_PRD_DIM_ID = :pDate:;

INSERT INTO CST_PD_ANL_FCT_SMY
select * from CST_PD_ANL_FCT_SMY_DAILY;

SELECT 
	CST_DIM_ID,
	TM_PRD_DIM_ID,
	COUNT(DISTINCT CASE WHEN PD_DIM.PD_CODE NOT LIKE  'SA%'   AND SRC.LVL_0_CODE = 'SIBS_DDMAST'  AND TKTL.PDCODE IS NULL  THEN F.PD_ID END)   HO_NBR_PD_TGTT,
    COUNT(DISTINCT CASE WHEN TKTL.PDCODE IS NOT NULL THEN PD_DIM.PD_ID END)		HO_NBR_PD_TKTL,
    COUNT(DISTINCT CASE WHEN src.LVL_0_CODE = 'SIBS_CDMAST'  THEN F.PD_ID END)	HO_NBR_PD_TGCKH,
    COUNT(DISTINCT CASE WHEN src.LVL_0_CODE = 'SIBS_LNMAST'  THEN F.PD_ID END)	HO_NBR_PD_LOAN,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('BSMS_BALANCESERVICES') THEN F.PD_ID END)	HO_NBR_PD_BSMS,      COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('BIDVCORP_OD_CORPORATE_PROFILE_MB','DFCORE_OD_USERS_MB' ) THEN F.PD_ID END)	HO_NBR_PD_IB,    
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('BIDVCSAM_WSC_USER_DETAIL' ) THEN F.PD_ID END)	HO_NBR_PD_MB,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('TTHDOL_CUSTOMER_SMS') THEN F.PD_ID END)	HO_NBR_PD_VNTOPUP,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('TTHDOL_CUSTOMER') THEN F.PD_ID END)	HO_NBR_PD_TTHD,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE IN ('TTHDOL_CUSTOMER_BANKPLUS') THEN F.PD_ID END)	HO_NBR_PD_BANKPLUS, 
    COUNT(DISTINCT CASE WHEN CARD.CARD_TP_ACQ_LVL_2_CODE = 'VISA'  THEN F.PD_ID END)	HO_NBR_PD_VISA,
    COUNT(DISTINCT CASE WHEN CARD.CARD_TP_ACQ_LVL_2_CODE = 'MC'  THEN F.PD_ID END)		HO_NBR_PD_MASTER,
    COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE = 'TTLTT_CUSTOMERS' OR SRC.LVL_0_CODE = 'TTBK_CUSTOMERS' OR F.SLRY_CR_TXN_IND = 'Y' THEN F.PD_ID END)		HO_NBR_PD_TTL,
    COUNT(DISTINCT CASE WHEN F.NBR_OF_OD_AC > 0  THEN F.PD_ID END)		HO_NBR_PD_ODTIER,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE = 'DATATM_X1PCMS' THEN F.PD_ID END)		HO_NBR_PD_ATM,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE='MB_CUSTOMER' THEN F.PD_ID END) HO_NBR_PD_SMB,
	COUNT(DISTINCT CASE WHEN SRC.LVL_0_CODE='IB_CUSTOMER' THEN F.PD_ID END) HO_NBR_PD_IBANK

FROM CST_PD_ANL_FCT_DAILY  F
INNER JOIN PD_DIM ON PD_DIM.PD_DIM_ID = F.PD_DIM_ID 
INNER JOIN SRC_STM_DIM SRC ON SRC.SRC_STM_DIM_ID = F.SRC_STM_DIM_ID
LEFT JOIN CSTB_PD_TKTL TKTL ON TKTL.PDCODE ||'_'||TKTL.PDCURR = PD_DIM.UNQ_ID_SRC_STM AND PD_DIM.PD_TP_CODE = 'DD_PRODUCT'
AND TKTL.EFF_DT <= TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD') AND TKTL.END_DT > TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD')
LEFT JOIN EX_MAP_CARD_TP_ACQ CARD ON CARD.PD_CODE = PD_DIM.UNQ_ID_SRC_STM      AND 	CARD.PD_TP_CODE = PD_DIM.PD_TP_CODE
AND CARD.EFF_FM_DT <= TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD') AND CARD.EFF_TO_DT > TO_DATE(F.TM_PRD_DIM_ID, 'YYYYDDD')
WHERE F.CST_PD_ST_CODE NOT IN ( 'CLOSE ALL', 'CLOSE ALL TODAY')      GROUP BY  CST_DIM_ID, TM_PRD_DIM_ID;

