package com.devsuperior.dsflight.dto;

import com.devsuperior.dsflight.entities.Flight;

public class FlightDTO {
	
	private Long id;
	private String title;
	private Double score;
	private Integer count;
	private String image;
	private String origem;
	private String destino;
	private Integer duracao;
	private String dataPartida;
	private String dataChegada;
	private String tipoVoo;
	
	public FlightDTO() {
	}

	public FlightDTO(Long id, String title, Double score, Integer count, String image, String origem, String destino,
			Integer duracao, String dataPartida, String dataChegada, String tipoVoo) {
		this.id = id;
		this.title = title;
		this.score = score;
		this.count = count;
		this.image = image;
		this.origem = origem;
		this.destino = destino;
		this.duracao = duracao;
		this.dataPartida = dataPartida;
		this.dataChegada = dataChegada;
		this.tipoVoo = tipoVoo;
	}
	
	public FlightDTO(Flight flight) {
		id =flight.getId();
		title = flight.getTitle();
		score = flight.getScore();
		count = flight.getCount();
		image = flight.getImage();
		origem = flight.getOrigem();
		destino = flight.getDestino();
		duracao = flight.getDuracao();
		dataPartida = flight.getDataPartida();
		dataChegada = flight.getDataChegada();
		tipoVoo = flight.getTipoVoo();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getOrigem() {
		return origem;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public Integer getDuracao() {
		return duracao;
	}

	public void setDuracao(Integer duracao) {
		this.duracao = duracao;
	}

	public String getDataPartida() {
		return dataPartida;
	}

	public void setDataPartida(String dataPartida) {
		this.dataPartida = dataPartida;
	}

	public String getDataChegada() {
		return dataChegada;
	}

	public void setDataChegada(String dataChegada) {
		this.dataChegada = dataChegada;
	}

	public String getTipoVoo() {
		return tipoVoo;
	}

	public void setTipoVoo(String tipoVoo) {
		this.tipoVoo = tipoVoo;
	}
	
	
	
	
	
	

}
