package com.apartmentAdda.manage.daoImpl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.apartmentAdda.manage.dao.LoginDao;

@Repository
@Transactional
public class LoginDaoImpl  implements LoginDao{

	public String validateCredentials() {
		System.out.println("in dao class");
		return null;
	}

}
