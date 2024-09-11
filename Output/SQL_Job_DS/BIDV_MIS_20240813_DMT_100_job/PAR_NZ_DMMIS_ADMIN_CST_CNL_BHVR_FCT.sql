SELECT NVL(CTY_DIM.CTY_DIM_ID,'999999') 				CTY_OF_RSDNC_DIM_ID
       , NVL(BRTH_AGE_SEG_DIM.AGE_SEG_DIM_ID,999999) 	CST_BRTH_AGE_SEG_DIM_ID				
       , NVL(EMPE_DIM.EMPE_DIM_ID,'999999') 				CST_RLTNP_OFCR_DIM_ID
       , NVL(SLRY_TVR_SEG_DIM.SLRY_TVR_SEG_DIM_ID,999999) 		CST_SLRY_TVR_SEG_DIM_ID			
       , NVL(CNL_TP_DIM.CNL_TP_DIM_ID,'999999') 				CNL_TP_DIM_ID                
       , NVL(CST_LC_ST_DIM.CST_LIFE_CYC_ST_DIM_ID,'999999') 	CST_LIFE_CYC_ST_DIM_ID
       , NVL(TMP_CST_SEG.CST_MKT_SEG_DIM_ID, 999999) 			CST_MKT_SEG_DIM_ID
       , NVL(CST_DIM.CST_DIM_ID,'999999') 						CST_DIM_ID
       , TWT.TM_PRD_DIM_ID 										TM_PRD_DIM_ID
       , NVL(GND_DIM.GND_DIM_ID,'999999') 						GND_DIM_ID
       , NVL(IDY_CL_DIM.IDY_SML_ID_DIM_ID,'999999') 			IDY_SML_ID_DIM_ID
       , NVL(MAR_ST_DIM.MAR_ST_DIM_ID,'999999') 				MAR_ST_DIM_ID
	   , NVL(OCP_DIM.OCP_DIM_ID,'999999') 						OCP_DIM_ID
	   , NVL(CCY_DIM.CCY_DM_ID, '999999')						CCY_DIM_ID
       , NVL(TMP_CST_SEG.CST_TP_DIM_ID, 999999)                          CST_TP_DIM_ID
       ,  SUM(NVL(NBR_OF_EXP_TXN_TDY, 0))						NBR_OF_EXP_TXN_TDY
	   , SUM(NVL(NBR_OF_FAIL_TXN_TDY, 0))						NBR_OF_FAIL_TXN_TDY					
		, SUM(NVL(NBR_OF_SCSS_TXN_TDY, 0))						NBR_OF_SCSS_TXN_TDY
		, SUM(NVL(NBR_OF_FNC_TXN_TDY, 0))						NBR_OF_FNC_TXN_TDY
		, SUM(NVL(NBR_OF_NFNC_TXN_TDY, 0))						NBR_OF_NFNC_TXN_TDY
		, SUM(NVL(NBR_OF_OTHR_CR_TDY, 0))						NBR_OF_OTHR_CR_TDY
		, SUM(NVL(NBR_OF_OTHR_DB_TDY, 0))						NBR_OF_OTHR_DB_TDY
		, SUM(NVL(NBR_OF_ACTV_TXN_DB_TDY, 0))					NBR_OF_ACTV_TXN_DB_TDY
		, SUM(NVL(NBR_OF_ACTV_TXN_CR_TDY, 0))					NBR_OF_ACTV_TXN_CR_TDY
		, SUM(NVL(NBR_OF_PASSIVE_TXN_DB_TDY, 0))				NBR_OF_PASSIVE_TXN_DB_TDY
		, SUM(NVL(NBR_OF_PASSIVE_TXN_CR_TDY, 0))				NBR_OF_PASSIVE_TXN_CR_TDY
		
		, SUM(NVL(ACTV_TXN_CR_AMT_TDY_LCY, 0))					ACTV_TXN_CR_AMT_TDY_LCY
		, SUM(NVL(ACTV_TXN_DB_AMT_TDY_LCY, 0))					ACTV_TXN_DB_AMT_TDY_LCY
		, SUM(NVL(PASSIVE_TXN_CR_AMT_TDY_LCY, 0))				PASSIVE_TXN_CR_AMT_TDY_LCY
		, SUM(NVL(PASSIVE_TXN_DB_AMT_TDY_LCY, 0))				PASSIVE_TXN_DB_AMT_TDY_LCY
		, SUM(NVL(OTHR_TXN_CR_AMT_TDY_LCY, 0))						OTHR_TXN_CR_AMT_TDY_LCY
		, SUM(NVL(OTHR_TXN_DB_AMT_TDY_LCY, 0))						OTHR_TXN_DB_AMT_TDY_LCY
		
		, SUM(NVL(ACTV_TXN_CR_AMT_TDY_FCY, 0))					ACTV_TXN_CR_AMT_TDY_FCY
		, SUM(NVL(ACTV_TXN_DB_AMT_TDY_FCY, 0))					ACTV_TXN_DB_AMT_TDY_FCY
		, SUM(NVL(PASSIVE_TXN_CR_AMT_TDY_FCY, 0))				PASSIVE_TXN_CR_AMT_TDY_FCY
		, SUM(NVL(PASSIVE_TXN_DB_AMT_TDY_FCY, 0))				PASSIVE_TXN_DB_AMT_TDY_FCY
		, SUM(NVL(OTHR_TXN_CR_AMT_TDY_FCY, 0))						OTHR_TXN_CR_AMT_TDY_FCY
		, SUM(NVL(OTHR_TXN_DB_AMT_TDY_FCY, 0))						OTHR_TXN_DB_AMT_TDY_FCY
		
		, SUM(NVL(AUTO_INT_PYMT_AMT_TDY_FCY, 0))					AUTO_INT_PYMT_AMT_TDY_FCY
		, SUM(NVL(AUTO_INT_PYMT_AMT_TDY_LCY, 0))					AUTO_INT_PYMT_AMT_TDY_LCY
		, SUM(NVL(FEE_AMT_TDY_FCY, 0))								FEE_AMT_TDY_FCY
		, SUM(NVL(FEE_AMT_TDY_LCY, 0))								FEE_AMT_TDY_LCY
		, SUM(NVL(NBR_OF_CST_TXN_TDY, 0))							NBR_OF_CST_TXN_TDY
		, SUM(NVL(NBR_OF_TXN_PD_TDY, 0))							NBR_OF_TXN_PD_TDY
  FROM TWT_CST_CNL_BHVR_FCT TWT
  INNER JOIN CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
  INNER JOIN CDR_DT_DIM CDR_DT_DIM ON CDR_DT_DIM.CDR_DT_DIM_ID = SYS.PARAM_VALUE
  LEFT JOIN CCY_DIM ON CCY_DIM.CCY_ID = TWT.CCY_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CCY_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CCY_DIM.EFF_TO_DT
  LEFT JOIN CST_DIM ON CST_DIM.CST_ID = TWT.CST_DIM_ID  AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CST_DIM.EFF_TO_DT
  LEFT JOIN GND_DIM ON GND_DIM.LVL_0_ID = TWT.GND_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= GND_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < GND_DIM.EFF_TO_DT
  LEFT JOIN IDY_CL_DIM ON IDY_CL_DIM.LVL_0_ID = TWT.IDY_SML_ID_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= IDY_CL_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < IDY_CL_DIM.EFF_TO_DT
  LEFT JOIN MAR_ST_DIM ON MAR_ST_DIM.LVL_0_ID = TWT.MAR_ST_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= MAR_ST_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < MAR_ST_DIM.EFF_TO_DT
  LEFT JOIN OCP_DIM ON OCP_DIM.LVL_0_ID = TWT.OCP_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= OCP_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < OCP_DIM.EFF_TO_DT
  LEFT JOIN CNL_TP_DIM ON CNL_TP_DIM.LVL_0_ID = TWT.CNL_TP_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CNL_TP_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CNL_TP_DIM.EFF_TO_DT
  LEFT JOIN CTY_DIM ON CTY_DIM.LVL_0_ID = TWT.CTY_OF_RSDNC_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CTY_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CTY_DIM.EFF_TO_DT
  LEFT JOIN CST_LC_ST_DIM ON CST_LC_ST_DIM.LVL_0_ID = TWT.CST_LIFE_CYC_ST_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= CST_LC_ST_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < CST_LC_ST_DIM.EFF_TO_DT
    LEFT JOIN EMPE_DIM ON EMPE_DIM.EMPE_ID = CST_RLTNP_OFCR_DIM_ID AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= EMPE_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < EMPE_DIM.EFF_TO_DT
  LEFT JOIN BRTH_AGE_SEG_DIM ON BRTH_AGE_SEG_DIM.LVL_0_ID = TWT.CST_BRTH_AGE_SEG_DIM_ID  AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= BRTH_AGE_SEG_DIM.EFF_FM_DT AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') < BRTH_AGE_SEG_DIM.EFF_TO_DT
