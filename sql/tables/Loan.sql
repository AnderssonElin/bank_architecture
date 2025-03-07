-- Table for storing loan details
CREATE TABLE Loan (
	LoanId				int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each loan
	StartDate			date NOT NULL, -- Start date of the loan
	Amount				decimal(14,2) NOT NULL, -- Amount of the loan
	InterestRate			decimal(5,2) NOT NULL, -- Interest rate of the loan
	LoanStatus			nvarchar(20) NOT NULL -- Current status of the loan (e.g., Active, Closed)
); 