SELECT 
		999999   AR_ID
		,TWT.TM_PRD_ID    TM_PRD_DIM_ID
		, NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)		ORG_UNIT_DIM_ID
		, NVL(CCY_DIM.CCY_DM_ID, 999999)					CCY_DIM_ID
		, 999999				AR_DIM_ID 
        , 999999 				CST_DIM_ID
		, 999999			IDY_SML_ID_DIM_ID
		, nvl(PPS_SBV_DIM.PPS_IDY_CL_SBV_DIM_ID,999999)			PPS_IDY_CL_DIM_ID
		, NVL(CST_TP_ORG_IDV_SBV_DIM.CST_TP_ORG_IDV_DIM_ID ,999999)		CST_TP_ORG_IDV_SBV_DIM_ID
		, NVL(ACG_STC_DIM.ACG_STC_ITM_DIM_ID, 999999)				BAL_ACG_STC_ITM_DIM_ID
		, NVL(ACG_STC_SBV_DIM.ACG_STC_ITM_SBV_DIM_ID, 999999)		BAL_ACG_STC_ITM_SBV_DIM_ID
		, NVL(CST_TP_RSDNC_SBV_DIM.CST_TP_RSDNC_DIM_ID,999999 ) 	CST_TP_RSDNC_SBV_DIM_ID
        , 999999   		ORIG_TM_TO_MAT_SEG_DIM_ID 					, NVL(TERM_BAL_SBV_DIM.TERM_BAL_SBV_DIM_ID, (select TERM_BAL_SBV_DIM_ID from dmmis..TERM_BAL_SBV_DIM where LVL_0_CODE='0'))			TERM_BAL_SBV_DIM_ID
		, NVL(LBY_TP_SBV_DIM.LBY_TP_SBV_DIM_ID,999999 )				LBY_TP_SBV_DIM_ID
		, NVL(CST_TP_SBV_DIM.CST_TP_SBV_DIM_ID,999999 )				CST_TP_SBV_DIM_ID
		, NVL(SRC_STM_DIM.SRC_STM_DIM_ID,999999)					SRC_STM_DIM_ID
		, 999999				PD_DIM_ID	
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
		
		,999999  CST_PERF_ST_DIM_ID
       , 999999	 CST_BIDV_PERF_ST_SBV_DIM_ID
       , 999999	 CST_CIC_PERF_ST_SBV_DIM_ID
       , 999999	 LIFE_PPS_SBV_DIM_ID
       , 999999	 RI_TP_SBV_DIM_ID
       , 999999	 TRD_FNC_TXN_SBV_DIM_ID
       , 999999	 CST_RSDNC_SBV_DIM_ID
       , 0	AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	STK_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	STK_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	PNP_PYMT_AMT_MTD_SBV_LCY
       , 0	PNP_PYMT_AMT_MTD_SBV_FCY
       , 0	PNP_PYMT_AMT_YTD_SBV_FCY
       , 0	PNP_PYMT_AMT_YTD_SBV_LCY
       , 0	TOT_PDA_PNP_AMT_SBV_FCY
       , 0	TOT_PDA_PNP_AMT_SBV_LCY
       , 0	TOT_LMT_AMT_SBV_LCY
       , 0	TOT_LMT_AMT_SBV_FCY
       , 0	CLS_BG_BAL_AMT_TDY_SBV_LCY
       , 0	CLS_BG_BAL_AMT_TDY_SBV_FCY
       , 0	CLS_LC_BAL_AMT_TDY_SBV_LCY
       , 0	CLS_LC_BAL_AMT_TDY_SBV_FCY
       , 0	LBY_ACT_INT_RATE_SBV_TDY
       , 0	AST_ACT_INT_RATE_SBV_TDY
       , 0	AST_CLS_BAL_AMT_TDY_LCY
       , 0	LBY_CLS_BAL_AMT_TDY_LCY
       , 0	NBR_OF_ACC_SBV_AST
       , 0	NBR_OF_ACC_SBV_LBY
       , 0	NBR_NEW_OF_ACC_SBV_AST
       , 0	NBR_NEW_OF_ACC_SBV_LBY
       , 0	GL_CLS_BAL_AMT_TDY_FCY
       , 0	GL_CLS_BAL_AMT_TDY_LCY
       , 0	CLS_BAL_CHRTER_CPTL_LCY
       , 0	CLS_BAL_CHRTER_CPTL_FCY
       , 0	SLR_PYMT_AMT_MTD_SBV_LCY
       , 0	SLR_PYMT_AMT_MTD_SBV_FCY
       , 0	SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , 0	SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , 0	DD_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	DD_CLS_BAL_AMT_TDY_SBV_LCY
       , 999999	 AGRCT_AREA_SBV_DIM_ID
       , 999999	 AR_LOAN_STC_SBV_DIM_ID
       , 999999	 INT_RATE_SEG_DIM_ID
       , 0	NUM_OF_ACC_IDV_DD_SBV
       , 0	DSBR_AMT_LTD_SBV_FCY
       , 0	DSBR_AMT_LTD_SBV_LCY
       , 0	PNP_PYMT_AMT_LTD_SBV_FCY
       , 0	PNP_PYMT_AMT_LTD_SBV_LCY
       , 999999	 PRPT_PPS_SBV_DIM_ID
       , 0	BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , 0	BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , 0	BO_DSBR_AMT_MTD_SBV_FCY
       , 0	BO_DSBR_AMT_MTD_SBV_LCY
       , 999999	 CO_SME_SBV_DIM_ID
	    		, 0 TOT_INCM_CASH_FCY
		, 0 TOT_EXPN_CASH_FCY
		, 0 FND_AMT_CASH_FCY
		, 0 TOT_AMT_UNQLF_CCL_IMP_FCY
		, 0 TOT_AMT_UNQLF_CCL_EXP_FCY
		, 0 IVNT_AMT_UNQLF_CCL_FCY
	
