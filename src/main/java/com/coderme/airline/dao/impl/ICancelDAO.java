
package com.coderme.airline.dao.impl;

import com.coderme.airline.common.ICommonDAO;
import com.coderme.airline.model.Cancel;
import java.util.List;





public interface ICancelDAO extends ICommonDAO<Cancel> {
    
    public Cancel updateCancel(Cancel t);
    public Cancel getBySeatNo(String flight_name, String seatNo);
    public List<Cancel> getByContact(String contact);
   
}
