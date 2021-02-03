/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderme.airline.service;

import com.coderme.airline.dao.impl.IPassengerDAO;
import com.coderme.airline.model.Passenger;
import com.coderme.airline.service.impl.IPassengerService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service
public class PassengerService implements IPassengerService {

    @Autowired
    IPassengerDAO passengerDAO;

    @Override
    public Passenger save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Passenger t = new Passenger();
        t.setFirst_name(map.get("first_name")[0]);
        t.setLast_name(map.get("last_name")[0]);
        t.setNID(map.get("NID")[0]);
        t.setPassport_id(map.get("passport_id")[0]);
        t.setGender(map.get("gender")[0]);
        t.setContact(map.get("contact")[0]);
        t.setEmail(map.get("email")[0]);

        return passengerDAO.save(t);

    }

    @Override
    public Passenger update(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Passenger t = new Passenger();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setFirst_name(map.get("first_name")[0]);
        t.setLast_name(map.get("last_name")[0]);
        t.setNID(map.get("NID")[0]);
        t.setPassport_id(map.get("passport_id")[0]);
        t.setGender(map.get("gender")[0]);
        t.setContact(map.get("contact")[0]);
        t.setEmail(map.get("email")[0]);

        return passengerDAO.update(t);

    }

    @Override
    public Passenger delete(int id) {
        return passengerDAO.delete(id);
    }

    @Override
    public List<Passenger> getAll() {
        return passengerDAO.getAll();

    }

    @Override
    public Passenger getById(int id) {
        return passengerDAO.getById(id);

    }



}
