package com.devsuperior.dsflight.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	public FlightDTO saveScore(ScoreDTO dto) {

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
		
		flight = flightRepository.save(flight);
			
		return new FlightDTO(flight);

	}

}
