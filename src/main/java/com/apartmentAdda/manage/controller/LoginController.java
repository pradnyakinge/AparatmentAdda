package com.apartmentAdda.manage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apartmentAdda.manage.model.LoginUser;
import com.apartmentAdda.manage.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getloginUrl()
	{
		return "login";
	}
	
	
	//http://localhost:8181/ApartmentAdda/housesTab
	@RequestMapping(value="/{tabId}", method=RequestMethod.GET)
	public String openTabs(@PathVariable(value="tabId") String id)
	{
		System.out.println("in house tab with id is :"+ id);
		
		if("houseTab".equals(id))
		{
			return "housesTab";
		}
		else if ("memberTab".equals(id)) {
			return "memberTab";
		}
		else if ("parkingTab".equals(id)) {
			return "parkingTab";
		}
		else if ("amenityTab".equals(id)) {
			return "amenityTab";
		}
		else if ("staffTab".equals(id)) {
			return "staffTab";
		}
		else if ("vendorTab".equals(id)) {
			return "vendorTab";
		}
		else if ("goodsTab".equals(id)) {
			return "goodsTab";
		}
		else
		{
			return "";
		}
	}
	
	@RequestMapping(value="/loginProcess", method=RequestMethod.POST)
	public ModelAndView loginProcess(@ModelAttribute("user") LoginUser user)
	{
		ModelAndView mv = null;
		
		try
		{
			
			System.out.println("the user credentials are : "+ user.getUsername() + " and " + user.getPassword());
			String isValidate = loginService.validateCredentials();
			
			if("validate".equals(isValidate))
			{
				System.out.println("User is validated successfully");
				mv = new ModelAndView("addaDashboard");
				String username = user.getUsername();
				mv.addObject("username", username);
			}
			else
			{
				System.out.println("Incorrect credentials are entered");
				mv = new ModelAndView("login");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return mv;
	}
}
