# COVID-19 Africa Case Study

## Brief Introduction:
COVID-19 (coronavirus disease 2019) is a disease caused by a virus named SARS-CoV-2. It can be very contagious and spreads quickly. Over one million people have died from COVID-19 in the United States and 257,984 in Africa.[1]

COVID-19 most often causes respiratory symptoms that can feel much like a cold, the flu, or pneumonia. COVID-19 may attack more than your lungs and respiratory system. Other parts of your body may also be affected by the disease. Most people with COVID-19 have mild symptoms, but some people become severely ill.[1]

The COVID-19 pandemic was confirmed to have spread to Africa on 14 February 2020, with the first confirmed case announced in Egypt.[2,3] The first confirmed case in sub-Saharan Africa was announced in Nigeria at the end of February 2020[4]. Within three months, the virus had spread throughout the continent, as Lesotho, the last African sovereign state to have remained free of the virus, reported a case on 13 May 2020.[5,6] By 26 May, it appeared that most African countries were experiencing community transmission, although testing capacity was limited.[7] 

### Problem Statement: 
This dataset encompasses a variety of information collected from global sources on the subject of Covid-19. The objective of this study is to identify countries that successfully handled the pandemic and those that did not. This analysis helps us identify countries that may be deficient in the necessary resources to combat the virus.

#### Step 1: Question Statement
The following questions were asked:

* Total number of deaths in Africa caused by the Covid-19 pandemic
* How many African countries were affected?
* How many African countries got the booster shots?
* What African countries had the highest mortality rate?
* What African countries had the highest Covid-19 cases?
* What are the top 5 African countries that got the booster shots?
* What African countries had the highest number of new cases?
* Total deaths by continent
* African countries with the highest number of ICU patients
* Case Fatality rates in African countries
* Percent population infected
* Total deaths by country
* Likelihood of dying if you contract COVID in Africa (Death and Population Stats)
* Total number of individuals in Africa that have been vaccinated
* The number of people that have been vaccinated and the number of total vaccinations given
* Top 10 countries in Africa that had the highest population percentage that contacted Covid
* People Vaccinated versus Fatality Percentage

#### Step 2: Prepare
The dataset is hosted on Our World in Data. In its initial, unprocessed state, it is available in CSV format with numerous rows. There are no concerns about the data's bias or credibility since it was obtained directly from the source. Regarding licensing, Our World in Data has made this dataset publicly accessible, allowing anyone to utilize it for analysis. I conducted thorough assessments of the dataset's accuracy, completeness, consistency, and trustworthiness at every stage of its existence. These evaluations demonstrate that the dataset maintains uniform column structures, with each column containing the necessary data types.

#### Step 3: Process/Analyze
The dataset was meticulously processed to guarantee that data compilation, filtering, sorting, and cleaning were carried out appropriately for analysis.

Tools used for the analysis:

* Microsoft SQL Server Management Studio
* Microsoft Excel
* Microsoft Power BI

Cleaning:

* The dataset utilized was retrieved from the Our World in Data platform.
* Various datasets were brought into the Microsoft SQL Server Management Studio.
* Within the Microsoft SQL Server Management Studio, data underwent a cleaning process through location-based filtering for the specific analysis.
* A validation check was conducted to confirm that the dataset contained all the essential information needed for the analysis.
* Subsequently, the datasets were imported into Power BI for visualization purposes.


#### Step 4: Report
[Covid-19 Dashboard.pdf](https://github.com/Tosyne25/Covid-19-Case-Study-Africa-Edition/files/12836835/Covid-19.Dashboard.pdf)


Conclusion:
* Country with the highest ICU Patients for South Africa (97.69%) was higher than Algeria (2.31%).
* South Africa accounted for 63.96% of total covid-19 cases.




#### Recommendations:

#### References:
1.  https://www.cdc.gov/coronavirus/2019-ncov/your-health/about-covid-19.html
2.  "Beijing orders 14-day quarantine for all returnees". BBC News. 15 February 2020. Archived from the original on 14 February 2020. Retrieved 24 March 2020.
3.  "Egypt announces first Coronavirus infection". Egypt Today. Archived from the original on 15 February 2020. Retrieved 24 March 2020.
4.  "Nigeria confirms first coronavirus case". BBC News. 28 February 2020. Archived from the original on 2 March 2020. Retrieved 24 March 2020.
5.  "Remote Lesotho becomes last country in Africa to record COVID-19 case". Reuters. 13 May 2020. Archived from the original on 14 May 2020. Retrieved 13 May 2020.
6.  "Coronavirus live updates: Lesotho becomes last African nation to report a coronavirus case". Los Angeles Times. Archived from the original on 13 May 2020. Retrieved 13 May 2020.
7.  Akinwotu E (26 May 2020). "Experts sound alarm over lack of Covid-19 test kits in Africa". The Guardian. Archived from the original on 29 May 2020. Retrieved 29 May 2020.







