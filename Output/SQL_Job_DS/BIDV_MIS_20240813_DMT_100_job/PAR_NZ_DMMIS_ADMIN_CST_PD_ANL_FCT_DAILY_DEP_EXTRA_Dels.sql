SELECT 
\(9)\(9) TWT.CST_ID\(9)\(9)\(9)\(9)\(9)CST_ID
       , TWT.PD_ID\(9)\(9)\(9)\(9)\(9)PD_ID
\(9)   , NVL(PD_DIM.PD_TP, 'UNKNOWN')\(9)\(9)\(9)\(9)PD_TP
\(9)   , TWT.ORG_UNIT_ID 
       , NVL(CST_DIM.CST_DIM_ID, 999999)\(9)\(9)CST_DIM_ID
       , NVL(PD_DIM.PD_DIM_ID, 999999)\(9)\(9)\(9)PD_DIM_ID
       , NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)\(9)\(9)\(9)\(9)\(9)\(9)ORG_UNIT_DIM_ID
\(9)   , NVL(SLRY_TVR_SEG_DIM.SLRY_TVR_SEG_DIM_ID, 999999)\(9)\(9)\(9)SLRY_TVR_DIM_ID
       , NVL(GND_DIM.GND_DIM_ID, 999999)\(9)\(9)\(9)\(9)GND_DIM_ID
       , NVL(BRTH_AGE_SEG_DIM.AGE_SEG_DIM_ID, 0)\(9)\(9)CST_BRTH_AGE_SEG_DIM_ID
       , NVL(CST_DIM.CST_ADR, TWT.ADDR)\(9)\(9)\(9)\(9)\(9)ADDR
       , NVL(TMP_CST_SEG.OCP_DIM_ID, 999999)\(9)\(9)\(9)\(9)OCP_DIM_ID
       , NVL(TMP_CST_SEG.MAR_ST_DIM_ID, 999999)\(9)\(9)MAR_ST_DIM_ID
       , 999999\(9)\(9)\(9)\(9)\(9)CST_HIER_DIM_ID
       , NVL(TMP_CST_SEG.CST_LIFE_CYC_ST_DIM_ID, 999999)\(9)\(9)\(9)CST_LCS_TP_DIM_ID
       , NVL(TMP_CST_SEG.CST_TP_DIM_ID, 999999)\(9)\(9)\(9)\(9)\(9)\(9)CST_TP_DIM_ID
            , NVL(TMP_CST_SEG.CST_MKT_SEG_DIM_ID, 999999)\(9)\(9)CST_MKT_SEG_DIM_ID
\(9)   , NVL(NVL(CST_RLTNP_AGE_SEG.RLTNP_AGE_SEG_DIM_ID,MAX_RLTNP_AGE.RLTNP_AGE_SEG_DIM_ID) , 999999)\(9)\(9)CST_AGE_SEG_DIM_ID
       , NVL(CDR_DT_DIM.CDR_DT_DIM_ID, '999999')\(9)\(9)\(9)\(9)\(9)TM_PRD_DIM_ID
       , NVL(CST_OU_DIM.ORG_UNIT_DIM_ID, 999999)\(9)\(9)\(9)\(9)\(9)CST_ORG_UNIT_DIM_ID
       , NVL(TMP_CST_SEG.CR_RSK_RTG_DIM_ID, '999999')\(9)\(9)\(9)CR_RSK_RTG_DIM_ID
       , NVL(CR_LMT_BAL_SEG.CR_LMT_SEG_DIM_ID, 999999)\(9)\(9)\(9)\(9)CR_LMT_SEG_DIM_ID
       , NVL(TMP_CST_SEG.IDY_SML_ID_DIM_ID, '999999')\(9)\(9)\(9)\(9)IDY_SML_ID_DIM_ID
       , NVL(AST_BAL_SEG.BAL_SEG_DIM_ID, 999999)\(9)\(9)\(9)\(9)\(9)CST_AST_BAL_SEG_DIM_ID
       , NVL(LBY_BAL_SEG.BAL_SEG_DIM_ID, 999999)\(9)\(9)\(9)\(9)\(9)CST_LBY_BAL_SEG_DIM_ID
       , NVL(TMP_CST_SEG.CST_PERF_ST_DIM_ID, '999999')\(9)\(9)\(9)\(9)\(9)CST_PERF_ST_DIM_ID
       , NVL(TMP_CST_SEG.CST_OFCR_EMPE_DIM_ID,999999 )\(9)\(9)\(9)\(9)\(9)CST_RLTNP_OFCR_DIM_ID
       , NVL(SRC_STM_DIM.SRC_STM_DIM_ID, '999999')\(9)SRC_STM_DIM_ID
\(9)   
       , NVL(TWT.NBR_OF_AR_TDY, 0) \(9)\(9)NBR_OF_AR_TDY
       , NVL(TWT.NBR_OF_ACTIVE_AR_TDY, 0)\(9)\(9)NBR_OF_ACTIVE_AR_TDY
       , NVL(TWT.NBR_NEW_AR_TDY, 0) \(9)\(9)\(9)NBR_NEW_AR_TDY
       , NVL(TWT.NBR_CLS_AR_TDY\(9), 0) \(9)\(9)\(9)NBR_CLS_AR_TDY   
       , twt.TOT_AST_CLS_BAL_AMT_TDY_LCY
       , twt.TOT_LBY_CLS_BAL_AMT_TDY_LCY
       , TOT_AST_CLS_BAL_AMT_TDY_FCY
       , TOT_LBY_CLS_BAL_AMT_TDY_FCY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1 THEN NVL(PRE.TOT_AST_CLS_BAL_AMT_TDY_LCY, 0)\(9)ELSE NVL(PRE.TOT_AST_CLS_BAL_AMT_LMTH_LCY, 0)\(9)END       TOT_AST_CLS_BAL_AMT_LMTH_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1
\(9)   \(9) \(9)THEN NVL(PRE.TOT_AST_CLS_BAL_AMT_TDY_LCY, 0) ELSE NVL(PRE.TOT_AST_CLS_BAL_AMT_LQTR_LCY, 0)\(9)END     \(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)TOT_AST_CLS_BAL_AMT_LQTR_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1 THEN NVL(PRE.TOT_AST_CLS_BAL_AMT_TDY_LCY, 0) ELSE NVL(PRE.TOT_AST_CLS_BAL_AMT_LYR_LCY, 0) END    \(9)TOT_AST_CLS_BAL_AMT_LYR_LCY

