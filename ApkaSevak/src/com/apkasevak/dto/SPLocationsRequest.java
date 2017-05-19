package com.apkasevak.dto;

import java.io.Serializable;

public class SPLocationsRequest implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String serviceTypeId;
	
	private String northEastLongitude;
	
	private String northEastLatitude;
	
	private String southWestLongitude;
	
	private String southWestLatitude;

	public String getServiceTypeId() {
		return serviceTypeId;
	}

	public void setServiceTypeId(String serviceTypeId) {
		this.serviceTypeId = serviceTypeId;
	}

	public String getNorthEastLongitude() {
		return northEastLongitude;
	}

	public void setNorthEastLongitude(String northEastLongitude) {
		this.northEastLongitude = northEastLongitude;
	}

	public String getNorthEastLatitude() {
		return northEastLatitude;
	}

	public void setNorthEastLatitude(String northEastLatitude) {
		this.northEastLatitude = northEastLatitude;
	}

	public String getSouthWestLongitude() {
		return southWestLongitude;
	}

	public void setSouthWestLongitude(String southWestLongitude) {
		this.southWestLongitude = southWestLongitude;
	}

	public String getSouthWestLatitude() {
		return southWestLatitude;
	}

	public void setSouthWestLatitude(String southWestLatitude) {
		this.southWestLatitude = southWestLatitude;
	}

	@Override
	public String toString() {
		StringBuilder builder=new StringBuilder("ServiceTypeId:");
		builder.append(getServiceTypeId());
		builder.append("\tSW-Latitude:");
		builder.append(getSouthWestLatitude());
		builder.append("\tSW-Longitude:");
		builder.append(getSouthWestLongitude());
		builder.append("\tNE-Latitude:");
		builder.append(getNorthEastLatitude());
		builder.append("\tNE-Longitude:");
		builder.append(getNorthEastLongitude());
		return builder.toString();
	}
	

}
