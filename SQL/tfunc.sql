use CMSTEST
go

CREATE TABLE dbo.CMStotal(
	sysnum_t int IDENTITY(1,1) NOT NULL,
	count int null,
	totalRating int null,
	addDate datetime NOT NULL,
	updateDate datetime NULL
) ON PRIMARY
GO

CREATE FUNCTION dbo.sumRating RETURNS int
as
Begin
	;with cte as (
     SELECT count(*) mycount, SUM(overallRating) total
	from CMSTEST.dbo.CMScustRating
	where 1=1
	)
     update SR
  	set SR.count=cte.mycount, SR.totalRating=cte.total
  	from CMSTEST.dbo.sumRating SR

	return 0
End