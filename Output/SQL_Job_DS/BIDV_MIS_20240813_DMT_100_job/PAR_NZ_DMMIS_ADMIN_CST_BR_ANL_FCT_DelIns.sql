SELECT 
	  twt.CDR_DIM_ID			CDR_DIM_ID
	, CST_DIM.CST_DIM_ID				CST_DIM_ID
	, OU_DIM.ORG_UNIT_DIM_ID			ORG_UNIT_DIM_ID
	, NVL(EMPE_DIM.EMPE_DIM_ID,999999)					EMPE_DIM_ID
	, NVL(TMP_CST_SEG.CST_OFCR_CREATOR_DIM_ID,999999)	CST_CREATOR_EMPE_DIM_ID
	, NVL(TMP_CST_SEG.CST_CRT_DEPT_DIM_ID,999999)		CST_CREATOR_DEPT_DIM_ID
	, NVL(CST_RLTNP_OFCR.EMPE_DIM_ID,999999)		CST_RLTNP_OFCR_DIM_ID
	, NVL(CST_MGT_DEPT.ORG_UNIT_DIM_ID,999999)		CST_RLTNP_DEPT_DIM_ID
	, NVL(NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CST_AGE_SEG_DIM_ID,TMP_CST_BAL_LMT_SLRY_AGE_SEG.MAX_RLTNP_AGE_SEG_DIM_ID) , 999999)		CST_RLTNP_AGE_SEG_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CR_LMT_SEG_DIM_ID,999999)		CR_LMT_SEG_DIM_ID
	, NVL(TMP_CST_SEG.CR_RSK_RTG_DIM_ID,999999)		CR_RSK_RTG_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CST_AST_BAL_SEG_DIM_ID,999999)		AST_BAL_SEG_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CST_LBY_BAL_SEG_DIM_ID,999999)		LBY_BAL_SEG_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CST_BRTH_AGE_SEG_DIM_ID,999999)		BRTH_AGE_SEG_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CST_HIER_DIM_ID,999999)		CST_HIER_DIM_ID
	, NVL(TMP_CST_SEG.CST_MKT_SEG_DIM_ID,999999)		CST_MKT_SEG_DIM_ID
	, NVL(TMP_CST_SEG.CST_PERF_ST_DIM_ID,999999)		PERF_ST_DIM_ID
	, NVL(TMP_CST_SEG.CST_SEG_DIM_ID,999999)		CST_SEG_DIM_ID
	, NVL(TMP_CST_SEG.CST_SEG_SME_DIM_ID,999999)		CST_SEG_SME_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.CTY_OF_RSDNC_DIM_ID,999999)		CTY_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.GND_DIM_ID,2000000)		GND_DIM_ID
	, NVL(TMP_CST_SEG.IDY_SML_ID_DIM_ID,999999)		IDY_CL_DIM_ID
	, NVL(TMP_CST_SEG.MAR_ST_DIM_ID,999999)		MAR_ST_DIM_ID
	, NVL(TMP_CST_SEG.OCP_DIM_ID,999999)		OCP_DIM_ID
	, NVL(TMP_CST_BAL_LMT_SLRY_AGE_SEG.SLRY_TVR_DIM_ID,999999)		SLRY_TVR_SEG_DIM_ID
	, NVL(TMP_CST_SEG.TOT_NET_INCM_SEG_DIM_ID,999999)		TOT_NET_INCM_SEG_DIM_ID
	, NVL(twt.CST_LIFE_CYC_ST_DT_ID,999999)		CST_LIFE_CYC_ST_DT_DIM_ID
	, NVL(CST_RLTNP_TP.CST_RLTNP_TP_DIM_ID,999999)		CST_RLTNP_TP_DIM_ID
	, NVL(CST_BR_RLTNP_TP.CST_RLTNP_TP_DIM_ID,999999)		CST_BR_RLTNP_TP_DIM_ID
	, NVL(CST_PFT_SEG.CST_PFT_SEG_DIM_ID,999999)		CST_PFT_SEG_DIM_ID
	, NVL(CST_BRN_PFT_SEG.CST_PFT_SEG_DIM_ID,999999)		CST_BRN_PFT_SEG_DIM_ID
	, NVL(twt.CST_EFF_DT_ID,999999)		CST_EFF_DT_DIM_ID
	, twt.CST_ID					CST_ID
	, NVL(twt.NET_INCM_YTD,0)		NET_INCM_YTD
	, NVL(twt.EFF_CST_NBR_OF_DYS,0)		EFF_CST_NBR_OF_DYS
	, NVL(TMP_CST_SEG.CST_TP_DIM_ID,999999)		CST_TP_DIM_ID
	, NVL(CST_OU.ORG_UNIT_DIM_ID,999999)	CST_ORG_UNIT_DIM_ID
	, NVL(TMP_CST_SEG.LATEST_CST_LC_ST_DIM_ID,999999)		LATEST_CST_LC_ST_DIM_ID
	, NVL(TMP_CST_SEG.CST_LIFE_CYC_ST_DIM_ID,999999)		CST_LC_ST_DIM_ID
	, twt.TOTAL_NET_INCM_YTD

