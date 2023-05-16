package com.devsuperior.dsflight.repositories;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.devsuperior.dsflight.dto.FlightDTO;
import com.devsuperior.dsflight.entities.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {
	// query para pegar os dados do banco de dados classificados pela data de partida
	// o nome do método pra esta uery será findByDataPartida (poderia ser qualquer nome)
	// irá retornar uma pagina de Flight (entidade) e pode ser  usado como chamada em FlightService
	//
	@Query("SELECT obj FROM Flight obj ORDER BY SUBSTRING(obj.datapartida, 7,4), "
			+ "SUBSTRING(obj.datapartida, 4,2), SUBSTRING(obj.datapartida, 1,2), obj.id ")
		Page<Flight> findByDataPartida(Pageable pageable);
	
	// query para pegar os dados do banco de dados classificados pela data de partida
	// o nome do método pra esta uery será findByDataPartida2 (poderia ser qualquer nome)
	// irá retornar uma pagina de FlightDTO (entidade) e poderia usado como chamada em FlightService
	// 
	@Query("SELECT obj FROM Flight obj ORDER BY SUBSTRING(obj.datapartida, 7,4), "
			+ "SUBSTRING(obj.datapartida, 4,2), SUBSTRING(obj.datapartida, 1,2), obj.id ")
		Page<FlightDTO> findByDataPartida2(Pageable pageable);
	
	// query para pegar os dados do banco de dados classificados pela data de chegada
	// o nome do método pra esta query será findByDataPartida2 (poderia ser qualquer nome)
	// irá retornar uma pagina de FlightDTO (entidade) e poderia usado como chamada em FlightService
	//
	@Query("SELECT obj FROM Flight obj ORDER BY obj.datachegada ")
	Page<Flight> findByDataChegada(Pageable pageable);

	

}
