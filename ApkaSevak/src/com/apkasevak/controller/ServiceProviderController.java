package com.apkasevak.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;






import com.apkasevak.dao.ProviderDAO;
import com.apkasevak.dto.SPLocationsRequest;
import com.apkasevak.dto.SPMapInfo;
import com.apkasevak.dto.SPFullDetails;
import com.apkasevak.dto.SPRating;
import com.apkasevak.dto.ServiceProviderDetails;
import com.apkasevak.dto.UserCurrentLocationInfo;


@Controller
@SessionAttributes({ "latitude", "longitude", "image" })
public class ServiceProviderController {

	int i=500;
	@RequestMapping(value = "/home")
	public ModelAndView getHome(String id, HttpSession session, Model model) {

		ModelAndView mav = new ModelAndView("homepage");

		UserCurrentLocationInfo serviceProviders = new UserCurrentLocationInfo();
		mav.addObject("userCurrentLocation", serviceProviders);
		return mav;
	}
	
	@RequestMapping(value = "/service_provider", method = RequestMethod.POST)
	public ModelAndView getServiceProviders(String id, HttpSession session, Model model,
			@ModelAttribute("userCurrentLocation") UserCurrentLocationInfo serviceProviders) {

		ModelAndView mav = new ModelAndView("service_provider");
		// List<Map<String, String>> spList = new
		// ArrayList<Map<String,String>>();

//		mav.addObject("ProviderList", jsonObject.toString().replace("\"", "--"));
		mav.addObject("type", serviceProviders.getType());
		mav.addObject("image", serviceProviders.getImageURL());
		mav.addObject("latitude", serviceProviders.getLatitude());
		mav.addObject("longitude", serviceProviders.getLongitude());
		mav.addObject("name", serviceProviders.getService_name());

		return mav;
	}
	
	@RequestMapping(value = "/service_provider_back", method = RequestMethod.GET)
	public ModelAndView backServiceProviders() {

		ModelAndView mav = new ModelAndView("service_provider");
		// List<Map<String, String>> spList = new
		// ArrayList<Map<String,String>>();

//		mav.addObject("ProviderList", jsonObject.toString().replace("\"", "--"));
		/*mav.addObject("type", serviceProviders.getType());
		mav.addObject("image", serviceProviders.getImageURL());
		mav.addObject("latitude", serviceProviders.getLatitude());
		mav.addObject("longitude", serviceProviders.getLongitude());
		mav.addObject("name", serviceProviders.getService_name());*/

		return mav;
	}

	@RequestMapping(value = "/getServiceProvidersLocations", method = RequestMethod.POST)
	@ResponseBody public List<SPMapInfo> getServiceProvidersLocations(
			@RequestBody SPLocationsRequest locationReq) {
		System.out.println("ServiceLocationRequest:"+locationReq);
		//System.out.println("NE-Lat:"+locationReq.getNorthEastLatitude()+" SW Lat:"+locationReq.getSouthWestLongitude());
		ProviderDAO provDAO = new ProviderDAO();
		List<SPMapInfo> locations= provDAO.getProvidersList(locationReq);
		/*JSONArray jsonObj = provDAO.getProvidersList(locationReq);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("locations", jsonObj);*/
		System.out.println("DB Result:"+locations);
		return locations;
	}
	
@RequestMapping(value = "/contactDetails", method = RequestMethod.POST)
			public ModelAndView getSPContactDetails(String id, HttpSession session, Model model,
					@ModelAttribute("userCurrentLocation") UserCurrentLocationInfo serviceProviders) {

				Integer spId;

				spId = Integer.valueOf(serviceProviders.getSp_id());
				ProviderDAO provDAO = new ProviderDAO();
				SPFullDetails detail= provDAO.getServiceProvider(spId);
				
				ModelAndView mav = new ModelAndView("serviceproviderdetails");

				mav.addObject("type", serviceProviders.getType());
				mav.addObject("image", serviceProviders.getImageURL());
				mav.addObject("name", serviceProviders.getService_name());
				mav.addObject("serviceProviderDetail",detail);

				return mav;
			} 



	
	
	@RequestMapping(value = "/addserviceprovider", method = RequestMethod.POST)
	   public ModelAndView addServiceProvider(HttpSession session, Model model,
				@ModelAttribute("userCurrentLocation") UserCurrentLocationInfo serviceProviders) {
			
			SPFullDetails detail= new SPFullDetails();
			ModelAndView mav = new ModelAndView("addserviceprovider");

			mav.addObject("type", serviceProviders.getType());
			mav.addObject("image", serviceProviders.getImageURL());
			mav.addObject("name", serviceProviders.getService_name());
			mav.addObject("spFullDetails",detail);

			return mav;
			}
	
	@RequestMapping(value = "/serviceproviderrating", method = RequestMethod.POST)
	public @ResponseBody String serviceproviderrating(@RequestBody SPRating rating) {
		  System.out.println("getComment::"+rating.getComment());
		  System.out.println("MobileNo::"+rating.getMobileNo());
		  System.out.println("Rating  :"+rating.getRating());
		  System.out.println("ID::"+rating.getServiceProviderId());
		  ProviderDAO provDAO = new ProviderDAO();
			String result= provDAO.addRatingAndComments(rating);
			return result;
		  
   } 
	
	@RequestMapping(value = "/addnewserviceprovider", method = RequestMethod.POST)
	public @ResponseBody String addnewserviceprovider(@RequestBody SPFullDetails details) {

		Random r = new Random();
		int i = r.nextInt(65535);
		System.out.println(details.getServiceProviderId());
		System.out.println("getComment::"+details.getComment());
		System.out.println("MobileNo::"+details.getMobileNo());
		System.out.println("Rating  :"+details.getRating());
		System.out.println("ID::"+details.getServiceProviderId());
		//ModelAndView mav=new ModelAndView("addserviceprovider");
		ProviderDAO provDAO = new ProviderDAO();
		details.setTypeId(details.getServiceProviderId());
		details.setServiceProviderId(i);
		String result = provDAO.create(details);
		return result;
	}
	
	@RequestMapping(value = "/selectLocation", method = RequestMethod.GET)
	 public ModelAndView  selectLocFromMap()
	{
		ModelAndView mav = new ModelAndView("selectLocation");
		return mav;
	}
	
	@RequestMapping(value = "/selectedLocation", method = RequestMethod.POST)
	 public ModelAndView  getSelectedLocation(String latitude, String longitude)
	{
		ModelAndView mav = new ModelAndView("selectLocation");
		mav.addObject("selLatitude", latitude);
		mav.addObject("selLongitude", longitude);
		return mav;
	}
	/*
 * 	@RequestMapping(value="/service_provider1", method = RequestMethod.GET)
 
	 public ModelAndView  getSearchResults(@RequestParam("address") String address)
	{
		
		ModelAndView mav = new ModelAndView("service_provider");
		ProviderDAO provDAO = new ProviderDAO();
		JSONArray jsonObj =provDAO.getProvidersList(null, address);
		System.out.println("address::"+address+"---jsonObj--"+jsonObj);
		JSONObject jsonObject= new JSONObject();
		jsonObject.put("locations", jsonObj);
		mav.addObject("ProviderList", jsonObject.toString().replace("\"", "--"));
		mav.addObject("addressinput", address);
		return mav;
	}
*/
}