FROM  TMP_AR_ANL_FCT_STD_SBV  TWT
LEFT JOIN SRC_STM_DIM SRC_STM_DIM	ON SRC_STM_DIM.LVL_0_ID	= TWT.SRC_STM_ID AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= SRC_STM_DIM.EFF_FM_DT AND SRC_STM_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1

LEFT JOIN OU_DIM OU_DIM			ON OU_DIM.ORG_UNIT_ID = TWT.ORG_UNIT_ID AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= OU_DIM.EFF_FM_DT AND OU_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN CCY_DIM CCY_DIM			ON CCY_DIM.CCY_ID = TWT.DNMN_CCY_ID AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= CCY_DIM.EFF_FM_DT AND CCY_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN CST_TP_ORG_IDV_SBV_DIM ON TWT.CST_TP_ORG_IDV_SBV_CODE =  CST_TP_ORG_IDV_SBV_DIM.LVL_0_CODE
LEFT JOIN ACG_STC_ITM_DIM ACG_STC_DIM	ON ACG_STC_DIM.LVL_0_ID = TWT.BAL_ACG_STC_ITM_ID AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= ACG_STC_DIM.EFF_FM_DT AND ACG_STC_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN ACG_STC_ITM_SBV_DIM ACG_STC_SBV_DIM	ON ACG_STC_SBV_DIM.LVL_0_ID = TWT.BAL_ACG_STC_ITM_SBV_ID AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= ACG_STC_SBV_DIM.EFF_FM_DT AND ACG_STC_SBV_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN CST_TP_RSDNC_SBV_DIM ON (
CASE WHEN TWT.CST_TP_RSDNC_SBV_CODE IN ('425','426')  THEN TWT.CST_TP_RSDNC_SBV_CODE = CST_TP_RSDNC_SBV_DIM.LVL_0_CODE
	 WHEN SUBSTR(TWT.CST_TP_RSDNC_SBV_CODE,1,2) = '26'  THEN  SUBSTR(TWT.CST_TP_RSDNC_SBV_CODE,1,2)  =  CST_TP_RSDNC_SBV_DIM.LVL_0_CODE
	 ELSE (CASE WHEN CST_TP_RSDNC_SBV_DIM.LVL_0_CODE IS NOT NULL THEN  CST_TP_RSDNC_SBV_DIM.LVL_0_CODE = '0' ELSE null END )
	 END
)
AND CST_TP_RSDNC_SBV_DIM.EFF_FM_DT <= DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 AND CST_TP_RSDNC_SBV_DIM.EFF_TO_DT > DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN 	CSTB_AR_TM_TO_MAT_SEQ_MP_RL ORG_TERM_SEG ON ORG_TERM_SEG.TERM_CODE = TWT.TERM_CODE 
		AND TWT.TERM >= ORG_TERM_SEG.MIN_TERM AND TWT.TERM < ORG_TERM_SEG.MAX_TERM 
	    AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= ORG_TERM_SEG.EFF_DT AND ORG_TERM_SEG.END_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1

