package com.apartmentAdda.manage.configuration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.apartmentAdda.manage")
public class AppConfig {
	
	/*
	 This class is empty because, @ComponentScan which provide in HibernateConfiguration. We can remove that logic from HibernateConfiguration file and
	  put it here.
	 */

}
