select 
    "visitId" AS VISIT_ID,
    split_part("visitStartTime"::timestamp,' ',1)::date AS VISIT_DATE,
    split_part("visitStartTime"::timestamp,' ',2)::time AS VISIT_TIME,
    "totals_visits" AS TOTAL_VISITS,
    "totals_hits" AS TOTAL_HITS,
    "totals_pageviews" AS TOTAL_PAGEVIEWS,
    "trafficSource_campaign" AS CAMPAIGN,
    "trafficSource_source" AS SOURCE,
    "trafficSource_medium" AS MEDIUM,
    "trafficSource_isTrueDirect" AS IS_DIRECT,
    "device_browser" AS BROWSER,
    "device_browserVersion" AS BROWSER_VERSION,
    "device_browserSize" AS BROWSER_SIZE,
    "device_isMobile" AS IS_MOBILE
from {{ source('padak_data','visits') }}
