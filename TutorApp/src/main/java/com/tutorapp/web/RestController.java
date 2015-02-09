package com.tutorapp.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tutorapp.dao.LocationDAO;
import com.tutorapp.model.Location;

@Controller
public class RestController {

	private static final Logger logger = LoggerFactory.getLogger(RestController.class);
	
	private LocationDAO locationDAO;

	public void setLocationDAO(LocationDAO locationDAO) {
		this.locationDAO = locationDAO;
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	@ResponseBody
	public List<Location> test() {
		logger.info("Test test");

//		Location a = new Location("1", "Toronto", "ON", "Canada");
//		List<Location> list = new ArrayList<Location>();
//		list.add(a);
//		return list;
		
		return locationDAO.list(); 
	}
	
}
