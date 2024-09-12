SELECT    NVL(CST_DIM.CST_DIM_ID,999999)			CST_DIM_ID
		, NVL(PD_DIM.PD_DIM_ID,999999)				PD_DIM_ID
		, NVL(PRIM_OU.ORG_UNIT_DIM_ID,999999)		PRIM_ORG_DIM_UNIT_ID
		, twt.CDR_DIM_ID							CDR_DIM_ID
		, 0											FEE_TP_DIM_ID
		, NVL(TMP_CST_SEG.CST_OFCR_EMPE_DIM_ID,999999)		CST_RLTNP_OFCR_DIM_ID
		, NVL(TMP_CST_SEG.CST_MGT_DEPT_DIM_ID,999999)		CST_RLTNP_DEPT_DIM_ID
		, NVL(TMP_CST_SEG.CST_SEG_DIM_ID,999999)			CST_SEG_DIM_ID
		, NVL(AR_LCS.AR_LIFE_CYC_ST_DIM_ID,999999)			AR_LIFE_CYC_ST_DIM_ID
		, NVL(AR_DIM.AR_DIM_ID,999999)						PRIM_AR_DIM_ID
		, NVL(CNL_TP.CNL_TP_DIM_ID,999999)					CNL_TP_DIM_ID
		, NVL(AC_AR_DIM.AR_DIM_ID,999999)					AC_AR_DIM_ID
		, NVL(AC_AR_LCS.AR_LIFE_CYC_ST_DIM_ID,999999)		AC_AR_LIFE_CYC_ST_DIM_ID
		, NVL(OU_DIM.ORG_UNIT_DIM_ID,999999)				ISSUING_ORG_UNIT_DIM_ID
		, NVL(CCY_DIM.CCY_DM_ID,999999)						CCY_DIM_ID
		, NVL(CNL_DIM.CNL_DIM_ID,999999)					CNL_DIM_ID
		, NVL(MRCH_DIM.MRCH_DIM_ID,999999)					MRCH_DIM_ID
		, NVL(CARD_TP_ACQ.CARD_TP_ACQ_DIM_ID,999999)	CARD_TP_ACQUIRER_DIM_ID
		, NVL(TXN_NTW.TXN_NTW_DIM_ID,999999)				TXN_NTW_DIM_ID
		, NVL(TXN_CODE.TXN_CODE_DIM_ID,999999)				TXN_CODE_DIM_ID
		, NVL(EMPE_DIM.EMPE_DIM_ID,999999)					MRCH_OFCR_EMPE_DIM_ID
		, NVL(MRCH_MGT_DEP.ORG_UNIT_DIM_ID,999999)			MRCH_MGT_DEPT_DIM_ID
		, NVL(CTY_DIM.CTY_DIM_ID, 999999)					CTY_OF_TXN_DIM_ID
		, NVL(TXN_LC_ST_DIM.TXN_LIFE_CYC_ST_DIM_ID, 999999)	TXN_LC_ST_DIM_ID
		, NVL(AR_MGT_DEPT.ORG_UNIT_DIM_ID,999999)			PRIM_AR_MGT_DEP_DIM_ID
		, twt.CNT_IND			CNT_IND
		, twt.TXN_TCKT_NBR		TXN_TCKT_NBR
		, twt.CR_X_DB_IND		CR_X_DB_IND
		, twt.TXN_AMT_IND		TXN_AMT_IND
		, NVL(twt.TXN_CR_AMT_LCY,0)		TXN_CR_AMT_LCY
		, NVL(twt.TXN_CR_AMT_FCY,0)		TXN_CR_AMT_FCY
		, NVL(twt.TXN_DB_AMT_LCY,0)		TXN_DB_AMT_LCY
		, NVL(twt.TXN_DB_AMT_FCY,0)		TXN_DB_AMT_FCY
		, NVL(twt.TXN_FEE_INCM_AMT_FCY,0)		TXN_FEE_INCM_AMT_FCY
		, NVL(twt.TXN_FEE_INCM_AMT_LCY,0)		TXN_FEE_INCM_AMT_LCY
		, NVL(twt.TXN_FEE_EXPN_AMT_FCY,0)		TXN_FEE_EXPN_AMT_FCY
		, NVL(twt.TXN_FEE_EXPN_AMT_LCY,0)		TXN_FEE_EXPN_AMT_LCY
		, NVL(twt.PRIM_AR_ID,999999)			PRIM_AR_ID
		, NVL(twt.MRCH_RATE_PCT,0)				MRCH_RATE_PCT						, twt.TXN_REMARK						TXN_REMARK
		, Nvl(t31.ORG_UNIT_DIM_ID, 999999) 				CNL_MGT_DEP_DIM_ID				, Nvl(t33.EMPE_DIM_ID, 999999) 					CNL_OFCR_EMPE_DIM_ID			, TWT.AHR_CODE									AHR_CODE						, NVL(MRCH_CGY.MRCH_CGY_DIM_ID, 999999) 		MRCH_CGY_DIM_ID 				, NVL(SRC_STM_DIM.SRC_STM_DIM_ID,999999)	 	SRC_STM_DIM_ID 					, NVL(ORIG_CCY.CCY_DM_ID, 999999)				ORIG_CCY_DIM_ID					, NVL(TWT.TXN_ID, 999999)						TXN_ID							, NVL(MRCH_ORG.ORG_UNIT_DIM_ID, 999999)			MRCH_ORG_UNIT_DIM_ID 			, NVL(TWT.TXN_LCL_DT_ID, 999999)	TXN_LCL_DT_DIM_ID			, NVL(TWT.TXN_PRCH_DT_ID, 999999)	TXN_PRCH_DT_DIM_ID	  FROM TWT_CARD_TXN_ANL_FCT TWT