\(9)          , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1 THEN NVL(PRE.TOT_LBY_CLS_BAL_AMT_TDY_LCY, 0) ELSE NVL(PRE.TOT_LBY_CLS_BAL_AMT_LMTH_LCY, 0)\(9)END     TOT_LBY_CLS_BAL_AMT_LMTH_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1
\(9)   \(9) \(9)THEN NVL(PRE.TOT_LBY_CLS_BAL_AMT_TDY_LCY, 0) ELSE NVL(PRE.TOT_LBY_CLS_BAL_AMT_LQTR_LCY, 0)\(9)END        \(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)TOT_LBY_CLS_BAL_AMT_LQTR_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1 THEN NVL(PRE.TOT_LBY_CLS_BAL_AMT_TDY_LCY, 0) ELSE NVL(PRE.TOT_LBY_CLS_BAL_AMT_LYR_LCY, 0) END\(9)     \(9)TOT_LBY_CLS_BAL_AMT_LYR_LCY


       , NVL(TWT_DEP.CST_PD_ST_CODE, TWT.CST_PD_ST_CODE)\(9)\(9)CST_PD_ST_CODE
\(9)   , TWT.CST_PD_ST_BRN_CODE\(9)\(9)CST_PD_ST_BRN_CODE
       , NVL(CST_PD_ST_BRN_DIM.CST_PD_ST_DIM_ID, 999999)\(9)\(9)CST_PD_ST_BRN_DIM_ID\(9)
\(9)   
       , NVL(CST_PD_ST_DIM.CST_PD_ST_DIM_ID, 999999)\(9)\(9)CST_PD_ST_DIM_ID
\(9)   , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.NBR_NEW_AR_TDY , 0) ELSE NVL(TWT.NBR_NEW_AR_TDY , 0)+ NVL(PRE.NBR_NEW_AR_MTD, 0) END\(9)\(9)NBR_NEW_AR_MTD  
\(9)   , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.NBR_CLS_AR_TDY , 0) ELSE NVL(TWT.NBR_CLS_AR_TDY , 0)+ NVL(PRE.NBR_CLS_AR_MTD, 0) END\(9)\(9)NBR_CLS_AR_MTD 
\(9)   , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.NBR_NEW_AR_TDY , 0)  ELSE NVL(TWT.NBR_NEW_AR_TDY , 0)+ NVL(PRE.NBR_NEW_AR_QTD, 0) END   \(9) NBR_NEW_AR_QTD  
\(9)   , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.NBR_CLS_AR_TDY , 0)  ELSE NVL(TWT.NBR_CLS_AR_TDY , 0)+ NVL(PRE.NBR_CLS_AR_QTD, 0) END\(9)\(9) NBR_CLS_AR_QTD 
\(9)   , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.NBR_NEW_AR_TDY , 0) ELSE NVL(TWT.NBR_NEW_AR_TDY , 0)+ NVL(PRE.NBR_NEW_AR_YTD, 0) END   NBR_NEW_AR_YTD  
\(9)   , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.NBR_CLS_AR_TDY , 0) ELSE NVL(TWT.NBR_CLS_AR_TDY , 0)+ NVL(PRE.NBR_CLS_AR_YTD, 0) END\(9)NBR_CLS_AR_YTD 
\(9)  , NVL(PD_USG_ST_DIM.PD_USG_ST_DIM_ID, 999999)\(9)\(9)PD_USG_ST_DIM_ID\(9)
\(9)    
\(9)\(9), NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0)\(9)\(9)\(9)TOT_FEE_INCM_AMT_TDY_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_FEE_INCM_AMT_MTD_LCY, 0) + NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0) END\(9)\(9)\(9)TOT_FEE_INCM_AMT_MTD_LCY
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)      THEN NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0) + NVL(PRE.TOT_FEE_INCM_AMT_QTD_LCY, 0)  END \(9)\(9)TOT_FEE_INCM_AMT_QTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0) ELSE \(9)NVL(TWT.TOT_FEE_INCM_AMT_TDY_LCY, 0) + \(9)NVL(PRE.TOT_FEE_INCM_AMT_YTD_LCY, 0)  END \(9)\(9)TOT_FEE_INCM_AMT_YTD_LCY
\(9)\(9)\(9)\(9)\(9)
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.NBR_OF_FNC_TXN_TDY , 0) ELSE NVL(TWT.NBR_OF_FNC_TXN_TDY , 0)+ NVL(PRE.NBR_OF_FNC_TXN_MTD, 0) END \(9)NBR_OF_FNC_TXN_MTD
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)\(9)\(9)THEN NVL(TWT.NBR_OF_FNC_TXN_TDY , 0)  ELSE NVL(TWT.NBR_OF_FNC_TXN_TDY , 0)+ NVL(PRE.NBR_OF_FNC_TXN_QTD, 0) END \(9)NBR_OF_FNC_TXN_QTD
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.NBR_OF_FNC_TXN_TDY , 0) ELSE NVL(TWT.NBR_OF_FNC_TXN_TDY , 0)+ NVL(PRE.NBR_OF_FNC_TXN_YTD, 0) END\(9)NBR_OF_FNC_TXN_YTD
\(9)\(9), twt.NBR_OF_FNC_TXN_TDY\(9)\(9)NBR_OF_FNC_TXN_TDY\(9)  
\(9)\(9)
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.NBR_OF_NFNC_TXN_TDY , 0) ELSE NVL(TWT.NBR_OF_NFNC_TXN_TDY , 0)+ NVL(PRE.NBR_OF_NFNC_TXN_MTD, 0) END \(9)NBR_OF_NFNC_TXN_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.NBR_OF_NFNC_TXN_TDY , 0)  ELSE NVL(TWT.NBR_OF_NFNC_TXN_TDY , 0)+ NVL(PRE.NBR_OF_NFNC_TXN_QTD, 0) END \(9)NBR_OF_NFNC_TXN_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.NBR_OF_NFNC_TXN_TDY , 0) ELSE NVL(TWT.NBR_OF_NFNC_TXN_TDY , 0)+ NVL(PRE.NBR_OF_NFNC_TXN_YTD, 0) END\(9)NBR_OF_NFNC_TXN_YTD
       , twt.NBR_OF_NFNC_TXN_TDY\(9)\(9)NBR_OF_NFNC_TXN_TDY\(9)

