package com.coderme.airline.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "payment")
@Table(name = "payment")
public class Payment {

    @Id
    
    private int id;
    private String cardType;
    private String expireData;
    private String cardNo;
    private String cvvNo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public String getExpireData() {
        return expireData;
    }

    public void setExpireData(String expireData) {
        this.expireData = expireData;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getCvvNo() {
        return cvvNo;
    }

    public void setCvvNo(String cvvNo) {
        this.cvvNo = cvvNo;
    }

}
