package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection { 
	private DBConnection() {} //객체생성불가
	
	public static Connection getConnection() {
		Connection conn = null; //DB와연결해주는 객체
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://kdt.goodee.co.kr/lms","root","1234");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn, Statement stmt , ResultSet rs) {
		try {
			if(rs != null) rs.close(); 
			if(stmt != null) stmt.close();
			if(conn != null) conn.close(); 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
