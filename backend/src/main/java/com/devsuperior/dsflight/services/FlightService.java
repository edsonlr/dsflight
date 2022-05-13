package com.devsuperior.dsflight.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dsflight.dto.FlightDTO;
import com.devsuperior.dsflight.entities.Flight;
import com.devsuperior.dsflight.repositories.FlightRepository;

@Service
public class FlightService {
	
	@Autowired
	private FlightRepository repository;

	@Transactional(readOnly = true)
	public Page<FlightDTO> findAll(Pageable pageable) {
		Page<Flight> result = repository.findAll(pageable);
		Page<FlightDTO> page = result.map(x -> new FlightDTO(x));
		return page;
	}
	
	@Transactional(readOnly = true)
	public FlightDTO findById(Long id) {
		Flight result = repository.findById(id).get();
		FlightDTO dto = new FlightDTO(result);
		return dto;
	}
}
