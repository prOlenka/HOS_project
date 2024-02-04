package com.houseofscientists.project1.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SomeConroller {
    @GetMapping("/hello")
    public String sayHello(){
        return "Hello, this is me";
    }
}
