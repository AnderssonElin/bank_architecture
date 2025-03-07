-- Table for managing customer login information
CREATE TABLE [Login] (
	LogInId				int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each login
	CustomerId			int FOREIGN KEY REFERENCES Customer(CustomerId) NOT NULL, -- Reference to the customer
	SocialSecurityNumber	nvarchar(20) NOT NULL, -- Customer's social security number
	[Password]	nvarchar(50) NOT NULL -- Customer's password
); 