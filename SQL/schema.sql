CREATE SCHEMA CMSTEST AUTHORIZATION JonB
go
use CMSTEST
go

CREATE TABLE CMScampaigns(
	sysnum_a int IDENTITY(1,1) NOT NULL,
	shortName varchar(10) NULL,
	Descript varchar(60) NULL,
	fullName varchar(60) NULL,
	notes varchar(80) NULL,
	purchases int NULL,
	successRating int NULL,
	addDate datetime NOT NULL,
	updateDate datetime NULL
) ON PRIMARY
GO

CREATE TABLE CMScustCont(
	sysnum_n int IDENTITY(1,1) NOT NULL,
	addDate datetime NOT NULL,
	contactType varchar(20) NULL,
	sysnum_c int  NOT NULL,
	sysnum_a int  NOT NULL,
	results varchar(20) NULL,
	contactBy varchar(20) NULL,
	followUp datetime NULL,
	notes varchar(80) NULL,
	updateDate datetime NULL
) ON PRIMARY
GO

CREATE TABLE CMScustomer(
	sysnum_c int IDENTITY(1,1) NOT NULL,
	addDate datetime NOT NULL,
	addBy varchar(10) NULL,
	custNum int NOT NULL,
	name varchar(60) NOT NULL,
	address varchar(40) NULL,
	address2 varchar(40) NULL,
	city varchar(30) NULL,
	state varchar(2) NULL,
	zipCode varchar(10) NULL,
	Phone varchar(20) NULL,
	email varchar(40) NULL,
	updateDate datetime NULL
) ON PRIMARY
GO


CREATE TABLE CMScustRating(
	sysnum_r int IDENTITY(1,1) NOT NULL,
	addDate datetime NOT NULL,
	overallRating int NULL,
	ratingPurchases int NULL,
	ratingReferrals int NULL,
	ratingReturns int NULL,
	ratingAttitude  int NULL,
	updateDate datetime NULL
) ON PRIMARY
GO

CREATE TABLE CMSoptions(
	sysnum_o int IDENTITY(1,1) NOT NULL,
	currentFiscalYear varchar(4) NULL,
	security varchar(5) NULL,
	addDate datetime NOT NULL,
	updateDate datetime NULL
) ON PRIMARY
GO

CREATE INDEX k_sysnum_a
ON CMScampaigns (sysnum_a) 

CREATE INDEX k_sysnum_n
ON CMScustCont (sysnum_n)

CREATE INDEX kf_sysnum_a
ON CMScustCont (sysnum_a)

CREATE INDEX kf_sysnum_c
ON CMScustCont (sysnum_c)

CREATE INDEX k_sysnum_c
ON CMScustomer (sysnum_c)

CREATE INDEX k_custNum
ON CMScustomer (custNum)

CREATE INDEX k_name
ON CMScustomer (name)

CREATE INDEX k_sysnum_r
ON CMScustRating (sysnum_r)

CREATE INDEX k_overallRating
ON CMScustRating (overallRating)

CREATE INDEX k_sysnum_o
ON CMSoptions (sysnum_o)

