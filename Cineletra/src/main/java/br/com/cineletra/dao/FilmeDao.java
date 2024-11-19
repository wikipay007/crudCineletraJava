package br.com.cineletra.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.cineletra.model.Filme;

public class FilmeDao {
	private Connection conexao;
	
	public FilmeDao() {
		conexao = ConnectionFactory.conectar();
	}
	
	public void inserir(Filme filme) {
		String sql = "INSERT INTO filmes (nome, descricao, categoria, anoFilme)" + "VALUES (?,?,?,?)";
	    PreparedStatement smtp;
		try {
			//Preencher a consulta
			smtp = conexao.prepareStatement(sql);
			
			//preencher a posição com numero e depois a informação que será preenchida
			smtp.setString(1, filme.getNome());
			smtp.setString(2, filme.getDescricao());
			smtp.setString(3, filme.getCategoria());
			smtp.setString(4, filme.getAnoFilme());
			
			smtp.execute(); //Executar
			smtp.close();
			conexao.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Deu erro: " + e.getMessage());
		}
		
	}
	
	public List<Filme> listar(){
		String sql = "SELECT * FROM filmes";
		PreparedStatement smtp;
		List<Filme> filme = new ArrayList<Filme>();
		try {
			smtp = conexao.prepareStatement(sql);
			// Resultado = Lista de pizzas [], [{}]
			ResultSet resultado = smtp.executeQuery();
			while (resultado.next()) {
				Filme fil = new Filme();
				fil.setId(resultado.getLong("id"));
				fil.setNome(resultado.getString("nome"));
				fil.setDescricao(resultado.getString("descricao"));
				fil.setCategoria(resultado.getString("categoria"));
				fil.setAnoFilme(resultado.getString("anoFilme"));
				filme.add(fil);
		}
			resultado.close();
			smtp.close();
			conexao.close();
			return filme;
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException();
		}
		
		
	}
	public Filme buscar (Long id) {
		String sql = "SELECT * FROM filmes where id = ?";
		PreparedStatement smtp;
		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, id);
			ResultSet resultado = smtp.executeQuery();
			Filme p = null;
			
			
			
			while (resultado.next()) {
				p = new Filme();
				p.setId(resultado.getLong("id"));
				p.setNome(resultado.getString("nome"));
				p.setCategoria(resultado.getString("categoria"));
				p.setDescricao(resultado.getString("descricao"));
				p.setAnoFilme(resultado.getString("anoFilme"));
				
			}
			
			smtp.close();
			resultado.close();
			conexao.close();
			return p;
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException();
		}
	}
	
	public void excluir(Long idFilme) {
	    String sql = "DELETE FROM filmes WHERE id = ?";
	    PreparedStatement stmt;

	    try {
	        stmt = conexao.prepareStatement(sql);
	        stmt.setLong(1, idFilme);

	        // Execute o comando DELETE, sem retornar um ResultSet
	        int linhasAfetadas = stmt.executeUpdate();

	        // Fecha o PreparedStatement
	        stmt.close();

	        // Fecha a conexão
	        conexao.close();

	        // Se desejar, pode verificar se alguma linha foi realmente excluída
	        if (linhasAfetadas == 0) {
	            throw new RuntimeException("Nenhum filme encontrado com o ID: " + idFilme);
	        }

	    } catch (Exception e) {
	        throw new RuntimeException(e);
	    }
	}
	
	
	public void atualizarFilmes(Filme filme, Long id) {
	    String sql = "UPDATE filmes SET nome = ?, descricao = ?, categoria = ?, anoFilme = ? WHERE id = ?";
	    PreparedStatement smtp;

	    // Adicionando mensagens de depuração para confirmar os valores
	    System.out.println("Atualizando filme com ID: " + id);
	    System.out.println("Nome: " + filme.getNome());
	    System.out.println("Descrição: " + filme.getDescricao());
	    System.out.println("Categoria: " + filme.getCategoria());
	    System.out.println("Ano do Filme: " + filme.getAnoFilme());

	    try {
	        smtp = conexao.prepareStatement(sql);

	        // Assegurando que os valores não são nulos
	        smtp.setString(1, filme.getNome() != null ? filme.getNome() : "");
	        smtp.setString(2, filme.getDescricao() != null ? filme.getDescricao() : "");
	        smtp.setString(3, filme.getCategoria() != null ? filme.getCategoria() : "");
	        smtp.setString(4, filme.getAnoFilme() != null ? filme.getAnoFilme() : "");
	        smtp.setLong(5, id);

	        // Executa a atualização
	        smtp.executeUpdate();

	        // Fecha o PreparedStatement
	        smtp.close();

	    } catch (Exception e) {
	        System.out.println("Erro ao atualizar o filme: " + e.getMessage());
	        throw new RuntimeException(e);
	    }
	}




}
