package pl.jgora.aeroklub.flightbook.service;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.cors.reactive.PreFlightRequestWebFilter;
import pl.jgora.aeroklub.flightbook.entity.Flight;
import pl.jgora.aeroklub.flightbook.repository.FlightRepository;

import java.time.LocalDate;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class FlightService {

    private final FlightRepository flightRepository;

    public void save(Flight flight) {
        flightRepository.save(flight);
    }

    public List<Flight> findBydateOfFlight(LocalDate date) {
        return flightRepository.findBydateOfFlight(date);
    }

    public List<Flight> findAllFlights() {
        return flightRepository.findByOrderByDateOfFlightDesc();
    }

    public List<Flight> findAllFlightsByGliderId(Long gliderId) {
        return flightRepository.findByGlider_IdOrderByDateOfFlightDesc(gliderId);
    }

    public Flight findById(Long id) {
        return flightRepository.findById(id).get();
    }

    public void deleteById(Long id) {
        flightRepository.deleteById(id);
    }

    public void editFlight(Flight flight) {
        flightRepository.save(flight);
    }

    public List<Flight> findByDateOfFlightBetween(LocalDate beginDate, LocalDate endDate) {
         return flightRepository.findByDateOfFlightBetween(beginDate, endDate);
    }
}
