-- Script to run all SQL files for setting up the bank_database

-- Create the database
CREATE DATABASE bank_database;
GO

-- Use the database
USE bank_database;
GO

-- Run table creation scripts
:r Customer.sql
:r Login.sql
:r LogInRecord.sql
:r Loan.sql
:r LoanInvoice.sql
:r Account.sql
:r Transaction.sql
:r Card.sql
:r CreditCard.sql
:r CreditCardInvoice.sql
:r PinCode.sql
:r Disposition.sql

-- Run data insertion scripts
:r InsertData.sql 