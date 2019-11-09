package service;

import java.sql.SQLException;

import bean.UserBean;
import dao.UserDao;


public class loginservice {
//µÇÂ¼½çÃæ	
public boolean login(UserBean rb) throws SQLException{	
		UserDao rd=new UserDao(); 
		if( rd.queryall(rb.getUsername(), rb.getPassword())==null){	
			return false;
		}
		else return true;
	}
}
