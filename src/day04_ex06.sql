create materialized view mv_dmitriy_visits_and_eats as
select pi.name as pizzeria_name
from person_visits as pv
inner join pizzeria as pi on pi.id = pv.pizzeria_id
inner join person as p on p.id = pv.person_id
inner join menu as m on pi.id = m.pizzeria_id
where m.price < 800 and p.name = 'Dmitriy' and visit_date = '2022-01-08';