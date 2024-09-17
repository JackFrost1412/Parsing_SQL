SELECT
	AC_AR_DIM.AC_AR_ID
	,CLS_BAL_WTD_FCY
	,CLS_BAL_WTD_LCY
	,CLS_BAL_MTD_FCY
	,CLS_BAL_MTD_LCY
	,PREPYMT_AMT_MTD_FCY
	,PREPYMT_AMT_MTD_LCY
	,CDR_DT_DIM_ID
	,DSBR_AMT_MTD_LCY
	,ORIG_CLS_BAL_MTD_FCY
	,ORIG_CLS_BAL_MTD_LCY
FROM FNC_SVC_AR_ANL_FCT_FA FCT
LEFT JOIN AC_AR_DIM ON AC_AR_DIM.AC_AR_DIM_ID = FCT.AC_AR_DIM_ID
WHERE FCT.CDR_DT_DIM_ID = to_number(to_char(to_date(:pDate:, 'yyyymmdd')-1, 'yyyymmdd'))
AND FCT.SRO_DIM_ID = 7;
