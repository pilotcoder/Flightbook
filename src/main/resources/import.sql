insert into gliders(type, name, serialNumber, regNumber,totalcycles, yearOfBuild, alertIntervalInDays, alertIntervalInFH) values ('SZD-22C', 'Mucha std.', '665', 'SP-2279', 50, 1961, 30, 60*100);
-- insert into gliders(type, name, serialNumber, regNumber,totalFlightTime,totalcycles) values ('SZD-51-1', 'Junior.', 'B-2578', 'SP-3301', 1200, 120);


insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-11', 65, 1, 1, 1,5);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-12', 110, 5, 1, 1, 50);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-12', 78, 10, 1, 1, 18);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-16', 274, 5, 1, 4, 34);




insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('zaczep', 'szd', 'R234', 0, true, 1, 6, '2017-07-12', 1000, 1000*60, '2023-07-12', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('pasy', 'J5.00.00', '1.14.55', 0, true, 1, 12, '2014-04-03', 1000, 1000*60, '2029-04-03', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('linki napędowe', 'stalowe', '1/2020', 0, true, 1, 12, '2020-04-30', 20, 20*60, '2032-04-30', 0, 0);
