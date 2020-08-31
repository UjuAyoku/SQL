-- find all employees
select * from employee;

-- find all clients
select * from client;

-- find all employees ordered by salary 
select * from employee
order by salary desc;

-- Find all employees ordered by sex then name
select * from employee
order by sex, first_name;

-- Find the first 5 employees in the table
select * from employee
limit 5;

-- Find the first and last names of all employees
select employee.first_name, employee.last_name from employee;

-- Find the forename and surnames names of all employees
select employee.first_name as forename, employee.last_name as surname from employee;

-- Find out all the different genders
select distinct sex from employee;

-- Find all male employees
select * from employee
where sex = 'M';

-- Find all employees at branch 2
select * from employee
where branch_id = 2;

-- Find all employee's id's and names who were born after 1969
select emp_id, first_name, last_name from employee
where birth_date >= 1970-01-01;

-- Find all female employees at branch 2
select * from employee
where branch_id = 2 and sex = 'F';

-- Find all employees who are female & born after 1969 or who make over 80000
select * from employee
where (sex = 'F'  AND birth_date >= 1970-01-01) OR salary > 80000;

-- Find all employees born between 1970 and 1975
select * from employee
where birth_date between '1970-01-01' AND  '1975-12-31'; 

-- Find all employees named Jim, Michael, Johnny or David
select * from employee
where first_name in ('Jim', 'Michael', 'Johnny', 'David');

