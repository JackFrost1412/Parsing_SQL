SELECT
		T.AR_ID,
		T.CR_RSK_RTG_DIM_ID,
		t.ACG_STC_GRP_DIM_ID,
		T.NXT_SHD_PNP_PYMT_DT_DIM_ID,
		T.NXT_PNP_PYMT_DT_DIM_ID,
		case 
		when T.NXT_SHD_PNP_PYMT_DT_DIM_ID >= T.NXT_PNP_PYMT_DT_DIM_ID and T.NXT_PNP_PYMT_DT_DIM_ID >= T.TM_PRD_DIM_ID then T.NXT_PNP_PYMT_DT_DIM_ID
		when T.NXT_SHD_PNP_PYMT_DT_DIM_ID >= T.NXT_PNP_PYMT_DT_DIM_ID and T.NXT_PNP_PYMT_DT_DIM_ID < T.TM_PRD_DIM_ID then T.NXT_SHD_PNP_PYMT_DT_DIM_ID
		when T.NXT_SHD_PNP_PYMT_DT_DIM_ID < T.NXT_PNP_PYMT_DT_DIM_ID and T.NXT_SHD_PNP_PYMT_DT_DIM_ID >= T.TM_PRD_DIM_ID then T.NXT_SHD_PNP_PYMT_DT_DIM_ID
		else T.NXT_PNP_PYMT_DT_DIM_ID end NXT_PNP_PYMT_DUE_DT_DIM_ID,
		case 
		when T.NXT_SHD_INT_PYMT_DT_DIM_ID >= T.NXT_INT_PYMT_DT_DIM_ID and T.NXT_INT_PYMT_DT_DIM_ID >= T.TM_PRD_DIM_ID then T.NXT_INT_PYMT_DT_DIM_ID
		when T.NXT_SHD_INT_PYMT_DT_DIM_ID >= T.NXT_INT_PYMT_DT_DIM_ID and T.NXT_INT_PYMT_DT_DIM_ID < T.TM_PRD_DIM_ID then T.NXT_SHD_INT_PYMT_DT_DIM_ID
		when T.NXT_SHD_INT_PYMT_DT_DIM_ID < T.NXT_INT_PYMT_DT_DIM_ID and T.NXT_SHD_INT_PYMT_DT_DIM_ID >= T.TM_PRD_DIM_ID then T.NXT_SHD_INT_PYMT_DT_DIM_ID
		else T.NXT_INT_PYMT_DT_DIM_ID end NXT_INT_PYMT_DUE_DT_DIM_ID,
		T.NXT_SHD_INT_PYMT_DT_DIM_ID,
		T.NXT_INT_PYMT_DT_DIM_ID,
		T.CST_LIFE_CYC_ST_DIM_ID,
		T.CST_AST_BAL_SEG_DIM_ID,
		T.ACT_TM_TO_MAT_SEG_DIM_ID,
		T.ADJ_INT_AMT_LTD_FCY,
		T.ADJ_INT_AMT_LTD_LCY,
		T.ADJ_INT_AMT_MTD_FCY,
		T.ADJ_INT_AMT_MTD_LCY,
		T.ADJ_INT_AMT_QTD_FCY,
		T.ADJ_INT_AMT_QTD_LCY,
		T.ADJ_INT_AMT_TDY_FCY,
		T.ADJ_INT_AMT_TDY_LCY,
		T.ADJ_INT_AMT_YTD_FCY,
		T.ADJ_INT_AMT_YTD_LCY,
		T.AR_LCS_DT_DIM_ID,
		T.AST_ACR_PNY_INT_AMT_PTD_FCY,
		T.AST_ACR_PNY_INT_AMT_PTD_LCY,
		T.AR_OFCR_EMPE_DIM_ID,
		T.AST_ACR_INT_LTD_FCY,
		T.AST_ACR_INT_LTD_LCY,
		T.CNTS_OD_BSN_NBR_OF_DYS,
		T.CNTS_OD_NBR_OF_DYS,
		T.CR_LMT_SEG_DIM_ID,
		T.CST_MKT_SEG_DIM_ID,
		t.CST_SEG_DIM_ID,
		T.CST_OFCR_EMPE_DIM_ID,
		T.AR_AGE_SEG_DIM_ID,
		T.AR_BAL_SEG_DIM_ID,
		T.AR_DIM_ID,
		T.AR_FNC_ST_DIM_ID,
		T.AR_LCS_DIM_ID,
		T.AR_PPS_DIM_ID,
		T.AR_TP_DIM_ID,
		T.AST_ACR_INT_MTD_FCY,
		T.AST_ACR_INT_MTD_LCY,
		T.AST_ACR_INT_PTD_FCY,
		T.AST_ACR_INT_PTD_LCY,
		T.AST_ACR_INT_QTD_FCY,
		T.AST_ACR_INT_QTD_LCY,
		T.AST_ACR_INT_TDY_FCY,
		T.AST_ACR_INT_TDY_LCY,
		T.AST_ACR_INT_YTD_FCY,
		T.AST_ACR_INT_YTD_LCY,
		T.AST_ACR_PNY_INT_AMT_MTD_FCY,
		T.AST_ACR_PNY_INT_AMT_MTD_LCY,
		T.AST_ACR_PNY_INT_AMT_QTD_FCY,
		T.AST_ACR_PNY_INT_AMT_QTD_LCY,
		T.AST_ACR_PNY_INT_AMT_TDY_FCY,
		T.AST_ACR_PNY_INT_AMT_TDY_LCY,
		T.AST_ACR_PNY_INT_AMT_YTD_FCY,
		T.AST_ACR_PNY_INT_AMT_YTD_LCY,
		T.AST_ACT_INT_RATE_TDY,
		T.AST_INT_PYMT_AMT_MTD_FCY,
		T.AST_INT_PYMT_AMT_MTD_LCY,
		T.AST_INT_PYMT_AMT_QTD_FCY,
		T.AST_INT_PYMT_AMT_QTD_LCY,
		T.AST_INT_PYMT_AMT_TDY_FCY,
		T.AST_INT_PYMT_AMT_TDY_LCY,
		T.AST_INT_PYMT_AMT_YTD_FCY,
		T.AST_INT_PYMT_AMT_YTD_LCY,
		T.BAL_ACG_STC_ITM_DIM_ID,
		T.BAL_SHET_TP_DIM_ID,
		T.CLS_BAL_AMT_LMTH_FCY,
		T.CLS_BAL_AMT_LMTH_LCY,
		T.CLS_BAL_AMT_LQTR_FCY,
		T.CLS_BAL_AMT_LQTR_LCY,
		T.CLS_BAL_AMT_LYR_FCY,
		T.CLS_BAL_AMT_LYR_LCY,
		T.CLS_BAL_AMT_TDY_FCY,
		T.CLS_BAL_AMT_TDY_LCY,
		
		T.CLS_BAL_AMT_LMTH_FCY CLS_ON_BAL_AMT_LMTH_FCY,
		T.CLS_BAL_AMT_LMTH_LCY CLS_ON_BAL_AMT_LMTH_LCY,
		T.CLS_BAL_AMT_LQTR_FCY CLS_ON_BAL_AMT_LQTR_FCY,
		T.CLS_BAL_AMT_LQTR_LCY CLS_ON_BAL_AMT_LQTR_LCY,
		T.CLS_BAL_AMT_LYR_FCY CLS_ON_BAL_AMT_LYR_FCY,
		T.CLS_BAL_AMT_LYR_LCY CLS_ON_BAL_AMT_LYR_LCY,
		case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then T.CLS_BAL_AMT_TDY_FCY else 0 end CLS_ON_BAL_AMT_TDY_FCY,
		case when src.LVL_0_CODE in ('SIBS_LNMAST', 'SIBS_ODTIER', 'CADENCIE_ACCT') then T.CLS_BAL_AMT_TDY_LCY else 0 end CLS_ON_BAL_AMT_TDY_LCY,
		
		t.CLS_BAL_AMT_LAST_DAY_FCY CLS_ON_BAL_AMT_PREV_FCY,
		t.CLS_BAL_AMT_LAST_DAY_LCY CLS_ON_BAL_AMT_PREV_LCY,

 		case when pd.PD_CODE in ('TFLC01', 'TFUB01') then t.CLS_BAL_AMT_TDY_FCY else 0 end CLS_LC_BAL_AMT_TDY_FCY,
		case when pd.PD_CODE in ('TFLC01', 'TFUB01') then t.CLS_BAL_AMT_TDY_LCY else 0 end CLS_LC_BAL_AMT_TDY_LCY,

		case when pd.PD_CODE like 'BG%' then t.CLS_BAL_AMT_TDY_FCY else 0 end CLS_BG_BAL_AMT_TDY_FCY,
		case when pd.PD_CODE like 'BG%' then t.CLS_BAL_AMT_TDY_LCY else 0 end CLS_BG_BAL_AMT_TDY_LCY,

		T.CLS_BAL_AMT_TO_WRT_OFF_FCY,
		T.CLS_BAL_AMT_TO_WRT_OFF_LCY,

		T.CLS_BAL_AMT_TO_WRT_OFF_MTD_FCY,
		T.CLS_BAL_AMT_TO_WRT_OFF_MTD_LCY,
		T.CLS_BAL_AMT_TO_WRT_OFF_QTD_FCY,
		T.CLS_BAL_AMT_TO_WRT_OFF_QTD_LCY,
		T.CLS_BAL_AMT_TO_WRT_OFF_YTD_FCY,
		T.CLS_BAL_AMT_TO_WRT_OFF_YTD_LCY,

		T.CR_FCY_AR_DIM_ID,
		T.CCY_DIM_ID,
		T.CST_DIM_ID,
		T.CST_HIER_DIM_ID,
		T.CST_PERF_ST_DIM_ID,
		T.CST_TP_DIM_ID,
		T.DSBR_AMT_LTD_FCY,
		T.DSBR_AMT_LTD_LCY,
		T.DSBR_AMT_MTD_FCY,
		T.DSBR_AMT_MTD_LCY,
		T.DSBR_AMT_QTD_FCY,
		T.DSBR_AMT_QTD_LCY,
		T.DSBR_AMT_TDY_FCY,
		T.DSBR_AMT_TDY_LCY,
		T.DSBR_AMT_YTD_FCY,
		T.DSBR_AMT_YTD_LCY,
		T.IDY_SML_ID_DIM_ID,
		T.INT_BAL_OF_SOLD_LOAN_FCY,
		T.INT_BAL_OF_SOLD_LOAN_LCY,
		T.INT_PAST_DUE_AGNG_SEG_DIM_ID,
		T.INT_RATE_SEG_DIM_ID,
		T.LAST_INT_PYMT_AMT_FCY,
		T.LAST_INT_PYMT_AMT_LCY,
		T.LAST_INT_PYMT_DT_DIM_ID,
		T.LAST_PNP_PYMT_AMT_FCY,
		T.LAST_PNP_PYMT_AMT_LCY,
		T.LAST_PNP_PYMT_DT_DIM_ID,
		T.LINE_OF_BSN_DIM_ID,
		T.NXT_INT_PYMT_AMT_FCY,
		T.NXT_INT_PYMT_AMT_LCY,
		T.NXT_PNP_PYMT_AMT_FCY,
		T.NXT_PNP_PYMT_AMT_LCY,
		T.NBR_OF_FEE_TXN_LTD,
		T.NBR_OF_FEE_TXN_MTD,
		T.NBR_OF_FEE_TXN_QTD,
		T.NBR_OF_FEE_TXN_TDY,
		T.NBR_OF_FEE_TXN_YTD,
		T.NBR_OF_INT_PYMT_SHD_CHG,
		T.NBR_MAT_DT_CHG,
		T.NBR_PYMT_SCH_CHG,
		T.NBR_OF_RENEWS,
		T.NBR_TERM_CHG,
		T.OFF_BAL_ACR_INT_PTD_FCY,
		T.OFF_BAL_ACR_INT_PTD_LCY,
		T.OFF_BAL_INT_PYMT_AMT_LTD_FCY,
		T.OFF_BAL_INT_PYMT_AMT_LTD_LCY,
		T.OFF_BAL_INT_PYMT_AMT_MTD_FCY,
		T.OFF_BAL_INT_PYMT_AMT_MTD_LCY,
		T.OFF_BAL_INT_PYMT_AMT_QTD_FCY,
		T.OFF_BAL_INT_PYMT_AMT_QTD_LCY,
		T.OFF_BAL_INT_PYMT_AMT_TDY_FCY,
		T.OFF_BAL_INT_PYMT_AMT_TDY_LCY,
		T.OFF_BAL_INT_PYMT_AMT_YTD_FCY,
		T.OFF_BAL_INT_PYMT_AMT_YTD_LCY,
		T.OFF_BAL_PNP_PYMT_AMT_LTD_FCY,
		T.OFF_BAL_PNP_PYMT_AMT_LTD_LCY,
		T.OFF_BAL_PNP_PYMT_AMT_MTD_FCY,
		T.OFF_BAL_PNP_PYMT_AMT_MTD_LCY,
		T.OFF_BAL_PNP_PYMT_AMT_QTD_FCY,
		T.OFF_BAL_PNP_PYMT_AMT_QTD_LCY,
		T.OFF_BAL_PNP_PYMT_AMT_TDY_FCY,
		T.OFF_BAL_PNP_PYMT_AMT_TDY_LCY,
		T.OFF_BAL_PNP_PYMT_AMT_YTD_FCY,
		T.OFF_BAL_PNP_PYMT_AMT_YTD_LCY,
		T.ORG_UNIT_DIM_ID,
		T.ORIG_TM_TO_MAT_SEG_DIM_ID,
		T.PAST_DUE_INT_NBR_OF_DYS,
		T.PAST_DUE_PNP_NBR_OF_DYS,
		T.PNY_FEE_AMT_MTD_FCY,
		T.PNY_FEE_AMT_MTD_LCY,
		T.PNY_FEE_AMT_QTD_FCY,
		T.PNY_FEE_AMT_QTD_LCY,
		T.PNY_FEE_AMT_TDY_FCY,
		T.PNY_FEE_AMT_TDY_LCY,
		T.PNY_FEE_AMT_YTD_FCY,
		T.PNY_FEE_AMT_YTD_LCY,
		T.PNP_PAST_DUE_AGNG_SEG_DIM_ID,
		T.PNP_PYMT_AMT_LTD_FCY,
		T.PNP_PYMT_AMT_LTD_LCY,
		T.PNP_PYMT_AMT_MTD_FCY,
		T.PNP_PYMT_AMT_MTD_LCY,
		T.PNP_PYMT_AMT_QTD_FCY,
		T.PNP_PYMT_AMT_QTD_LCY,
		T.PNP_PYMT_AMT_TDY_FCY,
		T.PNP_PYMT_AMT_TDY_LCY,
		T.PNP_PYMT_AMT_YTD_FCY,
		T.PNP_PYMT_AMT_YTD_LCY,
		T.PNP_PYMT_AT_MAT_AMT_FCY,
		T.PNP_PYMT_AT_MAT_AMT_LCY,
		T.PD_DIM_ID,
		T.RMAN_TM_TO_MAT_SEG_DIM_ID,

		T.RPT_EXG_RATE,

		T.RSK_WGHT_OTSND_AMT_FCY,
		T.RSK_WGHT_OTSND_AMT_LCY,
		T.SHD_PNP_PYMT_AMT_FCY,
		T.SHD_PNP_PYMT_AMT_LCY,
		T.SCRD_CLS_BAL_AMT_TDY_FCY,
		T.SCRD_CLS_BAL_AMT_TDY_LCY,
		T.SCR_CVR_DIM_ID,
		T.SRC_STM_DIM_ID,
		T.TM_PRD_DIM_ID,
		T.TOT_AVL_AMT_FCY,
		T.TOT_AVL_AMT_LCY,
		T.TOT_CLT_PVDD_AMT_FCY,
		T.TOT_CLT_PVDD_AMT_LCY,
		T.TOT_CNTS_OD_DB_AMT_FCY,
		T.TOT_CNTS_OD_DB_AMT_LCY,
		T.TOT_GNL_PRVN_AMT_FCY,
		T.TOT_GNL_PRVN_AMT_LCY,
		T.TOT_LMT_AMT_FCY,
		T.TOT_LMT_AMT_LCY,
		T.TOT_OD_DB_AMT_FCY,
		T.TOT_OD_DB_AMT_LCY,
		T.TOT_PAST_DUE_INT_AMT_FCY,
		T.TOT_PAST_DUE_INT_AMT_LCY,
		T.TOT_PAST_DUE_PNP_AMT_FCY,
		T.TOT_PAST_DUE_PNP_AMT_LCY,
		T.TOT_SPF_PRVN_AMT_FCY,
		T.TOT_SPF_PRVN_AMT_LCY,
		T.TOT_WRT_OFF_AMT_FCY,
		T.TOT_WRT_OFF_AMT_LCY,
		T.UNUSED_PRVN_REVERSED_AMT_FCY,
		T.UNUSED_PRVN_REVERSED_AMT_LCY,
		T.USED_PRVN_AMT_FCY,
		T.USED_PRVN_AMT_LCY,
		T.MTH_ISSU_TP_DIM_ID,
		T.RTO_DBT_TP_DIM_ID,
		T.BILL_INT_AMT_FCY,
		T.BILL_INT_AMT_LCY,
		T.BILL_LATE_CHRG_AMT_FCY,
		T.BILL_LATE_CHRG_AMT_LCY,
		T.BILL_PNP_AMT_FCY,
		T.BILL_PNP_AMT_LCY,
		T.AR_OFCR_CREATOR_DIM_ID,
		T.CST_OFCR_CREATOR_DIM_ID,
		T.CST_LBY_BAL_SEG_DIM_ID,
		T.AGRT_AST_INT_RATE_HTD,
		T.AGRT_AST_INT_RATE_MTD,
		T.AGRT_AST_INT_RATE_QTD,
		T.AGRT_AST_INT_RATE_R12MTH,
		T.AGRT_AST_INT_RATE_R1MTH,
		T.AGRT_AST_INT_RATE_R3MTH,
		T.AGRT_AST_INT_RATE_R6MTH,
		T.AGRT_AST_INT_RATE_YTD,

		T.AGRT_NIM_BAL_AMT_HTD_LCY,
		T.AGRT_NIM_BAL_AMT_MTD_LCY,
		T.AGRT_NIM_BAL_AMT_QTD_LCY,
		T.AGRT_NIM_BAL_AMT_YTD_LCY,
		T.AGRT_NIM_BAL_AMT_ROLLING_12MTH_LCY,
		T.AGRT_NIM_BAL_AMT_ROLLING_1MTH_LCY,
		T.AGRT_NIM_BAL_AMT_ROLLING_3MTH_LCY,
		T.AGRT_NIM_BAL_AMT_ROLLING_6MTH_LCY,

		T.AGRT_BAL_AMT_HTD_LCY,
		T.AGRT_BAL_AMT_MTD_LCY,
		T.AGRT_BAL_AMT_QTD_LCY,
		T.AGRT_BAL_AMT_YTD_LCY,
		T.AGRT_BAL_AMT_HTD_FCY,
		T.AGRT_BAL_AMT_MTD_FCY,
		T.AGRT_BAL_AMT_QTD_FCY,
		T.AGRT_BAL_AMT_YTD_FCY,


		T.AGRT_BAL_AMT_ROLLING_12MTH_LCY,
		T.AGRT_BAL_AMT_ROLLING_1MTH_LCY,
		T.AGRT_BAL_AMT_ROLLING_3MTH_LCY,
		T.AGRT_BAL_AMT_ROLLING_6MTH_LCY,
		T.AGRT_BAL_AMT_ROLLING_12MTH_FCY,
		T.AGRT_BAL_AMT_ROLLING_1MTH_FCY,
		T.AGRT_BAL_AMT_ROLLING_3MTH_FCY,
		T.AGRT_BAL_AMT_ROLLING_6MTH_FCY,
		T.CST_BRN_AST_BAL_SEG_DIM_ID,
		T.CST_BRN_LBY_BAL_SEG_DIM_ID,
		
		nvl(tncp.AST_INT_INCM_MTD_FCY,0) AST_INT_INCM_MTD_FCY,
		nvl(tncp.AST_INT_INCM_MTD_LCY,0) AST_INT_INCM_MTD_LCY,
		nvl(tncp.AST_INT_INCM_QTD_FCY,0) AST_INT_INCM_QTD_FCY,
		nvl(tncp.AST_INT_INCM_QTD_LCY,0) AST_INT_INCM_QTD_LCY,
		nvl(tncp.AST_INT_INCM_YTD_FCY,0) AST_INT_INCM_YTD_FCY,
		nvl(tncp.AST_INT_INCM_YTD_LCY,0) AST_INT_INCM_YTD_LCY,
		nvl(tncp.AST_INT_INCM_TDY_FCY,0) AST_INT_INCM_TDY_FCY,
		nvl(tncp.AST_INT_INCM_TDY_LCY,0) AST_INT_INCM_TDY_LCY,

		T.AST_NML_INT_INCM_MTD_FCY,
		T.AST_NML_INT_INCM_MTD_LCY,
		T.AST_NML_INT_INCM_QTD_FCY,
		T.AST_NML_INT_INCM_QTD_LCY,
		T.AST_NML_INT_INCM_TDY_FCY,
		T.AST_NML_INT_INCM_TDY_LCY,
		T.AST_NML_INT_INCM_YTD_FCY,
		T.AST_NML_INT_INCM_YTD_LCY,

		T.AST_NML_INT_INCM_R12MTH_FCY,
		T.AST_NML_INT_INCM_R12MTH_LCY,
		T.AST_NML_INT_INCM_R1MTH_FCY,
		T.AST_NML_INT_INCM_R1MTH_LCY,
		T.AST_NML_INT_INCM_R3MTH_FCY,
		T.AST_NML_INT_INCM_R3MTH_LCY,
		T.AST_NML_INT_INCM_R6MTH_FCY,
		T.AST_NML_INT_INCM_R6MTH_LCY,


		T.AR_CRT_DEPT_DIM_ID,
		T.AR_MGT_DEPT_DIM_ID,
		T.CST_CRT_DEPT_DIM_ID,
		T.CST_MGT_DEPT_DIM_ID,

		T.NBR_OF_DYS_ROLLING_12MTH,
		T.NBR_OF_DYS_ROLLING_1MTH,
		T.NBR_OF_DYS_ROLLING_3MTH,
		T.NBR_OF_DYS_ROLLING_6MTH,
		T.NBR_OF_DYS_HTD,
		T.NBR_OF_DYS_MTD,
		T.NBR_OF_DYS_QTD,
		T.NBR_OF_DYS_YTD,

		nvl(tncp.AST_INT_INCM_R12MTH_FCY,0) AST_INT_INCM_R12MTH_FCY,
		nvl(tncp.AST_INT_INCM_R12MTH_LCY,0) AST_INT_INCM_R12MTH_LCY,
		nvl(tncp.AST_INT_INCM_R1MTH_FCY,0) AST_INT_INCM_R1MTH_FCY,
		nvl(tncp.AST_INT_INCM_R1MTH_LCY,0) AST_INT_INCM_R1MTH_LCY,
		nvl(tncp.AST_INT_INCM_R3MTH_FCY,0) AST_INT_INCM_R3MTH_FCY,
		nvl(tncp.AST_INT_INCM_R3MTH_LCY,0) AST_INT_INCM_R3MTH_LCY,
		nvl(tncp.AST_INT_INCM_R6MTH_FCY,0) AST_INT_INCM_R6MTH_FCY,
		nvl(tncp.AST_INT_INCM_R6MTH_LCY,0) AST_INT_INCM_R6MTH_LCY,

		T.AST_SCDY_ACR_INT_PTD_FCY,
		T.AST_SCDY_ACR_INT_PTD_LCY,
		
		T.AGRT_NIM_BAL_AMT_TDY_LCY,

		T.ACR_INT_TO_OFF_BAL_PTD_FCY,
		T.ACR_INT_TO_OFF_BAL_PTD_LCY,

		T.TOT_HLD_AMT_FCY,
		T.TOT_HLD_AMT_LCY,

		T.NXT_SHD_PYMT_AMT_FCY,
		T.NXT_SHD_PYMT_AMT_LCY,

		T.CLS_BAL_FRST_DAY_OVERDAFT_BSN_FCY,
		T.CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY,
		T.TOT_CNTS_OD_DB_BSN_AMT_FCY,
		T.TOT_CNTS_OD_DB_BSN_AMT_LCY,
		
		T.CST_SEG_SME_DIM_ID,
		T.EXG_RATE

		, nvl(FTP.AST_BSC_FTP_RATE_TDY,0) 	AST_BSC_FTP_RATE_TDY
		, nvl(FTP.AST_ADL_FTP_RATE_TDY,0) 	AST_ADL_FTP_RATE_TDY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_MTD_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_MTD_FCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_MTD_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_MTD_LCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_QTD_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_QTD_FCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_QTD_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_QTD_LCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_TDY_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_TDY_FCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_TDY_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_TDY_LCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_YTD_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_YTD_FCY
		, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_YTD_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_YTD_LCY
		, nvl(FTP.AST_BSC_FTP_AMT_MTD_FCY,0) 	AST_BSC_FTP_AMT_MTD_FCY
		, nvl(FTP.AST_BSC_FTP_AMT_MTD_LCY,0) 	AST_BSC_FTP_AMT_MTD_LCY
		, nvl(FTP.AST_BSC_FTP_AMT_QTD_FCY,0) 	AST_BSC_FTP_AMT_QTD_FCY
		, nvl(FTP.AST_BSC_FTP_AMT_QTD_LCY,0) 	AST_BSC_FTP_AMT_QTD_LCY
		, nvl(FTP.AST_BSC_FTP_AMT_TDY_FCY,0) 	AST_BSC_FTP_AMT_TDY_FCY
		, nvl(FTP.AST_BSC_FTP_AMT_TDY_LCY,0) 	AST_BSC_FTP_AMT_TDY_LCY
		, nvl(FTP.AST_BSC_FTP_AMT_YTD_FCY,0) 	AST_BSC_FTP_AMT_YTD_FCY
		, nvl(FTP.AST_BSC_FTP_AMT_YTD_LCY,0) 	AST_BSC_FTP_AMT_YTD_LCY
		, nvl(FTP.AST_BSC_NET_INT_MRGN_TDY,0) 	AST_BSC_NET_INT_MRGN_TDY
		, nvl(FTP.AST_NET_INT_MRGN_TDY,0) 	AST_NET_INT_MRGN_TDY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_MTD_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_MTD_FCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_MTD_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_MTD_LCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_QTD_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_QTD_FCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_QTD_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_QTD_LCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_TDY_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_TDY_FCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_TDY_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_TDY_LCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_YTD_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_YTD_FCY
		, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_YTD_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_YTD_LCY
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_ROLLING_12MTH,0) 	AGRT_ADL_AST_FTP_RATE_ROLLING_12MTH
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_ROLLING_1MTH,0) 	AGRT_ADL_AST_FTP_RATE_ROLLING_1MTH
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_ROLLING_3MTH,0) 	AGRT_ADL_AST_FTP_RATE_ROLLING_3MTH
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_ROLLING_6MTH,0) 	AGRT_ADL_AST_FTP_RATE_ROLLING_6MTH
		, nvl(FTP.AGRT_ACT_AST_NIM_YTD,0) 	AGRT_ACT_AST_NIM_YTD
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_HTD,0) 	AGRT_ADL_AST_FTP_RATE_HTD
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_MTD,0) 	AGRT_ADL_AST_FTP_RATE_MTD
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_QTD,0) 	AGRT_ADL_AST_FTP_RATE_QTD
		, nvl(FTP.AGRT_ADL_AST_FTP_RATE_YTD,0) 	AGRT_ADL_AST_FTP_RATE_YTD
		, nvl(FTP.AGRT_AST_NIM_HTD,0) 	AGRT_AST_NIM_HTD
		, nvl(FTP.AGRT_AST_NIM_MTD,0) 	AGRT_AST_NIM_MTD
		, nvl(FTP.AGRT_AST_NIM_QTD,0) 	AGRT_AST_NIM_QTD
		, nvl(FTP.AGRT_AST_NIM_YTD,0) 	AGRT_AST_NIM_YTD
		, nvl(FTP.AGRT_AST_NIM_R12MTH,0) 	AGRT_AST_NIM_R12MTH
		, nvl(FTP.AGRT_AST_NIM_R1MTH,0) 	AGRT_AST_NIM_R1MTH
		, nvl(FTP.AGRT_AST_NIM_R3MTH,0) 	AGRT_AST_NIM_R3MTH
		, nvl(FTP.AGRT_AST_NIM_R6MTH,0) 	AGRT_AST_NIM_R6MTH
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_HTD,0) 	AGRT_BSC_AST_FTP_RATE_HTD
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_MTD,0) 	AGRT_BSC_AST_FTP_RATE_MTD
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_QTD,0) 	AGRT_BSC_AST_FTP_RATE_QTD
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_YTD,0) 	AGRT_BSC_AST_FTP_RATE_YTD
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_ROLLING_12MTH,0) 	AGRT_BSC_AST_FTP_RATE_ROLLING_12MTH
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_ROLLING_1MTH,0) 	AGRT_BSC_AST_FTP_RATE_ROLLING_1MTH
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_ROLLING_3MTH,0) 	AGRT_BSC_AST_FTP_RATE_ROLLING_3MTH
		, nvl(FTP.AGRT_BSC_AST_FTP_RATE_ROLLING_6MTH,0) 	AGRT_BSC_AST_FTP_RATE_ROLLING_6MTH
		, nvl(FTP.AGRT_BSC_AST_NIM_HTD,0) 	AGRT_BSC_AST_NIM_HTD
		, nvl(FTP.AGRT_BSC_AST_NIM_MTD,0) 	AGRT_BSC_AST_NIM_MTD
		, nvl(FTP.AGRT_BSC_AST_NIM_QTD,0) 	AGRT_BSC_AST_NIM_QTD
		, nvl(FTP.AGRT_BSC_AST_NIM_YTD,0) 	AGRT_BSC_AST_NIM_YTD
		, nvl(FTP.AGRT_BSC_AST_NIM_R12MTH,0) 	AGRT_BSC_AST_NIM_R12MTH
		, nvl(FTP.AGRT_BSC_AST_NIM_R1MTH,0) 	AGRT_BSC_AST_NIM_R1MTH
		, nvl(FTP.AGRT_BSC_AST_NIM_R3MTH,0) 	AGRT_BSC_AST_NIM_R3MTH
		, nvl(FTP.AGRT_BSC_AST_NIM_R6MTH,0) 	AGRT_BSC_AST_NIM_R6MTH
		, nvl(FTP.AGRT_MNUL_ADJ_AST_NIM_MTD,0) 	AGRT_MNUL_ADJ_AST_NIM_MTD
		, nvl(FTP.AGRT_MNUL_ADJ_AST_NIM_QTD,0) 	AGRT_MNUL_ADJ_AST_NIM_QTD
		, nvl(FTP.AGRT_MNUL_ADJ_AST_NIM_YTD,0) 	AGRT_MNUL_ADJ_AST_NIM_YTD

	   , t.LMT_AMT_FCY
	   , t.LMT_AMT_LCY
	   
	   
	   
   	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R12MTH_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_R12MTH_FCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R12MTH_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_R12MTH_LCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R1MTH_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_R1MTH_FCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R1MTH_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_R1MTH_LCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R3MTH_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_R3MTH_FCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R3MTH_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_R3MTH_LCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R6MTH_FCY,0) 	AST_MNUL_ADJ_FTP_AMT_R6MTH_FCY
	, nvl(FTP.AST_MNUL_ADJ_FTP_AMT_R6MTH_LCY,0) 	AST_MNUL_ADJ_FTP_AMT_R6MTH_LCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R12MTH_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_R12MTH_FCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R12MTH_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_R12MTH_LCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R1MTH_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_R1MTH_FCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R1MTH_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_R1MTH_LCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R3MTH_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_R3MTH_FCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R3MTH_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_R3MTH_LCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R6MTH_FCY,0) 	AST_AUTO_ADJ_FTP_AMT_R6MTH_FCY
	, nvl(FTP.AST_AUTO_ADJ_FTP_AMT_R6MTH_LCY,0) 	AST_AUTO_ADJ_FTP_AMT_R6MTH_LCY
	, nvl(FTP.AST_BSC_FTP_AMT_R12MTH_FCY,0) 	AST_BSC_FTP_AMT_R12MTH_FCY
	, nvl(FTP.AST_BSC_FTP_AMT_R12MTH_LCY,0) 	AST_BSC_FTP_AMT_R12MTH_LCY
	, nvl(FTP.AST_BSC_FTP_AMT_R1MTH_FCY,0) 	AST_BSC_FTP_AMT_R1MTH_FCY
	, nvl(FTP.AST_BSC_FTP_AMT_R1MTH_LCY,0) 	AST_BSC_FTP_AMT_R1MTH_LCY
	, nvl(FTP.AST_BSC_FTP_AMT_R3MTH_FCY,0) 	AST_BSC_FTP_AMT_R3MTH_FCY
	, nvl(FTP.AST_BSC_FTP_AMT_R3MTH_LCY,0) 	AST_BSC_FTP_AMT_R3MTH_LCY
	, nvl(FTP.AST_BSC_FTP_AMT_R6MTH_FCY,0) 	AST_BSC_FTP_AMT_R6MTH_FCY
	, nvl(FTP.AST_BSC_FTP_AMT_R6MTH_LCY,0) 	AST_BSC_FTP_AMT_R6MTH_LCY
	, T.CST_ID    CST_ID 
	, t.CST_BRTH_AGE_SEG_DIM_ID 
	, t.CST_AGE_SEG_DIM_ID
FROM ADMIN.AST_AR_ANL_FCT_DAILY T
   LEFT JOIN ADMIN.AST_AR_ANL_FCT_TNCP_DAILY tncp on T.TM_PRD_DIM_ID = tncp.TM_PRD_DIM_ID AND T.AR_DIM_ID = tncp.AR_DIM_ID
   LEFT JOIN ADMIN.AST_AR_ANL_FTP_FCT_DAILY FTP ON T.TM_PRD_DIM_ID = FTP.TM_PRD_DIM_ID AND T.AR_DIM_ID = FTP.AR_DIM_ID
   LEFT JOIN ADMIN.SRC_STM_DIM src ON t.SRC_STM_DIM_ID = src.SRC_STM_DIM_ID
   LEFT JOIN ADMIN.PD_DIM pd on t.PD_DIM_ID = pd.PD_DIM_ID
WHERE T.TM_PRD_DIM_ID = (select param_value from cstb_system where param_name = 'ETL_DATE');

