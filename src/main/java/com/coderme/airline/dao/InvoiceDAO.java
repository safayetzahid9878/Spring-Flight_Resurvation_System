package com.coderme.airline.dao;

import com.coderme.airline.dao.impl.IInvoiceDAO;
import com.coderme.airline.model.Invoice;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "invoiceDAO")
@Transactional
public class InvoiceDAO implements IInvoiceDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Invoice save(Invoice t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Invoice update(Invoice t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Invoice delete(int id) {
        Invoice passenger = (Invoice) sessionFactory.getCurrentSession().load(Invoice.class, id);
        sessionFactory.getCurrentSession().delete(passenger);
        return passenger;

    }

    @Override
    public List<Invoice> getAll() {
        List<Invoice> t = sessionFactory.getCurrentSession().createCriteria(Invoice.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Invoice getById(int id) {
        Invoice t = (Invoice) sessionFactory.getCurrentSession().get(Invoice.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Invoice updateInvoice(Invoice t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Invoice getBySeatNo(String flight_name, String seatNo) {
        String hqlQuery = "from invoice where flight_name = :flight_name and seatNo = :seatNo";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("flight_name", flight_name);
        query.setParameter("seatNo", seatNo);

        Invoice invoice = (Invoice) query.uniqueResult();
        sessionFactory.getCurrentSession().flush();
        if (invoice != null) {

            return invoice;

        } else {
            return null;
        }
    }

    @Override
    public List<Invoice> getByContact(String contact) {
        String hqlQuery = "from invoice where contact = :contact";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("contact", contact);

        System.out.println(contact);
        List<Invoice> invoiceList = query.list();
        sessionFactory.getCurrentSession().flush();

        return invoiceList;

    }

    @Override
    public Invoice getDetails(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Invoice> getByBooked(String status) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

}
