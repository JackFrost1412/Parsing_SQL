with TMP_MAX_BY_CST as
(
SELECT
    CST_ID
    ,CASE WHEN T.MUD IN ('OD', 'LN') THEN 1 WHEN T.MUD = 'CARD' THEN 2 END CST_MUD
    ,MAX(COALESCE(X7.VAL, T.ADJ_FNC_ST_CODE))        CST_FNC_ST_CODE
FROM TWT_FNC_SVC_AR_FCT_FA T
LEFT JOIN TBL_XLS_AR_TO_SBV_FNC_ST X7  ON T.AR_UNQ_ID = X7.KEY AND X7.STATUS = 'A' AND X7.EFF_DT <= :pdate: AND X7.END_DT > :pdate:
GROUP BY T.CST_ID, CASE WHEN T.MUD IN ('OD', 'LN') THEN 1 WHEN T.MUD = 'CARD' THEN 2 END
),
TMP_MAX_BY_CST2 as
(
SELECT
    CST_ID
    ,MAX(COALESCE(X7.VAL, T.ADJ_FNC_ST_CODE))        CST_FNC_ST_CODE
FROM TWT_FNC_SVC_AR_FCT_FA T
LEFT JOIN TBL_XLS_AR_TO_SBV_FNC_ST X7  ON T.AR_UNQ_ID = X7.KEY AND X7.STATUS = 'A' AND X7.EFF_DT <= :pdate: AND X7.END_DT > :pdate:
GROUP BY T.CST_ID
)
SELECT DISTINCT 	
	 T.AC_AR_ID
	,T.CST_ID
	,T.LOAN_PPS_CODE
	,COALESCE(X10.VAL, T.PD_CODE)	PD_CODE
	,T.RLTNP_OFCR_ID
	,T.IDY_CODE
	,T.LDGR_ACG_ID
	,COALESCE(X1.VAL,X2.VAL,T.ADJ_OU_CODE) 	ADJ_OU_CODE
	,COALESCE(X6.VAL, T.ADJ_CCY_CODE) 		ADJ_CCY_CODE
	,COALESCE(X3.VAL, X4.VAL, X5.VAL)		ADJ_LOB_CODE
	,T1.CST_FNC_ST_CODE
	,COALESCE(X7.VAL, T.ADJ_FNC_ST_CODE)	ADJ_FNC_ST_CODE
	,NVL(X8.VAL,T1.CST_FNC_ST_CODE)			MIS_ADJ_FNC_ST_CODE
	,GREATEST(nvl(X9.VAL, 'NORM'), NVL(X8.VAL, T1.CST_FNC_ST_CODE))	FNL_FNC_ST_CODE
	,T.FNC_ST_TP_CODE
	,T.CG_SEG
	,T.MSEG
	,T.PY_OFF_BFR_DUE_DT_F
	,T.INT_RATE
	,'NORM'												SRO_CODE
	,DECODE(X11.VAL,NULL,0,1)							PB_MISCODE_F 	,DECODE(X12.VAL,'Y',1,0)							PB_CST_F
	,T.PYMT_CARD_ID
	,T.MUD
	,X5.VAL												LOB_CODE
	,NVL(X2.VAL,T.ADJ_OU_CODE)							OU_CODE
	,X9.VAL												CIC_FNC_ST_CODE
	,T.ADJ_CCY_CODE										CCY_CODE
	,T2.CST_FNC_ST_CODE 		                        OVRL_CST_FNC_ST_CODE
	,NVL(X8.VAL,T2.CST_FNC_ST_CODE) 	                OVRL_MIS_ADJ_FNC_ST_CODE
	,GREATEST(NVL(X9.VAL, 'NORM'), NVL(X8.VAL,T2.CST_FNC_ST_CODE)) 		    OVRL_FNL_FNC_ST_CODE
	,CASE WHEN COALESCE(X1.VAL,X2.VAL,T.ADJ_OU_CODE) = '444' THEN 0
		WHEN COALESCE(X10.VAL, T.PD_CODE) = 'CL00' THEN 0
		WHEN T.MUD = 'LN' AND T.CLS_BAL_FCY < 0 THEN 0
		ELSE nvl(T.CLS_BAL_FCY, 0)
	END													CLS_BAL_FCY
	,CASE WHEN COALESCE(X1.VAL,X2.VAL,T.ADJ_OU_CODE) = '444' THEN 0
		WHEN COALESCE(X10.VAL, T.PD_CODE) = 'CL00' THEN 0
		WHEN T.MUD = 'LN' AND T.CLS_BAL_LCY < 0 THEN 0
		ELSE nvl(T.CLS_BAL_LCY, 0)
	END													CLS_BAL_LCY	
	,nvl(T.LQD_AMT_FCY, 0)								LQD_AMT_FCY
	,nvl(T.LQD_AMT_LCY, 0)								LQD_AMT_LCY
	,nvl(T.DSBR_AMT_FCY, 0)								DSBR_AMT_FCY
	,nvl(T.DSBR_AMT_LCY, 0)								DSBR_AMT_LCY
	,nvl(T.PREPYMT_AMT_FCY, 0)							PREPYMT_AMT_FCY
	,nvl(T.PREPYMT_AMT_LCY, 0)							PREPYMT_AMT_LCY
		,nvl(T.ORIG_CLS_BAL_FCY, 0)							ORIG_CLS_BAL_FCY
	,nvl(T.ORIG_CLS_BAL_LCY, 0) 						ORIG_CLS_BAL_LCY
	,T.PD_CODE											ORIG_PD_CODE
	,COALESCE(X11.VAL,X1.VAL,X2.VAL,T.ADJ_OU_CODE)		MIS1_OU_CODE
	,nvl(T.FEE_INCM_LCY,0) FEE_INCM_LCY
	,nvl(T.LMT_AMT,0) TOT_LMT_AMT
	,nvl(T.TOT_AVL_LMT_AMT,0) TOT_AVL_LMT_AMT
	,nvl(T.PNP_ARS,0) PNP_ARS
	,nvl(T.INT_ARS,0) INT_ARS
	,nvl(T.CLS_UTLZ_AMT_FCY,0) CLS_UTLZ_AMT_FCY
	,nvl(T.PNP_DUE_AMT,0) PNP_DUE_AMT
	,nvl(T.INT_DUE_AMT,0) INT_DUE_AMT
	,DLQ_CNT
	,NVL(T.TOT_DSBR_AMT_FCY,0) TOT_DSBR_AMT_FCY
	,T.RPRG_OU_CODE
	,t.INTERIM_INT
