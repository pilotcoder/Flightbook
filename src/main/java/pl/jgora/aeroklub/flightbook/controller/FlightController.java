package pl.jgora.aeroklub.flightbook.controller;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.jgora.aeroklub.flightbook.entity.Flight;
import pl.jgora.aeroklub.flightbook.service.FlightService;
@Controller
@RequiredArgsConstructor
public class FlightController {

    private final FlightService flightService;

    @GetMapping(path="/flight/add")
    String showAddFlightForm(Model model) {
        model.addAttribute("flight", new Flight());
        return "flight/add";
    }

    @PostMapping("/flight/add")
    public void save(Flight flight,BindingResult bindingResult){
          {

            if (bindingResult.hasErrors()) {
                System.out.println("nie zapisało");

            }

            flightService.save(flight);

              System.out.println("zapisało");;
        }
    }


}
