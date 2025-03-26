Create view DoctorAdmit_VW
as
select top 1000 AdmitID, DoctorID
From  Admit 
Order by DischargeDate,AdmitDate
