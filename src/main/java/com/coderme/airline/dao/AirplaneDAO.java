
package com.coderme.airline.dao;
import com.coderme.airline.dao.impl.IAirplaneDAO;
import com.coderme.airline.model.Airplane;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository(value = "airplaneDAO")
@Transactional
public class AirplaneDAO implements IAirplaneDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Airplane save(Airplane t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Airplane update(Airplane t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Airplane delete(int id) {
        Airplane passenger = (Airplane) sessionFactory.getCurrentSession().load(Airplane.class, id);
      sessionFactory.getCurrentSession().delete(passenger);
      return passenger;}

    @Override
    public List<Airplane> getAll() {
        List<Airplane> t = sessionFactory.getCurrentSession().createCriteria(Airplane.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Airplane getById(int id) {
        Airplane t = (Airplane) sessionFactory.getCurrentSession().get(Airplane.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

}