\(9)   
\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1 THEN NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0)\(9)ELSE NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0) + NVL(PRE.TOT_NBR_OF_CST_TXN_MTD, 0)\(9)END\(9)\(9)TOT_NBR_OF_CST_TXN_MTD
\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1  
\(9)\(9)THEN NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0)\(9)ELSE NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0) + NVL(PRE.TOT_NBR_OF_CST_TXN_QTD, 0)\(9)END\(9)\(9)TOT_NBR_OF_CST_TXN_QTD
\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1 THEN NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0)\(9)ELSE NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0) + NVL(PRE.TOT_NBR_OF_CST_TXN_YTD, 0)\(9)END\(9)\(9)TOT_NBR_OF_CST_TXN_YTD
\(9), NVL(TWT.TOT_NBR_OF_CST_TXN_TDY, 0)\(9)\(9)\(9)\(9)\(9)\(9)TOT_NBR_OF_CST_TXN_TDY
\(9)
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_CST_CR_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_CST_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_CST_CR_AMT_MTD_LCY, 0) END \(9)TOT_CST_CR_AMT_MTD_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_CST_CR_AMT_TDY_LCY , 0)  ELSE NVL(TWT.TOT_CST_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_CST_CR_AMT_QTD_LCY, 0) END \(9)TOT_CST_CR_AMT_QTD_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_CST_CR_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_CST_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_CST_CR_AMT_YTD_LCY, 0) END\(9)TOT_CST_CR_AMT_YTD_LCY
       , twt.TOT_CST_CR_AMT_TDY_LCY\(9)\(9)TOT_CST_CR_AMT_TDY_LCY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_CST_DB_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_CST_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_CST_DB_AMT_MTD_LCY, 0) END \(9)TOT_CST_DB_AMT_MTD_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_CST_DB_AMT_TDY_LCY , 0)  ELSE NVL(TWT.TOT_CST_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_CST_DB_AMT_QTD_LCY, 0) END \(9)TOT_CST_DB_AMT_QTD_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_CST_DB_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_CST_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_CST_DB_AMT_YTD_LCY, 0) END\(9)TOT_CST_DB_AMT_YTD_LCY
       , twt.TOT_CST_DB_AMT_TDY_LCY\(9)\(9)TOT_CST_DB_AMT_TDY_LCY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_OTHR_CR_AMT_TDY , 0) ELSE NVL(TWT.TOT_OTHR_CR_AMT_TDY , 0)+ NVL(PRE.TOT_OTHR_CR_AMT_MTD, 0) END \(9)TOT_OTHR_CR_AMT_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_OTHR_CR_AMT_TDY , 0)  ELSE NVL(TWT.TOT_OTHR_CR_AMT_TDY , 0)+ NVL(PRE.TOT_OTHR_CR_AMT_QTD, 0) END \(9)TOT_OTHR_CR_AMT_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_OTHR_CR_AMT_TDY , 0) ELSE NVL(TWT.TOT_OTHR_CR_AMT_TDY , 0)+ NVL(PRE.TOT_OTHR_CR_AMT_YTD, 0) END\(9)TOT_OTHR_CR_AMT_YTD
       , twt.TOT_OTHR_CR_AMT_TDY\(9)\(9)TOT_OTHR_CR_AMT_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_OTHR_DB_AMT_TDY , 0) ELSE NVL(TWT.TOT_OTHR_DB_AMT_TDY , 0)+ NVL(PRE.TOT_OTHR_DB_AMT_MTD, 0) END \(9)TOT_OTHR_DB_AMT_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_OTHR_DB_AMT_TDY , 0)  ELSE NVL(TWT.TOT_OTHR_DB_AMT_TDY , 0)+ NVL(PRE.TOT_OTHR_DB_AMT_QTD, 0) END \(9)TOT_OTHR_DB_AMT_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_OTHR_DB_AMT_TDY , 0) ELSE NVL(TWT.TOT_OTHR_DB_AMT_TDY , 0)+ NVL(PRE.TOT_OTHR_DB_AMT_YTD, 0) END\(9)TOT_OTHR_DB_AMT_YTD
       , twt.TOT_OTHR_DB_AMT_TDY\(9)\(9)TOT_OTHR_DB_AMT_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_CST_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_CST_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_CST_CR_MTD, 0) END \(9)TOT_NBR_OF_CST_CR_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_CST_CR_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_CST_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_CST_CR_QTD, 0) END \(9)TOT_NBR_OF_CST_CR_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_CST_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_CST_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_CST_CR_YTD, 0) END\(9)TOT_NBR_OF_CST_CR_YTD
       , twt.TOT_NBR_OF_CST_CR_TDY\(9)\(9)TOT_NBR_OF_CST_CR_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_CST_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_CST_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_CST_DB_MTD, 0) END \(9)TOT_NBR_OF_CST_DB_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_CST_DB_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_CST_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_CST_DB_QTD, 0) END \(9)TOT_NBR_OF_CST_DB_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_CST_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_CST_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_CST_DB_YTD, 0) END\(9)TOT_NBR_OF_CST_DB_YTD
       , twt.TOT_NBR_OF_CST_DB_TDY\(9)\(9)TOT_NBR_OF_CST_DB_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_OTHR_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_OTHR_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_OTHR_CR_MTD, 0) END \(9)TOT_NBR_OF_OTHR_CR_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_OTHR_CR_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_OTHR_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_OTHR_CR_QTD, 0) END \(9)TOT_NBR_OF_OTHR_CR_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_OTHR_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_OTHR_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_OTHR_CR_YTD, 0) END\(9)TOT_NBR_OF_OTHR_CR_YTD
       , twt.TOT_NBR_OF_OTHR_CR_TDY\(9)\(9)TOT_NBR_OF_OTHR_CR_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_OTHR_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_OTHR_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_OTHR_DB_MTD, 0) END \(9)TOT_NBR_OF_OTHR_DB_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_OTHR_DB_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_OTHR_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_OTHR_DB_QTD, 0) END \(9)TOT_NBR_OF_OTHR_DB_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_OTHR_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_OTHR_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_OTHR_DB_YTD, 0) END\(9)TOT_NBR_OF_OTHR_DB_YTD
       , twt.TOT_NBR_OF_OTHR_DB_TDY\(9)\(9)TOT_NBR_OF_OTHR_DB_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_ACTV_TXN_CR_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_ACTV_TXN_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_ACTV_TXN_CR_AMT_MTD_LCY, 0) END \(9)TOT_ACTV_TXN_CR_AMT_MTD_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_ACTV_TXN_CR_AMT_TDY_LCY , 0)  ELSE NVL(TWT.TOT_ACTV_TXN_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_ACTV_TXN_CR_AMT_QTD_LCY, 0) END \(9)TOT_ACTV_TXN_CR_AMT_QTD_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_ACTV_TXN_CR_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_ACTV_TXN_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_ACTV_TXN_CR_AMT_YTD_LCY, 0) END\(9)TOT_ACTV_TXN_CR_AMT_YTD_LCY
       , twt.TOT_ACTV_TXN_CR_AMT_TDY_LCY\(9)\(9)TOT_ACTV_TXN_CR_AMT_TDY_LCY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_PASSIVE_TXN_CR_AMT_MTD_LCY, 0) END \(9)TOT_PASSIVE_TXN_CR_AMT_MTD_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY , 0)  ELSE NVL(TWT.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_PASSIVE_TXN_CR_AMT_QTD_LCY, 0) END \(9)TOT_PASSIVE_TXN_CR_AMT_QTD_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_PASSIVE_TXN_CR_AMT_YTD_LCY, 0) END\(9)TOT_PASSIVE_TXN_CR_AMT_YTD_LCY
       , twt.TOT_PASSIVE_TXN_CR_AMT_TDY_LCY\(9)\(9)TOT_PASSIVE_TXN_CR_AMT_TDY_LCY\(9)   

       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_ACTV_TXN_DB_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_ACTV_TXN_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_ACTV_TXN_DB_AMT_MTD_LCY, 0) END \(9)TOT_ACTV_TXN_DB_AMT_MTD_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_ACTV_TXN_DB_AMT_TDY_LCY , 0)  ELSE NVL(TWT.TOT_ACTV_TXN_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_ACTV_TXN_DB_AMT_QTD_LCY, 0) END \(9)TOT_ACTV_TXN_DB_AMT_QTD_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_ACTV_TXN_DB_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_ACTV_TXN_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_ACTV_TXN_DB_AMT_YTD_LCY, 0) END\(9)TOT_ACTV_TXN_DB_AMT_YTD_LCY
       , twt.TOT_ACTV_TXN_DB_AMT_TDY_LCY\(9)\(9)TOT_ACTV_TXN_DB_AMT_TDY_LCY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_PASSIVE_TXN_DB_AMT_MTD_LCY, 0) END \(9)TOT_PASSIVE_TXN_DB_AMT_MTD_LCY
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY , 0)  ELSE NVL(TWT.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_PASSIVE_TXN_DB_AMT_QTD_LCY, 0) END \(9)TOT_PASSIVE_TXN_DB_AMT_QTD_LCY
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY , 0) ELSE NVL(TWT.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY , 0)+ NVL(PRE.TOT_PASSIVE_TXN_DB_AMT_YTD_LCY, 0) END\(9)TOT_PASSIVE_TXN_DB_AMT_YTD_LCY
       , twt.TOT_PASSIVE_TXN_DB_AMT_TDY_LCY\(9)\(9)TOT_PASSIVE_TXN_DB_AMT_TDY_LCY\(9)
 
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_ACTV_TXN_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_ACTV_TXN_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_ACTV_TXN_CR_MTD, 0) END \(9)TOT_NBR_OF_ACTV_TXN_CR_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_ACTV_TXN_CR_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_ACTV_TXN_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_ACTV_TXN_CR_QTD, 0) END \(9)TOT_NBR_OF_ACTV_TXN_CR_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_ACTV_TXN_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_ACTV_TXN_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_ACTV_TXN_CR_YTD, 0) END\(9)TOT_NBR_OF_ACTV_TXN_CR_YTD
       , twt.TOT_NBR_OF_ACTV_TXN_CR_TDY\(9)\(9)TOT_NBR_OF_ACTV_TXN_CR_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_PASSIVE_TXN_CR_MTD, 0) END \(9)TOT_NBR_OF_PASSIVE_TXN_CR_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_CR_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_PASSIVE_TXN_CR_QTD, 0) END \(9)TOT_NBR_OF_PASSIVE_TXN_CR_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_CR_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_CR_TDY , 0)+ NVL(PRE.TOT_NBR_OF_PASSIVE_TXN_CR_YTD, 0) END\(9)TOT_NBR_OF_PASSIVE_TXN_CR_YTD
       , twt.TOT_NBR_OF_PASSIVE_TXN_CR_TDY\(9)\(9)TOT_NBR_OF_PASSIVE_TXN_CR_TDY\(9)   

       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_ACTV_TXN_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_ACTV_TXN_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_ACTV_TXN_DB_MTD, 0) END \(9)TOT_NBR_OF_ACTV_TXN_DB_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_ACTV_TXN_DB_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_ACTV_TXN_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_ACTV_TXN_DB_QTD, 0) END \(9)TOT_NBR_OF_ACTV_TXN_DB_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_ACTV_TXN_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_ACTV_TXN_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_ACTV_TXN_DB_YTD, 0) END\(9)TOT_NBR_OF_ACTV_TXN_DB_YTD
       , twt.TOT_NBR_OF_ACTV_TXN_DB_TDY\(9)\(9)TOT_NBR_OF_ACTV_TXN_DB_TDY
