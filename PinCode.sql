-- Table for storing PIN codes for cards
CREATE TABLE PinCode (
	PinCodeId			int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each PIN code
	CardId				int FOREIGN KEY REFERENCES [Card](CardId) NOT NULL, -- Reference to the card
	PinCode				int NOT NULL -- The actual PIN code
); 