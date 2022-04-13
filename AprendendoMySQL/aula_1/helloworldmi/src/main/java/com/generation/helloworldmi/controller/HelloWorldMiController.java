package com.generation.helloworldmi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/hello-world-mi")

public class HelloWorldMiController {
	
	@GetMapping
	public String helloworldmi(){
		return "Hello Word Mi!!";
		
	}
	
	@GetMapping("/bsm")
	public String bsm(){
		return "mentalidades:orientação ao Futur,reponsabilidade pessoal, mentalidade de crescimento e persistência; Habilidades:Trabalho em Equipe, Atenção aos detalhes, proatividade e comunicação";
		
	}
	
	@GetMapping("/obj")
	public String objetivo(){
		return "Aprender a mexer com arquitetura Rest e SpringBoot";
		
	}

}
