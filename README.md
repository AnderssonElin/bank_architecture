# Bank ERD and Database

## Overview
This repository contains an **Entity-Relationship Diagram (ERD)** for a banking system, created in **draw.io**. The diagram represents the structure of a relational database with tables and their relationships.
The database is designed to manage customer information, loans, accounts, transactions, and related data for a banking application.

## Project Structure
- **images/**: Contains ERD diagrams and conceptual images
- **sql/**: Contains all SQL files
  - **sql/tables/**: SQL files for creating database tables
  - **sql/data/**: SQL files for inserting data
  - **sql/scripts/**: SQL scripts for running the entire database setup

## Images
- **ERD_conceptual**: A high-level representation of key entities and their relationships.
- **ERD**: A detailed relational database model defining tables, attributes, primary keys, foreign keys, and relationships for a banking system.

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

To set up the bank_database, you can run the `sql/scripts/RunAll.sql` script. This script will create the database, all necessary tables, and insert initial data in one go.

### Instructions:
1. Open your SQL management tool.
2. Connect to your SQL server.
3. Run the `sql/scripts/RunAll.sql` script to execute all commands automatically. 
