DELETE FROM AR_ANL_SBV_FCT WHERE TM_PRD_DIM_ID  = :pDate:;

insert into AR_ANL_SBV_FCT
	(	   AR_ID
		,  TM_PRD_DIM_ID
		,  ORG_UNIT_DIM_ID
		,  CCY_DIM_ID
		,  AR_DIM_ID 
        ,  CST_DIM_ID
		,  IDY_SML_ID_DIM_ID
		,  PPS_IDY_CL_DIM_ID
		,  CST_TP_ORG_IDV_SBV_DIM_ID
		,  BAL_ACG_STC_ITM_DIM_ID
		,  BAL_ACG_STC_ITM_SBV_DIM_ID
		,  CST_TP_RSDNC_SBV_DIM_ID
        ,  ORIG_TM_TO_MAT_SEG_DIM_ID			,  TERM_BAL_SBV_DIM_ID
		,  LBY_TP_SBV_DIM_ID
		,  CST_TP_SBV_DIM_ID
		,  SRC_STM_DIM_ID
		,  PD_DIM_ID	
		,  CLS_BAL_AMT_TDY_SBV_FCY
		,  CLS_BAL_AMT_TDY_SBV_LCY
		,  CLS_BO_BAL_AMT_TDY_SBV_FCY
		,  CLS_BO_BAL_AMT_TDY_SBV_LCY
		,  AST_ACR_INT_PTD_SBV_FCY
		,  AST_ACR_INT_PTD_SBV_LCY
		,  DSBR_AMT_MTD_SBV_FCY
		,  DSBR_AMT_MTD_SBV_LCY
		,  TOT_CLS_BAL_AMT_TDY_SBV_FCY
		,  TOT_CLS_BAL_AMT_TDY_SBV_LCY
		,  TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
		,  TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
		,  DSBR_AMT_YTD_SBV_FCY
		,  DSBR_AMT_YTD_SBV_LCY
		,  AGRCT_AREA_SBV_DIM_ID 		,  CST_PERF_ST_DIM_ID 		,  CST_BIDV_PERF_ST_SBV_DIM_ID 		,  CST_CIC_PERF_ST_SBV_DIM_ID 		,  AR_LOAN_STC_SBV_DIM_ID 		,  LIFE_PPS_SBV_DIM_ID 		,  RI_TP_SBV_DIM_ID		,  INT_RATE_SEG_DIM_ID
		,  TRD_FNC_TXN_SBV_DIM_ID
		,  CST_RSDNC_SBV_DIM_ID
		,  PRPT_PPS_SBV_DIM_ID
		,  CO_SME_SBV_DIM_ID
		,  AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
		,  AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
		,  STK_CLS_BAL_AMT_TDY_SBV_FCY
		,  STK_CLS_BAL_AMT_TDY_SBV_LCY
		,  PRPT_CLS_BAL_AMT_TDY_SBV_LCY
		,  PRPT_CLS_BAL_AMT_TDY_SBV_FCY
		,  LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
		,  LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
		,  SCRD_CLS_BAL_AMT_TDY_SBV_LCY
		,  SCRD_CLS_BAL_AMT_TDY_SBV_FCY
		,  PNP_PYMT_AMT_MTD_SBV_LCY
		,  PNP_PYMT_AMT_MTD_SBV_FCY
		,  PNP_PYMT_AMT_YTD_SBV_FCY
		,  PNP_PYMT_AMT_YTD_SBV_LCY
		,  BO_PNP_PYMT_AMT_MTD_SBV_FCY  		,  BO_PNP_PYMT_AMT_MTD_SBV_LCY  		,  BO_DSBR_AMT_MTD_SBV_FCY  		,  BO_DSBR_AMT_MTD_SBV_LCY  		,  TOT_PDA_PNP_AMT_SBV_FCY
		,  TOT_PDA_PNP_AMT_SBV_LCY
		,  TOT_LMT_AMT_SBV_LCY
		,  TOT_LMT_AMT_SBV_FCY
		,  CLS_BG_BAL_AMT_TDY_SBV_LCY
		,  CLS_BG_BAL_AMT_TDY_SBV_FCY
		,  CLS_LC_BAL_AMT_TDY_SBV_LCY
		,  CLS_LC_BAL_AMT_TDY_SBV_FCY
		,  LBY_ACT_INT_RATE_SBV_TDY 
		,  AST_ACT_INT_RATE_SBV_TDY
		,  AST_CLS_BAL_AMT_TDY_LCY 
		,  LBY_CLS_BAL_AMT_TDY_LCY 
		,  NBR_OF_ACC_SBV_AST 
		,  NBR_OF_ACC_SBV_LBY 
		,  NBR_NEW_OF_ACC_SBV_AST 
		,  NBR_NEW_OF_ACC_SBV_LBY
		,  GL_CLS_BAL_AMT_TDY_FCY
		,  GL_CLS_BAL_AMT_TDY_LCY
		,  CLS_BAL_CHRTER_CPTL_FCY
		,  CLS_BAL_CHRTER_CPTL_LCY
		,  SLR_PYMT_AMT_MTD_SBV_LCY
		,  SLR_PYMT_AMT_MTD_SBV_FCY
		,  SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
		,  SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
		,  DD_CLS_BAL_AMT_TDY_SBV_FCY
		,  DD_CLS_BAL_AMT_TDY_SBV_LCY
		,  NUM_OF_ACC_IDV_DD_SBV
		,  DSBR_AMT_LTD_SBV_FCY
		,  DSBR_AMT_LTD_SBV_LCY
		,  PNP_PYMT_AMT_LTD_SBV_FCY
		,  PNP_PYMT_AMT_LTD_SBV_LCY
		, TOT_INCM_CASH_FCY
		,  TOT_EXPN_CASH_FCY
		,  FND_AMT_CASH_FCY
		,  TOT_AMT_UNQLF_CCL_IMP_FCY
		,  TOT_AMT_UNQLF_CCL_EXP_FCY
		,  IVNT_AMT_UNQLF_CCL_FCY
		,  TOT_WRT_OFF_AMT_FCY
		,  TOT_WRT_OFF_AMT_LCY
		, AR_ACT_INT_RATE_TDY
			
	,  CMMT_BG_BAL_AMT_TDY_LCY 
	,  CMMT_BG_BAL_AMT_TDY_FCY 
	,  IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY 
	,  IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY 
	, CMMT_LC_BAL_AMT_TDY_LCY 
	,   CMMT_LC_BAL_AMT_TDY_FCY 
	, NBR_OF_ADJ_REPYMT_TERM
	, NBR_OF_DBT_EXT
	, SPRT_IDY_CL_SBV_DIM_ID
	,LOAN_RTO_LC
	, HIGH_TECH_CL_SBV_DIM_ID
		, BAL_ODUE_ACG_STC_ITM_DIM_ID
		, CLS_BAL_AMT_ODUE_FCY
	, CLS_BAL_AMT_ODUE_LCY
	
	)

