-- Table for managing card information
CREATE TABLE [Card] (
	CardId				int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each card
	CardType			nvarchar(20) NOT NULL, -- Type of card (e.g., Credit, Debit)
	CardNumber			bigint NOT NULL, -- Card number
	FirstName			nvarchar(20) NOT NULL, -- Cardholder's first name
	LastName			nvarchar(20) NOT NULL, -- Cardholder's last name
	CvcCode				int NOT NULL, -- CVC code of the card
	IssuedDate			date NOT NULL, -- Date the card was issued
	ExpiryMonth			int NOT NULL, -- Expiry month of the card
	ExpiryYear			int NOT NULL, -- Expiry year of the card
	CardStatus			nvarchar(20) NOT NULL -- Status of the card (e.g., Active, Inactive)
); 