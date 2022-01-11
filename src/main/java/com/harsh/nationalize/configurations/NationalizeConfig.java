package com.harsh.nationalize.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class NationalizeConfig {
    
    @Bean
    public RestTemplate gRestTemplate(){
        return new RestTemplate();
    }
}
