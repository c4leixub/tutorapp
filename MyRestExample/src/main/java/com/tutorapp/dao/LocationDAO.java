package com.tutorapp.dao;

import java.util.List;

import com.tutorapp.model.Location;

public interface LocationDAO {

	public void save(Location loc);
    
    public List<Location> list();
	
}
