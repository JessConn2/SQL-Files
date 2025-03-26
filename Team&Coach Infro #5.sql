create view ContactInfo_VW
as
select top 100 T.TeamName,concat(P.[First],' ',P.[Last]) as 'Captian full name',
p.playerPhone,concat(C.[First],' ',C.[Last]) as 'Coach Full Name',c.CoachPhone,
'Position Assignment' = case
when Roles = 'AC' then 'Assistant Coach'
when Roles = 'VC' then 'Volunteer Coach'
when Roles = 'HC' then 'Head Coach'
when Roles = ' ' then 'Not Assigned'
end,
a.Season
from CoachRoles cr
join Coach c
on CR.CoachID = C.CoachID
join inChargeOf i
on c.CoachID = I.CoachID
join Team t
on I.TeamID = T.TeamID
join AssignedTo a
on T.TeamID = A.TeamID
join Player p
on A.PlayerID = P.PlayerID
order by a.Season asc
