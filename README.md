# HEDIS Quality Assessment

## Overview

This project analyzes health plan performance across five HEDIS (Healthcare Effectiveness Data and Information Set) quality measures using synthetic member-level data. HEDIS is maintained by the National Committee for Quality Assurance (NCQA) and is the standard framework health plans use to measure and report on quality of care. The analysis is implemented in T-SQL and executed in Microsoft SQL Server Management Studio (SSMS), with queries covering measure compliance, member-level compliance tracking, and provider-level adherence ranking.

## Requirements

1. Identify members with controlled blood pressure readings and combine with gaps in care data to determine CBP (Controlling Blood Pressure) measure compliance.
2. Consolidate member enrollment across all datasets using a temp table and calculate unique member counts by health plan type.
3. Calculate average systolic and diastolic blood pressure readings by gender.
4. Create a comprehensive member compliance view showing total HEDIS measures tracked per member, non-compliant count, and overall compliance rate — filtered to members below 50% compliance and ranked from worst to best.
5. Rank providers by medication adherence outcomes, including total members managed, adherent member count, and adherence rate as a percentage.

## Datasets

| Measure Code | File | Description | Records |
|---|---|---|---|
| CBP | `hedis_cbp_controlling_blood_pressure.csv` | Blood pressure readings, control status, and antihypertensive medication use | 110 |
| BCS | `hedis_bcs_breast_cancer_screening.csv` | Mammogram and MRI screening completion, results, and follow-up tracking | 69 |
| CDC | `hedis_cdc_comprehensive_diabetes_care.csv` | HbA1c testing, eye exams, and nephropathy screening for diabetic members | 100 |
| MAC / MAD / MAH | `hedis_med_adherence_mac_mad_mah.csv` | Prescription fill patterns, days covered, PDC ratios, and adherence status | 176 |
| — | `hedis_gaps_in_care.csv` | Compliance status across all HEDIS measures with outreach and gap closure tracking | 448 |

## Project Structure

```
/data/csv   -- HEDIS datasets (CSV)
/data/db    -- SQL Server database schema
/data/sql   -- SQL queries addressing each requirement
```

## Tools

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL

## Disclaimer

All data in this repository is synthetic and was generated for educational and portfolio purposes. No real patient data, Protected Health Information (PHI), or Personally Identifiable Information (PII) is included.
