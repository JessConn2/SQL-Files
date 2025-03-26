Create proc NrseNoSeePatient_sproc
As
begin
Select Nurse.NurseID, Interaction.PatientID as 'Interaction' , Patient.PatientID
from Nurse
left join Interaction
on Nurse.NurseID = Interaction.NurseID
right join Patient
on Interaction.PatientID = Patient.PatientID

End
--8