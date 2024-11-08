SELECT t.CDR_DIM_ID
       , AR_DIM.AR_DIM_ID
       , t.LBY_BSC_FTP_AMT_TDY_FCY
       , t.LBY_BSC_FTP_AMT_TDY_LCY
       , t.LBY_AUTO_ADJ_FTP_AMT_TDY_FCY
       , t.LBY_AUTO_ADJ_FTP_AMT_TDY_LCY

  FROM TWT_CARD_AC_AR_ANL_FTP_FCT t
 left join AR_DIM on AR_DIM.AR_ID = t.AR_ID and AR_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and AR_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
  where AR_DIM.AR_DIM_ID is not null;

DELETE FROM CARD_AC_AR_ANL_FTP_FCT WHERE CDR_DIM_ID = :pDate:;

INSERT INTO CARD_AC_AR_ANL_FTP_FCT (CDR_DIM_ID
       , AR_DIM_ID
       , LBY_BSC_FTP_AMT_TDY_FCY
       , LBY_BSC_FTP_AMT_TDY_LCY
       , LBY_AUTO_ADJ_FTP_AMT_TDY_FCY
       , LBY_AUTO_ADJ_FTP_AMT_TDY_LCY
) 
SELECT CDR_DIM_ID
       , AR_DIM_ID
       , LBY_BSC_FTP_AMT_TDY_FCY
       , LBY_BSC_FTP_AMT_TDY_LCY
       , LBY_AUTO_ADJ_FTP_AMT_TDY_FCY
       , LBY_AUTO_ADJ_FTP_AMT_TDY_LCY

  FROM CARD_AC_AR_ANL_FTP_FCT_DAILY;

