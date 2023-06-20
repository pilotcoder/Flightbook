package pl.jgora.aeroklub.flightbook.controller;


import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.jgora.aeroklub.flightbook.entity.Flight;
import pl.jgora.aeroklub.flightbook.entity.Glider;
import pl.jgora.aeroklub.flightbook.service.FlightService;
import pl.jgora.aeroklub.flightbook.service.GliderService;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class FlightController {

    private final FlightService flightService;
    private final GliderService gliderService;

    @GetMapping(path="/flight/add")
    String showAddFlightForm(Model model) {
        model.addAttribute("flight", new Flight());
        return "flight/add";
    }

    @PostMapping("/flight/add")
    public String save(Flight flight,BindingResult bindingResult){
          {

            if (bindingResult.hasErrors()) {
                return "/flight/add";

            }

            flightService.save(flight);


              return "redirect:/flight/list";
        }
    }


    @GetMapping(path = "/flight/search")
    String showSearchFlightForm() {
        return "flight/search";

    }
    @GetMapping(path = "/flight/search", params = "flightDate")
    String findByDate(@RequestParam LocalDate flightDate, Model model){
        List<Flight> flights = flightService.findBydateOfFlight(flightDate);
        model.addAttribute("flights", flights);
        System.out.println(flights.toString());
        return "flight/list";
    }

    @GetMapping("/flight/list")
    String findAllFlights(Model model){
        List<Flight> flights = flightService.findAllFlights();
        model.addAttribute("flights", flights);
        return "flight/list";
    }

    @GetMapping(path = "/flight/delete", params = "id")
    public String deleteFlight(@RequestParam Long id){
        flightService.deleteById(id);
        return "redirect:/flight/list";
    }

    @GetMapping(path = "/flight/edit")
    String showEditFlightForm(@RequestParam Long id, Model model) {

        Flight flight = flightService.findById(id);
        model.addAttribute("flight", flight);
        return "flight/edit";
    }

    @PostMapping(path = "/flight/edit")
    String processEditFlightForm( Flight flight, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "flight/edit";
        }

        flightService.editFlight(flight);

        return "redirect:/flight/list";
    }

    @ModelAttribute("gliders")
    public List<Glider> findAllGliders(){
        return gliderService.findAllGliders();
    }




}
