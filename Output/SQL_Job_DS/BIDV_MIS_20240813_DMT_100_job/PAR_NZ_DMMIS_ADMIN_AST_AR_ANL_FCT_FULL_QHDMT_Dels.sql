TRUNCATE TABLE AST_AR_ANL_FCT_FULL_QHDMT_DAILY;

INSERT INTO AST_AR_ANL_FCT_FULL_QHDMT_DAILY (
  AR_ID
, CR_RSK_RTG_DIM_ID
, ACG_STC_GRP_DIM_ID
, NXT_SHD_PNP_PYMT_DT_DIM_ID
, NXT_PNP_PYMT_DT_DIM_ID
, NXT_PNP_PYMT_DUE_DT_DIM_ID
, NXT_INT_PYMT_DUE_DT_DIM_ID
, NXT_SHD_INT_PYMT_DT_DIM_ID
, NXT_INT_PYMT_DT_DIM_ID
, CST_LIFE_CYC_ST_DIM_ID
, CST_AST_BAL_SEG_DIM_ID
, ACT_TM_TO_MAT_SEG_DIM_ID
, AR_LCS_DT_DIM_ID
, AST_ACR_PNY_INT_AMT_PTD_LCY
, AR_OFCR_EMPE_DIM_ID
, AST_ACR_INT_LTD_LCY
, CR_LMT_SEG_DIM_ID
, CST_MKT_SEG_DIM_ID
, CST_SEG_DIM_ID
, CST_OFCR_EMPE_DIM_ID
, AR_DIM_ID
, AR_FNC_ST_DIM_ID
, AR_LCS_DIM_ID
, AR_PPS_DIM_ID
, AR_TP_DIM_ID
, AST_ACR_INT_PTD_LCY
, AST_ACR_INT_TDY_LCY
, AST_ACR_INT_YTD_FCY
, AST_ACR_INT_YTD_LCY
, AST_ACR_PNY_INT_AMT_TDY_LCY
, AST_ACR_PNY_INT_AMT_YTD_FCY
, AST_ACR_PNY_INT_AMT_YTD_LCY
, AST_ACT_INT_RATE_TDY
, AST_INT_PYMT_AMT_TDY_LCY
, AST_INT_PYMT_AMT_YTD_FCY
, AST_INT_PYMT_AMT_YTD_LCY
, BAL_ACG_STC_ITM_DIM_ID
, BAL_SHET_TP_DIM_ID
, CLS_BAL_AMT_TDY_LCY
, CLS_ON_BAL_AMT_TDY_LCY
, CLS_LC_BAL_AMT_TDY_LCY
, CLS_BG_BAL_AMT_TDY_LCY
, CLS_BAL_AMT_TO_WRT_OFF_LCY
, CR_FCY_AR_DIM_ID
, CCY_DIM_ID
, CST_DIM_ID
, CST_HIER_DIM_ID
, CST_PERF_ST_DIM_ID
, CST_TP_DIM_ID
, DSBR_AMT_LTD_LCY
, DSBR_AMT_TDY_LCY
, DSBR_AMT_YTD_FCY
, DSBR_AMT_YTD_LCY
, IDY_SML_ID_DIM_ID
, INT_RATE_SEG_DIM_ID
, LAST_INT_PYMT_AMT_LCY
, LAST_INT_PYMT_DT_DIM_ID
, LAST_PNP_PYMT_AMT_LCY
, LAST_PNP_PYMT_DT_DIM_ID
, NXT_INT_PYMT_AMT_LCY
, NXT_PNP_PYMT_AMT_LCY
, NBR_OF_INT_PYMT_SHD_CHG
, NBR_PYMT_SCH_CHG
, NBR_TERM_CHG
, OFF_BAL_ACR_INT_PTD_LCY
, OFF_BAL_INT_PYMT_AMT_LTD_LCY
, OFF_BAL_INT_PYMT_AMT_TDY_LCY
, OFF_BAL_INT_PYMT_AMT_YTD_FCY
, OFF_BAL_INT_PYMT_AMT_YTD_LCY
, OFF_BAL_PNP_PYMT_AMT_LTD_LCY
, OFF_BAL_PNP_PYMT_AMT_TDY_LCY
, OFF_BAL_PNP_PYMT_AMT_YTD_FCY
, OFF_BAL_PNP_PYMT_AMT_YTD_LCY
, ORG_UNIT_DIM_ID
, ORIG_TM_TO_MAT_SEG_DIM_ID
, PAST_DUE_INT_NBR_OF_DYS
, PAST_DUE_PNP_NBR_OF_DYS
, PNY_FEE_AMT_TDY_LCY
, PNY_FEE_AMT_YTD_FCY
, PNY_FEE_AMT_YTD_LCY
, PNP_PYMT_AMT_LTD_LCY
, PNP_PYMT_AMT_TDY_LCY
, PNP_PYMT_AMT_YTD_FCY
, PNP_PYMT_AMT_YTD_LCY
, PD_DIM_ID
, RMAN_TM_TO_MAT_SEG_DIM_ID
, SCR_CVR_DIM_ID
, SRC_STM_DIM_ID
, TOT_LMT_AMT_LCY
, TOT_OD_DB_AMT_LCY
, TOT_PAST_DUE_INT_AMT_LCY
, TOT_PAST_DUE_PNP_AMT_LCY
, TOT_WRT_OFF_AMT_LCY
, BILL_INT_AMT_LCY
, BILL_LATE_CHRG_AMT_LCY
, BILL_PNP_AMT_LCY
, AR_OFCR_CREATOR_DIM_ID
, CST_OFCR_CREATOR_DIM_ID
, AGRT_BAL_AMT_YTD_LCY
, AGRT_BAL_AMT_YTD_FCY
, CST_BRN_AST_BAL_SEG_DIM_ID
, AR_CRT_DEPT_DIM_ID
, AR_MGT_DEPT_DIM_ID
, CST_CRT_DEPT_DIM_ID
, CST_MGT_DEPT_DIM_ID
, NBR_OF_DYS_YTD
, AST_SCDY_ACR_INT_PTD_LCY
, ACR_INT_TO_OFF_BAL_PTD_LCY
, TOT_HLD_AMT_LCY
, CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY
, TOT_CNTS_OD_DB_BSN_AMT_LCY
, CST_SEG_SME_DIM_ID
, EXG_RATE
, LMT_AMT_LCY
, CST_ID
, SUSP_ACR_INT_PTD_LCY
, CST_PERF_CARD_ST_DIM_ID
, AST_INT_INCM_TDY_LCY
, AST_INT_INCM_YTD_FCY
, AST_INT_INCM_YTD_LCY
, AST_ADL_FTP_RATE_TDY
, AST_AUTO_ADJ_FTP_AMT_TDY_LCY
, AST_AUTO_ADJ_FTP_AMT_YTD_FCY
, AST_AUTO_ADJ_FTP_AMT_YTD_LCY
, AST_BSC_FTP_AMT_TDY_LCY
, AST_BSC_FTP_AMT_YTD_FCY
, AST_BSC_FTP_AMT_YTD_LCY
, AST_BSC_FTP_RATE_TDY
, AST_MNUL_ADJ_FTP_AMT_YTD_FCY
, AST_MNUL_ADJ_FTP_AMT_YTD_LCY
, TM_PRD_DIM_ID
, PDM_DIM_ID
, CLS_ON_BAL_AMT_LYR_FCY
, CLS_ON_BAL_AMT_LYR_LCY
, NBR_MAT_DT_CHG
, FTP_TERM_CODE_DIM_ID
, FTP_CD_TP_DIM_ID
, FTP_CD_CODE_DIM_ID
, CLS_ON_BAL_AMT_PREV_LCY
, CLS_ON_BAL_AMT_LMTH_LCY
, CLS_ON_BAL_AMT_LQTR_LCY
, AM_DIM_ID
, RM_DIM_ID
, TOT_AVL_AMT_LCY
, AST_MNUL_ADJ_FTP_AMT_TDY_LCY
, ADJ_INT_AMT_TDY_LCY
, ADJ_INT_AMT_YTD_FCY
, ADJ_INT_AMT_YTD_LCY
, AGRT_AST_INT_RATE_YTD
, SHD_PNP_PYMT_AMT_LCY
, AST_NML_INT_INCM_TDY_LCY
, AST_NML_INT_INCM_YTD_FCY
, AST_NML_INT_INCM_YTD_LCY
)
SELECT
		 DAY1.AR_ID 
		,DAY1.CR_RSK_RTG_DIM_ID 
		,DAY1.ACG_STC_GRP_DIM_ID 
		,DAY1.NXT_SHD_PNP_PYMT_DT_DIM_ID 
		,DAY1.NXT_PNP_PYMT_DT_DIM_ID 
		,DAY1.NXT_PNP_PYMT_DUE_DT_DIM_ID 
		,DAY1.NXT_INT_PYMT_DUE_DT_DIM_ID 
		,DAY1.NXT_SHD_INT_PYMT_DT_DIM_ID 
		,DAY1.NXT_INT_PYMT_DT_DIM_ID 
		,DAY1.CST_LIFE_CYC_ST_DIM_ID 
		,DAY1.CST_AST_BAL_SEG_DIM_ID 
		,DAY1.ACT_TM_TO_MAT_SEG_DIM_ID 
		,DAY1.AR_LCS_DT_DIM_ID 
		,NVL(DAY1.AST_ACR_PNY_INT_AMT_PTD_LCY,0)  AST_ACR_PNY_INT_AMT_PTD_LCY
		,DAY1.AR_OFCR_EMPE_DIM_ID 
		,NVL(ACR1.AST_ACR_INT_LTD_LCY,0)  AST_ACR_INT_LTD_LCY
		,DAY1.CR_LMT_SEG_DIM_ID 
		,DAY1.CST_MKT_SEG_DIM_ID 
		,DAY1.CST_SEG_DIM_ID 
		,DAY1.CST_OFCR_EMPE_DIM_ID 
		,DAY1.AR_DIM_ID 
		,DAY1.AR_FNC_ST_DIM_ID 
		,DAY1.AR_LCS_DIM_ID 
		,DAY1.AR_PPS_DIM_ID 
		,DAY1.AR_TP_DIM_ID 
		,NVL(DAY1.AST_ACR_INT_PTD_LCY,0)   AST_ACR_INT_PTD_LCY   
		,NVL(DAY2.AST_ACR_INT_TDY_LCY,0)   AST_ACR_INT_TDY_LCY
		,NVL(DAY1.AST_ACR_INT_YTD_FCY,0)   AST_ACR_INT_YTD_FCY
		,NVL(DAY1.AST_ACR_INT_YTD_LCY,0)   AST_ACR_INT_YTD_LCY   
		,NVL(DAY2.AST_ACR_PNY_INT_AMT_TDY_LCY,0)      AST_ACR_PNY_INT_AMT_TDY_LCY
		,NVL(DAY2.AST_ACR_PNY_INT_AMT_YTD_FCY,0)       AST_ACR_PNY_INT_AMT_YTD_FCY
		,NVL(DAY2.AST_ACR_PNY_INT_AMT_YTD_LCY,0)   AST_ACR_PNY_INT_AMT_YTD_LCY
		,NVL(DAY1.AST_ACT_INT_RATE_TDY ,0)            AST_ACT_INT_RATE_TDY
		,NVL(DAY2.AST_INT_PYMT_AMT_TDY_LCY,0)      AST_INT_PYMT_AMT_TDY_LCY
		,NVL(DAY1.AST_INT_PYMT_AMT_YTD_FCY,0)   AST_INT_PYMT_AMT_YTD_FCY
		,NVL(DAY1.AST_INT_PYMT_AMT_YTD_LCY,0)       AST_INT_PYMT_AMT_YTD_LCY
		,NVL(DAY1.BAL_ACG_STC_ITM_DIM_ID ,0)      BAL_ACG_STC_ITM_DIM_ID
		,NVL(DAY1.BAL_SHET_TP_DIM_ID ,0)           BAL_SHET_TP_DIM_ID
		,NVL(DAY1.CLS_BAL_AMT_TDY_LCY,0)           CLS_BAL_AMT_TDY_LCY
		,NVL(DAY1.CLS_ON_BAL_AMT_TDY_LCY,0)           CLS_ON_BAL_AMT_TDY_LCY
		,NVL(DAY1.CLS_LC_BAL_AMT_TDY_LCY,0)   CLS_LC_BAL_AMT_TDY_LCY
		,NVL(DAY1.CLS_BG_BAL_AMT_TDY_LCY,0)      CLS_BG_BAL_AMT_TDY_LCY
		,NVL(DAY1.CLS_BAL_AMT_TO_WRT_OFF_LCY,0)     CLS_BAL_AMT_TO_WRT_OFF_LCY
		,DAY1.CR_FCY_AR_DIM_ID 
		,DAY1.CCY_DIM_ID 
		,DAY1.CST_DIM_ID 
		,DAY1.CST_HIER_DIM_ID 
		,DAY1.CST_PERF_ST_DIM_ID 
		,DAY1.CST_TP_DIM_ID 
		,NVL(ACR1.DSBR_AMT_LTD_LCY,0)          DSBR_AMT_LTD_LCY
		,NVL(DAY1.DSBR_AMT_TDY_LCY,0)           DSBR_AMT_TDY_LCY
		,NVL(DAY1.DSBR_AMT_YTD_FCY,0)         DSBR_AMT_YTD_FCY
		,NVL(DAY1.DSBR_AMT_YTD_LCY,0)         DSBR_AMT_YTD_LCY
		,DAY1.IDY_SML_ID_DIM_ID 
		,DAY1.INT_RATE_SEG_DIM_ID 
		,NVL(DAY2.LAST_INT_PYMT_AMT_LCY,0)    LAST_INT_PYMT_AMT_LCY
		,DAY1.LAST_INT_PYMT_DT_DIM_ID 
		,NVL(DAY2.LAST_PNP_PYMT_AMT_LCY,0)     LAST_PNP_PYMT_AMT_LCY
		,DAY1.LAST_PNP_PYMT_DT_DIM_ID 
        ,NVL(DAY2.NXT_INT_PYMT_AMT_LCY,0)    NXT_INT_PYMT_AMT_LCY
        ,NVL(DAY2.NXT_PNP_PYMT_AMT_LCY,0)    NXT_PNP_PYMT_AMT_LCY
        ,NVL(DAY2.NBR_OF_INT_PYMT_SHD_CHG ,0)   NBR_OF_INT_PYMT_SHD_CHG
 		,NVL(DAY2.NBR_PYMT_SCH_CHG ,0)   NBR_PYMT_SCH_CHG
 		,NVL(DAY2.NBR_TERM_CHG ,0)  NBR_TERM_CHG
 		,NVL(DAY2.OFF_BAL_ACR_INT_PTD_LCY,0)    OFF_BAL_ACR_INT_PTD_LCY
 	    ,NVL(ACR1.OFF_BAL_INT_PYMT_AMT_LTD_LCY,0)   OFF_BAL_INT_PYMT_AMT_LTD_LCY
 		,NVL(DAY1.OFF_BAL_INT_PYMT_AMT_TDY_LCY,0)  OFF_BAL_INT_PYMT_AMT_TDY_LCY
 		,NVL(DAY1.OFF_BAL_INT_PYMT_AMT_YTD_FCY,0)   OFF_BAL_INT_PYMT_AMT_YTD_FCY
		,NVL(DAY1.OFF_BAL_INT_PYMT_AMT_YTD_LCY,0)   OFF_BAL_INT_PYMT_AMT_YTD_LCY
 		,NVL(ACR1.OFF_BAL_PNP_PYMT_AMT_LTD_LCY,0)   OFF_BAL_PNP_PYMT_AMT_LTD_LCY
 		,NVL(DAY1.OFF_BAL_PNP_PYMT_AMT_TDY_LCY,0)   OFF_BAL_PNP_PYMT_AMT_TDY_LCY
 		,NVL(DAY1.OFF_BAL_PNP_PYMT_AMT_YTD_FCY,0)   OFF_BAL_PNP_PYMT_AMT_YTD_FCY
		,NVL(DAY1.OFF_BAL_PNP_PYMT_AMT_YTD_LCY,0)   OFF_BAL_PNP_PYMT_AMT_YTD_LCY
		,DAY1.ORG_UNIT_DIM_ID 
		,DAY1.ORIG_TM_TO_MAT_SEG_DIM_ID 
		,NVL(DAY1.PAST_DUE_INT_NBR_OF_DYS ,0)    PAST_DUE_INT_NBR_OF_DYS
		,NVL(DAY1.PAST_DUE_PNP_NBR_OF_DYS ,0)    PAST_DUE_PNP_NBR_OF_DYS
		,NVL(DAY2.PNY_FEE_AMT_TDY_LCY,0)   PNY_FEE_AMT_TDY_LCY
		,NVL(DAY2.PNY_FEE_AMT_YTD_FCY,0)  PNY_FEE_AMT_YTD_FCY
		,NVL(DAY2.PNY_FEE_AMT_YTD_LCY,0)  PNY_FEE_AMT_YTD_LCY
		,NVL(ACR1.PNP_PYMT_AMT_LTD_LCY,0)  PNP_PYMT_AMT_LTD_LCY
		,NVL(DAY1.PNP_PYMT_AMT_TDY_LCY,0)  PNP_PYMT_AMT_TDY_LCY
		,NVL(DAY1.PNP_PYMT_AMT_YTD_FCY,0)   PNP_PYMT_AMT_YTD_FCY
		,NVL(DAY1.PNP_PYMT_AMT_YTD_LCY,0)  PNP_PYMT_AMT_YTD_LCY
		,DAY1.PD_DIM_ID 
		,DAY1.RMAN_TM_TO_MAT_SEG_DIM_ID 
		,DAY1.SCR_CVR_DIM_ID 
		,DAY1.SRC_STM_DIM_ID 
		,NVL(DAY1.TOT_LMT_AMT_LCY,0)    TOT_LMT_AMT_LCY
		,NVL(DAY2.TOT_OD_DB_AMT_LCY,0)  TOT_OD_DB_AMT_LCY
		,NVL(DAY1.TOT_PAST_DUE_INT_AMT_LCY,0)   TOT_PAST_DUE_INT_AMT_LCY
		,NVL(DAY1.TOT_PAST_DUE_PNP_AMT_LCY,0)  TOT_PAST_DUE_PNP_AMT_LCY
		,NVL(DAY1.TOT_WRT_OFF_AMT_LCY,0)  TOT_WRT_OFF_AMT_LCY
		,NVL(DAY1.BILL_INT_AMT_LCY,0)  BILL_INT_AMT_LCY
		,NVL(DAY1.BILL_LATE_CHRG_AMT_LCY,0)   BILL_LATE_CHRG_AMT_LCY
		,NVL(DAY1.BILL_PNP_AMT_LCY,0)        BILL_PNP_AMT_LCY
		,DAY1.AR_OFCR_CREATOR_DIM_ID 
		,DAY1.CST_OFCR_CREATOR_DIM_ID 
		,NVL(DAY1.AGRT_BAL_AMT_YTD_LCY,0)    AGRT_BAL_AMT_YTD_LCY
		,NVL(DAY1.AGRT_BAL_AMT_YTD_FCY,0)      AGRT_BAL_AMT_YTD_FCY
		,DAY1.CST_BRN_AST_BAL_SEG_DIM_ID 
		,DAY1.AR_CRT_DEPT_DIM_ID 
		,DAY1.AR_MGT_DEPT_DIM_ID 
		,DAY1.CST_CRT_DEPT_DIM_ID 
		,DAY1.CST_MGT_DEPT_DIM_ID 
		,NVL(DAY1.NBR_OF_DYS_YTD ,0)   NBR_OF_DYS_YTD
		,NVL(DAY1.AST_SCDY_ACR_INT_PTD_LCY,0)   AST_SCDY_ACR_INT_PTD_LCY
		,NVL(DAY2.ACR_INT_TO_OFF_BAL_PTD_LCY,0)  ACR_INT_TO_OFF_BAL_PTD_LCY
		,NVL(DAY2.TOT_HLD_AMT_LCY,0)   TOT_HLD_AMT_LCY
		,NVL(DAY2.CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY,0)  CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY
		,NVL(DAY1.TOT_CNTS_OD_DB_BSN_AMT_LCY,0)  TOT_CNTS_OD_DB_BSN_AMT_LCY
		,DAY1.CST_SEG_SME_DIM_ID 
     	,NVL(DAY1.EXG_RATE ,0)    EXG_RATE
		,NVL(DAY1.LMT_AMT_LCY,0)   LMT_AMT_LCY
		,DAY1.CST_ID 
		,NVL(DAY1.SUSP_ACR_INT_PTD_LCY,0)   SUSP_ACR_INT_PTD_LCY
		,DAY1.CST_PERF_CARD_ST_DIM_ID 
		,NVL(TNCP_DAY.AST_INT_INCM_TDY_LCY,0)   AST_INT_INCM_TDY_LCY
		,NVL(TNCP_ACR.AST_INT_INCM_YTD_FCY,0)   AST_INT_INCM_YTD_FCY
		,NVL(TNCP_ACR.AST_INT_INCM_YTD_LCY,0)  AST_INT_INCM_YTD_LCY
		,NVL(FTP_FCT_DAY.AST_ADL_FTP_RATE_TDY,0 )  AST_ADL_FTP_RATE_TDY
		,NVL(FTP_FCT_DAY.AST_AUTO_ADJ_FTP_AMT_TDY_LCY,0)  AST_AUTO_ADJ_FTP_AMT_TDY_LCY
		,NVL(FTP_FCT_DAY.AST_AUTO_ADJ_FTP_AMT_YTD_FCY,0)   AST_AUTO_ADJ_FTP_AMT_YTD_FCY
		,NVL(FTP_FCT_DAY.AST_AUTO_ADJ_FTP_AMT_YTD_LCY,0)  AST_AUTO_ADJ_FTP_AMT_YTD_LCY
		,NVL(FTP_FCT_DAY.AST_BSC_FTP_AMT_TDY_LCY,0)   AST_BSC_FTP_AMT_TDY_LCY
		,NVL(FTP_FCT_DAY.AST_BSC_FTP_AMT_YTD_FCY,0)   AST_BSC_FTP_AMT_YTD_FCY
		,NVL(FTP_FCT_DAY.AST_BSC_FTP_AMT_YTD_LCY,0)  AST_BSC_FTP_AMT_YTD_LCY
		,NVL(FTP_FCT_DAY.AST_BSC_FTP_RATE_TDY ,0)    AST_BSC_FTP_RATE_TDY
		,NVL(FTP_FCT_DAY.AST_MNUL_ADJ_FTP_AMT_YTD_FCY,0)  AST_MNUL_ADJ_FTP_AMT_YTD_FCY
		,NVL(FTP_FCT_DAY.AST_MNUL_ADJ_FTP_AMT_YTD_LCY,0)  AST_MNUL_ADJ_FTP_AMT_YTD_LCY
		,DAY1.TM_PRD_DIM_ID 
		,DAY1.PDM_DIM_ID 
		,NVL(DAY2.CLS_ON_BAL_AMT_LYR_FCY,0)  CLS_ON_BAL_AMT_LYR_FCY
		,NVL(DAY2.CLS_ON_BAL_AMT_LYR_LCY,0 )  CLS_ON_BAL_AMT_LYR_LCY
				, NVL(NBR_MAT_DT_CHG, 0)  NBR_MAT_DT_CHG
		, FTP_TERM_CODE_DIM_ID
		, FTP_CD_TP_DIM_ID
		, FTP_CD_CODE_DIM_ID
		, NVL(CLS_ON_BAL_AMT_PREV_LCY, 0)  CLS_ON_BAL_AMT_PREV_LCY
		, NVL(CLS_ON_BAL_AMT_LMTH_LCY, 0)  CLS_ON_BAL_AMT_LMTH_LCY
		, NVL(CLS_ON_BAL_AMT_LQTR_LCY, 0)  CLS_ON_BAL_AMT_LQTR_LCY
		, DAY1.AM_DIM_ID
		, DAY1.RM_DIM_ID
		, NVL(TOT_AVL_AMT_LCY, 0)  TOT_AVL_AMT_LCY
		, NVL(AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0)  AST_MNUL_ADJ_FTP_AMT_TDY_LCY
		, NVL(ADJ_INT_AMT_TDY_LCY, 0)  ADJ_INT_AMT_TDY_LCY
		, NVL(ADJ_INT_AMT_YTD_FCY, 0)  ADJ_INT_AMT_YTD_FCY
		, NVL(ADJ_INT_AMT_YTD_LCY, 0)  ADJ_INT_AMT_YTD_LCY
		, NVL(AGRT_AST_INT_RATE_YTD, 0) AGRT_AST_INT_RATE_YTD
						,NVL(DAY2.SHD_PNP_PYMT_AMT_LCY,0) SHD_PNP_PYMT_AMT_LCY
		,NVL(DAY1.AST_NML_INT_INCM_TDY_LCY,0)   AST_NML_INT_INCM_TDY_LCY
		,NVL(DAY1.AST_NML_INT_INCM_YTD_FCY,0)   AST_NML_INT_INCM_YTD_FCY
		,NVL(DAY1.AST_NML_INT_INCM_YTD_LCY,0)   AST_NML_INT_INCM_YTD_LCY
		  FROM ADMIN.AST_AR_ANL_FCT_DAY_1_DAILY DAY1
