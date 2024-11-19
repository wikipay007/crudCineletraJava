package br.com.cineletra.model;

public class Filme {
	
	//Long -> 2
	//long ->
	private Long id;
	private String nome;
	private String descricao;
	private String categoria;
	private String anoFilme;
	
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getAnoFilme() {
		return anoFilme;
	}
	public void setAnoFilme(String anoFilme) {
		this.anoFilme = anoFilme;
	}
	
	
}
