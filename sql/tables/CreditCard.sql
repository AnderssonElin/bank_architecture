-- Table for managing credit card details
CREATE TABLE CreditCard (
	CreditCardId		int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each credit card
	CardId				int FOREIGN KEY REFERENCES [Card](CardId) NOT NULL, -- Reference to the card
	CreditLimit			decimal(14,2) NOT NULL, -- Credit limit of the card
	CreditScore			int NOT NULL, -- Credit score associated with the card
	InterestRate			decimal(5,2) NOT NULL, -- Interest rate for the credit card
	OcrOrComment			nvarchar(20) NOT NULL -- OCR number or comment
); 