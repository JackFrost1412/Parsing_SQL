delete from CST_ANL_FCT_FULL_KHTC where tm_prd_dim_id = (select param_value from cstb_system where param_name = 'ETL_DATE');

INSERT INTO CST_ANL_FCT_FULL_KHTC
SELECT t.*
  FROM DMMIS.ADMIN.CST_ANL_FCT_FULL_DAILY t
  left join DMMIS.ADMIN.CST_TP_DIM cst_tp on t.CST_TP_DIM_ID = cst_tp.CST_TP_DIM_ID
  where cst_tp.LVL_4_CODE in ('FI', 'CO');

