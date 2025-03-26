Create view [dbo].[NPEvent_VW]
as
select top 1000 Nurse.Last, Interaction.Type, Patient.PatientID
from Patient
join Interaction
on Patient.PatientID = Interaction.PatientID
join Nurse
on Interaction.NurseID = Nurse.NurseID
GO
--5