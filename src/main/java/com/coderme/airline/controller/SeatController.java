
package com.coderme.airline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/seat")
public class SeatController {
      @RequestMapping(value = "/seatNumber")
    public ModelAndView create() {
        return new ModelAndView("/seat/seatNumber");
    }
}
