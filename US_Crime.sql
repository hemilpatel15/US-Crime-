DROP TABLE IF EXISTS crime_reports;

CREATE TABLE crime_reports (
    dr_no BIGINT PRIMARY KEY,
    date_rptd DATE,
    date_occ DATE,
    time_occ INT,
    area INT,
    area_name VARCHAR(100),
    crm_cd INT,
    crm_cd_desc VARCHAR(255),
    vict_age INT,
    vict_age_group VARCHAR(50),
    vict_sex VARCHAR(10),
    premis_cd INT,
    premis_desc VARCHAR(255),
    weapon_desc VARCHAR(255),
    status VARCHAR(10),
    status_desc VARCHAR(100),
    crm_cd_1 INT,
    location TEXT,
    address TEXT,
    street_state VARCHAR(100),
    lat FLOAT,
    lon FLOAT
);
-- Total crimes per year (if date_rptd is a DATE column)
SELECT YEAR(date_rptd) AS year, COUNT(*) AS total_crimes
FROM crime_reports
GROUP BY year
ORDER BY year;

-- Most affected areas
SELECT area_name, COUNT(*) AS total
FROM crime_reports
GROUP BY area_name
ORDER BY total DESC;

-- Crimes by age group
SELECT `vict_age_group`, COUNT(*) AS total
FROM crime_reports
GROUP BY `vict_age_group`;

-- Outcomes of crime (status_desc)
SELECT status_desc, COUNT(*) AS total
FROM crime_reports
GROUP BY status_desc
ORDER BY total DESC;
