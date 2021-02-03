package com.coderme.airline.service;
import com.coderme.airline.dao.impl.IAirportDAO;
import com.coderme.airline.model.Airport;
import com.coderme.airline.service.impl.IAirportService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service(value= "airportService")
public class AirportService implements IAirportService{
    @Autowired
    IAirportDAO airportDAO;

    @Override
    public Airport save(HttpServletRequest request) {
       Map<String, String[]> map = request.getParameterMap();
       Airport a = new Airport();
       a.setAirport_code(map.get("airport_code")[0]);
       a.setName(map.get("name")[0]);
       a.setCity(map.get("city")[0]);
       a.setCountry(map.get("country")[0]); 
        return airportDAO.save(a);   
        
    }

    @Override
    public Airport update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
       Airport a = new Airport();
        a.setId(Integer.parseInt(map.get("id")[0]));
       a.setAirport_code(map.get("airport_code")[0]);
       a.setName(map.get("name")[0]);
       a.setCity(map.get("city")[0]);
       a.setCountry(map.get("country")[0]); 
        return airportDAO.update(a);    
    
    }

     @Override
    public Airport delete(int id) {
        return airportDAO.delete(id);
    }

    @Override
    public List<Airport> getAll() {
        return airportDAO.getAll();

    }

    @Override
    public Airport getById(int id) {
        return airportDAO.getById(id);

    }
    
}
