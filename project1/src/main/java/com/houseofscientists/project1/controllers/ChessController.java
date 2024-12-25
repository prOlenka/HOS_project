package com.houseofscientists.project1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChessController {

    @GetMapping("/question_start/chess")
    public String chess(Model model) {
        return "chess";
    }
}
