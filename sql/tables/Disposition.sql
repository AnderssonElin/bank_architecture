-- Table for linking customers to their accounts, loans, and cards
CREATE TABLE Disposition (
	DispositionId		int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each disposition
	CustomerId			int FOREIGN KEY REFERENCES Customer(CustomerId) NOT NULL, -- Reference to the customer
	AccountId			int FOREIGN KEY REFERENCES Account(AccountId), -- Reference to the account
	LoanId				int FOREIGN KEY REFERENCES Loan(LoanId), -- Reference to the loan
	CardId				int FOREIGN KEY REFERENCES [Card](CardId) -- Reference to the card
); 