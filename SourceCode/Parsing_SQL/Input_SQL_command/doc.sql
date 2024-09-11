SELECT 
*
FROM
TBL_PERIOD_EVALUATION pe
LEFT JOIN TBL_CONTRACT_CONDITION cc ON cc.id = pe.CONTRACT_CONDITION_ID
LEFT JOIN TBL_LOAN_PRODUCT_CONDITION lc ON lc.id = pe.CONTRACT_CONDITION_ID
WHERE
pe.EVALUATION_DATE IS NOT NULL
AND ( pe.AUTO_EVALUATION_RESULT IS NULL OR ( pe.AUTO_EVALUATION_RESULT = 'FOLLOW' AND pe.GROUP_CONTRACT_CONDITION = 'SECUR_PROP_INSURANCE' ) )
AND pe.EVALUATION_RESULT IS NULL
AND pe.GROUP_CONTRACT_CONDITION NOT IN ( 'CROSS_SELLING', 'CREDIT_RELATION', 'REVENUE' ) ( pe.STATUS IS NULL OR pe.STATUS <> 'APPROVED' )
AND (
pe.CONTRACT_CONDITION_ID IS NULL
OR ( pe.GROUP_CONTRACT_CONDITION <> 'LOAN_PRODUCT_CONDITION' AND cc.STATUS = 'APPROVED' )
OR ( pe.GROUP_CONTRACT_CONDITION = 'LOAN_PRODUCT_CONDITION' AND lc.STATUS = 'ACTIVE' )
)
AND (
( pe.REGISTER_DATE IS NOT NULL AND TRUNC( pe.REGISTER_DATE ) < TRUNC( SYSDATE ) )
OR ( pe.REGISTER_DATE IS NULL AND TRUNC( pe.EVALUATION_DATE ) < TRUNC( SYSDATE ) )
);