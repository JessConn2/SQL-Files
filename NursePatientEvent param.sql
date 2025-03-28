USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[NursePatientEvent_param]    Script Date: 6/18/2020 9:22:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[NursePatientEvent_param] @Zip nvarchar(15), @State char(2)
As
begin
Select Patient.PatientID, Nurse.[Last], Interaction.[Type], Patient.Zip, Patient.[State]
from Patient
full outer join Interaction
on Patient.PatientID = Interaction.PatientID
inner join Nurse
on Interaction.NurseID = Nurse.NurseID
where (Patient.[State] = @State)
and (Patient.[Zip] = @Zip)
End
