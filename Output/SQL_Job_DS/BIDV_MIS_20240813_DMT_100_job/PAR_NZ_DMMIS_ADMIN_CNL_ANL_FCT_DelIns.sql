select
	  twt.CDR_DIM_ID						CDR_DIM_ID
	, CNL_DIM.CNL_DIM_ID						CNL_DIM_ID
	, NVL(OU_DIM.ORG_UNIT_DIM_ID,999999)		ORG_UNIT_DIM_ID
	, twt.CNL_ID							CNL_ID
	, NVL(dept.ORG_UNIT_DIM_ID,999999) MGT_DEPT_DIM_ID from TWT_CNL_ANL_FCT TWT
left join CNL_DIM on CNL_DIM.CNL_ID = TWT.CNL_ID and CNL_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and CNL_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM on OU_DIM.ORG_UNIT_ID = TWT.ORG_UNIT_ID and OU_DIM.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and OU_DIM.EFF_TO_DT > to_date(:pDate:,'yyyyddd')
left join OU_DIM dept on dept.ORG_UNIT_ID = TWT.MGT_DEPT_ID and dept.EFF_FM_DT <= to_date(:pDate:,'yyyyddd') and dept.EFF_TO_DT > to_date(:pDate:,'yyyyddd');

DELETE FROM CNL_ANL_FCT WHERE CDR_DIM_ID = :pDate:;

INSERT INTO CNL_ANL_FCT (CDR_DIM_ID
       , CNL_DIM_ID
       , ORG_UNIT_DIM_ID
       , CNL_ID
	   , MGT_DEPT_DIM_ID ) 
SELECT CDR_DIM_ID
       , CNL_DIM_ID
       , ORG_UNIT_DIM_ID
       , CNL_ID
	   , MGT_DEPT_DIM_ID 
  FROM CNL_ANL_FCT_DAILY;

