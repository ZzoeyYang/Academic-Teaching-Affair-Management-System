package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataSource {
	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");// ������������
		// ���������ݿ������
		String url = "jdbc:mysql://localhost:3306/xsgl";
		String user = "root";
		String password = "";
		Connection cn = DriverManager.getConnection(url, user, password);
		System.out.println("OK");
		return cn;
	}

}
