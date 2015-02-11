package com.tutorapp.dao;

/*
 * This is a testing commont that will test the code commit process, to be removed
 */
import java.util.List;

import com.tutorapp.model.Location;

public interface LocationDAO {

	public void save(Location loc);
    
    public List<Location> list();
	
}
