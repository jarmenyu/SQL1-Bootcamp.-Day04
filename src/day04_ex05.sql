create view v_price_with_discount as
select p.name as name, 
        m.pizza_name as pizza_name, 
        m.price as price, 
        cast(m.price - m.price * 0.1 as integer) as discount_price
from person_order as po
inner join person as p on po.person_id = p.id
inner join menu as m on m.id = po.menu_id
order by name asc, pizza_name asc;

select * from v_price_with_discount;