SELECT   NVL(CST_DIM.CST_ID, 999999)   CST_ID ,   AR_DIM.AR_ID 	AR_ID
		, NVL(ACT_TERM_SEG.AR_TM_TO_MAT_SEG_DIM_ID, 999999)		  ACT_TM_TO_MAT_SEG_DIM_ID        , TWT.ADJ_INT_AMT_LTD_FCY
       , TWT.ADJ_INT_AMT_LTD_LCY
       , TWT.ADJ_INT_AMT_MTD_FCY
       , TWT.ADJ_INT_AMT_MTD_LCY
       , TWT.ADJ_INT_AMT_QTD_FCY
       , TWT.ADJ_INT_AMT_QTD_LCY
       , TWT.ADJ_INT_AMT_TDY_FCY
       , TWT.ADJ_INT_AMT_TDY_LCY
       , TWT.ADJ_INT_AMT_YTD_FCY
       , TWT.ADJ_INT_AMT_YTD_LCY
       , TWT.AR_AGE_SEG_ID 		AR_AGE_SEG_DIM_ID        , NVL(BAL_SEG.BAL_SEG_DIM_ID, 999999) 		AR_BAL_SEG_DIM_ID	       , AR_DIM.AR_DIM_ID			AR_DIM_ID 
       , NVL(AR_FNC_ST_DIM.AR_FNC_ST_DIM_ID, 999999)		AR_FNC_ST_DIM_ID
       , NVL(AR_LC_ST_DIM.AR_LIFE_CYC_ST_DIM_ID, 999999)	AR_LCS_DIM_ID
       , NVL(AR_OFCR_EMPE_DIM.EMPE_DIM_ID, 999999)		AR_OFCR_EMPE_DIM_ID
       , NVL(AR_PPS_DIM.AR_PPS_DIM_ID, 999999)			AR_PPS_DIM_ID
       , NVL(AR_TP_DIM.AR_TP_DIM_ID, 999999)				AR_TP_DIM_ID
       , TWT.AST_ACR_INT_LTD_FCY
       , TWT.AST_ACR_INT_LTD_LCY
       , TWT.AST_ACR_INT_MTD_FCY
       , TWT.AST_ACR_INT_MTD_LCY
       , TWT.AST_ACR_INT_PTD_FCY
       , TWT.AST_ACR_INT_PTD_LCY
       , TWT.AST_ACR_INT_QTD_FCY
       , TWT.AST_ACR_INT_QTD_LCY
       , TWT.AST_ACR_INT_TDY_FCY
       , TWT.AST_ACR_INT_TDY_LCY
       , TWT.AST_ACR_INT_YTD_FCY
       , TWT.AST_ACR_INT_YTD_LCY
       , TWT.AST_ACR_PNY_INT_AMT_MTD_FCY
       , TWT.AST_ACR_PNY_INT_AMT_MTD_LCY
       , TWT.AST_ACR_PNY_INT_AMT_PTD_FCY
       , TWT.AST_ACR_PNY_INT_AMT_PTD_LCY
       , TWT.AST_ACR_PNY_INT_AMT_QTD_FCY
       , TWT.AST_ACR_PNY_INT_AMT_QTD_LCY
       , TWT.AST_ACR_PNY_INT_AMT_TDY_FCY
       , TWT.AST_ACR_PNY_INT_AMT_TDY_LCY
       , TWT.AST_ACR_PNY_INT_AMT_YTD_FCY
       , TWT.AST_ACR_PNY_INT_AMT_YTD_LCY
       , TWT.AST_ACT_INT_RATE_TDY
       , TWT.AST_INT_PYMT_AMT_MTD_FCY
       , TWT.AST_INT_PYMT_AMT_MTD_LCY
       , TWT.AST_INT_PYMT_AMT_QTD_FCY
       , TWT.AST_INT_PYMT_AMT_QTD_LCY
       , TWT.AST_INT_PYMT_AMT_TDY_FCY
       , TWT.AST_INT_PYMT_AMT_TDY_LCY
       , TWT.AST_INT_PYMT_AMT_YTD_FCY
       , TWT.AST_INT_PYMT_AMT_YTD_LCY
       , NVL(ACG_STC_DIM.ACG_STC_ITM_DIM_ID, '999999')		BAL_ACG_STC_ITM_DIM_ID
       , NVL(BSH_TP_DIM.BAL_SHET_TP_DIM_ID, '999999')	BAL_SHET_TP_DIM_ID
       , TWT.CLS_BAL_AMT_LMTH_FCY
       , TWT.CLS_BAL_AMT_LMTH_LCY
       , TWT.CLS_BAL_AMT_LQTR_FCY
       , TWT.CLS_BAL_AMT_LQTR_LCY
       , TWT.CLS_BAL_AMT_LYR_FCY
       , TWT.CLS_BAL_AMT_LYR_LCY
       , TWT.CLS_BAL_AMT_TDY_FCY
       , TWT.CLS_BAL_AMT_TDY_LCY
       , TWT.CLS_BAL_AMT_TO_WRT_OFF_FCY
       , TWT.CLS_BAL_AMT_TO_WRT_OFF_LCY
       , TWT.CNTS_OD_BSN_NBR_OF_DYS
       , TWT.CNTS_OD_NBR_OF_DYS
       , NVL(CR_FCY_AR_DIM.CR_FCY_AR_DIM_ID, 999999)		CR_FCY_AR_DIM_ID
       , NVL(LMT.CR_LMT_SEG_DIM_ID, 999999) 		CR_LMT_SEG_DIM_ID        , NVL(CCY_DIM.CCY_DM_ID, 999999)					CCY_DIM_ID

       , NVL(CST_DIM.CST_DIM_ID, 999999 )					CST_DIM_ID
       , TWT.DSBR_AMT_LTD_FCY
       , TWT.DSBR_AMT_LTD_LCY
       , TWT.DSBR_AMT_MTD_FCY
       , TWT.DSBR_AMT_MTD_LCY
       , TWT.DSBR_AMT_QTD_FCY
       , TWT.DSBR_AMT_QTD_LCY
       , TWT.DSBR_AMT_TDY_FCY
       , TWT.DSBR_AMT_TDY_LCY
       , TWT.DSBR_AMT_YTD_FCY
       , TWT.DSBR_AMT_YTD_LCY
       , TWT.INT_BAL_OF_SOLD_LOAN_FCY
       , TWT.INT_BAL_OF_SOLD_LOAN_LCY
       , NVL(INT_PDA.FNC_SVC_PDA_SEG_DIM_ID, 999999)   		INT_PAST_DUE_AGNG_SEG_DIM_ID        , NVL(INT_SEG.INT_RATE_SEG_DIM_ID, 999999)  			INT_RATE_SEG_DIM_ID        , TWT.LAST_INT_PYMT_AMT_FCY
       , TWT.LAST_INT_PYMT_AMT_LCY
       , NVL(LST_INT_PYMT_DT.CDR_DT_DIM_ID, '999999')  		LAST_INT_PYMT_DT_DIM_ID
       , TWT.LAST_PNP_PYMT_AMT_FCY
       , TWT.LAST_PNP_PYMT_AMT_LCY
       , NVL(LST_PNP_PYMT_DT.CDR_DT_DIM_ID, '999999')  		LAST_PNP_PYMT_DT_DIM_ID

       , TWT.NXT_INT_PYMT_AMT_FCY
       , TWT.NXT_INT_PYMT_AMT_LCY
       , NVL(NXT_INT_PYMT_DT.CDR_DT_DIM_ID, '999999')   NXT_INT_PYMT_DT_DIM_ID
       , TWT.NXT_PNP_PYMT_AMT_FCY
       , TWT.NXT_PNP_PYMT_AMT_LCY
       , NVL(NXT_PNP_PYMT_DT.CDR_DT_DIM_ID, '999999')  NXT_PNP_PYMT_DT_DIM_ID
 
       , TWT.NBR_OF_FEE_TXN_LTD
       , TWT.NBR_OF_FEE_TXN_MTD
       , TWT.NBR_OF_FEE_TXN_QTD
       , TWT.NBR_OF_FEE_TXN_TDY
       , TWT.NBR_OF_FEE_TXN_YTD
       , NVL(AR_DIM.NBR_OF_INT_PYMT_SHD_CHG, 0)			NBR_OF_INT_PYMT_SHD_CHG
       , TWT.NBR_MAT_DT_CHG

       , NVL(AR_DIM.NBR_OF_PYMT_SHD_CHG, 0)				NBR_PYMT_SCH_CHG
       , TWT.NBR_OF_RENEWS
       , TWT.NBR_TERM_CHG
       , TWT.OFF_BAL_ACR_INT_PTD_FCY
       , TWT.OFF_BAL_ACR_INT_PTD_LCY
       , TWT.OFF_BAL_INT_PYMT_AMT_LTD_FCY
       , TWT.OFF_BAL_INT_PYMT_AMT_LTD_LCY
       , TWT.OFF_BAL_INT_PYMT_AMT_MTD_FCY
       , TWT.OFF_BAL_INT_PYMT_AMT_MTD_LCY
       , TWT.OFF_BAL_INT_PYMT_AMT_QTD_FCY
       , TWT.OFF_BAL_INT_PYMT_AMT_QTD_LCY
       , TWT.OFF_BAL_INT_PYMT_AMT_TDY_FCY
       , TWT.OFF_BAL_INT_PYMT_AMT_TDY_LCY
       , TWT.OFF_BAL_INT_PYMT_AMT_YTD_FCY
       , TWT.OFF_BAL_INT_PYMT_AMT_YTD_LCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_LTD_FCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_LTD_LCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_MTD_FCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_MTD_LCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_QTD_FCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_QTD_LCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_TDY_FCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_TDY_LCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_YTD_FCY
       , TWT.OFF_BAL_PNP_PYMT_AMT_YTD_LCY
       , NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)		ORG_UNIT_DIM_ID
       , NVL(ORG_TERM_SEG.AR_TM_TO_MAT_SEG_DIM_ID, 999999)   				ORIG_TM_TO_MAT_SEG_DIM_ID 			
       , TWT.PAST_DUE_INT_NBR_OF_DYS
       , TWT.PAST_DUE_PNP_NBR_OF_DYS
       , TWT.PNY_FEE_AMT_MTD_FCY
       , TWT.PNY_FEE_AMT_MTD_LCY
       , TWT.PNY_FEE_AMT_QTD_FCY
       , TWT.PNY_FEE_AMT_QTD_LCY
       , TWT.PNY_FEE_AMT_TDY_FCY
       , TWT.PNY_FEE_AMT_TDY_LCY
       , TWT.PNY_FEE_AMT_YTD_FCY
       , TWT.PNY_FEE_AMT_YTD_LCY
       , NVL(PNP_PDA.FNC_SVC_PDA_SEG_DIM_ID, 999999)    		PNP_PAST_DUE_AGNG_SEG_DIM_ID           , TWT.PNP_PYMT_AMT_LTD_FCY
       , TWT.PNP_PYMT_AMT_LTD_LCY
       , TWT.PNP_PYMT_AMT_MTD_FCY
       , TWT.PNP_PYMT_AMT_MTD_LCY
       , TWT.PNP_PYMT_AMT_QTD_FCY
       , TWT.PNP_PYMT_AMT_QTD_LCY
       , TWT.PNP_PYMT_AMT_TDY_FCY
       , TWT.PNP_PYMT_AMT_TDY_LCY
       , TWT.PNP_PYMT_AMT_YTD_FCY
       , TWT.PNP_PYMT_AMT_YTD_LCY
       , TWT.PNP_PYMT_AT_MAT_AMT_FCY
       , TWT.PNP_PYMT_AT_MAT_AMT_LCY
       , NVL(PD_DIM.PD_DIM_ID, 999999)			PD_DIM_ID
       , NVL(RMN_TERM_SEG.AR_TM_TO_MAT_SEG_DIM_ID, 999999)   			RMAN_TM_TO_MAT_SEG_DIM_ID        
       , TWT.RSK_WGHT_OTSND_AMT_FCY
       , TWT.RSK_WGHT_OTSND_AMT_LCY
       , TWT.SHD_PNP_PYMT_AMT_FCY
       , TWT.SHD_PNP_PYMT_AMT_LCY
       , TWT.SCRD_CLS_BAL_AMT_TDY_FCY
       , TWT.SCRD_CLS_BAL_AMT_TDY_LCY
       , NVL(SCR_CVR_DIM.SCR_CVR_DIM_ID, '999999')	SCR_CVR_DIM_ID
       , NVL(SRC_STM_DIM.SRC_STM_DIM_ID, '999999')	SRC_STM_DIM_ID
       , NVL(TWT.TM_PRD_ID, '999999')   		TM_PRD_DIM_ID  
       , TWT.TOT_AVL_AMT_FCY
       , TWT.TOT_AVL_AMT_LCY
       , TWT.TOT_CLT_PVDD_AMT_FCY
       , TWT.TOT_CLT_PVDD_AMT_LCY
       , TWT.TOT_CNTS_OD_DB_AMT_FCY
       , TWT.TOT_CNTS_OD_DB_AMT_LCY
       , TWT.TOT_GNL_PRVN_AMT_FCY
       , TWT.TOT_GNL_PRVN_AMT_LCY
       , NVL(TWT.LMT_AMT_FCY, 0) 		TOT_LMT_AMT_FCY
       , NVL(TWT.LMT_AMT_LCY, 0) 		TOT_LMT_AMT_LCY
       , TWT.TOT_OD_DB_AMT_FCY
       , TWT.TOT_OD_DB_AMT_LCY
       , TWT.TOT_PAST_DUE_INT_AMT_FCY
       , TWT.TOT_PAST_DUE_INT_AMT_LCY
       , TWT.TOT_PAST_DUE_PNP_AMT_FCY
       , TWT.TOT_PAST_DUE_PNP_AMT_LCY
       , TWT.TOT_SPF_PRVN_AMT_FCY
       , TWT.TOT_SPF_PRVN_AMT_LCY
       , TWT.TOT_WRT_OFF_AMT_FCY
       , TWT.TOT_WRT_OFF_AMT_LCY
       , TWT.UNUSED_PRVN_REVERSED_AMT_FCY
       , TWT.UNUSED_PRVN_REVERSED_AMT_LCY
       , TWT.USED_PRVN_AMT_FCY
       , TWT.USED_PRVN_AMT_LCY
	   , NVL(TWT.MTH_ISSU_TP_ID, 999999)		MTH_ISSU_TP_DIM_ID   
       , NVL(TWT.RTO_DBT_TP_ID, 999999)			RTO_DBT_TP_DIM_ID
       , TWT.BILL_INT_AMT_FCY
       , TWT.BILL_INT_AMT_LCY
       , TWT.BILL_LATE_CHRG_AMT_FCY
       , TWT.BILL_LATE_CHRG_AMT_LCY
       , TWT.BILL_PNP_AMT_FCY
       , TWT.BILL_PNP_AMT_LCY
       , NVL(EMPE_CREATE_AR.EMPE_DIM_ID, 999999)   				AR_OFCR_CREATOR_DIM_ID 		       , NVL(TWT.AR_LCS_DT_ID, '999999')				AR_LCS_DT_DIM_ID    	   , NVL(TMP.CST_LBY_BAL_SEG_DIM_ID,  999999)							CST_LBY_BAL_SEG_DIM_ID 	   , NVL(TMP.CST_AST_BAL_SEG_DIM_ID, 999999)							CST_AST_BAL_SEG_DIM_ID 	   
	 	, NVL(TMP.CST_BRN_AST_BAL_SEG_DIM_ID, 999999)			CST_BRN_AST_BAL_SEG_DIM_ID
		, NVL(TMP.CST_BRN_LBY_BAL_SEG_DIM_ID, 999999)			CST_BRN_LBY_BAL_SEG_DIM_ID
	   
		, NVL(TWT.AGRT_AST_INT_RATE_HTD, 0)		AGRT_AST_INT_RATE_HTD
		, NVL(TWT.AGRT_AST_INT_RATE_MTD, 0)		AGRT_AST_INT_RATE_MTD
		, NVL(TWT.AGRT_AST_INT_RATE_QTD, 0)		AGRT_AST_INT_RATE_QTD
		, NVL(TWT.AGRT_AST_INT_RATE_YTD, 0)		AGRT_AST_INT_RATE_YTD
				
		, NVL(TWT.AGRT_AST_INT_RATE_R12MTH, 0)		AGRT_AST_INT_RATE_R12MTH
		, NVL(TWT.AGRT_AST_INT_RATE_R1MTH, 0)		AGRT_AST_INT_RATE_R1MTH
		, NVL(TWT.AGRT_AST_INT_RATE_R3MTH, 0)		AGRT_AST_INT_RATE_R3MTH
		, NVL(TWT.AGRT_AST_INT_RATE_R6MTH, 0)		AGRT_AST_INT_RATE_R6MTH
				
		, NVL(TWT.AGRT_BAL_AMT_HTD_LCY, 0)		AGRT_BAL_AMT_HTD_LCY
		, NVL(TWT.AGRT_BAL_AMT_MTD_LCY, 0)		AGRT_BAL_AMT_MTD_LCY
		, NVL(TWT.AGRT_BAL_AMT_QTD_LCY, 0)		AGRT_BAL_AMT_QTD_LCY
		, NVL(TWT.AGRT_BAL_AMT_YTD_LCY, 0)		AGRT_BAL_AMT_YTD_LCY
				
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_12MTH_LCY, 0)		AGRT_BAL_AMT_ROLLING_12MTH_LCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_1MTH_LCY, 0)		AGRT_BAL_AMT_ROLLING_1MTH_LCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_3MTH_LCY, 0)		AGRT_BAL_AMT_ROLLING_3MTH_LCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_6MTH_LCY, 0)		AGRT_BAL_AMT_ROLLING_6MTH_LCY
				
		, NVL(TWT.LMT_AMT_FCY, 0)     	LMT_AMT_FCY
		, NVL(TWT.LMT_AMT_LCY, 0)   	LMT_AMT_LCY 
		, NVL(TWT.ACR_INT_TO_OFF_BAL_PTD_FCY, 0)     	ACR_INT_TO_OFF_BAL_PTD_FCY
		, NVL(TWT.ACR_INT_TO_OFF_BAL_PTD_LCY, 0)   	ACR_INT_TO_OFF_BAL_PTD_LCY 	

		, NVL(TWT.AST_NML_INT_INCM_MTD_FCY, 0 )		AST_NML_INT_INCM_MTD_FCY
		, NVL(TWT.AST_NML_INT_INCM_MTD_LCY, 0 )		AST_NML_INT_INCM_MTD_LCY
		, NVL(TWT.AST_NML_INT_INCM_QTD_FCY, 0 )		AST_NML_INT_INCM_QTD_FCY
		, NVL(TWT.AST_NML_INT_INCM_QTD_LCY, 0 )		AST_NML_INT_INCM_QTD_LCY
		, NVL(TWT.AST_NML_INT_INCM_TDY_FCY, 0 )		AST_NML_INT_INCM_TDY_FCY
		, NVL(TWT.AST_NML_INT_INCM_TDY_LCY, 0 )		AST_NML_INT_INCM_TDY_LCY
		, NVL(TWT.AST_NML_INT_INCM_YTD_FCY, 0 )		AST_NML_INT_INCM_YTD_FCY
		, NVL(TWT.AST_NML_INT_INCM_YTD_LCY, 0 )		AST_NML_INT_INCM_YTD_LCY
		, NVL(TWT.CLS_BAL_AMT_TO_WRT_OFF_MTD_FCY, 0 )		CLS_BAL_AMT_TO_WRT_OFF_MTD_FCY
		, NVL(TWT.CLS_BAL_AMT_TO_WRT_OFF_MTD_LCY, 0 )		CLS_BAL_AMT_TO_WRT_OFF_MTD_LCY
		, NVL(TWT.CLS_BAL_AMT_TO_WRT_OFF_QTD_FCY, 0 )		CLS_BAL_AMT_TO_WRT_OFF_QTD_FCY
		, NVL(TWT.CLS_BAL_AMT_TO_WRT_OFF_QTD_LCY, 0 )		CLS_BAL_AMT_TO_WRT_OFF_QTD_LCY
		, NVL(TWT.CLS_BAL_AMT_TO_WRT_OFF_YTD_FCY, 0 )		CLS_BAL_AMT_TO_WRT_OFF_YTD_FCY
		, NVL(TWT.CLS_BAL_AMT_TO_WRT_OFF_YTD_LCY, 0 )		CLS_BAL_AMT_TO_WRT_OFF_YTD_LCY
				
		, NVL(TWT.AGRT_NIM_BAL_AMT_HTD_LCY, 0 )		AGRT_NIM_BAL_AMT_HTD_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_MTD_LCY, 0 )		AGRT_NIM_BAL_AMT_MTD_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_QTD_LCY, 0 )		AGRT_NIM_BAL_AMT_QTD_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_YTD_LCY, 0 )		AGRT_NIM_BAL_AMT_YTD_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_ROLLING_12MTH_LCY, 0 )		AGRT_NIM_BAL_AMT_ROLLING_12MTH_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_ROLLING_1MTH_LCY, 0 )		AGRT_NIM_BAL_AMT_ROLLING_1MTH_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_ROLLING_3MTH_LCY, 0 )		AGRT_NIM_BAL_AMT_ROLLING_3MTH_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_ROLLING_6MTH_LCY, 0 )		AGRT_NIM_BAL_AMT_ROLLING_6MTH_LCY

		, NVL(AR_DEP_CRT.ORG_UNIT_DIM_ID, 999999)		AR_CRT_DEPT_DIM_ID 
		, NVL(AR_DEP_MGT.ORG_UNIT_DIM_ID , 999999)		AR_MGT_DEPT_DIM_ID 
		, NVL(TWT.NBR_OF_DYS_ROLLING_12MTH , 0)		NBR_OF_DYS_ROLLING_12MTH 
		, NVL(TWT.NBR_OF_DYS_ROLLING_6MTH  , 0)		NBR_OF_DYS_ROLLING_6MTH  
		, NVL(TWT.NBR_OF_DYS_ROLLING_3MTH  , 0)		NBR_OF_DYS_ROLLING_3MTH  
		, NVL(TWT.NBR_OF_DYS_ROLLING_1MTH  , 0)		NBR_OF_DYS_ROLLING_1MTH  

		, NVL(TWT.AST_SCDY_ACR_INT_PTD_FCY, 0) 		AST_SCDY_ACR_INT_PTD_FCY
		, NVL(TWT.AST_SCDY_ACR_INT_PTD_LCY, 0) 		AST_SCDY_ACR_INT_PTD_LCY
		, NVL(TWT.AGRT_NIM_BAL_AMT_TDY_LCY, 0)    AGRT_NIM_BAL_AMT_TDY_LCY
		, NVL(TWT.AGRT_BAL_AMT_HTD_FCY  , 0)		AGRT_BAL_AMT_HTD_FCY  
		, NVL(TWT.AGRT_BAL_AMT_MTD_FCY, 0)			AGRT_BAL_AMT_MTD_FCY
		, NVL(TWT.AGRT_BAL_AMT_QTD_FCY, 0)			AGRT_BAL_AMT_QTD_FCY
		, NVL(TWT.AGRT_BAL_AMT_YTD_FCY, 0)			AGRT_BAL_AMT_YTD_FCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_12MTH_FCY, 0)	AGRT_BAL_AMT_ROLLING_12MTH_FCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_1MTH_FCY, 0)		AGRT_BAL_AMT_ROLLING_1MTH_FCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_3MTH_FCY, 0)		AGRT_BAL_AMT_ROLLING_3MTH_FCY
		, NVL(TWT.AGRT_BAL_AMT_ROLLING_6MTH_FCY, 0)		AGRT_BAL_AMT_ROLLING_6MTH_FCY

		, NVL(TWT.AST_NML_INT_INCM_HTD_FCY, 0)			AST_NML_INT_INCM_HTD_FCY
		, NVL(TWT.AST_NML_INT_INCM_HTD_LCY, 0)			AST_NML_INT_INCM_HTD_LCY

		, NVL(TWT.AST_NML_INT_INCM_R1MTH_FCY, 0)			AST_NML_INT_INCM_R1MTH_FCY
		, NVL(TWT.AST_NML_INT_INCM_R1MTH_LCY, 0)			AST_NML_INT_INCM_R1MTH_LCY
		, NVL(TWT.AST_NML_INT_INCM_R3MTH_FCY, 0)			AST_NML_INT_INCM_R3MTH_FCY
		, NVL(TWT.AST_NML_INT_INCM_R3MTH_LCY, 0)			AST_NML_INT_INCM_R3MTH_LCY
		, NVL(TWT.AST_NML_INT_INCM_R6MTH_FCY, 0)			AST_NML_INT_INCM_R6MTH_FCY
		, NVL(TWT.AST_NML_INT_INCM_R6MTH_LCY, 0)			AST_NML_INT_INCM_R6MTH_LCY
		, NVL(TWT.AST_NML_INT_INCM_R12MTH_FCY, 0)			AST_NML_INT_INCM_R12MTH_FCY
		, NVL(TWT.AST_NML_INT_INCM_R12MTH_LCY, 0)			AST_NML_INT_INCM_R12MTH_LCY
		, NVL(RPT_CCY_DIM.CCY_DM_ID , 999999)		RPT_CCY_DIM_ID 
		, NVL(TWT.RPT_EXG_RATE , 0)		RPT_EXG_RATE 
		, NVL(TWT.NBR_OF_DYS_HTD, 0)				NBR_OF_DYS_HTD
		, NVL(TWT.NBR_OF_DYS_MTD, 0)				NBR_OF_DYS_MTD
		, NVL(TWT.NBR_OF_DYS_QTD, 0)				NBR_OF_DYS_QTD
		, NVL(TWT.NBR_OF_DYS_YTD , 0)				NBR_OF_DYS_YTD 
						
		, NVL(TWT.TOT_HLD_AMT_FCY, 0)				TOT_HLD_AMT_FCY
		, NVL(TWT.TOT_HLD_AMT_LCY, 0)				TOT_HLD_AMT_LCY
		, NVL(TWT.NXT_SHD_PYMT_AMT_FCY, 0)				NXT_SHD_PYMT_AMT_FCY
		, NVL(TWT.NXT_SHD_PYMT_AMT_LCY, 0)				NXT_SHD_PYMT_AMT_LCY
		, NVL(NXT_SHD_PNP_PYMT_DT_ID, 0)		NXT_SHD_PNP_PYMT_DT_DIM_ID
		, NVL(NXT_SHD_INT_PYMT_DT_ID, 0)		NXT_SHD_INT_PYMT_DT_DIM_ID
		, NVL(EX.EXG_RATE, 1)         EXG_RATE

		, 0.0000		CLS_BAL_FRST_DAY_OVERDAFT_BSN_FCY
		, 0.0000		CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY 
		, 0.0000		TOT_CNTS_OD_DB_BSN_AMT_FCY
		, 0.0000		TOT_CNTS_OD_DB_BSN_AMT_LCY
		,  999999  	CST_HIER_DIM_ID 							, NVL(TMP_CST.CST_MKT_SEG_DIM_ID, 999999)       CST_MKT_SEG_DIM_ID
		, NVL(TMP_CST.CST_SEG_DIM_ID, 999999)           CST_SEG_DIM_ID
		, NVL(TMP_CST.CST_OFCR_EMPE_DIM_ID, 999999)			CST_OFCR_EMPE_DIM_ID
		, NVL(TMP_CST.CST_PERF_ST_DIM_ID, 999999)			CST_PERF_ST_DIM_ID
		, NVL(TMP_CST.CST_TP_DIM_ID, 999999)			CST_TP_DIM_ID
		
		, NVL(TMP_CST.IDY_SML_ID_DIM_ID, '999999')		IDY_SML_ID_DIM_ID
				
		, NVL(TMP_CST.LINE_OF_BSN_DIM_ID, '999999')		LINE_OF_BSN_DIM_ID
		, NVL(TMP_CST.CST_OFCR_CREATOR_DIM_ID, 999999)   			CST_OFCR_CREATOR_DIM_ID		 		
		, NVL(TMP_CST.CST_CRT_DEPT_DIM_ID, 999999)		CST_CRT_DEPT_DIM_ID 
		, NVL(TMP_CST.CST_MGT_DEPT_DIM_ID, 999999)		CST_MGT_DEPT_DIM_ID 

		, NVL(TMP_CST.CST_LIFE_CYC_ST_DIM_ID, '999999')	CST_LIFE_CYC_ST_DIM_ID 
		, NVL(TMP_CST.CST_SEG_SME_DIM_ID, 999999)           CST_SEG_SME_DIM_ID
		, NVL(TMP_CST.CR_RSK_RTG_DIM_ID, '999999')					CR_RSK_RTG_DIM_ID


	   , NVL(ACG_STC_GRP_DIM.ACG_STC_GRP_DIM_ID, 999999)	ACG_STC_GRP_DIM_ID
	   , NVL(TWT.CLS_BAL_AMT_LAST_DAY_FCY, 0)		CLS_BAL_AMT_LAST_DAY_FCY
	   , NVL(TWT.CLS_BAL_AMT_LAST_DAY_LCY, 0)		CLS_BAL_AMT_LAST_DAY_LCY
	   , NVL(TMP_CST.CST_BRTH_AGE_SEG_DIM_ID, 999999)   	CST_BRTH_AGE_SEG_DIM_ID
	   , NVL(TMP_CST.CST_AGE_SEG_DIM_ID, 999999)   	CST_AGE_SEG_DIM_ID
	   
	   
