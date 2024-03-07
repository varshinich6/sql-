--TASK 1---------------------
use CourierManagementSystem;
create table users (
UserID INT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255) UNIQUE,
Password VARCHAR(255),
ContactNumber VARCHAR(20),
Address TEXT
);
insert into users(UserID,Name,Email,Password,ContactNumber,Address)
values('401','lakshmi','ravibabu401@gmail.com','lakshmigt1971','123456','visakhapatnam'),
      ('402','varshini','varshinichittipalli@gmail.com','varshu11','342189','visakhapatnam'),
	  ('403','ravibabu','ravigt1971@gmail.com','ravigt1971','678123','visakhapatnam'),
	  ('404','sanjana','kusumasanjanachalla@gmail.com','sanjana06','145678','visakhapatnam'),
	  ('405','aswini','20kd1a0401@lendi.org','abc123','125987','banglore'),
	  ('406','sirisha','20kd1a0405@lendi.org','siri143','687091','chennai'),
	  ('407','chandini','20kd1a0409@lendi.org','chand569','901234','hyderbad'),
	  ('408','kishore','21kd1a0533@lendi.org','kish07','875678','kerala'),
	  ('409','likitha','20kd1a0443@lendi.org','likki43','432789','visakhapatnam'),
	  ('410','ammu','20kd1a0402@lendi.org','ammu25','135790','hyderbad');
