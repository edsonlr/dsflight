package com.devsuperior.dsflight.dto;

public class ScoreDTO {

	private Long flightId;
	private String email;
	private Double score;
	private Integer duracao;
	private String tipo_voo;

	public ScoreDTO() {
	}

	public Long getFlightId() {
		System.out.println("dto flightid recebido: " + flightId);
		System.out.println("dto email recebido: " + email);
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

	public Integer getDuracao() {
		return duracao;
	}

	public void setDuracao(Integer duracao) {
		this.duracao = duracao;
	}

	public String getTipo_voo() {
		return tipo_voo;
	}

	public void setTipo_voo(String tipo_voo) {
		this.tipo_voo = tipo_voo;
	}

}
