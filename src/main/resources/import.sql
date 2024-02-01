insert into gliders(type, name, serialNumber, regNumber,totalcycles, yearOfBuild, alertIntervalInDays, alertIntervalInFH) values ('SZD-22C', 'Mucha std.', '665', 'SP-2279', 50, 1961, 30, 60*100);
-- insert into gliders(type, name, serialNumber, regNumber,totalFlightTime,totalcycles) values ('SZD-51-1', 'Junior.', 'B-2578', 'SP-3301', 1200, 120);


insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-11', 65, 1, 1, 1,5);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-12', 110, 5, 1, 1, 50);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-12', 78, 10, 1, 1, 18);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2022-06-16', 274, 5, 1, 4, 34);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-05-16', 60, 5, 1, 1, 0);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-05-22', 136, 1, 1, 2, 16);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-05-28', 33, 1, 1, 0, 33);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-05-28', 193, 3, 1, 3, 13);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-01', 615, 6, 1, 10, 15);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-04', 310, 1, 1, 5, 10);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-09', 167, 1, 1, 2, 47);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-10', 93, 1, 1, 1, 33);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-11', 75, 1, 1, 1, 15);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-17', 87, 1, 1, 1, 27);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-18', 294, 1, 1, 4, 54);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-24', 146, 1, 1, 2, 26);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-06-26', 460, 37, 1, 7, 40);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-07-01', 485, 42, 1, 8, 05);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-07-01', 485, 42, 1, 8, 05);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-07-02', 310, 26, 1, 5, 10);
insert into flights(dateOfFlight, flightTime, cycles, glider_id, flightHrs, flightMins) values ('2023-07-07', 186, 7, 1, 3, 06);





insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('zaczep', 'szd', 'R234', 0, true, 1, 6, '2017-07-12', 1000, 1000*60, '2023-07-12', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('pasy', 'J5.00.00', '1.14.55', 0, true, 1, 12, '2014-04-03', 1000, 1000*60, '2029-04-03', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('linki napędu steru wysokości', '2,4mm', '342/E/2020', 0, true, 1, 12, '2020-04-30', 20, 1000*60, '2032-04-30', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('linki napędu steru kierunku', '3,2mm', '343/R/2020', 0, true, 1, 12, '2020-04-30', 20, 20*60, '2032-04-30', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('linki napędu lotek', '2,4mm', '344/A/2020', 0, true, 1, 12, '2020-04-30', 20, 1000*60, '2032-04-30', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('linki napędu zaczepu', '2,2mm', '347/H/2020', 0, true, 1, 12, '2020-04-30', 20, 1000*60, '2032-04-30', 0, 0);
insert into parts(name, type, serialNumber, flightHoursOfInstall,  valid, glider_id, lifeTimeInYears, dateOfInstall, lifeTimeInFH, maxLifeTimeInFH, dateOfExpiry, flightHrs, flightMins) values ('linki napędu hamulca', '2,4mm', '349/B/2020', 0, true, 1, 12, '2020-04-30', 20, 1000*60, '2032-04-30', 0, 0);

insert into documents(name, description, dateOfExpiry, glider_id) values("ARC", "swiadectwo zdatnosci do lotu", '2024-01-01', 1);
insert into documents(name, description, dateOfExpiry, glider_id) values("CofA", "swiadectwo zdatnosci do lotu", '2024-01-01', 1);
insert into documents(name, description, dateOfExpiry, glider_id) values("OC", "ubezpieczenie", '2024-04-01', 1);
insert into documents(name, description, dateOfExpiry, glider_id) values("RADIO", "Pozwolenie radiowe", '2032-04-01', 1);
