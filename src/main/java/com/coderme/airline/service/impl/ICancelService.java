package com.coderme.airline.service.impl;

import com.coderme.airline.common.ICommonService;
import com.coderme.airline.model.Cancel;
import java.util.List;






public interface ICancelService extends ICommonService<Cancel>{
    public Cancel getBySeatNo(String flight_name, String seatNo);

    public List<Cancel> getByContact(String contact);
}
