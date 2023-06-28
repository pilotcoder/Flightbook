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
import pl.jgora.aeroklub.flightbook.entity.Glider;
import pl.jgora.aeroklub.flightbook.entity.LLP;
import pl.jgora.aeroklub.flightbook.service.GliderService;
import pl.jgora.aeroklub.flightbook.service.LLPService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class LLPController {

    private final LLPService llpService;
    private final GliderService gliderService;

    @GetMapping(path = "/llp/add")
    String showAddLLPForm(Model model) {
        model.addAttribute("llp", new LLP());
        return "llp/add";
    }

    @PostMapping("/llp/add")
    public String save(@ModelAttribute("llp") @Valid LLP llp, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "llp/invalid";
        }
        llpService.save(llp);
        Long id = llp.getGlider().getId();
        return "redirect:/llp/list?gliderId=" + id.toString();
    }

    @GetMapping("/llp/list")
    String findAllLLP(Model model) {
        List<LLP> llpList = llpService.findAll();
        model.addAttribute("llplist", llpList);

        return "llp/list";
    }

    @GetMapping(path = "/llp/delete", params = "id")
    public String deleteLLP(@RequestParam Long id) {
        llpService.deleteById(id);

        return "redirect:/glider/list";
    }

    @GetMapping(path = "/llp/edit")
    String showEditLLPForm(@RequestParam Long id, Model model) {

        LLP llp = llpService.findById(id);
        model.addAttribute("llp", llp);
        return "llp/edit";
    }

    @PostMapping(path = "/llp/edit")
    String processEditLLPForm(@ModelAttribute("llp") @Valid LLP llp, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "llp/edit";
        }
        llpService.editLlp(llp);
        Long id = llp.getGlider().getId();
        return "redirect:/llp/list?gliderId=" + id.toString();
    }

    @GetMapping(path = "llp/list", params = "gliderId")
    public String findLLPByGlider_Id(@RequestParam Long gliderId, Model model) {
        List<LLP> llpList = llpService.findLLPByGlider_Id(gliderId);
        model.addAttribute("llplist", llpList);
        return "llp/list";
    }

    @ModelAttribute("gliders")
    public List<Glider> findAllGliders() {
        return gliderService.findAllGliders();
    }
}