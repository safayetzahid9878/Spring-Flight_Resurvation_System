/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.controller;


import com.coderme.airline.controller.impl.ICityController;
import com.coderme.airline.model.City;
import com.coderme.airline.service.impl.ICityService;
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

/**
 *
 * @author Dhaka
 */
@Controller
@RequestMapping(value = "/city")
public class CityController implements ICityController {

    @Autowired
    ICityService cityService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/city/edit");

    }

    @RequestMapping(value = "/createCity")
    public ModelAndView create() {
        return new ModelAndView("/city/createCity");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        City t = cityService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/city/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        City t = cityService.getById(id);
        map.addAttribute("t", t);
        return "city/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        City t = cityService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/city/view", "map", map);
    }

    @Override
    public List<City> getAll() {
        return cityService.getAll();
    }


    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       City city = cityService.delete(id);
       return new ModelAndView("redirect:/city/view");
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<City> tList = cityService.getAll();
        map.put("tList", tList);
        return new ModelAndView("city/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   


}
