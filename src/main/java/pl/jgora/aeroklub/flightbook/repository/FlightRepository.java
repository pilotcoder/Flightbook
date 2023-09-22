package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.jgora.aeroklub.flightbook.entity.Flight;

import java.time.LocalDate;
import java.util.List;

public interface FlightRepository extends JpaRepository<Flight, Long> {

    public List<Flight> findBydateOfFlight(LocalDate dateOfFlight);
    public  List<Flight> findByOrderByDateOfFlightDesc();
    public  List<Flight> findByGlider_IdOrderByDateOfFlightDesc(Long gliderId);
    public List<Flight> findByDateOfFlightBetween (LocalDate beginDate, LocalDate endDate);
    }


