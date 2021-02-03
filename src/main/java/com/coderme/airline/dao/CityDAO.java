
package com.coderme.airline.dao;
import com.coderme.airline.dao.impl.ICityDAO;
import com.coderme.airline.model.City;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository("cityDAO")
@Transactional
public class CityDAO implements ICityDAO{
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public City save(City t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public City update(City t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public City delete(int id) {
         City passenger = (City) sessionFactory.getCurrentSession().load(City.class, id);
      sessionFactory.getCurrentSession().delete(passenger);
      return passenger;
       
    }

    @Override
    public List<City> getAll() {
        List<City> t = sessionFactory.getCurrentSession().createCriteria(City.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }
    
    @Override
    public City getById(int id) {
          City t=(City) sessionFactory.getCurrentSession().get(City.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;}
    
    
}
