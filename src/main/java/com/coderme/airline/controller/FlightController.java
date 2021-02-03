
package com.coderme.airline.controller;
import com.coderme.airline.controller.impl.IFlightController;
import com.coderme.airline.model.Flight;
import com.coderme.airline.model.Invoice;
import com.coderme.airline.service.impl.IFlightService;
import com.coderme.airline.service.impl.IInvoiceService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.xml.transform.Source;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/flight")
public class FlightController implements IFlightController {

    @Autowired
    IFlightService flightService;
    
     @Autowired
    SessionFactory sessionFactory;
     
//     @Autowired
//     IInvoiceService invoiceService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/flight/edit");

    }

    @RequestMapping(value = "/createFlight")
    public ModelAndView create() {
        return new ModelAndView("/flight/createFlight");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Flight t = flightService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/flight/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Flight t = flightService.getById(id);
        map.addAttribute("t", t);
        return "flight/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Flight t = flightService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/flight/view", "map", map);
    }

    @Override
    public List<Flight> getAll() {
        return flightService.getAll();
    }


    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Flight flight = flightService.delete(id);
       return new ModelAndView("redirect:/flight/view");
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Flight> tList = flightService.getAll();
        map.put("tList", tList);
        return new ModelAndView("flight/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @RequestMapping(value = "/serchFlight", method = RequestMethod.GET)
    public ModelAndView serchFlight(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Flight> tList = flightService.getAll();
        map.put("tList", tList);
        return new ModelAndView("flight/serchFlight", "map", map);
    }
    
      @RequestMapping(value = "/edite/{id}", method = RequestMethod.GET)
    public String edite(ModelMap map, @PathVariable("id") int id) {
        Flight t = flightService.getById(id);
        map.addAttribute("t", t);
        return "passenger/traveler";

    }
    
   @RequestMapping(value = "/pay/{id}", method = RequestMethod.GET)
    public String book(ModelMap map, @PathVariable("id") int id) {
        Flight t = flightService.getById(id);
        map.addAttribute("t", t);
        return "payment/create";

    }

}