FROM  TWT_CST_BR_ANL_FCT twt
LEFT JOIN OU_DIM OU_DIM on OU_DIM.ORG_UNIT_ID = twt.ORG_UNIT_ID and to_date(:pDate:,'yyyyddd') between OU_DIM.EFF_FM_DT and OU_DIM.EFF_TO_DT - 1
LEFT JOIN OU_DIM CST_OU on CST_OU.ORG_UNIT_ID = twt.PRIM_BR_ID and to_date(:pDate:,'yyyyddd') between CST_OU.EFF_FM_DT and CST_OU.EFF_TO_DT - 1
LEFT JOIN CST_DIM on CST_DIM.CST_ID = twt.CST_ID and to_date(:pDate:,'yyyyddd') between CST_DIM.EFF_FM_DT and CST_DIM.EFF_TO_DT - 1
LEFT JOIN TMP_CST_SEG on TMP_CST_SEG.CST_ID = twt.CST_ID
LEFT JOIN TMP_CST_BAL_LMT_SLRY_AGE_SEG on TMP_CST_BAL_LMT_SLRY_AGE_SEG.CST_ID = twt.CST_ID

LEFT JOIN EMPE_DIM ON EMPE_DIM.EMPE_ID = TWT.CST_ID AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN EMPE_DIM.EFF_FM_DT AND EMPE_DIM.EFF_TO_DT - 1
LEFT JOIN EMPE_DIM CST_RLTNP_OFCR ON CST_RLTNP_OFCR.EMPE_ID = TWT.CST_RLTNP_OFCR_ID AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN CST_RLTNP_OFCR.EFF_FM_DT AND CST_RLTNP_OFCR.EFF_TO_DT - 1
LEFT JOIN OU_DIM CST_MGT_DEPT ON CST_MGT_DEPT.ORG_UNIT_ID = TWT.CST_RLTNP_DEPT_ID AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN CST_MGT_DEPT.EFF_FM_DT AND CST_MGT_DEPT.EFF_TO_DT - 1

LEFT JOIN CST_RLTNP_TP_DIM CST_RLTNP_TP ON CST_RLTNP_TP.LVL_0_CODE = twt.CST_RLTNP_CODE AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN CST_RLTNP_TP.EFF_FM_DT AND CST_RLTNP_TP.EFF_TO_DT - 1
LEFT JOIN CST_RLTNP_TP_DIM CST_BR_RLTNP_TP ON CST_BR_RLTNP_TP.LVL_0_CODE = TWT.CST_BR_RLTNP_CODE AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN CST_BR_RLTNP_TP.EFF_FM_DT AND CST_BR_RLTNP_TP.EFF_TO_DT - 1
LEFT JOIN CST_PFT_SEG_DIM CST_PFT_SEG ON CST_PFT_SEG.LVL_0_CODE = twt.CST_PFT_SEG_CODE AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN CST_PFT_SEG.EFF_FM_DT AND CST_PFT_SEG.EFF_TO_DT - 1
LEFT JOIN CST_PFT_SEG_DIM CST_BRN_PFT_SEG ON CST_BRN_PFT_SEG.LVL_0_CODE = TWT.CST_BRN_PFT_SEG_CODE AND TO_DATE(:pDate:,'YYYYDDD') BETWEEN CST_BRN_PFT_SEG.EFF_FM_DT AND CST_BRN_PFT_SEG.EFF_TO_DT - 1;

