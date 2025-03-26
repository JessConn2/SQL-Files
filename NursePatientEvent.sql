Create proc NursePatientEvent_sproc
As
begin
Select Patient.PatientID, Nurse.Last, Interaction.Type
from Patient
full outer join Interaction
on Patient.PatientID = Interaction.PatientID
inner join Nurse
on Interaction.NurseID = Nurse.NurseID

End
--5