select * from users;
create table Courier(CourierID INT PRIMARY KEY,SenderName VARCHAR(255), SenderAddress TEXT, ReceiverName VARCHAR(255), ReceiverAddress TEXT, Weight DECIMAL(5, 2), Status VARCHAR(50), TrackingNumber VARCHAR(20) UNIQUE, DeliveryDate DATE);
INSERT INTO Courier (CourierID, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate)
VALUES
(1, 'abc', '1234 Elm Street, Springfield, USA', 'Alice Smith', '5678 Oak Avenue, Rivertown, USA', 1.5, 'In Transit', 'TRACK123', '2024-03-01'),
(2, 'Bob Johnson', '91011 Maple Drive, Hill Valley, USA', 'Emma Davis', '1213 Pine Lane, Oceanview, USA', 2.2, 'Delivered', 'TRACK456', '2024-02-25'),
(3, 'def', '1415 Birch Road, Lakeside, USA', 'Sophia Brown', '1617 Cedar Street, Mountainview, USA', 3.0, 'Pending', 'TRACK789', NULL),
(4, 'Oak', '1819 Willow Court, Sunset, USA', 'James Martinez', '2021 Elm Avenue, Sunrise, USA', 1.8, 'In Transit', 'TRACKABC', '2024-02-27'),
(5, 'han Ander', '2223 Oak Drive, Hillcrest, USA', 'Ava Hernandez', '2425 Maple Street, Lakeshore, USA', 2.5, 'Delivered', 'TRACKDEF', '2024-02-20'),
(6, 'Clark', '2627 Pine Boulevard, Lakeside, USA', 'Sophia Brown', '1617 Cedar Street, Mountainview, USA', 1.0, 'In Transit', 'TRACKGHI', '2024-03-03'),
(7, 'Adams', '2829 Cedar Court, Hill Valley, USA', 'John Doe', '1234 Elm Street, Springfield, USA', 2.7, 'Pending', 'TRACKJKL', NULL),
(8, 'rcia', '3031 Oak Avenue, Rivertown, USA', 'Olivia Taylor', '1819 Willow Court, Sunset, USA', 1.3, 'In Transit', 'TRACKMNO', '2024-02-29'),
(9, 'Brown', '1617 Cedar Street, Mountainview, USA', 'David Clark', '2627 Pine Boulevard, Lakeside, USA', 2.0, 'Delivered', 'TRACKPQR', '2024-02-22'),
(10, 'Eleven', '3233 Elm Drive, Sunrise, USA', 'Michael Wilson', '1415 Birch Road, Lakeside, USA', 2.8, 'Delivered', 'TRACKSTU', '2024-02-18');
select * from Courier;
create table  CourierServices(ServiceID INT PRIMARY KEY, ServiceName VARCHAR(100), Cost DECIMAL(8, 2));
INSERT INTO CourierServices (ServiceID, ServiceName, Cost)
VALUES
(1, 'Standard Delivery', 90.99),
(2, 'Express Delivery', 20.99),
(3, 'International Shipping', 80.99),
(4, 'Same-Day Delivery', 25.99),
(5, 'Next-Day Delivery', 70.99),
(6, 'Overnight Shipping', 18.99),
(7, 'Economy Shipping', 60.99),
(8, 'Priority Shipping', 22.99),
(9, 'Two-Day Shipping', 50.99),
(10, 'Three-Day Shipping', 14.99);
select * from CourierServices;
create Table Employee(EmployeeID INT PRIMARY KEY, Name VARCHAR(255), Email VARCHAR(255) UNIQUE, ContactNumber VARCHAR(20), Role VARCHAR(50), Salary DECIMAL(10, 2));
INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary)
VALUES
(1, 'Jason', 'johnson@example.com', '111-222-3333', 'Manager', 40000.00),
(2, 'Brown', 'brown@example.com', '444-555-6666', 'Courier', 50000.00),
(3, 'Davis', 'davis@example.com', '777-888-9999', 'Customer Service', 35000.00),
(4, 'Miller', 'miller@example.com', '123-456-7890', 'Administrator', 55000.00),
(5, 'Wilson', 'wilson@example.com', '987-654-3210', 'Courier', 13000.00),
(6, 'Garcia', 'garcia@example.com', '111-222-3333', 'Customer Service', 22000.00),
(7, 'Martinez', 'martinez@example.com', '444-555-6666', 'Courier', 32000.00),
(8, 'Taylor', 'taylor@example.com', '777-888-9999', 'Customer Service', 33000.00),
(9, 'Anderson', 'anderson@example.com', '123-456-7890', 'Courier', 30000.00),
(10, 'Hernandez', 'hernandez@example.com', '987-654-3210', 'Courier', 31000.00);
select * from Employee;
create table Location(LocationID INT PRIMARY KEY, LocationName VARCHAR(100), Address TEXT);
INSERT INTO Location (LocationID, LocationName, Address)
VALUES
(1, 'Main Office', '123 Business St, City, Country'),
(2, 'Branch Office', '456 Commerce St, Town, Country'),
(3, 'Warehouse A', '789 Industrial Ave, Industrial Area, Country'),
(4, 'Warehouse B', '101 Distribution St, Logistics Park, Country'),
(5, 'Retail Store 1', '111 Retail St, Shopping Mall, Country'),
(6, 'Retail Store 2', '222 Market Ave, Plaza, Country'),
(7, 'Headquarters', '333 Corporate Blvd, Business District, Country'),
(8, 'Customer Service Center', '444 Support St, Service Area, Country'),
(9, 'Regional Office North', '555 North St, Northern District, Country'),
(10, 'Regional Office South', '666 South Ave, Southern District, Country');
select * from Location;
create table Payment(PaymentID INT PRIMARY KEY, CourierID INT, LocationId INT, Amount DECIMAL(10, 2), PaymentDate DATE, FOREIGN KEY (CourierID) REFERENCES Courier(CourierID), FOREIGN KEY (LocationID) REFERENCES Location(LocationID));
INSERT INTO Payment (PaymentID, CourierID, LocationId, Amount, PaymentDate)
VALUES
(1, 1, 1, 15.99, '2024-02-28'),
(2, 2, 2, 25.99, '2024-02-25'),
(3, 3, 3, 30.99, '2024-02-26'),
(4, 4, 4, 20.99, '2024-02-27'),
(5, 5, 5, 12.99, '2024-02-24'),
(6, 6, 6, 18.99, '2024-02-23'),
(7, 7, 7, 22.99, '2024-02-22'),
(8, 8, 8, 28.99, '2024-02-21'),
(9, 9, 9, 16.99, '2024-02-20'),
(10, 10, 10, 14.99, '2024-02-19');
select * from Payment;

---------------------------------------------------------------------------------------------------------------------------------------------------
-- Task-2

-- 1.List all customers
select name from users;

-- 2.List all orders for a specific customer
select  * from courier where sendername='Eleven';

-- 3. List all couriers
select * from courier;

-- 4. List all packages for a specific order
 select * from courier where trackingnumber='TRACK789';

-- 5. List all deliveries for a specific courier
select * from courier where courierid=4;

-- 6. List all undelivered packages
select * from courier where not status= 'delivered';

-- 7. List all packages that are scheduled for delivery today
select * from courier where DeliveryDate=Getdate();

-- 8. List all packages with a specific status
select * from courier where status= 'pending';

-- 9. Calculate the total number of packages for each courier
select courierid, count(*) as total_packages from courier group by courierid;

--10. Find the average delivery time for each courier 

select c.CourierID,AVG(DATEDIFF(day,p.PaymentDate,c.DeliveryDate)) AS AvgDeliveryTime
from Courier c
left join Payment p ON c.CourierID = p.CourierID
group by c.CourierID;

-- 11. List all packages with a specific weight range
select * from courier where weight between 1.5 and 2.5;


