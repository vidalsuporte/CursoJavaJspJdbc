package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;

import connection.SingleConnection;
import model.ModelLogin;

public class DAOLoginRepository {

	private Connection connection;
	
	public DAOLoginRepository() {

		connection = SingleConnection.getConnection();
	}

	public boolean validarAutenticação(ModelLogin modelLogin) throws Exception {
String sql = " SELECT * FROM model_login where login = ? and senha = ?";

PreparedStatement statement = connection.prepareStatement(sql);
statement.setString(1, modelLogin.getLogin());
statement.setString(2, modelLogin.getSenha());
		ResultSet resultado = statement.executeQuery();
		
		if(resultado.next()) {
			return true;
		}else {
			return false;
		}
		
		
		
}

}
