Select * from Bed where Type is null
select * from Bed where PatientID is null
select* from Patient where BedID is null

delete from Ward where ChargeNurseID is null
delete from Nurse where SupervisorID is null
delete from Patient where BedID is null