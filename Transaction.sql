-- Table for recording transactions between accounts
CREATE TABLE [Transaction] (
	TransactionId		int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each transaction
	AccountId			int FOREIGN KEY REFERENCES Account(AccountId) NOT NULL, -- Reference to the account
	TransactionType		nvarchar(20) NOT NULL, -- Type of transaction (e.g., Deposit, Withdrawal)
	FromAccountNumber	bigint NOT NULL, -- Account number from which the transaction is made
	ToAccountNumber		bigint NOT NULL, -- Account number to which the transaction is made
	TransactionTime		datetime NOT NULL, -- Time of the transaction
	Amount				decimal(14,2) NOT NULL, -- Amount of the transaction
	OcrOrComment		nvarchar(20) NOT NULL -- OCR number or comment
); 