SELECT 
		NVL(TWT.AR_ID,999999)    AR_ID
		,TWT.TM_PRD_ID    TM_PRD_DIM_ID
		, NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)	ORG_UNIT_DIM_ID
		, NVL(CCY_DIM.CCY_DM_ID, 999999)	CCY_DIM_ID
		, NVL(AR_DIM.AR_DIM_ID,999999)	AR_DIM_ID 
        , NVL(CST_DIM.CST_DIM_ID, 999999)	CST_DIM_ID
		, NVL(TMP_CST.IDY_SML_ID_DIM_ID, 999999)	IDY_SML_ID_DIM_ID
		, nvl(PPS_SBV_DIM.PPS_IDY_CL_SBV_DIM_ID,999999)	PPS_IDY_CL_DIM_ID
		, NVL(CST_TP_ORG_IDV_SBV_DIM.CST_TP_ORG_IDV_DIM_ID ,999999)	CST_TP_ORG_IDV_SBV_DIM_ID
		, NVL(ACG_STC_DIM.ACG_STC_ITM_DIM_ID, 999999)	BAL_ACG_STC_ITM_DIM_ID
		, NVL(ACG_STC_SBV_DIM.ACG_STC_ITM_SBV_DIM_ID, 999999)	BAL_ACG_STC_ITM_SBV_DIM_ID
		, NVL(CST_TP_RSDNC_SBV_DIM.CST_TP_RSDNC_DIM_ID,999999 )	CST_TP_RSDNC_SBV_DIM_ID
        , NVL(CASE WHEN SRC_STM_DIM.LVL_0_CODE <>'SIBS_DDMAST' THEN ORG_TERM_SEG.AR_TM_TO_MAT_SEG_DIM_ID
		        ELSE TMP_AR_DD.ORIG_TM_TO_MAT_SEG_DIM_ID END , 999999)	ORIG_TM_TO_MAT_SEG_DIM_ID			, NVL(TERM_BAL_SBV_DIM.TERM_BAL_SBV_DIM_ID, (select TERM_BAL_SBV_DIM_ID from DMMIS..TERM_BAL_SBV_DIM where LVL_0_CODE='0'))	TERM_BAL_SBV_DIM_ID
		, NVL(LBY_TP_SBV_DIM.LBY_TP_SBV_DIM_ID,999999)	LBY_TP_SBV_DIM_ID
		, NVL(CST_TP_SBV_DIM.CST_TP_SBV_DIM_ID,999999)	CST_TP_SBV_DIM_ID
		, NVL(SRC_STM_DIM.SRC_STM_DIM_ID,999999)	SRC_STM_DIM_ID
		, NVL(PD_DIM.PD_DIM_ID,999999)	PD_DIM_ID	
		, TWT.CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.CLS_BO_BAL_AMT_TDY_SBV_FCY
		, TWT.CLS_BO_BAL_AMT_TDY_SBV_LCY
		, TWT.AST_ACR_INT_PTD_SBV_FCY
		, TWT.AST_ACR_INT_PTD_SBV_LCY
		, TWT.DSBR_AMT_MTD_SBV_FCY
		, TWT.DSBR_AMT_MTD_SBV_LCY
		, TWT.TOT_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.TOT_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
		, TWT.TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
		, TWT.DSBR_AMT_YTD_SBV_FCY
		, TWT.DSBR_AMT_YTD_SBV_LCY
		, NVL(agrc_dim.AGRCT_AREA_SBV_DIM_ID,'999999') 	AGRCT_AREA_SBV_DIM_ID 		, NVL(perf_dim.PERF_ST_DIM_ID,'999999')	CST_PERF_ST_DIM_ID 		, NVL(bidv_loan_dim.CST_BIDV_PERF_ST_SBV_DIM_ID,'999999')	CST_BIDV_PERF_ST_SBV_DIM_ID 		, NVL(last_loan_dim.CST_CIC_PERF_ST_SBV_DIM_ID,'999999')	CST_CIC_PERF_ST_SBV_DIM_ID 		, NVL(loan_str_dim.AR_LOAN_STC_SBV_DIM_ID,'999999')	AR_LOAN_STC_SBV_DIM_ID 		, NVL(LIFE_PPS.LIFE_PPS_SBV_DIM_ID,999999)  LIFE_PPS_SBV_DIM_ID 		, NVL(RI_DIM.RI_TP_SBV_DIM_ID ,999999)	RI_TP_SBV_DIM_ID		, NVL(INT_SEG.INT_RATE_SEG_DIM_ID, 999999)	INT_RATE_SEG_DIM_ID
		, NVL(TRD_FNC.TRD_FNC_TXN_SBV_DIM_ID,999999)	TRD_FNC_TXN_SBV_DIM_ID
		, NVL(CST_RSDNC.CST_RSDNC_SBV_DIM_ID,999999 )	CST_RSDNC_SBV_DIM_ID
		, NVL(PRPT_SBV.PRPT_PPS_SBV_DIM_ID,999999)	PRPT_PPS_SBV_DIM_ID
		, CO_SME.CO_SME_SBV_DIM_ID
		, TWT.AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.STK_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.STK_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.PRPT_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.PRPT_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.SCRD_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.SCRD_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.PNP_PYMT_AMT_MTD_SBV_LCY
		, TWT.PNP_PYMT_AMT_MTD_SBV_FCY
		, TWT.PNP_PYMT_AMT_YTD_SBV_FCY
		, TWT.PNP_PYMT_AMT_YTD_SBV_LCY
		, TWT.BO_PNP_PYMT_AMT_MTD_SBV_FCY  		, TWT.BO_PNP_PYMT_AMT_MTD_SBV_LCY  		, TWT.BO_DSBR_AMT_MTD_SBV_FCY  		, TWT.BO_DSBR_AMT_MTD_SBV_LCY  		, TWT.TOT_PDA_PNP_AMT_SBV_FCY
		, TWT.TOT_PDA_PNP_AMT_SBV_LCY
		, TWT.TOT_LMT_AMT_SBV_LCY
		, TWT.TOT_LMT_AMT_SBV_FCY
		, TWT.CLS_BG_BAL_AMT_TDY_SBV_LCY
		, TWT.CLS_BG_BAL_AMT_TDY_SBV_FCY
		, TWT.CLS_LC_BAL_AMT_TDY_SBV_LCY
		, TWT.CLS_LC_BAL_AMT_TDY_SBV_FCY
		, TWT.LBY_ACT_INT_RATE_SBV_TDY 
		, TWT.AST_ACT_INT_RATE_SBV_TDY
		, TWT.AST_CLS_BAL_AMT_TDY_LCY 
		, TWT.LBY_CLS_BAL_AMT_TDY_LCY 
		, TWT.NBR_OF_ACC_SBV_AST 
		, TWT.NBR_OF_ACC_SBV_LBY 
		, TWT.NBR_NEW_OF_ACC_SBV_AST 
		, TWT.NBR_NEW_OF_ACC_SBV_LBY
		, TWT.GL_CLS_BAL_AMT_TDY_FCY
		, TWT.GL_CLS_BAL_AMT_TDY_LCY
		, TWT.CLS_BAL_CHRTER_CPTL_FCY
		, TWT.CLS_BAL_CHRTER_CPTL_LCY
		, TWT.SLR_PYMT_AMT_MTD_SBV_LCY
		, TWT.SLR_PYMT_AMT_MTD_SBV_FCY
		, TWT.SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
		, TWT.SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
		, TWT.DD_CLS_BAL_AMT_TDY_SBV_FCY
		, TWT.DD_CLS_BAL_AMT_TDY_SBV_LCY
		, TWT.NUM_OF_ACC_IDV_DD_SBV
		, TWT.DSBR_AMT_LTD_SBV_FCY
		, TWT.DSBR_AMT_LTD_SBV_LCY
		, TWT.PNP_PYMT_AMT_LTD_SBV_FCY
		, TWT.PNP_PYMT_AMT_LTD_SBV_LCY
		, NULL TOT_INCM_CASH_FCY
		, NULL TOT_EXPN_CASH_FCY
		, NULL FND_AMT_CASH_FCY
		, NULL TOT_AMT_UNQLF_CCL_IMP_FCY
		, NULL TOT_AMT_UNQLF_CCL_EXP_FCY
		, NULL IVNT_AMT_UNQLF_CCL_FCY
		, TWT.TOT_WRT_OFF_AMT_FCY
		, TWT.TOT_WRT_OFF_AMT_LCY
		,AR_ACT_INT_RATE_TDY
			
	,  CMMT_BG_BAL_AMT_TDY_LCY 
	,  CMMT_BG_BAL_AMT_TDY_FCY 
	,  IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY 
	,  IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY 
	,   CMMT_LC_BAL_AMT_TDY_LCY 
	,   CMMT_LC_BAL_AMT_TDY_FCY 
	, NBR_OF_ADJ_REPYMT_TERM
	, NBR_OF_DBT_EXT
	, SPRT_IDY_CL_SBV_DIM.SPRT_IDY_CL_SBV_DIM_ID  SPRT_IDY_CL_SBV_DIM_ID
	, LOAN_RTO_LC
	, HIGH_TECH_CL_SBV_DIM.HIGH_TECH_CL_SBV_DIM_ID HIGH_TECH_CL_SBV_DIM_ID
			, NVL(ACG_STC_DIM1.ACG_STC_ITM_DIM_ID,999999) BAL_ODUE_ACG_STC_ITM_DIM_ID
		, twt.CLS_BAL_AMT_ODUE_FCY
	, twt.CLS_BAL_AMT_ODUE_LCY

