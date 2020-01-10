package com.apartmentAdda.manage.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apartmentAdda.manage.dao.LoginDao;
import com.apartmentAdda.manage.model.LoginUser;
import com.apartmentAdda.manage.service.LoginService;

@Service
public class LoginServiceImpl  implements LoginService{
	
	@Autowired
	LoginDao logindao;
	

	public String validateCredentials()
	{
		LoginUser user = new LoginUser();
		logindao.validateCredentials();
		return "validate";
	}
}
