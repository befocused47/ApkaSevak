package com.apkasevak.dto;

import java.io.Serializable;
import java.math.BigInteger;

public class SPRating implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer serviceProviderId;
	
	private Long mobileNo;
	
	private String comment;
	
	private Integer rating;

	public Integer getServiceProviderId() {
		return serviceProviderId;
	}

	public void setServiceProviderId(Integer serviceProviderId) {
		this.serviceProviderId = serviceProviderId;
	}

	public Long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}
	
}
