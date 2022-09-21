CREATE TABLE products (Id INT PRIMARY KEY, "Name" TEXT);   
	
INSERT INTO Products VALUES                               
	    (1, 'MacBook'),
		(2, 'Samsung T400U'),
		(3, 'Bork CutHair'),
		(4, 'Toothbrush'),
		(5, 'Coca Cola');
		
CREATE TABLE Categories (Id INT PRIMARY KEY, "Name" TEXT); 
	

INSERT INTO Categories VALUES                              
		(1, 'Computer'),
		(2, 'Frige'),
		(3, 'Clipper'),
		(4, 'Electonics');
	

CREATE TABLE ProductCategories (                          
	   ProductId INT,
	   CategoryId INT,
	   FOREIGN KEY (ProductId) REFERENCES products(Id), 
	   FOREIGN KEY (CategoryId) REFERENCES Categories(Id),
	   PRIMARY KEY (ProductId, CategoryId)
);
	
INSERT INTO ProductCategories VALUES                      
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(1, 4),
		(2, 4),
		(3, 4);
	
SELECT P."Name", C."Name" FROM Products P                  
       LEFT JOIN ProductCategories PC ON P.Id = PC.ProductId
	   LEFT JOIN Categories C ON PC.CategoryId = C.Id;