DELETE FROM CST_BR_ANL_FCT WHERE CDR_DIM_ID = :pDate:;

INSERT INTO CST_BR_ANL_FCT (CDR_DIM_ID
       , CST_DIM_ID
       , ORG_UNIT_DIM_ID, EMPE_DIM_ID
       , CST_CREATOR_EMPE_DIM_ID
       , CST_CREATOR_DEPT_DIM_ID
       , CST_RLTNP_OFCR_DIM_ID
       , CST_RLTNP_DEPT_DIM_ID
       , CST_RLTNP_AGE_SEG_DIM_ID
       , CR_LMT_SEG_DIM_ID
       , CR_RSK_RTG_DIM_ID
       , AST_BAL_SEG_DIM_ID
       , LBY_BAL_SEG_DIM_ID
       , BRTH_AGE_SEG_DIM_ID
       , CST_HIER_DIM_ID
       , CST_MKT_SEG_DIM_ID
       , PERF_ST_DIM_ID
       , CST_SEG_DIM_ID
       , CST_SEG_SME_DIM_ID
       , CTY_DIM_ID
       , GND_DIM_ID
       , IDY_CL_DIM_ID
       , MAR_ST_DIM_ID
       , OCP_DIM_ID
       , SLRY_TVR_SEG_DIM_ID
       , TOT_NET_INCM_SEG_DIM_ID
       , CST_LIFE_CYC_ST_DT_DIM_ID
       , CST_RLTNP_TP_DIM_ID
       , CST_BR_RLTNP_TP_DIM_ID
       , CST_PFT_SEG_DIM_ID
       , CST_BRN_PFT_SEG_DIM_ID
       , CST_EFF_DT_DIM_ID
       , CST_ID
       , NET_INCM_YTD
       , EFF_CST_NBR_OF_DYS
       , CST_TP_DIM_ID
	   , CST_ORG_UNIT_DIM_ID 	   , LATEST_CST_LC_ST_DIM_ID 	   , CST_LC_ST_DIM_ID 	   , TOTAL_NET_INCM_YTD  ) 
SELECT CDR_DIM_ID
       , CST_DIM_ID
       , ORG_UNIT_DIM_ID, EMPE_DIM_ID
       , CST_CREATOR_EMPE_DIM_ID
       , CST_CREATOR_DEPT_DIM_ID
       , CST_RLTNP_OFCR_DIM_ID
       , CST_RLTNP_DEPT_DIM_ID
       , CST_RLTNP_AGE_SEG_DIM_ID
       , CR_LMT_SEG_DIM_ID
       , CR_RSK_RTG_DIM_ID
       , AST_BAL_SEG_DIM_ID
       , LBY_BAL_SEG_DIM_ID
       , BRTH_AGE_SEG_DIM_ID
       , CST_HIER_DIM_ID
       , CST_MKT_SEG_DIM_ID
       , PERF_ST_DIM_ID
       , CST_SEG_DIM_ID
       , CST_SEG_SME_DIM_ID
       , CTY_DIM_ID
       , GND_DIM_ID
       , IDY_CL_DIM_ID
       , MAR_ST_DIM_ID
       , OCP_DIM_ID
       , SLRY_TVR_SEG_DIM_ID
       , TOT_NET_INCM_SEG_DIM_ID
       , CST_LIFE_CYC_ST_DT_DIM_ID
       , CST_RLTNP_TP_DIM_ID
       , CST_BR_RLTNP_TP_DIM_ID
       , CST_PFT_SEG_DIM_ID
       , CST_BRN_PFT_SEG_DIM_ID
       , CST_EFF_DT_DIM_ID
       , CST_ID
       , NET_INCM_YTD
       , EFF_CST_NBR_OF_DYS
       , CST_TP_DIM_ID
	   , CST_ORG_UNIT_DIM_ID 	   , LATEST_CST_LC_ST_DIM_ID 	   , CST_LC_ST_DIM_ID 	   , TOTAL_NET_INCM_YTD    FROM CST_BR_ANL_FCT_DAILY;

