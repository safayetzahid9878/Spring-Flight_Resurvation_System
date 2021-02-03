package com.coderme.airline.controller;

import com.coderme.airline.controller.impl.IPaymentController;
import com.coderme.airline.model.Payment;
import com.coderme.airline.model.Payment;
import com.coderme.airline.service.InvoiceService;
import com.coderme.airline.service.impl.IInvoiceService;
import com.coderme.airline.service.impl.IPaymentService;
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
@RequestMapping(value = "/payment")
public class PaymentController implements IPaymentController {

    @Autowired
    IPaymentService paymentService;

    @Autowired
    IInvoiceService InvoiceService;

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/payment/edit");

    }

    @RequestMapping(value = "/create")
    @Override
    public ModelAndView create() {

        return new ModelAndView("/payment/create");

    }
    @RequestMapping(value = "/congrats")
    public ModelAndView congrats() {
        return new ModelAndView("/payment/congrats");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @Override
    public ModelAndView save(HttpServletRequest request) {
        Payment t = paymentService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/payment/create2", "map", map);

    }
    
      @RequestMapping(value = "/create2")

    public ModelAndView createe() {

        return new ModelAndView("/payment/congrats");
    
    }
    

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Payment t = paymentService.getById(id);
        map.addAttribute("t", t);
        return "payment/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Payment t = paymentService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/payment/view", "map", map);
    }

    @Override
    public List<Payment> getAll() {
        return paymentService.getAll();
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Payment payment = paymentService.delete(id);
        return new ModelAndView("redirect:/payment/view");
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
