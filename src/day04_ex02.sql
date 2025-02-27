create view v_generated_dates as
select generate_series('2022-01-01'::DATE, '2022-01-31'::DATE, '1 day'::interval) as generated_date
order by generated_date;

select generated_date::date from v_generated_dates;