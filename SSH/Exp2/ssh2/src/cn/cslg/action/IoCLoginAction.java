package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;

public class IoCLoginAction extends ActionSupport implements ServletRequestAware {
	 private String name;
	 private String password;
	 private HttpServletRequest request;
	 
	    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

		public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

	    //必须实现该方法，该方法是接口中的方法
	    public void setServletRequest(HttpServletRequest hsr) {
	       request=hsr;
	    }
	    
	    public String execute() throws Exception{
	        if(getName().equals("ZB10181")&&getPassword().equals("123456")){
	        	ActionContext ac = ActionContext.getContext();//获取ActionContext
				ac.getApplication().put("name", getName());	    
	             return "success";
	}
	else{
	            return "error";
	}
	    }

}
