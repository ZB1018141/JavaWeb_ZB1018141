package cn.cslg.action;

import java.sql.SQLException;


import cn.cslg.bean.LoginBean;



public class LoginAction {
	 private String userName;
	    private String passWord;

	    /**
	     * @return the userName
	     */
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
	    
	    public String execute() throws Exception{
//			String a=null;
			LoginBean logintest=new LoginBean();
			LoginBean userbean=new LoginBean(userName,passWord);
				if(logintest.login(userbean)){
					
					 return "success";
				}
				else {
					return "error";
				}
	    }
	    
}
