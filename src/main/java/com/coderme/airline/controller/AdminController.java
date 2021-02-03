package com.coderme.airline.controller;

import com.coderme.airline.model.Flight;
import com.coderme.airline.model.Invoice;
import com.coderme.airline.service.FlightService;
import com.coderme.airline.service.impl.IFlightService;
import com.coderme.airline.service.impl.IInvoiceService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("admin")
public class AdminController {

    @Autowired
    IInvoiceService invoiceService;
    
    @Autowired
    IFlightService flightService;

    @RequestMapping("/index")
    public ModelAndView admin() {
        return new ModelAndView("admin/index");
    }

    @RequestMapping("/cancleReservation")
    public ModelAndView cancel() {
        return new ModelAndView("admin/cancleReservation");
    }
    
    @RequestMapping("/totalBooked")
    public ModelAndView booked() {
        return new ModelAndView("admin/totalBooked");
    }

    @RequestMapping(value = "/can/{id}", method = RequestMethod.GET)
    public ModelAndView cancelReservation(ModelMap map, @PathVariable("id") int id) {
        Invoice invoice = invoiceService.getById(id);
        map.addAttribute("invoice", invoice);
        return new ModelAndView("/admin/cancleReservation");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Invoice invoice = invoiceService.delete(id);
        return new ModelAndView("redirect:/admin/upcomingBook");
    }

    @RequestMapping(value = "/upcomingBook", method = RequestMethod.GET)
    public ModelAndView upBook() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Invoice> t = invoiceService.getAll();
        map.put("t", t);
        return new ModelAndView("/admin/cancleReservation", "map", map);
    }
    @RequestMapping(value = "/totalBooked", method = RequestMethod.GET)
    public ModelAndView book() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Invoice> t = invoiceService.getAll();
        map.put("t", t);
        return new ModelAndView("/admin/totalBooked", "map", map);
    }
    
   
 @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Flight> tList = flightService.getAll();
        map.put("tList", tList);
        return new ModelAndView("admin/view", "map", map);
    }

}
