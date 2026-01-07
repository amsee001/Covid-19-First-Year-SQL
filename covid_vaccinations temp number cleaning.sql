SELECT * FROM covid_vaccinations
WHERE location = 'africa';

UPDATE covid_vaccinations
SET continent = null
WHERE location = 'Asia';

UPDATE covid_vaccinations
SET new_tests = null
WHERE new_tests = 123456;

UPDATE covid_vaccinations
SET total_tests = null
WHERE total_tests = 123456;

UPDATE covid_vaccinations
SET total_tests_per_thousand = null
WHERE total_tests_per_thousand = 123456;

UPDATE covid_vaccinations
SET new_tests_per_thousand = null
WHERE new_tests_per_thousand = 123456;

UPDATE covid_vaccinations
SET new_tests_smoothed = null
WHERE new_tests_smoothed = 123456;

UPDATE covid_vaccinations
SET new_tests_smoothed_per_thousand = null
WHERE new_tests_smoothed_per_thousand = 123456;

UPDATE covid_vaccinations
SET positive_rate = null
WHERE positive_rate = 123456;

UPDATE covid_vaccinations
SET tests_per_case = null
WHERE tests_per_case = 123456;

UPDATE covid_vaccinations
SET tests_units = null
WHERE location = 'Africa';

UPDATE covid_vaccinations
SET total_vaccinations = null
WHERE total_vaccinations = 123456;

UPDATE covid_vaccinations
SET people_vaccinated = null
WHERE people_vaccinated = 123456;


UPDATE covid_vaccinations
SET people_fully_vaccinated = null
WHERE people_fully_vaccinated = 123456;

UPDATE covid_vaccinations
SET new_vaccinations = null
WHERE new_vaccinations = 123456;

UPDATE covid_vaccinations
SET new_vaccinations_smoothed = null
WHERE new_vaccinations_smoothed = 123456;

UPDATE covid_vaccinations
SET total_vaccinations_per_hundred = null
WHERE total_vaccinations_per_hundred = 123456;

UPDATE covid_vaccinations
SET people_vaccinated_per_hundred = null
WHERE people_vaccinated_per_hundred = 123456;

UPDATE covid_vaccinations
SET people_fully_vaccinated_per_hundred = null
WHERE people_fully_vaccinated_per_hundred = 123456;

UPDATE covid_vaccinations
SET new_vaccinations_smoothed_per_million = null
WHERE new_vaccinations_smoothed_per_million = 123456;

UPDATE covid_vaccinations
SET stringency_index = null
WHERE stringency_index = 123456;

UPDATE covid_vaccinations
SET population_density = null
WHERE population_density = 123456;

UPDATE covid_vaccinations
SET median_age = null
WHERE median_age = 123456;

UPDATE covid_vaccinations
SET aged_65_older = null
WHERE aged_65_older = 123456;

UPDATE covid_vaccinations
SET aged_70_older = null
WHERE aged_70_older = 123456;

UPDATE covid_vaccinations
SET gdp_per_capita = null
WHERE gdp_per_capita = 123456;

UPDATE covid_vaccinations
SET extreme_poverty = null
WHERE extreme_poverty = 123456;

UPDATE covid_vaccinations
SET cardiovasc_death_rate = null
WHERE cardiovasc_death_rate = 123456;

UPDATE covid_vaccinations
SET diabetes_prevalence = null
WHERE diabetes_prevalence = 123456;

UPDATE covid_vaccinations
SET female_smokers = null
WHERE female_smokers = 123456;

UPDATE covid_vaccinations
SET male_smokers = null
WHERE male_smokers = 123456;

UPDATE covid_vaccinations
SET handwashing_facilities = null
WHERE handwashing_facilities = 123456;

UPDATE covid_vaccinations
SET hospital_beds_per_thousand = null
WHERE hospital_beds_per_thousand = 123456;

UPDATE covid_vaccinations
SET life_expectancy = null
WHERE life_expectancy = 123456;

UPDATE covid_vaccinations
SET human_development_index = null
WHERE human_development_index = 123456;