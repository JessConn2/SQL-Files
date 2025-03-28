USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[NWOP_param]    Script Date: 6/18/2020 9:52:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[NWOP_param] @Type nvarchar(20), @NurseID int
as
begin
Select Nurse.NurseID, Interaction.PatientID 
from Nurse
left join Interaction
on Nurse.NurseID = Interaction.NurseID
where(Interaction.[Type] = @Type)
and (Nurse.NurseID = @NurseID)
End
