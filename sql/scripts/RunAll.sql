-- Script to run all SQL files for setting up the bank_database

-- Create the database
CREATE DATABASE bank_database;
GO

-- Use the database
USE bank_database;
GO

-- Run table creation scripts
:r ..\tables\Customer.sql
:r ..\tables\Login.sql
:r ..\tables\LogInRecord.sql
:r ..\tables\Loan.sql
:r ..\tables\LoanInvoice.sql
:r ..\tables\Account.sql
:r ..\tables\Transaction.sql
:r ..\tables\Card.sql
:r ..\tables\CreditCard.sql
:r ..\tables\CreditCardInvoice.sql
:r ..\tables\PinCode.sql
:r ..\tables\Disposition.sql

-- Run data insertion scripts
:r ..\data\InsertData.sql 