FROM  		TMP_AR_ANL_FCT_SBV  TWT
LEFT JOIN ACG_STC_ITM_DIM ACG_STC_DIM1	ON twt.BAL_ODUE_ACG_STC_ITM_DIM_ID = ACG_STC_DIM1.LVL_0_ID
					AND TO_DATE(:pDate:,'YYYYDDD') >= ACG_STC_DIM1.EFF_FM_DT AND ACG_STC_DIM1.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	SRC_STM_DIM SRC_STM_DIM	ON SRC_STM_DIM.LVL_0_ID	= TWT.SRC_STM_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= SRC_STM_DIM.EFF_FM_DT AND SRC_STM_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	OU_DIM OU_DIM ON OU_DIM.ORG_UNIT_ID = TWT.ORG_UNIT_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= OU_DIM.EFF_FM_DT AND OU_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN CCY_DIM CCY_DIM ON CCY_DIM.CCY_ID = TWT.DNMN_CCY_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= CCY_DIM.EFF_FM_DT AND CCY_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	AR_DIM AR_DIM ON TWT.AR_ID = AR_DIM.AR_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= AR_DIM.EFF_FM_DT AND AR_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CST_DIM CST_DIM ON CST_DIM.CST_ID = TWT.CST_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= CST_DIM.EFF_FM_DT AND CST_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	TMP_CST   ON TWT.CST_ID = TMP_CST.CST_ID
