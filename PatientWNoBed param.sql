USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[PatientWNoBed_param]    Script Date: 6/18/2020 9:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[PatientWNoBed_param] @Type char(1), @Gender char(2)
As
begin
Select Patient.PatientID, Bed.BedID, Bed.[Type], Patient.Gender
from Patient
full outer join Bed
on Patient.BedID = Bed.BedID
where (Bed.[Type] = @Type)
and (Patient.Gender = @Gender)
or (Patient.BedID is null)
and (Bed.BedID is null)
End
