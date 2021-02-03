package com.coderme.airline.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "invoice")
@Table(name = "invoice")
public class Invoice {

    @Id
    private int id;
    private String airpalne;
    private String source;
    private String departure;
    private String f_date;
    private String arrival_time;
    private String departure_time;
    private String class_name;
    
    private String first_name;
    private String last_name;
    
    private String NID;
    private String passport_id;
    private String gender;
    private String contact;
    private String email;
    private Double flight_charge;
    private Double discount;
    private Double totalFlightCharge;
    private Double grandTotal;
  
    private Double totalSeat;
    private String seatNo;
    private String flight_name;
    private String airline;
    private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAirpalne() {
        return airpalne;
    }

    public void setAirpalne(String airpalne) {
        this.airpalne = airpalne;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getF_date() {
        return f_date;
    }

    public void setF_date(String f_date) {
        this.f_date = f_date;
    }

    public String getArrival_time() {
        return arrival_time;
    }

    public void setArrival_time(String arrival_time) {
        this.arrival_time = arrival_time;
    }

    public String getDeparture_time() {
        return departure_time;
    }

    public void setDeparture_time(String departure_time) {
        this.departure_time = departure_time;
    }

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getNID() {
        return NID;
    }

    public void setNID(String NID) {
        this.NID = NID;
    }

    public String getPassport_id() {
        return passport_id;
    }

    public void setPassport_id(String passport_id) {
        this.passport_id = passport_id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Double getFlight_charge() {
        return flight_charge;
    }

    public void setFlight_charge(Double flight_charge) {
        this.flight_charge = flight_charge;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getTotalFlightCharge() {
        return totalFlightCharge;
    }

    public void setTotalFlightCharge(Double totalFlightCharge) {
        this.totalFlightCharge = totalFlightCharge;
    }

    public Double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(Double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public Double getTotalSeat() {
        return totalSeat;
    }

    public void setTotalSeat(Double totalSeat) {
        this.totalSeat = totalSeat;
    }

    public String getSeatNo() {
        return seatNo;
    }

    public void setSeatNo(String seatNo) {
        this.seatNo = seatNo;
    }

    public String getFlight_name() {
        return flight_name;
    }

    public void setFlight_name(String flight_name) {
        this.flight_name = flight_name;
    }

    public String getAirline() {
        return airline;
    }

    public void setAirline(String airline) {
        this.airline = airline;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Invoice{" + "id=" + id + ", airpalne=" + airpalne + ", source=" + source + ", departure=" + departure + ", f_date=" + f_date + ", arrival_time=" + arrival_time + ", departure_time=" + departure_time + ", class_name=" + class_name + ", first_name=" + first_name + ", last_name=" + last_name + ", NID=" + NID + ", passport_id=" + passport_id + ", gender=" + gender + ", contact=" + contact + ", email=" + email + ", flight_charge=" + flight_charge + ", discount=" + discount + ", totalFlightCharge=" + totalFlightCharge + ", grandTotal=" + grandTotal + ", totalSeat=" + totalSeat + ", seatNo=" + seatNo + ", flight_name=" + flight_name + ", airline=" + airline + ", status=" + status + '}';
    }

    

}
