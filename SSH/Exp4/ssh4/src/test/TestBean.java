package test;

import PO.*;
import DAO.*;

public class TestBean {
    
	OneOneDAO dao = new OneOneDAO();
	//添加会员信息
	public void addCompany(){
		Company company = new Company();
		Login login = new Login();
		login.setLoginname("ZB1018141");
		login.setLoginpwd("123456");
		company.setCompanyname("北京大学出版社");
		company.setLinkman("王兜兜");
		company.setTelephone("010-12345678");
		company.setEmail("bailj@163.com");
		//PO对象之间相互设置关联关系
		login.setCompany(company);	
		company.setLogin(login);		
		dao.addCompany(company);
	}
	//获取会员信息
	public Company loadCompany(Integer id){
		return dao.loadCompany(id);
	}
	
	//添加客户信息
	public void addClient(){
		Client client = new Client();
		Address address = new Address();
		address.setProvince("南通市");
		address.setCity("如皋市");
		address.setStreet("长江镇");
		address.setZipcode("100084");
		client.setClientname("王小兜");
		client.setPhone("010-56565566");
		client.setEmail("wangxiaodou@163.com");
		//PO对象之间相互设置关联关系
		address.setClient(client);
		client.setAddress(address);
		dao.addClient(client);
	}
	//获取客户信息
	public Client loadClient(Integer id){
		return dao.loadClient(id);
	}
}
