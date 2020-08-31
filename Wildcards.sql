-- % any number of characters, _ one character

-- Find the clients who are LLCs
select * from client
where client_name like '%LLC';

-- Find branch suppliers in the label business
select * from branch_supplier 
where supplier_name like '%Label%';

-- Find any employee born in October
select * from employee
where birth_date like '%-10-%';

-- Alterative solution
select * from employee
where birth_date like '____-10%';

-- Find any employee born on the 5th day of the month
select * from employee
where birth_date like '%-05';

-- Find any clients who are schools