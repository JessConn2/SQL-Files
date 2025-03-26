SELECT Age,Patient = DATEDIFF(day,DOB,GETDATE()),
[YEARS]  = DATEDIFF(day,DOB,GETDATE()) / 365,
[MONTHS] = (DATEDIFF(day,DOB,GETDATE()) % 365) / 30,
[DAYS]   = (DATEDIFF(day,DOB,GETDATE()) % 365) % 30
FROM Patient