\(9)   
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)then NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_PASSIVE_TXN_DB_MTD, 0) END \(9)TOT_NBR_OF_PASSIVE_TXN_DB_MTD
       , CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)     THEN NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_DB_TDY , 0)  ELSE NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_PASSIVE_TXN_DB_QTD, 0) END \(9)TOT_NBR_OF_PASSIVE_TXN_DB_QTD
       , CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_DB_TDY , 0) ELSE NVL(TWT.TOT_NBR_OF_PASSIVE_TXN_DB_TDY , 0)+ NVL(PRE.TOT_NBR_OF_PASSIVE_TXN_DB_YTD, 0) END\(9)TOT_NBR_OF_PASSIVE_TXN_DB_YTD
       , twt.TOT_NBR_OF_PASSIVE_TXN_DB_TDY\(9)\(9)TOT_NBR_OF_PASSIVE_TXN_DB_TDY\(9)

\(9)\(9), CASE WHEN TWT_DEP.CLS_PD_IND = 1 THEN 'Y' ELSE 'N' END\(9)\(9)CLS_PD_IND

\(9)\(9), NVL(CTY_DIM.CTY_DIM_ID,'999999')\(9)\(9)\(9)\(9)\(9)CTY_OF_RSDNC_DIM_ID
\(9)\(9), NVL(EMPE_DIM.EMPE_DIM_ID, '999999')\(9)\(9)\(9)\(9)\(9)EMPE_DIM_ID
\(9)   
\(9)\(9), TWT.NBR_OF_DYS_HTD \(9)\(9)NBR_OF_DYS_HTD
\(9)\(9), TWT.NBR_OF_DYS_MTD \(9)\(9)NBR_OF_DYS_MTD 
\(9)\(9), TWT.NBR_OF_DYS_QTD\(9)   \(9)NBR_OF_DYS_QTD 
\(9)\(9), TWT.NBR_OF_DYS_YTD\(9)\(9)NBR_OF_DYS_YTD \(9) \(9)
\(9)\(9)\(9)\(9)\(9)\(9)\(9)
\(9)\(9), CASE WHEN TWT.TOT_NBR_OF_CST_TXN_TDY > 0 THEN\(9) TO_NUMBER(CDR_DT_DIM.CDR_DT_DIM_ID, 9999999)  ELSE PRE.LAST_CST_TXN_DT_DIM_ID END LAST_CST_TXN_DT_DIM_ID\(9)\(9)
\(9)\(9), NVL(twt.NBR_OF_OD_AC, 0)     NBR_OF_OD_AC
\(9)\(9), NVL(TWT_DEP.SLRY_CR_TXN_IND, 'N')       SLRY_CR_TXN_IND