left join AR_DIM on AR_DIM.AR_ID = twt.PRIM_AR_ID and AR_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join AR_DIM AC_AR_DIM on AC_AR_DIM.AR_ID = twt.AC_AR_ID and AC_AR_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AC_AR_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join CST_DIM on CST_DIM.CST_ID = twt.CST_ID and CST_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and CST_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join PD_DIM on PD_DIM.PD_ID = twt.PD_ID and PD_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and PD_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join AR_LC_ST_DIM AR_LCS on AR_LCS.LVL_0_ID = twt.AR_LIFE_CYC_ST_ID and AR_LCS.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_LCS.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join AR_LC_ST_DIM AC_AR_LCS on AC_AR_LCS.LVL_0_ID = twt.AC_AR_LIFE_CYC_ST_ID and AC_AR_LCS.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AC_AR_LCS.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM on OU_DIM.ORG_UNIT_ID = TWT.ISSUING_ORG_UNIT_ID and OU_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and OU_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM PRIM_OU on PRIM_OU.ORG_UNIT_ID = TWT.PRIM_ORG_UNIT_ID and PRIM_OU.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and PRIM_OU.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join CNL_TP_DIM CNL_TP on CNL_TP.LVL_0_ID = twt.CNL_TP_ID and to_date(:pDate:,'yyyyddd') between CNL_TP.EFF_FM_DT and CNL_TP.EFF_TO_DT - 1
left join CCY_DIM on CCY_DIM.CCY_ID = twt.CCY_ID and to_date(:pDate:,'yyyyddd') between CCY_DIM.EFF_FM_DT and CCY_DIM.EFF_TO_DT - 1
left join CNL_DIM on CNL_DIM.CNL_ID = twt.CNL_ID and to_date(:pDate:,'yyyyddd') between CNL_DIM.EFF_FM_DT and CNL_DIM.EFF_TO_DT - 1
left join MRCH_DIM on MRCH_DIM.MRCH_ID = twt.MRCH_ID and to_date(:pDate:,'yyyyddd') between MRCH_DIM.EFF_FM_DT and MRCH_DIM.EFF_TO_DT - 1

left join CTY_DIM on CTY_DIM.LVL_0_ID = twt.CTY_OF_TXN_ID and to_date(:pDate:,'yyyyddd') between CTY_DIM.EFF_FM_DT and CTY_DIM.EFF_TO_DT - 1
left join TXN_LC_ST_DIM on TXN_LC_ST_DIM.LVL_0_ID = twt.TXN_LC_ST_ID and to_date(:pDate:,'yyyyddd') between TXN_LC_ST_DIM.EFF_FM_DT and TXN_LC_ST_DIM.EFF_TO_DT - 1
left join OU_DIM AR_MGT_DEPT on AR_MGT_DEPT.ORG_UNIT_ID = twt.PRIM_AR_MGT_DEP_ID and to_date(:pDate:,'yyyyddd') between AR_MGT_DEPT.EFF_FM_DT and AR_MGT_DEPT.EFF_TO_DT - 1

