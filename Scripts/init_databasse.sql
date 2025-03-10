/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master
GO

-- Drop and recreate database warehouse
IF EXISTS (SELECT 1 FROM SYS.databases WHERE name ='Datawarehouse')
BEGIN
	ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE Datawarehouse
END;
GO

-- creating the main database
CREATE DATABASE Datawarehouse;
GO
-- Creating schemas for each layer
	
use Datawarehouse;
GO

create schema bornze;
GO

create schema silver;
GO

create schema gold;
GO
