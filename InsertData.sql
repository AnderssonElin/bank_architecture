-- Inserting initial data into the Customer table
INSERT INTO Customer (FirstName, LastName, DateOfBirth, Gender, StreetAddress, PostalCode, City, Country, PhoneNumber, PhoneNumberOptional, Email, IsActive)
VALUES
('Hanna', 'Holm', '1993-04-20', 'Kvinna', 'Bergsgatan 56', '12346', 'Stadshamn', 'Sverige', '0765123456', '0723654897', 'hanna.holm@email.com', 1),
('Per', 'Persson', '1982-11-15', 'Man', 'Dalgatan 89', '67891', 'Byhult', 'Sverige', '0709876123', NULL, 'per.persson@email.com', 1),
('Karin', 'Karlsson', '1998-02-02', 'Kvinna', 'Ängsvägen 12', '54322', 'Landsby', 'Sverige', '0723456987', '0723456981', 'karin.karlsson@email.com', 1),
('Oskar', 'Olofsson', '1975-07-12', 'Man', 'Skogsvägen 45', '13580', 'Stadäng', 'Sverige', '0734678901', NULL, 'oskar.olofsson@email.com', 1),
('Emelie', 'Eriksson', '1990-10-18', 'Kvinna', 'Sjövägen 78', '24681', 'Bystad', 'Sverige', '0765123459', '0765123451', 'emelie.eriksson@email.com', 1),
('Niklas', 'Nilsson', '1986-01-25', 'Man', 'Lundavägen 34', '97532', 'Hamlaborg', 'Sverige', '0709876122', NULL, 'niklas.nilsson@email.com', 1),
('Malin', 'Mårtensson', '1978-05-28', 'Kvinna', 'Skolgatan 89', '86421', 'Landskap', 'Sverige', '0734678902', '0734678903', 'malin.martensson@email.com', 1),
('Fredrik', 'Fredriksson', '1985-12-15', 'Man', 'Ekgatan 67', '75310', 'Stadsfält', 'Sverige', '0765123458', NULL, 'fredrik.fredriksson@email.com', 1),
('Sara', 'Svensson', '1970-06-04', 'Kvinna', 'Solliden 23', '36988', 'Stadsby', 'Sverige', '0709876121', '0709876545', 'sara.svensson@email.com', 1),
('Andreas', 'Andersson', '1995-09-11', 'Man', 'Lövvägen 78', '25815', 'Landsbyggd', 'Sverige', '0734678903', NULL, 'andreas.andersson@email.com', 1);

-- Inserting initial data into the Login table
INSERT INTO [Login] (CustomerId, SocialSecurityNumber, [Password])
VALUES
(1, '123-45-6789', 'password123'),
(2, '987-65-4321', 'securepass'),
(3, '456-78-9012', 'pass123word'),
(4, '321-09-8765', 'mypassword'),
(5, '890-12-3456', 'password456'),
(6, '543-21-0987', 'securepassword'),
(7, '234-56-7890', 'password789'),
(8, '876-54-3210', 'userpass'),
(9, '109-87-6543', 'passwordabc'),
(10, '678-90-1234', 'abcpassword');

-- Inserting initial data into the LogInRecord table
INSERT INTO LogInRecord (CustomerId, LogInTime, LogOutTime, IpAddress, LogInStatus)
VALUES
(1, '2024-01-06 08:30:00', '2024-01-06 17:45:00', '192.168.1.101', 'Success'),
(2, '2023-01-06 09:15:00', '2023-01-06 18:20:00', '192.168.1.102', 'Success'),
(3, '2024-01-06 10:00:00', '2024-01-06 19:00:00', '192.168.1.103', 'Success'),
(4, '2024-01-06 11:45:00', '2024-01-06 11:50:06', '192.168.1.104', 'Success'),
(4, '2024-01-06 13:30:00', '2024-01-06 21:45:00', '192.168.1.104', 'Success'),
(6, '2024-01-06 14:15:00', '2024-01-06 22:10:00', '192.168.1.106', 'Success'),
(7, '2024-01-06 15:45:00', '2024-01-06 23:30:00', '192.168.1.107', 'Success'),
(8, '2024-01-06 16:30:00', NULL, '192.168.1.108', 'Active'),
(9, '2024-01-06 17:15:00', '2024-01-06 23:59:00', '192.168.1.109', 'Success'),
(10, '2024-01-06 18:00:00', NULL, '192.168.1.110', 'Active');

