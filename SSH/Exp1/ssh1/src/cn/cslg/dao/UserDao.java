package cn.cslg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.cslg.bean.LoginBean;
import util.DatabaseConnection;

public class UserDao {  	
		//查询所有信息返回所有信息
			public LoginBean queryall(String name,String pass) throws SQLException{
				Connection con=null;
				PreparedStatement ps=null;
				ResultSet rs=null;
				try {
					con=(Connection) new DatabaseConnection().getconnection();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String sql="select * FROM UserTable where Username=? and Password=?";	
				ps=con.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, pass);
				rs=ps.executeQuery();
				LoginBean rb=null;
				while(rs.next()){
					rb=new LoginBean();
					rb.setUserName(rs.getString("userName"));
					rb.setPassWord(rs.getString("passWord"));
				}
				return rb;
			}	
			//插入人员数据
		public int Insert(LoginBean peopleBean) throws SQLException{
			Connection con=null;
			PreparedStatement ps=null;
			int i=0;
			try {
				con=new DatabaseConnection().getconnection();
			String sql="insert into UserTable(Username,Password)"+"values(?,?);";
			ps=con.prepareStatement(sql);
			ps.setString(1, peopleBean.getUserName());
			ps.setString(2, peopleBean.getPassWord());
			i=ps.executeUpdate();
			} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ps.close();
				con.close();
				return i;
				}
}