LEFT JOIN 	CST_TP_ORG_IDV_SBV_DIM ON TWT.CST_TP_ORG_IDV_SBV_CODE =  CST_TP_ORG_IDV_SBV_DIM.LVL_0_CODE
LEFT JOIN 	ACG_STC_ITM_DIM ACG_STC_DIM	ON ACG_STC_DIM.LVL_0_ID = TWT.BAL_ACG_STC_ITM_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= ACG_STC_DIM.EFF_FM_DT AND ACG_STC_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	ACG_STC_ITM_SBV_DIM ACG_STC_SBV_DIM	ON ACG_STC_SBV_DIM.LVL_0_ID = TWT.BAL_ACG_STC_ITM_SBV_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= ACG_STC_SBV_DIM.EFF_FM_DT AND ACG_STC_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CST_TP_RSDNC_SBV_DIM 
	ON 		(CASE WHEN TWT.CST_TP_RSDNC_SBV_CODE IN ('425','426') THEN TWT.CST_TP_RSDNC_SBV_CODE = CST_TP_RSDNC_SBV_DIM.LVL_0_CODE
	 			WHEN SUBSTR(TWT.CST_TP_RSDNC_SBV_CODE,1,2) = '26' THEN SUBSTR(TWT.CST_TP_RSDNC_SBV_CODE,1,2)=CST_TP_RSDNC_SBV_DIM.LVL_0_CODE
	 			ELSE (CASE WHEN CST_TP_RSDNC_SBV_DIM.LVL_0_CODE IS NOT NULL THEN CST_TP_RSDNC_SBV_DIM.LVL_0_CODE = '0' ELSE null END)
	 			END)
		AND CST_TP_RSDNC_SBV_DIM.EFF_FM_DT <= TO_DATE(:pDate:,'YYYYDDD') AND CST_TP_RSDNC_SBV_DIM.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CSTB_AR_TM_TO_MAT_SEQ_MP_RL ORG_TERM_SEG ON ORG_TERM_SEG.TERM_CODE = TWT.TERM_CODE 
		AND TWT.TERM >= ORG_TERM_SEG.MIN_TERM AND TWT.TERM < ORG_TERM_SEG.MAX_TERM 
	    AND TO_DATE(:pDate:,'YYYYDDD') >= ORG_TERM_SEG.EFF_DT AND ORG_TERM_SEG.END_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	TMP_AR_DD ON TWT.AR_ID = TMP_AR_DD.AR_ID
