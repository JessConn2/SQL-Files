Create view AdmitPatient_VW
as
select top 1000 PatientID, BedID, WardID, DoctorID
From Patient, Assigned, Doctor
order by Date