-- 12. Retrieve employees whose names contain 'John'  
select * from employee where name like 'john';

--13. Retrieve all courier records with payments greater than $50.
select c.*
from courier c
left join Payment p ON c.courierID=p.CourierID
where p.Amount>50


 -- 14. Find the total number of couriers handled by each employee. 
select Name , COUNT(*) AS TotalCouriersHandled
from Employee
group by Name;
  
 -- 15 total revenue by each location

select LocationID,sum(amount) as totalrevenue
from Payment
group by LocationID;
 
 -- 16. total courier delvierd to each location
 
select LocationName,COUNT(*) AS TotalCouriersDelivered
from Location
group by LocationName;

-----17. Find the courier with the highest average delivery time:------
select TOP 1 c.CourierID,AVG((DATEDIFF(day, c.DeliveryDate,p.PaymentDate))) AS AvgDeliveryTime
from Courier c
LEFT JOIN Payment p ON c.CourierID = p.CourierID
GROUP BY c.CourierID
ORDER BY AVG((DATEDIFF(day, c.DeliveryDate,p.PaymentDate))) DESC;

-- 18. Find Locations with Total Payments Less Than a Certain Amount 

select TotalPayments,locationId from (
select sum(amount) as 'TotalPayments' ,locationId from payment   group by(locationId)) as subquery where TotalPayments < 55;

-- 19.  Calculate Total Payments per Location
select sum(amount) as 'TotalPayments' ,locationId from payment   group by(locationId);

-- 20. Retrieve couriers who have received payments totaling more than $1000 in a specific location (LocationID = X)
select CourierID, SUM(Amount) AS TotalPayments
from Payment
where LocationID = 9
GROUP BY CourierID
HAVING SUM(Amount) > 1000;


-- 21 Retrieve couriers who have received payments totaling more than $1000 after a certain date (PaymentDate > 'YYYY-MM-DD'): 
select CourierID, SUM(Amount) AS TotalPayments
from Payment
where PaymentDate = '2024-03-08'
GROUP BY CourierID
HAVING SUM(Amount) > 1000;

----22. Retrieve locations where the total amount received is more than $5000 before a certain date (PaymentDate > 'YYYY-MM-DD')
select LocationID, SUM(Amount) AS TotalPayments
from Payment
where PaymentDate > '2024-03-08'
GROUP BY LocationID
HAVING SUM(Amount) > 5000;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TASK 3
--23. Retrieve Payments with Courier Information
select p.PaymentID, p.Amount, p.PaymentDate, c.courierID, c.SenderName
from Payment p
INNER JOIN Courier c ON p.courierID = c.courierID;

--24. Retrieve Payments with Location Information
select p.paymentID, p.Amount, p.paymentDate, l.locationID, l.locationName
from Payment p
INNER JOIN Location l ON p.locationID = l.locationID;

--25. Retrieve Payments with Courier and Location Information
select p.paymentID, p.Amount, p.paymentDate, c.courierID, c.SenderName, l.locationID, l.locationName
from Payment p
INNER JOIN Courier c ON p.courierID = c.courierID
INNER JOIN Location l ON p.locationID = l.locationID;

--26. List all payments with courier details
select p.paymentID, p.Amount, p.paymentDate, c.courierID, c.SenderName
from Payment p
LEFT JOIN Courier c ON p.CourierID=c.CourierID 

--27. Total payments received for each courier 
select c.courierID, c.senderName, SUM(p.Amount) AS totalPayments
from Payment p
RIGHT JOIN Courier c ON p.courierID = c.courierID
GROUP BY c.courierID, c.SenderName;

--28. List payments made on a specific date 
select * from Payment where PaymentDate='2024-02-27'

--29.Get Courier Information for Each Payment
select p.paymentID, p.Amount, p.paymentDate, c.courierID, c.SenderName
from Payment p
INNER JOIN Courier c ON p.courierID = c.courierID;

--30.Get Payment Details with Location 
select p.paymentID, p.Amount, p.paymentDate,l.LocationID, l.LocationName
from Payment p
INNER JOIN Location l ON p.LocationId= l.LocationID;


--31.Calculating Total Payments for Each Courier
select c.CourierID,c.SenderName,sum(p.Amount) as Total_payments
from payment p
join
Courier c
on p.CourierID=c.CourierID
group by c.CourierID,c.SenderName


--32.List Payments Within a Date Range
select p.*, C.SenderName,L.LocationName
from Payment p
join 
Courier c
on P.CourierID = C.CourierID
JOIN
Location l 
on p.LocationID = L.LocationID
where P.PaymentDate BETWEEN '2024-02-20' AND '2024-04-20'