LEFT JOIN 	TERM_BAL_SBV_DIM	ON   TWT.TERM_BAL_SBV_CODE  = TERM_BAL_SBV_DIM.LVL_0_CODE                     
		AND TO_DATE(:pDate:,'YYYYDDD') >= TERM_BAL_SBV_DIM.EFF_FM_DT AND TERM_BAL_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	LBY_TP_SBV_DIM	ON NVL(TWT.LBY_TP_SBV_CODE,'UNKNOWS') = LBY_TP_SBV_DIM.LVL_0_CODE  and LBY_TP_SBV_DIM.LVL_0_CODE <>'0'
		AND TO_DATE(:pDate:,'YYYYDDD') >= LBY_TP_SBV_DIM.EFF_FM_DT AND LBY_TP_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CST_TP_SBV_DIM	ON TWT.CST_TP_SBV_CODE = CST_TP_SBV_DIM.LVL_0_CODE 
		AND TO_DATE(:pDate:,'YYYYDDD') >= CST_TP_SBV_DIM.EFF_FM_DT AND CST_TP_SBV_DIM.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	AR_PPS_DIM ON TWT.AR_PPS_TP_ID = AR_PPS_DIM.LVL_0_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= AR_PPS_DIM.EFF_FM_DT AND AR_PPS_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	PD_DIM ON TWT.PD_ID = PD_DIM.PD_ID 
		AND TO_DATE(:pDate:,'YYYYDDD') >= PD_DIM.EFF_FM_DT AND PD_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	IDY_CL_DIM ON IDY_CL_DIM.IDY_SML_ID_DIM_ID =  TMP_CST.IDY_SML_ID_DIM_ID
