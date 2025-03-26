Create proc PatientWNoBed_sproc
As
begin
Select Patient.PatientID, Bed.BedID
from Patient
full outer join Bed
on Patient.BedID = Bed.BedID
where Patient.BedID is null
or Bed.BedID is null
End
--6 sproc