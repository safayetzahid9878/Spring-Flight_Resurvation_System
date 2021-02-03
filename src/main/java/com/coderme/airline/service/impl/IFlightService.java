

package com.coderme.airline.service.impl;

import com.coderme.airline.common.ICommonService;
import com.coderme.airline.model.Flight;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public interface IFlightService extends ICommonService<Flight>{
    
   public List<Flight> getBySourceAndDeparture(String source, String Departure);
   
}
