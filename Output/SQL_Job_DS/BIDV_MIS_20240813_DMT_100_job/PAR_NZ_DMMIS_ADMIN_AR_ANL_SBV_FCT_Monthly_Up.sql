DELETE FROM WRK_AR_ANL_SBV_FCT_MONTHLY_ACCR
WHERE TM_PRD_DIM_ID  = :pDate:
AND '01'= TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD') AND SRC_STM_DIM_ID =  1000547;

INSERT INTO WRK_AR_ANL_SBV_FCT_MONTHLY_ACCR (AR_ID
       , TM_PRD_DIM_ID
       , ORG_UNIT_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , IDY_SML_ID_DIM_ID
       , PPS_IDY_CL_DIM_ID
       , CST_TP_ORG_IDV_SBV_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_ACG_STC_ITM_SBV_DIM_ID
       , CST_TP_RSDNC_SBV_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , TERM_BAL_SBV_DIM_ID
       , LBY_TP_SBV_DIM_ID
       , CST_TP_SBV_DIM_ID
       , SRC_STM_DIM_ID
       , CLS_BAL_AMT_TDY_SBV_FCY
       , CLS_BAL_AMT_TDY_SBV_LCY
       , CLS_BO_BAL_AMT_TDY_SBV_FCY
       , CLS_BO_BAL_AMT_TDY_SBV_LCY
       , AST_ACR_INT_PTD_SBV_FCY
       , AST_ACR_INT_PTD_SBV_LCY
       , DSBR_AMT_MTD_SBV_FCY
       , DSBR_AMT_MTD_SBV_LCY
       , TOT_CLS_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_BAL_AMT_TDY_SBV_LCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
       , PD_DIM_ID
       , DSBR_AMT_YTD_SBV_FCY
       , DSBR_AMT_YTD_SBV_LCY
       , CST_PERF_ST_DIM_ID
       , LIFE_PPS_SBV_DIM_ID
       , RI_TP_SBV_DIM_ID
       , TRD_FNC_TXN_SBV_DIM_ID
       , CST_RSDNC_SBV_DIM_ID
       , AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , PNP_PYMT_AMT_MTD_SBV_LCY
       , PNP_PYMT_AMT_MTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_LCY
       , TOT_PDA_PNP_AMT_SBV_FCY
       , TOT_PDA_PNP_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_FCY
       , CO_SME_SBV_DIM_ID
       , CLS_BG_BAL_AMT_TDY_SBV_LCY
       , CLS_BG_BAL_AMT_TDY_SBV_FCY
       , CLS_LC_BAL_AMT_TDY_SBV_LCY
       , CLS_LC_BAL_AMT_TDY_SBV_FCY
       , LBY_ACT_INT_RATE_SBV_TDY
       , AST_ACT_INT_RATE_SBV_TDY
       , AST_CLS_BAL_AMT_TDY_LCY
       , LBY_CLS_BAL_AMT_TDY_LCY
       , NBR_OF_ACC_SBV_AST
       , NBR_OF_ACC_SBV_LBY
       , NBR_NEW_OF_ACC_SBV_AST
       , NBR_NEW_OF_ACC_SBV_LBY
       , GL_CLS_BAL_AMT_TDY_FCY
       , GL_CLS_BAL_AMT_TDY_LCY
       , CLS_BAL_CHRTER_CPTL_LCY
       , CLS_BAL_CHRTER_CPTL_FCY
       , SLR_PYMT_AMT_MTD_SBV_LCY
       , SLR_PYMT_AMT_MTD_SBV_FCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_LCY
       , INT_RATE_SEG_DIM_ID
       , NUM_OF_ACC_IDV_DD_SBV
       , DSBR_AMT_LTD_SBV_FCY
       , DSBR_AMT_LTD_SBV_LCY
       , PNP_PYMT_AMT_LTD_SBV_FCY
       , PNP_PYMT_AMT_LTD_SBV_LCY
       , PRPT_PPS_SBV_DIM_ID
       , BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , BO_DSBR_AMT_MTD_SBV_FCY
       , BO_DSBR_AMT_MTD_SBV_LCY
       , CST_BIDV_PERF_ST_SBV_DIM_ID
       , CST_CIC_PERF_ST_SBV_DIM_ID
       , AGRCT_AREA_SBV_DIM_ID
       , AR_LOAN_STC_SBV_DIM_ID
       , AR_ACT_INT_RATE_TDY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , TOT_INCM_CASH_FCY
       , TOT_EXPN_CASH_FCY
       , FND_AMT_CASH_FCY
       , TOT_AMT_UNQLF_CCL_IMP_FCY
       , TOT_AMT_UNQLF_CCL_EXP_FCY
       , IVNT_AMT_UNQLF_CCL_FCY
       , AR_DIM_ID
       , CMMT_BG_BAL_AMT_TDY_FCY
       , CMMT_BG_BAL_AMT_TDY_LCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_FCY
       , NBR_OF_ADJ_REPYMT_TERM
       , NBR_OF_DBT_EXT
       , LOAN_RTO_LC
       , SPRT_IDY_CL_SBV_DIM_ID
       , HIGH_TECH_CL_SBV_DIM_ID
) 
SELECT 
AR_ID
       , TM_PRD_DIM_ID
       , ORG_UNIT_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , IDY_SML_ID_DIM_ID
       , PPS_IDY_CL_DIM_ID
       , CST_TP_ORG_IDV_SBV_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_ACG_STC_ITM_SBV_DIM_ID
       , CST_TP_RSDNC_SBV_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , TERM_BAL_SBV_DIM_ID
       , LBY_TP_SBV_DIM_ID
       , CST_TP_SBV_DIM_ID
       , SRC_STM_DIM_ID
       , CLS_BAL_AMT_TDY_SBV_FCY
       , CLS_BAL_AMT_TDY_SBV_LCY
       , CLS_BO_BAL_AMT_TDY_SBV_FCY
       , CLS_BO_BAL_AMT_TDY_SBV_LCY
       , AST_ACR_INT_PTD_SBV_FCY
       , AST_ACR_INT_PTD_SBV_LCY
       , DSBR_AMT_MTD_SBV_FCY
       , DSBR_AMT_MTD_SBV_LCY
       , TOT_CLS_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_BAL_AMT_TDY_SBV_LCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
       , PD_DIM_ID
       , DSBR_AMT_YTD_SBV_FCY
       , DSBR_AMT_YTD_SBV_LCY
       , CST_PERF_ST_DIM_ID
       , LIFE_PPS_SBV_DIM_ID
       , RI_TP_SBV_DIM_ID
       , TRD_FNC_TXN_SBV_DIM_ID
       , CST_RSDNC_SBV_DIM_ID
       , AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , PNP_PYMT_AMT_MTD_SBV_LCY
       , PNP_PYMT_AMT_MTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_LCY
       , TOT_PDA_PNP_AMT_SBV_FCY
       , TOT_PDA_PNP_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_FCY
       , CO_SME_SBV_DIM_ID
       , CLS_BG_BAL_AMT_TDY_SBV_LCY
       , CLS_BG_BAL_AMT_TDY_SBV_FCY
       , CLS_LC_BAL_AMT_TDY_SBV_LCY
       , CLS_LC_BAL_AMT_TDY_SBV_FCY
       , LBY_ACT_INT_RATE_SBV_TDY
       , AST_ACT_INT_RATE_SBV_TDY
       , AST_CLS_BAL_AMT_TDY_LCY
       , LBY_CLS_BAL_AMT_TDY_LCY
       , NBR_OF_ACC_SBV_AST
       , NBR_OF_ACC_SBV_LBY
       , NBR_NEW_OF_ACC_SBV_AST
       , NBR_NEW_OF_ACC_SBV_LBY
       , GL_CLS_BAL_AMT_TDY_FCY
       , GL_CLS_BAL_AMT_TDY_LCY
       , CLS_BAL_CHRTER_CPTL_LCY
       , CLS_BAL_CHRTER_CPTL_FCY
       , SLR_PYMT_AMT_MTD_SBV_LCY
       , SLR_PYMT_AMT_MTD_SBV_FCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_LCY
       , INT_RATE_SEG_DIM_ID
       , NUM_OF_ACC_IDV_DD_SBV
       , DSBR_AMT_LTD_SBV_FCY
       , DSBR_AMT_LTD_SBV_LCY
       , PNP_PYMT_AMT_LTD_SBV_FCY
       , PNP_PYMT_AMT_LTD_SBV_LCY
       , PRPT_PPS_SBV_DIM_ID
       , BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , BO_DSBR_AMT_MTD_SBV_FCY
       , BO_DSBR_AMT_MTD_SBV_LCY
       , CST_BIDV_PERF_ST_SBV_DIM_ID
       , CST_CIC_PERF_ST_SBV_DIM_ID
       , AGRCT_AREA_SBV_DIM_ID
       , AR_LOAN_STC_SBV_DIM_ID
       , AR_ACT_INT_RATE_TDY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , TOT_INCM_CASH_FCY
       , TOT_EXPN_CASH_FCY
       , FND_AMT_CASH_FCY
       , TOT_AMT_UNQLF_CCL_IMP_FCY
       , TOT_AMT_UNQLF_CCL_EXP_FCY
       , IVNT_AMT_UNQLF_CCL_FCY
       , AR_DIM_ID
       , CMMT_BG_BAL_AMT_TDY_FCY
       , CMMT_BG_BAL_AMT_TDY_LCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_FCY
       , NBR_OF_ADJ_REPYMT_TERM
       , NBR_OF_DBT_EXT
       , LOAN_RTO_LC
       , SPRT_IDY_CL_SBV_DIM_ID
       , HIGH_TECH_CL_SBV_DIM_ID
	   FROM AR_ANL_SBV_FCT
	   WHERE TM_PRD_DIM_ID  = :pDate:
