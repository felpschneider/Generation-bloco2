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
}
