# HEDIS Quality Assessment

## Summary

Analysis of healthcare plan performance across key HEDIS (Healthcare Effectiveness Data and Information Set) quality measures using SQL. This project examines member-level compliance data across five interconnected datasets — including blood pressure control, diabetes care, breast cancer screening, medication adherence, and gaps in care — to assess plan quality and identify areas for improvement.

## Requirements

1. Identify members with controlled blood pressure readings and combine with gaps in care data to determine CBP (Controlling Blood Pressure) measure compliance.
2. Consolidate member enrollment across all datasets using a temp table and calculate unique member counts by health plan type.
3. Calculate average systolic and diastolic blood pressure readings by gender.
4. Create a comprehensive member compliance view showing total HEDIS measures tracked per member, non-compliant count, and overall compliance rate — filtered to members below 50% compliance and ranked from worst to best.
5. Rank providers by medication adherence outcomes, including total members managed, adherent member count, and adherence rate as a percentage.

## Datasets

| File | Description | Records |
|------|-------------|---------|
| `hedis_blood_pressure.csv` | Blood pressure readings, control status, and antihypertensive medication use | 110 |
| `hedis_breast_cancer_screening.csv` | Mammogram and MRI screening completion, results, and follow-up tracking | 69 |
| `hedis_diabetes_care.csv` | HbA1c testing, eye exams, and nephropathy screening for diabetic members | 100 |
| `hedis_gaps_in_care.csv` | Compliance status across all HEDIS measures with outreach and gap closure tracking | 448 |
| `hedis_medication_adherence.csv` | Prescription fill patterns, days covered, PDC ratios, and adherence status | 176 |

## Project Structure

```
/data/csv   -- HEDIS datasets (CSV)
/data/db    -- SQL Server database schema
/data/sql   -- SQL queries addressing each requirement
```

## Tools

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