AND '01'= TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD') AND SRC_STM_DIM_ID =  1000547;

DELETE FROM WRK_AR_ANL_SBV_FCT WHERE  SRC_STM_DIM_ID =  1000547;

INSERT INTO WRK_AR_ANL_SBV_FCT (AR_ID
       , TM_PRD_DIM_ID
       , ORG_UNIT_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , IDY_SML_ID_DIM_ID
       , PPS_IDY_CL_DIM_ID
       , CST_TP_ORG_IDV_SBV_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_ACG_STC_ITM_SBV_DIM_ID
       , CST_TP_RSDNC_SBV_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , TERM_BAL_SBV_DIM_ID
       , LBY_TP_SBV_DIM_ID
       , CST_TP_SBV_DIM_ID
       , SRC_STM_DIM_ID
       , CLS_BAL_AMT_TDY_SBV_FCY
       , CLS_BAL_AMT_TDY_SBV_LCY
       , CLS_BO_BAL_AMT_TDY_SBV_FCY
       , CLS_BO_BAL_AMT_TDY_SBV_LCY
       , AST_ACR_INT_PTD_SBV_FCY
       , AST_ACR_INT_PTD_SBV_LCY
       , DSBR_AMT_MTD_SBV_FCY
       , DSBR_AMT_MTD_SBV_LCY
       , TOT_CLS_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_BAL_AMT_TDY_SBV_LCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
       , PD_DIM_ID
       , DSBR_AMT_YTD_SBV_FCY
       , DSBR_AMT_YTD_SBV_LCY
       , CST_PERF_ST_DIM_ID
       , LIFE_PPS_SBV_DIM_ID
       , RI_TP_SBV_DIM_ID
       , TRD_FNC_TXN_SBV_DIM_ID
       , CST_RSDNC_SBV_DIM_ID
       , AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , PNP_PYMT_AMT_MTD_SBV_LCY
       , PNP_PYMT_AMT_MTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_LCY
       , TOT_PDA_PNP_AMT_SBV_FCY
       , TOT_PDA_PNP_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_FCY
       , CO_SME_SBV_DIM_ID
       , CLS_BG_BAL_AMT_TDY_SBV_LCY
       , CLS_BG_BAL_AMT_TDY_SBV_FCY
       , CLS_LC_BAL_AMT_TDY_SBV_LCY
       , CLS_LC_BAL_AMT_TDY_SBV_FCY
       , LBY_ACT_INT_RATE_SBV_TDY
       , AST_ACT_INT_RATE_SBV_TDY
       , AST_CLS_BAL_AMT_TDY_LCY
       , LBY_CLS_BAL_AMT_TDY_LCY
       , NBR_OF_ACC_SBV_AST
       , NBR_OF_ACC_SBV_LBY
       , NBR_NEW_OF_ACC_SBV_AST
       , NBR_NEW_OF_ACC_SBV_LBY
       , GL_CLS_BAL_AMT_TDY_FCY
       , GL_CLS_BAL_AMT_TDY_LCY
       , CLS_BAL_CHRTER_CPTL_LCY
       , CLS_BAL_CHRTER_CPTL_FCY
       , SLR_PYMT_AMT_MTD_SBV_LCY
       , SLR_PYMT_AMT_MTD_SBV_FCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_LCY
       , INT_RATE_SEG_DIM_ID
       , NUM_OF_ACC_IDV_DD_SBV
       , DSBR_AMT_LTD_SBV_FCY
       , DSBR_AMT_LTD_SBV_LCY
       , PNP_PYMT_AMT_LTD_SBV_FCY
       , PNP_PYMT_AMT_LTD_SBV_LCY
       , PRPT_PPS_SBV_DIM_ID
       , BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , BO_DSBR_AMT_MTD_SBV_FCY
       , BO_DSBR_AMT_MTD_SBV_LCY
       , CST_BIDV_PERF_ST_SBV_DIM_ID
       , CST_CIC_PERF_ST_SBV_DIM_ID
       , AGRCT_AREA_SBV_DIM_ID
       , AR_LOAN_STC_SBV_DIM_ID
       , AR_ACT_INT_RATE_TDY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , TOT_INCM_CASH_FCY
       , TOT_EXPN_CASH_FCY
       , FND_AMT_CASH_FCY
       , TOT_AMT_UNQLF_CCL_IMP_FCY
       , TOT_AMT_UNQLF_CCL_EXP_FCY
       , IVNT_AMT_UNQLF_CCL_FCY
       , AR_DIM_ID
       , CMMT_BG_BAL_AMT_TDY_FCY
       , CMMT_BG_BAL_AMT_TDY_LCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_FCY
       , NBR_OF_ADJ_REPYMT_TERM
       , NBR_OF_DBT_EXT
       , LOAN_RTO_LC
       , SPRT_IDY_CL_SBV_DIM_ID
       , HIGH_TECH_CL_SBV_DIM_ID
) 
SELECT 
AR_ID
       , TM_PRD_DIM_ID
       , ORG_UNIT_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , IDY_SML_ID_DIM_ID
       , PPS_IDY_CL_DIM_ID
       , CST_TP_ORG_IDV_SBV_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_ACG_STC_ITM_SBV_DIM_ID
       , CST_TP_RSDNC_SBV_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , TERM_BAL_SBV_DIM_ID
       , LBY_TP_SBV_DIM_ID
       , CST_TP_SBV_DIM_ID
       , SRC_STM_DIM_ID
       , CLS_BAL_AMT_TDY_SBV_FCY
       , CLS_BAL_AMT_TDY_SBV_LCY
       , CLS_BO_BAL_AMT_TDY_SBV_FCY
       , CLS_BO_BAL_AMT_TDY_SBV_LCY
       , AST_ACR_INT_PTD_SBV_FCY
       , AST_ACR_INT_PTD_SBV_LCY
       , DSBR_AMT_MTD_SBV_FCY
       , DSBR_AMT_MTD_SBV_LCY
       , TOT_CLS_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_BAL_AMT_TDY_SBV_LCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
       , PD_DIM_ID
       , DSBR_AMT_YTD_SBV_FCY
       , DSBR_AMT_YTD_SBV_LCY
       , CST_PERF_ST_DIM_ID
       , LIFE_PPS_SBV_DIM_ID
       , RI_TP_SBV_DIM_ID
       , TRD_FNC_TXN_SBV_DIM_ID
       , CST_RSDNC_SBV_DIM_ID
       , AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , PNP_PYMT_AMT_MTD_SBV_LCY
       , PNP_PYMT_AMT_MTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_LCY
       , TOT_PDA_PNP_AMT_SBV_FCY
       , TOT_PDA_PNP_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_FCY
       , CO_SME_SBV_DIM_ID
       , CLS_BG_BAL_AMT_TDY_SBV_LCY
       , CLS_BG_BAL_AMT_TDY_SBV_FCY
       , CLS_LC_BAL_AMT_TDY_SBV_LCY
       , CLS_LC_BAL_AMT_TDY_SBV_FCY
       , LBY_ACT_INT_RATE_SBV_TDY
       , AST_ACT_INT_RATE_SBV_TDY
       , AST_CLS_BAL_AMT_TDY_LCY
       , LBY_CLS_BAL_AMT_TDY_LCY
       , NBR_OF_ACC_SBV_AST
       , NBR_OF_ACC_SBV_LBY
       , NBR_NEW_OF_ACC_SBV_AST
       , NBR_NEW_OF_ACC_SBV_LBY
       , GL_CLS_BAL_AMT_TDY_FCY
       , GL_CLS_BAL_AMT_TDY_LCY
       , CLS_BAL_CHRTER_CPTL_LCY
       , CLS_BAL_CHRTER_CPTL_FCY
       , SLR_PYMT_AMT_MTD_SBV_LCY
       , SLR_PYMT_AMT_MTD_SBV_FCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_LCY
       , INT_RATE_SEG_DIM_ID
       , NUM_OF_ACC_IDV_DD_SBV
       , DSBR_AMT_LTD_SBV_FCY
       , DSBR_AMT_LTD_SBV_LCY
       , PNP_PYMT_AMT_LTD_SBV_FCY
       , PNP_PYMT_AMT_LTD_SBV_LCY
       , PRPT_PPS_SBV_DIM_ID
       , BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , BO_DSBR_AMT_MTD_SBV_FCY
       , BO_DSBR_AMT_MTD_SBV_LCY
       , CST_BIDV_PERF_ST_SBV_DIM_ID
       , CST_CIC_PERF_ST_SBV_DIM_ID
       , AGRCT_AREA_SBV_DIM_ID
       , AR_LOAN_STC_SBV_DIM_ID
       , AR_ACT_INT_RATE_TDY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , TOT_INCM_CASH_FCY
       , TOT_EXPN_CASH_FCY
       , FND_AMT_CASH_FCY
       , TOT_AMT_UNQLF_CCL_IMP_FCY
       , TOT_AMT_UNQLF_CCL_EXP_FCY
       , IVNT_AMT_UNQLF_CCL_FCY
       , AR_DIM_ID
       , CMMT_BG_BAL_AMT_TDY_FCY
       , CMMT_BG_BAL_AMT_TDY_LCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_FCY
       , NBR_OF_ADJ_REPYMT_TERM
       , NBR_OF_DBT_EXT
       , LOAN_RTO_LC
       , SPRT_IDY_CL_SBV_DIM_ID
       , HIGH_TECH_CL_SBV_DIM_ID
	   FROM AR_ANL_SBV_FCT
	   	   WHERE TM_PRD_DIM_ID = to_char(DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1,'YYYYDDD') AND SRC_STM_DIM_ID =  1000547
	   and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD') as numeric(2,0) ) > 1
	   and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD')as numeric(2,0) ) <14;