\(9)\(9), NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0)\(9)\(9)\(9)TOT_AST_ACR_INT_AMT_TDY_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_AST_ACR_INT_AMT_MTD_LCY, 0) + NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0) END\(9)\(9)\(9)TOT_AST_ACR_INT_AMT_MTD_LCY
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)      THEN NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0) + NVL(PRE.TOT_AST_ACR_INT_AMT_QTD_LCY, 0)  END \(9)\(9)TOT_AST_ACR_INT_AMT_QTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0) ELSE \(9)NVL(TWT.TOT_AST_ACR_INT_AMT_TDY_LCY, 0) + \(9)NVL(PRE.TOT_AST_ACR_INT_AMT_YTD_LCY, 0)  END \(9)\(9)TOT_AST_ACR_INT_AMT_YTD_LCY

\(9)\(9), NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0)\(9)\(9)\(9)TOT_LBY_ACR_INT_AMT_TDY_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_LBY_ACR_INT_AMT_MTD_LCY, 0) + NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0) END\(9)\(9)\(9)TOT_LBY_ACR_INT_AMT_MTD_LCY
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)      THEN NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0) + NVL(PRE.TOT_LBY_ACR_INT_AMT_QTD_LCY, 0)  END \(9)\(9)TOT_LBY_ACR_INT_AMT_QTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0) ELSE \(9)NVL(TWT.TOT_LBY_ACR_INT_AMT_TDY_LCY, 0) + \(9)NVL(PRE.TOT_LBY_ACR_INT_AMT_YTD_LCY, 0)  END \(9)\(9)TOT_LBY_ACR_INT_AMT_YTD_LCY

\(9)\(9), NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0)\(9)\(9)\(9)TOT_AST_INT_PYMT_AMT_TDY_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_AST_INT_PYMT_AMT_MTD_LCY, 0) + NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0) END\(9)\(9)\(9)TOT_AST_INT_PYMT_AMT_MTD_LCY
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)      THEN NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0) + NVL(PRE.TOT_AST_INT_PYMT_AMT_QTD_LCY, 0)  END \(9)\(9)TOT_AST_INT_PYMT_AMT_QTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0) ELSE \(9)NVL(TWT.TOT_AST_INT_PYMT_AMT_TDY_LCY, 0) + \(9)NVL(PRE.TOT_AST_INT_PYMT_AMT_YTD_LCY, 0)  END \(9)\(9)TOT_AST_INT_PYMT_AMT_YTD_LCY
\(9)\(9), NVL(TMP_CST_SEG.CST_CRT_DEPT_DIM_ID, 999999)\(9)\(9)CST_CRT_DEPT_DIM_ID
\(9)\(9), NVL(TMP_CST_SEG.CST_MGT_DEPT_DIM_ID, 999999)\(9)\(9)CST_MGT_DEPT_DIM_ID
\(9)\(9), NVL(TMP_CST_SEG.CST_SEG_DIM_ID, 999999)\(9)\(9)\(9)CST_SEG_DIM_ID

\(9)\(9), NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0)\(9)\(9)\(9)TOT_LBY_INT_PYMT_AMT_TDY_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_LBY_INT_PYMT_AMT_MTD_LCY, 0) + NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0) END\(9)\(9)\(9)TOT_LBY_INT_PYMT_AMT_MTD_LCY
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)      THEN NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0) + NVL(PRE.TOT_LBY_INT_PYMT_AMT_QTD_LCY, 0)  END \(9)\(9)TOT_LBY_INT_PYMT_AMT_QTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0) ELSE \(9)NVL(TWT.TOT_LBY_INT_PYMT_AMT_TDY_LCY, 0) + \(9)NVL(PRE.TOT_LBY_INT_PYMT_AMT_YTD_LCY, 0)  END \(9)\(9)TOT_LBY_INT_PYMT_AMT_YTD_LCY

\(9)\(9), NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0)\(9)\(9)\(9)TOT_LBY_ACR_PNY_INT_TDY_LCY
\(9)\(9), NVL(TWT.TOT_LBY_ACR_PNY_INT_PTD_LCY, 0)\(9)\(9)\(9)TOT_LBY_ACR_PNY_INT_PTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1\(9)THEN NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_LBY_ACR_PNY_INT_MTD_LCY, 0) + NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0) END\(9)\(9)\(9)TOT_LBY_ACR_PNY_INT_MTD_LCY
\(9)\(9), CASE WHEN TO_NUMBER(extract (day from TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') - date_trunc('quarter', TO_DATE(SYS.PARAM_VALUE,'YYYYDDD'))),99) + 1 = 1 
\(9)      THEN NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0) + NVL(PRE.TOT_LBY_ACR_PNY_INT_QTD_LCY, 0)  END \(9)\(9)TOT_LBY_ACR_PNY_INT_QTD_LCY
\(9)\(9), CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1\(9)THEN NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0) ELSE \(9)NVL(TWT.TOT_LBY_ACR_PNY_INT_TDY_LCY, 0) + \(9)NVL(PRE.TOT_LBY_ACR_PNY_INT_YTD_LCY, 0)  END \(9)\(9)TOT_LBY_ACR_PNY_INT_YTD_LCY


