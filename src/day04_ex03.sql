select g.generated_date::date as missing_date
from v_generated_dates as g 
left join person_visits as pv on g.generated_date = pv.visit_date
where pv.visit_date is null
order by missing_date;