-- Inserting initial data into the Loan table
INSERT INTO Loan (StartDate, Amount, InterestRate, LoanStatus)
VALUES
('2023-05-15', 5000.00, 3.50, 'Active'),
('2022-09-20', 10000.00, 4.25, 'Closed'),
('2021-12-03', 7500.00, 2.75, 'Active'),
('2023-03-10', 12000.00, 5.00, 'Active'),
('2022-06-25', 9000.00, 3.75, 'Closed'),
('2021-09-18', 6000.00, 4.00, 'Active'),
('2022-02-28', 8000.00, 3.25, 'Closed'),
('2023-11-05', 11000.00, 4.50, 'Active'),
('2022-04-15', 9500.00, 3.00, 'Closed'),
('2024-01-22', 13000.00, 5.25, 'Active');

-- Inserting initial data into the LoanInvoice table
INSERT INTO LoanInvoice (LoanId, LastPayDate, AmortilizationAmount, InterestRateAmount, LateFee, Balance, PaymentStatus, OcrOrComment, TotalAmount, FrequencyOfPayment)
VALUES
(1, '2023-06-01', 250.00, 50.00, NULL, 7300.00, 'Pending', 'Invoice #12345', 7550.00, 'Monthly'),
(2, '2022-10-01', 500.00, 85.00, 10.00, 865.00, 'Paid', 'Invoice #54321', 595.00, 'Monthly'),
(3, '2022-01-03', 300.00, 30.00, NULL, 6200.00, 'Pending', 'Invoice #98765', 6300.00, 'Monthly'),
(4, '2023-04-10', 600.00, 80.00, NULL, 11320.00, 'Pending', 'Invoice #45678', 12100.00, 'Monthly'),
(5, '2022-07-01', 450.00, 70.00, 15.00, 8475.00, 'Pending', 'Invoice #90123', 9025.00, 'Monthly'),
(6, '2021-10-20', 200.00, 45.00, NULL, 3000.00, 'Pending', 'Invoice #23456', 3045.00, 'Monthly'),
(7, '2022-03-03', 350.00, 60.00, 5.00, 7435.00, 'Pending', 'Invoice #78901', 7480.00, 'Monthly'),
(8, '2023-12-01', 550.00, 75.00, NULL, 8050.00, 'Pending', 'Invoice #12398', 8125.00, 'Monthly'),
(9, '2022-05-15', 400.00, 40.00, NULL, 9200.00, 'Pending', 'Invoice #56789', 9240.00, 'Monthly'),
(10, '2024-02-15', 700.00, 90.00, NULL, 12230.00, 'Pending', 'Invoice #34567', 12320.00, 'Monthly');

-- Inserting initial data into the Account table
INSERT INTO Account (AccountName, AccountNumber, CreatedDate, AccountType, Balance, IsActive)
VALUES
('Bröllop', 123456789012, '2022-01-01', 'Savings', 5000.00, 1),
('Mitt konto', 987654321098, '2022-01-05', 'Personal', 2500.00, 1),
('Om olyckan är framme', 543210987654, '2022-02-10', 'Saving', -1500.00, 1),
('Lån', 246809753123, '2022-03-15', 'Loan', 12000.00, 1),
('Business', 135792468024, '2022-04-20', 'Business', 8000.00, 1),
('Investering', 975318642030, '2022-05-25', 'Investment', 15000.00, 1),
('Mortgage', 864209753024, '2022-06-30', 'Mortgage', -100000.00, 1),
('Personal', 753098642019, '2022-07-05', 'Personal', 3000.00, 1),
('Huskonto', 369874512035, '2022-08-10', 'Savings', -8000.00, 1),
('Emergency', 258143697010, '2022-09-15', 'Savings', 10000.00, 1);

