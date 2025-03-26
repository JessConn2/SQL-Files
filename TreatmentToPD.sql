Create proc TreatmentsToPD_sproc
As
begin
Select Treatment.TreatmentID,Patient.PatientID ,Doctor.DoctorID, Administer.Date
from Patient
join Administer
on Patient.patientID = Administer.PatientID
right join Doctor
on Administer.DoctorID = Doctor.DoctorID
left join Treatment
on Administer.TreatmentID = Treatment.TreatmentID

order by Date
End
--3