package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelos.Contato;
import utils.Conexao;

public class DaoContato {

	public static boolean salvar(Contato contato) {
		Connection con = Conexao.getConexao();
		String sql = "insert into tb_contatos(nome, email, fone)values(?,?,?)";
		try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, contato.getNome());
			stm.setString(2, contato.getEmail());
			stm.setString(3, "(47)9087-1234");
			stm.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			Conexao.fecharConexao();
		}
		return true;
	}
	
	public static List<Contato> consultar(){		
		Connection con = Conexao.getConexao();
	
		try {
			PreparedStatement stm = con.prepareStatement("select * from tb_contatos");
			ResultSet rs = stm.executeQuery();
			List<Contato> contatos = new ArrayList<Contato>();
			while(rs.next()) {
				contatos.add(new Contato(rs.getInt("id"),rs.getString("nome"),rs.getString("email")));
			}
			return contatos;
		} catch (SQLException e) {
			e.printStackTrace();			
		}
		finally {
			Conexao.fecharConexao();
		}
		return null;
	}
}