LEFT JOIN 	PPS_IDY_CL_SBV_DIM  PPS_SBV_DIM ON PPS_SBV_DIM.LVL_1_CODE = AR_PPS_DIM.LVL_0_CODE 
		AND TO_DATE(:pDate:,'YYYYDDD') >= PPS_SBV_DIM.EFF_FM_DT AND PPS_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	AGRCT_AREA_SBV_DIM agrc_dim ON agrc_dim.lvl_0_id= twt.AGRCT_AREA_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= agrc_dim.EFF_FM_DT AND agrc_dim.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	PERF_ST_DIM perf_dim ON perf_dim.lvl_0_id=TWT.CST_PERF_ST_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= perf_dim.EFF_FM_DT AND perf_dim.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CST_BIDV_PERF_ST_SBV_DIM bidv_loan_dim ON bidv_loan_dim.lvl_0_id = TWT.CST_PLN_BIDV_PERF_ST_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= PPS_SBV_DIM.EFF_FM_DT AND PPS_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CST_CIC_PERF_ST_SBV_DIM last_loan_dim ON last_loan_dim.lvl_0_id = TWT.CST_PLN_CIC_PERF_ST_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= last_loan_dim.EFF_FM_DT AND last_loan_dim.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	AR_LOAN_STC_SBV_DIM loan_str_dim ON loan_str_dim.lvl_0_id=twt.LOAN_STRUCTURE_TP_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= loan_str_dim.EFF_FM_DT AND loan_str_dim.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	RI_TP_SBV_DIM RI_DIM ON RI_DIM.LVL_0_ID =TWT.RI_TP_SBV_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= RI_DIM.EFF_FM_DT AND RI_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	INT_RATE_SEG_DIM INT_SEG ON TWT.INT_RATE_SEG_ID  >= INT_SEG.MIN_RATE AND TWT.INT_RATE_SEG_ID < INT_SEG.MAX_RATE
		AND TO_DATE(:pDate:,'YYYYDDD') >= INT_SEG.EFF_FM_DT AND INT_SEG.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	LIFE_PPS_SBV_DIM LIFE_PPS on LIFE_PPS.LVL_0_CODE = TWT.LIFE_PPS_CODE
		AND LIFE_PPS.EFF_FM_DT <=TO_DATE(:pDate:,'YYYYDDD') AND LIFE_PPS.EFF_TO_DT >TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	TRD_FNC_TXN_SBV_DIM TRD_FNC on TRD_FNC.LVL_0_CODE =TWT.TRD_FNC_CODE
		AND TRD_FNC.EFF_FM_DT <=TO_DATE(:pDate:,'YYYYDDD') AND TRD_FNC.EFF_TO_DT >TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	CST_RSDNC_SBV_DIM CST_RSDNC ON  CST_RSDNC.LVL_0_ID=TWT.CST_RSDNC_id
LEFT JOIN 	PRPT_PPS_SBV_diM   PRPT_SBV ON PRPT_SBV.LVL_0_CODE=TWT.PRPT_PPS_SBV_CODE
LEFT JOIN 	CO_SME_SBV_DIM  CO_SME ON CO_SME.LVL_0_CODE = TWT.CO_SME_SBV_code
LEFT JOIN 	SPRT_IDY_CL_SBV_DIM  ON SPRT_IDY_CL_SBV_DIM.lvl_1_id=twt.SPRT_IDY_CL_SBV_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= SPRT_IDY_CL_SBV_DIM.EFF_FM_DT AND SPRT_IDY_CL_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	HIGH_TECH_CL_SBV_DIM  ON HIGH_TECH_CL_SBV_DIM.lvl_0_id=twt.HIGH_TECH_CL_SBV_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= HIGH_TECH_CL_SBV_DIM.EFF_FM_DT AND HIGH_TECH_CL_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')

