Create view AdmitPatient_vw
as
select top 100 PatientID, BedID, WardID, DoctorID, Date
From Patient, Assigned, Doctor
order by Date
GO
--1