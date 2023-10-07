
SELECT * 
FROM covid..covid_deaths

--Total deaths in Africa?
SELECT SUM(cast(new_deaths as int)) AS Total_deaths_in_Africa
FROM covid..covid_deaths
WHERE continent = 'Africa' AND new_deaths IS NOT NULL

--How many African countries were affected by covid_19?
SELECT COUNT(DISTINCT location) AS Countries_affected
FROM covid..covid_deaths
WHERE continent = 'Africa'

SELECT * 
FROM covid..covid_vaccination

--How many African countries got the booster shots?
SELECT COUNT(DISTINCT location) African_countries_with_booster_shots
FROM covid..covid_vaccination
WHERE continent = 'Africa' AND total_boosters is not null

--What African countries had the highest mortality rate?
SELECT Top 10 location,(SUM(CAST(new_deaths as int))/population)*1000 AS mortality_rate
FROM covid..covid_deaths
WHERE continent = 'Africa' AND total_deaths is not null
GROUP BY location, population
ORDER BY mortality_rate DESC

--What African countries had the highest covid-19 cases?
SELECT TOP 10 location, MAX(total_cases) AS total_covid_19_cases
FROM covid..covid_deaths
WHERE continent = 'Africa' AND total_cases is not null
GROUP BY location
ORDER BY total_covid_19_cases DESC


--Top 5 countries that got the booster shots?
SELECT TOP 5 location, COUNT(DISTINCT total_boosters) AS countries_with_boostershot
FROM covid..covid_vaccination
WHERE continent = 'Africa' AND total_boosters is not null
GROUP BY location
ORDER BY countries_with_boostershot DESC


--Top 5 African countries that had the highest new cases?
SELECT Top 5 location, MAX(new_cases) AS highest_new_cases
FROM covid..covid_deaths
WHERE continent = 'Africa' AND new_cases is not null
GROUP BY location
ORDER BY highest_new_cases DESC


--Total deaths by continent
SELECT continent, MAX(cast(total_deaths as int)) AS total_deaths_by_continent
FROM covid..covid_deaths
WHERE continent is not null
GROUP BY continent
ORDER BY total_deaths_by_continent DESC


--Countries with the highest icu patients
SELECT location, SUM(cast(icu_patients as int)) AS highest_icu_patients
FROM covid..covid_deaths
WHERE continent = 'Africa' AND icu_patients is not null
GROUP BY location
ORDER BY highest_icu_patients DESC


--Case fatality rate in African countries?
--(highest death percentage)
WITH fatality_rate (location, population, total_deaths, total_cases) AS
(
SELECT location, population, MAX(cast(total_deaths as int)) AS total_death, MAX(total_cases) AS total_cases
FROM covid..covid_deaths
WHERE continent = 'Africa' AND total_deaths is not null AND total_cases is not null
GROUP BY location, population
)
SELECT Top 10 location, population, total_cases, total_deaths, (total_deaths/total_cases)*100 AS african_fatality_rate
FROM fatality_rate
ORDER BY african_fatality_rate DESC


--Percent population infected
SELECT DISTINCT location, population, MAX(total_cases) AS infection_count, MAX(total_cases/population)*100 AS population_infected_pct
FROM covid..covid_deaths
WHERE continent = 'Africa' AND total_cases is not null
GROUP BY location, population
ORDER BY population_infected_pct DESC

--Total deaths by country
SELECT location, SUM(Cast(new_deaths as int)) AS total_deaths_for_countries
FROM covid..covid_deaths
WHERE continent = 'Africa' and new_deaths IS NOT NULL
GROUP BY location
ORDER BY total_deaths_for_countries DESC


--likelihood of dying if you contract covid in Africa(Death and population stats)
SELECT DISTINCT  location, population, SUM(CAST(new_cases as float)) AS total_cases, SUM(Cast(new_deaths as float)) AS total_deaths, (SUM(cast(new_deaths as float))/SUM(CAST(new_cases as float)))*100 AS death_percentage
FROM covid..covid_deaths
WHERE continent = 'Africa' AND new_cases IS NOT NULL AND new_deaths IS NOT NULL
GROUP BY location, population
ORDER BY death_percentage DESC


--Total amount of individuals in Africa that have been vaccinated
SELECT DISTINCT CCD.location, CCD.population, SUM(cast(CCV.new_people_vaccinated_smoothed as int)) AS number_of_people_vaccinated, SUM(CAST(CCV.new_people_vaccinated_smoothed as int))/ CCD.population * 100 AS people_vaccinated_pct
FROM covid..covid_deaths AS CCD
INNER JOIN covid..covid_vaccination AS CCV
 ON CCD.location = CCV.location
 and CCD.date = CCV. date
WHERE CCD.continent = 'Africa' AND new_people_vaccinated_smoothed IS NOT NULL
GROUP BY  CCD.location, CCD.population
ORDER BY people_vaccinated_pct DESC

-- the number of people that have been vaccinated and the number of total vaccinations given.
SELECT DISTINCT CCV.location, CCD.population, COUNT(CAST(people_vaccinated as numeric)) AS people_vaccinated, COUNT(cast(total_vaccinations as numeric)) AS total_vaccinations, CCD.population
FROM covid..covid_vaccination CCV
Inner Join covid..covid_deaths CCD
ON CCV.location = CCD.location
WHERE CCV.continent = 'Africa' 
GROUP BY CCV.location, CCD.population
ORDER BY CCD.population DESC

--Top 10 countries in Africa that had the highest Population percentage that contacted Covid
SELECT TOP 10 location, population, MAX(total_cases) AS highest_infection_count, MAX(total_cases/population)*100 AS population_percentage
FROM covid..covid_deaths
WHERE continent = 'Africa'
GROUP BY location, population
ORDER BY population_percentage desc

--People Vaccinated vs Fatality Percentage
SELECT Top 10 location, SUM(CAST(new_deaths as int)) AS highest_death_count, population, (SUM(CAST(new_deaths as int))/population)*100 AS fatality_percentage
FROM covid..covid_deaths
WHERE continent = 'Africa' and new_deaths IS NOT NULL
GROUP BY location, population
ORDER BY fatality_percentage DESC