,T.NOD_PAST_DUE
FROM TWT_FNC_SVC_AR_FCT_FA T
LEFT JOIN TBL_XLS_AR_TO_OU_NEW X1 		ON T.AR_UNQ_ID = X1.KEY AND X1.STATUS = 'A' AND X1.EFF_DT <= :pdate: AND X1.END_DT > :pdate:
LEFT JOIN TBL_XLS_OU_OLD_TO_OU_NEW X2 	ON T.ADJ_OU_CODE = X2.KEY AND X2.STATUS = 'A' AND X2.EFF_DT <= :pdate: AND X2.END_DT > :pdate:
LEFT JOIN TBL_XLS_AR_TO_LINE X3			ON T.AR_UNQ_ID = X3.KEY AND X3.STATUS = 'A' AND X3.EFF_DT <= :pdate: AND X3.END_DT > :pdate:
LEFT JOIN TBL_XLS_OU_TO_LINE X4			ON COALESCE(X1.VAL, X2.VAL, T.ADJ_OU_CODE) = X4.KEY AND X4.STATUS = 'A' AND X4.EFF_DT <= :pdate: AND X4.END_DT > :pdate:
LEFT JOIN TBL_XLS_CG_SEGMNT_TO_LINE X5	ON T.CG_SEG = X5.KEY_ID AND X5.STATUS = 'A' AND X5.EFF_DT <= :pdate: AND X5.END_DT > :pdate:
LEFT JOIN TBL_XLS_AR_TO_CCY_NEW X6		ON T.AR_UNQ_ID = X6.KEY AND X6.STATUS = 'A' AND X6.EFF_DT <= :pdate: AND X6.END_DT > :pdate:
LEFT JOIN TBL_XLS_AR_TO_SBV_FNC_ST X7	ON T.AR_UNQ_ID = X7.KEY AND X7.STATUS = 'A' AND X7.EFF_DT <= :pdate: AND X7.END_DT > :pdate:
LEFT JOIN TBL_XLS_AR_TO_MIS_FNC_ST X8  ON T.AR_UNQ_ID = X8.KEY AND X8.STATUS = 'A' AND X8.EFF_DT <= :pdate: AND X8.END_DT > :pdate:
LEFT JOIN TBL_XLS_AR_TO_PD_NEW X10		ON T.AR_UNQ_ID = X10.KEY AND X10.STATUS = 'A' AND X10.EFF_DT <= :pdate: AND X10.END_DT > :pdate:
LEFT JOIN TBL_XLS_CST_TO_AF_CIC X9    	ON T.CST_ID = X9.KEY_ID AND X9.STATUS = 'A' AND X9.EFF_DT <= :pdate: AND X9.END_DT > :pdate:
LEFT JOIN TBL_XLS_MISCODE_PB X11		ON T.EMPE_NBR = X11.KEY AND X11.STATUS = 'A' AND X11.EFF_DT <= :pdate: AND X11.END_DT > :pdate:
LEFT JOIN TBL_XLS_CST_PB X12			ON T.CST_ID = X12.KEY_ID AND X12.STATUS = 'A' AND X12.EFF_DT <= :pdate: AND X12.END_DT > :pdate:
LEFT JOIN TMP_MAX_BY_CST T1 			ON T1.CST_ID = T.CST_ID AND CASE WHEN T.MUD IN ('OD', 'LN') THEN 1 WHEN T.MUD = 'CARD' THEN 2 END = T1.CST_MUD
LEFT JOIN TMP_MAX_BY_CST2 T2 			ON T2.CST_ID = T.CST_ID;