FROM TWT_CST_PD_ANL_DEP_EXTRA  TWT
LEFT JOIN (
\(9)SELECT DISTINCT T.CST_ID,  T.PD_ID, T.SRC_STM_ID, T.SLRY_CR_TXN_IND, T.CST_PD_ST_CODE, CLS_PD_IND
\(9)FROM TWT_CST_PD_ANL_DEP T
)TWT_DEP ON TWT_DEP.CST_ID = TWT.CST_ID AND TWT_DEP.SRC_STM_ID = TWT.SRC_STM_ID AND TWT_DEP.PD_ID = TWT.PD_ID
LEFT JOIN \(9)\(9)CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
LEFT JOIN \(9)\(9)CDR_DT_DIM CDR_DT_DIM ON TWT.TM_PRD_ID = CDR_DT_DIM.CDR_DT_DIM_ID

LEFT JOIN  \(9)\(9)CST_DIM CST_DIM \(9)\(9)\(9)ON CST_DIM.CST_ID = twt.CST_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_DIM.EFF_FM_DT AND CST_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)OU_DIM OU_DIM \(9)\(9)\(9)\(9)ON TWT.ORG_UNIT_ID = OU_DIM.ORG_UNIT_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= OU_DIM.EFF_FM_DT AND OU_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)OU_DIM CST_OU_DIM \(9)\(9)\(9)\(9)ON TWT.CST_ORG_UNIT_ID = CST_OU_DIM.ORG_UNIT_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_OU_DIM.EFF_FM_DT AND CST_OU_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)SRC_STM_DIM SRC_STM_DIM\(9)ON SRC_STM_DIM.LVL_0_ID\(9)= TWT.SRC_STM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SRC_STM_DIM.EFF_FM_DT AND SRC_STM_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)EMPE_DIM EMPE_DIM\(9)\(9)\(9)ON EMPE_DIM.EMPE_ID = TWT.EMPE_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= EMPE_DIM.EFF_FM_DT AND EMPE_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)CTY_DIM CTY_DIM\(9)\(9)\(9)\(9)ON CTY_DIM.LVL_0_ID = TWT.CTY_OF_RSDNC_DIM_ID  AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CTY_DIM.EFF_FM_DT AND CTY_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT  JOIN \(9)\(9)PD_DIM PD_DIM\(9)\(9)\(9)ON PD_DIM.PD_ID = TWT.PD_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= PD_DIM.EFF_FM_DT AND PD_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)GND_DIM GND_DIM\(9)\(9)\(9)\(9)ON GND_DIM.LVL_0_ID = TWT.GND_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= GND_DIM.EFF_FM_DT AND GND_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN \(9)\(9)BRTH_AGE_SEG_DIM\(9)BRTH_AGE_SEG_DIM\(9)\(9)\(9)ON  BRTH_AGE_SEG_DIM.LVL_0_ID = TWT.CST_BRTH_AGE_SEG_ID\(9)AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= BRTH_AGE_SEG_DIM.EFF_FM_DT AND BRTH_AGE_SEG_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)CST_RLTNP_AGE_SEG_DIM CST_RLTNP_AGE_SEG\(9)\(9)\(9)\(9)\(9)ON \(9)CST_RLTNP_AGE_SEG.LVL_0_ID = TWT.CST_AGE_SEG_ID\(9)\(9)AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_RLTNP_AGE_SEG.EFF_FM_DT AND CST_RLTNP_AGE_SEG.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)(SELECT T1.LVL_0_ID, T2.RLTNP_AGE_SEG_DIM_ID  FROM (
                        SELECT MAX(LVL_0_ID) LVL_0_ID  FROM CST_RLTNP_AGE_SEG_DIM  T
                        INNER JOIN CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE' AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= T.EFF_FM_DT AND T.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
                    ) T1
                INNER JOIN CST_RLTNP_AGE_SEG_DIM T2 ON T1.LVL_0_ID = T2.LVL_0_ID )  MAX_RLTNP_AGE\(9)\(9)\(9)ON   TWT.CST_AGE_SEG_ID > MAX_RLTNP_AGE.LVL_0_ID
LEFT JOIN \(9)\(9)CST_PD_ST_DIM ON CST_PD_ST_DIM.LVL_0_CODE = NVL(TWT_DEP.CST_PD_ST_CODE, TWT.CST_PD_ST_CODE) AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_PD_ST_DIM.EFF_FM_DT AND CST_PD_ST_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN \(9)\(9)CST_PD_ST_DIM  CST_PD_ST_BRN_DIM  ON CST_PD_ST_BRN_DIM.LVL_0_CODE = TWT.CST_PD_ST_BRN_CODE AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_PD_ST_BRN_DIM.EFF_FM_DT AND CST_PD_ST_BRN_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN  BAL_SEG_DIM   AST_BAL_SEG ON TWT.CST_AST_BAL_SEG_ID >= AST_BAL_SEG.MIN_BAL AND TWT.CST_AST_BAL_SEG_ID < AST_BAL_SEG.MAX_BAL 
\(9)AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= AST_BAL_SEG.EFF_FM_DT AND AST_BAL_SEG.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN BAL_SEG_DIM   LBY_BAL_SEG ON TWT.CST_AST_BAL_SEG_ID >= LBY_BAL_SEG.MIN_BAL AND TWT.CST_AST_BAL_SEG_ID < LBY_BAL_SEG.MAX_BAL 
\(9)AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= LBY_BAL_SEG.EFF_FM_DT AND LBY_BAL_SEG.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN  CR_LMT_SEG_DIM CR_LMT_BAL_SEG ON TWT.CR_LMT_SEG_ID >= CR_LMT_BAL_SEG.MIN_BAL AND TWT.CR_LMT_SEG_ID < CR_LMT_BAL_SEG.MAX_BAL 
\(9)AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CR_LMT_BAL_SEG.EFF_FM_DT AND CR_LMT_BAL_SEG.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')