UNION

SELECT 
		NULL    AR_ID
		,TWT.DATADATE7	TM_PRD_DIM_ID
		, NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)	ORG_UNIT_DIM_ID
		, NVL(CCY_DIM.CCY_DM_ID, 999999)	CCY_DIM_ID
		, NULL	AR_DIM_ID 
        , NULL	CST_DIM_ID
		, NULL IDY_SML_ID_DIM_ID
		, NULL PPS_IDY_CL_DIM_ID
		, NULL CST_TP_ORG_IDV_SBV_DIM_ID
		, NVL(ACG_STC_DIM.ACG_STC_ITM_DIM_ID, 999999) BAL_ACG_STC_ITM_DIM_ID
		, NVL(ACG_STC_SBV_DIM.ACG_STC_ITM_SBV_DIM_ID, 999999) BAL_ACG_STC_ITM_SBV_DIM_ID
		, NULL CST_TP_RSDNC_SBV_DIM_ID
        , NULL ORIG_TM_TO_MAT_SEG_DIM_ID
		, NULL TERM_BAL_SBV_DIM_ID
		, NULL LBY_TP_SBV_DIM_ID
		, NULL CST_TP_SBV_DIM_ID
		, 251500004 SRC_STM_DIM_ID
		, NULL PD_DIM_ID	
		, NULL CLS_BAL_AMT_TDY_SBV_FCY
		, NULL CLS_BAL_AMT_TDY_SBV_LCY
		, NULL CLS_BO_BAL_AMT_TDY_SBV_FCY
		, NULL CLS_BO_BAL_AMT_TDY_SBV_LCY
		, NULL AST_ACR_INT_PTD_SBV_FCY
		, NULL AST_ACR_INT_PTD_SBV_LCY
		, NULL DSBR_AMT_MTD_SBV_FCY
		, NULL DSBR_AMT_MTD_SBV_LCY
		, NULL TOT_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL TOT_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
		, NULL TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
		, NULL DSBR_AMT_YTD_SBV_FCY
		, NULL DSBR_AMT_YTD_SBV_LCY
		, NULL AGRCT_AREA_SBV_DIM_ID
		, NULL CST_PERF_ST_DIM_ID
		, NULL CST_BIDV_PERF_ST_SBV_DIM_ID
		, NULL  CST_CIC_PERF_ST_SBV_DIM_ID
		, NULL AR_LOAN_STC_SBV_DIM_ID
		, NULL LIFE_PPS_SBV_DIM_ID 
		, NULL RI_TP_SBV_DIM_ID
		, NULL INT_RATE_SEG_DIM_ID
		, NULL TRD_FNC_TXN_SBV_DIM_ID
		, NULL CST_RSDNC_SBV_DIM_ID
		, NULL	PRPT_PPS_SBV_DIM_ID
		, NULL CO_SME_SBV_DIM_ID
		, NULL AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL STK_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL STK_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL PRPT_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL PRPT_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL SCRD_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL SCRD_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL PNP_PYMT_AMT_MTD_SBV_LCY
		, NULL PNP_PYMT_AMT_MTD_SBV_FCY
		, NULL PNP_PYMT_AMT_YTD_SBV_FCY
		, NULL PNP_PYMT_AMT_YTD_SBV_LCY
		, NULL BO_PNP_PYMT_AMT_MTD_SBV_FCY  		, NULL BO_PNP_PYMT_AMT_MTD_SBV_LCY  		, NULL BO_DSBR_AMT_MTD_SBV_FCY  		, NULL BO_DSBR_AMT_MTD_SBV_LCY  		, NULL TOT_PDA_PNP_AMT_SBV_FCY
		, NULL TOT_PDA_PNP_AMT_SBV_LCY
		, NULL TOT_LMT_AMT_SBV_LCY
		, NULL TOT_LMT_AMT_SBV_FCY
		, NULL CLS_BG_BAL_AMT_TDY_SBV_LCY
		, NULL CLS_BG_BAL_AMT_TDY_SBV_FCY
		, NULL CLS_LC_BAL_AMT_TDY_SBV_LCY
		, NULL CLS_LC_BAL_AMT_TDY_SBV_FCY
		, NULL LBY_ACT_INT_RATE_SBV_TDY 
		, NULL AST_ACT_INT_RATE_SBV_TDY
		, NULL AST_CLS_BAL_AMT_TDY_LCY 
		, NULL LBY_CLS_BAL_AMT_TDY_LCY 
		, NULL NBR_OF_ACC_SBV_AST 
		, NULL NBR_OF_ACC_SBV_LBY 
		, NULL NBR_NEW_OF_ACC_SBV_AST 
		, NULL NBR_NEW_OF_ACC_SBV_LBY
		, NULL GL_CLS_BAL_AMT_TDY_FCY
		, NULL GL_CLS_BAL_AMT_TDY_LCY
		, NULL CLS_BAL_CHRTER_CPTL_FCY
		, NULL CLS_BAL_CHRTER_CPTL_LCY
		, NULL SLR_PYMT_AMT_MTD_SBV_LCY
		, NULL SLR_PYMT_AMT_MTD_SBV_FCY
		, NULL SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
		, NULL SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
		, NULL DD_CLS_BAL_AMT_TDY_SBV_FCY
		, NULL DD_CLS_BAL_AMT_TDY_SBV_LCY
		, NULL NUM_OF_ACC_IDV_DD_SBV
		, NULL DSBR_AMT_LTD_SBV_FCY
		, NULL DSBR_AMT_LTD_SBV_LCY
		, NULL PNP_PYMT_AMT_LTD_SBV_FCY
		, NULL PNP_PYMT_AMT_LTD_SBV_LCY
		, TWT.TOT_INCM_CASH_FCY
		, TWT.TOT_EXPN_CASH_FCY
		, TWT.FND_AMT_CASH_FCY
		, TWT.TOT_AMT_UNQLF_CCL_IMP_FCY
		, TWT.TOT_AMT_UNQLF_CCL_EXP_FCY
		, TWT.IVNT_AMT_UNQLF_CCL_FCY
		, NULL TOT_WRT_OFF_AMT_FCY
		, NULL TOT_WRT_OFF_AMT_LCY
