query1 = """
SELECT
    AVG(recovery_score) AS avg_recovery
FROM fact_fitness
"""

print("QUERY 1 - Average Recovery Score")
display(pd.read_sql(query1, conn))

query2 = """
SELECT
    u.gender,
    AVG(f.sleep_hours) AS avg_sleep_hours
FROM fact_fitness f
JOIN dim_user u
    ON f.user_id = u.user_id
GROUP BY u.gender
"""

print("QUERY 2 - Average Sleep Hours by Gender")
display(pd.read_sql(query2, conn))

query3 = """
SELECT
    u.fitness_level,
    AVG(f.recovery_score) AS avg_recovery
FROM fact_fitness f
JOIN dim_user u
    ON f.user_id = u.user_id
GROUP BY u.fitness_level
ORDER BY avg_recovery DESC
"""

print("QUERY 3 - Recovery by Fitness Level")
display(pd.read_sql(query3, conn))

query4 = """
SELECT
    activity_type,
    AVG(calories_burned) AS avg_calories
FROM fact_fitness
GROUP BY activity_type
ORDER BY avg_calories DESC
"""

print("QUERY 4 - Calories Burned by Activity")
display(pd.read_sql(query4, conn))

query5 = """
SELECT
    d.is_weekend,
    AVG(f.recovery_score) AS avg_recovery
FROM fact_fitness f
JOIN dim_date d
    ON f.date = d.date
GROUP BY d.is_weekend
"""

print("QUERY 5 - Weekend vs Weekday Recovery")
display(pd.read_sql(query5, conn))

query6 = """
SELECT
    u.primary_sport,
    AVG(f.hrv) AS avg_hrv
FROM fact_fitness f
JOIN dim_user u
    ON f.user_id = u.user_id
GROUP BY u.primary_sport
ORDER BY avg_hrv DESC
"""

print("QUERY 6 - Average HRV by Sport")
display(pd.read_sql(query6, conn))

query7 = """
SELECT
    activity_type,
    AVG(day_strain) AS avg_day_strain
FROM fact_fitness
GROUP BY activity_type
ORDER BY avg_day_strain DESC
"""

print("QUERY 7 - Highest Strain Activities")
display(pd.read_sql(query7, conn))

query8 = """
SELECT
    date,
    AVG(sleep_hours) AS avg_sleep
FROM fact_fitness
GROUP BY date
ORDER BY date
"""

print("QUERY 8 - Sleep Trend by Date")
display(pd.read_sql(query8, conn))