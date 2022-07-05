package org.generation.brazil.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloworld")
public class helloWorldController {

	@GetMapping
	public String hello() {
		return "Hello World!";
	}
	
	@GetMapping("/objetivos")
	public String objetivos(){
		return "Meu objetivo essa semana é aprender o framework"
				+ " Springboot e focar nos projetos e exercícios";
				
	}
	
	@GetMapping("/bsm")
	public String bsm(){
		return "<h1>As BSM's são:<br></h1>" 
				+ "Trabalho em equipe<br>"
				+ "Atenção aos Detalhes<br>"
				+ "Proatividade<br>"
				+ "Comunicação<br>"
				+ "Orientação ao Futuro<br>"
				+ "Responsabilidade Pessoal<br>"
				+ "Persistência<br>"
				+ "Mentalidade de Crescimento";
				
	}
}
