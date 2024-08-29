package com.akash.anime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "animedata")
public class Animemodel{
    @Id
    @GeneratedValue
    int sno;
    String Name;
    void setsno(int sn){
        this.sno=sn;
    }
    void setName(String n){
        this.Name=n;
    }
    int getsno(){
        return sno;
    }
    String getName(){
        return Name;
    }

}