select
      NVL(CST_DIM.CST_ID,999999)     CST_ID
	, NVL(twt.CDR_DIM_ID,999999)	CDR_DIM_ID
	, NVL(PD_DIM.PD_DIM_ID,999999)   PD_DIM_ID
	, NVL(AR_LC_ST_DIM.AR_LIFE_CYC_ST_DIM_ID,999999)     AR_LC_ST_DIM_ID               	, NVL(PRIM_ORG_UNIT_ID.ORG_UNIT_DIM_ID,999999)       PRIM_ORG_UNIT_DIM_ID          	, NVL(SCD_ORG_UNIT_ID.ORG_UNIT_DIM_ID,999999)        SCD_ORG_UNIT_DIM_ID              , NVL(AC_AR_MGT_DEP.ORG_UNIT_DIM_ID, 999999)                   AC_AR_MGT_DEP_DIM_ID         	, NVL(CST_DIM.CST_DIM_ID,999999)	                 CST_DIM_ID
	, NVL(TMP_CST_SEG.CST_OFCR_EMPE_DIM_ID,999999)	CST_RLTNP_OFCR_DIM_ID
	, NVL(TMP_CST_SEG.CST_MGT_DEPT_DIM_ID,999999)	CST_RLTNP_DEPT_DIM_ID
	, NVL(TMP_CST_SEG.CST_SEG_DIM_ID,999999)	CST_SEG_DIM_ID
	, AR_DIM.AR_DIM_ID		        AR_DIM_ID
	, NVL(DEP_TP.DEP_TP_DIM_ID,999999)                     DEP_TP_DIM_ID
	, NVL(CCY_DIM.CCY_DM_ID,999999)	CCY_DIM_ID
	, NVL(CST_PERF_CARD_ST_DIM.PERF_ST_DIM_ID, 999999)		PERF_ST_DIM_ID
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_TDY_FCY,0)		OFF_BAL_INT_PYMT_AMT_TDY_FCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_TDY_LCY,0)		OFF_BAL_INT_PYMT_AMT_TDY_LCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_MTD_FCY,0)		OFF_BAL_INT_PYMT_AMT_MTD_FCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_MTD_LCY,0)		OFF_BAL_INT_PYMT_AMT_MTD_LCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_QTD_FCY,0)		OFF_BAL_INT_PYMT_AMT_QTD_FCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_QTD_LCY,0)		OFF_BAL_INT_PYMT_AMT_QTD_LCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_YTD_FCY,0)		OFF_BAL_INT_PYMT_AMT_YTD_FCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_YTD_LCY,0)		OFF_BAL_INT_PYMT_AMT_YTD_LCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_LTD_FCY,0)		OFF_BAL_INT_PYMT_AMT_LTD_FCY
	, NVL(twt.OFF_BAL_INT_PYMT_AMT_LTD_LCY,0)		OFF_BAL_INT_PYMT_AMT_LTD_LCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_TDY_FCY,0)		OFF_BAL_PNP_PYMT_AMT_TDY_FCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_TDY_LCY,0)		OFF_BAL_PNP_PYMT_AMT_TDY_LCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_MTD_FCY,0)		OFF_BAL_PNP_PYMT_AMT_MTD_FCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_MTD_LCY,0)		OFF_BAL_PNP_PYMT_AMT_MTD_LCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_QTD_FCY,0)		OFF_BAL_PNP_PYMT_AMT_QTD_FCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_QTD_LCY,0)		OFF_BAL_PNP_PYMT_AMT_QTD_LCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_YTD_FCY,0)		OFF_BAL_PNP_PYMT_AMT_YTD_FCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_YTD_LCY,0)		OFF_BAL_PNP_PYMT_AMT_YTD_LCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_LTD_FCY,0)		OFF_BAL_PNP_PYMT_AMT_LTD_FCY
	, NVL(twt.OFF_BAL_PNP_PYMT_AMT_LTD_LCY,0)		OFF_BAL_PNP_PYMT_AMT_LTD_LCY
	, NVL(twt.PNP_PYMT_AMT_TDY_FCY,0)		PNP_PYMT_AMT_TDY_FCY
	, NVL(twt.PNP_PYMT_AMT_TDY_LCY,0)		PNP_PYMT_AMT_TDY_LCY
	, NVL(twt.PNP_PYMT_AMT_MTD_FCY,0)		PNP_PYMT_AMT_MTD_FCY
	, NVL(twt.PNP_PYMT_AMT_MTD_LCY,0)		PNP_PYMT_AMT_MTD_LCY
	, NVL(twt.PNP_PYMT_AMT_QTD_FCY,0)		PNP_PYMT_AMT_QTD_FCY
	, NVL(twt.PNP_PYMT_AMT_QTD_LCY,0)		PNP_PYMT_AMT_QTD_LCY
	, NVL(twt.PNP_PYMT_AMT_YTD_FCY,0)		PNP_PYMT_AMT_YTD_FCY
	, NVL(twt.PNP_PYMT_AMT_YTD_LCY,0)		PNP_PYMT_AMT_YTD_LCY
	, NVL(twt.PNP_PYMT_AMT_LTD_FCY,0)		PNP_PYMT_AMT_LTD_FCY
	, NVL(twt.PNP_PYMT_AMT_LTD_LCY,0)		PNP_PYMT_AMT_LTD_LCY
	, NVL(twt.CLS_ON_BAL_AMT_TDY_FCY,0)		CLS_ON_BAL_AMT_TDY_FCY
	, NVL(twt.CLS_ON_BAL_AMT_TDY_LCY,0)		CLS_ON_BAL_AMT_TDY_LCY
	, NVL(twt.TOT_WRT_OFF_AMT_FCY,0)		TOT_WRT_OFF_AMT_FCY
	, NVL(twt.TOT_WRT_OFF_AMT_LCY,0)		TOT_WRT_OFF_AMT_LCY
	, NVL(twt.AST_INT_PYMT_AMT_TDY_FCY,0)		AST_INT_PYMT_AMT_TDY_FCY
	, NVL(twt.AST_INT_PYMT_AMT_TDY_LCY,0)		AST_INT_PYMT_AMT_TDY_LCY
	, NVL(twt.CLS_BAL_AMT_TDY_FCY,0)	CLS_BAL_AMT_TDY_FCY
	, NVL(twt.CLS_BAL_AMT_TDY_LCY,0)	CLS_BAL_AMT_TDY_LCY
	, NVL(twt.AST_ACR_INT_PTD_FCY,0)	AST_ACR_INT_PTD_FCY
	, NVL(twt.AST_ACR_INT_PTD_LCY,0)	AST_ACR_INT_PTD_LCY
	, NVL(twt.AST_SCDY_ACR_INT_PTD_FCY,0)	AST_SCDY_ACR_INT_PTD_FCY
	, NVL(twt.AST_SCDY_ACR_INT_PTD_LCY,0)	AST_SCDY_ACR_INT_PTD_LCY
	, NVL(twt.PAST_DUE_PNP_NBR_OF_DYS,0)	PAST_DUE_PNP_NBR_OF_DYS
	, NVL(twt.TOT_PAST_DUE_PNP_AMT_FCY,0)	TOT_PAST_DUE_PNP_AMT_FCY
	, NVL(twt.TOT_PAST_DUE_PNP_AMT_LCY,0)	TOT_PAST_DUE_PNP_AMT_LCY
	, NVL(twt.CLS_DEP_BAL_AMT_TDY_FCY,0)	CLS_DEP_BAL_AMT_TDY_FCY
	, NVL(twt.CLS_DEP_BAL_AMT_TDY_LCY,0)	CLS_DEP_BAL_AMT_TDY_LCY
	, NVL(twt.CLS_DEP_BAL_AMT_LMTH_FCY,0)	CLS_DEP_BAL_AMT_LMTH_FCY
	, NVL(twt.CLS_DEP_BAL_AMT_LMTH_LCY,0)	CLS_DEP_BAL_AMT_LMTH_LCY
	, NVL(twt.CLS_DEP_BAL_AMT_LQTR_FCY,0)	CLS_DEP_BAL_AMT_LQTR_FCY
	, NVL(twt.CLS_DEP_BAL_AMT_LQTR_LCY,0)	CLS_DEP_BAL_AMT_LQTR_LCY
	, NVL(twt.CLS_DEP_BAL_AMT_LYR_FCY,0)	CLS_DEP_BAL_AMT_LYR_FCY
	, NVL(twt.CLS_DEP_BAL_AMT_LYR_LCY,0)	CLS_DEP_BAL_AMT_LYR_LCY
	, NVL(twt.AGRT_DEP_BAL_AMT_HTD_FCY,0)	AGRT_DEP_BAL_AMT_HTD_FCY
	, NVL(twt.AGRT_DEP_BAL_AMT_HTD_LCY,0)	AGRT_DEP_BAL_AMT_HTD_LCY
	, NVL(twt.AGRT_DEP_BAL_AMT_MTD_FCY,0)	AGRT_DEP_BAL_AMT_MTD_FCY
	, NVL(twt.AGRT_DEP_BAL_AMT_MTD_LCY,0)	AGRT_DEP_BAL_AMT_MTD_LCY
	, NVL(twt.AGRT_DEP_BAL_AMT_QTD_FCY,0)	AGRT_DEP_BAL_AMT_QTD_FCY
	, NVL(twt.AGRT_DEP_BAL_AMT_QTD_LCY,0)	AGRT_DEP_BAL_AMT_QTD_LCY
	, NVL(twt.AGRT_DEP_BAL_AMT_YTD_FCY,0)	AGRT_DEP_BAL_AMT_YTD_FCY
	, NVL(twt.AGRT_DEP_BAL_AMT_YTD_LCY,0)	AGRT_DEP_BAL_AMT_YTD_LCY
	, NVL(twt.NBR_OF_DYS_HTD,0)	NBR_OF_DYS_HTD
	, NVL(twt.NBR_OF_DYS_MTD,0)	NBR_OF_DYS_MTD
	, NVL(twt.NBR_OF_DYS_QTD,0)	NBR_OF_DYS_QTD
	, NVL(twt.NBR_OF_DYS_YTD,0)	NBR_OF_DYS_YTD
	, NVL(twt.LBY_INT_AMT_TDY_FCY,0)	LBY_INT_AMT_TDY_FCY
	, NVL(twt.LBY_INT_AMT_TDY_LCY,0)	LBY_INT_AMT_TDY_LCY
	, twt.ANUL_FEE_YTD_FCY
	, twt.ANUL_FEE_YTD_LCY
	, twt.CLS_INSTLMENT_BAL_AMT_FCY 	, twt.CLS_INSTLMENT_BAL_AMT_LCY from TWT_CARD_AC_AR_ANL_FCT twt
