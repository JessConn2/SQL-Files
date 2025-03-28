USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[TreatmentsToPD_param]    Script Date: 6/18/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[TreatmentsToPD_param] @Name nvarchar(20), @State char(2)
As
begin
Select Treatment.TreatmentID,Patient.PatientID ,Doctor.DoctorID, Doctor.[State]
from Patient
join Administer
on Patient.patientID = Administer.PatientID
right join Doctor
on Administer.DoctorID = Doctor.DoctorID
left join Treatment
on Administer.TreatmentID = Treatment.TreatmentID
where (Treatment.[Name] = @Name)
and (Doctor.[State] = @State)
order by Date
End
--3