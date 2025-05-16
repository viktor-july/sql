# Employee Bonus & Performance (PL/SQL Mini Project)

# About the Project
This is a simple PL/SQL project simulating a bonus calculation system for employees based on their performance scores.  
It demonstrates basic PL/SQL control structures like loops, conditionals, variables, and inserts.

# Project Structure
- create_tables.sql --- Creates necessary tables (Employees, Bonus Report).
- insert_data.sql --- Inserts sample employee data.
- bonus_calculation_procedure.sql --- PL/SQL block to calculate bonuses & generate a report.
- sample_report_query.sql --- Simple query to view the final bonus report.

# Business Logic
- Performance >= 90 -> 20% Bonus
- Performance = 80 - 89 -> 15% Bonus
- Performance = 70 - 79 -> 10% Bonus
- Performance < 70 -> 0% Bonus + Underperformance Flag

# Technologies Used
- Oracle Database
- PL/SQL

# Notes
This project is for educational purposes, to practice basic PL/SQL procedures
