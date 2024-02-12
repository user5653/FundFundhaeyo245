package com.kh.semi1st.common;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {

	/** Connection 객체 생성 후 해당 Connection 객체를 반환해주는 getConnection 메소드
	 * @return static Connection 객체 반환
	 */
	public static Connection getConnection() {
		
		Connection conn = null;
		Properties prop = new Properties();
		
		String filePath = JDBCTemplate.class.getResource("/db/driver/driver.properties").getPath();
		
		try {
			prop.load(new FileInputStream(filePath));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		try {
			Class.forName(prop.getProperty("driver"));
			conn = DriverManager.getConnection(prop.getProperty("url"), 
											   prop.getProperty("username"), 
											   prop.getProperty("password"));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	/** Connection 객체 전달받아서 commit 시켜주는 메소드
	 * @param conn : Connection 객체 
	 */
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) { // conn 이 null 이 아니고, 닫히지 않아야만 수행하도록
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/** Connection 객체 전달받아서 rollback 시켜주는 메소드
	 * @param conn : Connection 객체
	 */
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/** Connection 객체 전달받아서 반납시켜주는 close 메소드
	 * @param conn : Connection 객체
	 */
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/** Statement 객체 전달받아서 반납시켜주는 close 메소드
	 * @param stmt : Statement 객체
	 */
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/** ResultSet 객체 전달받아서 반납시켜주는 close 메소드
	 * @param rset : Resultset 객체
	 */
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
