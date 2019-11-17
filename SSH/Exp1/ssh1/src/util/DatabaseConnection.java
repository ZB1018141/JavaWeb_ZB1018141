package util;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;



public class DatabaseConnection {
	String Driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/user?useUnicode=true&characterEncoding=utf8"; 
    String username="root";
    String pas="123456789";
    private static Connection con;
	public DatabaseConnection() throws ClassNotFoundException, SQLException {
		Class.forName(Driver);
		con=(Connection) DriverManager.getConnection(url, username, pas);
	} 
	public Connection getconnection(){
		return this.con;
		
	}
public void close(){
	
if(con!=null){
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
public static void main(String[] args) throws ClassNotFoundException, SQLException {
	// TODO Auto-generated method stub
	DatabaseConnection dc=new DatabaseConnection();
	if(con==null){
		System.out.print("con fail!");	
	}
	else {
		System.out.print("con success!");
	}
}
}
