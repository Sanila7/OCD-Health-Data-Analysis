 -- 1. Count of F v M that have OCD & -- Average Obsession Score by Gender
WITH data AS (
    SELECT
        Gender,
        COUNT(`Patient ID`) AS patient_count,
        ROUND(AVG(`Y-BOCS Score (Obsessions)`), 2) AS avg_obs_score
    FROM ocdanalysis.ocd_patient_dataset
    GROUP BY Gender
)

SELECT
    SUM(CASE WHEN Gender = 'Female' THEN patient_count ELSE 0 END) AS count_female,
    SUM(CASE WHEN Gender = 'Male' THEN patient_count ELSE 0 END) AS count_male,
    ROUND(
        SUM(CASE WHEN Gender = 'Female' THEN patient_count ELSE 0 END) /
        (SUM(CASE WHEN Gender = 'Female' THEN patient_count ELSE 0 END) +
         SUM(CASE WHEN Gender = 'Male' THEN patient_count ELSE 0 END)) * 100, 2
    ) AS pct_female,
    ROUND(
        SUM(CASE WHEN Gender = 'Male' THEN patient_count ELSE 0 END) /
        (SUM(CASE WHEN Gender = 'Female' THEN patient_count ELSE 0 END) +
         SUM(CASE WHEN Gender = 'Male' THEN patient_count ELSE 0 END)) * 100, 2
    ) AS pct_male
FROM data;


 
 
 # -- 2. Count of Patients by Ethnicity and their respective Average Obsession Score

select
	Ethnicity,
	count(`Patient ID`) as patient_count,
	avg(`Y-BOCS Score (Obsessions)`) as obs_score
From ocdanalysis.ocd_patient_dataset
Group by 1
Order by 2;
 
 
 # -- 3. Number of people diagnosed with OCD based on Month

# -- alter table health_data.ocd_patient_dataset
# -- modify `OCD Diagnosis Date` date;
select
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
-- `OCD Diagnosis Date`
count(`Patient ID`) patient_count
from ocdanalysis.ocd_patient_dataset
group by 1
Order by 1;

# -- 4. What is the most common Obsession Type (Count) & it's respective Average Obsession Score

Select
`Obsession Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocdanalysis.ocd_patient_dataset
group by 1
Order by 2
;

# -- 5. What is the most common Compulsion type (Count) & it's respective Average Obsession Score

Select
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocdanalysis.ocd_patient_dataset
group by 1
Order by 2
;
