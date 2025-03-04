-- Table for recording customer login activities
CREATE TABLE LogInRecord (
	LogInRecordId		int IDENTITY(1,1) PRIMARY KEY NOT NULL, -- Unique identifier for each login record
	CustomerId			int FOREIGN KEY REFERENCES Customer(CustomerId) NOT NULL, -- Reference to the customer
	LogInTime			datetime NOT NULL, -- Time of login
	LogOutTime			datetime, -- Time of logout
	IpAddress			nvarchar(20) NOT NULL, -- IP address of the customer
	LogInStatus			nvarchar(20) NOT NULL -- Status of the login (e.g., Success, Failed)
); 