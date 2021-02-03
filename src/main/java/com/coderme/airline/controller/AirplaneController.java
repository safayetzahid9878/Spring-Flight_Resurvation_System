
package com.coderme.airline.controller;


import com.coderme.airline.controller.impl.IAirplaneController;
import com.coderme.airline.model.Airplane;
import com.coderme.airline.service.impl.IAirplaneService;
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
@RequestMapping(value = "/airplane")
public class AirplaneController implements IAirplaneController {

    @Autowired
    IAirplaneService airplaneService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/airplane/edit");

    }

    @RequestMapping(value = "/createAirplane")
    public ModelAndView create() {
        return new ModelAndView("/airplane/createAirplane");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Airplane t = airplaneService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/airplane/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Airplane t = airplaneService.getById(id);
        map.addAttribute("t", t);
        return "airplane/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Airplane t = airplaneService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/airplane/view", "map", map);
    }

    @Override
    public List<Airplane> getAll() {
        return airplaneService.getAll();
    }


    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Airplane airplane = airplaneService.delete(id);
       return new ModelAndView("redirect:/airplane/view");
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Airplane> tList = airplaneService.getAll();
        map.put("tList", tList);
        return new ModelAndView("airplane/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   


}