FROM TMP_AR_ANL_FCT_SGD3 TWT 
LEFT JOIN 	CSTB_SYSTEM SYS 		ON SYS.PARAM_NAME='ETL_DATE'
INNER JOIN 	AR_DIM AR_DIM 			ON TWT.AR_ID = AR_DIM.AR_ID LEFT JOIN 	CR_FCY_AR_DIM CR_FCY_AR_DIM ON CR_FCY_AR_DIM.CR_FCY_AR_ID = TWT.CR_FCY_AR_ID  AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CR_FCY_AR_DIM.EFF_FM_DT AND CR_FCY_AR_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN 	CST_DIM CST_DIM 		ON CST_DIM.CST_ID = TWT.CST_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_DIM.EFF_FM_DT AND CST_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN 	AR_TP_DIM AR_TP_DIM		ON AR_TP_DIM.LVL_0_ID = TWT.AR_TP_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_TP_DIM.EFF_FM_DT AND AR_TP_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') 
LEFT JOIN PD_DIM PD_DIM			ON PD_DIM.PD_ID = TWT.PD_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= PD_DIM.EFF_FM_DT AND PD_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN OU_DIM OU_DIM			ON OU_DIM.ORG_UNIT_ID = TWT.ORG_UNIT_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= OU_DIM.EFF_FM_DT AND OU_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN CCY_DIM CCY_DIM			ON CCY_DIM.CCY_ID = TWT.CCY_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CCY_DIM.EFF_FM_DT AND CCY_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN AR_LC_ST_DIM AR_LC_ST_DIM		ON AR_LC_ST_DIM.LVL_0_ID = TWT.AR_LCS_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_LC_ST_DIM.EFF_FM_DT AND AR_LC_ST_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN AR_PPS_DIM AR_PPS_DIM	ON AR_PPS_DIM.LVL_0_ID	= TWT.AR_PPS_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_PPS_DIM.EFF_FM_DT AND AR_PPS_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN ACG_STC_ITM_DIM ACG_STC_DIM	ON ACG_STC_DIM.LVL_0_ID = TWT.BAL_ACG_STC_ITM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= ACG_STC_DIM.EFF_FM_DT AND ACG_STC_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN BSH_TP_DIM BSH_TP_DIM	ON BSH_TP_DIM.LVL_0_ID = TWT.BAL_SHET_TP_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= BSH_TP_DIM.EFF_FM_DT AND BSH_TP_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN SRC_STM_DIM SRC_STM_DIM	ON SRC_STM_DIM.LVL_0_ID	= TWT.SRC_STM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SRC_STM_DIM.EFF_FM_DT AND SRC_STM_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN SCR_CVR_DIM SCR_CVR_DIM	ON SCR_CVR_DIM.LVL_0_ID = TWT.SCR_CVR_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SCR_CVR_DIM.EFF_FM_DT AND SCR_CVR_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN EMPE_DIM AR_OFCR_EMPE_DIM		ON AR_OFCR_EMPE_DIM.EMPE_ID = TWT.AR_OFCR_EMPE_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_OFCR_EMPE_DIM.EFF_FM_DT AND AR_OFCR_EMPE_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN EMPE_DIM EMPE_CREATE_AR		ON EMPE_CREATE_AR.EMPE_ID = TWT.AR_OFCR_CREATOR_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= EMPE_CREATE_AR.EFF_FM_DT AND EMPE_CREATE_AR.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN CDR_DT_DIM NXT_PNP_PYMT_DT		ON NXT_PNP_PYMT_DT.CDR_DT_DIM_ID = TWT.NXT_PNP_PYMT_DT_ID 
LEFT JOIN CDR_DT_DIM NXT_INT_PYMT_DT		ON NXT_INT_PYMT_DT.CDR_DT_DIM_ID = TWT.NXT_INT_PYMT_DT_ID
LEFT JOIN CDR_DT_DIM LST_PNP_PYMT_DT		ON LST_PNP_PYMT_DT.CDR_DT_DIM_ID = TWT.LAST_PNP_PYMT_DT_ID
LEFT JOIN CDR_DT_DIM LST_INT_PYMT_DT		ON LST_INT_PYMT_DT.CDR_DT_DIM_ID = TWT.LAST_INT_PYMT_DT_ID  
LEFT JOIN CCY_DIM RPT_CCY_DIM			ON RPT_CCY_DIM.CCY_ID = TWT.RPT_CCY_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= RPT_CCY_DIM.EFF_FM_DT AND RPT_CCY_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN (
        SELECT T.BAL_SEG_DIM_ID, T.MIN_BAL, T.MAX_BAL FROM BAL_SEG_DIM T
        INNER JOIN 		CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
		AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= T.EFF_FM_DT AND T.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
) BAL_SEG ON TWT.AR_BAL_SEG_ID >= BAL_SEG.MIN_BAL AND TWT.AR_BAL_SEG_ID < BAL_SEG.MAX_BAL 

