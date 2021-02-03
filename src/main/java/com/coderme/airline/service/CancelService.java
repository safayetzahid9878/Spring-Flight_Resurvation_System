/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.service;

import com.coderme.airline.dao.impl.ICancelDAO;
import com.coderme.airline.model.Cancel;
import com.coderme.airline.service.impl.ICancelService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service
public class CancelService implements ICancelService {

    @Autowired
    ICancelDAO cancelDAO;

    @Override
    public Cancel save(HttpServletRequest request) {
        
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
        
        
        
        Cancel cancel = cancelDAO.getBySeatNo(flight_name, seatNo);

       if(cancel != null){
           System.out.println("Allready booked");
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
        return cancelDAO.save(t);  
             
    }
        return cancel;
        

    }
   
    
    @Override
    public Cancel update(HttpServletRequest request) {
      int id = Integer.parseInt(request.getParameter("id"));
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

        Cancel t = new Cancel();
        t.setId(id);

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
        return cancelDAO.update(t);

    }

   
    
    @Override
    public Cancel delete(int id) {
        return cancelDAO.delete(id);
    }

    @Override
    public List<Cancel> getAll() {
        return cancelDAO.getAll();

    }

    @Override
    public Cancel getById(int id) {
        return cancelDAO.getById(id);

    }
    
   
    @Override
     public Cancel getBySeatNo(String flight_name, String seatNo) {
         return cancelDAO.getBySeatNo(flight_name,seatNo);
    }

    @Override
    public List<Cancel> getByContact(String contact) {
     return cancelDAO.getByContact(contact);
    
    }

}
