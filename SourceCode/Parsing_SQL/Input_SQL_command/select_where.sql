select
	chg.ac_ar_id,
	axr.EFF_RATE_PCT	INT_RATE
from TWT_FNC_SVC_AR_ANL_FCT_FA_CHG chg
join ar_dim ar on ar.ar_id = chg.ac_ar_id
where chg.ac_ar_id in (1,2,3)