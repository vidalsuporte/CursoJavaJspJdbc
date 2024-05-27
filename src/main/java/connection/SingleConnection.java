package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	private static String senha = "123456";
	private static String usuario = "postgres";
	private static String banco = "jdbc:postgrsql://localhost:5432/curso-jsp?auroReconnect=true";
	private static Connection connection = null;

	
public static Connection getConnection() {
return connection;	
}
	
	
	static {
		conectar();
	}

	public SingleConnection() {
		conectar();// TODO Auto-generated constructor stub
	}

	private static void conectar() {

		try {

			if (connection == null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(banco, usuario, senha);
				connection.setAutoCommit(false);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
