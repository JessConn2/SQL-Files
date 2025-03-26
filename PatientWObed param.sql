Create proc [dbo].[PatientWNoBed_param] @Type char(1), @Gender char(2)
As
begin
Select Patient.PatientID, Bed.BedID, Bed.Type,Patient.Gender
from Patient
full outer join Bed
on Patient.BedID = Bed.BedID
where Patient.BedID is null
and Bed.BedID is null
and (Bed.Type = @Type)
and (Patient.Gender = @Gender)
End
GO