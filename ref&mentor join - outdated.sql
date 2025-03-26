select r.[Last] as 'Referee Last',r.RefereeID as 'Referee ID',
r.MentorID as 'Mentor ID', m.[Last] as 'Mentor Last'
from Referee r
left join Referee m
on r.RefereeID = m.MentorID
order by [Referee ID]

