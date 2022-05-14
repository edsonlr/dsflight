package com.devsuperior.dsflight.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.dsflight.dto.FlightDTO;
import com.devsuperior.dsflight.dto.ScoreDTO;
import com.devsuperior.dsflight.services.ScoreService;

@RestController
@RequestMapping(value = "/scores")
public class ScoreController {

	@Autowired
	private ScoreService service;

	@PutMapping(value = "/{id}")
	public FlightDTO saveScore(@RequestBody ScoreDTO dto) {
		FlightDTO flightDTO = service.saveScore(dto);
		return flightDTO;
	}

}
