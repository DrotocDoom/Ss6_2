

CREATE TABLE schema6.employees (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    hire_date DATE
);

INSERT INTO schema6.employees (full_name, department, salary, hire_date)
VALUES
    ('Nguyễn Văn An', 'IT', 12000000, '2023-03-15'),
    ('Trần Thị Bình', 'HR', 8000000, '2022-08-10'),
    ('Lê Hoài An', 'IT', 15000000, '2023-07-20'),
    ('Phạm Quốc Cường', 'Sales', 7000000, '2024-01-05'),
    ('Đặng Thị Lan', 'Marketing', 5500000, '2023-11-12'),
    ('Vũ Minh Anh', 'IT', 18000000, '2022-12-01');

UPDATE schema6.employees
SET salary = salary * 1.10
WHERE department = 'IT';

DELETE FROM schema6.employees
WHERE employees.salary < 6000000;

SELECT * FROM schema6.employees
WHERE full_name ILIKE '%An%';

SELECT * FROM schema6.employees
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31';