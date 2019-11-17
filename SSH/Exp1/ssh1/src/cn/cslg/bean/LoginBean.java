package cn.cslg.bean;

import java.sql.SQLException;


import cn.cslg.dao.UserDao;



public class LoginBean {
	private String userName;
    private String passWord;

    /**
     * @return the userName
     */
	public LoginBean(String username, String password) {
		this.userName = username;
		this.passWord = password;
	}
	public LoginBean() {
		super();
	}
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the passWord
     */
    public String getPassWord() {
        return passWord;
    }

    /**
     * @param passWord the passWord to set
     */
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }
    
    public boolean login(LoginBean rb) throws SQLException{	
    	boolean b=false;
		UserDao rd=new UserDao(); 
		if( rd.queryall(rb.getUserName(), rb.getPassWord()) != null){	
			b=true;
			return b;
		}
		else {
			b=false;
			return b;
		}
	}
    public boolean regist(String name1,String password1) throws SQLException{	
    	boolean b=false;
		UserDao rd=new UserDao(); 
		LoginBean re=new LoginBean();
		re.setUserName(name1);
		re.setPassWord(password1);
		rd.Insert(re);
		if( re.getUserName().equals("")||re.getPassWord().equalsIgnoreCase("")){	
			b=false;
			return b;
		}
		else {
			b=true;
			return b;
		}
	}  

}