inner join AR_DIM on AR_DIM.AR_ID = twt.AR_ID and AR_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
LEFT join AR_DIM AD on twt.AC_AR_ID = AD.AR_ID and AD.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AD.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
LEFT JOIN PD_DIM ON PD_DIM.PD_ID = twt.PD_ID AND PD_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and PD_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
LEFT join DEP_TP_DIM DEP_TP on DEP_TP.DEP_TP_LVL_0_CODE = AD.DEP_TP_CODE 
left join CST_DIM on CST_DIM.CST_ID = twt.CST_ID and CST_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and CST_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join CCY_DIM on CCY_DIM.CCY_ID = twt.CCY_ID and CCY_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and CCY_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join TMP_CST_SEG on TMP_CST_SEG.CST_ID = twt.CST_ID
left join TMP_PERF_CARD TMP_PERF_CARD ON TMP_PERF_CARD.CST_ID=TWT.CST_ID AND TMP_PERF_CARD.SEQ=1
left join PERF_ST_DIM CST_PERF_CARD_ST_DIM ON CST_PERF_CARD_ST_DIM.LVL_0_ID = TMP_PERF_CARD.CL_ID AND TO_DATE(:pDate:,'YYYYDDD') >= CST_PERF_CARD_ST_DIM.EFF_FM_DT AND CST_PERF_CARD_ST_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
left join AR_LC_ST_DIM on AR_LC_ST_DIM.LVL_0_ID = twt.AR_LIFE_CYC_ST_TP_ID and AR_LC_ST_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_LC_ST_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM PRIM_ORG_UNIT_ID ON PRIM_ORG_UNIT_ID.ORG_UNIT_ID = twt.RPRG_OU_IP_ID and PRIM_ORG_UNIT_ID.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and PRIM_ORG_UNIT_ID.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM SCD_ORG_UNIT_ID ON SCD_ORG_UNIT_ID.ORG_UNIT_ID = twt.RPRG_OU_IP_AC_AR_ID and SCD_ORG_UNIT_ID.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and SCD_ORG_UNIT_ID.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
LEFT JOIN OU_DIM AC_AR_MGT_DEP ON AC_AR_MGT_DEP.ORG_UNIT_ID = twt.AC_AR_MGT_DEP_DIM_ID and AC_AR_MGT_DEP.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AC_AR_MGT_DEP.EFF_TO_DT > to_date(:pDate:,'yyyyddd');

