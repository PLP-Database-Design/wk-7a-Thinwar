--Question One

CREATE TABLE ProductDetail_1NF (
    OrderID INT NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    Product VARCHAR(50) NOT NULL
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

--Question Two
CREATE TABLE Customers (
    customerNumber INT PRIMARY KEY,
    customerName VARCHAR(100) NOT NULL
);

CREATE TABLE Orders (
    orderID INT PRIMARY KEY,
    customerNumber INT NOT NULL,
    FOREIGN KEY (customerNumber) REFERENCES Customers(customerNumber)
);

CREATE TABLE OrderDetails (
    orderID INT NOT NULL,
    product VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (orderID, product),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);

INSERT INTO Customers (customerNumber, customerName) 
VALUES 
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Emily Clark');

INSERT INTO Orders (orderID, customerNumber) 
VALUES 
    (101, 1),
    (102, 2),
    (103, 3);

INSERT INTO OrderDetails (orderID, product, quantity) 
VALUES 
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);

