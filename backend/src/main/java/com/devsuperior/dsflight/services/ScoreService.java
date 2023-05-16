package com.devsuperior.dsflight.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dsflight.dto.FlightDTO;
import com.devsuperior.dsflight.dto.ScoreDTO;
import com.devsuperior.dsflight.entities.Flight;
import com.devsuperior.dsflight.entities.Score;
import com.devsuperior.dsflight.entities.User;
import com.devsuperior.dsflight.repositories.FlightRepository;
import com.devsuperior.dsflight.repositories.ScoreRepository;
import com.devsuperior.dsflight.repositories.UserRepository;

@Service
public class ScoreService {

	@Autowired
	private FlightRepository flightRepository;

	@Autowired
	private ScoreRepository scoreRepository;

	@Autowired
	private UserRepository userRepository;

	@Transactional
	public FlightDTO saveScore(ScoreDTO dto) {

		System.out.println("---------ScoreService-------------------------");
		System.out.println("flightid recebido: " + dto.getFlightId());
		System.out.println("email recebido: " + dto.getEmail());
		System.out.println("score recebido: " + dto.getScore());
		System.out.println("duracao recebida: " + dto.getDuracao());
		System.out.println("tipo de voo recebido: " + dto.getTipovoo());
		System.out.println("companhia aerea recabida: " + dto.getCompanhiaaerea());
		System.out.println("data partida recebida: " + dto.getDatapartida());
		System.out.println("data chegada recebbida: " + dto.getDatachegada());
		System.out.println("----------ScoreService------------------------");

		User user = userRepository.findByEmail(dto.getEmail());
		if (user == null) {
			user = new User();
			user.setEmail(dto.getEmail());
			user = userRepository.saveAndFlush(user);
		}

		Flight flight = flightRepository.findById(dto.getFlightId()).get();

		Score score = new Score();
		score.setFlight(flight);
		score.setUser(user);
		score.setValue(dto.getScore());

		score = scoreRepository.saveAndFlush(score);

		double sum = 0.0;
		for (Score s : flight.getScores()) {
			sum = sum + s.getValue();
		}

		double avg = sum / flight.getScores().size();

		flight.setScore(avg);
		flight.setCount(flight.getScores().size());
		
		if (dto.getDuracao() != null) {
			flight.setDuracao(dto.getDuracao());
		}
		
		if (dto.getTipovoo() != null && dto.getTipovoo() != "") {
			flight.setTipovoo(dto.getTipovoo());
		}
		
		if (dto.getCompanhiaaerea() != null && dto.getCompanhiaaerea() != "") {
			flight.setCompanhiaaerea(dto.getCompanhiaaerea());
		}
		
		if (dto.getDatapartida() != null && dto.getDatapartida() != "") {
			flight.setDatapartida(dto.getDatapartida());
		}
		
		if (dto.getDatachegada() != null && dto.getDatachegada() != "") {
			flight.setDatachegada(dto.getDatachegada());
		}
		
		flight = flightRepository.save(flight);

		return new FlightDTO(flight);

	}

}
