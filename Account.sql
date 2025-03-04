-- Table for storing account information
CREATE TABLE Account (
	AccountId			int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each account
	AccountName			nvarchar(20), -- Name of the account
	AccountNumber			bigint NOT NULL, -- Account number
	CreatedDate			date NOT NULL, -- Date the account was created
	AccountType			nvarchar(20) NOT NULL, -- Type of account (e.g., Savings, Checking)
	Balance				decimal(14,2) NOT NULL, -- Current balance of the account
	IsActive			bit NOT NULL -- Indicates if the account is active
); 