DELETE FROM CARD_AC_AR_ANL_FCT WHERE CDR_DIM_ID =:pDate:;

INSERT INTO CARD_AC_AR_ANL_FCT (CDR_DIM_ID
       , CST_DIM_ID
       , CST_RLTNP_OFCR_DIM_ID
       , CST_RLTNP_DEPT_DIM_ID
       , CST_SEG_DIM_ID
       , AR_DIM_ID
       , CCY_DIM_ID
       , PERF_ST_DIM_ID
       , OFF_BAL_INT_PYMT_AMT_TDY_FCY
       , OFF_BAL_INT_PYMT_AMT_TDY_LCY
       , OFF_BAL_INT_PYMT_AMT_MTD_FCY
       , OFF_BAL_INT_PYMT_AMT_MTD_LCY
       , OFF_BAL_INT_PYMT_AMT_QTD_FCY
       , OFF_BAL_INT_PYMT_AMT_QTD_LCY
       , OFF_BAL_INT_PYMT_AMT_YTD_FCY
       , OFF_BAL_INT_PYMT_AMT_YTD_LCY
       , OFF_BAL_INT_PYMT_AMT_LTD_FCY
       , OFF_BAL_INT_PYMT_AMT_LTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_TDY_FCY
       , OFF_BAL_PNP_PYMT_AMT_TDY_LCY
       , OFF_BAL_PNP_PYMT_AMT_MTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_MTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_QTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_QTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_LTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_LTD_LCY
       , PNP_PYMT_AMT_TDY_FCY
       , PNP_PYMT_AMT_TDY_LCY
       , PNP_PYMT_AMT_MTD_FCY
       , PNP_PYMT_AMT_MTD_LCY
       , PNP_PYMT_AMT_QTD_FCY
       , PNP_PYMT_AMT_QTD_LCY
       , PNP_PYMT_AMT_YTD_FCY
       , PNP_PYMT_AMT_YTD_LCY
       , PNP_PYMT_AMT_LTD_FCY
       , PNP_PYMT_AMT_LTD_LCY
       , CLS_ON_BAL_AMT_TDY_FCY
       , CLS_ON_BAL_AMT_TDY_LCY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , AST_INT_PYMT_AMT_TDY_FCY
       , AST_INT_PYMT_AMT_TDY_LCY
       , CLS_BAL_AMT_TDY_FCY
       , CLS_BAL_AMT_TDY_LCY
       , AST_ACR_INT_PTD_FCY
       , AST_ACR_INT_PTD_LCY
       , AST_SCDY_ACR_INT_PTD_FCY
       , AST_SCDY_ACR_INT_PTD_LCY
       , PAST_DUE_PNP_NBR_OF_DYS
       , TOT_PAST_DUE_PNP_AMT_FCY
       , TOT_PAST_DUE_PNP_AMT_LCY
       , CLS_DEP_BAL_AMT_TDY_FCY
       , CLS_DEP_BAL_AMT_TDY_LCY
       , CLS_DEP_BAL_AMT_LMTH_FCY
       , CLS_DEP_BAL_AMT_LMTH_LCY
       , CLS_DEP_BAL_AMT_LQTR_FCY
       , CLS_DEP_BAL_AMT_LQTR_LCY
       , CLS_DEP_BAL_AMT_LYR_FCY
       , CLS_DEP_BAL_AMT_LYR_LCY
       , AGRT_DEP_BAL_AMT_HTD_FCY
       , AGRT_DEP_BAL_AMT_HTD_LCY
       , AGRT_DEP_BAL_AMT_MTD_FCY
       , AGRT_DEP_BAL_AMT_MTD_LCY
       , AGRT_DEP_BAL_AMT_QTD_FCY
       , AGRT_DEP_BAL_AMT_QTD_LCY
       , AGRT_DEP_BAL_AMT_YTD_FCY
       , AGRT_DEP_BAL_AMT_YTD_LCY
       , NBR_OF_DYS_HTD
       , NBR_OF_DYS_MTD
       , NBR_OF_DYS_QTD
       , NBR_OF_DYS_YTD
       , LBY_INT_AMT_TDY_FCY
       , LBY_INT_AMT_TDY_LCY
	   , CST_ID
	   , DEP_TP_DIM_ID
	   , PD_DIM_ID
	   , AR_LC_ST_DIM_ID
	   , PRIM_ORG_UNIT_DIM_ID
	   , SCD_ORG_UNIT_DIM_ID 
	   , AC_AR_MGT_DEP_DIM_ID, ANUL_FEE_YTD_FCY, ANUL_FEE_YTD_LCY
	   , CLS_INSTLMENT_BAL_AMT_FCY
	   , CLS_INSTLMENT_BAL_AMT_LCY
)
 SELECT CDR_DIM_ID
       , CST_DIM_ID
       , CST_RLTNP_OFCR_DIM_ID
       , CST_RLTNP_DEPT_DIM_ID
       , CST_SEG_DIM_ID
       , AR_DIM_ID
       , CCY_DIM_ID
       , PERF_ST_DIM_ID
       , OFF_BAL_INT_PYMT_AMT_TDY_FCY
       , OFF_BAL_INT_PYMT_AMT_TDY_LCY
       , OFF_BAL_INT_PYMT_AMT_MTD_FCY
       , OFF_BAL_INT_PYMT_AMT_MTD_LCY
       , OFF_BAL_INT_PYMT_AMT_QTD_FCY
       , OFF_BAL_INT_PYMT_AMT_QTD_LCY
       , OFF_BAL_INT_PYMT_AMT_YTD_FCY
       , OFF_BAL_INT_PYMT_AMT_YTD_LCY
       , OFF_BAL_INT_PYMT_AMT_LTD_FCY
       , OFF_BAL_INT_PYMT_AMT_LTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_TDY_FCY
       , OFF_BAL_PNP_PYMT_AMT_TDY_LCY
       , OFF_BAL_PNP_PYMT_AMT_MTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_MTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_QTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_QTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_YTD_LCY
       , OFF_BAL_PNP_PYMT_AMT_LTD_FCY
       , OFF_BAL_PNP_PYMT_AMT_LTD_LCY
       , PNP_PYMT_AMT_TDY_FCY
       , PNP_PYMT_AMT_TDY_LCY
       , PNP_PYMT_AMT_MTD_FCY
       , PNP_PYMT_AMT_MTD_LCY
       , PNP_PYMT_AMT_QTD_FCY
       , PNP_PYMT_AMT_QTD_LCY
       , PNP_PYMT_AMT_YTD_FCY
       , PNP_PYMT_AMT_YTD_LCY
       , PNP_PYMT_AMT_LTD_FCY
       , PNP_PYMT_AMT_LTD_LCY
       , CLS_ON_BAL_AMT_TDY_FCY
       , CLS_ON_BAL_AMT_TDY_LCY
       , TOT_WRT_OFF_AMT_FCY
       , TOT_WRT_OFF_AMT_LCY
       , AST_INT_PYMT_AMT_TDY_FCY
       , AST_INT_PYMT_AMT_TDY_LCY
       , CLS_BAL_AMT_TDY_FCY
       , CLS_BAL_AMT_TDY_LCY
       , AST_ACR_INT_PTD_FCY
       , AST_ACR_INT_PTD_LCY
       , AST_SCDY_ACR_INT_PTD_FCY
       , AST_SCDY_ACR_INT_PTD_LCY
       , PAST_DUE_PNP_NBR_OF_DYS
       , TOT_PAST_DUE_PNP_AMT_FCY
       , TOT_PAST_DUE_PNP_AMT_LCY
       , CLS_DEP_BAL_AMT_TDY_FCY
       , CLS_DEP_BAL_AMT_TDY_LCY
       , CLS_DEP_BAL_AMT_LMTH_FCY
       , CLS_DEP_BAL_AMT_LMTH_LCY
       , CLS_DEP_BAL_AMT_LQTR_FCY
       , CLS_DEP_BAL_AMT_LQTR_LCY
       , CLS_DEP_BAL_AMT_LYR_FCY
       , CLS_DEP_BAL_AMT_LYR_LCY
       , AGRT_DEP_BAL_AMT_HTD_FCY
       , AGRT_DEP_BAL_AMT_HTD_LCY
       , AGRT_DEP_BAL_AMT_MTD_FCY
       , AGRT_DEP_BAL_AMT_MTD_LCY
       , AGRT_DEP_BAL_AMT_QTD_FCY
       , AGRT_DEP_BAL_AMT_QTD_LCY
       , AGRT_DEP_BAL_AMT_YTD_FCY
       , AGRT_DEP_BAL_AMT_YTD_LCY
       , NBR_OF_DYS_HTD
       , NBR_OF_DYS_MTD
       , NBR_OF_DYS_QTD
       , NBR_OF_DYS_YTD
       , LBY_INT_AMT_TDY_FCY
       , LBY_INT_AMT_TDY_LCY
	   , CST_ID
	   , DEP_TP_DIM_ID
	   ,PD_DIM_ID
	   ,AR_LC_ST_DIM_ID
	   ,PRIM_ORG_UNIT_DIM_ID
	   ,SCD_ORG_UNIT_DIM_ID 
	   ,AC_AR_MGT_DEP_DIM_ID, ANUL_FEE_YTD_FCY, ANUL_FEE_YTD_LCY
	   , CLS_INSTLMENT_BAL_AMT_FCY
	   , CLS_INSTLMENT_BAL_AMT_LCY
  FROM CARD_AC_AR_ANL_FCT_DAILY;

