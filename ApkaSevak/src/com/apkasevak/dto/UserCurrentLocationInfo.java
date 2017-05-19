package com.apkasevak.dto;

public class UserCurrentLocationInfo {

	private String longitude;
	private String latitude;
	private String imageURL;
	private String type;
	private String service_name;
	private String address;
	private String sp_id;
	
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSp_id() {
		return sp_id;
	}
	public void setSp_id(String sp_id) {
		this.sp_id = sp_id;
	}
	
}
