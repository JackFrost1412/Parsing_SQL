delete from AR_ANL_FCT_FULL_KHTC where tm_prd_dim_id = (select param_value from cstb_system where param_name = 'ETL_DATE');

insert into AR_ANL_FCT_FULL_KHTC
(
TM_PRD_DIM_ID
, PD_DIM_ID
, SRC_STM_DIM_ID
, AR_TP_DIM_ID
, CCY_DIM_ID
, CST_TP_DIM_ID
, ORG_UNIT_DIM_ID
, BAL_ACG_STC_ITM_DIM_ID
, ACG_STC_GRP_DIM_ID
, CST_DIM_ID
, IDY_SML_ID_DIM_ID
, CST_HIER_DIM_ID
, CST_PERF_ST_DIM_ID
, CST_MKT_SEG_DIM_ID
, CST_SEG_DIM_ID
, CST_SEG_SME_DIM_ID
, CST_LIFE_CYC_ST_DIM_ID
, CR_RSK_RTG_DIM_ID
, CST_AST_BAL_SEG_DIM_ID
, CST_LBY_BAL_SEG_DIM_ID
, CST_BRN_AST_BAL_SEG_DIM_ID
, CST_BRN_LBY_BAL_SEG_DIM_ID
, AR_FNC_ST_DIM_ID
, INT_RATE_SEG_DIM_ID
, AR_DIM_ID
, AR_PPS_DIM_ID
, AR_BAL_SEG_DIM_ID
, AR_LCS_DIM_ID
, RMAN_TM_TO_MAT_SEG_DIM_ID
, ORIG_TM_TO_MAT_SEG_DIM_ID
, ACT_TM_TO_MAT_SEG_DIM_ID
, AR_OFCR_EMPE_DIM_ID
, AR_MGT_DEPT_DIM_ID
, CST_OFCR_EMPE_DIM_ID
, CST_MGT_DEPT_DIM_ID
, AR_CRT_DEPT_DIM_ID
, CST_CRT_DEPT_DIM_ID
, CLS_BAL_AMT_TDY_FCY
, CLS_BAL_AMT_TDY_LCY
, CLS_ON_BAL_AMT_TDY_FCY
, CLS_ON_BAL_AMT_TDY_LCY
, CLS_ON_BAL_AMT_LAST_DAY_FCY
, CLS_ON_BAL_AMT_LAST_DAY_LCY
, CLS_ON_BAL_AMT_LMTH_FCY
, CLS_ON_BAL_AMT_LMTH_LCY
, CLS_ON_BAL_AMT_LQTR_FCY
, CLS_ON_BAL_AMT_LQTR_LCY
, CLS_ON_BAL_AMT_LYR_FCY
, CLS_ON_BAL_AMT_LYR_LCY
, TOT_PAST_DUE_PNP_AMT_FCY
, TOT_PAST_DUE_PNP_AMT_LCY
, AGRT_BAL_AMT_HTD_LCY
, AGRT_BAL_AMT_MTD_LCY
, AGRT_BAL_AMT_QTD_LCY
, AGRT_BAL_AMT_YTD_LCY
, AGRT_BAL_AMT_HTD_FCY
, AGRT_BAL_AMT_MTD_FCY
, AGRT_BAL_AMT_QTD_FCY
, AGRT_BAL_AMT_YTD_FCY
, NBR_OF_DYS_HTD
, NBR_OF_DYS_MTD
, NBR_OF_DYS_QTD
, NBR_OF_DYS_YTD
, ACT_INT_RATE_TDY
, BSC_FTP_RATE_TDY
, ADL_FTP_RATE_TDY
, AGRT_INT_RATE_HTD
, AGRT_INT_RATE_MTD
, AGRT_INT_RATE_QTD
, AGRT_INT_RATE_YTD
, AGRT_BSC_FTP_RATE_HTD
, AGRT_BSC_FTP_RATE_MTD
, AGRT_BSC_FTP_RATE_QTD
, AGRT_BSC_FTP_RATE_YTD
, AGRT_ADL_FTP_RATE_HTD
, AGRT_ADL_FTP_RATE_MTD
, AGRT_ADL_FTP_RATE_QTD
, AGRT_ADL_FTP_RATE_YTD
, AGRT_NIM_BAL_AMT_TDY_LCY
, AGRT_NIM_BAL_AMT_HTD_LCY
, AGRT_NIM_BAL_AMT_MTD_LCY
, AGRT_NIM_BAL_AMT_QTD_LCY
, AGRT_NIM_BAL_AMT_YTD_LCY
, AST_INT_PYMT_AMT_MTD_FCY
, AST_INT_PYMT_AMT_MTD_LCY
, AST_INT_PYMT_AMT_QTD_FCY
, AST_INT_PYMT_AMT_QTD_LCY
, AST_INT_PYMT_AMT_TDY_FCY
, AST_INT_PYMT_AMT_TDY_LCY
, AST_INT_PYMT_AMT_YTD_FCY
, AST_INT_PYMT_AMT_YTD_LCY
, DSBR_AMT_MTD_FCY
, DSBR_AMT_MTD_LCY
, DSBR_AMT_QTD_FCY
, DSBR_AMT_QTD_LCY
, DSBR_AMT_TDY_FCY
, DSBR_AMT_TDY_LCY
, DSBR_AMT_YTD_FCY
, DSBR_AMT_YTD_LCY
, PNP_PYMT_AMT_MTD_FCY
, PNP_PYMT_AMT_MTD_LCY
, PNP_PYMT_AMT_QTD_FCY
, PNP_PYMT_AMT_QTD_LCY
, PNP_PYMT_AMT_TDY_FCY
, PNP_PYMT_AMT_TDY_LCY
, PNP_PYMT_AMT_YTD_FCY
, PNP_PYMT_AMT_YTD_LCY
, CR_AMT_MTD_FCY
, CR_AMT_MTD_LCY
, CR_AMT_QTD_FCY
, CR_AMT_QTD_LCY
, CR_AMT_TDY_FCY
, CR_AMT_TDY_LCY
, CR_AMT_YTD_FCY
, CR_AMT_YTD_LCY
, DB_AMT_MTD_FCY
, DB_AMT_MTD_LCY
, DB_AMT_QTD_FCY
, DB_AMT_QTD_LCY
, DB_AMT_TDY_FCY
, DB_AMT_TDY_LCY
, DB_AMT_YTD_FCY
, DB_AMT_YTD_LCY
, AR_ID
, CST_ID
, PAST_DUE_INT_NBR_OF_DYS
, PAST_DUE_PNP_NBR_OF_DYS
, ACR_INT_MTD_FCY
, ACR_INT_MTD_LCY
, ACR_INT_QTD_FCY
, ACR_INT_QTD_LCY
, ACR_INT_TDY_FCY
, ACR_INT_TDY_LCY
, ACR_INT_YTD_FCY
, ACR_INT_YTD_LCY
, ACR_PNY_INT_MTD_FCY
, ACR_PNY_INT_MTD_LCY
, ACR_PNY_INT_QTD_FCY
, ACR_PNY_INT_QTD_LCY
, ACR_PNY_INT_TDY_FCY
, ACR_PNY_INT_TDY_LCY
, ACR_PNY_INT_YTD_FCY
, ACR_PNY_INT_YTD_LCY
, BSC_FTP_AMT_MTD_FCY
, BSC_FTP_AMT_MTD_LCY
, BSC_FTP_AMT_QTD_FCY
, BSC_FTP_AMT_QTD_LCY
, BSC_FTP_AMT_TDY_FCY
, BSC_FTP_AMT_TDY_LCY
, BSC_FTP_AMT_YTD_FCY
, BSC_FTP_AMT_YTD_LCY
, AUTO_ADJ_FTP_AMT_MTD_FCY
, AUTO_ADJ_FTP_AMT_MTD_LCY
, AUTO_ADJ_FTP_AMT_QTD_FCY
, AUTO_ADJ_FTP_AMT_QTD_LCY
, AUTO_ADJ_FTP_AMT_TDY_FCY
, AUTO_ADJ_FTP_AMT_TDY_LCY
, AUTO_ADJ_FTP_AMT_YTD_FCY
, AUTO_ADJ_FTP_AMT_YTD_LCY
, LBY_PNY_FTP_AMT_MTD_FCY
, LBY_PNY_FTP_AMT_MTD_LCY
, LBY_PNY_FTP_AMT_QTD_FCY
, LBY_PNY_FTP_AMT_QTD_LCY
, LBY_PNY_FTP_AMT_TDY_FCY
, LBY_PNY_FTP_AMT_TDY_LCY
, LBY_PNY_FTP_AMT_YTD_FCY
, LBY_PNY_FTP_AMT_YTD_LCY
, NML_INT_INCM_MTD_FCY
, NML_INT_INCM_MTD_LCY
, NML_INT_INCM_QTD_FCY
, NML_INT_INCM_QTD_LCY
, NML_INT_INCM_TDY_FCY
, NML_INT_INCM_TDY_LCY
, NML_INT_INCM_YTD_FCY
, NML_INT_INCM_YTD_LCY
, INT_INCM_MTD_FCY
, INT_INCM_MTD_LCY
, INT_INCM_QTD_FCY
, INT_INCM_QTD_LCY
, INT_INCM_YTD_FCY
, INT_INCM_YTD_LCY
, INT_INCM_TDY_FCY
, INT_INCM_TDY_LCY
, LBY_INT_AMT_MTD_FCY
, LBY_INT_AMT_MTD_LCY
, LBY_INT_AMT_QTD_FCY
, LBY_INT_AMT_QTD_LCY
, LBY_INT_AMT_TDY_FCY
, LBY_INT_AMT_TDY_LCY
, LBY_INT_AMT_YTD_FCY
, LBY_INT_AMT_YTD_LCY
, ACR_INT_PTD_FCY
, ACR_INT_PTD_LCY
, ACR_PNY_INT_PTD_FCY
, ACR_PNY_INT_PTD_LCY
, TOT_PAST_DUE_INT_AMT_FCY
, TOT_PAST_DUE_INT_AMT_LCY
, TOT_LMT_AMT_FCY
, TOT_LMT_AMT_LCY
, RPT_EXG_RATE
, TOT_NET_INCM_SEG_DIM_ID
, AM_DIM_ID
, RM_DIM_ID
, PDM_DIM_ID
)
select  T.TM_PRD_DIM_ID
, T.PD_DIM_ID
, T.SRC_STM_DIM_ID
, T.AR_TP_DIM_ID
, T.CCY_DIM_ID
, T.CST_TP_DIM_ID
, T.ORG_UNIT_DIM_ID
, T.BAL_ACG_STC_ITM_DIM_ID
, T.ACG_STC_GRP_DIM_ID
, T.CST_DIM_ID
, T.IDY_SML_ID_DIM_ID
, T.CST_HIER_DIM_ID
, T.CST_PERF_ST_DIM_ID
, T.CST_MKT_SEG_DIM_ID
, T.CST_SEG_DIM_ID
, T.CST_SEG_SME_DIM_ID
, T.CST_LIFE_CYC_ST_DIM_ID
, T.CR_RSK_RTG_DIM_ID
, T.CST_AST_BAL_SEG_DIM_ID
, T.CST_LBY_BAL_SEG_DIM_ID
, T.CST_BRN_AST_BAL_SEG_DIM_ID
, T.CST_BRN_LBY_BAL_SEG_DIM_ID
, T.AR_FNC_ST_DIM_ID
, T.INT_RATE_SEG_DIM_ID
, T.AR_DIM_ID
, T.AR_PPS_DIM_ID
, T.AR_BAL_SEG_DIM_ID
, T.AR_LCS_DIM_ID
, T.RMAN_TM_TO_MAT_SEG_DIM_ID
, T.ORIG_TM_TO_MAT_SEG_DIM_ID
, T.ACT_TM_TO_MAT_SEG_DIM_ID
, T.AR_OFCR_EMPE_DIM_ID
, T.AR_MGT_DEPT_DIM_ID
, T.CST_OFCR_EMPE_DIM_ID
, T.CST_MGT_DEPT_DIM_ID
, T.AR_CRT_DEPT_DIM_ID
, T.CST_CRT_DEPT_DIM_ID
, T.CLS_BAL_AMT_TDY_FCY
, T.CLS_BAL_AMT_TDY_LCY
, T.CLS_ON_BAL_AMT_TDY_FCY
, T.CLS_ON_BAL_AMT_TDY_LCY
, T.CLS_ON_BAL_AMT_LAST_DAY_FCY
, T.CLS_ON_BAL_AMT_LAST_DAY_LCY
, T.CLS_ON_BAL_AMT_LMTH_FCY
, T.CLS_ON_BAL_AMT_LMTH_LCY
, T.CLS_ON_BAL_AMT_LQTR_FCY
, T.CLS_ON_BAL_AMT_LQTR_LCY
, T.CLS_ON_BAL_AMT_LYR_FCY
, T.CLS_ON_BAL_AMT_LYR_LCY
, T.TOT_PAST_DUE_PNP_AMT_FCY
, T.TOT_PAST_DUE_PNP_AMT_LCY
, T.AGRT_BAL_AMT_HTD_LCY
, T.AGRT_BAL_AMT_MTD_LCY
, T.AGRT_BAL_AMT_QTD_LCY
, T.AGRT_BAL_AMT_YTD_LCY
, T.AGRT_BAL_AMT_HTD_FCY
, T.AGRT_BAL_AMT_MTD_FCY
, T.AGRT_BAL_AMT_QTD_FCY
, T.AGRT_BAL_AMT_YTD_FCY
, T.NBR_OF_DYS_HTD
, T.NBR_OF_DYS_MTD
, T.NBR_OF_DYS_QTD
, T.NBR_OF_DYS_YTD
, T.ACT_INT_RATE_TDY
, T.BSC_FTP_RATE_TDY
, T.ADL_FTP_RATE_TDY
, T.AGRT_INT_RATE_HTD
, T.AGRT_INT_RATE_MTD
, T.AGRT_INT_RATE_QTD
, T.AGRT_INT_RATE_YTD
, T.AGRT_BSC_FTP_RATE_HTD
, T.AGRT_BSC_FTP_RATE_MTD
, T.AGRT_BSC_FTP_RATE_QTD
, T.AGRT_BSC_FTP_RATE_YTD
, T.AGRT_ADL_FTP_RATE_HTD
, T.AGRT_ADL_FTP_RATE_MTD
, T.AGRT_ADL_FTP_RATE_QTD
, T.AGRT_ADL_FTP_RATE_YTD
, T.AGRT_NIM_BAL_AMT_TDY_LCY
, T.AGRT_NIM_BAL_AMT_HTD_LCY
, T.AGRT_NIM_BAL_AMT_MTD_LCY
, T.AGRT_NIM_BAL_AMT_QTD_LCY
, T.AGRT_NIM_BAL_AMT_YTD_LCY
, T.AST_INT_PYMT_AMT_MTD_FCY
, T.AST_INT_PYMT_AMT_MTD_LCY
, T.AST_INT_PYMT_AMT_QTD_FCY
, T.AST_INT_PYMT_AMT_QTD_LCY
, T.AST_INT_PYMT_AMT_TDY_FCY
, T.AST_INT_PYMT_AMT_TDY_LCY
, T.AST_INT_PYMT_AMT_YTD_FCY
, T.AST_INT_PYMT_AMT_YTD_LCY
, T.DSBR_AMT_MTD_FCY
, T.DSBR_AMT_MTD_LCY
, T.DSBR_AMT_QTD_FCY
, T.DSBR_AMT_QTD_LCY
, T.DSBR_AMT_TDY_FCY
, T.DSBR_AMT_TDY_LCY
, T.DSBR_AMT_YTD_FCY
, T.DSBR_AMT_YTD_LCY
, T.PNP_PYMT_AMT_MTD_FCY
, T.PNP_PYMT_AMT_MTD_LCY
, T.PNP_PYMT_AMT_QTD_FCY
, T.PNP_PYMT_AMT_QTD_LCY
, T.PNP_PYMT_AMT_TDY_FCY
, T.PNP_PYMT_AMT_TDY_LCY
, T.PNP_PYMT_AMT_YTD_FCY
, T.PNP_PYMT_AMT_YTD_LCY
, T.CR_AMT_MTD_FCY
, T.CR_AMT_MTD_LCY
, T.CR_AMT_QTD_FCY
, T.CR_AMT_QTD_LCY
, T.CR_AMT_TDY_FCY
, T.CR_AMT_TDY_LCY
, T.CR_AMT_YTD_FCY
, T.CR_AMT_YTD_LCY
, T.DB_AMT_MTD_FCY
, T.DB_AMT_MTD_LCY
, T.DB_AMT_QTD_FCY
, T.DB_AMT_QTD_LCY
, T.DB_AMT_TDY_FCY
, T.DB_AMT_TDY_LCY
, T.DB_AMT_YTD_FCY
, T.DB_AMT_YTD_LCY
, T.AR_ID
, T.CST_ID
, T.PAST_DUE_INT_NBR_OF_DYS
, T.PAST_DUE_PNP_NBR_OF_DYS
, T.ACR_INT_MTD_FCY
, T.ACR_INT_MTD_LCY
, T.ACR_INT_QTD_FCY
, T.ACR_INT_QTD_LCY
, T.ACR_INT_TDY_FCY
, T.ACR_INT_TDY_LCY
, T.ACR_INT_YTD_FCY
, T.ACR_INT_YTD_LCY
, T.ACR_PNY_INT_MTD_FCY
, T.ACR_PNY_INT_MTD_LCY
, T.ACR_PNY_INT_QTD_FCY
, T.ACR_PNY_INT_QTD_LCY
, T.ACR_PNY_INT_TDY_FCY
, T.ACR_PNY_INT_TDY_LCY
, T.ACR_PNY_INT_YTD_FCY
, T.ACR_PNY_INT_YTD_LCY
, T.BSC_FTP_AMT_MTD_FCY
, T.BSC_FTP_AMT_MTD_LCY
, T.BSC_FTP_AMT_QTD_FCY
, T.BSC_FTP_AMT_QTD_LCY
, T.BSC_FTP_AMT_TDY_FCY
, T.BSC_FTP_AMT_TDY_LCY
, T.BSC_FTP_AMT_YTD_FCY
, T.BSC_FTP_AMT_YTD_LCY
, T.AUTO_ADJ_FTP_AMT_MTD_FCY
, T.AUTO_ADJ_FTP_AMT_MTD_LCY
, T.AUTO_ADJ_FTP_AMT_QTD_FCY
, T.AUTO_ADJ_FTP_AMT_QTD_LCY
, T.AUTO_ADJ_FTP_AMT_TDY_FCY
, T.AUTO_ADJ_FTP_AMT_TDY_LCY
, T.AUTO_ADJ_FTP_AMT_YTD_FCY
, T.AUTO_ADJ_FTP_AMT_YTD_LCY
, T.LBY_PNY_FTP_AMT_MTD_FCY
, T.LBY_PNY_FTP_AMT_MTD_LCY
, T.LBY_PNY_FTP_AMT_QTD_FCY
, T.LBY_PNY_FTP_AMT_QTD_LCY
, T.LBY_PNY_FTP_AMT_TDY_FCY
, T.LBY_PNY_FTP_AMT_TDY_LCY
, T.LBY_PNY_FTP_AMT_YTD_FCY
, T.LBY_PNY_FTP_AMT_YTD_LCY
, T.NML_INT_INCM_MTD_FCY
, T.NML_INT_INCM_MTD_LCY
, T.NML_INT_INCM_QTD_FCY
, T.NML_INT_INCM_QTD_LCY
, T.NML_INT_INCM_TDY_FCY
, T.NML_INT_INCM_TDY_LCY
, T.NML_INT_INCM_YTD_FCY
, T.NML_INT_INCM_YTD_LCY
, T.INT_INCM_MTD_FCY
, T.INT_INCM_MTD_LCY
, T.INT_INCM_QTD_FCY
, T.INT_INCM_QTD_LCY
, T.INT_INCM_YTD_FCY
, T.INT_INCM_YTD_LCY
, T.INT_INCM_TDY_FCY
, T.INT_INCM_TDY_LCY
, T.LBY_INT_AMT_MTD_FCY
, T.LBY_INT_AMT_MTD_LCY
, T.LBY_INT_AMT_QTD_FCY
, T.LBY_INT_AMT_QTD_LCY
, T.LBY_INT_AMT_TDY_FCY
, T.LBY_INT_AMT_TDY_LCY
, T.LBY_INT_AMT_YTD_FCY
, T.LBY_INT_AMT_YTD_LCY
, T.ACR_INT_PTD_FCY
, T.ACR_INT_PTD_LCY
, T.ACR_PNY_INT_PTD_FCY
, T.ACR_PNY_INT_PTD_LCY
, T.TOT_PAST_DUE_INT_AMT_FCY
, T.TOT_PAST_DUE_INT_AMT_LCY
, T.TOT_LMT_AMT_FCY
, T.TOT_LMT_AMT_LCY
, T.RPT_EXG_RATE
, T.TOT_NET_INCM_SEG_DIM_ID
, T.AM_DIM_ID
, T.RM_DIM_ID
, T.PDM_DIM_ID
from AR_ANL_FCT_FULL_DAILY t
left join CST_TP_DIM cst_tp on t.CST_TP_DIM_ID = cst_tp.CST_TP_DIM_ID
where cst_tp.LVL_4_CODE in ('CO', 'FI');
