package com.riteship.campus.recruitment.systems.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RiteShipRestController {

    @GetMapping("/")
    public String index() {
        return "index";
    }
}
