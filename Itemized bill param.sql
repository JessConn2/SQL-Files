USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[ItemizedBill_param]    Script Date: 6/18/2020 8:48:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[ItemizedBill_param] @Name nvarchar(max), @ChargeID int
As
begin
Select Charge.ItemID, Treatment.TreatmentID,Item.Charge ,Charge.[Date], Treatment.[Name], Charge.[ChargeID]
from Item
join Charge
on Item.ItemID = Charge.ItemID
join Treatment
on Charge.ItemID = Treatment.TreatmentID
where (Treatment.[Name] like @Name + '*')
and (Charge.[ChargeID] like @ChargeID)
order by [Date]
End