LEFT JOIN INT_RATE_SEG_DIM INT_SEG ON TWT.INT_RATE_SEG_ID  >= INT_SEG.MIN_RATE AND TWT.INT_RATE_SEG_ID < INT_SEG.MAX_RATE
	AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= INT_SEG.EFF_FM_DT AND INT_SEG.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN FNC_SVC_PDA_SEG_DIM INT_PDA ON TWT.INT_PAST_DUE_AGNG_SEG_ID >= INT_PDA.MIN_DAY AND TWT.INT_PAST_DUE_AGNG_SEG_ID < INT_PDA.MAX_DAY
	AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= INT_PDA.EFF_FM_DT AND INT_PDA.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN FNC_SVC_PDA_SEG_DIM PNP_PDA ON TWT.PNP_PAST_DUE_AGNG_SEG_ID >= PNP_PDA.MIN_DAY AND TWT.PNP_PAST_DUE_AGNG_SEG_ID < PNP_PDA.MAX_DAY
	AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= PNP_PDA.EFF_FM_DT AND PNP_PDA.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN AR_FNC_ST_DIM  AR_FNC_ST_DIM	ON AR_FNC_ST_DIM.LVL_0_ID = TWT.AR_FNC_ST_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_FNC_ST_DIM.EFF_FM_DT AND AR_FNC_ST_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
	
