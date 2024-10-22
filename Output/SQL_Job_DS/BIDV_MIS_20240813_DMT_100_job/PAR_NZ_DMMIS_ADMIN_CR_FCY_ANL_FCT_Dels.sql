SELECT   NVL(CR_FCY_AR_DIM.CR_FCY_AR_DIM_ID,'0') CR_FCY_AR_DIM_ID
       , NVL(CR_LMT_SEG_DIM.CR_LMT_SEG_DIM_ID,'0') CR_LMT_SEG_DIM_ID
       , NVL(CCY_DIM.CCY_DM_ID,'0') CCY_DIM_ID
       , NVL(CST_DIM.CST_DIM_ID,'0') CST_DIM_ID
       , TMP_CST.CST_MKT_SEG_DIM_ID CST_MKT_SEG_DIM_ID
       , NVL(PERF_ST_DIM.PERF_ST_DIM_ID,'0') CST_PERF_DIM_ID
       , NVL(TMP_CST.CST_TP_DIM_ID,'0') CST_TP_DIM_ID
       , NVL(IDY_CL_DIM.IDY_SML_ID_DIM_ID,'0') IDY_SML_ID_DIM_ID
       , NVL(OU_DIM.ORG_UNIT_DIM_ID,'0') ORG_UNIT_DIM_ID
       , NVL(SCR_CVR_DIM.SCR_CVR_DIM_ID,'0') SCR_CVR_DIM_ID
       , NVL(SRC_STM_DIM.SRC_STM_DIM_ID,'0') SRC_STM_DIM_ID
       , TWT.TM_PRD_DIM_ID TM_PRD_DIM_ID
       , TWT.TOT_AVL_AMT_FCY
       , TWT.TOT_AVL_AMT_LCY
       , TWT.TOT_LMT_AMT_FCY
       , TWT.TOT_LMT_AMT_LCY
       , TWT.TOT_UTLZ_AMT_LCY
	  , NVL(AR_LC_ST_DIM.AR_LIFE_CYC_ST_DIM_ID,'0') AR_LCS_DIM_ID
	  
  FROM TWT_CR_FCY_ANL_FCT TWT
  INNER JOIN CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
  LEFT JOIN CR_FCY_AR_DIM ON CR_FCY_AR_DIM.CR_FCY_AR_ID = TWT.CR_FCY_AR_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CR_FCY_AR_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CR_FCY_AR_DIM.EFF_TO_DT 
  LEFT JOIN CR_LMT_SEG_DIM ON TWT.TOT_LMT_AMT_LCY >=  CR_LMT_SEG_DIM.MIN_BAL AND TWT.TOT_LMT_AMT_LCY < CR_LMT_SEG_DIM.MAX_BAL AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CR_LMT_SEG_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CR_LMT_SEG_DIM.EFF_TO_DT 
  LEFT JOIN CCY_DIM ON CCY_DIM.CCY_ID = TWT.CCY_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CCY_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CCY_DIM.EFF_TO_DT 
  LEFT JOIN CST_DIM ON CST_DIM.CST_ID = TWT.CST_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CST_DIM.EFF_TO_DT 
  LEFT JOIN PERF_ST_DIM ON PERF_ST_DIM.LVL_0_ID = TWT.CST_PERF_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= PERF_ST_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < PERF_ST_DIM.EFF_TO_DT 
  LEFT JOIN IDY_CL_DIM ON IDY_CL_DIM.LVL_0_ID = TWT.IDY_SML_ID_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= IDY_CL_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < IDY_CL_DIM.EFF_TO_DT 
  LEFT JOIN OU_DIM ON OU_DIM.ORG_UNIT_ID = TWT.ORG_UNIT_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= OU_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < OU_DIM.EFF_TO_DT 
  LEFT JOIN SCR_CVR_DIM ON SCR_CVR_DIM.LVL_0_ID = TWT.SCR_CVR_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SCR_CVR_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < SCR_CVR_DIM.EFF_TO_DT 
  LEFT JOIN SRC_STM_DIM ON SRC_STM_DIM.LVL_0_ID = TWT.SRC_STM_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SRC_STM_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < SRC_STM_DIM.EFF_TO_DT 
  LEFT JOIN AR_LC_ST_DIM ON AR_LC_ST_DIM.LVL_0_ID = TWT.AR_LCS_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AR_LC_ST_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < AR_LC_ST_DIM.EFF_TO_DT 
  LEFT JOIN TMP_CST ON TMP_CST.CST_ID = TWT.CST_DIM_ID
--   AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_MP.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CST_MP.EFF_TO_DT;

