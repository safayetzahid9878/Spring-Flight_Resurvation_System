/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.dao;


import com.coderme.airline.dao.impl.IPassengerDAO;
import com.coderme.airline.model.Passenger;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository(value = "passengerDAO")
@Transactional

public class PassengerDAO implements IPassengerDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Passenger save(Passenger t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Passenger update(Passenger t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Passenger> getAll() {
     List<Passenger> t = sessionFactory.getCurrentSession().createCriteria(Passenger.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Passenger getById(int id) {
    Passenger t=(Passenger) sessionFactory.getCurrentSession().get(Passenger.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Passenger delete(int id) {
      Passenger passenger = (Passenger) sessionFactory.getCurrentSession().load(Passenger.class, id);
      sessionFactory.getCurrentSession().delete(passenger);
      return passenger;
    }

    
}