left join (SELECT DISTINCT PD_ID, CARD_TP_ACQ_LVL_0_ID FROM EX_MAP_CARD_TP_ACQ e 
            where  to_date(:pDate:,'yyyyddd') between e.EFF_FM_DT and e.EFF_TO_DT - 1
            ) e ON e.PD_ID = twt.PD_ID
left join CARD_TP_ACQ_DIM CARD_TP_ACQ on CARD_TP_ACQ.LVL_0_ID = e.CARD_TP_ACQ_LVL_0_ID and to_date(:pDate:,'yyyyddd') between CARD_TP_ACQ.EFF_FM_DT and CARD_TP_ACQ.EFF_TO_DT - 1
left join TXN_NTW_DIM TXN_NTW on TXN_NTW.LVL_0_ID = twt.TXN_NTW_ID and to_date(:pDate:,'yyyyddd') between TXN_NTW.EFF_FM_DT and TXN_NTW.EFF_TO_DT - 1
left join TXN_CODE_DIM TXN_CODE ON TXN_CODE.LVL_0_ID = twt.TXN_CODE_ID and to_date(:pDate:,'yyyyddd') between TXN_CODE.EFF_FM_DT and TXN_CODE.EFF_TO_DT - 1
left join EMPE_DIM on EMPE_DIM.EMPE_ID = twt.MRCH_OFCR_EMPE_ID  and to_date(:pDate:,'yyyyddd') between EMPE_DIM.EFF_FM_DT and EMPE_DIM.EFF_TO_DT - 1
left join OU_DIM MRCH_MGT_DEP on MRCH_MGT_DEP.ORG_UNIT_ID = twt.MRCH_MGT_DEPT_ID and to_date(:pDate:,'yyyyddd') between MRCH_MGT_DEP.EFF_FM_DT and MRCH_MGT_DEP.EFF_TO_DT - 1
left join TMP_CST_SEG on TMP_CST_SEG.CST_ID = twt.CST_ID

LEFT JOIN OU_DIM t31 ON t31.ORG_UNIT_ID = TWT.CNL_MGT_DEP_ID
 	AND TO_DATE(:pDate:,'YYYYDDD') >= t31.EFF_FM_DT AND TO_DATE(:pDate:,'YYYYDDD') < t31.EFF_TO_DT			
LEFT JOIN EMPE_DIM T33 ON T33.EMPE_ID=TWT.CNL_OFCR_EMPE_ID
 	AND TO_DATE(:pDate:,'YYYYDDD') >= t33.EFF_FM_DT AND TO_DATE(:pDate:,'YYYYDDD') < t33.EFF_TO_DT
LEFT JOIN MRCH_CGY_DIM MRCH_CGY ON TWT.MRCH_CGY_ID = MRCH_CGY.LVL_0_ID AND MRCH_CGY.EFF_FM_DT<=to_date(:pDate:,'YYYYDDD') and MRCH_CGY.EFF_TO_DT>to_date(:pDate:,'YYYYDDD')
LEFT JOIN SRC_STM_DIM ON SRC_STM_DIM.LVL_0_ID = TWT.SRC_STM_ID AND SRC_STM_DIM.EFF_FM_DT <= to_date(:pDate:,'YYYYDDD') AND SRC_STM_DIM.EFF_TO_DT > to_date(:pDate:,'YYYYDDD')
LEFT JOIN CCY_DIM ORIG_CCY ON ORIG_CCY.CCY_ID = TWT.ORIG_CCY_ID AND ORIG_CCY.EFF_FM_DT <= to_date(:pDate:,'YYYYDDD') AND ORIG_CCY.EFF_TO_DT > to_date(:pDate:,'YYYYDDD') 
LEFT JOIN OU_DIM MRCH_ORG ON MRCH_ORG.ORG_UNIT_ID = TWT.MRCH_ORG_UNIT_ID and to_date(:pDate:,'yyyyddd') between MRCH_ORG.EFF_FM_DT and MRCH_ORG.EFF_TO_DT - 1 UNION ALL