LEFT JOIN 		OU_DIM AR_DEP_CRT			ON AR_DEP_CRT.ORG_UNIT_ID = TWT.AR_CRT_DEPT_ID  AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_DEP_CRT.EFF_FM_DT AND AR_DEP_CRT.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN 		OU_DIM AR_DEP_MGT			ON AR_DEP_MGT.ORG_UNIT_ID = TWT.AR_MGT_DEPT_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_DEP_MGT.EFF_FM_DT AND AR_DEP_MGT.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN 		TMP_CST_BAL_SEG	TMP			ON TMP.CST_ID = TWT.CST_ID AND TMP.ORG_UNIT_ID  =  TWT.ORG_UNIT_ID 

LEFT JOIN 		TWT_CST_LMT_SEG TWT_LMT_SEG			ON TWT_LMT_SEG.CST_ID = TWT.CST_ID AND TWT_LMT_SEG.MSR_PRD_ID   =  TWT.TM_PRD_ID

LEFT JOIN (
        SELECT 
			T.CR_LMT_SEG_DIM_ID CR_LMT_SEG_DIM_ID, 
			T.MIN_BAL, 
			T.MAX_BAL 
		FROM CR_LMT_SEG_DIM T
        INNER JOIN 		CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
	 	AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= T.EFF_FM_DT AND T.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
) LMT  ON NVL(TWT_LMT_SEG.CR_LMT_SEG_ID, 0) >= LMT.MIN_BAL AND NVL(TWT_LMT_SEG.CR_LMT_SEG_ID, 0) < LMT.MAX_BAL 