--33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side
select u.UserID, u.Name,c.*
from Users u
full outer join
Courier c 
ON u.Name = c.SenderName

--34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side
select c.courierid,c.sendername,cs.*
from Courier c
full outer join
CourierServices cs
on c.CourierID=cs.ServiceID

--35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side
select e.employeeid,e.Name,p.*
from Employee e
full outer join 
Payment p
on e.EmployeeID=p.PaymentID

--36. List all users and all courier services, showing all possible combinations.
select u.UserID,u.Name,cs.ServiceID,cs.ServiceName
from users u
cross join 
CourierServices cs

--37. List all employees and all locations, showing all possible combinations:
select e.EmployeeID,e.Name,l.LocationID,l.LocationName
from Employee e
cross join 
Location l

--38. Retrieve a list of couriers and their corresponding sender information (if available)
select 
    c.CourierID,
    c.SenderName,
    u.Email AS SenderEmail,
    u.ContactNumber AS SenderContactNumber,
    u.Address AS SenderAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate
from 
    Courier c
left JOIN 
    users u ON c.SenderName = u.Name;

--39. Retrieve a list of couriers and their corresponding receiver information (if available):
select 
     c.CourierID,
    c.SenderName,
    u.Email AS SenderEmail,
    u.ContactNumber AS SenderContactNumber,
    u.Address AS SenderAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate
from
    Courier c
left join users u ON c.ReceiverName = u.Name;

--40. Retrieve a list of couriers along with the courier service details (if available):
select c.CourierID, c.SenderName, c.SenderAddress, c.ReceiverName, c.ReceiverAddress, cs.ServiceName, cs.Cost
from Courier c
JOIN CourierServices cs ON c.CourierID = cs.ServiceID;

--41. Retrieve a list of employees and the number of couriers assigned to each employee:
select e.EmployeeID, e.Name, COUNT(c.CourierID) AS NumCouriers
from Employee e
LEFT JOIN Courier c ON e.EmployeeID = c.CourierID
GROUP BY e.EmployeeID, e.Name;

--42. Retrieve a list of locations and the total payment amount received at each location:
select l.LocationID,l.LocationName,sum(p.Amount) as totalpayment
From Location l
Left join Payment p ON l.LocationID =p.LocationId
GROUP BY l.LocationID , l.LocationName;

--43. Retrieve all couriers sent by the same sender (based on SenderName). 
select * from Courier where SenderName='Bob Johnson'

--44 . List all employees who share the same role.
select e1.EmployeeID, e1.Name, e1.Role
from Employee e1
JOIN Employee e2 ON e1.Role = e2.Role AND e1.EmployeeID <> e2.EmployeeID;

--45. Retrieve all payments made for couriers sent from the same location.
select *
from Payment p
JOIN Courier c ON p.CourierID = c.CourierID
where CAST(c.SenderAddress AS varchar(max)) = '2829 Cedar Court, Hill Valley, USA';

--46.Retrieve all couriers sent from the same location (based on SenderAddress). 
select *
from Courier
where CAST(SenderAddress AS varchar(max)) = '2829 Cedar Court, Hill Valley, USA';

--47. List employees and the number of couriers they have delivered: 
select e.EmployeeID, e.Name, COUNT(c.CourierID) AS NumDeliveredCouriers
from Employee e
JOIN Courier c ON e.EmployeeID = c.CourierID
where c.Status = 'Delivered'
group by e.EmployeeID, e.Name

--48. Find couriers that were paid an amount greater than the cost of their respective courier services
select c.CourierID, c.TrackingNumber
from Courier c
JOIN Payment p ON c.CourierID = p.CourierID
JOIN CourierServices cs ON c.CourierID = cs.ServiceID
WHERE p.Amount > cs.Cost;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TASK 4
--49. Find couriers that have a weight greater than the average weight of all couriers
select *
from Courier
where Weight > (select avg(Weight) from Courier);

--50. Find the names of all employees who have a salary greater than the average salary:
select Name
from Employee
where Salary > (select avg(Salary) from Employee);

--51. Find the total cost of all courier services where the cost is less than the maximum cost
select SUM(Cost)
from CourierServices
where Cost < (select max(Cost) from CourierServices);

--52. Find all couriers that have been paid for
select *
from Courier
where CourierId IN (select DISTINCT CourierId from Payment);

--53. Find the locations where the maximum payment amount was made
select LocationId
from Payment
where Amount = (select MAX(Amount) from Payment);

--54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender 
--(e.g., 'SenderName'):
select *
from Courier c1
where Weight > ALL (select Weight from Courier c2 WHERE c2.SenderName = 'Eleven');



