-- 1
SELECT count(*) AS totalsuppliers
FROM suppliers;

-- 2
select sum(Salary) AS totalsalary
from employees;

-- 3
select min(UnitPrice)
from products;

-- 4
select avg(UnitPrice)
from products;

-- 5
select max(UnitPrice)
from products;

-- 6
select SupplierID, count(*)
From products
group by SupplierID;

-- 7
select CategoryID, avg(UnitPrice)
From products
group by CategoryID;

-- 8
select SupplierID, count(*) as totalitems
From products
group by SupplierID
having count(*) >= 5;

-- 9
select ProductID, ProductName, UnitPrice*UnitsInStock AS inventoryvalue
from products
Order by inventoryvalue  DESC, ProductName;