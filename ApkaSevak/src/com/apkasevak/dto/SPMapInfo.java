package com.apkasevak.dto;

import java.io.Serializable;

public class SPMapInfo implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer serviceProviderId;
	
	private Integer type;

	private String latitude;

	private String longitude;

	public SPMapInfo() {

	}

	public SPMapInfo(Integer serviceProviderId, Integer typeId, String latitude, String longitude) {
		this.serviceProviderId = serviceProviderId;
		this.type = typeId;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public Integer getServiceProviderId() {
		return serviceProviderId;
	}

	public void setServiceProviderId(Integer serviceProviderId) {
		this.serviceProviderId = serviceProviderId;
	}

	public Integer getTypeId() {
		return type;
	}

	public void setTypeId(Integer typeId) {
		this.type = typeId;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

}
