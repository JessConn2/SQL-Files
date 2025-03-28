USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[AdmitPD_param]    Script Date: 6/18/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[AdmitPD_param] @Gender char(2), @State char(2)
as
Begin
Select dbo.Admit.PatientID, dbo.Bed.BedID, dbo.Doctor.DoctorID, dbo.Ward.WardID, Admit.AdmitDate, Patient.Gender, Patient.State
from Admit
join Patient
on Admit.PatientID = Patient.PatientID
join Bed
on Patient.BedID = Bed.BedID
left join Doctor
on Admit.DoctorID = Doctor.DoctorID
right join Ward
on Bed.WardID = Ward.WardID
where (Gender = @Gender)
and (Patient.State = @State)
order by DATEDIFF(day,AdmitDate,getdate())
end