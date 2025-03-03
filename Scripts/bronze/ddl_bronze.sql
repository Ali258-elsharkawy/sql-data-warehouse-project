/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/


if OBJECT_ID ('bronze.crm_cust_info', 'U') IS NOT NULL
	drop table bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info (
cst_id INT,
cst_key nvarchar (50),
cst_firstname nvarchar (50),
cst_lastname nvarchar (50),
cst_material_status nvarchar (50),
cst_gender nvarchar (50),
cust_create_date date
);
GO

if OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	drop table bronze.crm_prd_info;
GO

CREATE TABLE bronze.crm_prd_info (
prd_id int,
prd_key nvarchar(50),
prd_num nvarchar (50),
prd_cost int,
prd_line nvarchar (50),
prd_start_dt date,
prd_end_dt date
);
GO

if OBJECT_ID ('bronze.crm_sales_details', 'U') IS NOT NULL
	drop table bronze.crm_sales_details;
GO

CREATE TABLE bronze.crm_sales_details(
sls_ord_num nvarchar (50),
sls_prd_key nvarchar (50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);
GO

if OBJECT_ID ('Bronze.erp_cust_az12', 'U') IS NOT NULL
	drop table Bronze.erp_cust_az12;
GO

CREATE TABLE Bronze.erp_cust_az12(
CID int,
Bdate date,
GEN nvarchar (50)
)

if OBJECT_ID ('bronze.erp_loc_a101', 'U') IS NOT NULL
	drop table bronze.erp_loc_a101;
GO

CREATE TABLE bronze.erp_loc_a101(
cid nvarchar (50),
cntry nvarchar (50)
);
GO

if OBJECT_ID ('bronze.px_cat_giv2', 'U') IS NOT NULL
	drop table bronze.px_cat_giv2;
GO

CREATE TABLE bronze.erp_px_cat_g1v2(
id nvarchar (50),
cat nvarchar (50),
subcat nvarchar (50),
maintenance nvarchar(50)
)

