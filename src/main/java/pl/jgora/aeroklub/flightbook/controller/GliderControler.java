package pl.jgora.aeroklub.flightbook.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.jgora.aeroklub.flightbook.entity.Glider;
import pl.jgora.aeroklub.flightbook.service.FlightService;
import pl.jgora.aeroklub.flightbook.service.GliderService;

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
}
