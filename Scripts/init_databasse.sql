USE master
GO

-- Drop and recreate database warehouse

IF EXISTS (SELECT 1 FROM SYS.databases WHERE name ='Datawarehouse')
BEGIN
	ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE Datawarehouse
END;
GO

CREATE DATABASE Datawarehouse;
GO

use Datawarehouse;
GO

create schema bornze;

GO

create schema silver;

GO

create schema gold;

GO
