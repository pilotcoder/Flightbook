insert into gliders(type, name, serialNumber, regNumber,totalFlightTime,totalcycles) values ('SZD-22C', 'Mucha std.', '665', 'SP-2279', 600, 50);
insert into gliders(type, name, serialNumber, regNumber,totalFlightTime,totalcycles) values ('SZD-51-1', 'Junior.', 'B-2578', 'SP-3301', 1200, 120);


insert into flights(dateOfFlight, flightTime, cycles) values ('2022-06-11', 65, 1);
-- insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-12', 0, 5, 5, 1);
-- insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-12', 1, 10,70, 1);
-- insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-16', 5, 5, 305, 1);




insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry) values ('zaczep', 'szd', 'R234', 2030*60, true, 1, 6, '2020-06-12', 1000, 2030*60 + 1000*60, '2026-06-12');
-- insert into parts(name, type, serialNumber, currentFH, valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH) values ('pasy', 'J5.00.00', '2014', 2030, true, 1, 15, '2014-02-11', 1500);