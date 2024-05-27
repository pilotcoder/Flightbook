package pl.jgora.aeroklub.flightbook.controller;


import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPTableHeader;
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
import java.time.LocalDateTime;
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
    String findByDate(@RequestParam LocalDate flightDate, Model model) throws DocumentException, FileNotFoundException {
        List<Flight> flights = flightService.findBydateOfFlight(flightDate);
        model.addAttribute("flights", flights);
        createPdf(flights, "proba");

        return "flight/list";
    }

    @GetMapping(path = "/flight/select")
    String selectToPdfForm(){
        return "flight/select";
    }
    @GetMapping(path = "/flight/select", params = {"beginDate", "endDate"} )
    String findFlightsBetween (@RequestParam LocalDate beginDate, @RequestParam LocalDate endDate, Model model) throws DocumentException, FileNotFoundException {
        List<Flight> flights = flightService.findByDateOfFlightBetween(beginDate, endDate);
        model.addAttribute("flights", flights);
        LocalDateTime now = LocalDateTime.now();
        String filename = now.getNano() +  "_lista.pdf" ;
        System.out.println(filename);
        createPdf(flights, filename);
        return "flight/list";

    }

    @GetMapping("/flight/list")
    String findAllFlights(Model model){
        List<Flight> flights = flightService.findAllFlights();
        model.addAttribute("flights", flights);
        return "flight/list";
    }

    @GetMapping(path = "/flight/list", params = "gliderId")
    String findAllFlightsByGliderId(Model model, @RequestParam Long gliderId) throws DocumentException, FileNotFoundException {
        List<Flight> flights = flightService.findAllFlightsByGliderId(gliderId);
        model.addAttribute("flights", flights);
        createPdf(flights, "proba");
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
// wywalić static i przenieść do service
    public static void createPdf(List<Flight> flights, String filename) throws FileNotFoundException, DocumentException {


        Document document = new Document();

        PdfWriter.getInstance(document, new FileOutputStream(filename));



        document.open();

        Paragraph paragraph = new  Paragraph("testowanie pdfa");
        document.add(paragraph);
        PdfPTable table  = new PdfPTable(4);


        if (flights != null){

            PdfPCell header = new PdfPCell(new Phrase("Data lotu:"));
            table.addCell(header);
            header = new PdfPCell(new Phrase("Czas lotu godz:"));
            table.addCell(header);
            header = new PdfPCell(new Phrase("Czas lotu min:"));
            table.addCell(header);

            header = new PdfPCell(new Phrase("liczba lotów::"));
            table.addCell(header);

            for (Flight flight: flights) {
                table.addCell(flight.getDateOfFlight().toString());
                table.addCell(flight.getFlightHrs().toString());
                table.addCell(flight.getFlightMins().toString());
                table.addCell(flight.getCycles().toString());

            }
        }else{
            table.addCell("lista jest pusta");
        }
        document.add(table);







        document.close();

        System.out.println("koniec");
    }




}
