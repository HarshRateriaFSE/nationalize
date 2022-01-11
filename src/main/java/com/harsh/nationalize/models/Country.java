package com.harsh.nationalize.models;

import com.harsh.nationalize.services.CountryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Component
@NoArgsConstructor
@AllArgsConstructor
public class Country {
    @Autowired
    private CountryService countryService;
    
    private String countryId;
    private double probability;
    public String getCountryId() {
        return countryId;
    }
    public void setCountryId(String countryId) {
        this.countryId = countryService.getCountryName(countryId);
    }
    public double getProbability() {
        return probability;
    }
    public void setProbability(double probability) {
        this.probability = probability;
    }

    

}
