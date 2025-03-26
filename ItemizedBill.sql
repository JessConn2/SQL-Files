Create view ItemizedBill_VW
as
select top 1000 TreatmentID, ChargeID, ItemID
from Administer, Charge
order by Date