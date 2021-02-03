/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.controller;


import com.coderme.airline.controller.impl.IAirportController;
import com.coderme.airline.model.Airport;
import com.coderme.airline.service.impl.IAirportService;
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
@RequestMapping(value = "/airport")
public class AirportController implements IAirportController {

    @Autowired
    IAirportService airportService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/airport/edit");

    }

    @RequestMapping(value = "/createAirport")
    public ModelAndView create() {
        return new ModelAndView("/airport/createAirport");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Airport t = airportService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/airport/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Airport t = airportService.getById(id);
        map.addAttribute("t", t);
        return "airport/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Airport t = airportService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/airport/view", "map", map);
    }

    @Override
    public List<Airport> getAll() {
        return airportService.getAll();
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Airport airport = airportService.delete(id);
       return new ModelAndView("redirect:/airport/view");
    }


    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Airport> tList = airportService.getAll();
        map.put("tList", tList);
        return new ModelAndView("airport/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
