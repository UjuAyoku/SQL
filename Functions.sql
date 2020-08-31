-- Find the employee record with the highest salary
select * from employee
where salary = (select max(salary) from employee);

-- Find the 2nd highest salary
select max(salary) from employee
where salary not in (select max(salary) from employee);

-- Find the range of employee based on id
select * from employee
where emp_id between 100 and 108;

-- Return the employee name, highest salary and branch name
select e.first_name, e.last_name, e.salary, b.branch_name
from employee e join branch b on (e.branch_id = b.branch_id);

-- Find the number of employees
select count(emp_id) from employee;

-- Find the number of female employees born after 1970
select count(emp_id) from employee
where sex = 'F' and birth_date >= '1971-01-01';

-- Find the average of all employee salaries
select avg(salary) from employee;

-- Find the average of male employee salaries
select avg(salary) from employee
where sex = 'M';

-- Find the sum of all employee salaries - payroll
select sum(salary) from employee;

-- Find out how many males and how many females there are
select count(sex), sex from employee
group by sex;

-- Find the total sales of each salesman
select sum(total_sales), emp_id from works_with
group by emp_id;

-- Find the spend for each client
select sum(total_sales), client_id from works_with
group by client_id;

-- Find the amount for the highest sales made
select max(total_sales), emp_id from works_with;
