package connectionprovider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	private String driver=System.getProperty("driver");
	private String url=System.getProperty("url");
	private String user=System.getProperty("user");
	private String password=System.getProperty("pass");
	private static ConnectionProvider connectionProvider=null;
	private ConnectionProvider(){
		try{
			System.out.println(driver);
			Class.forName(driver);
		}catch (ClassNotFoundException e) {
			System.out.println("Class Not Found..");
		}
	}
	public Connection getConnection()throws SQLException{
		Connection conn=null;
		conn=DriverManager.getConnection(url, user, password);
		return conn;
	}
	public static ConnectionProvider getInstance() throws Exception {
		if (connectionProvider == null) {
			connectionProvider = new ConnectionProvider();
		}
		return connectionProvider;
	}

}
