package com.example.class_20190611;

/**
 * Created by AresXPS on 2019/6/4.
 */

public class PlayModel {
    private String id, name, country, city, imgURL;

    public String getId(){
        return id;
    }

    public void setId(String id){
        this.id = id;
    }

    public String getImgURL(){
        return imgURL;
    }

    public void setImgURL(String imgURL){
        this.imgURL = imgURL;
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
}
