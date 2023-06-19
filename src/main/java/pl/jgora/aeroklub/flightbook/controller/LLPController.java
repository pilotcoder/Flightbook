package pl.jgora.aeroklub.flightbook.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.jgora.aeroklub.flightbook.entity.Flight;
import pl.jgora.aeroklub.flightbook.entity.LLP;
import pl.jgora.aeroklub.flightbook.service.LLPService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class LLPController {

    private final LLPService llpService;


    @PostMapping("/llp/add")
    public String save(LLP llp,BindingResult bindingResult){
        {

            if (bindingResult.hasErrors()) {
                return "/llp/add";

            }

            llpService.save(llp);


            return "redirect:/llp/list";
        }
    }

    @GetMapping("/llp/list")
    String findAllLLP(Model model){
        List<LLP> llpList = llpService.findAll();
        model.addAttribute("llplist", llpList);
        return "llp/list";
    }

    @GetMapping(path = "/llp/delete", params = "id")
    public String deleteLLP(@RequestParam Long id){
        llpService.deleteById(id);
        return "redirect:/llp/list";
    }

    @GetMapping(path = "/llp/edit")
    String showEditLLPForm(@RequestParam Long id, Model model) {

        LLP llp = llpService.findById(id);
        model.addAttribute("llp", llp);
        return "llp/edit";
    }

//    @PostMapping(path = "/llp/edit")
//    String processEditLLPForm( LLP llp, BindingResult bindingResult) {
//
//        if (bindingResult.hasErrors()) {
//            return "llp/edit";
//        }
//
//       llpService.editLlp(llp);
//
//        return "redirect:/llp/list";
//    }




}
