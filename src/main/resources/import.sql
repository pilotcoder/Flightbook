insert into gliders(type, name, serialNumber, regNumber,totalFlightTime,totalcycles) values ('SZD-22C', 'Mucha std.', '665', 'SP-2279', 600, 50);


insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-11', 1, 5,  65, 1);
insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-12', 0, 5, 5, 1);
insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-12', 1, 10,70, 1);
insert into flights(dateOfFlight, flightHrs, flightMins,flightTime, cycles) values ('2022-06-16', 5, 5, 305, 1);

-- private Long id;
--     private String name;
--     private String type;
--     private String serialNumber;
--
--     private boolean valid;
--
--     private Integer maxLifetime;
--
--     private LocalDate dateOfExpiry;
--
--     private Integer maxCycles;
insert into parts(name, type, serialNumber, maxLifetime, dateOfExpiry, maxCycles, valid, glider_id) values ('zaczep', 'szd', 'R234', 60600, '2026-01-01', 2000, true, 1)
insert into parts(name, type, serialNumber, maxLifetime, dateOfExpiry, maxCycles, valid, glider_id) values ('pasy', 'J5.00.00', '2014', 60600, '2029-01-01', 2000, true, 1)