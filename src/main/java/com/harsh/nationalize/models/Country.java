package com.harsh.nationalize.models;


import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Country {
    
    
    private String country_id;
    private double probability;
    


    

}
