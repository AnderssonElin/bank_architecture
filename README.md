# bank_ERD_and_database

## Overview
This repository contains an **Entity-Relationship Diagram (ERD)** for a banking system, created in **draw.io (diagrams.net)**. The diagram represents the structure of a relational database with tables and their relationships.
The database is designed to manage customer information, loans, accounts, transactions, and related data for a banking application.

## Images
- ![**ERD_conceptual**](https://github.com/AnderssonElin/bank_architecture/blob/main/ERD_conceptual.png): A high-level representation of key entities and their relationships. ![Alt text](images/image.png)
- ![**ERD**](https://github.com/AnderssonElin/bank_architecture/blob/main/ERD.png): A detailed relational database model defining tables, attributes, primary keys, foreign keys, and relationships for a banking system.

## Tables
- **Customer**: Stores customer details.
- **Login**: Manages customer login information.
- **LogInRecord**: Records login activities.
- **Loan**: Contains loan details.
- **LoanInvoice**: Manages loan invoices.
- **Account**: Stores account information.
- **Transaction**: Records transactions between accounts.
- **Card**: Manages card information.
- **CreditCard**: Contains credit card details.
- **CreditCardInvoice**: Manages credit card invoices.
- **PinCode**: Stores PIN codes for cards.
- **Disposition**: Links customers to their accounts, loans, and cards.

## Usage
To set up the database, run the SQL scripts in the appropriate order to create tables and insert initial data.

## Running the Database Setup

To set up the bank_database, you can run the `RunAll.sql` script. This script will create the database, all necessary tables, and insert initial data in one go.

### Instructions:
1. Open your SQL management tool.
2. Connect to your SQL server.
3. Run the `RunAll.sql` script to execute all commands automatically. 
