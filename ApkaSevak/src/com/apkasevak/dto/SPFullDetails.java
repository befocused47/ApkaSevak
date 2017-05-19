package com.apkasevak.dto;

import java.io.Serializable;

public class SPFullDetails extends SPMapInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Integer serviceProviderId;
	
	private String name;

	private String mobileNo;
	
	private String address1;
	
	private String added_by_name;
	
	private String added_by_mobile;
	
	private String aadhaarId;

	private String status;
	
	private String comment;
	
	private Float rating;

	public Integer getServiceProviderId() {
		return serviceProviderId;
	}

	public void setServiceProviderId(Integer serviceProviderId) {
		this.serviceProviderId = serviceProviderId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	
	public String getAdded_by_name() {
		return added_by_name;
	}

	public void setAdded_by_name(String added_by_name) {
		this.added_by_name = added_by_name;
	}

	public String getAdded_by_mobile() {
		return added_by_mobile;
	}

	public void setAdded_by_mobile(String added_by_mobile) {
		this.added_by_mobile = added_by_mobile;
	}

	public String getAadhaarId() {
		return aadhaarId;
	}

	public void setAadhaarId(String aadhaarId) {
		this.aadhaarId = aadhaarId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Float getRating() {
		return rating;
	}

	public void setRating(Float rating) {
		this.rating = rating;
	}

	
	
}
