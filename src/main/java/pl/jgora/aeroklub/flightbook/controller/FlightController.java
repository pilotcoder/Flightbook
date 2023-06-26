package pl.jgora.aeroklub.flightbook.controller;


import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
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

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
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
    public String save(@ModelAttribute("flight")@Valid Flight flight,BindingResult bindingResult){


            if (bindingResult.hasErrors()) {
                return "flight/invalid";

            }

            flightService.save(flight);
            Long id = flight.getGlider().getId();


              return "redirect:/flight/list?gliderId=" + id.toString();
        }



    @GetMapping(path = "/flight/search")
    String showSearchFlightForm() {
        return "flight/search";

    }
    @GetMapping(path = "/flight/search", params = "flightDate")
    String findByDate(@RequestParam LocalDate flightDate, Model model){
        List<Flight> flights = flightService.findBydateOfFlight(flightDate);
        model.addAttribute("flights", flights);

        return "flight/list";
    }

    @GetMapping(path = "/flight/select", params = {"glider_id, beginDate, endDate"})
    String findFlightsBetween (@RequestParam Long glider_id, @RequestParam LocalDate begindate, @RequestParam LocalDate endDate, Model model) throws DocumentException, FileNotFoundException {
        List<Flight> flights = flightService.findByGlider_IdAndAndDateOfFlightBetween(glider_id, begindate, endDate);
        model.addAttribute("flights", flights);
        createPdf(flights, "proba");
        return "/flight/list";

    }

    @GetMapping("/flight/list")
    String findAllFlights(Model model){
        List<Flight> flights = flightService.findAllFlights();
        model.addAttribute("flights", flights);
        return "flight/list";
    }

    @GetMapping(path = "/flight/list", params = "gliderId")
    String findAllFlightsByGliderId(Model model, @RequestParam Long gliderId){
        List<Flight> flights = flightService.findAllFlightsByGliderId(gliderId);
        model.addAttribute("flights", flights);
        return "flight/list";
    }


    @GetMapping(path = "/flight/delete", params = "id")
    public String deleteFlight(@RequestParam Long id){
        flightService.deleteById(id);
        return "redirect:/glider/list";
    }

    @GetMapping(path = "/flight/edit")
    String showEditFlightForm(@RequestParam Long id, Model model) {

        Flight flight = flightService.findById(id);
        model.addAttribute("flight", flight);
        return "flight/edit";
    }

    @PostMapping(path = "/flight/edit")
    String processEditFlightForm(@ModelAttribute("flight")@Valid Flight flight, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "flight/invalid";
        }

        flightService.editFlight(flight);
        Long id = flight.getGlider().getId();


        return "redirect:/flight/list?gliderId=" + id.toString();
    }

    @ModelAttribute("gliders")
    public List<Glider> findAllGliders(){
        return gliderService.findAllGliders();
    }

    public static void createPdf(List<Flight> flights, String filename) throws FileNotFoundException, DocumentException {

         filename = "test.pdf";
        Document document = new Document();

        PdfWriter.getInstance(document, new FileOutputStream(filename));


        document.open();

        Paragraph paragraph = new  Paragraph("testowanie pdfa");
        document.add(paragraph);


        document.close();

        System.out.println("koniec");
    }




}
