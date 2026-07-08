# Telecom Customer Churn Analysis & Retention Strategy

## Project Overview
This project addresses a critical business challenge: identifying high-risk customer segments and uncovering the root causes of customer attrition (churn) for a telecommunications provider. By building an end-to-end analytics pipeline, this project delivers data-driven, actionable recommendations to improve customer retention and optimize marketing strategies.

## Business Problem
* **Objective:** Analyze historical customer data to identify key indicators of churn.

* **Impact:** Provide the retention team with targeted insights to proactively engage high-risk customers, protecting annual recurring revenue.

## Tech Stack & Skills
* **Data Extraction & Validation:** SQL
* **Data Cleaning & Exploratory Data Analysis (EDA):** Python (Pandas, Seaborn, Matplotlib)
* **Interactive Dashboarding & Reporting:** Power BI

## Repository Structure
* `SarahBorderCapstonePython.ipynb`: Python notebook containing data profiling, handling missing values, and exploratory visualizations.
* `SarahBorderCapstoneChurnSQL4.sql` (and references 1-3): SQL queries used for data aggregation, cohort tracking, and statistical validation.
* `SarahBorderCapstoneVisuals.pbix`: The interactive Power BI dashboard file.
* `Mitigating Customer Churn Strategy.pptx`: Executive presentation summarizing findings and strategic next steps.


## Key Insights & Executive Summary

<img width="877" height="494" alt="SBDashCap1" src="https://github.com/user-attachments/assets/eb39a2fd-5622-4cb4-8fa0-f61eccb26c76" />

Through exploratory data analysis and SQL validation, the following major churn drivers were identified:
1. **Contract Type Risk:** Customers on **Month-to-Month contracts** exhibit significantly higher churn rates compared to those on one- or two-year commitments.
2. **Onboarding Friction:** A critical churn spike occurs within the **first 1–6 months** of tenure, highlighting a need for improved early-stage customer success.
3. **Tech Support & Features:** Customers without tech support or online security services churned at a disproportionately higher rate.


## Strategic Recommendations
Based on the data, the following strategies are recommended for the retention team:
* **Contract Migration Incentives:** Launch a targeted campaign offering a minor discount or loyalty perks to transition high-risk Month-to-Month customers to annual contracts.
* **Early Tenure Onboarding:** Implement a "High-Touch" onboarding sequence during the first 90 days for new sign-ups to clear up technical friction.
* **Service Bundling:** Package tech support and digital security features into core subscriptions to naturally increase customer stickiness.


## How to Review This Project
1. Open `SarahBorderCapstonePython.ipynb` to view the full data preparation and visual analysis code.
2. Review the `.sql` scripts to see the foundational data logic and metrics calculations.
3. Download and open `SarahBorderCapstoneVisuals.pbix` in Power BI Desktop to interact with the live report.
