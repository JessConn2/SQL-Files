USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[TotalAdmits_param]    Script Date: 6/18/2020 9:31:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[TotalAdmits_param] @State char(2), @City nvarchar(max)
as
Select dbo.Admit.PatientID, dbo.Doctor.DoctorID, Admit.AdmitDate
from Patient
join Admit
on Patient.PatientID = Admit.PatientID
join Doctor
on Admit.DoctorID = Doctor.DoctorID
where (Doctor.[State] = @State)
and (Doctor.City = @City + '*')
order by DATEDIFF(DAY,AdmitDate,getdate())
--2