LEFT JOIN ADMIN.AST_AR_ANL_FCT_DAY_2_DAILY DAY2 ON DAY1.AR_DIM_ID = DAY2.AR_DIM_ID
	AND DAY1.TM_PRD_DIM_ID = DAY2.TM_PRD_DIM_ID AND DAY2.TM_PRD_DIM_ID <> 999999
LEFT JOIN ADMIN.AST_AR_ANL_FCT_ACR_1_DAILY ACR1 ON DAY1.AR_DIM_ID = ACR1.AR_DIM_ID
	AND DAY1.TM_PRD_DIM_ID = ACR1.TM_PRD_DIM_ID AND ACR1.TM_PRD_DIM_ID <> 999999
LEFT JOIN ADMIN.AST_AR_ANL_FCT_TNCP_DAY_DAILY TNCP_DAY ON TNCP_DAY.AR_DIM_ID = DAY1.AR_DIM_ID
	AND DAY1.TM_PRD_DIM_ID = TNCP_DAY.TM_PRD_DIM_ID AND TNCP_DAY.TM_PRD_DIM_ID <> 999999
LEFT JOIN ADMIN.AST_AR_ANL_FCT_TNCP_ACR_DAILY TNCP_ACR ON TNCP_ACR.AR_DIM_ID = DAY1.AR_DIM_ID
	AND DAY1.TM_PRD_DIM_ID = TNCP_ACR.TM_PRD_DIM_ID AND TNCP_ACR.TM_PRD_DIM_ID <> 999999
