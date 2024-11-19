package br.com.cineletra.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.cineletra.model.Filme;
import br.com.cineletra.model.Funcionario;
import org.springframework.stereotype.Repository;

@Repository
public class FuncionarioDao {

    public Connection conexao;

    public FuncionarioDao() {
        conexao = ConnectionFactory.conectar(); // conexão com o banco
    }

   
    public void inserir(Funcionario funcionario) {
        String sql = "INSERT INTO funcionarios (nome, idade, cargo) VALUES (?, ?, ?)";
        
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            
            stmt.setString(1, funcionario.getNome());
            stmt.setString(2, funcionario.getIdade());
            stmt.setString(3, funcionario.getCargo());
            
            stmt.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Erro ao inserir funcionário: " + e.getMessage());
            e.printStackTrace();
        }
    }
    public Funcionario buscarPorId(int id) {
        Funcionario funcionario = null;
        String sql = "SELECT * FROM funcionarios WHERE id = ?";
        
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            
            System.out.println("passou aqui");
            
            if (rs.next()) {
                funcionario = new Funcionario();
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setIdade(rs.getString("idade"));
                funcionario.setCargo(rs.getString("cargo"));
            }
            
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            System.out.println("Erro ao buscar funcionário: " + e.getMessage());
            e.printStackTrace();
        } finally {
            fecharConexao();
        }
        
        return funcionario;
    }
    public List<Funcionario> listar() {
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        String sql = "SELECT * FROM funcionarios";

        try (PreparedStatement stmt = conexao.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Funcionario funcionario = new Funcionario();
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setIdade(rs.getString("idade"));
                funcionario.setCargo(rs.getString("cargo"));

                funcionarios.add(funcionario);
            }

        } catch (SQLException e) {
            System.out.println("Erro ao listar funcionários: " + e.getMessage());
            e.printStackTrace();
        } finally {
            fecharConexao();
        }

        return funcionarios;
    }
    
    public void deletar(int id) {
	    String sql = "DELETE FROM funcionarios WHERE id = ?";

	    try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
	        stmt.setInt(1, id);
	        stmt.executeUpdate();
	        System.out.println("Funcionário com ID " + id + " deletado do banco de dados.");
	    } catch (SQLException e) {
	        System.out.println("Erro ao deletar funcionário: " + e.getMessage());
	        e.printStackTrace();
	    } finally {
	        fecharConexao();
	    }
	}
    public void atualizarFilmes(Filme filme) {
        String sql = "UPDATE filmes SET nome = ?, descricao = ?, categoria = ?, anoFilme = ? WHERE id = ?";
        
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            // Define os parâmetros
            stmt.setString(1, filme.getNome());
            stmt.setString(2, filme.getDescricao());
            stmt.setString(3, filme.getCategoria());
            stmt.setString(4, filme.getAnoFilme());
            stmt.setLong(5, filme.getId());

            // Executa o comando
            int linhasAfetadas = stmt.executeUpdate();

            if (linhasAfetadas == 0) {
                throw new RuntimeException("Nenhum filme encontrado para atualizar com o ID: " + filme.getId());
            }

        } catch (Exception e) {
            System.out.println("Erro ao atualizar o filme: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
    public void atualizar(Funcionario funcionario, Long id) {
        String sql = "UPDATE funcionarios SET nome = ?, idade = ?, cargo = ? WHERE id = ?";
        System.out.println(id);
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setString(1, funcionario.getNome());
            stmt.setString(2, funcionario.getIdade());
            stmt.setString(3, funcionario.getCargo());
            stmt.setInt(4, funcionario.getId());

            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Erro ao atualizar funcionário: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    
    
		private void fecharConexao() {
	        try {
	            if (conexao != null && !conexao.isClosed()) {
	                conexao.close(); 
	            }
	        } catch (SQLException e) {
	            System.out.println("Erro ao fechar a conexão: " + e.getMessage());
	        }
	    }
		
}
