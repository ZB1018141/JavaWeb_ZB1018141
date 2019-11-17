package cn.cslg.action;

import cn.cslg.bean.LoginBean;

public class RegisterAction {
	private String userName;
    private String passWord;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
    public String execute() throws Exception{
    	
    	
//		String a=null;
		LoginBean registest=new LoginBean();
			if(registest.regist(userName, passWord)){
				
				 return "success";
			}
			else {
				return "error";
			}
    }

}
