Create proc AdmitPD_sproc
as
Select dbo.Admit.PatientID, dbo.Bed.BedID, dbo.Doctor.DoctorID, dbo.Ward.WardID, Admit.AdmitDate
from Admit
join Patient
on Admit.PatientID = Patient.PatientID
join Bed
on Patient.BedID = Bed.BedID
left join Doctor
on Admit.DoctorID = Doctor.DoctorID
right join Ward
on Bed.WardID = Ward.WardID

order by DATEDIFF(day,AdmitDate,getdate())
--1