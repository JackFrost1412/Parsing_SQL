delete from AR_ANL_FCT_KHTC where tm_prd_dim_id = (select param_value from cstb_system where param_name = 'ETL_DATE');

INSERT INTO AR_ANL_FCT_KHTC
SELECT	T.*
FROM  AR_ANL_FCT_DAILY T
left join CST_TP_DIM cst on t.CST_TP_DIM_ID = cst.CST_TP_DIM_ID
where cst.LVL_4_CODE in ('FI', 'CO');

delete from AR_ANL_FCT_DCTC where TM_PRD_DIM_ID = (select param_value from cstb_system where param_name = 'ETL_DATE');

insert into AR_ANL_FCT_DCTC
select	t.*
from	AR_ANL_FCT_DAILY t
		left join CST_TP_DIM cst on t.CST_TP_DIM_ID = cst.CST_TP_DIM_ID
where	cst.LVL_4_CODE in ('FI');

