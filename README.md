# bank_ERD_and_database

## Overview
Detta repository innehåller en **Entity-Relationship Diagram (ERD)** för ett banksystem, skapad i **draw.io**. Diagrammet representerar strukturen för en relationsdatabas med tabeller och deras relationer.
Databasen är designad för att hantera kundinformation, lån, konton, transaktioner och relaterad data för en bankapplikation.

## Projektstruktur
- **images/**: Innehåller ERD-diagram och konceptuella bilder
- **sql/**: Innehåller alla SQL-filer
  - **sql/tables/**: SQL-filer för att skapa databastabeller
  - **sql/data/**: SQL-filer för att infoga data
  - **sql/scripts/**: SQL-skript för att köra hela databasetableringen

## Images
- **ERD_conceptual**: En övergripande representation av nyckelentiteter och deras relationer.
- **ERD**: En detaljerad relationsdatabasmodell som definierar tabeller, attribut, primärnycklar, främmande nycklar och relationer för ett banksystem.

## Tables
- **Customer**: Lagrar kunduppgifter.
- **Login**: Hanterar kundinloggningsinformation.
- **LogInRecord**: Registrerar inloggningsaktiviteter.
- **Loan**: Innehåller lånedetaljer.
- **LoanInvoice**: Hanterar lånefakturor.
- **Account**: Lagrar kontoinformation.
- **Transaction**: Registrerar transaktioner mellan konton.
- **Card**: Hanterar kortinformation.
- **CreditCard**: Innehåller kreditkortsinformation.
- **CreditCardInvoice**: Hanterar kreditkortsfakturor.
- **PinCode**: Lagrar PIN-koder för kort.
- **Disposition**: Kopplar kunder till deras konton, lån och kort.

## Usage
För att konfigurera databasen, kör SQL-skripten i lämplig ordning för att skapa tabeller och infoga initial data.

## Running the Database Setup

För att konfigurera bank_database kan du köra `sql/scripts/RunAll.sql`-skriptet. Detta skript kommer att skapa databasen, alla nödvändiga tabeller och infoga initial data i ett svep.

### Instructions:
1. Öppna ditt SQL-hanteringsverktyg.
2. Anslut till din SQL-server.
3. Kör `sql/scripts/RunAll.sql`-skriptet för att automatiskt köra alla kommandon. 
