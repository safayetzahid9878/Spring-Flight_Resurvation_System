/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.controller;


import com.coderme.airline.controller.impl.IPassengerController;
import com.coderme.airline.model.Passenger;
import com.coderme.airline.service.impl.IPassengerService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/passenger")
public class PassengerController implements IPassengerController {

    @Autowired
    IPassengerService passengerService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/passenger/edit");

    }

    @RequestMapping(value = "/createPassenger")
    public ModelAndView create() {
        return new ModelAndView("/passenger/createPassenger");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Passenger t = passengerService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/passenger/viewPass", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Passenger t = passengerService.getById(id);
        map.addAttribute("t", t);
        return "passenger/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Passenger t = passengerService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/passenger/view", "map", map);
    }

    @Override
    public List<Passenger> getAll() {
        return passengerService.getAll();
    }


    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Passenger passenger = passengerService.delete(id);
       return new ModelAndView("redirect:/passenger/view");
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Passenger> tList = passengerService.getAll();
        map.put("tList", tList);
        return new ModelAndView("passenger/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
      @RequestMapping(value = "/traveler")
    public ModelAndView createTraveler() {
        return new ModelAndView("/passenger/traveler");

    }
    
      @RequestMapping(value = "/viewPass", method = RequestMethod.GET)
    public ModelAndView viewPassenger(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Passenger> tList = passengerService.getAll();
        map.put("tList", tList);
        return new ModelAndView("passenger/view", "map", map);
    }

}
