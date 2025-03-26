Create proc ItemizedBill_sproc
As
begin
Select Charge.ItemID, Treatment.TreatmentID,Item.Charge ,Charge.Date
from Item
join Charge
on Item.ItemID = Charge.ItemID
join Treatment
on Charge.ItemID = Treatment.TreatmentID

order by Date
End
--4