package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAciton extends ActionSupport {
    private String userName;
    private String userPassword;
    private String userAge;
    private String userTelephone;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserAge() {
        return userAge;
    }

    public void setUserAge(String userAge) {
        this.userAge = userAge;
    }

    public String getUserTelephone() {
        return userTelephone;
    }

    public void setUserTelephone(String userTelephone) {
        this.userTelephone = userTelephone;
    }

    public RegisterAciton() {
    }
    public RegisterAciton(String userName, String userPassword, String userAge, String userTelephone) {
        this.userName = userName;
        this.userPassword = userPassword;
        this.userAge = userAge;
        this.userTelephone = userTelephone;
    }
    
    public void validate() {
		if(userName==null||userName.length()<3||userName.length()>16) {
			addFieldError("userName","用户姓名的长度不符合要求,3~16位！");
		}
		if(userPassword==null||userPassword.length()<6||userPassword.length()>16) {
			addFieldError("userPassword","密码长度不符合要求,6~16位！");
		}
		if(Integer.parseInt(userAge)>130||Integer.parseInt(userAge)<1) {
			addFieldError("userAge","年龄不符合要求,1~130岁！");
		}
		if(userTelephone.length()!=8) {
			addFieldError("userTelephone","电话号码不符合要求,8位！");
		}
	}


    public String execute(){
        return "success";
    }
}
