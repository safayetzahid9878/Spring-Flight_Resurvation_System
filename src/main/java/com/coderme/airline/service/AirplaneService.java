package com.coderme.airline.service;

import com.coderme.airline.dao.impl.IAirplaneDAO;
import com.coderme.airline.model.Airplane;
import com.coderme.airline.service.impl.IAirplaneService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "airplaneService")
public class AirplaneService implements IAirplaneService {

    @Autowired
    IAirplaneDAO airplaneDAO;

    @Override
    public Airplane save(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Airplane a = new Airplane();
        a.setAirplane_name(map.get("airplane_name")[0]);
        a.setOwner(map.get("owner")[0]);
        a.setModel(map.get("model")[0]);
        a.setCapacity(map.get("capacity")[0]);
        a.setEngeen(map.get("engeen")[0]);
        return airplaneDAO.save(a);
    }

    @Override
    public Airplane update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Airplane a = new Airplane();
        a.setId(Integer.parseInt(map.get("id")[0]));
        a.setAirplane_name(map.get("airplane_name")[0]);
        a.setOwner(map.get("owner")[0]);
        a.setModel(map.get("model")[0]);
        a.setCapacity(map.get("capacity")[0]);
        a.setEngeen(map.get("engeen")[0]);
        return airplaneDAO.update(a);

    }

    @Override
    public Airplane delete(int id) {
       return airplaneDAO.delete(id); 
    }

    @Override
    public List<Airplane> getAll() {
        return airplaneDAO.getAll();
    }

    @Override
    public Airplane getById(int id) {
        return airplaneDAO.getById(id);
    }

}
