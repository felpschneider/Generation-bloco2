package org.generation.brazil.helloworld.controller.objetivos;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsm")
public class ObjetivosController {

	@GetMapping
	public String bsm(){
		return "Meu objetivo essa semana é aprender o framework"
				+ " Springboot e focar nos projetos e exercícios";
				
	}
	
}