LEFT JOIN (SELECT 
\(9)\(9)\(9)\(9)CST_ID, 
\(9)\(9)\(9)\(9)PD_ID,
\(9)\(9)\(9)\(9)NBR_NEW_AR_MTD,
\(9)\(9)\(9)\(9)NBR_NEW_AR_QTD,
\(9)\(9)\(9)\(9)NBR_NEW_AR_YTD,
\(9)\(9)\(9)\(9)NBR_CLS_AR_MTD,
\(9)\(9)\(9)\(9)NBR_CLS_AR_QTD,
\(9)\(9)\(9)\(9)NBR_CLS_AR_YTD,
\(9)\(9)\(9)\(9)TOT_FEE_INCM_AMT_MTD_LCY,
\(9)\(9)\(9)\(9)TOT_FEE_INCM_AMT_QTD_LCY,
\(9)\(9)\(9)\(9)TOT_FEE_INCM_AMT_YTD_LCY,
\(9)\(9)\(9)    TOT_CST_CR_AMT_MTD_LCY
\(9)\(9)\(9)\(9), TOT_CST_CR_AMT_QTD_LCY
\(9)\(9)\(9)\(9), TOT_CST_CR_AMT_YTD_LCY
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_CST_DB_AMT_MTD_LCY
\(9)\(9)\(9)\(9), TOT_CST_DB_AMT_QTD_LCY
\(9)\(9)\(9)\(9), TOT_CST_DB_AMT_YTD_LCY
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_OTHR_CR_AMT_MTD
\(9)\(9)\(9)\(9), TOT_OTHR_CR_AMT_QTD
\(9)\(9)\(9)\(9), TOT_OTHR_CR_AMT_YTD
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_OTHR_DB_AMT_MTD
\(9)\(9)\(9)\(9), TOT_OTHR_DB_AMT_QTD
\(9)\(9)\(9)\(9), TOT_OTHR_DB_AMT_YTD
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_NBR_OF_CST_CR_MTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_CST_CR_QTD
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_NBR_OF_CST_CR_YTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_CST_DB_MTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_CST_DB_QTD
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_NBR_OF_CST_DB_YTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_OTHR_CR_MTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_OTHR_CR_QTD
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_NBR_OF_OTHR_CR_YTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_OTHR_DB_MTD
\(9)\(9)\(9)\(9), TOT_NBR_OF_OTHR_DB_QTD
\(9)\(9)\(9)
\(9)\(9)\(9)\(9), TOT_NBR_OF_OTHR_DB_YTD
\(9)
\(9)\(9)\(9), NBR_OF_FNC_TXN_MTD
\(9)\(9)\(9), NBR_OF_FNC_TXN_QTD
\(9)\(9)\(9), NBR_OF_FNC_TXN_YTD
\(9)
\(9)\(9)\(9), NBR_OF_NFNC_TXN_MTD
\(9)\(9)\(9), NBR_OF_NFNC_TXN_QTD
\(9)\(9)\(9), NBR_OF_NFNC_TXN_YTD
\(9)\(9)\(9), TOT_NBR_OF_CST_TXN_MTD
\(9)\(9)\(9), TOT_NBR_OF_CST_TXN_QTD
\(9)\(9)\(9), TOT_NBR_OF_CST_TXN_YTD
\(9)\(9)\(9), TOT_ACTV_TXN_CR_AMT_MTD_LCY
\(9)\(9)\(9), TOT_ACTV_TXN_CR_AMT_QTD_LCY
\(9)\(9)\(9), TOT_ACTV_TXN_CR_AMT_YTD_LCY
\(9)\(9)\(9), TOT_ACTV_TXN_DB_AMT_MTD_LCY
\(9)\(9)\(9), TOT_ACTV_TXN_DB_AMT_QTD_LCY
\(9)\(9)\(9), TOT_ACTV_TXN_DB_AMT_YTD_LCY
\(9)\(9)\(9), TOT_PASSIVE_TXN_CR_AMT_MTD_LCY
\(9)\(9)\(9), TOT_PASSIVE_TXN_CR_AMT_QTD_LCY
\(9)\(9)\(9), TOT_PASSIVE_TXN_CR_AMT_YTD_LCY
\(9)\(9)
\(9)\(9)\(9), TOT_PASSIVE_TXN_DB_AMT_MTD_LCY
\(9)\(9)\(9), TOT_PASSIVE_TXN_DB_AMT_QTD_LCY
\(9)\(9)\(9), TOT_PASSIVE_TXN_DB_AMT_YTD_LCY
\(9)\(9)
\(9)\(9)\(9), TOT_NBR_OF_ACTV_TXN_CR_MTD
\(9)\(9)\(9), TOT_NBR_OF_ACTV_TXN_CR_QTD
\(9)\(9)\(9), TOT_NBR_OF_ACTV_TXN_CR_YTD
\(9)\(9)
\(9)\(9)\(9), TOT_NBR_OF_ACTV_TXN_DB_MTD
\(9)\(9)\(9), TOT_NBR_OF_ACTV_TXN_DB_QTD
\(9)\(9)
\(9)\(9)\(9), TOT_NBR_OF_ACTV_TXN_DB_YTD
\(9)\(9)\(9), TOT_NBR_OF_PASSIVE_TXN_CR_MTD
\(9)\(9)\(9), TOT_NBR_OF_PASSIVE_TXN_CR_QTD
\(9)\(9)\(9), TOT_NBR_OF_PASSIVE_TXN_CR_YTD
\(9)\(9)
\(9)\(9)\(9), TOT_NBR_OF_PASSIVE_TXN_DB_MTD
\(9)\(9)\(9), TOT_NBR_OF_PASSIVE_TXN_DB_QTD
\(9)\(9)\(9), TOT_NBR_OF_PASSIVE_TXN_DB_YTD\(9)\(9)\(9)
\(9)\(9)\(9), ORG_UNIT_ID
\(9)\(9)\(9), LAST_CST_TXN_DT_DIM_ID
\(9)\(9)\(9), F.SRC_STM_DIM_ID
\(9)\(9)\(9), TOT_AST_ACR_INT_AMT_MTD_LCY
\(9)\(9)\(9), TOT_AST_ACR_INT_AMT_QTD_LCY
\(9)\(9)\(9), TOT_AST_ACR_INT_AMT_YTD_LCY
\(9)\(9)\(9), TOT_AST_INT_PYMT_AMT_MTD_LCY
\(9)\(9)\(9), TOT_AST_INT_PYMT_AMT_QTD_LCY
\(9)\(9)\(9), TOT_AST_INT_PYMT_AMT_YTD_LCY
\(9)\(9)\(9), TOT_LBY_ACR_INT_AMT_MTD_LCY
\(9)\(9)\(9), TOT_LBY_ACR_INT_AMT_QTD_LCY
\(9)\(9)\(9), TOT_LBY_ACR_INT_AMT_YTD_LCY
\(9)\(9)\(9), TOT_LBY_INT_PYMT_AMT_MTD_LCY
\(9)\(9)\(9), TOT_LBY_INT_PYMT_AMT_QTD_LCY
\(9)\(9)\(9), TOT_LBY_INT_PYMT_AMT_YTD_LCY
\(9)\(9)\(9), TOT_LBY_ACR_PNY_INT_MTD_LCY
\(9)\(9)\(9), TOT_LBY_ACR_PNY_INT_QTD_LCY
\(9)\(9)\(9), TOT_LBY_ACR_PNY_INT_YTD_LCY
\(9)\(9)\(9), TOT_AST_CLS_BAL_AMT_TDY_LCY
       \(9)\(9), TOT_LBY_CLS_BAL_AMT_TDY_LCY
\(9)\(9)\(9), TOT_AST_CLS_BAL_AMT_LMTH_LCY
\(9)\(9)\(9), TOT_AST_CLS_BAL_AMT_LQTR_LCY
\(9)\(9)\(9), TOT_AST_CLS_BAL_AMT_LYR_LCY
\(9)\(9)\(9), TOT_LBY_CLS_BAL_AMT_LMTH_LCY
\(9)\(9)\(9), TOT_LBY_CLS_BAL_AMT_LQTR_LCY
\(9)\(9)\(9), TOT_LBY_CLS_BAL_AMT_LYR_LCY
\(9)FROM CST_PD_ANL_FCT_PREDAY F
\(9)INNER JOIN SRC_STM_DIM ON SRC_STM_DIM.SRC_STM_DIM_ID = F.SRC_STM_DIM_ID AND SRC_STM_DIM.LVL_0_CODE IN ('SIBS_CDMAST', 'SIBS_DDMAST')
) PRE  ON  PRE.CST_ID = TWT.CST_ID    AND PRE.PD_ID = TWT.PD_ID AND PRE.ORG_UNIT_ID = TWT.ORG_UNIT_ID   AND PRE.SRC_STM_DIM_ID = SRC_STM_DIM.SRC_STM_DIM_ID 


