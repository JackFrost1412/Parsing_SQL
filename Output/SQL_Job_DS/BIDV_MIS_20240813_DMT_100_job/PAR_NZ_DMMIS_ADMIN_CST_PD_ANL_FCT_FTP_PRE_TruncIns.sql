TRUNCATE TABLE CST_PD_ANL_FCT_FTP_PREDAY;

INSERT INTO CST_PD_ANL_FCT_FTP_PREDAY 
SELECT F.* FROM CST_PD_ANL_FCT_FTP  F
WHERE TM_PRD_DIM_ID = to_number(TO_CHAR((TO_DATE(:pDate:,'YYYYDDD') - 1),'YYYYDDD'), '9999999');
