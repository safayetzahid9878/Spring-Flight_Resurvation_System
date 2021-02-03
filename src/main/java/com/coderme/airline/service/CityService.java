

package com.coderme.airline.service;


import com.coderme.airline.dao.impl.ICityDAO;
import com.coderme.airline.model.City;
import com.coderme.airline.service.impl.ICityService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service(value="cityService")
public class CityService implements ICityService{
    @Autowired
    ICityDAO cityDAO;

    @Override
    public City save(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
       City a = new City();
       a.setCity_name(map.get("city_name")[0]);
       a.setLatitude(map.get("latitude")[0]);
       a.setLongitude(map.get("longitude")[0]);
       a.setCountry(map.get("country")[0]);
       a.setCity_code(map.get("city_code")[0]); 
        return cityDAO.save(a);
    
    }

    @Override
    public City update(HttpServletRequest request) {
         Map<String, String[]> map = request.getParameterMap();
       City a = new City();
       a.setCity_id(Integer.parseInt(map.get("id")[0]));
       a.setCity_name(map.get("city_name")[0]);
       a.setLatitude(map.get("latitude")[0]);
       a.setLongitude(map.get("longitude")[0]);
       a.setCountry(map.get("country")[0]);
       a.setCity_code(map.get("city_code")[0]); 
        return cityDAO.update(a);
    
    }

    @Override
    public List<City> getAll() {
        return cityDAO.getAll();
    }

    @Override
    public City delete(int id) {
      return cityDAO.delete(id);
    
    }

    @Override
    public City getById(int id) {
       return cityDAO.getById(id);
    }


}
