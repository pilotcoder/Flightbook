package pl.jgora.aeroklub.flightbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.jgora.aeroklub.flightbook.entity.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {

}
