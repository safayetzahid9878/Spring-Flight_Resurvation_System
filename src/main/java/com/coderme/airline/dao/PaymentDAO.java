package com.coderme.airline.dao;

import com.coderme.airline.dao.impl.IPaymentDAO;
import com.coderme.airline.model.Payment;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "paymentDAO")
@Transactional
public class PaymentDAO implements IPaymentDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Payment save(Payment t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Payment update(Payment t) {
       sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }
 @Override
    public Payment delete(int id) {
         Payment passenger = (Payment) sessionFactory.getCurrentSession().load(Payment.class, id);
      sessionFactory.getCurrentSession().delete(passenger);
      return passenger;
       
    }

    @Override
    public List<Payment> getAll() {
        List<Payment> t = sessionFactory.getCurrentSession().createCriteria(Payment.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Payment getById(int id) {
          Payment t=(Payment) sessionFactory.getCurrentSession().get(Payment.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    }
} 
    