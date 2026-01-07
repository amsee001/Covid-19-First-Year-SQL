SELECT * FROM covid_data.covid_deaths;

UPDATE covid_deaths
SET continent = null
WHERE continent = 123456;

UPDATE covid_deaths
SET population = null
WHERE polulation = 123456;

UPDATE covid_deaths
SET total_cases = null
WHERE total_cases = 123456;

UPDATE covid_deaths
SET new_cases = null
WHERE new_cases = 123456;

UPDATE covid_deaths
SET new_cases_smoothed = null
WHERE new_cases_smoothed = 123456;

UPDATE covid_deaths
SET total_deaths = null
WHERE total_deaths = 123456;

UPDATE covid_deaths
SET new_deaths = null
WHERE new_deaths = 123456;

UPDATE covid_deaths
SET new_deaths_smoothed = null
WHERE new_deaths_smoothed = 123456;

UPDATE covid_deaths
SET new_cases_smoothed = null
WHERE new_cases_smoothed = 123456;

UPDATE covid_deaths
SET total_cases_per_million = null
WHERE new_deaths = 123456;

UPDATE covid_deaths
SET new_cases_per_million = null
WHERE new_cases_per_million = 123456;

UPDATE covid_deaths
SET new_cases_smoothed_per_million = null
WHERE new_cases_smoothed_per_million = 123456;

UPDATE covid_deaths
SET total_deaths_per_million = null
WHERE total_deaths_per_million = 123456;

UPDATE covid_deaths
SET new_deaths_per_million = null
WHERE new_deaths_per_million = 123456;

UPDATE covid_deaths
SET new_deaths_smoothed_per_million = null
WHERE new_deaths_smoothed_per_million = 123456;

UPDATE covid_deaths
SET reproduction_rate = null
WHERE reproduction_rate = 123456;

UPDATE covid_deaths
SET icu_patients = null
WHERE icu_patients = 123456;

UPDATE covid_deaths
SET icu_patients_per_million = null
WHERE icu_patients_per_million = 123456;

UPDATE covid_deaths
SET hosp_patients = null
WHERE hosp_patients = 123456;

UPDATE covid_deaths
SET hosp_patients_per_million = null
WHERE hosp_patients_per_million = 123456;

UPDATE covid_deaths
SET weekly_icu_admissions = null
WHERE weekly_icu_admissions = 123456;

UPDATE covid_deaths
SET weekly_icu_admissions_per_million = null
WHERE weekly_icu_admissions_per_million = 123456;

UPDATE covid_deaths
SET weekly_hosp_admissions = null
WHERE weekly_hosp_admissions = 123456;

UPDATE covid_deaths
SET weekly_hosp_admissions_per_million = null
WHERE weekly_hosp_admissions_per_million = 123456;