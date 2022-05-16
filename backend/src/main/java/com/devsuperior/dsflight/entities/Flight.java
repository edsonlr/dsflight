package com.devsuperior.dsflight.entities;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tb_flight")
public class Flight {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private Double score;
	private Integer count;
	private String image;
	private String origem;
	private String destino;
	private Integer duracao;
	private String data_partida;
	private String data_chegada;
	private String tipo_voo;
	
	@OneToMany(mappedBy = "id.flight")
	private Set<Score> scores = new HashSet<>();

	public Flight() {
		
	}



	public Flight(Long id, String title, Double score, Integer count, String image, String origem, String destino,
			Integer duracao, String data_partida, String data_chegada, String tipo_voo) {

		this.id = id;
		this.title = title;
		this.score = score;
		this.count = count;
		this.image = image;
		this.origem = origem;
		this.destino = destino;
		this.duracao = duracao;
		this.data_partida = data_partida;
		this.data_chegada = data_chegada;
		this.tipo_voo = tipo_voo;
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



	public String getData_partida() {
		return data_partida;
	}



	public void setData_partida(String data_partida) {
		this.data_partida = data_partida;
	}



	public String getData_chegada() {
		return data_chegada;
	}



	public void setData_chegada(String data_chegada) {
		this.data_chegada = data_chegada;
	}



	public String getTipo_voo() {
		return tipo_voo;
	}



	public void setTipo_voo(String tipo_voo) {
		this.tipo_voo = tipo_voo;
	}



	public Set<Score> getScores() {
		return scores;
	}

		

}
