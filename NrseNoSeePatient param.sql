USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[NrseNoSeePatient_param]    Script Date: 6/18/2020 7:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[NrseNoSeePatient_param] @Type nvarchar(20), @Last nvarchar(20)
As
begin
Select Nurse.NurseID, Interaction.PatientID as 'Interaction' , Patient.PatientID, Interaction.[Type], Nurse.[Last]
from Nurse
left join Interaction
on Nurse.NurseID = Interaction.NurseID
right join Patient
on Interaction.PatientID = Patient.PatientID
where (Interaction.[Type] = @Type)
and (Nurse.[Last] = @Last)
End
