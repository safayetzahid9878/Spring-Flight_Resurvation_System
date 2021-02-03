package com.coderme.airline.service.impl;

import com.coderme.airline.common.ICommonService;
import com.coderme.airline.model.Invoice;
import java.util.List;






public interface IInvoiceService extends ICommonService<Invoice>{
    public Invoice getBySeatNo(String flight_name, String seatNo);

    public List<Invoice> getByContact(String contact);
}
