Create view [dbo].[PatBed_VW]
as
select top 100 PatientID, BedID, WardID
From Patient, Ward

GO
--6