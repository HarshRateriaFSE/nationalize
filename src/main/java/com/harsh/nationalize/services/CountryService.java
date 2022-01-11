package com.harsh.nationalize.services;

import java.util.Locale;

import org.springframework.stereotype.Service;

@Service
public class CountryService {
    
    public String getCountryName(String countryCode){
        String countryName = new String();
        Locale locale = new Locale("", "countryCode");
        countryName = locale.getDisplayCountry();
        return countryName;
    }
}
