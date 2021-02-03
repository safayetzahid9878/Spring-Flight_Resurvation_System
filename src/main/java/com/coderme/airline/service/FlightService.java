package com.coderme.airline.service;

import com.coderme.airline.dao.impl.IFlightDAO;
import com.coderme.airline.model.Flight;
import com.coderme.airline.service.impl.IFlightService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FlightService implements IFlightService {

    @Autowired
    IFlightDAO flightDAO;
    
//    @Autowired
//    SessionFactory sessionFactory;
   
    @Override
    public Flight save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Flight t = new Flight();
        t.setAirline(map.get("airline")[0]);
        t.setSource(map.get("source")[0]);
        t.setDeparture(map.get("departure")[0]);
        t.setF_date(map.get("f_date")[0]);
        t.setArrival_time(map.get("arrival_time")[0]);
        t.setDeparture_time(map.get("departure_time")[0]);
        t.setClass_name(map.get("class_name")[0]);
        t.setFlight_charge(Double.parseDouble(map.get("flight_charge")[0]));
        t.setAirpalne(map.get("airpalne")[0]);
        t.setFlight_name((map.get("flight_name")[0]));
        t.setSeatNo((map.get("seatNo")[0]));
        t.setDiscount((map.get("discount")[0]));
        return flightDAO.save(t);

    }

    @Override
    public Flight update(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Flight t = new Flight();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setAirline(map.get("airline")[0]);
        t.setSource(map.get("source")[0]);
        t.setDeparture(map.get("departure")[0]);
        t.setF_date(map.get("f_date")[0]);
        t.setArrival_time(map.get("arrival_time")[0]);
        t.setDeparture_time(map.get("departure_time")[0]);
        t.setClass_name(map.get("class_name")[0]);
        t.setFlight_charge(Double.parseDouble(map.get("flight_charge")[0]));
        t.setAirpalne(map.get("airpalne")[0]);
         t.setFlight_name((map.get("flight_name")[0]));
        t.setSeatNo((map.get("seatNo")[0]));
        t.setDiscount((map.get("discount")[0]));
        return flightDAO.update(t);

    }

    @Override
    public Flight delete(int id) {
        return flightDAO.delete(id);
    }

    @Override
    public List<Flight> getAll() {
        return flightDAO.getAll();

    }

    @Override
    public Flight getById(int id) {
        return flightDAO.getById(id);

    }
  

    //   Query
    @Override
    public List<Flight> getBySourceAndDeparture(String source, String departure) {
         return flightDAO.getBySourceAndDeparture(source,departure);
    }
  
}