update wrk_ar_anl_sbv_fct a
set a.AR_LOAN_STC_SBV_DIM_ID = b.AR_LOAN_STC_SBV_DIM_ID,
a.NBR_OF_ADJ_REPYMT_TERM = b.NBR_OF_ADJ_REPYMT_TERM
, a.NBR_OF_DBT_EXT = b.NBR_OF_DBT_EXT
, a.SPRT_IDY_CL_SBV_DIM_ID = b.SPRT_IDY_CL_SBV_DIM_ID
, a.LOAN_RTO_LC = b.LOAN_RTO_LC
, a.HIGH_TECH_CL_SBV_DIM_ID = b. HIGH_TECH_CL_SBV_DIM_ID
from (
	select TM_PRD_DIM_ID, AR_DIM_ID, SRC_STM_DIM_ID, AR_LOAN_STC_SBV_DIM_ID, NBR_OF_ADJ_REPYMT_TERM, NBR_OF_DBT_EXT, SPRT_IDY_CL_SBV_DIM_ID, LOAN_RTO_LC, HIGH_TECH_CL_SBV_DIM_ID
	from (select 
		to_char(DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1,'YYYYDDD') TM_PRD_DIM_ID
		, NVL(AR_DIM.AR_DIM_ID,999999)	AR_DIM_ID
		, NVL(SRC_STM_DIM.SRC_STM_DIM_ID,999999)	SRC_STM_DIM_ID
		, NVL(loan_str_dim.AR_LOAN_STC_SBV_DIM_ID,'999999')	AR_LOAN_STC_SBV_DIM_ID
		, NBR_OF_ADJ_REPYMT_TERM
		, NBR_OF_DBT_EXT
		, SPRT_IDY_CL_SBV_DIM.SPRT_IDY_CL_SBV_DIM_ID  SPRT_IDY_CL_SBV_DIM_ID
		, LOAN_RTO_LC 		, HIGH_TECH_CL_SBV_DIM.HIGH_TECH_CL_SBV_DIM_ID HIGH_TECH_CL_SBV_DIM_ID
				, row_number() over (partition by NVL(AR_DIM.AR_DIM_ID,999999) order by NVL(AR_DIM.AR_DIM_ID,999999)) stt 

		FROM  		TMP_AR_ANL_FCT_SBV  TWT
		LEFT JOIN 	SRC_STM_DIM SRC_STM_DIM	ON SRC_STM_DIM.LVL_0_ID	= TWT.SRC_STM_ID 
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= SRC_STM_DIM.EFF_FM_DT 
		AND SRC_STM_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
		LEFT JOIN 	AR_DIM AR_DIM ON TWT.AR_ID = AR_DIM.AR_ID 
		AND DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1 >= AR_DIM.EFF_FM_DT
		AND AR_DIM.EFF_TO_DT >  DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1
		LEFT JOIN 	AR_LOAN_STC_SBV_DIM loan_str_dim ON loan_str_dim.lvl_0_id=twt.LOAN_STRUCTURE_TP_ID
		AND TO_DATE(:pDate:,'YYYYDDD') >= loan_str_dim.EFF_FM_DT 
		AND loan_str_dim.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
				LEFT JOIN 	SPRT_IDY_CL_SBV_DIM  ON SPRT_IDY_CL_SBV_DIM.lvl_1_id=twt.SPRT_IDY_CL_SBV_ID
				AND TO_DATE(:pDate:,'YYYYDDD') >= SPRT_IDY_CL_SBV_DIM.EFF_FM_DT
				AND SPRT_IDY_CL_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
				LEFT JOIN 	HIGH_TECH_CL_SBV_DIM  ON HIGH_TECH_CL_SBV_DIM.lvl_0_id=twt.HIGH_TECH_CL_SBV_ID
				AND TO_DATE(:pDate:,'YYYYDDD') >= HIGH_TECH_CL_SBV_DIM.EFF_FM_DT 
				AND HIGH_TECH_CL_SBV_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
		where SRC_STM_DIM_ID = 1000547  and NVL(AR_DIM.AR_DIM_ID,999999)<>999999
		) x where stt = 1
)
b 
where a.AR_DIM_ID = b.AR_DIM_ID
and a.TM_PRD_DIM_ID = b.TM_PRD_DIM_ID 
and a.SRC_STM_DIM_ID = b.SRC_STM_DIM_ID
and a.TM_PRD_DIM_ID = to_char(DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1,'YYYYDDD')
and  a.SRC_STM_DIM_ID = 1000547 
and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD') as numeric(2,0) ) > 1
and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD')as numeric(2,0) ) <14;

