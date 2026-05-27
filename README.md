# E-Commerce Sales Analysis — Angani Limited Project

## Overview
Analyzed transactional sales data for a Pakistani e-commerce company
to uncover revenue trends, cancellation risks, discount effectiveness,
and customer behavior across 2016–2018.

## Tools Used
- SQL (data extraction, querying, business logic, cross validation)
- Power BI (data cleaning,interactive dashboard and visualizations)

## Key Metrics
| Metric | Value |
| Total Revenue | KES 659M |
| Lost Revenue (Cancellations) | KES 199M |
| Cancellation Rate | 16% |
| Refund Rate | 1% |
| Year-on-Year Growth (2016→2018) | 183.16% |

## Business Questions Answered
- What is the overall revenue trend across 2016–2018?
- Which payment methods carry the highest cancellation risk?
- Do discounts actually drive more revenue?
- Which customers contribute the most to total revenue?
- How much revenue is being lost to cancellations?

## Key Findings

### Revenue & Growth
- Revenue grew 147% from 2016 to 2017 — very strong growth
- Cash on Delivery (COD) is the single largest revenue driver
  across all channels
- 100% of sales go through commission — no direct sales exist

### Operations & Loss
- 16 in every 100 orders are cancelled — above healthy threshold
- KES 199M lost to cancellations — 30% of total revenue disappearing
- COD carries the highest cancellation risk due to no upfront commitment
- Two refund statuses identified, suggesting an inconsistent
  returns process

### Discounts & Pricing
- Zero correlation found — discounts do NOT increase revenue
- More items sold does not translate to more revenue
- Every discount issued is a pure cost with no measurable return
- True profit margin could not be calculated — no cost price
  data available

### Customers
- Discounted vs non-discounted customer segments measured
  and made visible
- Customer churn rate calculated and tracked year on year
- Top 10 customers by revenue % identified — business
  dependency now visible

## Recommendations
1. Reduce or eliminate Cash on Delivery to cut the 16%
   cancellation rate
2. Stop blanket discounting — data shows it has zero impact
   on revenue growth
3. Collect cost price data to enable true profit margin tracking
4. Introduce upfront payment incentives to reduce cancellation risk
5. Monitor top 10 customer dependency to reduce revenue concentration risk

## Files in This Repo
- `angani_ecommerce.sql` — all SQL queries used
- `dashboard.pbix` — Power BI dashboard file
- `key_insights.png` — dashboard screenshot of key findings

## About This Project
This project was completed as part of work with Angani Limited,
analyzing real e-commerce sales data to provide actionable
business recommendations.