SELECT    NVL(CST_DIM.CST_DIM_ID,999999)			CST_DIM_ID
		, NVL(PD_DIM.PD_DIM_ID,999999)				PD_DIM_ID
		, NVL(PRIM_OU.ORG_UNIT_DIM_ID,999999)		PRIM_ORG_DIM_UNIT_ID
		, twt.CDR_DIM_ID							CDR_DIM_ID
		, NVL(FEE_TP.FEE_TP_DIM_ID,999999)			FEE_TP_DIM_ID
		, NVL(TMP_CST_SEG.CST_OFCR_EMPE_DIM_ID,999999)		CST_RLTNP_OFCR_DIM_ID
		, NVL(TMP_CST_SEG.CST_MGT_DEPT_DIM_ID,999999)		CST_RLTNP_DEPT_DIM_ID
		, NVL(TMP_CST_SEG.CST_SEG_DIM_ID,999999)			CST_SEG_DIM_ID
		, NVL(AR_LCS.AR_LIFE_CYC_ST_DIM_ID,999999)			AR_LIFE_CYC_ST_DIM_ID
		, NVL(AR_DIM.AR_DIM_ID,999999)						PRIM_AR_DIM_ID
		, NVL(CNL_TP.CNL_TP_DIM_ID,999999)					CNL_TP_DIM_ID
		, NVL(AC_AR_DIM.AR_DIM_ID,999999)					AC_AR_DIM_ID
		, NVL(AC_AR_LCS.AR_LIFE_CYC_ST_DIM_ID,999999)		AC_AR_LIFE_CYC_ST_DIM_ID
		, NVL(OU_DIM.ORG_UNIT_DIM_ID,999999)				ISSUING_ORG_UNIT_DIM_ID
		, NVL(CCY_DIM.CCY_DM_ID,999999)						CCY_DIM_ID
		, NVL(CNL_DIM.CNL_DIM_ID,999999)					CNL_DIM_ID
		, NVL(MRCH_DIM.MRCH_DIM_ID,999999)					MRCH_DIM_ID
		, NVL(CARD_TP_ACQ.CARD_TP_ACQ_DIM_ID,999999)	CARD_TP_ACQUIRER_DIM_ID
		, NVL(TXN_NTW.TXN_NTW_DIM_ID,999999)				TXN_NTW_DIM_ID
		, NVL(TXN_CODE.TXN_CODE_DIM_ID,999999)				TXN_CODE_DIM_ID
		, NVL(EMPE_DIM.EMPE_DIM_ID,999999)					MRCH_OFCR_EMPE_DIM_ID
		, NVL(MRCH_MGT_DEP.ORG_UNIT_DIM_ID,999999)			MRCH_MGT_DEPT_DIM_ID
		, NVL(CTY_DIM.CTY_DIM_ID, 999999)					CTY_OF_TXN_DIM_ID
		, NVL(TXN_LC_ST_DIM.TXN_LIFE_CYC_ST_DIM_ID, 999999)	TXN_LC_ST_DIM_ID
		, NVL(AR_MGT_DEPT.ORG_UNIT_DIM_ID,999999)			PRIM_AR_MGT_DEP_DIM_ID		
		, twt.CNT_IND			CNT_IND
		, twt.TXN_TCKT_NBR		TXN_TCKT_NBR
		, twt.CR_X_DB_IND		CR_X_DB_IND
		, twt.TXN_AMT_IND		TXN_AMT_IND
		, 0						TXN_CR_AMT_LCY
		, 0						TXN_CR_AMT_FCY
		, 0						TXN_DB_AMT_LCY
		, 0						TXN_DB_AMT_FCY
		, NVL(m.TXN_FEE_INCM_AMT_FCY,0)		TXN_FEE_INCM_AMT_FCY
		, NVL(m.TXN_FEE_INCM_AMT_LCY,0)		TXN_FEE_INCM_AMT_LCY
		, NVL(m.TXN_FEE_EXPN_AMT_FCY,0)		TXN_FEE_EXPN_AMT_FCY
		, NVL(m.TXN_FEE_EXPN_AMT_LCY,0)		TXN_FEE_EXPN_AMT_LCY	
		, NVL(twt.PRIM_AR_ID,999999)					PRIM_AR_ID
		, NVL(twt.MRCH_RATE_PCT,0)						MRCH_RATE_PCT						, twt.TXN_REMARK								TXN_REMARK
		, Nvl(t31.ORG_UNIT_DIM_ID, 999999) 				CNL_MGT_DEP_DIM_ID 					, Nvl(t33.EMPE_DIM_ID, 999999) 					CNL_OFCR_EMPE_DIM_ID				, m.AHR_CODE									AHR_CODE							, NVL(MRCH_CGY.MRCH_CGY_DIM_ID, 999999) 		MRCH_CGY_DIM_ID 					, NVL(SRC_STM_DIM.SRC_STM_DIM_ID,999999)		SRC_STM_DIM_ID 						, NVL(ORIG_CCY.CCY_DM_ID, 999999)				ORIG_CCY_DIM_ID						, NVL(m.TXN_ID, 999999)							TXN_ID							, NVL(MRCH_ORG.ORG_UNIT_DIM_ID, 999999)			MRCH_ORG_UNIT_DIM_ID 			, NVL(m.TXN_LCL_DT_ID, 999999)	TXN_LCL_DT_DIM_ID			, NVL(m.TXN_PRCH_DT_ID, 999999)	TXN_PRCH_DT_DIM_ID	  FROM TWT_FEE_CARD_TXN_ANL_FCT m
