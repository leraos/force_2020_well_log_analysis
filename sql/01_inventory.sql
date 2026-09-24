-- 01_inventory.sql
-- Inspection of well_inventory and curve_inventory, part of SQL training using FORCE 2020 dataset

-- ### retrieval

-- select * 
select file, curves
from well_inventory
order by curves desc
limit 10;

-- ### filtering rows 

select well, curve, missing_pct
from curve_inventory
where missing_pct >50
order by missing_pct desc
limit 30;






-- -- aggregation

-- SELECT
--     curve,
--     COUNT(*) AS wells_with_curve,
--     AVG(missing_pct) AS mean_missing_pct
-- FROM curve_inventory
-- GROUP BY curve
-- ORDER BY wells_with_curve DESC;


-- -- joins

-- SELECT
--     w.well,
--     w.depth_min,
--     w.depth_max,
--     c.curve,
--     c.missing_pct
-- FROM well_inventory AS w
-- LEFT JOIN curve_inventory AS c
--     ON w.well = c.well;


-- -- window functions

-- SELECT
--     well,
--     curve,
--     missing_pct,
--     ROW_NUMBER() OVER (
--         PARTITION BY well
--         ORDER BY missing_pct
--     ) AS coverage_rank
-- FROM curve_inventory;


SELECT *
FROM log_samples
WHERE well = '15/9-14'
LIMIT 5;