LEFT JOIN SLRY_TVR_SEG_DIM ON TWT.SLRY_TVR_ID >= SLRY_TVR_SEG_DIM.MIN_BAL AND TWT.SLRY_TVR_ID < SLRY_TVR_SEG_DIM.MAX_BAL 
\(9)AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SLRY_TVR_SEG_DIM.EFF_FM_DT AND SLRY_TVR_SEG_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
LEFT JOIN \(9)\(9)(
\(9)\(9)SELECT 
\(9)\(9)\(9)CASE WHEN TWT.CST_PD_ST_BRN_CODE NOT IN ('CLOSE ALL', 'CLOSE ALL TODAY') THEN (
\(9)\(9)\(9)\(9)CASE WHEN (SRC_STM_DIM.LVL_0_CODE = 'SIBS_DDMAST' AND PD_DIM.LVL_3_CODE <> 300002 ) THEN (
\(9)\(9)\(9)\(9)\(9)CASE \(9)WHEN (NVL(TWT.TOT_AST_CLS_BAL_AMT_TDY_LCY, 0) > 0 OR  (NVL(TWT.TOT_LBY_CLS_BAL_AMT_TDY_LCY, 0) > 0))  OR NVL(TWT.LAST_CST_TXN_DT_DIM_ID, FCT_PRE.LAST_CST_TXN_DT_DIM_ID) >= TO_NUMBER(TO_CHAR(add_months(TO_DATE(SYS.PARAM_VALUE, 'YYYYDDD'), -6), 'YYYYDDD'), 9999999) THEN 'USING'
\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)\(9)ELSE 'DORMANT'
\(9)\(9)\(9)\(9)\(9)END)
\(9)\(9)\(9)\(9)ELSE 'USING'
\(9)\(9)\(9)\(9)END )
\(9)\(9)\(9)ELSE 'UNKNOWN'
\(9)\(9)\(9)END\(9)\(9)\(9)PD_USG_ST_CODE,
\(9)\(9)\(9)TWT.CST_ID,
\(9)\(9)\(9)TWT.PD_ID, 
\(9)\(9)\(9)TWT.ORG_UNIT_ID,
\(9)\(9)\(9)TWT.SRC_STM_ID
\(9)\(9)FROM TWT_CST_PD_ANL_DEP TWT
\(9)\(9)INNER JOIN \(9)\(9)CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
\(9)\(9)LEFT JOIN SRC_STM_DIM SRC_STM_DIM\(9)ON SRC_STM_DIM.LVL_0_ID\(9)= TWT.SRC_STM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= SRC_STM_DIM.EFF_FM_DT AND SRC_STM_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
\(9)\(9)LEFT  JOIN PD_DIM PD_DIM\(9)\(9)\(9)ON PD_DIM.PD_ID = TWT.PD_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= PD_DIM.EFF_FM_DT AND PD_DIM.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
\(9)\(9)LEFT JOIN CST_PD_ANL_FCT_PREDAY FCT_PRE ON   FCT_PRE.CST_ID = TWT.CST_ID AND FCT_PRE.PD_ID = TWT.PD_ID AND FCT_PRE.ORG_UNIT_ID = TWT.ORG_UNIT_ID  AND FCT_PRE.SRC_STM_DIM_ID = SRC_STM_DIM.SRC_STM_DIM_ID 
)  PD_USG_ST ON PD_USG_ST.CST_ID = TWT.CST_ID AND PD_USG_ST.PD_ID = TWT.PD_ID AND PD_USG_ST.ORG_UNIT_ID = TWT.ORG_UNIT_ID AND PD_USG_ST.SRC_STM_ID = TWT.SRC_STM_ID 

LEFT JOIN PD_USG_ST_DIM ON PD_USG_ST_DIM.LVL_0_CODE = PD_USG_ST.PD_USG_ST_CODE AND PD_USG_ST_DIM.EFF_FM_DT <= TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') AND PD_USG_ST_DIM.EFF_TO_DT > TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')

LEFT JOIN TMP_CST_SEG ON TMP_CST_SEG.CST_ID = TWT.CST_ID AND TMP_CST_SEG.TM_PRD_ID = TWT.TM_PRD_ID;