LEFT JOIN TERM_BAL_SBV_DIM	ON   TWT.TERM_BAL_SBV_CODE  = TERM_BAL_SBV_DIM.LVL_0_CODE 
                                 
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= TERM_BAL_SBV_DIM.EFF_FM_DT AND TERM_BAL_SBV_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1

LEFT JOIN LBY_TP_SBV_DIM	ON NVL(TWT.LBY_TP_SBV_CODE,'UNKNOWS') = LBY_TP_SBV_DIM.LVL_0_CODE  and LBY_TP_SBV_DIM.LVL_0_CODE <>'0'
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= LBY_TP_SBV_DIM.EFF_FM_DT AND LBY_TP_SBV_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN CST_TP_SBV_DIM	ON TWT.CST_TP_SBV_CODE = CST_TP_SBV_DIM.LVL_0_CODE 
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= CST_TP_SBV_DIM.EFF_FM_DT AND CST_TP_SBV_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN AR_PPS_DIM ON TWT.AR_PPS_TP_ID = AR_PPS_DIM.LVL_0_ID
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= AR_PPS_DIM.EFF_FM_DT AND AR_PPS_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN PPS_IDY_CL_SBV_DIM  PPS_SBV_DIM ON PPS_SBV_DIM.LVL_1_CODE = AR_PPS_DIM.LVL_0_CODE 
AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= PPS_SBV_DIM.EFF_FM_DT AND PPS_SBV_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
UNION 
SELECT 
		999999   AR_ID
		,	TWT.DATADATE7    TM_PRD_DIM_ID
		, NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)		ORG_UNIT_DIM_ID
		, NVL(CCY_DIM.CCY_DM_ID, 999999)					CCY_DIM_ID
		, 999999				AR_DIM_ID 
        , 999999 				CST_DIM_ID
		, 999999			IDY_SML_ID_DIM_ID
		, 999999			PPS_IDY_CL_DIM_ID
		, 999999		CST_TP_ORG_IDV_SBV_DIM_ID
		, NVL(ACG_STC_DIM.ACG_STC_ITM_DIM_ID, 999999)				BAL_ACG_STC_ITM_DIM_ID
		, NVL(ACG_STC_SBV_DIM.ACG_STC_ITM_SBV_DIM_ID, 999999)		BAL_ACG_STC_ITM_SBV_DIM_ID
		, 999999 	CST_TP_RSDNC_SBV_DIM_ID
        , 999999   		ORIG_TM_TO_MAT_SEG_DIM_ID
		, 999999 TERM_BAL_SBV_DIM_ID
		, 999999 LBY_TP_SBV_DIM_ID
		, 999999 CST_TP_SBV_DIM_ID
		, 251500004					SRC_STM_DIM_ID
		, 999999				PD_DIM_ID	
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
		
		,999999  CST_PERF_ST_DIM_ID
       , 999999	 CST_BIDV_PERF_ST_SBV_DIM_ID
       , 999999	 CST_CIC_PERF_ST_SBV_DIM_ID
       , 999999	 LIFE_PPS_SBV_DIM_ID
       , 999999	 RI_TP_SBV_DIM_ID
       , 999999	 TRD_FNC_TXN_SBV_DIM_ID
       , 999999	 CST_RSDNC_SBV_DIM_ID
       , 0	AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	STK_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	STK_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , 0	SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	PNP_PYMT_AMT_MTD_SBV_LCY
       , 0	PNP_PYMT_AMT_MTD_SBV_FCY
       , 0	PNP_PYMT_AMT_YTD_SBV_FCY
       , 0	PNP_PYMT_AMT_YTD_SBV_LCY
       , 0	TOT_PDA_PNP_AMT_SBV_FCY
       , 0	TOT_PDA_PNP_AMT_SBV_LCY
       , 0	TOT_LMT_AMT_SBV_LCY
       , 0	TOT_LMT_AMT_SBV_FCY
       , 0	CLS_BG_BAL_AMT_TDY_SBV_LCY
       , 0	CLS_BG_BAL_AMT_TDY_SBV_FCY
       , 0	CLS_LC_BAL_AMT_TDY_SBV_LCY
       , 0	CLS_LC_BAL_AMT_TDY_SBV_FCY
       , 0	LBY_ACT_INT_RATE_SBV_TDY
       , 0	AST_ACT_INT_RATE_SBV_TDY
       , 0	AST_CLS_BAL_AMT_TDY_LCY
       , 0	LBY_CLS_BAL_AMT_TDY_LCY
       , 0	NBR_OF_ACC_SBV_AST
       , 0	NBR_OF_ACC_SBV_LBY
       , 0	NBR_NEW_OF_ACC_SBV_AST
       , 0	NBR_NEW_OF_ACC_SBV_LBY
       , 0	GL_CLS_BAL_AMT_TDY_FCY
       , 0	GL_CLS_BAL_AMT_TDY_LCY
       , 0	CLS_BAL_CHRTER_CPTL_LCY
       , 0	CLS_BAL_CHRTER_CPTL_FCY
       , 0	SLR_PYMT_AMT_MTD_SBV_LCY
       , 0	SLR_PYMT_AMT_MTD_SBV_FCY
       , 0	SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , 0	SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , 0	DD_CLS_BAL_AMT_TDY_SBV_FCY
       , 0	DD_CLS_BAL_AMT_TDY_SBV_LCY
       , 999999	 AGRCT_AREA_SBV_DIM_ID
       , 999999	 AR_LOAN_STC_SBV_DIM_ID
       , 999999	 INT_RATE_SEG_DIM_ID
       , 0	NUM_OF_ACC_IDV_DD_SBV
       , 0	DSBR_AMT_LTD_SBV_FCY
       , 0	DSBR_AMT_LTD_SBV_LCY
       , 0	PNP_PYMT_AMT_LTD_SBV_FCY
       , 0	PNP_PYMT_AMT_LTD_SBV_LCY
       , 999999	 PRPT_PPS_SBV_DIM_ID
       , 0	BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , 0	BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , 0	BO_DSBR_AMT_MTD_SBV_FCY
       , 0	BO_DSBR_AMT_MTD_SBV_LCY
       , 999999	 CO_SME_SBV_DIM_ID
	   		, TWT.TOT_INCM_CASH_FCY
		, TWT.TOT_EXPN_CASH_FCY
		, TWT.FND_AMT_CASH_FCY
		, TWT.TOT_AMT_UNQLF_CCL_IMP_FCY
		, TWT.TOT_AMT_UNQLF_CCL_EXP_FCY
		, TWT.IVNT_AMT_UNQLF_CCL_FCY

