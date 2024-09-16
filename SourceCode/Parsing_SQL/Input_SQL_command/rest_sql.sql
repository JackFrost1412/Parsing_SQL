--LOAN
SELECT LOAN.AC_AR_ID, SUM(TOT_AVL_LMT_AMT) TOT_AVL_LMT_AMT
FROM () LOAN
GROUP BY LOAN.AC_AR_ID

UNION ALL

--OD
SELECT AC_AR.AC_AR_ID
        ,nvl(CASE
                        WHEN AR_X_LMT.LMT_AMT > 0
                                THEN (
                                                CASE
                                                        WHEN NVL(TVR_SMY.CLS_VAL_BAL_LCY, 0) < 0
                                                                THEN AR_X_LMT.LMT_AMT + NVL(TVR_SMY.CLS_VAL_BAL_LCY, 0)
                                                        ELSE AR_X_LMT.LMT_AMT
                                                        END
                                                )
                        ELSE C.TOT_AVL_LMT_AMT
                        END, 0) TOT_AVL_LMT_AMT
FROM TWT_FNC_SVC_AR_ANL_FCT_FA_CHG AC_AR
LEFT JOIN AR_X_LMT_TP_RLTNP AR_X_LMT ON AC_AR.AC_AR_ID = AR_X_LMT.AR_ID
LEFT JOIN AR_TVR_SMY TVR_SMY ON AC_AR.AC_AR_ID = TVR_SMY.AR_ID
        AND TVR_SMY.MSR_PRD_ID = #pDate#
LEFT JOIN () C ON AC_AR.AC_AR_ID = C.AR_ID
WHERE AC_AR.MUD = 'OD'
        AND AR_X_LMT.EFF_DT <= AC_AR.LAST_EFF_DT
        AND AR_X_LMT.END_DT > AC_AR.LAST_EFF_DT
        AND AR_X_LMT.LMT_TP_ID = 'B00397055F38C5365C64B45D8CD5DFE3';