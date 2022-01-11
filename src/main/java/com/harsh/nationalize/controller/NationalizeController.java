package com.harsh.nationalize.controller;

import com.harsh.nationalize.models.National;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class NationalizeController {

    @Autowired
    private RestTemplate restTemplate;

    

    @GetMapping("/")
    public String getName(Model model) {
        return "homepage";
    }

    @PostMapping("/")
    public String putNations(ModelMap model, @RequestParam String name) {
        National national = restTemplate.getForObject("https://api.nationalize.io?name=" + name, National.class);
        // national.setCountries(national.getCountries().stream().map(country -> {
        //     return new Country(countryService.getCountryName(country.getCountryId()), country.getProbability());
        // }).collect(Collectors.toList()));
        model.addAttribute("name", name);
        model.addAttribute("countries", national.getCountries());
        return "welcome";
    }
}
