package pl.jgora.aeroklub.flightbook.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class HelloWorldController {

    @GetMapping(path = "/hello")
    String helloWorld() {
        return "Hello in Your new Flightbook";
    }
}
