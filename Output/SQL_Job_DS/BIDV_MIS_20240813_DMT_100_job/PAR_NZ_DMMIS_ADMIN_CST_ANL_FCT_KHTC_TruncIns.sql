delete from  CST_ANL_FCT_KHTC where TM_PRD_DIM_ID = (select param_value from cstb_system where param_name = 'ETL_DATE');

insert into CST_ANL_FCT_KHTC
select	t.*
from	CST_ANL_FCT_DAILY  t
		left join CST_TP_DIM cst on t.CST_TP_DIM_ID = cst.CST_TP_DIM_ID
where	t.TM_PRD_DIM_ID  = (select param_value from cstb_system where param_name = 'ETL_DATE')
and		cst.LVL_4_CODE in ('CO', 'FI');

