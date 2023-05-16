package com.devsuperior.dsflight.dto;

public class ScoreDTO {

	private Long flightId;
	private String email;
	private Double score;
	private Integer duracao;
	private String tipovoo;
	private String companhiaaerea;
	private String datapartida;
	private String datachegada;

	public ScoreDTO() {
	}

	public Long getFlightId() {
		System.out.println("============ScoreDTO=====================");
		System.out.println("dto flightid recebido: " + flightId);
		System.out.println("dto email recebido: " + email);
		System.out.println("dto score recebido: " + score);
		System.out.println("dto duracao recebida: " + duracao);
		System.out.println("dto tipovoo recebida: " + tipovoo);
		System.out.println("dto companhiaaerea recebida: " + companhiaaerea);
		System.out.println("dto datapartida recebida: " + datapartida);
		System.out.println("dto datachegada recebida: " + datachegada);
		System.out.println("============ScoreDTO=====================");
		return flightId;
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

	public String getTipovoo() {
		return tipovoo;
	}

	public void setTipovoo(String tipovoo) {
		this.tipovoo = tipovoo;
	}

	public String getCompanhiaaerea() {
		return companhiaaerea;
	}

	public void setCompanhiaaerea(String companhiaaerea) {
		this.companhiaaerea = companhiaaerea;
	}

	public String getDatapartida() {
		return datapartida;
	}

	public void setDatapartida(String datapartida) {
		this.datapartida = datapartida;
	}

	public String getDatachegada() {
		return datachegada;
	}

	public void setDatachegada(String datachegada) {
		this.datachegada = datachegada;
	}

	public void setFlightId(Long flightId) {
		this.flightId = flightId;
	}


}
