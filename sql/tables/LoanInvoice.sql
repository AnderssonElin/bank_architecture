-- Table for managing loan invoices
CREATE TABLE LoanInvoice (
	LoanInvoiceId		int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each loan invoice
	LoanId				int FOREIGN KEY REFERENCES Loan(LoanId) NOT NULL, -- Reference to the loan
	LastPayDate			date NOT NULL, -- Date of the last payment
	AmortilizationAmount	decimal(14,2) NOT NULL, -- Amount paid towards the principal
	InterestRateAmount	decimal(14,2) NOT NULL, -- Amount paid towards interest
	LateFee				decimal(14,2), -- Late fee if applicable
	Balance				decimal(14,2) NOT NULL, -- Remaining balance
	PaymentStatus			nvarchar(20) NOT NULL, -- Status of the payment (e.g., Paid, Pending)
	OcrOrComment			nvarchar(20) NOT NULL, -- OCR number or comment
	TotalAmount			decimal(14,2) NOT NULL, -- Total amount due
	FrequencyOfPayment		nvarchar(20) NOT NULL -- Frequency of payment (e.g., Monthly)
); 