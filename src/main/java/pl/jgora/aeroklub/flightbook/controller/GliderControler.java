package pl.jgora.aeroklub.flightbook.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
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
public class GliderControler {

    private final GliderService gliderService;

    private final FlightService flightService;


    @GetMapping(path = "/glider/add")
    String showAddFlightForm(Model model) {
        model.addAttribute("glider", new Glider());
        return "glider/add";
    }

    @PostMapping("/glider/add")
    public void save(Glider glider, BindingResult bindingResult) {
        {

            if (bindingResult.hasErrors()) {
                System.out.println("nie zapisało");

            }

            gliderService.save(glider);

            System.out.println("zapisało");
            ;
        }


    }

    @GetMapping(path = "/glider/select", params = "regNumber")
    String findGliderByRegNumber(@RequestParam String regNumber, Model model){
       Glider glider = gliderService.findGliderByRegNumber(regNumber);
        model.addAttribute("glider", glider);
        System.out.println(glider.toString());
        System.out.println(glider.getLlpList().toString());
        return "glider/list";
    }
}
