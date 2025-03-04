-- Table for managing credit card invoices
CREATE TABLE CreditCardInvoice (
	CreditCardInvoiceId	int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each credit card invoice
	CreditCardId		int FOREIGN KEY REFERENCES CreditCard(CreditCardId) NOT NULL, -- Reference to the credit card
	FromPeriod			date NOT NULL, -- Start date of the invoice period
	ToPeriod			date NOT NULL, -- End date of the invoice period
	TotaltAmount			decimal(14,2) NOT NULL, -- Total amount due
	MinimumPayment		decimal(14,2) NOT NULL, -- Minimum payment required
	InterestRateAmount		decimal(14,2) NOT NULL, -- Amount charged as interest
	LateFee				decimal(14,2) NOT NULL, -- Late fee if applicable
	LastPayDate			date NOT NULL, -- Date of the last payment
	PaymentStatus			nvarchar(20) NOT NULL -- Status of the payment (e.g., Paid, Pending)
); 