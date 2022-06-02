package com.devsuperior.dsflight.entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_flightdetalhe")
public class FlightDetalhe {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private Double score;
	private Integer count;
	private String image;
	private String aeroportoorigem;
	private String aeroportodestino;
	private String cidadeorigem;
	private String cidadedestino;
	private String paisorigem;
	private String paisdestino;
	private Integer duracao;
	private String datapartida;
	private String datachegada;
	private String tipovoo;
	private String tipoaviao;
	private String matriculaaviao;
	private String companhiaaerea;
	private String escalas;
	private String observacao;
	

	public FlightDetalhe() {
		
	}


	public FlightDetalhe(Long id, String title, Double score, Integer count, String image, String aeroportoorigem,
			String aeroportodestino, String cidadeorigem, String cidadedestino, String paisorigem, String paisdestino,
			Integer duracao, String datapartida, String datachegada, String tipovoo, String tipoaviao,
			String matriculaaviao, String companhiaaerea, String escalas, String observacao) {
		super();
		this.id = id;
		this.title = title;
		this.score = score;
		this.count = count;
		this.image = image;
		this.aeroportoorigem = aeroportoorigem;
		this.aeroportodestino = aeroportodestino;
		this.cidadeorigem = cidadeorigem;
		this.cidadedestino = cidadedestino;
		this.paisorigem = paisorigem;
		this.paisdestino = paisdestino;
		this.duracao = duracao;
		this.datapartida = datapartida;
		this.datachegada = datachegada;
		this.tipovoo = tipovoo;
		this.tipoaviao = tipoaviao;
		this.matriculaaviao = matriculaaviao;
		this.companhiaaerea = companhiaaerea;
		this.escalas = escalas;
		this.observacao = observacao;
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


	public String getAeroportoorigem() {
		return aeroportoorigem;
	}


	public void setAeroportoorigem(String aeroportoorigem) {
		this.aeroportoorigem = aeroportoorigem;
	}


	public String getAeroportodestino() {
		return aeroportodestino;
	}


	public void setAeroportodestino(String aeroportodestino) {
		this.aeroportodestino = aeroportodestino;
	}


	public String getCidadeorigem() {
		return cidadeorigem;
	}


	public void setCidadeorigem(String cidadeorigem) {
		this.cidadeorigem = cidadeorigem;
	}


	public String getCidadedestino() {
		return cidadedestino;
	}


	public void setCidadedestino(String cidadedestino) {
		this.cidadedestino = cidadedestino;
	}


	public String getPaisorigem() {
		return paisorigem;
	}


	public void setPaisorigem(String paisorigem) {
		this.paisorigem = paisorigem;
	}


	public String getPaisdestino() {
		return paisdestino;
	}


	public void setPaisdestino(String paisdestino) {
		this.paisdestino = paisdestino;
	}


	public Integer getDuracao() {
		return duracao;
	}


	public void setDuracao(Integer duracao) {
		this.duracao = duracao;
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


	public String getTipovoo() {
		return tipovoo;
	}


	public void setTipovoo(String tipovoo) {
		this.tipovoo = tipovoo;
	}


	public String getTipoaviao() {
		return tipoaviao;
	}


	public void setTipoaviao(String tipoaviao) {
		this.tipoaviao = tipoaviao;
	}


	public String getMatriculaaviao() {
		return matriculaaviao;
	}


	public void setMatriculaaviao(String matriculaaviao) {
		this.matriculaaviao = matriculaaviao;
	}


	public String getCompanhiaaerea() {
		return companhiaaerea;
	}


	public void setCompanhiaaerea(String companhiaaerea) {
		this.companhiaaerea = companhiaaerea;
	}


	public String getEscalas() {
		return escalas;
	}


	public void setEscalas(String escalas) {
		this.escalas = escalas;
	}


	public String getObservacao() {
		return observacao;
	}


	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	
	
}