inner join TWT_CARD_TXN_ANL_FCT TWT on TWT.TXN_ID = m.TXN_ID
left join AR_DIM on AR_DIM.AR_ID = twt.PRIM_AR_ID and AR_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join AR_DIM AC_AR_DIM on AC_AR_DIM.AR_ID = twt.AC_AR_ID and AC_AR_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AC_AR_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join CST_DIM on CST_DIM.CST_ID = twt.CST_ID and CST_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and CST_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join PD_DIM on PD_DIM.PD_ID = twt.PD_ID and PD_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and PD_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join AR_LC_ST_DIM AR_LCS on AR_LCS.LVL_0_ID = twt.AR_LIFE_CYC_ST_ID and AR_LCS.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_LCS.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join AR_LC_ST_DIM AC_AR_LCS on AC_AR_LCS.LVL_0_ID = twt.AC_AR_LIFE_CYC_ST_ID and AC_AR_LCS.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AC_AR_LCS.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM on OU_DIM.ORG_UNIT_ID = TWT.ISSUING_ORG_UNIT_ID and OU_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and OU_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM PRIM_OU on PRIM_OU.ORG_UNIT_ID = TWT.PRIM_ORG_UNIT_ID and PRIM_OU.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and PRIM_OU.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join CNL_TP_DIM CNL_TP on CNL_TP.LVL_0_ID = twt.CNL_TP_ID and to_date(:pDate:,'yyyyddd') between CNL_TP.EFF_FM_DT and CNL_TP.EFF_TO_DT - 1
left join CCY_DIM on CCY_DIM.CCY_ID = twt.CCY_ID and to_date(:pDate:,'yyyyddd') between CCY_DIM.EFF_FM_DT and CCY_DIM.EFF_TO_DT - 1
left join CNL_DIM on CNL_DIM.CNL_ID = twt.CNL_ID and to_date(:pDate:,'yyyyddd') between CNL_DIM.EFF_FM_DT and CNL_DIM.EFF_TO_DT - 1
left join MRCH_DIM on MRCH_DIM.MRCH_ID = twt.MRCH_ID and to_date(:pDate:,'yyyyddd') between MRCH_DIM.EFF_FM_DT and MRCH_DIM.EFF_TO_DT - 1

left join CTY_DIM on CTY_DIM.LVL_0_ID = twt.CTY_OF_TXN_ID and to_date(:pDate:,'yyyyddd') between CTY_DIM.EFF_FM_DT and CTY_DIM.EFF_TO_DT - 1
left join TXN_LC_ST_DIM on TXN_LC_ST_DIM.LVL_0_ID = twt.TXN_LC_ST_ID and to_date(:pDate:,'yyyyddd') between TXN_LC_ST_DIM.EFF_FM_DT and TXN_LC_ST_DIM.EFF_TO_DT - 1
left join OU_DIM AR_MGT_DEPT on AR_MGT_DEPT.ORG_UNIT_ID = twt.PRIM_AR_MGT_DEP_ID and to_date(:pDate:,'yyyyddd') between AR_MGT_DEPT.EFF_FM_DT and AR_MGT_DEPT.EFF_TO_DT - 1

