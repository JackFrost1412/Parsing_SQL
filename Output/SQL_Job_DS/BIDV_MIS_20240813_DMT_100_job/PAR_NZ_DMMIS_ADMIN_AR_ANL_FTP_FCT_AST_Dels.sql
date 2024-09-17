SELECT ast_ar.AR_ID									 AR_ID
       , NVL(ast_ar.AST_ADL_FTP_RATE_TDY,0)            AST_ADL_FTP_RATE_TDY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_MTD_FCY,0)            AST_AUTO_ADJ_FTP_AMT_MTD_FCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_MTD_LCY,0)            AST_AUTO_ADJ_FTP_AMT_MTD_LCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_QTD_FCY,0)            AST_AUTO_ADJ_FTP_AMT_QTD_FCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_QTD_LCY,0)            AST_AUTO_ADJ_FTP_AMT_QTD_LCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_TDY_FCY,0)            AST_AUTO_ADJ_FTP_AMT_TDY_FCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_TDY_LCY,0)            AST_AUTO_ADJ_FTP_AMT_TDY_LCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_YTD_FCY,0)            AST_AUTO_ADJ_FTP_AMT_YTD_FCY
       , NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_YTD_LCY,0)            AST_AUTO_ADJ_FTP_AMT_YTD_LCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_MTD_FCY,0)            AST_BSC_FTP_AMT_MTD_FCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_MTD_LCY,0)            AST_BSC_FTP_AMT_MTD_LCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_QTD_FCY,0)            AST_BSC_FTP_AMT_QTD_FCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_QTD_LCY,0)            AST_BSC_FTP_AMT_QTD_LCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_TDY_FCY,0)            AST_BSC_FTP_AMT_TDY_FCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_TDY_LCY,0)            AST_BSC_FTP_AMT_TDY_LCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_YTD_FCY,0)            AST_BSC_FTP_AMT_YTD_FCY
       , NVL(ast_ar.AST_BSC_FTP_AMT_YTD_LCY,0)            AST_BSC_FTP_AMT_YTD_LCY
       , NVL(ast_ar.AST_BSC_FTP_RATE_TDY,0)            AST_BSC_FTP_RATE_TDY
       , NVL(ast_ar.AST_BSC_NET_INT_MRGN_TDY,0)            AST_BSC_NET_INT_MRGN_TDY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_MTD_FCY,0)            AST_MNUL_ADJ_FTP_AMT_MTD_FCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_MTD_LCY,0)            AST_MNUL_ADJ_FTP_AMT_MTD_LCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_QTD_FCY,0)            AST_MNUL_ADJ_FTP_AMT_QTD_FCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_QTD_LCY,0)            AST_MNUL_ADJ_FTP_AMT_QTD_LCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_TDY_FCY,0)            AST_MNUL_ADJ_FTP_AMT_TDY_FCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_TDY_LCY,0)            AST_MNUL_ADJ_FTP_AMT_TDY_LCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_YTD_FCY,0)            AST_MNUL_ADJ_FTP_AMT_YTD_FCY
       , NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_YTD_LCY,0)            AST_MNUL_ADJ_FTP_AMT_YTD_LCY
       , NVL(ast_ar.AST_NET_INT_MRGN_TDY,0)            AST_NET_INT_MRGN_TDY

       , 0            LBY_ADL_FTP_RATE_TDY
       , 0            LBY_AUTO_ADJ_FTP_AMT_MTD_FCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_MTD_LCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_QTD_FCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_QTD_LCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_TDY_FCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_TDY_LCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_YTD_FCY
       , 0            LBY_AUTO_ADJ_FTP_AMT_YTD_LCY
       , 0            LBY_BSC_FTP_AMT_MTD_FCY
       , 0            LBY_BSC_FTP_AMT_MTD_LCY
       , 0            LBY_BSC_FTP_AMT_QTD_FCY
       , 0            LBY_BSC_FTP_AMT_QTD_LCY
       , 0            LBY_BSC_FTP_AMT_TDY_FCY
       , 0            LBY_BSC_FTP_AMT_TDY_LCY
       , 0            LBY_BSC_FTP_AMT_YTD_FCY
       , 0            LBY_BSC_FTP_AMT_YTD_LCY
       , 0            LBY_BSC_FTP_RATE_TDY
       , 0            LBY_BSC_NET_INT_MRGN_TDY
       , 0            LBY_MNUL_ADJ_FTP_AMT_MTD_FCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_MTD_LCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_QTD_FCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_QTD_LCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_TDY_FCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_TDY_LCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_YTD_FCY
       , 0            LBY_MNUL_ADJ_FTP_AMT_YTD_LCY
       , 0            LBY_NET_INT_MRGN_TDY
       , 0            LBY_PNY_FTP_AMT_MTD_FCY
       , 0            LBY_PNY_FTP_AMT_MTD_LCY
       , 0            LBY_PNY_FTP_AMT_QTD_FCY
       , 0            LBY_PNY_FTP_AMT_QTD_LCY
       , 0            LBY_PNY_FTP_AMT_TDY_FCY
       , 0            LBY_PNY_FTP_AMT_TDY_LCY
       , 0            LBY_PNY_FTP_AMT_YTD_FCY
       , 0            LBY_PNY_FTP_AMT_YTD_LCY
       , ast_ar.msr_prd_id 								TM_PRD_DIM_ID            
       , 0            AGRT_ADL_LBY_FTP_RATE_R12MTH
       , 0            AGRT_ADL_LBY_FTP_RATE_R1MTH
       , 0            AGRT_ADL_LBY_FTP_RATE_R3MTH
       , 0            AGRT_ADL_LBY_FTP_RATE_R6MTH
       , 0            AGRT_BSC_LBY_FTP_RATE_R12MTH
       , 0            AGRT_BSC_LBY_FTP_RATE_R1MTH
       , 0            AGRT_BSC_LBY_FTP_RATE_R3MTH
       , 0            AGRT_BSC_LBY_FTP_RATE_R6MTH
       , 0            AGRT_BSC_LBY_NIM_HTD
       , 0            AGRT_LBY_FTP_RATE_R12MTH
       , 0            AGRT_LBY_FTP_RATE_R1MTH
       , 0            AGRT_LBY_FTP_RATE_R3MTH
       , 0            AGRT_LBY_FTP_RATE_R6MTH
       , 0            AGRT_LBY_NIM_HTD
       , 0            AGRT_LBY_FTP_RATE_HTD
	   
	   , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_ROLLING_12MTH,0) AGRT_ADL_AST_FTP_RATE_ROLLING_12MTH
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_ROLLING_1MTH,0) AGRT_ADL_AST_FTP_RATE_ROLLING_1MTH
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_ROLLING_3MTH,0) AGRT_ADL_AST_FTP_RATE_ROLLING_3MTH
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_ROLLING_6MTH,0) AGRT_ADL_AST_FTP_RATE_ROLLING_6MTH
       , NVL(ast_ar.AGRT_ACT_AST_NIM_YTD,0) AGRT_ACT_AST_NIM_YTD
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_HTD,0) AGRT_ADL_AST_FTP_RATE_HTD
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_MTD,0) AGRT_ADL_AST_FTP_RATE_MTD
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_QTD,0) AGRT_ADL_AST_FTP_RATE_QTD
       , NVL(ast_ar.AGRT_ADL_AST_FTP_RATE_YTD,0) AGRT_ADL_AST_FTP_RATE_YTD
       , NVL(ast_ar.AGRT_AST_NIM_HTD,0) AGRT_AST_NIM_HTD
       , NVL(ast_ar.AGRT_AST_NIM_MTD,0) AGRT_AST_NIM_MTD
       , NVL(ast_ar.AGRT_AST_NIM_QTD,0) AGRT_AST_NIM_QTD
       , NVL(ast_ar.AGRT_AST_NIM_R12MTH,0) AGRT_AST_NIM_R12MTH
       , NVL(ast_ar.AGRT_AST_NIM_R1MTH,0) AGRT_AST_NIM_R1MTH
       , NVL(ast_ar.AGRT_AST_NIM_R3MTH,0) AGRT_AST_NIM_R3MTH
       , NVL(ast_ar.AGRT_AST_NIM_R6MTH,0) AGRT_AST_NIM_R6MTH
       , NVL(ast_ar.AGRT_AST_NIM_YTD,0) AGRT_AST_NIM_YTD
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_HTD,0) AGRT_BSC_AST_FTP_RATE_HTD
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_MTD,0) AGRT_BSC_AST_FTP_RATE_MTD
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_QTD,0) AGRT_BSC_AST_FTP_RATE_QTD
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_ROLLING_12MTH,0) AGRT_BSC_AST_FTP_RATE_ROLLING_12MTH
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_ROLLING_1MTH,0) AGRT_BSC_AST_FTP_RATE_ROLLING_1MTH
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_ROLLING_3MTH,0) AGRT_BSC_AST_FTP_RATE_ROLLING_3MTH
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_ROLLING_6MTH,0) AGRT_BSC_AST_FTP_RATE_ROLLING_6MTH
       , NVL(ast_ar.AGRT_BSC_AST_FTP_RATE_YTD,0) AGRT_BSC_AST_FTP_RATE_YTD
       , NVL(ast_ar.AGRT_BSC_AST_NIM_HTD,0) AGRT_BSC_AST_NIM_HTD
       , NVL(ast_ar.AGRT_BSC_AST_NIM_MTD,0) AGRT_BSC_AST_NIM_MTD
       , NVL(ast_ar.AGRT_BSC_AST_NIM_QTD,0) AGRT_BSC_AST_NIM_QTD
       , NVL(ast_ar.AGRT_BSC_AST_NIM_R12MTH,0) AGRT_BSC_AST_NIM_R12MTH
       , NVL(ast_ar.AGRT_BSC_AST_NIM_R1MTH,0) AGRT_BSC_AST_NIM_R1MTH
       , NVL(ast_ar.AGRT_BSC_AST_NIM_R3MTH,0) AGRT_BSC_AST_NIM_R3MTH
       , NVL(ast_ar.AGRT_BSC_AST_NIM_R6MTH,0) AGRT_BSC_AST_NIM_R6MTH
       , NVL(ast_ar.AGRT_BSC_AST_NIM_YTD,0) AGRT_BSC_AST_NIM_YTD	    
       , NVL(ast_ar.AGRT_MNUL_ADJ_AST_NIM_MTD,0) AGRT_MNUL_ADJ_AST_NIM_MTD
       , NVL(ast_ar.AGRT_MNUL_ADJ_AST_NIM_QTD,0) AGRT_MNUL_ADJ_AST_NIM_QTD
       , NVL(ast_ar.AGRT_MNUL_ADJ_AST_NIM_YTD,0) AGRT_MNUL_ADJ_AST_NIM_YTD
	   
	   , 0 AGRT_BAL_AMT_HTD_LCY
       , 0 AGRT_BAL_AMT_MTD_LCY
       , 0 AGRT_BAL_AMT_QTD_LCY
       , 0 AGRT_BAL_AMT_YTD_LCY
       , 0 AGRT_BAL_AMT_ROLLING_12MTH_LCY
       , 0 AGRT_BAL_AMT_ROLLING_1MTH_LCY
       , 0 AGRT_BAL_AMT_ROLLING_3MTH_LCY
       , 0 AGRT_BAL_AMT_ROLLING_6MTH_LCY
	   
	   
       , 0            AGRT_ADL_LBY_FTP_RATE_MTD
       , 0            AGRT_ADL_LBY_FTP_RATE_QTD
       , 0            AGRT_ADL_LBY_FTP_RATE_YTD
       , 0            AGRT_BSC_LBY_FTP_RATE_HTD
       , 0            AGRT_BSC_LBY_FTP_RATE_MTD
       , 0            AGRT_BSC_LBY_FTP_RATE_QTD
       , 0            AGRT_BSC_LBY_FTP_RATE_YTD
       , 0            AGRT_BSC_LBY_NIM_MTD
       , 0            AGRT_BSC_LBY_NIM_QTD
       , 0            AGRT_BSC_LBY_NIM_R12MTH
       , 0            AGRT_BSC_LBY_NIM_R1MTH
       , 0            AGRT_BSC_LBY_NIM_R3MTH
       , 0            AGRT_BSC_LBY_NIM_R6MTH
       , 0            AGRT_BSC_LBY_NIM_YTD
       , 0            AGRT_LBY_FTP_RATE_MTD
       , 0            AGRT_LBY_FTP_RATE_QTD
       , 0            AGRT_LBY_FTP_RATE_YTD
       , 0            AGRT_LBY_NIM_MTD
       , 0            AGRT_LBY_NIM_QTD
       , 0            AGRT_LBY_NIM_R12MTH
       , 0            AGRT_LBY_NIM_R1MTH
       , 0            AGRT_LBY_NIM_R3MTH
       , 0            AGRT_LBY_NIM_R6MTH
       , 0            AGRT_LBY_NIM_YTD
       , 0            AGRT_ADL_LBY_FTP_RATE_HTD	
	   
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_HTD_FCY,0) AST_MNUL_ADJ_FTP_AMT_HTD_FCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_HTD_LCY,0) AST_MNUL_ADJ_FTP_AMT_HTD_LCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_HTD_FCY,0) AST_BSC_FTP_AMT_HTD_FCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_HTD_LCY,0) AST_BSC_FTP_AMT_HTD_LCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_HTD_FCY,0) AST_AUTO_ADJ_FTP_AMT_HTD_FCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_HTD_LCY,0) AST_AUTO_ADJ_FTP_AMT_HTD_LCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R6MTH_FCY,0) AST_AUTO_ADJ_FTP_AMT_R6MTH_FCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R6MTH_LCY,0) AST_AUTO_ADJ_FTP_AMT_R6MTH_LCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R1MTH_FCY,0) AST_AUTO_ADJ_FTP_AMT_R1MTH_FCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R1MTH_LCY,0) AST_AUTO_ADJ_FTP_AMT_R1MTH_LCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R3MTH_FCY,0) AST_AUTO_ADJ_FTP_AMT_R3MTH_FCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R3MTH_LCY,0) AST_AUTO_ADJ_FTP_AMT_R3MTH_LCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R12MTH_FCY,0) AST_AUTO_ADJ_FTP_AMT_R12MTH_FCY
		, NVL(ast_ar.AST_AUTO_ADJ_FTP_AMT_R12MTH_LCY,0) AST_AUTO_ADJ_FTP_AMT_R12MTH_LCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R6MTH_FCY,0) AST_BSC_FTP_AMT_R6MTH_FCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R6MTH_LCY,0) AST_BSC_FTP_AMT_R6MTH_LCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R1MTH_FCY,0) AST_BSC_FTP_AMT_R1MTH_FCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R1MTH_LCY,0) AST_BSC_FTP_AMT_R1MTH_LCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R3MTH_FCY,0) AST_BSC_FTP_AMT_R3MTH_FCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R3MTH_LCY,0) AST_BSC_FTP_AMT_R3MTH_LCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R12MTH_FCY,0) AST_BSC_FTP_AMT_R12MTH_FCY
		, NVL(ast_ar.AST_BSC_FTP_AMT_R12MTH_LCY,0) AST_BSC_FTP_AMT_R12MTH_LCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R6MTH_FCY,0) AST_MNUL_ADJ_FTP_AMT_R6MTH_FCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R6MTH_LCY,0) AST_MNUL_ADJ_FTP_AMT_R6MTH_LCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R1MTH_FCY,0) AST_MNUL_ADJ_FTP_AMT_R1MTH_FCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R1MTH_LCY,0) AST_MNUL_ADJ_FTP_AMT_R1MTH_LCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R3MTH_FCY,0) AST_MNUL_ADJ_FTP_AMT_R3MTH_FCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R3MTH_LCY,0) AST_MNUL_ADJ_FTP_AMT_R3MTH_LCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R12MTH_FCY,0) AST_MNUL_ADJ_FTP_AMT_R12MTH_FCY
		, NVL(ast_ar.AST_MNUL_ADJ_FTP_AMT_R12MTH_LCY,0) AST_MNUL_ADJ_FTP_AMT_R12MTH_LCY
	   
from ast_ar_ftp_int_smy_daily ast_ar;

SELECT 	AR_DIM.AR_ID    		AR_ID, 
		AR_DIM.AR_DIM_ID		AR_DIM_ID,
		TP.AR_TP_DIM_ID         AR_TP_DIM_ID
FROM AR_DIM
INNER JOIN AR_TP_DIM TP ON TP.LVL_0_NM_ENG = AR_DIM.AR_TP
WHERE SRC_STM IN ('SIBS_LNMAST', 'SIBS_ODTIER','CADENCIE_ACCT','SIBS_TFMAST')
AND AR_DIM.EFF_FM_DT <= TO_DATE(:pDate:, 'YYYYDDD')  
AND AR_DIM.EFF_TO_DT > TO_DATE(:pDate:, 'YYYYDDD');
