package com.devsuperior.dsflight.services;

import java.util.List;

import org.hibernate.query.criteria.internal.expression.function.SubstringFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
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
	     // método para ir buscar os flights no banco de dados e converter a lista de Flights para FlightDTO 
		// e devolver pra o FlightController
	    // a linha abaixo declara o método findData (poderia ser qualquer nome) e diz que o 
	    //  retorno será do tipo FlightDTO paginado (Page<FlightDTO>)
	public Page<FlightDTO> findData(Pageable pageable) {
		// a linha seguinte vai no repositorio (DB) e retorna uma lista de flights(entidade Flight) em result
		// no FlightRepository tem uma query com a função findByDataPartida declarada
		Page<Flight> result = repository.findByDataPartida(pageable);
		// a linha seguinte converte cada item x da lista de flights(entidade Flight) retornada na  
		// variavel  result em FlightDTO - a pagina de entidades Flight de result é convertida 
		// em uma página de FlightDTO e jogada na variavel page
		Page<FlightDTO> page = result.map(x -> new FlightDTO(x));
		return page;
	}
	
	// método default da JPA que busca todos os registros do DB - usa método defult da JPA - findAll
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

	
	@Transactional(readOnly = true)
	public ResponseEntity<List<Flight>> findByDate(Sort sort) {
		Sort sort1 = Sort.by(Sort.Order.asc("datapartida"), Sort.Order.desc("datachegada"));
		List<Flight> result = repository.findAll(sort1);
		return ResponseEntity.ok(result);
	}
	
	@Transactional(readOnly = true)
	public Page<Flight> findByDataPartida(Pageable pageable) {
		return repository.findByDataPartida(pageable);
	}

	@Transactional(readOnly = true)
	public Page<FlightDTO> findByDataPartida2(Pageable pageable) {
		return repository.findByDataPartida2(pageable);
	}
	
	@Transactional(readOnly = true)
	public Page<Flight> findByDataChegada(Pageable pageable) {
		return repository.findByDataChegada(pageable);
	}
}
