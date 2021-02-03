
package com.coderme.airline.controller;


import com.coderme.airline.controller.impl.IInvoiceController;
import com.coderme.airline.dao.InvoiceDAO;
import com.coderme.airline.dao.impl.IInvoiceDAO;
import com.coderme.airline.model.Invoice;
import com.coderme.airline.service.impl.IInvoiceService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import static jdk.nashorn.internal.objects.NativeArray.map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping(value = "/invoice")
public class InvoiceController implements IInvoiceController {

    @Autowired
    IInvoiceService invoiceService;
    
    @Autowired
    IInvoiceDAO invoiceDao;
    
      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/invoice/edit");

    }
     @RequestMapping(value = "/error-page")
     public ModelAndView error() {
        return new ModelAndView("/passenger/traveler");

    }
     @RequestMapping(value = "/invoice")
    public ModelAndView invoice() {
        return new ModelAndView("/invoice/invoice");

    }

    @RequestMapping(value = "/createInvoice")
    @Override
    public ModelAndView create() {
        return new ModelAndView("/invoice/createInvoice");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @Override
    public ModelAndView save(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        String airline = request.getParameter("airline");
        String source = request.getParameter("source");
        String departure = request.getParameter("departure");
        String f_date = request.getParameter("f_date");
        String arrival_time = request.getParameter("arrival_time");
        String departure_time = request.getParameter("departure_time");
        String class_name = request.getParameter("class_name");
        String airpalne = request.getParameter("airpalne");
        
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");

        String NID = request.getParameter("NID");
        String passport_id = request.getParameter("passport_id");
        String gender = request.getParameter("gender");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        Double flight_charge = Double.parseDouble(request.getParameter("flight_charge"));

        Double totalSeat = Double.parseDouble(request.getParameter("totalSeat"));

        Double totalFlightCharge = (totalSeat * flight_charge);
        Double discount = Double.parseDouble(request.getParameter("discount"));

        Double grandTotal = (totalFlightCharge - (totalFlightCharge * discount) / 100);
//        String cardType = request.getParameter("cardType");
//        String expireData = request.getParameter("expireData");
//        String cardNo = request.getParameter("cardNo");
//        String cvvNo = request.getParameter("cvvNo");
        String seatNo = request.getParameter("seatNo");
        String flight_name = request.getParameter("flight_name");
        
        
        
        Invoice invoice = invoiceDao.getBySeatNo(flight_name, seatNo);

       if(invoice != null){
          map.put("booked", "Allready booked");
          return new ModelAndView("/passenger/blank", "map", map);
       } 
        else{
       Invoice t= new Invoice();
        t.setAirline(airline);
        t.setSource(source);
        t.setDeparture(departure);
        t.setF_date(f_date);
        t.setArrival_time(arrival_time);
        t.setDeparture_time(departure_time);
        t.setClass_name(class_name);
        t.setFirst_name(first_name);
        t.setLast_name(last_name);
        t.setNID(NID);
        t.setPassport_id(passport_id);
        t.setGender(gender);
        t.setContact(contact);
        t.setEmail(email);
        t.setFlight_charge(flight_charge);

        t.setTotalSeat(totalSeat);
        t.setTotalFlightCharge(totalFlightCharge);
        t.setDiscount(discount);
        t.setGrandTotal(grandTotal);

        t.setSeatNo(seatNo);
        t.setFlight_name(flight_name);
        t.setAirpalne(airpalne);
        t.setStatus("pending");
         invoiceDao.save(t);                     
       }  
       
              
        List<Invoice> iList = invoiceService.getAll();
         map.put("iList", iList);
        return new ModelAndView("/payment/create" , "map" , map);
    }
    
     @RequestMapping(value = "/edit1/{id}", method = RequestMethod.GET)
    public String edit1(ModelMap map, @PathVariable("id") int id) {
        Invoice t = invoiceService.getById(id);
        map.addAttribute("t", t);
        return "invoice/invoice";

    }
    
    @RequestMapping(value = "/serchInvoice")
    public ModelAndView view1() {
        return new ModelAndView("/invoice/view");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Invoice t = invoiceService.getById(id);
        map.addAttribute("t", t);
        return "invoice/invoice";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Invoice t = invoiceService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/invoice/upcomingBook", "map", map);
    }
   
    @RequestMapping(value = "/upcomingBook", method = RequestMethod.GET)
    public ModelAndView upBook() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Invoice> t = invoiceService.getAll();
        map.put("t", t);
        return new ModelAndView("/admin/cancleReservation", "map", map);
    }

    @Override
    public List<Invoice> getAll() {
        return invoiceService.getAll();
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Invoice invoice = invoiceService.delete(id);
       return new ModelAndView("redirect:/invoice/view");
    }


    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Invoice> tList = invoiceService.getAll();
        map.put("tList", tList);
        return new ModelAndView("invoice/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
     @RequestMapping(value = "/cancel/{id}", method = RequestMethod.GET)
    public String cancle(ModelMap map, @PathVariable("id") int id) {
        Invoice t = invoiceService.getById(id);
        map.addAttribute("t", t);
        return "admin/cancleReservation";

    }
    
         @RequestMapping(value = "/appruve/{id}", method = RequestMethod.GET)
    public String appruve(ModelMap map, @PathVariable("id") int id) {
        Invoice t = invoiceService.getById(id);
        map.addAttribute("t", t);
        return "admin/cancleReservation";

    }
    
    
      @RequestMapping(value = "/save1", method = RequestMethod.POST)
    public ModelAndView saveOrUpdate(HttpServletRequest request) {
        Invoice t = invoiceService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/invoice/view", "map", map);

    }
    
    
   
    @RequestMapping(value = "/invoiceUpdate", method = RequestMethod.POST)
    public ModelAndView invoiceUpdate(HttpServletRequest request) {
        Invoice t = invoiceService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("/admin/cancleReservation", "map", map);
    }
    
    @RequestMapping(value = "/updateIn", method = RequestMethod.POST)
    public ModelAndView updateIn(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");   
        Invoice i = new Invoice();
        i.setId(id);
        i.setStatus(status);      
       invoiceDao.updateInvoice(i);   
       return new ModelAndView("/inovice/view");
    }
    
     
    
     @RequestMapping(value = "/contact", method = RequestMethod.POST)
     public ModelAndView getByContact(HttpServletRequest request){
        System.out.println(request.getParameter("contact"));
         Map<String, Object> map = new HashMap<>();
         List<Invoice> invoice = invoiceService.getByContact(request.getParameter("contact"));
         map.put("invoice", invoice);
         return new ModelAndView("/invoice/view", "map", map);
    }
     
       @RequestMapping(value = "/contact1", method = RequestMethod.POST)
     public ModelAndView getByContacte(HttpServletRequest request){
        System.out.println(request.getParameter("contact"));
         Map<String, Object> map = new HashMap<>();
         List<Invoice> invoice = invoiceService.getByContact(request.getParameter("contact"));
         map.put("invoice", invoice);
         return new ModelAndView("/invoice/cancel", "map", map);
    }
     
      @RequestMapping(value = "/cancel")
    public ModelAndView cancel() {
        return new ModelAndView("/invoice/cancel");
    }
     @RequestMapping(value = "/deletee/{id}", method = RequestMethod.GET)
    public ModelAndView deletee(@PathVariable("id") int id) {
       Invoice invoice = invoiceService.delete(id);
       return new ModelAndView("redirect:/invoice/create");
    }
    
    
      @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView book(){
        Map<String, Object> map = new HashMap<String, Object>();
        List<Invoice> t = invoiceService.getAll();
        map.put("t", t);
        return new ModelAndView("/invoice/create", "map", map);
    }
    
    
    
    
}
