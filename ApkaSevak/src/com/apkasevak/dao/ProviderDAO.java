package com.apkasevak.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONAware;
import org.json.simple.JSONObject;
import org.springframework.jdbc.core.JdbcTemplate;

import com.apkasevak.dto.SPLocationsRequest;
import com.apkasevak.dto.SPMapInfo;
import com.apkasevak.dto.SPFullDetails;
import com.apkasevak.dto.SPRating;

import java.sql.Statement;

public class ProviderDAO {

	private static final String DB_HOST = "jdbc:mysql://localhost:3306/apkasevak_db";

	private static final String DB_USERNAME = "admin";

	private static final String DB_PASSWORD = "admin";

	Connection conn = null;

	public List<SPMapInfo> getProvidersList(SPLocationsRequest spDataReqInfo) {
		List<SPMapInfo> locations = new ArrayList<SPMapInfo>();
		PreparedStatement prepStmt = null;
		ResultSet rsResult = null;
		List<Map<String, String>> spList = new ArrayList<Map<String, String>>();
		Map<String, String> providerMap = new HashMap<String, String>();

		JSONArray jsonArray = new JSONArray();
		if (spDataReqInfo == null)
			return locations;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_HOST, DB_USERNAME,
					DB_PASSWORD);
			System.out.println("connected....!!");
			System.out.println("Service Type ID : "
					+ spDataReqInfo.getServiceTypeId());

			prepStmt = conn
					.prepareStatement("select * from  service_provider_info where  (type = ?) && (lattitude >= ?) && (lattitude <= ?) && (longitude >=?) and (longitude <= ?) ");
			prepStmt.setInt(1,
					Integer.parseInt(spDataReqInfo.getServiceTypeId()));
			prepStmt.setFloat(2,
					Float.parseFloat(spDataReqInfo.getSouthWestLatitude()));
			prepStmt.setFloat(3,
					Float.parseFloat(spDataReqInfo.getNorthEastLatitude()));
			prepStmt.setFloat(4,
					Float.parseFloat(spDataReqInfo.getSouthWestLongitude()));
			prepStmt.setFloat(5,
					Float.parseFloat(spDataReqInfo.getNorthEastLongitude()));

			rsResult = prepStmt.executeQuery();
			while (rsResult.next()) {
				locations.add(new SPMapInfo(rsResult.getInt("sp_id"), rsResult
						.getInt("type"), rsResult.getString("lattitude"),
						rsResult.getString("longitude")));
				/*
				 * JSONObject jsonObject = new JSONObject();
				 * jsonObject.put("longitude", rsResult.getString("longitude"));
				 * jsonObject.put("latitude", rsResult.getString("lattitude"));
				 * jsonArray.add(jsonObject);
				 */
				// providerMap.put(rsResult.getString("type"),
				// rsResult.getString("lattitude") + "- " +
				// rsResult.getString("longitude"));
				// spList.add(providerMap);
			}

			/*
			 * if(spDataReqInfo.getType() != null &&
			 * spDataReqInfo.getType().length() > 0) { prepStmt =
			 * conn.prepareStatement
			 * ("select * from sp_geo_info where  type = ?");
			 * prepStmt.setString(1, id); }
			 */

			/*
			 * else if(address != null && address.length() > 0) { prepStmt =
			 * conn.prepareStatement(
			 * "select * from  service_provider_info where  address2 = ?");
			 * prepStmt.setString(1, address); } rsResult =
			 * prepStmt.executeQuery(); while(rsResult.next()) { JSONObject
			 * jsonObject = new JSONObject(); jsonObject.put("longitude",
			 * rsResult.getString("longitude")); jsonObject.put("latitude",
			 * rsResult.getString("lattitude")); jsonArray.add(jsonObject); //
			 * providerMap.put(rsResult.getString("type"),
			 * rsResult.getString("lattitude") + "- " +
			 * rsResult.getString("longitude")); // spList.add(providerMap); }
			 */

		}

		catch (Exception e) {
			System.out.println("Exception : " + e.getMessage() + "");
		}

		// providerMap.put("2", "11,44");

		return locations;
	}

	public SPFullDetails getServiceProvider(int providerId) {
		
		SPFullDetails detail = new SPFullDetails();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_HOST, DB_USERNAME,
					DB_PASSWORD);
			System.out.println("connected....!!");
			PreparedStatement prepStmt = conn
					.prepareStatement("select * from  service_provider_info where sp_id=?");
			prepStmt.setInt(1, providerId);
			ResultSet rsResult = prepStmt.executeQuery();
			if (rsResult.next()) {
				System.out.println("Record found..!");
				detail.setServiceProviderId(rsResult.getInt("sp_id"));
				detail.setAadhaarId(rsResult.getString("aadhaar_id"));
				detail.setAddress1(rsResult.getString("address1"));
				/*detail.setAddress2(rsResult.getString("address2"));
				detail.setAddress3(rsResult.getString("address3"));
				*/detail.setComment(rsResult.getString("comments"));
				detail.setLatitude(rsResult.getString("lattitude"));
				detail.setLongitude(rsResult.getString("longitude"));
				detail.setMobileNo(rsResult.getString("mobile_no"));
				detail.setName(rsResult.getString("name"));
				detail.setRating(rsResult.getFloat("rating"));
				detail.setServiceProviderId(providerId);
				detail.setStatus(rsResult.getString("status"));
				detail.setTypeId(rsResult.getInt("type"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return detail;
	}

	public String create(SPFullDetails spFullDetails) {

		String insert_sql = "insert into service_provider_info (sp_id, type, name,mobile_no, address1,address2,address3,lattitude,longitude,aadhaar_id,status,"
				+ "added_by_name,added_by_mobile,verified_by_name,verified_by_mobile,comments,rating) values"
				+ "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection(DB_HOST, DB_USERNAME,
					DB_PASSWORD);
			System.out.println("connected....!!");
			PreparedStatement statement = conn.prepareStatement(insert_sql);
			statement.setString(1, spFullDetails.getServiceProviderId()
					.toString());
			statement.setInt(2, spFullDetails.getTypeId());
			statement.setString(3, spFullDetails.getName());
			statement.setLong(4, Long.parseLong(spFullDetails.getMobileNo()));
			statement.setString(5, spFullDetails.getAddress1());
			statement.setString(6, null);
			statement.setString(7, null);
			statement.setString(8, spFullDetails.getLatitude());
			statement.setString(9, spFullDetails.getLongitude());
			statement.setString(10, spFullDetails.getAadhaarId());
			statement.setString(11, spFullDetails.getStatus());
			statement.setString(12, null);
			statement.setString(13, null);
			statement.setString(14, null);
			statement.setString(15, null);
			statement.setString(16, spFullDetails.getComment());
			statement.setFloat(17, 0);
			int  result = statement.executeUpdate();
			if(result == 1)
				return "Details Added Successfully";
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "Details Not Added";
	}

	public String addRatingAndComments(SPRating spRating) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_HOST, DB_USERNAME,
					DB_PASSWORD);
			System.out.println("connected....!!");
			String update_sql = "insert into sp_rating_details(sp_id, star_rating, mobile_no, comment) values(?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(update_sql);
			statement.setInt(1, spRating.getServiceProviderId());
			statement.setInt(2, spRating.getRating());
			statement.setLong(3, spRating.getMobileNo());
			statement.setString(4, spRating.getComment());
			int  result = statement.executeUpdate();
			if(result == 1)
				return "Rating Successfully added";
			else
				return "Rating not added";

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

}
