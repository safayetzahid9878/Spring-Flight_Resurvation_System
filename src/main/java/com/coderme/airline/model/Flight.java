
package com.coderme.airline.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "flight")
@Table(name = "flight")
public class Flight {
    @Id
    private int id;
    private String airline;
    private String source;
    private String departure;
    private String f_date;
    private String arrival_time;
    private String departure_time;
    private String class_name;
    private double flight_charge;
    private String airpalne;
    private String flight_name;
    private String seatNo;
    private String discount;
            
         
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAirline() {
        return airline;
    }

    public void setAirline(String airline) {
        this.airline = airline;
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

    public double getFlight_charge() {
        return flight_charge;
    }

    public void setFlight_charge(double flight_charge) {
        this.flight_charge = flight_charge;
    }

    public String getAirpalne() {
        return airpalne;
    }

    public void setAirpalne(String airpalne) {
        this.airpalne = airpalne;
    }

    public String getFlight_name() {
        return flight_name;
    }

    public void setFlight_name(String flight_name) {
        this.flight_name = flight_name;
    }

    public String getSeatNo() {
        return seatNo;
    }

    public void setSeatNo(String seatNo) {
        this.seatNo = seatNo;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Flight{" + "id=" + id + ", airline=" + airline + ", source=" + source + ", departure=" + departure + ", f_date=" + f_date + ", arrival_time=" + arrival_time + ", departure_time=" + departure_time + ", class_name=" + class_name + ", flight_charge=" + flight_charge + ", airpalne=" + airpalne + ", flight_name=" + flight_name + ", seatNo=" + seatNo + ", discount=" + discount + '}';
    }

    
    
   
}
