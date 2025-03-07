-- Table for storing customer details
CREATE TABLE Customer (
	CustomerId				int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each customer
	FirstName				nvarchar(20) NOT NULL, -- Customer's first name
	LastName				nvarchar(20) NOT NULL, -- Customer's last name
	DateOfBirth			date NOT NULL, -- Customer's date of birth
	Gender				nvarchar(20) NOT NULL, -- Customer's gender
	StreetAddress			nvarchar(100) NOT NULL, -- Customer's street address
	PostalCode			nvarchar(10) NOT NULL, -- Customer's postal code
	City				nvarchar(100) NOT NULL, -- Customer's city
	Country				nvarchar(100) NOT NULL, -- Customer's country
	PhoneNumber			nvarchar(20) NOT NULL, -- Customer's primary phone number
	PhoneNumberOptional	nvarchar(20), -- Customer's optional phone number
	Email				nvarchar(100) NOT NULL, -- Customer's email address
	IsActive			bit NOT NULL -- Indicates if the customer is active
); 