,NULL     AR_ACT_INT_RATE_TDY
	
	, NULL CMMT_BG_BAL_AMT_TDY_LCY 
	, NULL CMMT_BG_BAL_AMT_TDY_FCY 
	, NULL IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY 
	, NULL IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY 
	, NULL CMMT_LC_BAL_AMT_TDY_LCY 
	, NULL CMMT_LC_BAL_AMT_TDY_FCY 
	, NULL NBR_OF_ADJ_REPYMT_TERM
	, NULL NBR_OF_DBT_EXT
	, NULL SPRT_IDY_CL_SBV_DIM_ID
	, NULL LOAN_RTO_LC
	, NULL HIGH_TECH_CL_SBV_DIM_ID	
		, NULL BAL_ODUE_ACG_STC_ITM_DIM_ID
		, NULL CLS_BAL_AMT_ODUE_FCY
	, NULL CLS_BAL_AMT_ODUE_LCY
FROM  		TMP_GL0206_SBV TWT
LEFT JOIN 	OU_DIM OU_DIM ON OU_DIM.ORG_UNIT_CODE = TWT.BRANCH 
		AND TO_DATE(:pDate:,'YYYYDDD') >= OU_DIM.EFF_FM_DT AND OU_DIM.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN CCY_DIM CCY_DIM ON CCY_DIM.CCY_CODE = TWT.CCY_CODE 
		AND TO_DATE(:pDate:,'YYYYDDD') >= CCY_DIM.EFF_FM_DT AND CCY_DIM.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	ACG_STC_ITM_DIM ACG_STC_DIM	ON ACG_STC_DIM.ACG_STC_CODE = TWT.GL_BIDV 
		AND TO_DATE(:pDate:,'YYYYDDD') >= ACG_STC_DIM.EFF_FM_DT AND ACG_STC_DIM.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 	ACG_STC_ITM_SBV_DIM ACG_STC_SBV_DIM	ON ACG_STC_SBV_DIM.ACG_STC_CODE_SBV = TWT.GL_SBV 
		AND TO_DATE(:pDate:,'YYYYDDD') >= ACG_STC_SBV_DIM.EFF_FM_DT AND ACG_STC_SBV_DIM.EFF_TO_DT > TO_DATE(:pDate:,'YYYYDDD');

