CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    Username NVARCHAR(50),
    Email NVARCHAR(100),
    Password NVARCHAR(100)
);

CREATE TABLE Articles (
    ArticleId INT PRIMARY KEY,
    ArticleName NVARCHAR(100),
    Price DECIMAL(10, 2),
    Quantity INT
);

CREATE TABLE Carts (
    CartId INT PRIMARY KEY,
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    UserId INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);