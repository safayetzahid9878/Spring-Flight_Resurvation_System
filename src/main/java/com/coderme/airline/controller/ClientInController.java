
package com.coderme.airline.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "client")
public class ClientInController {
    

    @RequestMapping("/clientIn")
    public ModelAndView clientIn(){
        return new ModelAndView("client/clientIn");
    }
    
     @RequestMapping("/otp")
    public ModelAndView otp() {
        return new ModelAndView("client/otp");
    }

    @RequestMapping("/orderList")
    public ModelAndView orderList() {        
        return new ModelAndView("client/orderList");
    }
    
    
    @RequestMapping("/success")
    public ModelAndView success() {

        return new ModelAndView("client/success");
    }
    
}