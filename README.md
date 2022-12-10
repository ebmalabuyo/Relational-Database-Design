Scope: 
Project goal was to create a MySQL database from the ground up, centered around a hypothetical retail store which contains information on different aspects which are relevant to this business. Information on all of its employees is stored along with identifying the supervisors and who they supervise. Product information are stored along with some information on the suppliers of each of the product. Purchases and their dates are also be recorded, and these will be tied to another table which specifically identifies which products were purchased as well as other necessary information. A table is also be made on the customers who made these purchases and some of their basic information. Additionally, the employee who conducted the purchase are also be identified.

Demonstrated SQL fundamentals by further exploration of relational database.

Business rules:
-	This retail store is new, so it only currently has customers from the United States
-	Each manager is managed by employee with ID 1 (the store owner). All other employees are managed by one of the 4 managers. 
-	The store has just opened. Therefore, there have only been 40 customers and none of them are repeat customers.
-	This retail store does not allow returns, refunds, or exchanges
-	This retail store does not offer delivery services 
-	This retail store does not offer an option to purchase products online 
-	One product is assigned to one employee
-	An employee can be assigned to several products 
-	One supplier can supply one or many products
-	One product can only be supplied by one and only one supplier
-	One purchase can only have one to many purchase details
-	One purchase detail can have one and only one purchase
-	One purchase detail can contain one or many products
-	One product can only pertain to one purchase detail
-	One customer can have one to many purchases
-	One purchase is fulfilled by one and only one customer 
-	One purchase is assigned to one and only one employee 
-	One employee can be assigned to zero to many purchases 
-	A customer can have only one address
-	A supplier can have only one address 
-	One supervisor can supervise one to many employees
-	One employee can be supervised by one to many supervisors 

Definitions: 
A Customer is a person who shops at the retail store and has purchased at least one product. Each customer is defined by the primary key of CustomerID. The attributes are FirstName, LastName, Address, Email, and State.

An Employee is a person who works at the retail store. They are identified using EmpID as the primary key and the attributes of FirstName, LastName, and DoB. Additionally, employees can also be classified as supervisors. 

A Product is an item that can be purchased at the retail store, using ProductID as the primary key. Each product includes the attributes of Name and Price, and there are three foreign keys included: an EmployeeID, and a SupplierID.

A Purchase is a record of transaction, and it is defined with PurchaseID as the primary key. The date of purchase is recorded as an attribute, and CustomerID and EmployeeID are included as foreign keys.

A Purchase Detail is a log of the specific information tied to a purchase, identified by PurchaseDetailID as the primary key. Each Purchase Detail includes PurchaseID and ProductID as foreign keys.

A Supplier is an organization that provides products. Each supplier has a SupplierID as the primary key, and they possess the attributes of SupplierName, Phone, Email, Address, and State.

