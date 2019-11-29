package com.apartmentAdda.manage.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.apartmentAdda.manage.dao.AbstractDao;
import com.apartmentAdda.manage.dao.SocietyServicesDao;
import com.apartmentAdda.manage.model.FlatDetails;

@Repository("SocietyServicesDao")
public class SocietyServicesDaoImpl extends AbstractDao implements SocietyServicesDao{

	@SuppressWarnings("unchecked")
	public List<FlatDetails> getHousesData() {
		System.out.println("inside dao layer");
		Criteria criteria = getSession().createCriteria(FlatDetails.class);
		System.out.println((List<FlatDetails>)criteria.list());
		return (List<FlatDetails>)criteria.list();
		
	}
	
	
	
}
