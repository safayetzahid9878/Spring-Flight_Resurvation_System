package com.coderme.airline.service;
import com.coderme.airline.dao.impl.IPaymentDAO;
import com.coderme.airline.model.Payment;
import com.coderme.airline.service.impl.IPaymentService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service(value= "paymentService")
public class PaymentService implements IPaymentService{
    @Autowired
    IPaymentDAO paymentDAO;

    @Override
    public Payment save(HttpServletRequest request) {
       Map<String, String[]> map = request.getParameterMap();
       Payment a = new Payment();
       a.setCardType(map.get("cardType")[0]);
       a.setExpireData(map.get("expireData")[0]);
       a.setCardNo(map.get("cardNo")[0]);
       a.setCvvNo(map.get("cvvNo")[0]); 
        return paymentDAO.save(a);   
        
    }

    @Override
    public Payment update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
       Payment a = new Payment();
//        a.setId(Integer.parseInt(map.get("id")[0]));
//       a.setPayment_code(map.get("payment_code")[0]);
//       a.setName(map.get("name")[0]);
//       a.setCity(map.get("city")[0]);
//       a.setCountry(map.get("country")[0]); 
        return paymentDAO.update(a);    
    
    }

     @Override
    public Payment delete(int id) {
        return paymentDAO.delete(id);
    }

    @Override
    public List<Payment> getAll() {
        return paymentDAO.getAll();

    }

    @Override
    public Payment getById(int id) {
        return paymentDAO.getById(id);

    }
    
}



//       String cardType = request.getParameter("cardType");
//        String expireData = request.getParameter("expireData");
//        String cardNo = request.getParameter("cardNo");
//        String cvvNo = request.getParameter("cvvNo");
       
       
//       t.setCardType(cardType);
//        t.setExpireData(expireData);
//        t.setCardNo(cardNo);
//        t.setCvvNo(cvvNo);