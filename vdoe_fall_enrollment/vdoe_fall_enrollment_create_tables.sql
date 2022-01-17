-- script to create tables
-- last updated: Jan 17, 2022

-- NOTES
-- 1) SCHOOL_MEMBERSHIP is the master table with enrollment counts per school for a given year
-- 2) PRIMARY KEY uniquely identifies records in a table
-- 3) Notice the use of FOREIGN KEY. IF a primary key from Table A is used in Table B, it is a FOREIGN KEY in B.
-- 4) Foreign keys can be used to enforce constraints like referential integrity.
--    Here we create tables for school year, division name and school name to enforce validity
--    For example, attempts to insert a record into SCHOOL_MEMBERSHIP will fail if school_nm is not in SCHOOL_NAME table
-- 5) School names can be identical in different divisions! Primary key set to (division_nm, school_nm) for unique identification.
--    Building a primary key from multiple fields is called a composite key

CREATE TABLE SCHOOL_YEAR (
    school_yr varchar(10) NOT NULL,
    last_updated timestamp,
    PRIMARY KEY (school_yr)
);

CREATE TABLE DIVISION_NAME (
    division_nm varchar(50) NOT NULL,
    last_updated timestamp,
    PRIMARY KEY (division_nm)
);

CREATE TABLE SCHOOL_NAME (
    school_nm varchar(100) NOT NULL,
    last_updated timestamp,
    PRIMARY KEY (school_nm)
);

CREATE TABLE SCHOOL_MEMBERSHIP (
    school_yr varchar(10) NOT NULL,
    division_number int NOT NULL,
    division_nm varchar(50) NOT NULL,
    school_number int NOT NULL,
    school_nm varchar(100) NOT NULL,
    total_count int,
    last_updated timestamp,
    FOREIGN KEY (school_yr) REFERENCES SCHOOL_YEAR(school_yr),
    FOREIGN KEY (division_nm) REFERENCES DIVISION_NAME(division_nm),
    FOREIGN KEY (school_nm) REFERENCES SCHOOL_NAME(school_nm),    
    PRIMARY KEY (division_nm, school_nm)
);


