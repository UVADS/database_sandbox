-- 1) Get a count of the number of records in each of the tables
SELECT COUNT(*) FROM school_year;
-- 1

SELECT COUNT(*) FROM division_name;
-- 132

SELECT COUNT(*) FROM school_name;
-- 1794

SELECT COUNT(*) FROM school_membership;
-- 1862

-- 2) Get a count of number of schools where division_name is Albemarle County
SELECT count(*) FROM school_membership
WHERE division_nm = 'Albemarle County';
-- 24

-- 3) Compute the total number of students enrolled in schools where division_nm is Albemarle County
SELECT sum(total_count) FROM school_membership
WHERE division_nm = 'Albemarle County';
-- 13749

-- 4) Compute the total number of students enrolled across all schools
SELECT sum(total_count) FROM school_membership;
-- 1251970

-- 5) Compute the total number of students enrolled aggregated by division_nm. 
--    Rename total number of students as total_count
--    Show division_nm, total_count. Sort descending by total_count.

SELECT division_nm, sum(total_count) as total_count
FROM school_membership
GROUP BY division_nm
ORDER BY total_count DESC;

-- First two records:
-- Fairfax County	178635
-- Prince William County	90135