-- Inserting initial data into the Transaction table
INSERT INTO [Transaction] (AccountId, TransactionType, FromAccountNumber, ToAccountNumber, TransactionTime, Amount, OcrOrComment)
VALUES
(1, 'Deposit', 987654321094, 123456789012, '2022-01-10 08:30:00', 1000.00, 'Deposit #123'),
(2, 'Withdrawal', 987654321098, 4870054321098, '2022-02-15 09:45:00', 500.00, 'ATM Withdrawal'),
(3, 'Credit Card Payment', 543210987654, 223456789012, '2022-03-20 11:00:00', 200.00, 'Payment #456'),
(4, 'Loan Payment', 246809753123, 333456789012, '2022-04-25 12:15:00', 1000.00, 'Payment #789'),
(5, 'Transfer', 135792468024, 975318642030, '2022-05-30 14:30:00', 1500.00, 'Transfer #101'),
(6, 'Deposit', 667786789012, 864209753024, '2022-06-05 16:45:00', 5000.00, 'Deposit #202'),
(7, 'Withdrawal', 753098642019, 626466789012, '2022-07-10 18:00:00', 300.00, 'ATM Withdrawal'),
(8, 'Loan Disbursement', 923456601232, 369874512035, '2022-08-15 20:15:00', 8000.00, 'Disbursement #303'),
(9, 'Transfer', 258143697010, 987654321098, '2022-09-20 22:30:00', 1000.00, 'Transfer #404'),
(10, 'Withdrawal', 975318642030, 223256289212, '2022-10-25 00:45:00', 200.00, 'ATM Withdrawal');

-- Inserting initial data into the Card table
INSERT INTO [Card] (CardType, CardNumber, FirstName, LastName, CvcCode, IssuedDate, ExpiryMonth, ExpiryYear, CardStatus)
VALUES
('Credit', 1234567890123456, 'Hanna', 'Holm', 123, '2022-01-15', 12, 2024, 'Active'),
('Debit', 9876543210987654, 'Per', 'Persson', 456, '2022-02-20', 10, 2023, 'Active'),
('Credit', 5678901234567890, 'Karin', 'Karlsson', 789, '2022-03-25', 08, 2025, 'Active'),
('Debit', 3456789012345678, 'Oskar', 'Olofsson', 234, '2022-04-30', 05, 2023, 'Active'),
('Credit', 9012345678901234, 'Emelie', 'Eriksson', 567, '2022-05-05', 02, 2024, 'Active'),
('Debit', 4321098765432109, 'Niklas', 'Nilsson', 890, '2022-06-10', 11, 2023, 'Active'),
('Credit', 8765432109876543, 'Malin', 'Mårtensson', 123, '2022-07-15', 06, 2025, 'Active'),
('Debit', 2345678901234567, 'Fredrik', 'Fredriksson', 456, '2022-08-20', 04, 2023, 'Active'),
('Credit', 6543210987654321, 'Sara', 'Svensson', 789, '2022-09-25', 09, 2024, 'Active'),
('Debit', 1098765432109876, 'Andreas', 'Andersson', 234, '2022-10-30', 07, 2023, 'Active'),
('Credit', 1111222233334444, 'Hanna', 'Holm', 789, '2022-11-05', 03, 2024, 'Active'),
('Credit', 2222333344445555, 'Per', 'Persson', 006, '2022-12-10', 08, 2023, 'Active'),
('Credit', 3333444455556666, 'Karin', 'Karlsson', 553, '2023-01-15', 05, 2025, 'Active'),
('Credit', 4444555566667777, 'Oskar', 'Olofsson', 860, '2023-02-20', 11, 2023, 'Active'),
('Credit', 5555666677778888, 'Emelie', 'Eriksson', 734, '2023-03-25', 06, 2024, 'Active');

-- Inserting initial data into the CreditCard table
INSERT INTO CreditCard (CardId, CreditLimit, CreditScore, InterestRate, OcrOrComment)
VALUES
(1, 5000.00, 140, 15.50, '94588939'),
(3, 10000.00, 680, 10.25, '86532912'),
(5, 6000.00, 690, 11.75, '00997779'),
(7, 9000.00, 710, 12.00, '11242344'),
(9, 11000.00, 700, 14.75, '48987577'),
(11, 9500.00, 720, 13.75, '54547676'),
(12, 12000.00, 690, 11.50, '30964869'),
(13, 8000.00, 710, 12.25, '44098940'),
(14, 11000.00, 730, 13.00, '09434322'),
(15, 13000.00, 700, 14.50, '66690556');

-- Inserting initial data into the PinCode table
INSERT INTO PinCode (CardId, PinCode)
VALUES
(1, 1234),
(2, 5678),
(3, 9876),
(4, 4321),
(5, 7890),
(6, 3456),
(7, 2109),
(8, 6543),
(9, 8901),
(10, 1098),
(11, 2468),
(12, 7531),
(13, 8642),
(14, 9513),
(15, 3579);

-- Inserting initial data into the Disposition table
INSERT INTO Disposition (CustomerId, AccountId, LoanId, CardId)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(1, null, null, 11),
(2, null, null, 12),
(3, null, null, 13),
(4, null, null, 14),
(5, null, null, 15); 