FROM  		TMP_GL0206_MONTHLY_SBV  TWT
LEFT JOIN 	OU_DIM OU_DIM	ON OU_DIM.ORG_UNIT_CODE = TWT.BRANCH
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= OU_DIM.EFF_FM_DT 
		AND OU_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN 	CCY_DIM CCY_DIM ON CCY_DIM.CCY_CODE = TWT.CCY_CODE
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= CCY_DIM.EFF_FM_DT 
		AND CCY_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN 	ACG_STC_ITM_DIM ACG_STC_DIM	ON ACG_STC_DIM.ACG_STC_CODE = TWT.GL_BIDV 
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= ACG_STC_DIM.EFF_FM_DT 
		AND ACG_STC_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
LEFT JOIN 	ACG_STC_ITM_SBV_DIM ACG_STC_SBV_DIM	ON ACG_STC_SBV_DIM.ACG_STC_CODE_SBV = TWT.GL_SBV 
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= ACG_STC_SBV_DIM.EFF_FM_DT 
		AND ACG_STC_SBV_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1;

DELETE FROM AR_ANL_SBV_FCT WHERE TM_PRD_DIM_ID  = to_number(to_char(date_trunc('MONTH',to_date(:pDate:,'yyyyddd'))-1,'yyyyddd'),9999999)
AND SRC_STM_DIM_ID in (SELECT SRC_STM_DIM_ID FROM SRC_STM_DIM WHERE LVL_0_CODE in ('DFR_GL','ERP_GL0206'));
