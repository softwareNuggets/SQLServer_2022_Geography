use LearnSQL;
--drop table UsAirPort
create table USAirPort
(
	fid			int identity(1,1) not null primary key,
	airport		nvarchar(100)	not null,
	iata		varchar(3) 		not null,
	icao		varchar(4) 		not null,
	latitude	float			not null,
	longitude	float			not null,
	GeoLocation Geography		not null
)