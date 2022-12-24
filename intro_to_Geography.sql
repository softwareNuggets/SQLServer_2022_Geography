--This type represents data in a round-earth coordinate system. 
--The SQL Server geography data type stores ellipsoidal (round-earth) data, 
--        such as GPS latitude and longitude coordinates.
use LearnSQL;



declare @startLocation  geography = Geography::Point(28.4311577,-81.308083, 4326) --orlando international airport MCO
declare @endLocation    geography = Geography::Point(25.7941666667,-80.2855555556, 4326) --miami fl MIA
select @startLocation.STDistance(@endLocation) / 1609.344 Distance_in_Mile_v1,
		@startLocation.STDistance(@endLocation) * 0.000621371 Distance_in_Mile_v2, --1 meter *.00062
		@startLocation.STDistance(@endLocation) / 1000 as Distance_in_KM,
		@startLocation.STDistance(@endLocation) Meters





--what is SRID - Spatial Reference Identifiers
select * from sys.spatial_reference_systems
select * from sys.spatial_reference_systems where spatial_reference_id=4326;

declare @startLocation  geography = Geography::Point(28.4311577,-81.308083, 4326); --orlando international airport MCO
select @startLocation

select len('E6100000010C28EBDC59606E3C40075DC2A1B75354C0')/2