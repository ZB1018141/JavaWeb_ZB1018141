package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class NumAction extends ActionSupport {
	private String name;
    private String password;
    private static int count;
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
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
	
	public String execute() {
		
			ActionContext ac = ActionContext.getContext();//ªÒ»°ActionContext
			ac.getApplication().put("number", ++count);
			return "success";						
	}
}
