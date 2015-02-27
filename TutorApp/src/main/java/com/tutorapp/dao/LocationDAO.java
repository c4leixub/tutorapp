package com.tutorapp.dao;

/*
 * This is a testing commont that will test the code commit process, to be removed
 */
import java.util.List;

import org.springframework.context.annotation.Bean;

import com.tutorapp.model.Location;


public interface LocationDAO {

	public void save(Location loc);
    @Bean (name = "locationDAO")
    public List<Location> list();
	
}
