package br.com.caelum.agenda.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.Calendar;

import br.com.caelum.agenda.exception.DAOException;
import br.com.caelum.agenda.jdbc.ConnectionFactory;
import br.com.caelum.agenda.modelo.Contato;
import br.com.caelum.agenda.modelo.Funcionario;

public class FuncionarioDAO {

	private Connection connection = new ConnectionFactory().getConnection();
	
	public void adiciona(Funcionario funcionario) {
		String sql = "insert into funcionarios(nome, usuario, senha) values(?, ?, ?)";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getUsuario());
			stmt.setString(3, funcionario.getSenha());
			
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			throw new DAOException();
		}
	}
	
	public List<Funcionario> getLista() {
		try {
			List<Funcionario> funcionarios = new ArrayList<>();
			PreparedStatement stmt = this.connection.prepareStatement("select * from funcionarios");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Funcionario funcionario = new Funcionario();
				
				funcionario.setId(rs.getLong("id"));
				funcionario.setNome(rs.getString("nome"));
				funcionario.setUsuario(rs.getString("usuario"));
				funcionario.setSenha(rs.getString("usuario"));
				
				funcionarios.add(funcionario);
			}
			rs.close();
			stmt.close();
			return funcionarios;
			
		} catch (SQLException e) {
			throw new DAOException();
		}
	}
	
	public void altera(Funcionario funcionario) {
		
		String sql = "update funcionarios set nome=?, usuario=?, senha=? where id=?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getUsuario());
			stmt.setString(3, funcionario.getSenha());
			stmt.setLong(4, funcionario.getId());
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			new DAOException();
		}
	}
	
public void remove(Funcionario funcionario) {
		
		String sql = "delete from funcionarios where id=?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setLong(1, funcionario.getId());
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			new DAOException();
		}
	}
}
