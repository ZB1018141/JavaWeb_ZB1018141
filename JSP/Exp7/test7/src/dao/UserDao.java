package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.alibaba.druid.pool.DruidPooledConnection;

import bean.UserBean;
import util.DatabaseConnection;
import util.DbPoolConnection;

public class UserDao {
	//查询所有信息返回所有信息
		public UserBean queryall(String name,String pass) throws SQLException{
			DbPoolConnection dbp = DbPoolConnection.getInstance();
	        DruidPooledConnection con = dbp.getConnection();
			PreparedStatement ps=null;
			ResultSet rs=null;
			con=dbp.getConnection();
			String sql="select * FROM UserTable where Username=? and Password=?";	
			ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pass);
			rs=ps.executeQuery();
			UserBean rb=null;
			while(rs.next()){
				rb=new UserBean();
				rb.setUsername(rs.getString("username"));
				rb.setPassword(rs.getString("password"));
			}
			return rb;
		}
		/*
		 * 正常使用
		 *   	
		//查询所有信息返回所有信息
			public UserBean queryall(String name,String pass) throws SQLException{
				Connection con=null;
				PreparedStatement ps=null;
				ResultSet rs=null;
				con=(Connection) new DatabaseConnection().getconnection();
				String sql="select * FROM UserTable where Username=? and Password=?";	
				ps=con.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, pass);
				rs=ps.executeQuery();
				UserBean rb=null;
				while(rs.next()){
					rb=new UserBean();
					rb.setUsername(rs.getString("username"));
					rb.setPassword(rs.getString("password"));
				}
				return rb;
			}	
		 */
		 
}
