# HEDIS Quality Assessment

## Summary
Analysis of healthcare plan performance across key HEDIS (Healthcare Effectiveness Data and Information Set) quality measures using SQL. This project examines member-level compliance data across five interconnected datasets — including blood pressure control, diabetes care, breast cancer screening, medication adherence, and gaps in care — to assess plan quality and identify areas for improvement.

## Requirements
Identify members with controlled blood pressure readings and combine with gaps in care data to determine CBP (Controlling Blood Pressure) measure compliance.
Consolidate member enrollment across all datasets using a temp table and calculate unique member counts by health plan type.
Calculate average systolic and diastolic blood pressure readings by gender.
Create a comprehensive member compliance view showing total HEDIS measures tracked per member, non-compliant count, and overall compliance rate — filtered to members below 50% compliance and ranked from worst to best.
Rank providers by medication adherence outcomes, including total members managed, adherent member count, and adherence rate as a percentage.

## Datasets
FileDescriptionRecordshedis_blood_pressure.csvBlood pressure readings, control status, and antihypertensive medication use110hedis_breast_cancer_screening.csvMammogram and MRI screening completion, results, and follow-up tracking69hedis_diabetes_care.csvHbA1c testing, eye exams, and nephropathy screening for diabetic members100hedis_gaps_in_care.csvCompliance status across all HEDIS measures with outreach and gap closure tracking448hedis_medication_adherence.csvPrescription fill patterns, days covered, PDC ratios, and adherence status176

## Project Structure
/data/csv   -- HEDIS datasets (CSV)
/data/db    -- SQL Server database schema
/data/sql   -- SQL queries addressing each requirement

## Tools
Microsoft SQL Server
SQL Server Management Studio (SSMS)
