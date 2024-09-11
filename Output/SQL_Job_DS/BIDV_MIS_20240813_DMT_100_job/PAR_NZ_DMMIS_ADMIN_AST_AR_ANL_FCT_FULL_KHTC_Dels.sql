DELETE FROM AST_AR_ANL_FCT_FULL_KHTC where tm_prd_dim_id = (select param_value from cstb_system where param_name = 'ETL_DATE');

