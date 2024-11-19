package br.com.cineletra.model;

public class Funcionario {
    
	

	private String nome;
    private String idade;
    private String cargo;

    // Construtor padrão
    public Funcionario() {
    }
private int id;
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
    // Construtor com parâmetros
    public Funcionario(String nome, String idade, String cargo) {
        this.nome = nome;
        this.idade = idade;
        this.cargo = cargo;
    }

    // Getters e Setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    @Override
    public String toString() {
        return "Funcionario{" +
                "nome='" + nome + '\'' +
                ", idade='" + idade + '\'' +
                ", cargo='" + cargo + '\'' +
                '}';
    }
}