left join (SELECT DISTINCT PD_ID, CARD_TP_ACQ_LVL_0_ID FROM EX_MAP_CARD_TP_ACQ e 
            where  to_date(:pDate:,'yyyyddd') between e.EFF_FM_DT and e.EFF_TO_DT - 1
            ) e ON e.PD_ID = twt.PD_ID
left join CARD_TP_ACQ_DIM CARD_TP_ACQ on CARD_TP_ACQ.LVL_0_ID = e.CARD_TP_ACQ_LVL_0_ID and to_date(:pDate:,'yyyyddd') between CARD_TP_ACQ.EFF_FM_DT and CARD_TP_ACQ.EFF_TO_DT - 1
left join TXN_NTW_DIM TXN_NTW on TXN_NTW.LVL_0_ID = twt.TXN_NTW_ID and to_date(:pDate:,'yyyyddd') between TXN_NTW.EFF_FM_DT and TXN_NTW.EFF_TO_DT - 1
left join TXN_CODE_DIM TXN_CODE ON TXN_CODE.LVL_0_ID = twt.TXN_CODE_ID and to_date(:pDate:,'yyyyddd') between TXN_CODE.EFF_FM_DT and TXN_CODE.EFF_TO_DT - 1
left join FEE_TP_DIM FEE_TP ON FEE_TP.LVL_0_ID = m.FEE_TP_ID and to_date(:pDate:,'yyyyddd') between FEE_TP.EFF_FM_DT and FEE_TP.EFF_TO_DT - 1
left join EMPE_DIM on EMPE_DIM.EMPE_ID = twt.MRCH_OFCR_EMPE_ID  and to_date(:pDate:,'yyyyddd') between EMPE_DIM.EFF_FM_DT and EMPE_DIM.EFF_TO_DT - 1
left join OU_DIM MRCH_MGT_DEP on MRCH_MGT_DEP.ORG_UNIT_ID = twt.MRCH_MGT_DEPT_ID and to_date(:pDate:,'yyyyddd') between MRCH_MGT_DEP.EFF_FM_DT and MRCH_MGT_DEP.EFF_TO_DT - 1
left join TMP_CST_SEG on TMP_CST_SEG.CST_ID = twt.CST_ID

LEFT JOIN OU_DIM t31 ON t31.ORG_UNIT_ID = twt.CNL_MGT_DEP_ID
 	AND TO_DATE(:pDate:,'YYYYDDD') >= t31.EFF_FM_DT AND TO_DATE(:pDate:,'YYYYDDD') < t31.EFF_TO_DT
LEFT JOIN EMPE_DIM T33 ON T33.EMPE_ID=twt.CNL_OFCR_EMPE_ID
 	AND TO_DATE(:pDate:,'YYYYDDD') >= t33.EFF_FM_DT AND TO_DATE(:pDate:,'YYYYDDD') < t33.EFF_TO_DT
LEFT JOIN MRCH_CGY_DIM MRCH_CGY ON m.MRCH_CGY_ID = MRCH_CGY.LVL_0_ID AND MRCH_CGY.EFF_FM_DT<=to_date(:pDate:,'YYYYDDD') and MRCH_CGY.EFF_TO_DT>to_date(:pDate:,'YYYYDDD') 
LEFT JOIN SRC_STM_DIM ON SRC_STM_DIM.LVL_0_ID = m.SRC_STM_ID AND SRC_STM_DIM.EFF_FM_DT <= to_date(:pDate:,'YYYYDDD') AND SRC_STM_DIM.EFF_TO_DT > to_date(:pDate:,'YYYYDDD')
LEFT JOIN CCY_DIM ORIG_CCY ON ORIG_CCY.CCY_ID = m.ORIG_CCY_ID AND ORIG_CCY.EFF_FM_DT <= to_date(:pDate:,'YYYYDDD') AND ORIG_CCY.EFF_TO_DT > to_date(:pDate:,'YYYYDDD') LEFT JOIN OU_DIM MRCH_ORG ON MRCH_ORG.ORG_UNIT_ID = TWT.MRCH_ORG_UNIT_ID and to_date(:pDate:,'yyyyddd') between MRCH_ORG.EFF_FM_DT and MRCH_ORG.EFF_TO_DT - 1;

