
package com.coderme.airline.controller;


import com.coderme.airline.controller.impl.ICancelController;
import com.coderme.airline.dao.CancelDAO;
import com.coderme.airline.dao.impl.ICancelDAO;
import com.coderme.airline.model.Cancel;
import com.coderme.airline.service.impl.ICancelService;
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
@RequestMapping(value = "cancel")
public class CancelController implements ICancelController {

    @Autowired
    ICancelService cancelService;
    
    @Autowired
    ICancelDAO cancelDao;
    
    @RequestMapping(value = "/create")
    public ModelAndView cancel() {
        return new ModelAndView("/cancel/create");
    }
    
       @RequestMapping(value = "/totalBooked")
    public ModelAndView booked() {
        return new ModelAndView("/cancel/totalBooked");
    }
    
      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/cancel/edit");

    }
     @RequestMapping(value = "/error-page")
     public ModelAndView error() {
        return new ModelAndView("/passenger/traveler");

    }
     

    @RequestMapping(value = "/createCancel")
    public ModelAndView create() {
        return new ModelAndView("/cancel/createCancel");

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
        String status = request.getParameter("status");
        
        
        
        Cancel cancel = cancelDao.getBySeatNo(flight_name, seatNo);

       if(cancel != null){
//          map.put("booked", "Allready booked");
//          return new ModelAndView("/passenger/blank", "map", map);
       } 
        else{
       Cancel t= new Cancel();
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
//        t.setCardType(cardType);
//        t.setExpireData(expireData);
//        t.setCardNo(cardNo);
//        t.setCvvNo(cvvNo);
        t.setSeatNo(seatNo);
        t.setFlight_name(flight_name);
        t.setAirpalne(airpalne);
        t.setStatus(status);
         cancelDao.save(t);    
       }
       
        List<Cancel> iList = cancelService.getAll();
         map.put("iList", iList);
        return new ModelAndView("/invoice/view" , "map" , map);
    } 
       
    
     @RequestMapping(value = "/edit1/{id}", method = RequestMethod.GET)
    public String edit1(ModelMap map, @PathVariable("id") int id) {
        Cancel t = cancelService.getById(id);
        map.addAttribute("t", t);
        return "cancel/cancel";

    }
    
    @RequestMapping(value = "/serchCancel")
    public ModelAndView view1() {
        return new ModelAndView("/cancel/view");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Cancel t = cancelService.getById(id);
        map.addAttribute("t", t);
        return "cancel/cancel";

    }

  
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @Override
    public ModelAndView update(HttpServletRequest request) {
        Cancel t = cancelService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/cancel/view", "map", map);
    }

 
    public List<Cancel> getAll() {
        return cancelService.getAll();
    }

   
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Cancel cancel = cancelService.delete(id);
       return new ModelAndView("redirect:/cancel/create");
    }


    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cancel> tList = cancelService.getAll();
        map.put("tList", tList);
        return new ModelAndView("cancel/create", "map", map);
    }

   
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
     @RequestMapping(value = "/cancel/{id}", method = RequestMethod.GET)
    public String cancle(ModelMap map, @PathVariable("id") int id) {
        Cancel t = cancelService.getById(id);
        map.addAttribute("t", t);
        return "admin/cancleReservation";

    }
    
         @RequestMapping(value = "/appruve/{id}", method = RequestMethod.GET)
    public String appruve(ModelMap map, @PathVariable("id") int id) {
        Cancel t = cancelService.getById(id);
        map.addAttribute("t", t);
        return "admin/cancleReservation";

    }
    
    
      @RequestMapping(value = "/save1", method = RequestMethod.POST)
    public ModelAndView saveOrUpdate(HttpServletRequest request) {
        Cancel t = cancelService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/cancel/view", "map", map);

    }
    
    @RequestMapping(value = "/cancelUpdate", method = RequestMethod.POST)
    public ModelAndView cancelUpdate(HttpServletRequest request) {
        Cancel t = cancelService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("/admin/cancleReservation", "map", map);
    }
    
     @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView upBook(){
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cancel> t = cancelService.getAll();
        map.put("t", t);
        return new ModelAndView("/cancel/create", "map", map);
    }
    

     
    
}
