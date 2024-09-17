SELECT 
		 TWT.CST_ID					CST_ID
       , TWT.PD_ID					PD_ID
	   , TWT.ORG_UNIT_ID 
       , NVL(CST_DIM.CST_DIM_ID, 999999)		CST_DIM_ID
       , NVL(PD_DIM.PD_DIM_ID, 999999)			PD_DIM_ID
       , NVL(OU_DIM.ORG_UNIT_DIM_ID, 999999)	ORG_UNIT_DIM_ID
       , TWT.TM_PRD_DIM_ID					TM_PRD_DIM_ID
       , NVL(SRC_STM_DIM.SRC_STM_DIM_ID, '999999')	SRC_STM_DIM_ID
	   
		, NVL(PRE.TOT_AST_ADJ_FTP_AMT_LTD_LCY, 0) + NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0)					TOT_AST_ADJ_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_AST_ADJ_FTP_AMT_MTD_LCY, 0) + NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0) END			TOT_AST_ADJ_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0) + NVL(PRE.TOT_AST_ADJ_FTP_AMT_QTD_LCY, 0)  END 		TOT_AST_ADJ_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.TOT_AST_ADJ_FTP_AMT_YTD_LCY, 0)  END 		TOT_AST_ADJ_FTP_AMT_YTD_LCY
		, NVL(TWT.TOT_AST_ADJ_FTP_AMT_TDY_LCY, 0)					TOT_AST_ADJ_FTP_AMT_TDY_LCY         
							
		, NVL(PRE.TOT_AST_BSC_FTP_AMT_LTD_LCY, 0) + NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0)					TOT_AST_BSC_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_AST_BSC_FTP_AMT_MTD_LCY, 0) + NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0) END			TOT_AST_BSC_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0) + NVL(PRE.TOT_AST_BSC_FTP_AMT_QTD_LCY, 0)  END 		TOT_AST_BSC_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.TOT_AST_BSC_FTP_AMT_YTD_LCY, 0)  END 		TOT_AST_BSC_FTP_AMT_YTD_LCY
		, NVL(TWT.TOT_AST_BSC_FTP_AMT_TDY_LCY, 0)					TOT_AST_BSC_FTP_AMT_TDY_LCY        
							
		, NVL(PRE.TOT_AST_MNUL_ADJ_FTP_AMT_LTD_LCY, 0) + NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0)					TOT_AST_MNUL_ADJ_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_AST_MNUL_ADJ_FTP_AMT_MTD_LCY, 0) + NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0) END			TOT_AST_MNUL_ADJ_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0) + NVL(PRE.TOT_AST_MNUL_ADJ_FTP_AMT_QTD_LCY, 0)  END 		TOT_AST_MNUL_ADJ_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.TOT_AST_MNUL_ADJ_FTP_AMT_YTD_LCY, 0)  END 		TOT_AST_MNUL_ADJ_FTP_AMT_YTD_LCY
		, NVL(TWT.TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY, 0)					TOT_AST_MNUL_ADJ_FTP_AMT_TDY_LCY          
							
		, NVL(PRE.TOT_LBY_ADJ_FTP_AMT_LTD_LCY, 0) + NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0)					TOT_LBY_ADJ_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_LBY_ADJ_FTP_AMT_MTD_LCY, 0) + NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0) END			TOT_LBY_ADJ_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0) + NVL(PRE.TOT_LBY_ADJ_FTP_AMT_QTD_LCY, 0)  END 		TOT_LBY_ADJ_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.TOT_LBY_ADJ_FTP_AMT_YTD_LCY, 0)  END 		TOT_LBY_ADJ_FTP_AMT_YTD_LCY
		, NVL(TWT.TOT_LBY_ADJ_FTP_AMT_TDY_LCY, 0)					TOT_LBY_ADJ_FTP_AMT_TDY_LCY          
							
		, NVL(PRE.TOT_LBY_BSC_FTP_AMT_LTD_LCY, 0) + NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0)					TOT_LBY_BSC_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_LBY_BSC_FTP_AMT_MTD_LCY, 0) + NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0) END			TOT_LBY_BSC_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0) + NVL(PRE.TOT_LBY_BSC_FTP_AMT_QTD_LCY, 0)  END 		TOT_LBY_BSC_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.TOT_LBY_BSC_FTP_AMT_YTD_LCY, 0)  END 		TOT_LBY_BSC_FTP_AMT_YTD_LCY
		, NVL(TWT.TOT_LBY_BSC_FTP_AMT_TDY_LCY, 0)					TOT_LBY_BSC_FTP_AMT_TDY_LCY          
							
		, NVL(PRE.TOT_LBY_MNUL_FTP_AMT_LTD_LCY, 0)	+ 	NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0)			TOT_LBY_MNUL_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.TOT_LBY_MNUL_FTP_AMT_MTD_LCY, 0) + NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0) END			TOT_LBY_MNUL_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0) + NVL(PRE.TOT_LBY_MNUL_FTP_AMT_QTD_LCY, 0)  END 		TOT_LBY_MNUL_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.TOT_LBY_MNUL_FTP_AMT_YTD_LCY, 0)  END 		TOT_LBY_MNUL_FTP_AMT_YTD_LCY
		, NVL(TWT.TOT_LBY_MNUL_FTP_AMT_TDY_LCY, 0)					TOT_LBY_MNUL_FTP_AMT_TDY_LCY 

		, NVL(PRE.LBY_PNY_FTP_AMT_LTD_LCY, 0)	+ 	NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0)			LBY_PNY_FTP_AMT_LTD_LCY           
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_MO = 1	THEN NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0) ELSE  NVL(PRE.LBY_PNY_FTP_AMT_MTD_LCY, 0) + NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0) END			LBY_PNY_FTP_AMT_MTD_LCY
		, CASE WHEN TO_NUMBER(extract (day from TO_DATE(:pDate:,'YYYYDDD') - date_trunc('quarter', TO_DATE(:pDate:,'YYYYDDD'))),99) + 1 = 1 
	      THEN NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0)   ELSE NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0) + NVL(PRE.LBY_PNY_FTP_AMT_QTD_LCY, 0)  END 		LBY_PNY_FTP_AMT_QTD_LCY
		, CASE WHEN CDR_DT_DIM.DAY_NBR_IN_CDR_YR = 1	THEN NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0) ELSE 	NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0) + 	NVL(PRE.LBY_PNY_FTP_AMT_YTD_LCY, 0)  END 		LBY_PNY_FTP_AMT_YTD_LCY
		, NVL(TWT.LBY_PNY_FTP_AMT_TDY_LCY, 0)					LBY_PNY_FTP_AMT_TDY_LCY
