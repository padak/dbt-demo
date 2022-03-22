select 
    VISIT_DATE,
    HOUR(VISIT_TIME) AS VISIT_HOUR,
    BROWSER,
    sum(TOTAL_VISITS) AS HOURLY_VISITS
from {{ ref('stg_visits') }}
group by 1,2,3