
SET SERVEROUTPUT ON;
Begin
dbms_output.put_line('Welcome to PL/SQL Session');
end;
/


/**
Query practice
select billingcountry, sum(total)
from invoice
where billingcountry = 'France' and billingcity <> 'Paris'
group by billingcountry
having sum(total) > 100
**/

-- Select the customer first and last name, and the total amount
SELECT c.FirstName, c.LastName, SUM(i.Total) AS TotalAmount
-- Join the Customer and the Invoice tables
FROM Customer c INNER JOIN Invoice i
	-- Complete the common joining column
	USING (customerid)  -- Using can be used if both tables have similar matching column name and data.
-- Group the data by customer name
GROUP BY c.FirstName, c.LastName
-- Order by the total amount in descending order
ORDER BY TotalAmount DESC




-----Writing cross Join:
-- Select first and last names
SELECT e.FirstName || ' ' || e.LastName AS "Employee",
       c.FirstName || ' ' || c.LastName AS "Customer",
	   SUM(i.total) AS "Total"
-- Join Employee with Customer
FROM Employee e CROSS JOIN Customer c
-- Join with Invoice
	 INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
-- Filter for support agents only     
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName, e.LastName, c.FirstName, c.LastName
-- Filter for customers that spent $45 or more
HAVING SUM(i.total) >= 45