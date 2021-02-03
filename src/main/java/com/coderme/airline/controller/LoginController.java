package com.coderme.airline.controller;

import com.coderme.airline.model.Flight;
import com.coderme.airline.service.impl.IFlightService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "login")
public class LoginController {

    @Autowired
    IFlightService flightService;

    @RequestMapping(value = "/login1")
    public ModelAndView login() {
        return new ModelAndView("/login/login");
    }

    @RequestMapping(value = "/signup")
    public ModelAndView signup() {
        return new ModelAndView("login/signup");
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest req) {
        String username = req.getParameter("frontuser");
        String password = req.getParameter("frontPass");

        if (username.equalsIgnoreCase("safayet") && password.equalsIgnoreCase("1234")) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<Flight> tList = flightService.getAll();
            map.put("tList", tList);
            return new ModelAndView("/admin/index", "map", map);
        } else {
            return new ModelAndView("/login/login");
        }
    }
}
