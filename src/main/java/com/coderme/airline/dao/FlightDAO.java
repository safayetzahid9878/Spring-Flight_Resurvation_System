
package com.coderme.airline.dao;
import com.coderme.airline.dao.impl.IFlightDAO;
import com.coderme.airline.model.Flight;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "flightDAO")
@Transactional
public class FlightDAO implements IFlightDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Flight save(Flight t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Flight update(Flight t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Flight delete(int id) {
        Flight passenger = (Flight) sessionFactory.getCurrentSession().load(Flight.class, id);
      sessionFactory.getCurrentSession().delete(passenger);
      return passenger;}

    @Override
    public List<Flight> getAll() {
        List<Flight> t = sessionFactory.getCurrentSession().createCriteria(Flight.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Flight getById(int id) {
        Flight t = (Flight) sessionFactory.getCurrentSession().get(Flight.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;

    }
    
     
    
                    //           Query
    @Override
     public List<Flight> getBySourceAndDeparture(String source, String departure) {
    String hqlQuery = "from flight where source = :source and departure = :departure";
    Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
    query.setParameter("source", source);
    query.setParameter("departure", departure);
//  System.out.println("----" +source+"----"+departure);
    List<Flight> flightList = query.list();
    sessionFactory.getCurrentSession().flush();
  
    return flightList;
    }
}