LEFT JOIN ADMIN.AST_AR_ANL_FTP_FCT_DAY_DAILY FTP_FCT_DAY ON FTP_FCT_DAY.AR_DIM_ID = DAY1.AR_DIM_ID
	AND DAY1.TM_PRD_DIM_ID = FTP_FCT_DAY.TM_PRD_DIM_ID AND FTP_FCT_DAY.TM_PRD_DIM_ID <> 999999
where DAY1.TM_PRD_DIM_ID <> 999999;

DELETE FROM AST_AR_ANL_FCT_FULL_QHDMT WHERE TM_PRD_DIM_ID  = (SELECT PARAM_VALUE FROM CSTB_SYSTEM WHERE PARAM_NAME = 'ETL_DATE');

INSERT INTO DMMIS.ADMIN.AST_AR_ANL_FCT_FULL_QHDMT (AR_ID
       , CR_RSK_RTG_DIM_ID
       , ACG_STC_GRP_DIM_ID
       , NXT_SHD_PNP_PYMT_DT_DIM_ID
       , NXT_PNP_PYMT_DT_DIM_ID
       , NXT_PNP_PYMT_DUE_DT_DIM_ID
       , NXT_INT_PYMT_DUE_DT_DIM_ID
       , NXT_SHD_INT_PYMT_DT_DIM_ID
       , NXT_INT_PYMT_DT_DIM_ID
       , CST_LIFE_CYC_ST_DIM_ID
       , CST_AST_BAL_SEG_DIM_ID
       , ACT_TM_TO_MAT_SEG_DIM_ID
       , AR_LCS_DT_DIM_ID
       , AST_ACR_PNY_INT_AMT_PTD_LCY
       , AR_OFCR_EMPE_DIM_ID
       , AST_ACR_INT_LTD_LCY
       , CR_LMT_SEG_DIM_ID
       , CST_MKT_SEG_DIM_ID
       , CST_SEG_DIM_ID
       , CST_OFCR_EMPE_DIM_ID
       , AR_DIM_ID
       , AR_FNC_ST_DIM_ID
       , AR_LCS_DIM_ID
       , AR_PPS_DIM_ID
       , AR_TP_DIM_ID
       , AST_ACR_INT_PTD_LCY
       , AST_ACR_INT_TDY_LCY
       , AST_ACR_INT_YTD_FCY
       , AST_ACR_INT_YTD_LCY
       , AST_ACR_PNY_INT_AMT_TDY_LCY
       , AST_ACR_PNY_INT_AMT_YTD_FCY
       , AST_ACR_PNY_INT_AMT_YTD_LCY
       , AST_ACT_INT_RATE_TDY
       , AST_INT_PYMT_AMT_TDY_LCY
       , AST_INT_PYMT_AMT_YTD_FCY
       , AST_INT_PYMT_AMT_YTD_LCY
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_SHET_TP_DIM_ID
       , CLS_BAL_AMT_TDY_LCY
       , CLS_ON_BAL_AMT_TDY_LCY
       , CLS_LC_BAL_AMT_TDY_LCY
       , CLS_BG_BAL_AMT_TDY_LCY
       , CLS_BAL_AMT_TO_WRT_OFF_LCY
       , CR_FCY_AR_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , CST_HIER_DIM_ID
       , CST_PERF_ST_DIM_ID
       , CST_TP_DIM_ID
       , DSBR_AMT_LTD_LCY
       , DSBR_AMT_TDY_LCY
       , DSBR_AMT_YTD_FCY
       , DSBR_AMT_YTD_LCY
       , IDY_SML_ID_DIM_ID
       , INT_RATE_SEG_DIM_ID
       , LAST_INT_PYMT_AMT_LCY
       , LAST_INT_PYMT_DT_DIM_ID
       , LAST_PNP_PYMT_AMT_LCY
       , LAST_PNP_PYMT_DT_DIM_ID
       , NXT_INT_PYMT_AMT_LCY
       , NXT_PNP_PYMT_AMT_LCY
       , NBR_OF_INT_PYMT_SHD_CHG
       , NBR_PYMT_SCH_CHG
       , NBR_TERM_CHG
       , OFF_BAL_ACR_INT_PTD_LCY
       , OFF_BAL_INT_PYMT_AMT_LTD_LCY
       , OFF_BAL_INT_PYMT_AMT_TDY_LCY
       , OFF_BAL_INT_PYMT_AMT_YTD_FCY
       , OFF_BAL_INT_PYMT_AMT_YTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_LTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_TDY_LCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_LCY
       , ORG_UNIT_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , PAST_DUE_INT_NBR_OF_DYS
       , PAST_DUE_PNP_NBR_OF_DYS
       , PNY_FEE_AMT_TDY_LCY
       , PNY_FEE_AMT_YTD_FCY
       , PNY_FEE_AMT_YTD_LCY
       , PNP_PYMT_AMT_LTD_LCY
       , PNP_PYMT_AMT_TDY_LCY
       , PNP_PYMT_AMT_YTD_FCY
       , PNP_PYMT_AMT_YTD_LCY
       , PD_DIM_ID
       , RMAN_TM_TO_MAT_SEG_DIM_ID
       , SCR_CVR_DIM_ID
       , SRC_STM_DIM_ID
       , TOT_LMT_AMT_LCY
       , TOT_OD_DB_AMT_LCY
       , TOT_PAST_DUE_INT_AMT_LCY
       , TOT_PAST_DUE_PNP_AMT_LCY
       , TOT_WRT_OFF_AMT_LCY
       , BILL_INT_AMT_LCY
       , BILL_LATE_CHRG_AMT_LCY
       , BILL_PNP_AMT_LCY
       , AR_OFCR_CREATOR_DIM_ID
       , CST_OFCR_CREATOR_DIM_ID
       , AGRT_BAL_AMT_YTD_LCY
       , AGRT_BAL_AMT_YTD_FCY
       , CST_BRN_AST_BAL_SEG_DIM_ID
       , AR_CRT_DEPT_DIM_ID
       , AR_MGT_DEPT_DIM_ID
       , CST_CRT_DEPT_DIM_ID
       , CST_MGT_DEPT_DIM_ID
       , NBR_OF_DYS_YTD
       , AST_SCDY_ACR_INT_PTD_LCY
       , ACR_INT_TO_OFF_BAL_PTD_LCY
       , TOT_HLD_AMT_LCY
       , CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY
       , TOT_CNTS_OD_DB_BSN_AMT_LCY
       , CST_SEG_SME_DIM_ID
       , EXG_RATE
       , LMT_AMT_LCY
       , CST_ID
       , SUSP_ACR_INT_PTD_LCY
       , CST_PERF_CARD_ST_DIM_ID
       , AST_INT_INCM_TDY_LCY
       , AST_INT_INCM_YTD_FCY
       , AST_INT_INCM_YTD_LCY
       , AST_ADL_FTP_RATE_TDY
       , AST_AUTO_ADJ_FTP_AMT_TDY_LCY
       , AST_AUTO_ADJ_FTP_AMT_YTD_FCY
       , AST_AUTO_ADJ_FTP_AMT_YTD_LCY
       , AST_BSC_FTP_AMT_TDY_LCY
       , AST_BSC_FTP_AMT_YTD_FCY
       , AST_BSC_FTP_AMT_YTD_LCY
       , AST_BSC_FTP_RATE_TDY
       , AST_MNUL_ADJ_FTP_AMT_YTD_FCY
       , AST_MNUL_ADJ_FTP_AMT_YTD_LCY
       , TM_PRD_DIM_ID
       , PDM_DIM_ID
       , CLS_ON_BAL_AMT_LYR_FCY
       , CLS_ON_BAL_AMT_LYR_LCY
       , NBR_MAT_DT_CHG
       , FTP_TERM_CODE_DIM_ID
       , FTP_CD_TP_DIM_ID
       , FTP_CD_CODE_DIM_ID
       , CLS_ON_BAL_AMT_PREV_LCY
       , CLS_ON_BAL_AMT_LMTH_LCY
       , CLS_ON_BAL_AMT_LQTR_LCY
       , AM_DIM_ID
       , RM_DIM_ID
       , TOT_AVL_AMT_LCY
       , AST_MNUL_ADJ_FTP_AMT_TDY_LCY
       , ADJ_INT_AMT_TDY_LCY
       , ADJ_INT_AMT_YTD_FCY
       , ADJ_INT_AMT_YTD_LCY
       , AGRT_AST_INT_RATE_YTD
       , SHD_PNP_PYMT_AMT_LCY
       , AST_NML_INT_INCM_TDY_LCY
       , AST_NML_INT_INCM_YTD_FCY
       , AST_NML_INT_INCM_YTD_LCY
) 
SELECT AR_ID
       , CR_RSK_RTG_DIM_ID
       , ACG_STC_GRP_DIM_ID
       , NXT_SHD_PNP_PYMT_DT_DIM_ID
       , NXT_PNP_PYMT_DT_DIM_ID
       , NXT_PNP_PYMT_DUE_DT_DIM_ID
       , NXT_INT_PYMT_DUE_DT_DIM_ID
       , NXT_SHD_INT_PYMT_DT_DIM_ID
       , NXT_INT_PYMT_DT_DIM_ID
       , CST_LIFE_CYC_ST_DIM_ID
       , CST_AST_BAL_SEG_DIM_ID
       , ACT_TM_TO_MAT_SEG_DIM_ID
       , AR_LCS_DT_DIM_ID
       , AST_ACR_PNY_INT_AMT_PTD_LCY
       , AR_OFCR_EMPE_DIM_ID
       , AST_ACR_INT_LTD_LCY
       , CR_LMT_SEG_DIM_ID
       , CST_MKT_SEG_DIM_ID
       , CST_SEG_DIM_ID
       , CST_OFCR_EMPE_DIM_ID
       , AR_DIM_ID
       , AR_FNC_ST_DIM_ID
       , AR_LCS_DIM_ID
       , AR_PPS_DIM_ID
       , AR_TP_DIM_ID
       , AST_ACR_INT_PTD_LCY
       , AST_ACR_INT_TDY_LCY
       , AST_ACR_INT_YTD_FCY
       , AST_ACR_INT_YTD_LCY
       , AST_ACR_PNY_INT_AMT_TDY_LCY
       , AST_ACR_PNY_INT_AMT_YTD_FCY
       , AST_ACR_PNY_INT_AMT_YTD_LCY
       , AST_ACT_INT_RATE_TDY
       , AST_INT_PYMT_AMT_TDY_LCY
       , AST_INT_PYMT_AMT_YTD_FCY
       , AST_INT_PYMT_AMT_YTD_LCY
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_SHET_TP_DIM_ID
       , CLS_BAL_AMT_TDY_LCY
       , CLS_ON_BAL_AMT_TDY_LCY
       , CLS_LC_BAL_AMT_TDY_LCY
       , CLS_BG_BAL_AMT_TDY_LCY
       , CLS_BAL_AMT_TO_WRT_OFF_LCY
       , CR_FCY_AR_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , CST_HIER_DIM_ID
       , CST_PERF_ST_DIM_ID
       , CST_TP_DIM_ID
       , DSBR_AMT_LTD_LCY
       , DSBR_AMT_TDY_LCY
       , DSBR_AMT_YTD_FCY
       , DSBR_AMT_YTD_LCY
       , IDY_SML_ID_DIM_ID
       , INT_RATE_SEG_DIM_ID
       , LAST_INT_PYMT_AMT_LCY
       , LAST_INT_PYMT_DT_DIM_ID
       , LAST_PNP_PYMT_AMT_LCY
       , LAST_PNP_PYMT_DT_DIM_ID
       , NXT_INT_PYMT_AMT_LCY
       , NXT_PNP_PYMT_AMT_LCY
       , NBR_OF_INT_PYMT_SHD_CHG
       , NBR_PYMT_SCH_CHG
       , NBR_TERM_CHG
       , OFF_BAL_ACR_INT_PTD_LCY
       , OFF_BAL_INT_PYMT_AMT_LTD_LCY
       , OFF_BAL_INT_PYMT_AMT_TDY_LCY
       , OFF_BAL_INT_PYMT_AMT_YTD_FCY
       , OFF_BAL_INT_PYMT_AMT_YTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_LTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_TDY_LCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_LCY
       , ORG_UNIT_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , PAST_DUE_INT_NBR_OF_DYS
       , PAST_DUE_PNP_NBR_OF_DYS
       , PNY_FEE_AMT_TDY_LCY
       , PNY_FEE_AMT_YTD_FCY
       , PNY_FEE_AMT_YTD_LCY
       , PNP_PYMT_AMT_LTD_LCY
       , PNP_PYMT_AMT_TDY_LCY
       , PNP_PYMT_AMT_YTD_FCY
       , PNP_PYMT_AMT_YTD_LCY
       , PD_DIM_ID
       , RMAN_TM_TO_MAT_SEG_DIM_ID
       , SCR_CVR_DIM_ID
       , SRC_STM_DIM_ID
       , TOT_LMT_AMT_LCY
       , TOT_OD_DB_AMT_LCY
       , TOT_PAST_DUE_INT_AMT_LCY
       , TOT_PAST_DUE_PNP_AMT_LCY
       , TOT_WRT_OFF_AMT_LCY
       , BILL_INT_AMT_LCY
       , BILL_LATE_CHRG_AMT_LCY
       , BILL_PNP_AMT_LCY
       , AR_OFCR_CREATOR_DIM_ID
       , CST_OFCR_CREATOR_DIM_ID
       , AGRT_BAL_AMT_YTD_LCY
       , AGRT_BAL_AMT_YTD_FCY
       , CST_BRN_AST_BAL_SEG_DIM_ID
       , AR_CRT_DEPT_DIM_ID
       , AR_MGT_DEPT_DIM_ID
       , CST_CRT_DEPT_DIM_ID
       , CST_MGT_DEPT_DIM_ID
       , NBR_OF_DYS_YTD
       , AST_SCDY_ACR_INT_PTD_LCY
       , ACR_INT_TO_OFF_BAL_PTD_LCY
       , TOT_HLD_AMT_LCY
       , CLS_BAL_FRST_DAY_OVERDAFT_BSN_LCY
       , TOT_CNTS_OD_DB_BSN_AMT_LCY
       , CST_SEG_SME_DIM_ID
       , EXG_RATE
       , LMT_AMT_LCY
       , CST_ID
       , SUSP_ACR_INT_PTD_LCY
       , CST_PERF_CARD_ST_DIM_ID
       , AST_INT_INCM_TDY_LCY
       , AST_INT_INCM_YTD_FCY
       , AST_INT_INCM_YTD_LCY
       , AST_ADL_FTP_RATE_TDY
       , AST_AUTO_ADJ_FTP_AMT_TDY_LCY
       , AST_AUTO_ADJ_FTP_AMT_YTD_FCY
       , AST_AUTO_ADJ_FTP_AMT_YTD_LCY
       , AST_BSC_FTP_AMT_TDY_LCY
       , AST_BSC_FTP_AMT_YTD_FCY
       , AST_BSC_FTP_AMT_YTD_LCY
       , AST_BSC_FTP_RATE_TDY
       , AST_MNUL_ADJ_FTP_AMT_YTD_FCY
       , AST_MNUL_ADJ_FTP_AMT_YTD_LCY
       , TM_PRD_DIM_ID
       , PDM_DIM_ID
       , CLS_ON_BAL_AMT_LYR_FCY
       , CLS_ON_BAL_AMT_LYR_LCY
       , NBR_MAT_DT_CHG
       , FTP_TERM_CODE_DIM_ID
       , FTP_CD_TP_DIM_ID
       , FTP_CD_CODE_DIM_ID
       , CLS_ON_BAL_AMT_PREV_LCY
       , CLS_ON_BAL_AMT_LMTH_LCY
       , CLS_ON_BAL_AMT_LQTR_LCY
       , AM_DIM_ID
       , RM_DIM_ID
       , TOT_AVL_AMT_LCY
       , AST_MNUL_ADJ_FTP_AMT_TDY_LCY
       , ADJ_INT_AMT_TDY_LCY
       , ADJ_INT_AMT_YTD_FCY
       , ADJ_INT_AMT_YTD_LCY
       , AGRT_AST_INT_RATE_YTD
       , SHD_PNP_PYMT_AMT_LCY
       , AST_NML_INT_INCM_TDY_LCY
       , AST_NML_INT_INCM_YTD_FCY
       , AST_NML_INT_INCM_YTD_LCY
	FROM DMMIS.ADMIN.AST_AR_ANL_FCT_FULL_QHDMT_DAILY;
