package com.coderme.airline.dao;

import com.coderme.airline.dao.impl.IAirportDAO;
import com.coderme.airline.model.Airport;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "airportDAO")
@Transactional
public class AirportDAO implements IAirportDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Airport save(Airport t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Airport update(Airport t) {
       sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }
 @Override
    public Airport delete(int id) {
         Airport passenger = (Airport) sessionFactory.getCurrentSession().load(Airport.class, id);
      sessionFactory.getCurrentSession().delete(passenger);
      return passenger;
       
    }

    @Override
    public List<Airport> getAll() {
        List<Airport> t = sessionFactory.getCurrentSession().createCriteria(Airport.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Airport getById(int id) {
          Airport t=(Airport) sessionFactory.getCurrentSession().get(Airport.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    }
} 
    