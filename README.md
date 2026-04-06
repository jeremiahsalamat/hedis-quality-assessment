# hedis-quality-assessment

## Summary 
Analysis of health care plan on certain quality measures.

## Requirements 
1. Find the members with a controlling blood pressure and combine it with gaps in care to see which of those members are CBP Measure Compliant.
2. Combining member_id and health_plan in a temp table and finding a count of all members in each health plan with unique counts.
3. Find the average systolic/diastolic blood pressure for each gender.
4. Creating a single view that shows each member's status across all their HEDIS measures: The total number of HEDIS measures tracked per member, how many are non-compliant, their overall compliance rate as a percentage, and showing only those who have a compliance rate < 50% ranked from worst to best.
5. Find the providers that have the best medical adherence outcomes showing the provider ID, the total number of members each provider manages for medications, the total number of members who are adherent, and its rate as a percentage ranked. 

## Folders 
/Data/csv 
-- Contains all relevant .csv HEDIS data 

/Data/db
-- Contains SQL database 

/Data/sql
-- Contains SQL queries querying requirements 