LEFT JOIN 	CSTB_AR_TM_TO_MAT_SEQ_MP_RL ORG_TERM_SEG ON ORG_TERM_SEG.TERM_CODE = TWT.TERM_CODE 
		AND TWT.TERM >= ORG_TERM_SEG.MIN_TERM AND TWT.TERM < ORG_TERM_SEG.MAX_TERM 
	    AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= ORG_TERM_SEG.EFF_DT AND ORG_TERM_SEG.END_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN CSTB_AR_TM_TO_MAT_SEQ_MP_RL ACT_TERM_SEG ON ACT_TERM_SEG.TERM_CODE = 'D'
	AND TWT.ACT_TM_TO_MAT_SEG_ID >= ACT_TERM_SEG.MIN_TERM AND TWT.ACT_TM_TO_MAT_SEG_ID < ACT_TERM_SEG.MAX_TERM
	AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= ACT_TERM_SEG.EFF_DT AND ACT_TERM_SEG.END_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN CSTB_AR_TM_TO_MAT_SEQ_MP_RL RMN_TERM_SEG ON RMN_TERM_SEG.TERM_CODE = 'D'
	AND TWT.RMAN_TM_TO_MAT_SEG_ID >= RMN_TERM_SEG.MIN_TERM AND TWT.RMAN_TM_TO_MAT_SEG_ID < RMN_TERM_SEG.MAX_TERM
	AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= RMN_TERM_SEG.EFF_DT AND RMN_TERM_SEG.END_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')


LEFT JOIN TMP_CST ON TMP_CST.CST_ID = TWT.CST_ID 
LEFT JOIN DM_EXG_RATE EX ON EX.CCY_ID = TWT.CCY_ID  AND EX.EFF_DT <= TO_DATE(SYS.PARAM_VALUE, 'YYYYDDD') AND EX.END_DT > TO_DATE(SYS.PARAM_VALUE, 'YYYYDDD') 
LEFT JOIN ACG_STC_GRP_DIM ON ACG_STC_GRP_DIM.LVL_0_ID = TWT.ACG_STC_GRP_DIM_ID  AND ACG_STC_GRP_DIM.EFF_FM_DT <= TO_DATE(SYS.PARAM_VALUE, 'YYYYDDD') AND ACG_STC_GRP_DIM.EFF_TO_DT > TO_DATE(SYS.PARAM_VALUE, 'YYYYDDD') 
	
WHERE AR_DIM.SRC_STM = 'SGD3_TCNT_CHOVAY' AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_DIM.EFF_FM_DT AND AR_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD');

