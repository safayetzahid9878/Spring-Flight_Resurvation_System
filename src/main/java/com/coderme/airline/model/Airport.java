


package com.coderme.airline.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity(name= "airport")
@Table(name = "airport")
public class Airport {
    
    @Id
    private int id;
    private String airport_code;
    private String name;
    private String country;
    private String city;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAirport_code() {
        return airport_code;
    }

    public void setAirport_code(String airport_code) {
        this.airport_code = airport_code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Airport{" + "id=" + id + ", airport_code=" + airport_code + ", name=" + name + ", country=" + country + ", city=" + city + '}';
    }
    
    
    
}
