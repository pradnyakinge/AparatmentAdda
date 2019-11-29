package com.apartmentAdda.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.apartmentAdda.manage.model.FlatDetails;
import com.apartmentAdda.manage.service.SocietyServices;

@Controller
public class SocietyTabsController {
	
	@Autowired
	SocietyServices societyServices;
	
	public String selectTab(String parentId , String id)
	{
		if("societyService".equals(parentId))
		{
			return societyServiceTabSelection(id);
		}
		else if("management".equals(parentId))
		{
			return managementTabSelection(id);
		}
		else
		return null;
	}
	
	
	public String societyServiceTabSelection(String tabId)
	{
		if("houseTab".equals(tabId))
		{
			//getting all flat details from db here
			List<FlatDetails> houseData = societyServices.getHousesData();
			
			//send the flatDetails data to societyHousesTab jsp
			return "societyHousesTab";
		}
		else if ("memberTab".equals(tabId)) {
			return "societyMemberTab";
		}
		else if ("parkingTab".equals(tabId)) {
			return "societyParkingTab";
		}
		else if ("amenityTab".equals(tabId)) {
			return "societyAmenityTab";
		}
		else if ("staffTab".equals(tabId)) {
			return "societyStaffTab";
		}
		else if ("vendorTab".equals(tabId)) {
			return "societyVendorTab";
		}
		else if ("goodsTab".equals(tabId)) {
			return "societyGoodsTab";
		}
		else
		{
			return "";
		}
	}
	
	public String managementTabSelection(String tabId)
	{

		if("memberTab".equals(tabId)){
			return "managamentMemberTab";
		}
		else if ("vendorTab".equals(tabId)) {
			return "managamentVendorTab";
		}
		else if ("staffTab".equals(tabId)) {
			return "managamentStaffTab";
		}
		else if ("goodsTab".equals(tabId)) {
			return "managamentGoodsTab";
		}
		else
		{
			return "";
		}
	
	}
	
	public String financeTabsSelection(String tabId)
	{
		return "";
	}
	
	public String eventsTabsSelection(String tabId)
	{
		return "";
	}
	
	public String reportsTabsSelection(String tabId)
	{
		return "";
	}
	
	public String aboutUsTabsSelection(String tabId)
	{
		return "";
	}
	
	

}
