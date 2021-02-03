/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.controller;

import com.coderme.airline.model.Flight;
import com.coderme.airline.service.impl.IFlightService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Faculty Pc
 */

@RestController
@RequestMapping
public class IndexController {
    
     @Autowired
    IFlightService flightService;
     
      @Autowired
    SessionFactory sessionFactory;
    
    @RequestMapping("/index")
    public ModelAndView index(){
        Map<String, Object> map = new HashMap<String, Object>();
        List<Flight> tList = flightService.getAll();
        map.put("tList", tList);
        return new ModelAndView("index", "map", map);
    }
        
    @RequestMapping(value = "/search", method = RequestMethod.POST)
     public ModelAndView getBySourceAndDeparture(HttpServletRequest request){
        System.out.println(request.getParameter("fromVal"));
        System.out.println(request.getParameter("toVal"));  
         Map<String, Object> map = new HashMap<>();
         List<Flight> flights = flightService.getBySourceAndDeparture(request.getParameter("fromVal"), request.getParameter("toVal"));
         map.put("flights", flights);
         return new ModelAndView("flight/serchFlight", "map", map);
    }
     
}
