CREATE TABLE lab_staff (
    staff_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    staff_name VARCHAR(50),
    performance_score INT
);
select * from lab_staff

RUN RANK & DENSE RANK?

SELECT
    dept_name,
    staff_name,
    performance_score,
    RANK() OVER (
        PARTITION BY dept_name
        ORDER BY performance_score DESC
    ) AS rnk,
    DENSE_RANK() OVER (
        PARTITION BY dept_name
        ORDER BY performance_score DESC
    ) AS dense_rnk
FROM lab_staff;
