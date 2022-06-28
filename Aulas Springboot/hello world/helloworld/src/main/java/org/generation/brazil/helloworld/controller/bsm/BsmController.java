package org.generation.brazil.helloworld.controller.bsm;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsm")
public class BsmController {
	
	@GetMapping
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
