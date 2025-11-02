/*
===============================================================================
Create Database and Schema
===============================================================================
Script Purpose:
    This script creates a new database named 'Datawarehouse' after checking if it already exists.
    If a database exists, it is dropped and recreate. Additionally, the script sets up three schemas
	within the database: 'Bromze','Silver',and 'gold' .

WARNING:
	Running this script will drop the entore 'DataWarehouse' database if it exist.
All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

 USE master;
 GO

 -- Drop and recreate the 'DataWarehouse' database
IF Exit (SELECT 1 FROM  sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
	
-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO
	
CREATE SCHEMA bronze;
GO
	
CREATE SCHEMA silver;
GO
	
CREATE SCHEMA gold;
GO
