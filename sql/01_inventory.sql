-- 01_inventory.sql
-- Inventory SQL training on FORCE 2020 dataset

-- ### retrieval

-- select * 
select file, curves
from well_inventory
limit 7;


-- ### filtering rows 

select *
from curve_inventory
where missing_pct >30;