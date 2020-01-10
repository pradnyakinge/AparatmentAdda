package com.apartmentAdda.manage.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
	SocietyTabsController societyServiceController;
	
	@Autowired
	LoginService loginService;

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getloginUrl()
	{
		return "login";
	}
	
	//http://localhost:8181/ApartmentAdda/housesTab
	@RequestMapping(value="/{parentTabId}/{tabId}", method=RequestMethod.GET)
	public String openTabs(@PathVariable(value="parentTabId") String parentId, @PathVariable(value="tabId") String id)
	{
		System.out.println(parentId + " and " +id);
		return societyServiceController.selectTab(parentId,id);
		
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
	
	//@RequestMapping(value="/{email}/{subject}/{message}", method = RequestMethod.POST)
	@RequestMapping(value="/MailDispatcherServlet", method=RequestMethod.POST)
	public void loginProcess1111(@RequestParam(value = "email") String email, @RequestParam(value = "subject") String subject, @RequestParam(value = "message") String message)
	{
	   System.out.println("data is :" +email + "," +subject + ", "+message);
	   String toEmail = email;
	   String toSubject = subject;
	   String toMessage = message;
	   String fromEmail ="niketansukhwaniF@gmail.com";
	   String username = "niketansukhwaniF";
	   String password = "Taj@2012";
	   try
	   {
		   Properties props = System.getProperties();
		   props.put("mail.smtp.host", "smtp.gmail.com");
		   props.put("mail.smtp.auth", "true");
		   props.put("mail.smtp.port", "465");
		   props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		   props.put("mail.smtp.socketFactory.port", "465");
		   props.put("mail.smtp.socketFactory.fallback", "false");
		   
		   Session mailSession = Session.getDefaultInstance(props, null);
		   mailSession.setDebug(true);
		   
		   Message mailMessage = new MimeMessage(mailSession);
		   mailMessage.setFrom(new InternetAddress(fromEmail));
		   mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
		   mailMessage.setContent(toMessage, "text/html");
		   mailMessage.setSubject(toSubject);
		   
		   Transport transport = mailSession.getTransport("smtp");
		   transport.connect("smtp.gmail.com", username, password);
		   transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
		   
		   
		   
		   
	   }
	   catch(Exception e)
	   {
		   
	   }
		//return "login";
	}
	
	
	
	
	
}
