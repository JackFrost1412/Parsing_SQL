UPDATE CDR_DT_DIM SET DATA_F = 1 WHERE CDR_DT_DIM_ID = (SELECT PARAM_VALUE FROM CSTB_SYSTEM WHERE PARAM_NAME = 'ETL_DATE');

