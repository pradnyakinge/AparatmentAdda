package com.apartmentAdda.manage.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "flatdetails")
public class FlatDetails {
	
	@Id
	@Column(name = "flatNo")
	private String flatNo;
	@Column(name = "flatStatus")
	private String flatStatus;
	@Column(name = "flatArea")
	private String flatArea;
	
	
	//getter-setter
	public String getFlatNo() {
		return flatNo;
	}
	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}
	public String getFlatStatus() {
		return flatStatus;
	}
	public void setFlatStatus(String flatStatus) {
		this.flatStatus = flatStatus;
	}
	public String getFlatArea() {
		return flatArea;
	}
	public void setFlatArea(String flatArea) {
		this.flatArea = flatArea;
	}
	
	@Override
	public String toString() {
		return "flatNo" +this.flatNo + " flatStatus : "+this.flatStatus + " flatArea : "+this.flatArea;
	}

}
