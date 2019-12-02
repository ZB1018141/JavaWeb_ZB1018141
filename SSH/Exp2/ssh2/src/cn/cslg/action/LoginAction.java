package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
	private String pwd;
	

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() { 
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String execute(){
		
		if(getUsername().equals("ZB1018141")&&getPwd().equals("123")) {
			ActionContext ac = ActionContext.getContext();//ªÒ»°ActionContext
			ac.getApplication().put("name", getUsername());
			return "success";
		}
		else {
			return "error";
		}
	}

}
