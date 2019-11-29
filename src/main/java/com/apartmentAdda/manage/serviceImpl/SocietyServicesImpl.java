package com.apartmentAdda.manage.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.apartmentAdda.manage.dao.SocietyServicesDao;
import com.apartmentAdda.manage.model.FlatDetails;
import com.apartmentAdda.manage.service.SocietyServices;

@Service("SocietyServices")
@Transactional
public class SocietyServicesImpl implements SocietyServices{
	
	@Autowired
	SocietyServicesDao societyServicesDao;

	public List<FlatDetails> getHousesData() {
		System.out.println("inide society services impl class");
		return societyServicesDao.getHousesData();
		
	}

}
