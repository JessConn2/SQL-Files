create proc NWOP_sproc
as
begin
Select Nurse.NurseID, Interaction.PatientID
from Nurse
left join Interaction
on Nurse.NurseID = Interaction.NurseID
End
Go
--#7