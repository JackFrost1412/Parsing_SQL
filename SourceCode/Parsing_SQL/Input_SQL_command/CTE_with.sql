WITH max_period AS ( SELECT MAX( PERIOD ) AS PERIOD, TYPE FROM TBL_REVENUE_PERIOD_RATE GROUP BY TYPE );