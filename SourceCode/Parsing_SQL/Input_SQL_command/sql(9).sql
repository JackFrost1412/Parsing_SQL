SELECT
	ID,
	AUTO_PERIOD,
	BUSINESS_UNIT_NOTE,
	CONTENT,
	CONTRACT_ID,
	CONTROL_METHOD,
	CREATED_DATE,
	CREATED_USER,
	DESCRIPTION,
	DOCUMENT_NAME,
	FIRST_DATE_CHOSEN_PERIOD,
	FREQUENCY,
	FREQUENCY_UNIT,
	NEW_CUSTOMER,
	RULE_MATCH,
	RULE_NUMBER,
	SANCTION,
	SANCTION_TYPE,
	STATUS,
	TOI,
	TOI_MATCH,
	TOI_VALUE,
	TYPE_PERIOD_RATE,
	UPDATED_DATE,
	UPDATED_USER,
	START_PERIOD,
	GROUP_CONTRACT_CONDITION,
	REASON,
	MIN_APPROVAL_VALUE,
	IS_MIN_APPROVAL_VALUE,
	LOAN_PRODUCT_ID,
	CUSTOMER_ID,
	CLONE_ID,
	AUTO_EVALUATION_RESULT,
	CUSTOMER_CLASS,
	CO_CODE,
	COMPANY_NAME_VN,
	VERSION_CONFIG_ID,
	ORIGIN_ID 
FROM
	TBL_REVENUE_CONDITION 
WHERE
	ID = : contractConditionId--( TBL_PERIOD_EVALUATION.CONTRACT_CONDITION_id)
	AND a.AUTO_PERIOD = :autoPeriod--( TBL_PERIOD_EVALUATION.AUTO_PERIOD)
    AND BUSINESS_UNIT_NOTE = :businessUnitNote;--( TBL_PERIOD_EVALUATION.BUSINESS_UNIT_NOTE)