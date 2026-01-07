Select *
From covid_deaths;

-- total_cases vs total_deaths
-- Percentage of deaths from contracting Covid-19 in the United States
Select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as death_percentage
From covid_deaths
Where location = 'United States'
Order By 1,2;

-- total_cases vs population
-- Percentage of popualation that contracted Covid-19 in the United states
Select location, date, population, total_cases, (total_cases/population)*100 as polulation_with_covid
From covid_deaths
Where location = 'United States'
Order By 1,2;

-- Countries with the highest infection rate compared to population
Select location, population, max(total_cases) as highest_infection_count,
	max((total_cases/population))*100 as polulation_with_covid
From covid_deaths
group by location, population
Order By polulation_with_covid desc;

-- Continents with highest death count per population
Select continent, max(total_deaths) as total_death_count
From covid_deaths
Where continent is not null
Group By continent
Order By total_death_count desc;

-- Continents with highest death count per population
Select location, max(total_deaths) as total_death_count
From covid_deaths
Where continent is null
Group By location
Order By total_death_count desc;

-- Global cases and deaths
Select date, sum(new_cases) as total_world_cases, sum(new_deaths) as total_world_deaths,
	sum(new_deaths)/sum(new_cases)*100 as world_death_percentage
From covid_deaths
Where continent is not null
Group by date
Order By 1,2;

-- Create view
create view global_cases_and_deaths as
Select date, sum(new_cases) as total_world_cases, sum(new_deaths) as total_world_deaths,
	sum(new_deaths)/sum(new_cases)*100 as world_death_percentage
From covid_deaths
Where continent is not null
Group by date
Order By 1,2;

-- Total combined deaths
Select sum(new_cases) as total_world_cases, sum(new_deaths) as total_world_deaths,
	sum(new_deaths)/sum(new_cases)*100 as world_death_percentage
From covid_deaths
Where continent is not null
Order By 1,2;

Select *
From covid_vaccinations;

-- Population compared to vaccinations
Select cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
	sum(cv.new_vaccinations) over (partition by cd.location Order By cd.location, cd.date) as total_vaccinations,
    sum(cv.new_vaccinations) over (partition by cd.location Order By cd.location, cd.date)/population*100 as vaccination_percentage
From covid_deaths as cd
Inner Join covid_vaccinations as cv
	on cd.location = cv.location
	and cd.date = cv.date
Where cd.continent is not null
order by location, date;

-- Create view for visualization
create view population_to_vaccinations as
Select cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
	sum(cv.new_vaccinations) over (partition by cd.location Order By cd.location, cd.date) as total_vaccinations,
    sum(cv.new_vaccinations) over (partition by cd.location Order By cd.location, cd.date)/population*100 as vaccination_percentage
From covid_deaths as cd
Inner Join covid_vaccinations as cv
	on cd.location = cv.location
	and cd.date = cv.date
Where cd.continent is not null
order by location, date;

-- Tableau Visualization data
Select SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/SUM(New_Cases)*100 as DeathPercentage
From covid_deaths
where continent is not null
-- Group by date
order by 1,2;

Select location, SUM(new_deaths) as TotalDeathCount
From covid_deaths
Where continent is null 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc;

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From covid_deaths
Group by Location, Population
order by PercentPopulationInfected desc;

Select Location, Population, date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From covid_deaths
Group by Location, Population, date
order by PercentPopulationInfected desc;