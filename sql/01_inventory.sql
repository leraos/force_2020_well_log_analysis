-- 01_inventory.sql
-- Inspection of well_inventory and curve_inventory, part of SQL training using FORCE 2020 dataset

-- ### retrieval

-- ### check well_inventory
select * from well_inventory;

-- ### check curve_inventory
select * from curve_inventory;


select file, curves
from well_inventory
order by curves desc
limit 10;


-- ### filtering rows 

select well, curve, "missing_%" as missing_pct from curve_inventory -- AS gives column name alias 
where missing_pct >50
order by missing_pct desc
limit 30;


-- ### aggregations
-- count()
-- sum()
-- avg()
-- min()
-- max()

-- ### count n of wells
select
    count(*) as number_of_wells
from well_inventory;

-- ### find n unique curves
select
    count(distinct curve) as unique_curves
from curve_inventory;

-- ### find min and max curves
select
    round(avg(curves), 1) as avg_curves_per_well,
    min(curves) as min_curves,
    max(curves) as max_curves
from well_inventory;

-- ### join by file column, inner join gives wells where a matching curve exists.
select
    w.file,
    w.well,
    w.samples,
    w.curves,
    c.curve,
    c.unit,
    c."missing_%" as missing_pct
from well_inventory as w
inner join curve_inventory as c
    on w.file = c.file
order by
    w.file,
    c.curve;

-- ### which wells do not have RHOB
select 
    w.well,
    c.curve
from well_inventory as w

left join curve_inventory as c
    on w.file = c.file
    and c.curve = 'RHOB'
where c.curve is null;

-- ### combine aggregation and joins, which wells have the largest number of complete curves (>=80% complete)?
select
    w.well,
    w.curves as total_curves,
    count(c.curve) as usable_curves
from well_inventory as w
left join curve_inventory as c
    on w.file = c.file
    and c."missing_%" < 20
group by
    w.well,
    w.curves
order by usable_curves desc;