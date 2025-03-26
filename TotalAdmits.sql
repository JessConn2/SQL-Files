Create proc TotalAdmits_sproc
as
Select dbo.Admit.PatientID, dbo.Doctor.DoctorID, Admit.AdmitDate
from Patient
join Admit
on Patient.PatientID = Admit.PatientID
join Doctor
on Admit.DoctorID = Doctor.DoctorID


order by DATEDIFF(DAY,AdmitDate,getdate())
--2