FROM TWT_CST_PD_ANL_FTP  TWT
INNER JOIN 		CDR_DT_DIM CDR_DT_DIM ON TWT.TM_PRD_DIM_ID = CDR_DT_DIM.CDR_DT_DIM_ID
LEFT JOIN  		CST_DIM CST_DIM 			ON CST_DIM.CST_ID = twt.CST_ID AND TO_DATE(:pDate:,'YYYYDDD') >= CST_DIM.EFF_FM_DT AND CST_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN 		OU_DIM OU_DIM 				ON TWT.ORG_UNIT_ID = OU_DIM.ORG_UNIT_ID AND TO_DATE(:pDate:,'YYYYDDD') >= OU_DIM.EFF_FM_DT AND OU_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')

LEFT  JOIN PD_DIM PD_DIM			ON PD_DIM.PD_ID = TWT.PD_ID AND TO_DATE(:pDate:,'YYYYDDD') >= PD_DIM.EFF_FM_DT AND PD_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')
LEFT JOIN SRC_STM_DIM SRC_STM_DIM	ON SRC_STM_DIM.LVL_0_ID	= TWT.SRC_STM_ID AND TO_DATE(:pDate:,'YYYYDDD') >= SRC_STM_DIM.EFF_FM_DT AND SRC_STM_DIM.EFF_TO_DT >  TO_DATE(:pDate:,'YYYYDDD')

LEFT JOIN cst_pd_anl_fct_ftp_preday  PRE ON PRE.CST_ID = TWT.CST_ID    AND PRE.PD_ID = TWT.PD_ID 
AND PRE.ORG_UNIT_ID = TWT.ORG_UNIT_ID   AND PRE.SRC_STM_DIM_ID = SRC_STM_DIM.SRC_STM_DIM_ID;

delete from CST_PD_ANL_FCT_FTP where tm_prd_dim_id = :pDate:;

insert into CST_PD_ANL_FCT_FTP 
select * from CST_PD_ANL_FCT_FTP_DAILY;
