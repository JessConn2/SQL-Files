create view NWOP_VW
as
Select Nurse.NurseID, Interaction.PatientID as 'Interaction',Patient.PatientID
from Nurse
Right join Interaction
on Nurse.NurseID = Interaction.NurseID
left join Patient
on Interaction.PatientID = Patient.PatientID
go
--8