
package com.coderme.airline.dao.impl;

import com.coderme.airline.common.ICommonDAO;
import com.coderme.airline.model.Flight;
import java.util.List;



public interface IFlightDAO extends ICommonDAO<Flight> {
   //public T getById(String source, String departure);
     public List<Flight> getBySourceAndDeparture(String source, String departure);
}