delete FROM AR_ANL_SBV_FCT
WHERE TM_PRD_DIM_ID  =to_char(DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1,'YYYYDDD')
AND SRC_STM_DIM_ID =  1000547
and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD') as numeric(2,0) ) > 1
and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD')as numeric(2,0) ) <14;

INSERT INTO AR_ANL_SBV_FCT (AR_ID
       , TM_PRD_DIM_ID
       , ORG_UNIT_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , IDY_SML_ID_DIM_ID
       , PPS_IDY_CL_DIM_ID
       , CST_TP_ORG_IDV_SBV_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_ACG_STC_ITM_SBV_DIM_ID
       , CST_TP_RSDNC_SBV_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , TERM_BAL_SBV_DIM_ID
       , LBY_TP_SBV_DIM_ID
       , CST_TP_SBV_DIM_ID
       , SRC_STM_DIM_ID
       , CLS_BAL_AMT_TDY_SBV_FCY
       , CLS_BAL_AMT_TDY_SBV_LCY
       , CLS_BO_BAL_AMT_TDY_SBV_FCY
       , CLS_BO_BAL_AMT_TDY_SBV_LCY
       , AST_ACR_INT_PTD_SBV_FCY
       , AST_ACR_INT_PTD_SBV_LCY
       , DSBR_AMT_MTD_SBV_FCY
       , DSBR_AMT_MTD_SBV_LCY
       , TOT_CLS_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_BAL_AMT_TDY_SBV_LCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
       , PD_DIM_ID
       , DSBR_AMT_YTD_SBV_FCY
       , DSBR_AMT_YTD_SBV_LCY
       , CST_PERF_ST_DIM_ID
       , LIFE_PPS_SBV_DIM_ID
       , RI_TP_SBV_DIM_ID
       , TRD_FNC_TXN_SBV_DIM_ID
       , CST_RSDNC_SBV_DIM_ID
       , AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , PNP_PYMT_AMT_MTD_SBV_LCY
       , PNP_PYMT_AMT_MTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_LCY
       , TOT_PDA_PNP_AMT_SBV_FCY
       , TOT_PDA_PNP_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_FCY
       , CO_SME_SBV_DIM_ID
       , CLS_BG_BAL_AMT_TDY_SBV_LCY
       , CLS_BG_BAL_AMT_TDY_SBV_FCY
       , CLS_LC_BAL_AMT_TDY_SBV_LCY
       , CLS_LC_BAL_AMT_TDY_SBV_FCY
       , LBY_ACT_INT_RATE_SBV_TDY
       , AST_ACT_INT_RATE_SBV_TDY
       , AST_CLS_BAL_AMT_TDY_LCY
       , LBY_CLS_BAL_AMT_TDY_LCY
       , NBR_OF_ACC_SBV_AST
       , NBR_OF_ACC_SBV_LBY
       , NBR_NEW_OF_ACC_SBV_AST
       , NBR_NEW_OF_ACC_SBV_LBY
       , GL_CLS_BAL_AMT_TDY_FCY
       , GL_CLS_BAL_AMT_TDY_LCY
       , CLS_BAL_CHRTER_CPTL_LCY
       , CLS_BAL_CHRTER_CPTL_FCY
       , SLR_PYMT_AMT_MTD_SBV_LCY
       , SLR_PYMT_AMT_MTD_SBV_FCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_LCY
       , INT_RATE_SEG_DIM_ID
       , NUM_OF_ACC_IDV_DD_SBV
       , DSBR_AMT_LTD_SBV_FCY
       , DSBR_AMT_LTD_SBV_LCY
       , PNP_PYMT_AMT_LTD_SBV_FCY
       , PNP_PYMT_AMT_LTD_SBV_LCY
       , PRPT_PPS_SBV_DIM_ID
       , BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , BO_DSBR_AMT_MTD_SBV_FCY
       , BO_DSBR_AMT_MTD_SBV_LCY
       , CST_BIDV_PERF_ST_SBV_DIM_ID
       , CST_CIC_PERF_ST_SBV_DIM_ID
       , AGRCT_AREA_SBV_DIM_ID
       , AR_LOAN_STC_SBV_DIM_ID
       , AR_ACT_INT_RATE_TDY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , TOT_INCM_CASH_FCY
       , TOT_EXPN_CASH_FCY
       , FND_AMT_CASH_FCY
       , TOT_AMT_UNQLF_CCL_IMP_FCY
       , TOT_AMT_UNQLF_CCL_EXP_FCY
       , IVNT_AMT_UNQLF_CCL_FCY
       , AR_DIM_ID
       , CMMT_BG_BAL_AMT_TDY_FCY
       , CMMT_BG_BAL_AMT_TDY_LCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_FCY
       , NBR_OF_ADJ_REPYMT_TERM
       , NBR_OF_DBT_EXT
       , LOAN_RTO_LC
       , SPRT_IDY_CL_SBV_DIM_ID
       , HIGH_TECH_CL_SBV_DIM_ID
) 
SELECT 
AR_ID
       , TM_PRD_DIM_ID
       , ORG_UNIT_DIM_ID
       , CCY_DIM_ID
       , CST_DIM_ID
       , IDY_SML_ID_DIM_ID
       , PPS_IDY_CL_DIM_ID
       , CST_TP_ORG_IDV_SBV_DIM_ID
       , BAL_ACG_STC_ITM_DIM_ID
       , BAL_ACG_STC_ITM_SBV_DIM_ID
       , CST_TP_RSDNC_SBV_DIM_ID
       , ORIG_TM_TO_MAT_SEG_DIM_ID
       , TERM_BAL_SBV_DIM_ID
       , LBY_TP_SBV_DIM_ID
       , CST_TP_SBV_DIM_ID
       , SRC_STM_DIM_ID
       , CLS_BAL_AMT_TDY_SBV_FCY
       , CLS_BAL_AMT_TDY_SBV_LCY
       , CLS_BO_BAL_AMT_TDY_SBV_FCY
       , CLS_BO_BAL_AMT_TDY_SBV_LCY
       , AST_ACR_INT_PTD_SBV_FCY
       , AST_ACR_INT_PTD_SBV_LCY
       , DSBR_AMT_MTD_SBV_FCY
       , DSBR_AMT_MTD_SBV_LCY
       , TOT_CLS_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_BAL_AMT_TDY_SBV_LCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_FCY
       , TOT_CLS_GVM_BAL_AMT_TDY_SBV_LCY
       , PD_DIM_ID
       , DSBR_AMT_YTD_SBV_FCY
       , DSBR_AMT_YTD_SBV_LCY
       , CST_PERF_ST_DIM_ID
       , LIFE_PPS_SBV_DIM_ID
       , RI_TP_SBV_DIM_ID
       , TRD_FNC_TXN_SBV_DIM_ID
       , CST_RSDNC_SBV_DIM_ID
       , AGRCT_CLS_BAL_AMT_TDY_SBV_LCY
       , AGRCT_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_FCY
       , STK_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_LCY
       , PRPT_CLS_BAL_AMT_TDY_SBV_FCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_LCY
       , LIFE_LOAN_CLS_BAL_AMT_TDY_SBV_FCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_LCY
       , SCRD_CLS_BAL_AMT_TDY_SBV_FCY
       , PNP_PYMT_AMT_MTD_SBV_LCY
       , PNP_PYMT_AMT_MTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_FCY
       , PNP_PYMT_AMT_YTD_SBV_LCY
       , TOT_PDA_PNP_AMT_SBV_FCY
       , TOT_PDA_PNP_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_LCY
       , TOT_LMT_AMT_SBV_FCY
       , CO_SME_SBV_DIM_ID
       , CLS_BG_BAL_AMT_TDY_SBV_LCY
       , CLS_BG_BAL_AMT_TDY_SBV_FCY
       , CLS_LC_BAL_AMT_TDY_SBV_LCY
       , CLS_LC_BAL_AMT_TDY_SBV_FCY
       , LBY_ACT_INT_RATE_SBV_TDY
       , AST_ACT_INT_RATE_SBV_TDY
       , AST_CLS_BAL_AMT_TDY_LCY
       , LBY_CLS_BAL_AMT_TDY_LCY
       , NBR_OF_ACC_SBV_AST
       , NBR_OF_ACC_SBV_LBY
       , NBR_NEW_OF_ACC_SBV_AST
       , NBR_NEW_OF_ACC_SBV_LBY
       , GL_CLS_BAL_AMT_TDY_FCY
       , GL_CLS_BAL_AMT_TDY_LCY
       , CLS_BAL_CHRTER_CPTL_LCY
       , CLS_BAL_CHRTER_CPTL_FCY
       , SLR_PYMT_AMT_MTD_SBV_LCY
       , SLR_PYMT_AMT_MTD_SBV_FCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_LCY
       , SLR_PYMT_CLS_BAL_AMT_MTD_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_FCY
       , DD_CLS_BAL_AMT_TDY_SBV_LCY
       , INT_RATE_SEG_DIM_ID
       , NUM_OF_ACC_IDV_DD_SBV
       , DSBR_AMT_LTD_SBV_FCY
       , DSBR_AMT_LTD_SBV_LCY
       , PNP_PYMT_AMT_LTD_SBV_FCY
       , PNP_PYMT_AMT_LTD_SBV_LCY
       , PRPT_PPS_SBV_DIM_ID
       , BO_PNP_PYMT_AMT_MTD_SBV_FCY
       , BO_PNP_PYMT_AMT_MTD_SBV_LCY
       , BO_DSBR_AMT_MTD_SBV_FCY
       , BO_DSBR_AMT_MTD_SBV_LCY
       , CST_BIDV_PERF_ST_SBV_DIM_ID
       , CST_CIC_PERF_ST_SBV_DIM_ID
       , AGRCT_AREA_SBV_DIM_ID
       , AR_LOAN_STC_SBV_DIM_ID
       , AR_ACT_INT_RATE_TDY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , TOT_INCM_CASH_FCY
       , TOT_EXPN_CASH_FCY
       , FND_AMT_CASH_FCY
       , TOT_AMT_UNQLF_CCL_IMP_FCY
       , TOT_AMT_UNQLF_CCL_EXP_FCY
       , IVNT_AMT_UNQLF_CCL_FCY
       , AR_DIM_ID
       , CMMT_BG_BAL_AMT_TDY_FCY
       , CMMT_BG_BAL_AMT_TDY_LCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_FCY
       , IMPR_EXPRT_CMMT_BG_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_LCY
       , CMMT_LC_BAL_AMT_TDY_FCY
       , NBR_OF_ADJ_REPYMT_TERM
       , NBR_OF_DBT_EXT
       , LOAN_RTO_LC
       , SPRT_IDY_CL_SBV_DIM_ID
       , HIGH_TECH_CL_SBV_DIM_ID	    
	   FROM  wrk_AR_ANL_SBV_FCT
	  WHERE TM_PRD_DIM_ID  =to_char(DATE_TRUNC('MONTH',TO_DATE(:pDate:,'YYYYDDD'))-1,'YYYYDDD')
AND SRC_STM_DIM_ID =  1000547
and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD') as numeric(2,0) ) > 1
and  cast(TO_CHAR(TO_DATE(:pDate:,'YYYYDDD') + 1,'DD')as numeric(2,0) ) <14;

