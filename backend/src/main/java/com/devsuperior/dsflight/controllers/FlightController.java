package com.devsuperior.dsflight.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.dsflight.dto.FlightDTO;
import com.devsuperior.dsflight.entities.Flight;
import com.devsuperior.dsflight.services.FlightService;

@RestController
@RequestMapping(value = "/flights")
public class FlightController {

	@Autowired
	private FlightService service;

	@GetMapping
	// a linha abaixo declara o método chamado findData (poderia ser qualquer nome)
	// e diz que o retorno será do tipo FlightDTO paginado (Page<FlightDTO>)
	// Quando receber a URL for com final /flights será retorndo este método

	public Page<FlightDTO> findData(Pageable pageable) {
		
		// a linha abaixo é para ir buscar a pagina de FlightDTO em FlightService
		// (service.findData)
		// e será o retorno para a URL que terminar em /flights
		// o método com o nome de findData tem que estar declarado em FlightService

		return service.findData(pageable);
	}

	
	// a linha abaixo é para ir buscar a pagina de FlightDTO em FlightService
	// (service.findAll) e retorn os registors na ordem em que  foram incluidos no DB
	// sem classificar por data de partida ou de chegada
	// e será o retorno para a URL que terminar em /flights/findall
	// o método com o nome de findAll tem que estar declarado em FlightService
	
	@GetMapping(value = "/findall")
	public Page<FlightDTO> findAll(Pageable pageable) {
	return service.findAll(pageable);
	}

	@GetMapping(value = "/{id}")
	public FlightDTO findById(@PathVariable Long id) {
		return service.findById(id);
	}

	@GetMapping(value = "/sortByDate")
	public ResponseEntity<List<Flight>> findByDate(Sort sort) {
		return service.findByDate(sort);
	}

	@GetMapping(value = "/sortByDataPartida")
	public Page<Flight> findByDataPartida(Pageable pageable) {
		return service.findByDataPartida(pageable);

	}

	@GetMapping(value = "/sortByDataChegada")
	public Page<Flight> findByDataChegada(Pageable pageable) {
		return service.findByDataChegada(pageable);

	}

}