LEFT JOIN TMP_CST_SEG ON TMP_CST_SEG.CST_ID = TWT.CST_DIM_ID AND TMP_CST_SEG.TM_PRD_ID = TWT.TM_PRD_DIM_ID

LEFT JOIN (
        SELECT T.SLRY_TVR_SEG_DIM_ID, T.MIN_BAL, T.MAX_BAL 
  FROM SLRY_TVR_SEG_DIM T
        INNER JOIN   CSTB_SYSTEM SYS ON SYS.PARAM_NAME = 'ETL_DATE'
   AND TO_DATE(SYS.PARAM_VALUE,'YYYYDDD') >= T.EFF_FM_DT AND T.EFF_TO_DT >  TO_DATE(SYS.PARAM_VALUE,'YYYYDDD')
) SLRY_TVR_SEG_DIM ON TWT.CST_SLRY_TVR_SEG_DIM_ID >= SLRY_TVR_SEG_DIM.MIN_BAL AND TWT.CST_SLRY_TVR_SEG_DIM_ID < SLRY_TVR_SEG_DIM.MAX_BAL
GROUP BY  CTY_DIM.CTY_DIM_ID, 
		BRTH_AGE_SEG_DIM.AGE_SEG_DIM_ID, 
		EMPE_DIM.EMPE_DIM_ID,  
		SLRY_TVR_SEG_DIM.SLRY_TVR_SEG_DIM_ID,
		CNL_TP_DIM.CNL_TP_DIM_ID,
		OCP_DIM.OCP_DIM_ID, 
		CST_LC_ST_DIM.CST_LIFE_CYC_ST_DIM_ID, 
		TMP_CST_SEG.CST_MKT_SEG_DIM_ID,
		CST_DIM.CST_DIM_ID,
		TM_PRD_DIM_ID,
		GND_DIM.GND_DIM_ID,
		IDY_CL_DIM.IDY_SML_ID_DIM_ID,
		MAR_ST_DIM.MAR_ST_DIM_ID,
		CCY_DIM.CCY_DM_ID,
        TMP_CST_SEG.CST_TP_DIM_ID;

