SELECT  ast_bal.LVL_1_ID		CST_AST_BAL_SEG_DIM_ID
	   , ACG_STC_GRP_DIM_ID		ACG_STC_GRP_DIM_ID
       , act_tm.LVL_1_ID		ACT_TM_TO_MAT_SEG_DIM_ID
       , lmt.LVL_2_ID			CR_LMT_SEG_DIM_ID
       , CST_MKT_SEG_DIM_ID		CST_MKT_SEG_DIM_ID
       , ar_bal.LVL_1_ID		AR_BAL_SEG_DIM_ID
       , AR_FNC_ST_DIM_ID		AR_FNC_ST_DIM_ID
       , AR_LCS_DIM_ID			AR_LCS_DIM_ID
       , AR_PPS_DIM_ID			AR_PPS_DIM_ID
       , AR_TP_DIM_ID			AR_TP_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID BAL_ACG_STC_ITM_DIM_ID
       , BAL_SHET_TP_DIM_ID		BAL_SHET_TP_DIM_ID
       , CCY_DIM_ID				CCY_DIM_ID
       , CST_PERF_ST_DIM_ID		CST_PERF_ST_DIM_ID
       , CST_TP_DIM_ID			CST_TP_DIM_ID
       , IDY_SML_ID_DIM_ID		IDY_SML_ID_DIM_ID
       , int_rate.LVL_1_ID		INT_RATE_SEG_DIM_ID
       , LINE_OF_BSN_DIM_ID		LINE_OF_BSN_DIM_ID
       , ORG_UNIT_DIM_ID		ORG_UNIT_DIM_ID
       , org_tm.LVL_1_ID		ORIG_TM_TO_MAT_SEG_DIM_ID
       , PD_DIM_ID				PD_DIM_ID
       , rman_tm.LVL_1_ID		RMAN_TM_TO_MAT_SEG_DIM_ID
       , SCR_CVR_DIM_ID
       , t.SRC_STM_DIM_ID
       , TM_PRD_DIM_ID
       , MTH_ISSU_TP_DIM_ID
       , RTO_DBT_TP_DIM_ID
       , lby_bal.LVL_1_ID		CST_LBY_BAL_SEG_DIM_ID
       , AR_CRT_DEPT_DIM_ID
       , AR_MGT_DEPT_DIM_ID
       , CST_CRT_DEPT_DIM_ID
       , CST_MGT_DEPT_DIM_ID
       , CST_LIFE_CYC_ST_DIM_ID
       , CST_SEG_DIM_ID
       , CR_RSK_RTG_DIM_ID
       , CST_SEG_SME_DIM_ID
	, SUM(NVL(ADJ_INT_AMT_LTD_FCY, 0))				ADJ_INT_AMT_LTD_FCY
	, SUM(NVL(ADJ_INT_AMT_LTD_LCY, 0))				ADJ_INT_AMT_LTD_LCY
	, SUM(NVL(ADJ_INT_AMT_MTD_FCY, 0))				ADJ_INT_AMT_MTD_FCY
	, SUM(NVL(ADJ_INT_AMT_MTD_LCY, 0))				ADJ_INT_AMT_MTD_LCY
	, SUM(NVL(ADJ_INT_AMT_QTD_FCY, 0))				ADJ_INT_AMT_QTD_FCY
	, SUM(NVL(ADJ_INT_AMT_QTD_LCY, 0))				ADJ_INT_AMT_QTD_LCY
	, SUM(NVL(ADJ_INT_AMT_TDY_FCY, 0))				ADJ_INT_AMT_TDY_FCY
	, SUM(NVL(ADJ_INT_AMT_TDY_LCY, 0))				ADJ_INT_AMT_TDY_LCY
	, SUM(NVL(ADJ_INT_AMT_YTD_FCY, 0))				ADJ_INT_AMT_YTD_FCY
	, SUM(NVL(ADJ_INT_AMT_YTD_LCY, 0))				ADJ_INT_AMT_YTD_LCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_PTD_FCY, 0))				AST_ACR_PNY_INT_AMT_PTD_FCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_PTD_LCY, 0))				AST_ACR_PNY_INT_AMT_PTD_LCY
	, SUM(NVL(AST_ACR_INT_LTD_FCY, 0))				AST_ACR_INT_LTD_FCY
	, SUM(NVL(AST_ACR_INT_LTD_LCY, 0))				AST_ACR_INT_LTD_LCY
	, MAX(NVL(CNTS_OD_BSN_NBR_OF_DYS, 0))				CNTS_OD_BSN_NBR_OF_DYS
	, MAX(NVL(CNTS_OD_NBR_OF_DYS, 0))				CNTS_OD_NBR_OF_DYS
	, SUM(NVL(ERLY_WD_AMT_LTD_FCY, 0))				ERLY_WD_AMT_LTD_FCY
	, SUM(NVL(ERLY_WD_AMT_LTD_LCY, 0))				ERLY_WD_AMT_LTD_LCY
	, SUM(NVL(ERLY_WD_AMT_MTD_FCY, 0))				ERLY_WD_AMT_MTD_FCY
	, SUM(NVL(ERLY_WD_AMT_MTD_LCY, 0))				ERLY_WD_AMT_MTD_LCY
	, SUM(NVL(ERLY_WD_AMT_QTD_FCY, 0))				ERLY_WD_AMT_QTD_FCY
	, SUM(NVL(ERLY_WD_AMT_QTD_LCY, 0))				ERLY_WD_AMT_QTD_LCY
	, SUM(NVL(ERLY_WD_AMT_TDY_FCY, 0))				ERLY_WD_AMT_TDY_FCY
	, SUM(NVL(ERLY_WD_AMT_TDY_LCY, 0))				ERLY_WD_AMT_TDY_LCY
	, SUM(NVL(ERLY_WD_AMT_YTD_FCY, 0))				ERLY_WD_AMT_YTD_FCY
	, SUM(NVL(ERLY_WD_AMT_YTD_LCY, 0))				ERLY_WD_AMT_YTD_LCY
	, SUM(NVL(AST_ACR_INT_MTD_FCY, 0))				AST_ACR_INT_MTD_FCY
	, SUM(NVL(AST_ACR_INT_MTD_LCY, 0))				AST_ACR_INT_MTD_LCY
	, SUM(NVL(AST_ACR_INT_PTD_FCY, 0))				AST_ACR_INT_PTD_FCY
	, SUM(NVL(AST_ACR_INT_PTD_LCY, 0))				AST_ACR_INT_PTD_LCY
	, SUM(NVL(AST_ACR_INT_QTD_FCY, 0))				AST_ACR_INT_QTD_FCY
	, SUM(NVL(AST_ACR_INT_QTD_LCY, 0))				AST_ACR_INT_QTD_LCY
	, SUM(NVL(AST_ACR_INT_TDY_FCY, 0))				AST_ACR_INT_TDY_FCY
	, SUM(NVL(AST_ACR_INT_TDY_LCY, 0))				AST_ACR_INT_TDY_LCY
	, SUM(NVL(AST_ACR_INT_YTD_FCY, 0))				AST_ACR_INT_YTD_FCY
	, SUM(NVL(AST_ACR_INT_YTD_LCY, 0))				AST_ACR_INT_YTD_LCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_MTD_FCY, 0))				AST_ACR_PNY_INT_AMT_MTD_FCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_MTD_LCY, 0))				AST_ACR_PNY_INT_AMT_MTD_LCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_QTD_FCY, 0))				AST_ACR_PNY_INT_AMT_QTD_FCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_QTD_LCY, 0))				AST_ACR_PNY_INT_AMT_QTD_LCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_TDY_FCY, 0))				AST_ACR_PNY_INT_AMT_TDY_FCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_TDY_LCY, 0))				AST_ACR_PNY_INT_AMT_TDY_LCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_YTD_FCY, 0))				AST_ACR_PNY_INT_AMT_YTD_FCY
	, SUM(NVL(AST_ACR_PNY_INT_AMT_YTD_LCY, 0))				AST_ACR_PNY_INT_AMT_YTD_LCY
	, AVG(NVL(AST_ACT_INT_RATE_TDY, 0))				AST_ACT_INT_RATE_TDY
	, SUM(NVL(AST_INT_PYMT_AMT_MTD_FCY, 0))				AST_INT_PYMT_AMT_MTD_FCY
	, SUM(NVL(AST_INT_PYMT_AMT_MTD_LCY, 0))				AST_INT_PYMT_AMT_MTD_LCY
	, SUM(NVL(AST_INT_PYMT_AMT_QTD_FCY, 0))				AST_INT_PYMT_AMT_QTD_FCY
	, SUM(NVL(AST_INT_PYMT_AMT_QTD_LCY, 0))				AST_INT_PYMT_AMT_QTD_LCY
	, SUM(NVL(AST_INT_PYMT_AMT_TDY_FCY, 0))				AST_INT_PYMT_AMT_TDY_FCY
	, SUM(NVL(AST_INT_PYMT_AMT_TDY_LCY, 0))				AST_INT_PYMT_AMT_TDY_LCY
	, SUM(NVL(AST_INT_PYMT_AMT_YTD_FCY, 0))				AST_INT_PYMT_AMT_YTD_FCY
	, SUM(NVL(AST_INT_PYMT_AMT_YTD_LCY, 0))				AST_INT_PYMT_AMT_YTD_LCY
	, SUM(NVL(CLS_BAL_AMT_LMTH_FCY, 0))				CLS_BAL_AMT_LMTH_FCY
	, SUM(NVL(CLS_BAL_AMT_LMTH_LCY, 0))				CLS_BAL_AMT_LMTH_LCY
	, SUM(NVL(CLS_BAL_AMT_LQTR_FCY, 0))				CLS_BAL_AMT_LQTR_FCY
	, SUM(NVL(CLS_BAL_AMT_LQTR_LCY, 0))				CLS_BAL_AMT_LQTR_LCY
	, SUM(NVL(CLS_BAL_AMT_LYR_FCY, 0))				CLS_BAL_AMT_LYR_FCY
	, SUM(NVL(CLS_BAL_AMT_LYR_LCY, 0))				CLS_BAL_AMT_LYR_LCY
	, SUM(NVL(CLS_BAL_AMT_TDY_FCY, 0))				CLS_BAL_AMT_TDY_FCY
	, SUM(NVL(CLS_BAL_AMT_TDY_LCY, 0))				CLS_BAL_AMT_TDY_LCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_LMTH_FCY, 0) else 0 end)				CLS_ON_BAL_AMT_LMTH_FCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_LMTH_LCY, 0) else 0 end)				CLS_ON_BAL_AMT_LMTH_LCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_LQTR_FCY, 0) else 0 end)				CLS_ON_BAL_AMT_LQTR_FCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_LQTR_LCY, 0) else 0 end)				CLS_ON_BAL_AMT_LQTR_LCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_LYR_FCY, 0) else 0 end)				CLS_ON_BAL_AMT_LYR_FCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_LYR_LCY, 0) else 0 end)				CLS_ON_BAL_AMT_LYR_LCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_TDY_FCY, 0) else 0 end)				CLS_ON_BAL_AMT_TDY_FCY
	, SUM(case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then NVL(CLS_BAL_AMT_TDY_LCY, 0) else 0 end)				CLS_ON_BAL_AMT_TDY_LCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_FCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_FCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_LCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_LCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_MTD_FCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_MTD_FCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_MTD_LCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_MTD_LCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_QTD_FCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_QTD_FCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_QTD_LCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_QTD_LCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_YTD_FCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_YTD_FCY
	, SUM(NVL(CLS_BAL_AMT_TO_WRT_OFF_YTD_LCY, 0))				CLS_BAL_AMT_TO_WRT_OFF_YTD_LCY
	, SUM(NVL(CST_CR_AMT_LTD_FCY, 0))				CST_CR_AMT_LTD_FCY
	, SUM(NVL(CST_CR_AMT_LTD_LCY, 0))				CST_CR_AMT_LTD_LCY
	, SUM(NVL(CST_CR_AMT_MTD_FCY, 0))				CST_CR_AMT_MTD_FCY
	, SUM(NVL(CST_CR_AMT_MTD_LCY, 0))				CST_CR_AMT_MTD_LCY
	, SUM(NVL(CST_CR_AMT_QTD_FCY, 0))				CST_CR_AMT_QTD_FCY
	, SUM(NVL(CST_CR_AMT_QTD_LCY, 0))				CST_CR_AMT_QTD_LCY
	, SUM(NVL(CST_CR_AMT_TDY_FCY, 0))				CST_CR_AMT_TDY_FCY
	, SUM(NVL(CST_CR_AMT_TDY_LCY, 0))				CST_CR_AMT_TDY_LCY
	, SUM(NVL(CST_CR_AMT_YTD_FCY, 0))				CST_CR_AMT_YTD_FCY
	, SUM(NVL(CST_CR_AMT_YTD_LCY, 0))				CST_CR_AMT_YTD_LCY
	, SUM(NVL(CST_DB_AMT_LTD_FCY, 0))				CST_DB_AMT_LTD_FCY
	, SUM(NVL(CST_DB_AMT_LTD_LCY, 0))				CST_DB_AMT_LTD_LCY
	, SUM(NVL(CST_DB_AMT_MTD_FCY, 0))				CST_DB_AMT_MTD_FCY
	, SUM(NVL(CST_DB_AMT_MTD_LCY, 0))				CST_DB_AMT_MTD_LCY
	, SUM(NVL(CST_DB_AMT_QTD_FCY, 0))				CST_DB_AMT_QTD_FCY
	, SUM(NVL(CST_DB_AMT_QTD_LCY, 0))				CST_DB_AMT_QTD_LCY
	, SUM(NVL(CST_DB_AMT_TDY_FCY, 0))				CST_DB_AMT_TDY_FCY
	, SUM(NVL(CST_DB_AMT_TDY_LCY, 0))				CST_DB_AMT_TDY_LCY
	, SUM(NVL(CST_DB_AMT_YTD_FCY, 0))				CST_DB_AMT_YTD_FCY
	, SUM(NVL(CST_DB_AMT_YTD_LCY, 0))				CST_DB_AMT_YTD_LCY
	, SUM(NVL(DSBR_AMT_LTD_FCY, 0))				DSBR_AMT_LTD_FCY
	, SUM(NVL(DSBR_AMT_LTD_LCY, 0))				DSBR_AMT_LTD_LCY
	, SUM(NVL(DSBR_AMT_MTD_FCY, 0))				DSBR_AMT_MTD_FCY
	, SUM(NVL(DSBR_AMT_MTD_LCY, 0))				DSBR_AMT_MTD_LCY
	, SUM(NVL(DSBR_AMT_QTD_FCY, 0))				DSBR_AMT_QTD_FCY
	, SUM(NVL(DSBR_AMT_QTD_LCY, 0))				DSBR_AMT_QTD_LCY
	, SUM(NVL(DSBR_AMT_TDY_FCY, 0))				DSBR_AMT_TDY_FCY
	, SUM(NVL(DSBR_AMT_TDY_LCY, 0))				DSBR_AMT_TDY_LCY
	, SUM(NVL(DSBR_AMT_YTD_FCY, 0))				DSBR_AMT_YTD_FCY
	, SUM(NVL(DSBR_AMT_YTD_LCY, 0))				DSBR_AMT_YTD_LCY
	, SUM(NVL(INT_BAL_OF_SOLD_LOAN_FCY, 0))				INT_BAL_OF_SOLD_LOAN_FCY
	, SUM(NVL(INT_BAL_OF_SOLD_LOAN_LCY, 0))				INT_BAL_OF_SOLD_LOAN_LCY
	, SUM(NVL(LAST_INT_PYMT_AMT_FCY, 0))				LAST_INT_PYMT_AMT_FCY
	, SUM(NVL(LAST_INT_PYMT_AMT_LCY, 0))				LAST_INT_PYMT_AMT_LCY
	, SUM(NVL(LAST_PNP_PYMT_AMT_FCY, 0))				LAST_PNP_PYMT_AMT_FCY
	, SUM(NVL(LAST_PNP_PYMT_AMT_LCY, 0))				LAST_PNP_PYMT_AMT_LCY
	, SUM(NVL(LBY_ACR_INT_MTD_FCY, 0))				LBY_ACR_INT_MTD_FCY
	, SUM(NVL(LBY_ACR_INT_MTD_LCY, 0))				LBY_ACR_INT_MTD_LCY
	, SUM(NVL(LBY_ACR_INT_PTD_FCY, 0))				LBY_ACR_INT_PTD_FCY
	, SUM(NVL(LBY_ACR_INT_PTD_LCY, 0))				LBY_ACR_INT_PTD_LCY
	, SUM(NVL(LBY_ACR_INT_QTD_FCY, 0))				LBY_ACR_INT_QTD_FCY
	, SUM(NVL(LBY_ACR_INT_QTD_LCY, 0))				LBY_ACR_INT_QTD_LCY
	, SUM(NVL(LBY_ACR_INT_TDY_FCY, 0))				LBY_ACR_INT_TDY_FCY
	, SUM(NVL(LBY_ACR_INT_TDY_LCY, 0))				LBY_ACR_INT_TDY_LCY
	, SUM(NVL(LBY_ACR_INT_YTD_FCY, 0))				LBY_ACR_INT_YTD_FCY
	, SUM(NVL(LBY_ACR_INT_YTD_LCY, 0))				LBY_ACR_INT_YTD_LCY
	, SUM(NVL(LBY_ACR_PNY_INT_MTD_FCY, 0))				LBY_ACR_PNY_INT_MTD_FCY
	, SUM(NVL(LBY_ACR_PNY_INT_MTD_LCY, 0))				LBY_ACR_PNY_INT_MTD_LCY
	, SUM(NVL(LBY_ACR_PNY_INT_PTD_FCY, 0))				LBY_ACR_PNY_INT_PTD_FCY
	, SUM(NVL(LBY_ACR_PNY_INT_PTD_LCY, 0))				LBY_ACR_PNY_INT_PTD_LCY
	, SUM(NVL(LBY_ACR_PNY_INT_QTD_FCY, 0))				LBY_ACR_PNY_INT_QTD_FCY
	, SUM(NVL(LBY_ACR_PNY_INT_QTD_LCY, 0))				LBY_ACR_PNY_INT_QTD_LCY
	, SUM(NVL(LBY_ACR_PNY_INT_TDY_FCY, 0))				LBY_ACR_PNY_INT_TDY_FCY
	, SUM(NVL(LBY_ACR_PNY_INT_TDY_LCY, 0))				LBY_ACR_PNY_INT_TDY_LCY
	, SUM(NVL(LBY_ACR_PNY_INT_YTD_FCY, 0))				LBY_ACR_PNY_INT_YTD_FCY
	, SUM(NVL(LBY_ACR_PNY_INT_YTD_LCY, 0))				LBY_ACR_PNY_INT_YTD_LCY
	, AVG(NVL(LBY_ACT_INT_RATE_TDY, 0))				LBY_ACT_INT_RATE_TDY
	, AVG(NVL(LBY_BR_BSC_INT_RATE_TDY, 0))				LBY_BR_BSC_INT_RATE_TDY
	, SUM(NVL(LBY_CLT_BAL_TDY_FCY, 0))				LBY_CLT_BAL_TDY_FCY
	, SUM(NVL(LBY_CLT_BAL_TDY_LCY, 0))				LBY_CLT_BAL_TDY_LCY
	, AVG(NVL(LBY_HD_OFFC_BSC_INT_RATE_TDY, 0))				LBY_HD_OFFC_BSC_INT_RATE_TDY
	, SUM(NVL(LBY_INT_AMT_MTD_FCY, 0))				LBY_INT_AMT_MTD_FCY
	, SUM(NVL(LBY_INT_AMT_MTD_LCY, 0))				LBY_INT_AMT_MTD_LCY
	, SUM(NVL(LBY_INT_AMT_QTD_FCY, 0))				LBY_INT_AMT_QTD_FCY
	, SUM(NVL(LBY_INT_AMT_QTD_LCY, 0))				LBY_INT_AMT_QTD_LCY
	, SUM(NVL(LBY_INT_AMT_TDY_FCY, 0))				LBY_INT_AMT_TDY_FCY
	, SUM(NVL(LBY_INT_AMT_TDY_LCY, 0))				LBY_INT_AMT_TDY_LCY
	, SUM(NVL(LBY_INT_AMT_YTD_FCY, 0))				LBY_INT_AMT_YTD_FCY
	, SUM(NVL(LBY_INT_AMT_YTD_LCY, 0))				LBY_INT_AMT_YTD_LCY
	, SUM(NVL(NXT_INT_PYMT_AMT_FCY, 0))				NXT_INT_PYMT_AMT_FCY
	, SUM(NVL(NXT_INT_PYMT_AMT_LCY, 0))				NXT_INT_PYMT_AMT_LCY
	, SUM(NVL(NXT_PNP_PYMT_AMT_FCY, 0))				NXT_PNP_PYMT_AMT_FCY
	, SUM(NVL(NXT_PNP_PYMT_AMT_LCY, 0))				NXT_PNP_PYMT_AMT_LCY
	, SUM(NVL(NBR_OF_CST_CR_LTD, 0))				NBR_OF_CST_CR_LTD
	, SUM(NVL(NBR_OF_CST_CR_MTD, 0))				NBR_OF_CST_CR_MTD
	, SUM(NVL(NBR_OF_CST_CR_QTD, 0))				NBR_OF_CST_CR_QTD
	, SUM(NVL(NBR_OF_CST_CR_TDY, 0))				NBR_OF_CST_CR_TDY
	, SUM(NVL(NBR_OF_CST_CR_YTD, 0))				NBR_OF_CST_CR_YTD
	, SUM(NVL(NBR_OF_CST_DB_LTD, 0))				NBR_OF_CST_DB_LTD
	, SUM(NVL(NBR_OF_CST_DB_MTD, 0))				NBR_OF_CST_DB_MTD
	, SUM(NVL(NBR_OF_CST_DB_QTD, 0))				NBR_OF_CST_DB_QTD
	, SUM(NVL(NBR_OF_CST_DB_TDY, 0))				NBR_OF_CST_DB_TDY
	, SUM(NVL(NBR_OF_CST_DB_YTD, 0))				NBR_OF_CST_DB_YTD
	, SUM(NVL(NBR_OF_FEE_TXN_LTD, 0))				NBR_OF_FEE_TXN_LTD
	, SUM(NVL(NBR_OF_FEE_TXN_MTD, 0))				NBR_OF_FEE_TXN_MTD
	, SUM(NVL(NBR_OF_FEE_TXN_QTD, 0))				NBR_OF_FEE_TXN_QTD
	, SUM(NVL(NBR_OF_FEE_TXN_TDY, 0))				NBR_OF_FEE_TXN_TDY
	, SUM(NVL(NBR_OF_FEE_TXN_YTD, 0))				NBR_OF_FEE_TXN_YTD
	, MAX(NVL(NBR_OF_INT_PYMT_SHD_CHG, 0))				NBR_OF_INT_PYMT_SHD_CHG
	, MAX(NVL(NBR_MAT_DT_CHG, 0))				NBR_MAT_DT_CHG
	, SUM(NVL(NBR_OF_OTHR_CR_LTD, 0))				NBR_OF_OTHR_CR_LTD
	, SUM(NVL(NBR_OF_OTHR_CR_MTD, 0))				NBR_OF_OTHR_CR_MTD
	, SUM(NVL(NBR_OF_OTHR_CR_QTD, 0))				NBR_OF_OTHR_CR_QTD
	, SUM(NVL(NBR_OF_OTHR_CR_TDY, 0))				NBR_OF_OTHR_CR_TDY
	, SUM(NVL(NBR_OF_OTHR_CR_YTD, 0))				NBR_OF_OTHR_CR_YTD
	, SUM(NVL(NBR_OF_OTHR_DB_LTD, 0))				NBR_OF_OTHR_DB_LTD
	, SUM(NVL(NBR_OF_OTHR_DB_MTD, 0))				NBR_OF_OTHR_DB_MTD
	, SUM(NVL(NBR_OF_OTHR_DB_QTD, 0))				NBR_OF_OTHR_DB_QTD
	, SUM(NVL(NBR_OF_OTHR_DB_TDY, 0))				NBR_OF_OTHR_DB_TDY
	, SUM(NVL(NBR_OF_OTHR_DB_YTD, 0))				NBR_OF_OTHR_DB_YTD
	, MAX(NVL(NBR_PYMT_SCH_CHG, 0))				NBR_PYMT_SCH_CHG
	, MAX(NVL(NBR_OF_RENEWS, 0))				NBR_OF_RENEWS
	, MAX(NVL(NBR_TERM_CHG, 0))				NBR_TERM_CHG
	, SUM(NVL(OFF_BAL_ACR_INT_PTD_FCY, 0))				OFF_BAL_ACR_INT_PTD_FCY
	, SUM(NVL(OFF_BAL_ACR_INT_PTD_LCY, 0))				OFF_BAL_ACR_INT_PTD_LCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_LTD_FCY, 0))				OFF_BAL_INT_PYMT_AMT_LTD_FCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_LTD_LCY, 0))				OFF_BAL_INT_PYMT_AMT_LTD_LCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_MTD_FCY, 0))				OFF_BAL_INT_PYMT_AMT_MTD_FCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_MTD_LCY, 0))				OFF_BAL_INT_PYMT_AMT_MTD_LCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_QTD_FCY, 0))				OFF_BAL_INT_PYMT_AMT_QTD_FCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_QTD_LCY, 0))				OFF_BAL_INT_PYMT_AMT_QTD_LCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_TDY_FCY, 0))				OFF_BAL_INT_PYMT_AMT_TDY_FCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_TDY_LCY, 0))				OFF_BAL_INT_PYMT_AMT_TDY_LCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_YTD_FCY, 0))				OFF_BAL_INT_PYMT_AMT_YTD_FCY
	, SUM(NVL(OFF_BAL_INT_PYMT_AMT_YTD_LCY, 0))				OFF_BAL_INT_PYMT_AMT_YTD_LCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_LTD_FCY, 0))				OFF_BAL_PNP_PYMT_AMT_LTD_FCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_LTD_LCY, 0))				OFF_BAL_PNP_PYMT_AMT_LTD_LCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_MTD_FCY, 0))				OFF_BAL_PNP_PYMT_AMT_MTD_FCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_MTD_LCY, 0))				OFF_BAL_PNP_PYMT_AMT_MTD_LCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_QTD_FCY, 0))				OFF_BAL_PNP_PYMT_AMT_QTD_FCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_QTD_LCY, 0))				OFF_BAL_PNP_PYMT_AMT_QTD_LCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_TDY_FCY, 0))				OFF_BAL_PNP_PYMT_AMT_TDY_FCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_TDY_LCY, 0))				OFF_BAL_PNP_PYMT_AMT_TDY_LCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_YTD_FCY, 0))				OFF_BAL_PNP_PYMT_AMT_YTD_FCY
	, SUM(NVL(OFF_BAL_PNP_PYMT_AMT_YTD_LCY, 0))				OFF_BAL_PNP_PYMT_AMT_YTD_LCY
	, SUM(NVL(OTHR_CR_AMT_LTD_FCY, 0))				OTHR_CR_AMT_LTD_FCY
	, SUM(NVL(OTHR_CR_AMT_LTD_LCY, 0))				OTHR_CR_AMT_LTD_LCY
	, SUM(NVL(OTHR_CR_AMT_MTD_FCY, 0))				OTHR_CR_AMT_MTD_FCY
	, SUM(NVL(OTHR_CR_AMT_MTD_LCY, 0))				OTHR_CR_AMT_MTD_LCY
	, SUM(NVL(OTHR_CR_AMT_QTD_FCY, 0))				OTHR_CR_AMT_QTD_FCY
	, SUM(NVL(OTHR_CR_AMT_QTD_LCY, 0))				OTHR_CR_AMT_QTD_LCY
	, SUM(NVL(OTHR_CR_AMT_TDY_FCY, 0))				OTHR_CR_AMT_TDY_FCY
	, SUM(NVL(OTHR_CR_AMT_TDY_LCY, 0))				OTHR_CR_AMT_TDY_LCY
	, SUM(NVL(OTHR_CR_AMT_YTD_FCY, 0))				OTHR_CR_AMT_YTD_FCY
	, SUM(NVL(OTHR_CR_AMT_YTD_LCY, 0))				OTHR_CR_AMT_YTD_LCY
	, SUM(NVL(OTHR_DB_AMT_LTD_FCY, 0))				OTHR_DB_AMT_LTD_FCY
	, SUM(NVL(OTHR_DB_AMT_LTD_LCY, 0))				OTHR_DB_AMT_LTD_LCY
	, SUM(NVL(OTHR_DB_AMT_MTD_FCY, 0))				OTHR_DB_AMT_MTD_FCY
	, SUM(NVL(OTHR_DB_AMT_MTD_LCY, 0))				OTHR_DB_AMT_MTD_LCY
	, SUM(NVL(OTHR_DB_AMT_QTD_FCY, 0))				OTHR_DB_AMT_QTD_FCY
	, SUM(NVL(OTHR_DB_AMT_QTD_LCY, 0))				OTHR_DB_AMT_QTD_LCY
	, SUM(NVL(OTHR_DB_AMT_TDY_FCY, 0))				OTHR_DB_AMT_TDY_FCY
	, SUM(NVL(OTHR_DB_AMT_TDY_LCY, 0))				OTHR_DB_AMT_TDY_LCY
	, SUM(NVL(OTHR_DB_AMT_YTD_FCY, 0))				OTHR_DB_AMT_YTD_FCY
	, SUM(NVL(OTHR_DB_AMT_YTD_LCY, 0))				OTHR_DB_AMT_YTD_LCY
	, MAX(NVL(PAST_DUE_INT_NBR_OF_DYS, 0))				PAST_DUE_INT_NBR_OF_DYS
	, MAX(NVL(PAST_DUE_PNP_NBR_OF_DYS, 0))				PAST_DUE_PNP_NBR_OF_DYS
	, SUM(NVL(PNY_FEE_AMT_MTD_FCY, 0))				PNY_FEE_AMT_MTD_FCY
	, SUM(NVL(PNY_FEE_AMT_MTD_LCY, 0))				PNY_FEE_AMT_MTD_LCY
	, SUM(NVL(PNY_FEE_AMT_QTD_FCY, 0))				PNY_FEE_AMT_QTD_FCY
	, SUM(NVL(PNY_FEE_AMT_QTD_LCY, 0))				PNY_FEE_AMT_QTD_LCY
	, SUM(NVL(PNY_FEE_AMT_TDY_FCY, 0))				PNY_FEE_AMT_TDY_FCY
	, SUM(NVL(PNY_FEE_AMT_TDY_LCY, 0))				PNY_FEE_AMT_TDY_LCY
	, SUM(NVL(PNY_FEE_AMT_YTD_FCY, 0))				PNY_FEE_AMT_YTD_FCY
	, SUM(NVL(PNY_FEE_AMT_YTD_LCY, 0))				PNY_FEE_AMT_YTD_LCY
	, SUM(NVL(PNP_PYMT_AMT_LTD_FCY, 0))				PNP_PYMT_AMT_LTD_FCY
	, SUM(NVL(PNP_PYMT_AMT_LTD_LCY, 0))				PNP_PYMT_AMT_LTD_LCY
	, SUM(NVL(PNP_PYMT_AMT_MTD_FCY, 0))				PNP_PYMT_AMT_MTD_FCY
	, SUM(NVL(PNP_PYMT_AMT_MTD_LCY, 0))				PNP_PYMT_AMT_MTD_LCY
	, SUM(NVL(PNP_PYMT_AMT_QTD_FCY, 0))				PNP_PYMT_AMT_QTD_FCY
	, SUM(NVL(PNP_PYMT_AMT_QTD_LCY, 0))				PNP_PYMT_AMT_QTD_LCY
	, SUM(NVL(PNP_PYMT_AMT_TDY_FCY, 0))				PNP_PYMT_AMT_TDY_FCY
	, SUM(NVL(PNP_PYMT_AMT_TDY_LCY, 0))				PNP_PYMT_AMT_TDY_LCY
	, SUM(NVL(PNP_PYMT_AMT_YTD_FCY, 0))				PNP_PYMT_AMT_YTD_FCY
	, SUM(NVL(PNP_PYMT_AMT_YTD_LCY, 0))				PNP_PYMT_AMT_YTD_LCY
	, SUM(NVL(PNP_PYMT_AT_MAT_AMT_FCY, 0))				PNP_PYMT_AT_MAT_AMT_FCY
	, SUM(NVL(PNP_PYMT_AT_MAT_AMT_LCY, 0))				PNP_PYMT_AT_MAT_AMT_LCY
	, SUM(NVL(RNEW_AMT_FCY, 0))				RNEW_AMT_FCY
	, SUM(NVL(RNEW_AMT_LCY, 0))				RNEW_AMT_LCY
	, SUM(NVL(RNEW_AMT_MTD_FCY, 0))				RNEW_AMT_MTD_FCY
	, SUM(NVL(RNEW_AMT_MTD_LCY, 0))				RNEW_AMT_MTD_LCY
	, SUM(NVL(RNEW_AMT_QTD_FCY, 0))				RNEW_AMT_QTD_FCY
	, SUM(NVL(RNEW_AMT_QTD_LCY, 0))				RNEW_AMT_QTD_LCY
	, SUM(NVL(RNEW_AMT_TDY_FCY, 0))				RNEW_AMT_TDY_FCY
	, SUM(NVL(RNEW_AMT_TDY_LCY, 0))				RNEW_AMT_TDY_LCY
	, SUM(NVL(RNEW_AMT_YTD_FCY, 0))				RNEW_AMT_YTD_FCY
	, SUM(NVL(RNEW_AMT_YTD_LCY, 0))				RNEW_AMT_YTD_LCY
	, SUM(NVL(RSK_WGHT_OTSND_AMT_FCY, 0))				RSK_WGHT_OTSND_AMT_FCY
	, SUM(NVL(RSK_WGHT_OTSND_AMT_LCY, 0))				RSK_WGHT_OTSND_AMT_LCY
	, SUM(NVL(SHD_PNP_PYMT_AMT_FCY, 0))				SHD_PNP_PYMT_AMT_FCY
	, SUM(NVL(SHD_PNP_PYMT_AMT_LCY, 0))				SHD_PNP_PYMT_AMT_LCY
	, SUM(NVL(SCRD_CLS_BAL_AMT_TDY_FCY, 0))				SCRD_CLS_BAL_AMT_TDY_FCY
	, SUM(NVL(SCRD_CLS_BAL_AMT_TDY_LCY, 0))				SCRD_CLS_BAL_AMT_TDY_LCY
	, SUM(NVL(TOT_AVL_AMT_FCY, 0))				TOT_AVL_AMT_FCY
	, SUM(NVL(TOT_AVL_AMT_LCY, 0))				TOT_AVL_AMT_LCY
	, SUM(NVL(TOT_CLT_PVDD_AMT_FCY, 0))				TOT_CLT_PVDD_AMT_FCY
	, SUM(NVL(TOT_CLT_PVDD_AMT_LCY, 0))				TOT_CLT_PVDD_AMT_LCY
	, SUM(NVL(TOT_CNTS_OD_DB_AMT_FCY, 0))				TOT_CNTS_OD_DB_AMT_FCY
	, SUM(NVL(TOT_CNTS_OD_DB_AMT_LCY, 0))				TOT_CNTS_OD_DB_AMT_LCY
	, SUM(NVL(TOT_GNL_PRVN_AMT_FCY, 0))				TOT_GNL_PRVN_AMT_FCY
	, SUM(NVL(TOT_GNL_PRVN_AMT_LCY, 0))				TOT_GNL_PRVN_AMT_LCY
	, SUM(NVL(TOT_LMT_AMT_FCY, 0))				TOT_LMT_AMT_FCY
	, SUM(NVL(TOT_LMT_AMT_LCY, 0))				TOT_LMT_AMT_LCY
	, SUM(NVL(TOT_OD_DB_AMT_FCY, 0))				TOT_OD_DB_AMT_FCY
	, SUM(NVL(TOT_OD_DB_AMT_LCY, 0))				TOT_OD_DB_AMT_LCY
	, SUM(NVL(TOT_PAST_DUE_INT_AMT_FCY, 0))				TOT_PAST_DUE_INT_AMT_FCY
	, SUM(NVL(TOT_PAST_DUE_INT_AMT_LCY, 0))				TOT_PAST_DUE_INT_AMT_LCY
	, SUM(NVL(TOT_PAST_DUE_PNP_AMT_FCY, 0))				TOT_PAST_DUE_PNP_AMT_FCY
	, SUM(NVL(TOT_PAST_DUE_PNP_AMT_LCY, 0))				TOT_PAST_DUE_PNP_AMT_LCY
	, SUM(NVL(TOT_SPF_PRVN_AMT_FCY, 0))				TOT_SPF_PRVN_AMT_FCY
	, SUM(NVL(TOT_SPF_PRVN_AMT_LCY, 0))				TOT_SPF_PRVN_AMT_LCY
	, SUM(NVL(TOT_WRT_OFF_AMT_FCY, 0))				TOT_WRT_OFF_AMT_FCY
	, SUM(NVL(TOT_WRT_OFF_AMT_LCY, 0))				TOT_WRT_OFF_AMT_LCY
	, SUM(NVL(UNUSED_PRVN_REVERSED_AMT_FCY, 0))				UNUSED_PRVN_REVERSED_AMT_FCY
	, SUM(NVL(UNUSED_PRVN_REVERSED_AMT_LCY, 0))				UNUSED_PRVN_REVERSED_AMT_LCY
	, SUM(NVL(USED_PRVN_AMT_FCY, 0))				USED_PRVN_AMT_FCY
	, SUM(NVL(USED_PRVN_AMT_LCY, 0))				USED_PRVN_AMT_LCY
	, SUM(NVL(BILL_INT_AMT_FCY, 0))				BILL_INT_AMT_FCY
	, SUM(NVL(BILL_INT_AMT_LCY, 0))				BILL_INT_AMT_LCY
	, SUM(NVL(BILL_LATE_CHRG_AMT_FCY, 0))				BILL_LATE_CHRG_AMT_FCY
	, SUM(NVL(BILL_LATE_CHRG_AMT_LCY, 0))				BILL_LATE_CHRG_AMT_LCY
	, SUM(NVL(BILL_PNP_AMT_FCY, 0))				BILL_PNP_AMT_FCY
	, SUM(NVL(BILL_PNP_AMT_LCY, 0))				BILL_PNP_AMT_LCY
	, SUM(NVL(AGRT_AST_INT_RATE_HTD, 0))				AGRT_AST_INT_RATE_HTD
	, SUM(NVL(AGRT_AST_INT_RATE_MTD, 0))				AGRT_AST_INT_RATE_MTD
	, SUM(NVL(AGRT_AST_INT_RATE_QTD, 0))				AGRT_AST_INT_RATE_QTD
	, SUM(NVL(AGRT_AST_INT_RATE_R12MTH, 0))				AGRT_AST_INT_RATE_R12MTH
	, SUM(NVL(AGRT_AST_INT_RATE_R1MTH, 0))				AGRT_AST_INT_RATE_R1MTH
	, SUM(NVL(AGRT_AST_INT_RATE_R3MTH, 0))				AGRT_AST_INT_RATE_R3MTH
	, SUM(NVL(AGRT_AST_INT_RATE_R6MTH, 0))				AGRT_AST_INT_RATE_R6MTH
	, SUM(NVL(AGRT_AST_INT_RATE_YTD, 0))				AGRT_AST_INT_RATE_YTD
	, SUM(NVL(AGRT_NIM_BAL_AMT_HTD_LCY, 0))				AGRT_NIM_BAL_AMT_HTD_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_MTD_LCY, 0))				AGRT_NIM_BAL_AMT_MTD_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_QTD_LCY, 0))				AGRT_NIM_BAL_AMT_QTD_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_YTD_LCY, 0))				AGRT_NIM_BAL_AMT_YTD_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_ROLLING_12MTH_LCY, 0))				AGRT_NIM_BAL_AMT_ROLLING_12MTH_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_ROLLING_1MTH_LCY, 0))				AGRT_NIM_BAL_AMT_ROLLING_1MTH_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_ROLLING_3MTH_LCY, 0))				AGRT_NIM_BAL_AMT_ROLLING_3MTH_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_ROLLING_6MTH_LCY, 0))				AGRT_NIM_BAL_AMT_ROLLING_6MTH_LCY
	, SUM(NVL(AGRT_BAL_AMT_HTD_LCY, 0))				AGRT_BAL_AMT_HTD_LCY
	, SUM(NVL(AGRT_BAL_AMT_MTD_LCY, 0))				AGRT_BAL_AMT_MTD_LCY
	, SUM(NVL(AGRT_BAL_AMT_QTD_LCY, 0))				AGRT_BAL_AMT_QTD_LCY
	, SUM(NVL(AGRT_BAL_AMT_YTD_LCY, 0))				AGRT_BAL_AMT_YTD_LCY
	, SUM(NVL(AGRT_BAL_AMT_HTD_FCY, 0))				AGRT_BAL_AMT_HTD_FCY
	, SUM(NVL(AGRT_BAL_AMT_MTD_FCY, 0))				AGRT_BAL_AMT_MTD_FCY
	, SUM(NVL(AGRT_BAL_AMT_QTD_FCY, 0))				AGRT_BAL_AMT_QTD_FCY
	, SUM(NVL(AGRT_BAL_AMT_YTD_FCY, 0))				AGRT_BAL_AMT_YTD_FCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_12MTH_LCY, 0))				AGRT_BAL_AMT_ROLLING_12MTH_LCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_1MTH_LCY, 0))				AGRT_BAL_AMT_ROLLING_1MTH_LCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_3MTH_LCY, 0))				AGRT_BAL_AMT_ROLLING_3MTH_LCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_6MTH_LCY, 0))				AGRT_BAL_AMT_ROLLING_6MTH_LCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_12MTH_FCY, 0))				AGRT_BAL_AMT_ROLLING_12MTH_FCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_1MTH_FCY, 0))				AGRT_BAL_AMT_ROLLING_1MTH_FCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_3MTH_FCY, 0))				AGRT_BAL_AMT_ROLLING_3MTH_FCY
	, SUM(NVL(AGRT_BAL_AMT_ROLLING_6MTH_FCY, 0))				AGRT_BAL_AMT_ROLLING_6MTH_FCY
	, SUM(NVL(AGRT_LBY_INT_RATE_HTD, 0))				AGRT_LBY_INT_RATE_HTD
	, SUM(NVL(AGRT_LBY_INT_RATE_MTD, 0))				AGRT_LBY_INT_RATE_MTD
	, SUM(NVL(AGRT_LBY_INT_RATE_QTD, 0))				AGRT_LBY_INT_RATE_QTD
	, SUM(NVL(AGRT_LBY_INT_RATE_R12MTH, 0))				AGRT_LBY_INT_RATE_R12MTH
	, SUM(NVL(AGRT_LBY_INT_RATE_R1MTH, 0))				AGRT_LBY_INT_RATE_R1MTH
	, SUM(NVL(AGRT_LBY_INT_RATE_R3MTH, 0))				AGRT_LBY_INT_RATE_R3MTH
	, SUM(NVL(AGRT_LBY_INT_RATE_R6MTH, 0))				AGRT_LBY_INT_RATE_R6MTH
	, SUM(NVL(AGRT_LBY_INT_RATE_YTD, 0))				AGRT_LBY_INT_RATE_YTD
	, SUM(NVL(AST_NML_INT_INCM_MTD_FCY, 0))				AST_NML_INT_INCM_MTD_FCY
	, SUM(NVL(AST_NML_INT_INCM_MTD_LCY, 0))				AST_NML_INT_INCM_MTD_LCY
	, SUM(NVL(AST_NML_INT_INCM_QTD_FCY, 0))				AST_NML_INT_INCM_QTD_FCY
	, SUM(NVL(AST_NML_INT_INCM_QTD_LCY, 0))				AST_NML_INT_INCM_QTD_LCY
	, SUM(NVL(AST_NML_INT_INCM_TDY_FCY, 0))				AST_NML_INT_INCM_TDY_FCY
	, SUM(NVL(AST_NML_INT_INCM_TDY_LCY, 0))				AST_NML_INT_INCM_TDY_LCY
	, SUM(NVL(AST_NML_INT_INCM_YTD_FCY, 0))				AST_NML_INT_INCM_YTD_FCY
	, SUM(NVL(AST_NML_INT_INCM_YTD_LCY, 0))				AST_NML_INT_INCM_YTD_LCY
	, SUM(NVL(AST_NML_INT_INCM_R12MTH_FCY, 0))				AST_NML_INT_INCM_R12MTH_FCY
	, SUM(NVL(AST_NML_INT_INCM_R12MTH_LCY, 0))				AST_NML_INT_INCM_R12MTH_LCY
	, SUM(NVL(AST_NML_INT_INCM_R1MTH_FCY, 0))				AST_NML_INT_INCM_R1MTH_FCY
	, SUM(NVL(AST_NML_INT_INCM_R1MTH_LCY, 0))				AST_NML_INT_INCM_R1MTH_LCY
	, SUM(NVL(AST_NML_INT_INCM_R3MTH_FCY, 0))				AST_NML_INT_INCM_R3MTH_FCY
	, SUM(NVL(AST_NML_INT_INCM_R3MTH_LCY, 0))				AST_NML_INT_INCM_R3MTH_LCY
	, SUM(NVL(AST_NML_INT_INCM_R6MTH_FCY, 0))				AST_NML_INT_INCM_R6MTH_FCY
	, SUM(NVL(AST_NML_INT_INCM_R6MTH_LCY, 0))				AST_NML_INT_INCM_R6MTH_LCY
	, MAX(NVL(NBR_OF_DYS_ROLLING_12MTH, 0))				NBR_OF_DYS_ROLLING_12MTH
	, MAX(NVL(NBR_OF_DYS_ROLLING_1MTH, 0))				NBR_OF_DYS_ROLLING_1MTH
	, MAX(NVL(NBR_OF_DYS_ROLLING_3MTH, 0))				NBR_OF_DYS_ROLLING_3MTH
	, MAX(NVL(NBR_OF_DYS_ROLLING_6MTH, 0))				NBR_OF_DYS_ROLLING_6MTH
	, MAX(NVL(NBR_OF_DYS_HTD, 0))				NBR_OF_DYS_HTD
	, MAX(NVL(NBR_OF_DYS_MTD, 0))				NBR_OF_DYS_MTD
	, MAX(NVL(NBR_OF_DYS_QTD, 0))				NBR_OF_DYS_QTD
	, MAX(NVL(NBR_OF_DYS_YTD, 0))				NBR_OF_DYS_YTD
	, SUM(NVL(AST_SCDY_ACR_INT_PTD_FCY, 0))				AST_SCDY_ACR_INT_PTD_FCY
	, SUM(NVL(AST_SCDY_ACR_INT_PTD_LCY, 0))				AST_SCDY_ACR_INT_PTD_LCY
	, SUM(NVL(AGRT_NIM_BAL_AMT_TDY_LCY, 0))				AGRT_NIM_BAL_AMT_TDY_LCY
	, SUM(NVL(ACR_INT_TO_OFF_BAL_PTD_FCY, 0))				ACR_INT_TO_OFF_BAL_PTD_FCY
	, SUM(NVL(ACR_INT_TO_OFF_BAL_PTD_LCY, 0))				ACR_INT_TO_OFF_BAL_PTD_LCY
	, SUM(NVL(TOT_HLD_AMT_FCY, 0))				TOT_HLD_AMT_FCY
	, SUM(NVL(TOT_HLD_AMT_LCY, 0))				TOT_HLD_AMT_LCY
	, SUM(NVL(NXT_SHD_PYMT_AMT_FCY, 0))				NXT_SHD_PYMT_AMT_FCY
	, SUM(NVL(NXT_SHD_PYMT_AMT_LCY, 0))				NXT_SHD_PYMT_AMT_LCY
	, SUM(NVL(CLS_BAL_FRST_DAY_OVERDAFT_BSN_FCY, 0))				CLS_BAL_FRST_DAY_OVERDAFT_BSN_FCY
	, SUM(NVL(CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY, 0))				CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY
	, SUM(NVL(TOT_CNTS_OD_DB_BSN_AMT_FCY, 0))				TOT_CNTS_OD_DB_BSN_AMT_FCY
	, SUM(NVL(TOT_CNTS_OD_DB_BSN_AMT_LCY, 0))				TOT_CNTS_OD_DB_BSN_AMT_LCY
	, AVG( NVL(AV_CR_AMT_ROLLING_12MTH_FCY, 0) )		AV_CR_AMT_ROLLING_12MTH_FCY
	, AVG( NVL(AV_CR_AMT_ROLLING_12MTH_LCY, 0) )		AV_CR_AMT_ROLLING_12MTH_LCY
	, AVG( NVL(AV_CR_AMT_ROLLING_1MTH_FCY , 0) )		AV_CR_AMT_ROLLING_1MTH_FCY 
	, AVG( NVL(AV_CR_AMT_ROLLING_1MTH_LCY , 0) )		AV_CR_AMT_ROLLING_1MTH_LCY 
	, AVG( NVL(AV_CR_AMT_ROLLING_3MTH_FCY , 0) )		AV_CR_AMT_ROLLING_3MTH_FCY 
	, AVG( NVL(AV_CR_AMT_ROLLING_3MTH_LCY , 0) )		AV_CR_AMT_ROLLING_3MTH_LCY 
	, AVG( NVL(AV_CR_AMT_ROLLING_6MTH_FCY , 0) )		AV_CR_AMT_ROLLING_6MTH_FCY 
	, AVG( NVL(AV_CR_AMT_ROLLING_6MTH_LCY , 0) )		AV_CR_AMT_ROLLING_6MTH_LCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_12MTH_FCY , 0) )		AV_DB_AMT_ROLLING_12MTH_FCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_12MTH_LCY , 0) )		AV_DB_AMT_ROLLING_12MTH_LCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_1MTH_FCY , 0) )		AV_DB_AMT_ROLLING_1MTH_FCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_1MTH_LCY , 0) )		AV_DB_AMT_ROLLING_1MTH_LCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_3MTH_FCY , 0) )		AV_DB_AMT_ROLLING_3MTH_FCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_3MTH_LCY , 0) )		AV_DB_AMT_ROLLING_3MTH_LCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_6MTH_FCY , 0) )		AV_DB_AMT_ROLLING_6MTH_FCY 
	, AVG( NVL(AV_DB_AMT_ROLLING_6MTH_LCY , 0) )		AV_DB_AMT_ROLLING_6MTH_LCY 
	, SUM( NVL(CLS_BAL_AMT_LAST_DAY_FCY, 0) )		CLS_BAL_AMT_LAST_DAY_FCY
	, SUM( NVL(CLS_BAL_AMT_LAST_DAY_LCY , 0) )		CLS_BAL_AMT_LAST_DAY_LCY 

  FROM AR_ANL_FCT t
  left join BAL_SEG_DIM ast_bal on t.CST_AST_BAL_SEG_DIM_ID = ast_bal.BAL_SEG_DIM_ID
  left join BAL_SEG_DIM lby_bal on t.CST_LBY_BAL_SEG_DIM_ID = lby_bal.BAL_SEG_DIM_ID
  left join BAL_SEG_DIM ar_bal on t.AR_BAL_SEG_DIM_ID = ar_bal.BAL_SEG_DIM_ID
  left join CR_LMT_SEG_DIM lmt on t.CR_LMT_SEG_DIM_ID = lmt.CR_LMT_SEG_DIM_ID
  left join AR_TM_TO_MAT_SEG_DIM act_tm on t.ACT_TM_TO_MAT_SEG_DIM_ID = act_tm.AR_TM_TO_MAT_SEG_DIM_ID
  left join AR_TM_TO_MAT_SEG_DIM org_tm on t.ORIG_TM_TO_MAT_SEG_DIM_ID = org_tm.AR_TM_TO_MAT_SEG_DIM_ID
  left join AR_TM_TO_MAT_SEG_DIM rman_tm on t.RMAN_TM_TO_MAT_SEG_DIM_ID = rman_tm.AR_TM_TO_MAT_SEG_DIM_ID
  left join INT_RATE_SEG_DIM int_rate on t.INT_RATE_SEG_DIM_ID = int_rate.INT_RATE_SEG_DIM_ID
  LEFT JOIN ADMIN.SRC_STM_DIM src ON t.SRC_STM_DIM_ID = src.SRC_STM_DIM_ID 
  where tm_prd_dim_id = (select param_value from cstb_system sys where  param_name = 'ETL_DATE')
  group by 
  		 ast_bal.LVL_1_ID
       , ACG_STC_GRP_DIM_ID
       , act_tm.LVL_1_ID
       , lmt.LVL_2_ID
       , CST_MKT_SEG_DIM_ID
       , ar_bal.LVL_1_ID
       , AR_FNC_ST_DIM_ID
       , AR_LCS_DIM_ID
       , AR_PPS_DIM_ID
       , AR_TP_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_SHET_TP_DIM_ID
       , CCY_DIM_ID
       , CST_PERF_ST_DIM_ID
       , CST_TP_DIM_ID
       , IDY_SML_ID_DIM_ID
       , int_rate.LVL_1_ID
       , LINE_OF_BSN_DIM_ID
       , ORG_UNIT_DIM_ID
       , org_tm.LVL_1_ID
       , PD_DIM_ID
       , rman_tm.LVL_1_ID
       , SCR_CVR_DIM_ID
       , t.SRC_STM_DIM_ID
       , TM_PRD_DIM_ID
       , MTH_ISSU_TP_DIM_ID
       , RTO_DBT_TP_DIM_ID
       , lby_bal.LVL_1_ID
       , AR_CRT_DEPT_DIM_ID
       , AR_MGT_DEPT_DIM_ID
       , CST_CRT_DEPT_DIM_ID
       , CST_MGT_DEPT_DIM_ID
       , CST_LIFE_CYC_ST_DIM_ID
       , CST_SEG_DIM_ID
       , CR_RSK_RTG_DIM_ID
       , CST_SEG_SME_DIM_ID;

