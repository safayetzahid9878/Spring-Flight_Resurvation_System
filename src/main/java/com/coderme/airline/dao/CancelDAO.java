package com.coderme.airline.dao;

import com.coderme.airline.dao.impl.ICancelDAO;
import com.coderme.airline.model.Cancel;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "cancelDAO")
@Transactional
public class CancelDAO implements ICancelDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Cancel save(Cancel t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Cancel update(Cancel t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Cancel delete(int id) {
        Cancel passenger = (Cancel) sessionFactory.getCurrentSession().load(Cancel.class, id);
        sessionFactory.getCurrentSession().delete(passenger);
        return passenger;

    }

    @Override
    public List<Cancel> getAll() {
        List<Cancel> t = sessionFactory.getCurrentSession().createCriteria(Cancel.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Cancel getById(int id) {
        Cancel t = (Cancel) sessionFactory.getCurrentSession().get(Cancel.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Cancel updateCancel(Cancel t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Cancel getBySeatNo(String flight_name, String seatNo) {
        String hqlQuery = "from cancel where flight_name = :flight_name and seatNo = :seatNo";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("flight_name", flight_name);
        query.setParameter("seatNo", seatNo);

        Cancel cancel = (Cancel) query.uniqueResult();
        sessionFactory.getCurrentSession().flush();
        if (cancel != null) {

            return cancel;

        } else {
            return null;
        }
    }

    @Override
    public List<Cancel> getByContact(String contact) {
        String hqlQuery = "from cancel where contact = :contact";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("contact", contact);

        System.out.println(contact);
        List<Cancel> cancelList = query.list();
        sessionFactory.getCurrentSession().flush();

        return cancelList;

    }

}
