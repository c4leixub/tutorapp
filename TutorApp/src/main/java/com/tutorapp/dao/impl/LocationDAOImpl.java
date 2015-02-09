package com.tutorapp.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.tutorapp.dao.LocationDAO;
import com.tutorapp.model.Location;

public class LocationDAOImpl implements LocationDAO{

	private SessionFactory sessionFactory;
	 
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	@Override
	public void save(Location loc) {
		Session session = this.sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.persist(loc);
        tx.commit();
        session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Location> list() {
		Session session = this.sessionFactory.openSession();
        List<Location> personList = session.createQuery("from Location").list();
        session.close();
        return personList;
	}

}
