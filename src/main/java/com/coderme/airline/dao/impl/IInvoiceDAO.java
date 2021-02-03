
package com.coderme.airline.dao.impl;

import com.coderme.airline.common.ICommonDAO;
import com.coderme.airline.model.Invoice;
import java.util.List;





public interface IInvoiceDAO extends ICommonDAO<Invoice> {
    
    public Invoice updateInvoice(Invoice t);
    public Invoice getBySeatNo(String flight_name, String seatNo);
    public List<Invoice> getByContact(String contact);
    
    public List<Invoice> getByBooked(String status);
    
    public Invoice getDetails(int id);
   
}
