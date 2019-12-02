package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;

public class MethodAction {
	private String name;
    private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String method() {
		if(getName().equals("ZB1018141")&&getPassword().equals("123456")) {
			ActionContext ac = ActionContext.getContext();//ªÒ»°ActionContext
			ac.getApplication().put("name", getName());
			return "success";
		}
		else {
			return "error";
		}
		
	}
}
