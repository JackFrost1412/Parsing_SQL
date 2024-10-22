SELECT  ast_bal.LVL_1_ID		CST_AST_BAL_SEG_DIM_ID
	   , ACG_STC_GRP_DIM_ID		ACG_STC_GRP_DIM_ID
       , act_tm.LVL_1_ID		ACT_TM_TO_MAT_SEG_DIM_ID
       , lmt.LVL_2_ID			CR_LMT_SEG_DIM_ID
       , CST_MKT_SEG_DIM_ID		CST_MKT_SEG_DIM_ID
       , ar_bal.LVL_1_ID		AR_BAL_SEG_DIM_ID
       , AR_FNC_ST_DIM_ID		AR_FNC_ST_DIM_ID
       , AR_LCS_DIM_ID			AR_LCS_DIM_ID
       , AR_PPS_DIM_ID			AR_PPS_DIM_ID
       , tncp.AR_TP_DIM_ID			AR_TP_DIM_ID
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
       , tncp.TM_PRD_DIM_ID
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
	, SUM(NVL(AST_INT_INCM_MTD_FCY, 0))				AST_INT_INCM_MTD_FCY
	, SUM(NVL(AST_INT_INCM_MTD_LCY, 0))				AST_INT_INCM_MTD_LCY
	, SUM(NVL(AST_INT_INCM_QTD_FCY, 0))				AST_INT_INCM_QTD_FCY
	, SUM(NVL(AST_INT_INCM_QTD_LCY, 0))				AST_INT_INCM_QTD_LCY
	, SUM(NVL(AST_INT_INCM_YTD_FCY, 0))				AST_INT_INCM_YTD_FCY
	, SUM(NVL(AST_INT_INCM_YTD_LCY, 0))				AST_INT_INCM_YTD_LCY
	, SUM(NVL(AST_INT_INCM_TDY_FCY, 0))				AST_INT_INCM_TDY_FCY
	, SUM(NVL(AST_INT_INCM_TDY_LCY, 0))				AST_INT_INCM_TDY_LCY
	, SUM(NVL(LBY_INT_INCM_MTD_FCY, 0))				LBY_INT_INCM_MTD_FCY
	, SUM(NVL(LBY_INT_INCM_MTD_LCY, 0))				LBY_INT_INCM_MTD_LCY
	, SUM(NVL(LBY_INT_INCM_QTD_FCY, 0))				LBY_INT_INCM_QTD_FCY
	, SUM(NVL(LBY_INT_INCM_QTD_LCY, 0))				LBY_INT_INCM_QTD_LCY
	, SUM(NVL(LBY_INT_INCM_YTD_FCY, 0))				LBY_INT_INCM_YTD_FCY
	, SUM(NVL(LBY_INT_INCM_YTD_LCY, 0))				LBY_INT_INCM_YTD_LCY
	, SUM(NVL(LBY_INT_INCM_TDY_FCY, 0))				LBY_INT_INCM_TDY_FCY
	, SUM(NVL(LBY_INT_INCM_TDY_LCY, 0))				LBY_INT_INCM_TDY_LCY
	, SUM(NVL(AST_INT_INCM_R12MTH_FCY, 0))				AST_INT_INCM_ROLLING_12MTH_FCY
	, SUM(NVL(AST_INT_INCM_R12MTH_LCY, 0))				AST_INT_INCM_ROLLING_12MTH_LCY
	, SUM(NVL(AST_INT_INCM_R1MTH_FCY, 0))				AST_INT_INCM_ROLLING_1MTH_FCY
	, SUM(NVL(AST_INT_INCM_R1MTH_LCY, 0))				AST_INT_INCM_ROLLING_1MTH_LCY
	, SUM(NVL(AST_INT_INCM_R3MTH_FCY, 0))				AST_INT_INCM_ROLLING_3MTH_FCY
	, SUM(NVL(AST_INT_INCM_R3MTH_LCY, 0))				AST_INT_INCM_ROLLING_3MTH_LCY
	, SUM(NVL(AST_INT_INCM_R6MTH_FCY, 0))				AST_INT_INCM_ROLLING_6MTH_FCY
	, SUM(NVL(AST_INT_INCM_R6MTH_LCY, 0))				AST_INT_INCM_ROLLING_6MTH_LCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_12MTH_FCY, 0))				LBY_INT_INCM_ROLLING_12MTH_FCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_12MTH_LCY, 0))				LBY_INT_INCM_ROLLING_12MTH_LCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_1MTH_FCY, 0))				LBY_INT_INCM_ROLLING_1MTH_FCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_1MTH_LCY, 0))				LBY_INT_INCM_ROLLING_1MTH_LCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_3MTH_FCY, 0))				LBY_INT_INCM_ROLLING_3MTH_FCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_3MTH_LCY, 0))				LBY_INT_INCM_ROLLING_3MTH_LCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_6MTH_FCY, 0))				LBY_INT_INCM_ROLLING_6MTH_FCY
	, SUM(NVL(LBY_INT_INCM_ROLLING_6MTH_LCY, 0))				LBY_INT_INCM_ROLLING_6MTH_LCY
from AR_ANL_FCT_TNCP tncp
inner join ar_anl_fct t on t.AR_DIM_ID = tncp.AR_DIM_ID and t.TM_PRD_DIM_ID = tncp.TM_PRD_DIM_ID 
  left join BAL_SEG_DIM ast_bal on t.CST_AST_BAL_SEG_DIM_ID = ast_bal.BAL_SEG_DIM_ID
  left join BAL_SEG_DIM lby_bal on t.CST_LBY_BAL_SEG_DIM_ID = lby_bal.BAL_SEG_DIM_ID
  left join BAL_SEG_DIM ar_bal on t.AR_BAL_SEG_DIM_ID = ar_bal.BAL_SEG_DIM_ID
  left join CR_LMT_SEG_DIM lmt on t.CR_LMT_SEG_DIM_ID = lmt.CR_LMT_SEG_DIM_ID
  left join AR_TM_TO_MAT_SEG_DIM act_tm on t.ACT_TM_TO_MAT_SEG_DIM_ID = act_tm.AR_TM_TO_MAT_SEG_DIM_ID
  left join AR_TM_TO_MAT_SEG_DIM org_tm on t.ORIG_TM_TO_MAT_SEG_DIM_ID = org_tm.AR_TM_TO_MAT_SEG_DIM_ID
  left join AR_TM_TO_MAT_SEG_DIM rman_tm on t.RMAN_TM_TO_MAT_SEG_DIM_ID = rman_tm.AR_TM_TO_MAT_SEG_DIM_ID
  left join INT_RATE_SEG_DIM int_rate on t.INT_RATE_SEG_DIM_ID = int_rate.INT_RATE_SEG_DIM_ID
  LEFT JOIN ADMIN.SRC_STM_DIM src ON t.SRC_STM_DIM_ID = src.SRC_STM_DIM_ID 
where tncp.tm_prd_dim_id = (select param_value from cstb_system sys where  param_name = 'ETL_DATE')
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
       , tncp.AR_TP_DIM_ID
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
       , tncp.TM_PRD_DIM_ID
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

