package com.CSC._0.Rayyan.othman.api_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }
}