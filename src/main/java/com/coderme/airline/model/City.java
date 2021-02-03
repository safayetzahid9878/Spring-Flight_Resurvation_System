
package com.coderme.airline.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity(name= "city")
@Table (name= "city")
public class City {
    
    @Id
    private int city_id;
    private String city_name;
    private String latitude;
    private String longitude;
    private String country;
    private String city_code;

    public int getCity_id() {
        return city_id;
    }

    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity_code() {
        return city_code;
    }

    public void setCity_code(String city_code) {
        this.city_code = city_code;
    }

    @Override
    public String toString() {
        return "City{" + "city_id=" + city_id + ", city_name=" + city_name + ", latitude=" + latitude + ", longigute=" + longitude + ", country=" + country + ", city_code=" + city_code + '}';
    }
    
    
    
}
