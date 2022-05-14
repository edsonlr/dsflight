package com.devsuperior.dsflight.dto;

public class ScoreDTO {
	
	
	private Long flightId;
	private String email;
	private Double score;
	
	public ScoreDTO () {
	}

	public Long getFlightId() {
		return flightId;
	}

	public void setFlightId(Long flightId) {
		this.flightId = flightId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}
	
	

}


